//
//  HomeViewController.swift
//  ARGame
//
//  Created by Кирилл Коновалов on 10.09.2020.
//  Copyright © 2020 Кирилл Коновалов. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBAction func onPlayButton(_ sender: Any) {
        performSegue(withIdentifier: "homeToGameSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        if let gameScore = defaults.value(forKey: "score") {
            let score = gameScore as! Int
            scoreLabel.text = "Score \(String(score))"
        }
    }
}
