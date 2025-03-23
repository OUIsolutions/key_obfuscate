

private_key_obfuscate.create_statiscs = function(user_statistics)

    local default_statistc = {
        fake_byte_set = 0.5, --chance to set a unset byte a fake value
        create_a_integer = 0.33, --chance of create a interger  swap value
        make_a_usless_operation = 0.33 
    }
    if not user_statistics then
        return default_statistc
    end

    for key,value in pairs(default_statistc) do
        if user_statistics[key] then
            default_statistc[key] = user_statistics[key]
        end
    end
    return default_statistc

end 