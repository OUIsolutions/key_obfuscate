
public_key_obfuscate.create_encryptations = function(props)
    for i = 1,100 do
    local rand = private_key_obfuscate.rand_generate(6876+i,54755)
    print(rand)
    end 
end 