
public_key_obfuscate.create_encryptations = function(props)
    local rand =private_key_obfuscate.newRandonizer(119)
    local total_higer = 0
    for i = 1,10000 do
        local num = rand.generate_num(1,100)
        if num > 50 then
            total_higer = total_higer + 1
        end
        print("num: "..num)
    end 
    print("Total higer than 50: "..total_higer)
    print("Total lower than 50: "..(10000 - total_higer))
end 