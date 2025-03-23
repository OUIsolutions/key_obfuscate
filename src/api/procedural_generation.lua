



public_key_obfuscate.create_procedural_generation = function(props)
    local randonizer = private_key_obfuscate.newRandonizer(props.seed)

    local starter_num = randonizer.generate_num(1,100)
    local bytes_to_save = private_key_obfuscate.create_bytes_to_save(props.key,starter_num)
    local code  =private_key_obfuscate.newCodeFormater()

    local procedural_props = private_key_obfuscate.create_procedural_props(props.procedural_props)
    code.append("#ifndef "..props.name .. "_get_key_h\n")
    code.append("#define "..props.name .. "_get_key_h\n")
    code.append("#define "..props.name.."key_size "..#bytes_to_save.."\n")
    
    code.append("#define "..props.name.."_get_key(key) \\\n")

    code.append("\tfor(int i=0;i<"..#bytes_to_save..";i++){")
    code.append("key[i] = "..starter_num..";}\\\n")

    local created_integers = {}
    local total_scopes = 0
    while true do 

        if private_key_obfuscate.terminated(bytes_to_save) then 
            break
        end
        if total_scopes < procedural_props.max_scopes then
            local create_for = randonizer.generate_num(1,100)
            if create_for <= procedural_props.create_a_for * 100 then
                private_key_obfuscate.create_for(props,randonizer,procedural_props,props.name,code,created_integers,bytes_to_save,total_scopes)
                total_scopes = total_scopes + 1

            end                
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
        if #created_integers >100 or total_scopes > 0 then
            create_integer_probability = -1
        end
        
        if create_integer_choice <= create_integer_probability * 100 then
           private_key_obfuscate.create_integer(props,randonizer,procedural_props,props.name,code,created_integers,bytes_to_save,total_scopes)
        end

        local set_real_byte = randonizer.generate_num(1,100)
        if set_real_byte <= procedural_props.real_byte_set * 100 then
            private_key_obfuscate.real_byte_sec(props,randonizer,procedural_props,props.name,code,created_integers,bytes_to_save,total_scopes)
        end
        
        if total_scopes > 0 then 
             local close_scope = randonizer.generate_num(1,100)
            if close_scope <= procedural_props.close_scopes * 100 then
                total_scopes = total_scopes - 1
                code.append(private_key_obfuscate.create_padding(total_scopes).."}\\\n")
            end
        end 
    end

    -- close all scopes
    for i=1,total_scopes do
        code.append("\t}\n")
    end

    code.append("\n#endif\n")
    return code.get_code()
end 