//
//  Brain.swift
//  TDDDemo
//
//  Created by Hung Chang Lo on 2018/1/4.
//  Copyright © 2018年 Hung Chang Lo. All rights reserved.
//

import Foundation

class Brain {

    func isDivisionByThree(number : Int) -> Bool {
        
        if number % 3 == 0
        {
            return true
        }
        else
        {
            return false
        }
    }

    func isDivisibleBy(divisor: Int, number: Int) -> Bool {

        return number % divisor == 0
    }

    func isDivisionByFive(number: Int) -> Bool {

        return isDivisibleBy(divisor: 5, number: number)
    }

}

