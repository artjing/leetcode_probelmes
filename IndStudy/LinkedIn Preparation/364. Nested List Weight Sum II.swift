class Solution {
    
    var maxNum = 0
    var map = [Int:Int]()
    
    func depthSumInverse(_ nestedList: [NestedInteger]) -> Int {
        dfs(nestedList, 1)
        var result = 0
        for (key,value) in map{
            result = result + value * (maxNum - key + 1)
        }
        return result
    }
    
    func dfs(_ nestedList: [NestedInteger], _ index: Int){
        for item in nestedList{
            if item.isInteger(){
                map[index, default:0] += item.getInteger()
            }else{
                dfs(item.getList(), index + 1)
            }
        }
        maxNum = max(maxNum, index)
    }
}
