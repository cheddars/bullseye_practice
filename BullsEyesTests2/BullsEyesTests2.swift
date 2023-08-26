//
//  BullsEyesTests2.swift
//  BullsEyesTests2
//
//  Created by nezah on 2023/08/26.
//

import XCTest
@testable import BullsEyes

final class BullsEyesTests2: XCTestCase {
  var game: Game!
  
  override func setUpWithError() throws {
    game = Game()
  }
  
  override func tearDownWithError() throws {
    game = nil
  }
  
  func testExample() throws {
    // XCTAssert(game.points(sliderValue: 50) == 999)
  }
  
  func testScorePositive() {
    let guess = game.target + 5
    let score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 95)
  }
}
