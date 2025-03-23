

function main()

    props ={
        key =io.open("darwinconf.lua","r"):read("*a"),
        name = "my_projectd",
        seed = 123,
    }
    code = public_key_obfuscate.create_procedural_generation (props)
    io.open("test.h","w"):write(code):close()

end 