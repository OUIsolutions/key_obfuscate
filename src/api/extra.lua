
private_key_obfuscate.generate_operation= function(current_value,operation,iten)
    if operation == "+" then
        return current_value + iten
    elseif operation == "-" then
        return current_value - iten
    elseif operation == "*" then
        return current_value * iten
    end
end