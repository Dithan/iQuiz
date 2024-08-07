//
//  ViewController.swift
//  iQuiz
//
//  Created by Thiago Rocha on 01/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func botaoPrecionado(_ sender: Any) {

    }
    
    @IBOutlet weak var botaoIniciarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    }
    
    func configuraLayout(){
        navigationItem.hidesBackButton = true
        botaoIniciarQuiz.layer.cornerRadius = 12.0
    }


}

