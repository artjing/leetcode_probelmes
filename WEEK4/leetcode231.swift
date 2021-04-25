//
//  leetcode231.swift
//  
//
//  Created by 董静 on 4/2/21.
//

import Foundation
class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        return n != 0 && n&(n-1) == 0
    }
}
