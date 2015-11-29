//
//  Palindrome.swift
//  Palindrome Challenge
//
//  Created by FareedQ on 2015-11-27.
//  Copyright © 2015 FareedQ. All rights reserved.
//

import UIKit

struct Palindrome {

    func process(input:String) -> String {
        let words = input.componentsSeparatedByString(" ")
        
        var largestPalindromeString:String = ""
        for word in words {
            if isAPalindrome(word) {
                if word.characters.count > largestPalindromeString.characters.count {
                    largestPalindromeString = word
                }
            }
        }
        
        
        if largestPalindromeString.characters.count > 0 {
            return(largestPalindromeString)
        } else {
            return("")
        }
        
        
        
    }
    
    func isAPalindrome(var input:String) -> Bool {
        if input.characters.count <= 1 { return false }
        input = input.lowercaseString
        
        let characters = input.characters.map { String($0) }
        let reverseCharacters = Array(characters.reverse())
        for x in 0...(characters.count/2) {
            if characters[x] != reverseCharacters[x] {
                return false
            }
        }
        return true
    }
    
}
