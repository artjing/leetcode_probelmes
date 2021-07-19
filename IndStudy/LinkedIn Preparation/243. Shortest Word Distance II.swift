243. Shortest Word Distance
For each a, we need to get the recent position of b
For each of b, we need to get the recent position of a

class Solution {
    func shortestDistance(_ wordsDict: [String], _ word1: String, _ word2: String) -> Int {
        
        var a = -1
        var b = -1
        var short = Int.max
        
        for (index,w) in wordsDict.enumerated() {
            if w == word1 {
                a = index
            }
            if w == word2{
                b = index
            }
            if a != -1 && b != -1 {
                short = min(short, abs(a-b))
            }
        }
        return short
    }
}

