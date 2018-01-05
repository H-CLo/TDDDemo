//
//  ViewController.swift
//  TDDDemo
//
//  Created by Hung Chang Lo on 2018/1/4.
//  Copyright © 2018年 Hung Chang Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var testButton: UIButton!
    var gameScore : Int? {
        didSet{
            guard gameScore != nil else {
                return
            }
            
            numberButton.setTitle(String(describing: gameScore!), for: .normal)
        }
    }
    
    var game: Game?
    var gameScoreForGame: Int?
    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var champagneButton: UIButton!
    @IBOutlet weak var spaceButton: UIButton!
    @IBOutlet weak var lightningButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        gameScore = 0
        
        game = Game()
        gameScoreForGame = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        NSLog("Hello world")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(move: Int) -> Void {
        
        self.gameScore? += move
    }
    
    func playAfterRefactor(move: Int) -> Void {
        
        self.gameScoreForGame = game?.play(move: move)
    }
    
    
    @IBAction func numberButtonDidTapped(_ sender: UIButton) {
        
        if sender == numberButton
        {
            self.gameScore = 1
        }
        else if sender == champagneButton
        {
            self.gameScore = 2
        }
        else if sender == spaceButton
        {
            self.gameScore = 3
        }
        else if sender == lightningButton
        {
            self.gameScore = 4
        }
    }
}

