//
//  IntExtension.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 08/12/21.
//

import Foundation

extension Int {
    func duplicate4bits() -> Int {
        return (self << 4) + self
    }
    
    init(_ range: Range<Int> ) {
        let delta = range.lowerBound < 0 ? abs(range.lowerBound) : 0
        let min = UInt32(range.lowerBound + delta)
        let max = UInt32(range.upperBound   + delta)
        self.init(Int(min + arc4random_uniform(max - min)) - delta)
    }
}

func randomNumberWith(digits:Int) -> Int {
    let min = Int(pow(Double(10), Double(digits-1))) - 1
    let max = Int(pow(Double(10), Double(digits))) - 1
    return Int(Range(uncheckedBounds: (min, max)))
}
