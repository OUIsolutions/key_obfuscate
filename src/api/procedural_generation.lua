



public_key_obfuscate.create_procedural_generation = function(props)
    local randonizer = private_key_obfuscate.newRandonizer(props.seed)

    local starter_num = randonizer.generate_num(1,100)
    local bytes_to_save = private_key_obfuscate.create_bytes_to_save(props.key,starter_num)
    local code  =private_key_obfuscate.newCodeFormater()
    local procedural_props = private_key_obfuscate.create_procedural_props(props.procedural_props)
    code.append("#ifndef "..props.name .. "_get_key\n")
    code.append("#define "..props.name.."_get_key(key) \\\n")

    code.append("\tfor(int i=0;i<"..#bytes_to_save..";i++){")
    code.append("key[i] = "..starter_num..";}\\\n")

    local created_integers = {}

    while true do 

        if private_key_obfuscate.terminated(bytes_to_save) then 
            break
        end

        local create_integer_choice = randonizer.generate_num(1,100)
        local create_integer_probability = procedural_props.create_a_integer
        if #created_integers >10 then
            create_integer_probability = procedural_props.create_a_integer_after10
        end
        if #created_integers >50 then
            create_integer_probability = procedural_props.create_a_integer_after50
        end
        
        --these stop the creation of integers
        if #created_integers >100 then
            create_integer_probability = -1
        end

        if create_integer_choice <= procedural_props.create_a_integer * 100 then
           private_key_obfuscate.create_integer(randonizer,procedural_props,props.name,code,created_integers,bytes_to_save)
        end

        local set_real_byte = randonizer.generate_num(1,100)
        if set_real_byte <= procedural_props.real_byte_set * 100 then
            private_key_obfuscate.real_byte_sec(randonizer,procedural_props,props.name,code,created_integers,bytes_to_save)
        end
        
        


    end

    code.append("\n#endif\n")
    return code.get_code()
end 