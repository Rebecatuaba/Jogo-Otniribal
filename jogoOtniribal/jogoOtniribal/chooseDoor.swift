//
//  chooseDoor.swift
//  jogoOtniribal
//
//  Created by REBECA SOARES FREITAS CATUABA on 14/11/25.
//

import Foundation


// Função genérica para ler a escolha do jogador
func lerPorta(opcoes: [(String, String)]) -> String {
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

// ----- FUNCOES PARA AS PORTAS ------

// Escolha da porta na sala do Sagui
func portaSagui() -> String {
    let opcoes: [(String, String)] = [
        ("a", "Porta do Silêncio 🤫"),
        ("b", "Porta do Eco 🗣️")
    ]
    
    while true{
        
        let resposta = lerPorta(opcoes: opcoes)
        
        switch resposta {
        case "a":
            print("O sagui gigante imita um som estranho, e Mirabel comenta: \"Hmm…🧐 não parece a certa. Vamos tentar de novo.\"")
        case "b":
            print("Mirabel bate palmas e sorri:👏😁")
            print("\"Isso mesmo! A resposta está na charada. Vamos por aqui.\"")
            return resposta
        default:
            break
        }
        
    }}

// Escolha da porta na sala do Nevoeiro
func portaMariposa() -> String {
    let opcoes: [(String, String)] = [
        ("a", "Porta Loop 🔄"),
        ("b", "Porta Delay ⏯️")
    ]
        let resposta = lerPorta(opcoes: opcoes)
        
        switch resposta {
        case "b":
            print("🌬️ Um vento forte vem na direção de vocês dois. Mirabel grita: 😱\"ACHO QUE NÃO É ESSA RESPOSTA! VOU ABRIR A PORTA LOOP!\"")
        case "a":
            print("\"De fato, a reposta só pode ser Loop.\"")
            
        default:
            break
        }
    return resposta
    }
