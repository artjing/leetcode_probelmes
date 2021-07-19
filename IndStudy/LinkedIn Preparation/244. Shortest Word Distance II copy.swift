
class WordDistance {

    var wordMap : [String:[Int]] = [:]
    
    init(_ wordsDict: [String]) {
        
        for(i,w) in wordsDict.enumerated(){
            if wordMap[w] != nil {
                wordMap[w]?.append(i)
            }else{
                var array = [Int]()
                array.append(i)
                wordMap[w] = array
            }
        }
    }
    
    func shortest(_ word1: String, _ word2: String) -> Int {
        
        guard let l1 = wordMap[word1] else { return 0 }
        guard let l2 = wordMap[word2] else { return 0 }
        var maxValue = Int.max
        for i in l1 {
            for j in l2 {
                maxValue = min(maxValue, abs(i-j))
            }
        }
        return maxValue
    }
}

/**
 * Your WordDistance object will be instantiated and called as such:
 * let obj = WordDistance(wordsDict)
 * let ret_1: Int = obj.shortest(word1, word2)
 */
