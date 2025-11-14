//
//  Start.swift
//  jogoOtniribal
//
//  Created by REBECA SOARES FREITAS CATUABA on 14/11/25.
//

import Foundation

func iniciarJogo() {
    print("🎮 Digite \"start\" para começar: 🎮")

    var start = readLine()
            
    while start?.lowercased() != "start" { // se for diferente de start
                print("Você não digitou start")
                if let line = readLine() { // le novamente
                    start = line
                }
            }
        }
    


