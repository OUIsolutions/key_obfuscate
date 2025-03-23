

private_key_obfuscate.create_padding = function(size)
    local padding = "\t"
    for i=1,size do
        padding = padding.."\t"
    end
    return padding
end