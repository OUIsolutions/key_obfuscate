

private_key_obfuscate.create_procedural_props = function(user_props)

    local defaut_props = {
        fake_byte_set = 0.5, --chance to set a unset byte a fake value
        create_a_integer = 0.33, --chance of create a interger  swap value
        make_a_usless_operation = 0.33,
        max_operations_per_line = 6,
        min_operations_per_line = 3,
    }
    if not user_props then
        return defaut_props
    end

    for key,value in pairs(defaut_props) do
        if user_props[key] then
            defaut_props[key] = user_props[key]
        end
    end
    return defaut_props

end 