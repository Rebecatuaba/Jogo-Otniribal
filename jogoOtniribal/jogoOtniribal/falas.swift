//
//  Untitled.swift
//  jogoOtniribal
//
//  Created by REBECA SOARES FREITAS CATUABA on 14/11/25.
//

import Foundation

func esperarEnter() {
  _ = readLine()
}

func mostrarTexto(_ texto: String) {
    print(texto)
    esperarEnter()
}

var nomeJogador: String = "Jogador"

// Todas as falas do jogo em um único dicionário
let falas: [String: String] = [
    // Intro
    "intro1": "O chão desaparece sob seus pés 🦶. Um clarão, um vento cortante… e PLOFT!🍂",
    "intro2": "Você cai de costas em um campo de pétalas gigantes.🥀",
    "intro3": "Atrás de você, a flor 🌼 colosal onde estava preso se fecha com um estalo úmido, como se tivesse acabado de cuspir você de volta ao mundo.😟",
    "intro4": "Você se levanta, ainda zonzo, e avista alguém na sua frente:👀",
    "intro5": "Uma garota de cabelos vermelhos completamente bagunçados👩‍🦰, alta, usando uma armadura pesada que parece ter sido forjada de metal vivo.🪨⛏️",
    "intro6": "Sem saber o que está acontecendo, você se aproxima e pergunta:",
    "intro7": "\"Que lugar é esse? Onde estamos? Você está perdida?\"😰",
    "intro8": "A garota arregala os olhos, ofendida na hora.👁️",
    "intro9": "Cruza os braços, ergue o queixo e responde com a voz cheia de orgulho:😤",
    "intro10": "Ela dá um passo em sua direção, ainda irritada:😠",
    "intro11": "Ela apoia a mão na cintura e continua:",
    "intro12": "A princesa aperta o punho, envergonhada:😖",
    "intro13": "Ela olha direto nos seus olhos, mais séria desta vez:🧐",

// Falas Mirabel
    "fala1": "👩‍🦰 \"Perdida? Eu? Tome cuidado com suas palavras, viajante. Sou a Princesa Mirabel da Casa Belmora… e eu nunca, jamais, me perco.\"",
    "fala2": "👩‍🦰 \"Agora, quem parece completamente perdido aqui… é você. Me diga, qual é o seu nome?\"",
    "fala3": "👩‍🦰 \"Pelo visto… você realmente não é daqui {nome}.\"",
    "fala4": "👩‍🦰 \"🤗✨Bem-vindo ao Mundo Viravira!✨ Aqui tudo é o contrário do seu mundo chamado Terra. Mas isso nem é o pior agora.\"",
    "fala5": "👩‍🦰\"Estamos presos no Labirinto Ecossistemat… um lugar criado pela minha família há séculos.🕰️ Foi projetado para proteger um tesouro 💰 e se ele for perdido… O equilíbrio entre os mundos racha.\"",
    "fala6": "👩‍🦰 \"Só que eu… perdi o mapa.🗺️\"",
    "fala7": "👩‍🦰 \"Para sairmos vivos daqui, vou precisar da sua ajuda.🫵\"",
    "fala8": "👩‍🦰 \"🔮 Abre-te, Ecossistemat! 🔮\"",
    "fala9": "👩‍🦰 \"Ele… tá olhando pra gente. Mas… acho que ele é só curioso.🐵\"",
    "fala10": "👩‍🦰 \"Ele repete tudo que a gente faz. Tipo… igual! Ele não fala nada dele mesmo…\"",
    "fala11": "👩‍🦰 \"Cada sala é um ecossistema diferente, com um guardião diferente. Para conseguirmos seguir pelo caminho certo, precisamos resolver o enigma da sala — e a charada que está escrita na parede, entre as duas portas.\"",
    "fala12": "👩‍🦰 \"Se você me chama, eu respondo, mas nunca digo nada próprio.\"",
    "fala13": "👩‍🦰 \"Temos duas portas: 'Silêncio' e 'Eco'. Qual será a certa {nome}?\"",
    "fala14": "👩‍🦰 \"{nome}, eu juro que andei pra frente! Esse lugar tá brincando com a gente!\"",
    "fala15": "👩‍🦰 \"Ela voa em círculos… e a gente também. Isso aqui sempre volta pra onde começou. Vamos ver a charada\"",
    "fala16": "👩‍🦰 \"O que é um caminho que retorna sempre ao início?\"",
    
    // Sala do Sagui
    "sagui1": "A princesa — ainda tensa, mas recuperando a postura real — ergue as mãos🙌. As runas da armadura brilham em vermelho vivo.",
    "sagui2": "Ela murmura palavras antigas, que ecoam pelo corredor: ",
    "sagui3": "A porta 🚪 se abre. Um cheiro úmido invade o ar.💨",
    "sagui4": "Vocês dão o primeiro passo e se deparam com uma floresta densa, onde tudo é gigantesco:🌳",
    "sagui5": "galhos grossos como troncos, folhas enormes que formam tetos naturais, gotas de orvalho do tamanho de pedras brilhantes.",
    "sagui6": "Do alto, um sagui gigante — realmente GIGANTE — observa calado.🐒",
    "sagui7": "Mirabel engole seco: ",
    "sagui8": "Você faz um som qualquer… e o sagui imita perfeitamente. Mirabel faz tbm. Ele imita de novo.",
    "sagui9": "Mirabel arregala os olhos:👀",
    "sagui10": "Então Mirabel lembra: 😧",
    "sagui11": "A princesa se aproxima da parede e lê em voz alta:",
    "sagui12": "Ela olha para você, com um sorriso meio tímido:☺️",

    // Nevoeiro Confuso
    "nevoeiro1": "A porta 🚪 se abre e vocês entram na próxima sala.",
    "nevoeiro2": "Vocês entram num labirinto branco. O chão some, o ar fica pesado, tudo é neblina.😶‍🌫️",
    "nevoeiro3": "Uma mariposa 🪰✨ luminosa gigante surge. Ela voa em círculos perfeitos 🌀 — sempre iguais.",
    "nevoeiro4": "Mirabel dá três passos para frente… e volta exatamente para o ponto inicial.",
    "nevoeiro5": "Após repetir a tentativa, vocês sempre retornam ao mesmo ponto. Mirabel, frustrada diz:",
]

func mostrarFala(_ chave: String) {
    if var fala = falas[chave] {
        // Substituir um placeholder por nomeJogador
        fala = fala.replacingOccurrences(of: "{nome}", with: nomeJogador)
        mostrarTexto(fala)
    }
}

func mostrarFalas(_ chaves: [String]) {
    for chave in chaves {
        mostrarFala(chave)
    }
}
