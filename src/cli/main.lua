

function main()
    local content = private_key_obfuscate.argv.get_flag_arg_by_index({"entry", "e"},1)

    if not content then
        entry_file = private_key_obfuscate.argv.get_flag_arg_by_index({ "entry_file", "ef"},1)
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

    local output = private_key_obfuscate.argv.get_flag_arg_by_index({"output", "o"},1,"key_obfuscate.h")
    local project_name = private_key_obfuscate.argv.get_flag_arg_by_index({"project_name", "pn"},1)
    if not project_name then
        print("No project name")
        return
    end

    local seed = private_key_obfuscate.argv.get_flag_arg_by_index({"seed", "s"},1,1000)
    --convert seed to number
    seed = tonumber(seed)
    if not seed then
        print("Seed is not a number")
        return
    end

    local debug = private_key_obfuscate.argv.get_flag_arg_by_index({"debug", "d"},1,false)



    props ={
        key ="what ever",
        name = "my_projectd",
        seed = 123,
        debug = true,
    }
    code = public_key_obfuscate.create_procedural_generation (props)
    io.open("test.h","w"):write(code):close()

end 