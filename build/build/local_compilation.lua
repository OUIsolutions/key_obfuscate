

function local_compilation()
    amalgamation_build()
    os.execute("gcc release/key_obfuscate.c -o release/local_bin.out")
end