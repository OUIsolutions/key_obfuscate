
private_key_obfuscate.flor = function(value)
    return value - (value % 1)
end

private_key_obfuscate.ajust = function(value,min,max)
    
    while value > max or value < min do
        if(value > max) then
            value = value / 3.9
        end
        if(value < min) then
            value = value * 3.5
        end
    end
    return private_key_obfuscate.flor(value)
end

private_key_obfuscate.rand_generate = function(value,seed)

    local TOTAL_LOOPS = 20
    local MIN_LIMIT = 1000
    local MAX_LIMIT = 100000
    local result = value
    
    for i=1,TOTAL_LOOPS do
        result = result * (seed / i + seed) 
        result = result * result
        result = private_key_obfuscate.ajust(result,MIN_LIMIT,MAX_LIMIT)
    end
    return private_key_obfuscate.ajust(result,MIN_LIMIT,MAX_LIMIT)
end 

private_key_obfuscate.newRandonizer = function(seed)
    local self_obj = {}
    local seed = seed
    local increment = 10
    self_obj.generate_num = function(min,max)
        if min == max then
            return min
        end
        
        increment = increment + 10
        local num = private_key_obfuscate.rand_generate(increment,seed)
        return private_key_obfuscate.ajust(num,min,max)
    end 
    self_obj.choice = function(itens)
        if #itens == 0 then
            return nil
        end
        if #itens == 1 then
            return itens[1]
        end
        local index = self_obj.generate_num(1,#itens)
        return itens[index]
    end
    return self_obj
end