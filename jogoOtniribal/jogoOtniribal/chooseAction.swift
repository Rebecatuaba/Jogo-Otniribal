//
//  escolhas.swift
//  jogoOtniribal
//
//  Created by REBECA SOARES FREITAS CATUABA on 14/11/25.
//

import Foundation


// Função para ler a escolha do jogador
func lerAcao(opcoes: [(String, String)]) -> String {
    for (chave, descricao) in opcoes {
        print("\(chave): \(descricao)")
    }
    
    let chaves = opcoes.map { $0.0 }
    
    while true {
        if let resposta = readLine()?.lowercased(), chaves.contains(resposta) {
            return resposta
        } else {
            print("Escolha inválida. Tente novamente:")
        }
    }
}


// ----- FUNCOES PARA AS ACOES DO JOGADOR ------

// Ação na sala Intro
func acaoIntro() -> String {
    let opcoes: [(String, String)] = [
        ("a", "Concordar e ir com ela"),
        ("b", "Perguntar como perdeu o mapa"),
        ("c", "Não dizer nada")
    ]
    
    let resposta = lerAcao(opcoes: opcoes)
    
    if resposta == "a"{
        print("Você concordou e foi com a princesa Mirabel.")
    }else if resposta == "b"{
        print("\"O mapa foi engolido por uma Joaninha Gigante! Agora vamos!\"")
    }else{
        print("\"Como princesa da Casa Belmora, tenho o dever de zelar pela sua segurança, logo ordeno que venha comigo!\"")
        print("Você não teve outra escolha, e foi com ela.")
    }
    return resposta
}
    
    // Ação na sala do Sagui
    func acaoSagui() -> String {
        let opcoes: [(String, String)] = [
            ("a", "Falar algo em voz alta 👄"),
            ("b", "Sussurrar algo 🗣️👤"),
            ("c", "Perguntar à Mirabel o que ela acha 🤔")
        ]
        
        let resposta = lerAcao(opcoes: opcoes)
        
        if resposta == "a" {
            print("O sagui imitou a sua frase exatamente!")
        } else if resposta == "b" {
            print("Ele copiou até o seu sussurro, com a mesma intensidade.")
        } else {
            print("\"Acredito que ele esteja se divertindo nos imitando...\"")
            print("E Grande Sagui imitou o que Mirabel acabou de te dizer.")
        }
        
        return resposta
    }

    // Ação na sala Nevoeiro
    func acaoMariposa() -> String {
        let opcoes: [(String, String)] = [
            ("a", "Seguir a mariposa"),
            ("b", "Jogar uma pedra"),
            ("c", "Tentar ir na direção oposta")
        ]
        
        let resposta = lerAcao(opcoes: opcoes)
        
        if resposta == "a" {
            print("Você tenta seguir a Mariposa 🪰, mas percebe que sempre acaba voltando para onde estava inicialmente.")
        } else if resposta == "b" {
            print("Você joga a pedra 🪨, mas ela volta e acerta o seu rosto.")
        } else {
            print("Você tenta ir na direção oposta, mas percebe que sempre acaba voltando para onde estava inicialmente.")
        }
        
        return resposta
    }
