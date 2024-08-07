//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Thiago Rocha on 02/08/24.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    var pontuacao = 0
    var numeroQuestao = 0

    @IBOutlet var botoesRespostas: [UIButton]!
    @IBAction func respostaBotaoPrecionado(_ sender: UIButton) {
        let usuarioAcertouResposta = questoes[numeroQuestao].respostaCorreta == sender.tag
        
        if usuarioAcertouResposta {
            pontuacao += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1)
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1)
        }
        if numeroQuestao < questoes.count - 1{
            
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 0.9, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
        } else {
            navegaParaTelaDesmpenho()
        }
        
    }
    
    func navegaParaTelaDesmpenho() {
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
    }
    
    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configurarLayout()
        configurarQuestao()
        
    }
    
    func configurarLayout(){
        navigationItem.hidesBackButton = true
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center
        for botao in botoesRespostas{
            botao.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configurarQuestao(){
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
        
        for botao in botoesRespostas{
            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
            botao.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController
        else {return}
        desempenhoVC.pontuacao = pontuacao
    }
    


}
