
private_key_obfuscate.flor = function(value)
    return value - (value % 1)
end

private_key_obfuscate.rand_generate = function(value,seed)

    local TOTAL_LOOPS = 20
    local MIN_LIMIT = 1000
    local MAX_LIMIT = 10000
    local result = value
    
    for i=1,TOTAL_LOOPS do
        result = result * (seed / i + seed) 
        result = result * result

        while result > MAX_LIMIT or result < MIN_LIMIT do
            
            if(result > MAX_LIMIT) then
                result = result / 3
            end

            if(result < MIN_LIMIT) then
                result = result * 2
            end
        end


    end
    --make fits in the range
    while result > MAX_LIMIT or result < MIN_LIMIT do
        if(result > MAX_LIMIT) then
            result = result / 2
        end
        if(result < MIN_LIMIT) then
            result = result * 2
        end
    end

    return private_key_obfuscate.flor(result)
end 
private_key_obfuscate.newRandonizer = function(seed)
    local self_obj = {}
    self_obj.seed = seed
end