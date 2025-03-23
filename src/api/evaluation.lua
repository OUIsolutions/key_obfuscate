

private_key_obfuscate.newEvaluation = function()
    local self_obj = {}
    local code = ""
    self_obj.append = function(str)
        code = code..str
    end
    self_obj.eval = function()
        return private_key_obfuscate.load("return "..code)()
    end
    return self_obj
end 