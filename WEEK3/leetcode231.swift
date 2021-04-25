//
//  leetcode231.swift
//  
//
//  Created by 董静 on 3/29/21.
//

import Foundation
class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        var i = 1
        while i < n {
            i *= 2
        }
        return i == n
    }
}
