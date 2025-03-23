

private_key_obfuscate.newCodeFormater = function()
    local added = {}
    local self_obj = {}
    self_obj.append = function(code)
        added[#added + 1] = code
    end
    self_obj.get_code = function()
        return private_key_obfuscate.concat(added)
    end
    return self_obj
end 