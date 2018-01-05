//
//  Game.swift
//  TDDDemo
//
//  Created by Hung Chang Lo on 2018/1/4.
//  Copyright © 2018年 Hung Chang Lo. All rights reserved.
//

import Foundation

class Game {
    
    var score : Int

    init() {
        
        self.score = 0
    }

    func play() -> Void {

        self.score += 1
    }

    func play(move: Int) -> Int {

        self.score += 1

        return self.score
    }
}

