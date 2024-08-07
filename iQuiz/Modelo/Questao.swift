//
//  Questao.swift
//  iQuiz
//
//  Created by Thiago Rocha on 05/08/24.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

let questoes: [Questao] = [
    Questao(titulo: "O que é um Optional em Swift?", respostas: ["Uma variável que pode conter um valor ou nil", "Um tipo de dado que só pode ser nulo", "Um tipo de dado que sempre tem um valor"], respostaCorreta: 0),
    
    Questao(titulo: "Qual é a principal característica da linguagem Swift?", respostas: ["Orientada a objetos", "Funcional", "Todas as alternativas estão corretas"], respostaCorreta: 2),
    
    Questao(titulo: "Qual é a sintaxe para criar uma constante em Swift?", respostas: ["let nomeDaConstante = valor", "const nomeDaConstante = valor", "var nomeDaConstante = valor"], respostaCorreta: 0),
    
    Questao(titulo: "O que é um closure em Swift?", respostas: ["Um bloco de código que pode ser atribuído a uma variável", "Uma função que não retorna nenhum valor", "Um tipo de dado que só pode ser nulo"], respostaCorreta: 0),
    
    Questao(titulo: "Qual é o tipo de dado usado para representar números decimais em Swift?", respostas: ["Int", "Double", "String"], respostaCorreta: 1),
    
    Questao(titulo: "O que acontece se você tentar modificar o valor de uma constante em Swift?", respostas: ["Nada acontece", "O compilador gera um erro", "O valor é modificado"], respostaCorreta: 1),
    
    Questao(titulo: "Qual estrutura de controle é usada para repetir um bloco de código enquanto uma condição for verdadeira?", respostas: ["if", "while", "for"], respostaCorreta: 1),
    
    Questao(titulo: "Qual constraint define a largura de uma view em relação à sua view pai?", respostas: ["Leading", "Trailing", "Width", "CenterX"], respostaCorreta: 2),
    
    Questao(titulo: "O que é o Intrinsic Content Size de uma view?", respostas: ["O tamanho mínimo necessário para exibir o conteúdo da view", "O tamanho máximo que a view pode ocupar", "O tamanho da tela do dispositivo", "O tamanho definido no storyboard"], respostaCorreta: 0),
    
    Questao(titulo: "Qual é a função do método layoutSubviews de uma UIView?", respostas: ["É chamado quando a view é criada", "É chamado quando a view precisa ser redesenhada", "É chamado quando a view é removida da hierarquia de views", "É chamado quando o dispositivo é girado"], respostaCorreta: 1),
    

]
