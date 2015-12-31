//
//  Strings.swift
//  SharedUtilities
//
//  Created by Ian Dundas on 31/12/2015.
//  Copyright © 2015 IanDundas. All rights reserved.
//

import Foundation

public extension String{
    
    public static func random(length length: Int) -> String {
        let alphabet = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let upperBound = UInt32(alphabet.characters.count)
        return String((0..<length).map { _ -> Character in
            return alphabet[alphabet.startIndex.advancedBy(Int(arc4random_uniform(upperBound)))]
            })
    }
}
