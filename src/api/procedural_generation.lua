



public_key_obfuscate.create_procedural_generation = function(props)
    local randonizer = private_key_obfuscate.newRandonizer(119)
    local bytes_to_save = private_key_obfuscate.create_bytes_to_save(props.key)
    local code  =private_key_obfuscate.newCodeFormater()
    local procedural_props = private_key_obfuscate.create_procedural_props(props.procedural_props)
    code.append("#ifndef "..props.name .. "_get_key\n")
    code.append("#define "..props.name.."_get_key(key) \\\n")

    local created_integers = {}
    private_key_obfuscate.create_integer(randonizer,procedural_props,props.name,code,created_integers,bytes_to_save)

    while true do 

        if private_key_obfuscate.terminated(bytes_to_save) then 
            break
        end

        local create_integer_choice = randonizer.generate_num(1,100)
        if create_integer_choice <= procedural_props.create_a_integer * 100 then
           private_key_obfuscate.create_integer(randonizer,procedural_props,props.name,code,created_integers,bytes_to_save)
        end


        local chosen_byte = private_key_obfuscate.get_randon_not_ajusted_byte(randonizer,bytes_to_save)
        code.append("\tkey["..chosen_byte.index.."] = "..chosen_byte.byte.."; \\\n")
        chosen_byte.ajusted = true
        chosen_byte.current_value = chosen_byte.byte
        print("ajusted byte "..chosen_byte.byte.." index "..chosen_byte.index)


    end

    code.append("\n#endif\n")
    return code.get_code()
end 