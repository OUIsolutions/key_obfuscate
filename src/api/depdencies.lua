if string then 
private_key_obfuscate.sub = string.sub
private_key_obfuscate.byte = string.byte
private_key_obfuscate.gsub = string.gsub
end
if table then
private_key_obfuscate.concat = table.concat
end

if pairs then
private_key_obfuscate.pairs = pairs
end
if load then
private_key_obfuscate.load = load
end

