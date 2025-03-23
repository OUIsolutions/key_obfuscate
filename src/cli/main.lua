

function main()
    local key_content = io.open("darwinconf.lua","r"):read("a")
    props ={
        key = key_content,
        name = "my_projectd",
        seed = 123,
        --debug = true,
    }
    code = public_key_obfuscate.create_procedural_generation (props)
    io.open("test.h","w"):write(code):close()

end 