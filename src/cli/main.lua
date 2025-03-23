

function main()

    props ={
        key ="eai parsa suave ta funcionando",
        name = "my_projectd",
        seed = 123,
    }
    code = public_key_obfuscate.create_procedural_generation (props)
    io.open("test.h","w"):write(code):close()

end 