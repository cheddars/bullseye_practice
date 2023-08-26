//
//  Game.swift
//  BullsEyes
//
//  Created by nezah on 2023/08/26.
//

import Foundation

struct Game {
  var target: Int = Int.random(in: 1..<100)
  var score: Int = 0
  var round: Int = 1
  
  func points(sliderValue: Int) -> Int {
    100 - abs(target - sliderValue)
  }
}
