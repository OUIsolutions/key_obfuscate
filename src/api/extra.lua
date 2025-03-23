

private_key_obfuscate.create_padding = function(size)
    local padding = "\t"
    for i=1,size do
        padding = padding.."\t"
    end
    return padding
end
private_key_obfuscate.parse_to_int_str = function(num)
    local int_str = ""..num
    local formmated = ""
    for i=1,#int_str do
        local current_char = private_key_obfuscate.sub(int_str,i,i)
        if current_char == "." then
            break
        end
        formmated = formmated..current_char
    end
    return formmated
end