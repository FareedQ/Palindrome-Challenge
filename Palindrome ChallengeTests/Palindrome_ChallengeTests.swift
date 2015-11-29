//
//  Palindrome_ChallengeTests.swift
//  Palindrome ChallengeTests
//
//  Created by FareedQ on 2015-11-27.
//  Copyright © 2015 FareedQ. All rights reserved.
//

import XCTest
@testable import Palindrome_Challenge

class Palindrome_ChallengeTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testShouldReturnFalseIfPalindromeBeingCheckedIsAnEmptyString() {
        let palindrome = Palindrome()
        let results = palindrome.isAPalindrome("")
        XCTAssertFalse(results, "A blank line shouldn't be consider a palidrome")
    }
    
    func testShouldReturnFalseIfPalindromeBeingCheckedIsOneCharacter() {
        let palindrome = Palindrome()
        let results = palindrome.isAPalindrome("a")
        XCTAssertFalse(results, "A single character shouldn't be consider a palidrome")
    }
    
    func testShouldReturnFalseIfPalindromeBeingCheckedIsNotAPalindrome() {
        let palindrome = Palindrome()
        let results = palindrome.isAPalindrome("abc")
        XCTAssertFalse(results, "A non-palidrome string should be considered a palindrome")
    }
    
    func testShouldReturnTrueIfPalindromeBeingCheckedIsAPalindrome() {
        let palindrome = Palindrome()
        let results = palindrome.isAPalindrome("abba")
        XCTAssert(results, "A palidrome string should be pass this test")
    }
    
    func testShouldShowTheLongestPalindromeInTheString() {
        let palindrome = Palindrome()
        let results = palindrome.process("racecar and radar")
        let expected = "racecar"
        XCTAssertEqual(results, expected, "The largest palindrome should be the result")
    }
    
    func testPerformanceExample() {
        self.measureBlock {
        }
    }
    
}
