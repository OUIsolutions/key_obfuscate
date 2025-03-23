



private_key_obfuscate.create_bytes_to_save =function(key)
    local bytes_to_save = {}
    for i=1,#key do 
        local byte_converted = private_key_obfuscate.byte(private_key_obfuscate.sub(key,i,i)) 
        bytes_to_save[i] = {
            byte = byte_converted,
            index = i,
            ajusted = false
         }
    end 
    return bytes_to_save
end 

public_key_obfuscate.create_encryptations = function(props)
    local randonizer = private_key_obfuscate.newRandonizer(119)
    local bytes_to_save = private_key_obfuscate.create_bytes_to_save(props.key)
    local code = "#define "..props.name.."_get_key(key) "
    return code
end 