//  Created by REBECA SOARES FREITAS CATUABA on 14/11/25.

iniciarJogo()

   // Intro
    let introSequencia = ["intro1","intro2","intro3","intro4","intro5","intro6","intro7","intro8","intro9","fala1","intro10","fala2"]
    mostrarFalas(introSequencia)
    
    //
     print("Digite o seu nome:")
    if let nome = readLine(), !nome.isEmpty {
       nomeJogador = nome
    }
    
    //intro2
    let introSequencia2 = ["fala3","intro11","fala4","fala5","intro12","fala6","intro13","fala7"]
    mostrarFalas(introSequencia2)


    print("=== O que você faz? ===")
    let _ = acaoIntro()

    // Sala do Sagui
    let saguiSequencia =
        ["sagui1","sagui2","fala8","sagui3","sagui4","sagui5","sagui6","sagui7","fala9","sagui8","sagui9","fala10","sagui10","fala11"]
    mostrarFalas(saguiSequencia)

    print("\n=== O que você faz? ===")
    let _ = acaoSagui()

    let saguiSequencia2 = ["sagui11","fala12","sagui12","fala13"]
    mostrarFalas(saguiSequencia2)

    print("\n=== Qual porta você escolhe? ===")
    let _ = portaSagui()


    // sala nevoeiro
    let nevoeiroSequencia = ["nevoeiro1","nevoeiro2","nevoeiro3","nevoeiro4","fala14"]
    mostrarFalas(nevoeiroSequencia)

    print("\n=== O que você faz? ===")
    let _ = acaoMariposa()

    // sala nevoeiro2
    let nevoeiroSequencia2 = ["nevoeiro5","fala15","fala16"]
    mostrarFalas(nevoeiroSequencia2)

    print("\n=== Qual porta você escolhe? ===")
    let _ = portaMariposa()

   print ("Você chegou ao final da espêriencia grátis. Compre o Jogo Otniribal para continuar!")
