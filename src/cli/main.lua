

function main()
    local content = argv.get_flag_arg_by_index({"entry", "e"},1)

    local help_flag = argv.flags_exist({"help", "h"})
    if help_flag then
        print(help)
        return
    end


    if not content then
        entry_file = argv.get_flag_arg_by_index({ "entry_file", "ef"},1)
        if not entry_file then
            print("No entry flag or entry file")
            return
        end
        content = io.open(entry_file,"r")
        if not content then
            print("unable to open file"..entry_file)
            return
        end
        content = content:read("a")
    end

    local project_name = argv.get_flag_arg_by_index({"project_name", "pn"},1)
    if not project_name then
        print("No project name")
        return
    end
    local output = argv.get_flag_arg_by_index({"output", "o"},1,project_name..".h")

    local seed = argv.get_flag_arg_by_index({"seed", "s"},1,1000)
    --convert seed to number
    seed = tonumber(seed)
    if not seed then
        print("Seed is not a number")
        return
    end

    local debug = argv.get_flag_arg_by_index({"debug", "d"},1,false)



    props ={
        key =content,
        name = project_name,
        seed = seed,
        debug = debug,
        fake_byte_set = 0.5, --chance to set a unset byte a fake value
        create_a_integer = 0.33, --chance of create a interger  swap value
        create_a_integer_after10 = 0.10, --chance of create a interger  swap value
        create_a_integer_after50 = 0.05, --chance of create a interger  swap value
        max_operations_per_line = 6, -- max aritmetic operations per line
        min_operations_per_line = 2, -- min aritmetic operations per line
        create_a_for =0.33, -- chance to create a for loop
        create_a_if = 0.33, -- chance to create a if statement
        max_scopes = 3,  -- max scopes to create
        close_scopes = 0.66, -- chance to close a scope
        integer_set = 0.33, -- chance to set a integer with a random value
        fake_byte_set = 0.33, -- chance to set a unset byte a fake value
        real_byte_set = 0.5 -- chance to set a unset byte a real value
    }

    --iterate over the props and verify if a flag is provided
    for k,v in pairs(props) do
        local flag = argv.get_flag_arg_by_index({k},1)
        if flag then
            if type(v) == "number" then
                flag = tonumber(flag)
            end
            props[k] = flag
        end
    end
    code = key_obfuscate.create_procedural_generation (props)
    io.open(output,"w"):write(code):close()

end 