


private_key_obfuscate.create_bytes_to_save =function(key,starter_num)
    local bytes_to_save = {}
    for i=1,#key do 
        local byte_converted = private_key_obfuscate.byte(private_key_obfuscate.sub(key,i,i)) 
        bytes_to_save[i] = {
            byte = byte_converted,
            index = i-1,--these its required because its a c array
            ajusted = false,
            current_value= starter_num
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