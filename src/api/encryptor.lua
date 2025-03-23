



private_key_obfuscate.create_bytes_to_save =function(key)
    local bytes_to_save = {}
    for i=1,#key do 
        local byte_converted = private_key_obfuscate.byte(private_key_obfuscate.sub(key,i,i)) 
        bytes_to_save[i] = {
            byte = byte_converted,
            index = i-1,--these its required because its a c array
            ajusted = false,
            current_value= 0
         }
    end 
    return bytes_to_save
end 
private_key_obfuscate.terminated= function(bytes_to_save)
    for i=1,#bytes_to_save do 
        if bytes_to_save[i].ajusted == false then 
            return false
        end 
    end 
    return true
end 

private_key_obfuscate.get_randon_byte = function(randonizer,bytes_to_save)
    local index = randonizer.generate_num(1,#bytes_to_save)
    return bytes_to_save[index]
end

private_key_obfuscate.get_randon_not_ajusted_byte = function(randonizer,bytes_to_save)

    local total_not_ajusted = {}
    for i=1,#bytes_to_save do 
        if bytes_to_save[i].ajusted == false then 
            total_not_ajusted[#total_not_ajusted + 1] = bytes_to_save[i]
        end 
    end

    if #total_not_ajusted == 0 then 
        return nil
    end
    if #total_not_ajusted == 1 then 
        return total_not_ajusted[1]
    end

    local index = randonizer.generate_num(1,#total_not_ajusted)
    return total_not_ajusted[index]

end


public_key_obfuscate.create_encryptations = function(props)
    local randonizer = private_key_obfuscate.newRandonizer(119)
    local bytes_to_save = private_key_obfuscate.create_bytes_to_save(props.key)
    local code  =private_key_obfuscate.newCodeFormater()
    code.append("#ifndef "..props.name .. "_get_key\n")
    code.append("#define "..props.name.."_get_key(key) \\ \n")

    while true do 

        
        local chosen_byte = private_key_obfuscate.get_randon_not_ajusted_byte(randonizer,bytes_to_save)
        if chosen_byte == nil then 
            break
        end

        code.append("\tkey["..chosen_byte.index.."] = "..chosen_byte.byte.."; \\ \n")
        chosen_byte.ajusted = true
        chosen_byte.current_value = chosen_byte.byte
        print("ajusted byte "..chosen_byte.byte.." index "..chosen_byte.index)


    end

    code.append("\n#endif\n")
    return code.get_code()
end 