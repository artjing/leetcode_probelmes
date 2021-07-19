class Solution {
    
    func depthSum(_ nestedList: [NestedInteger]) -> Int {
        return dfs(nestedList, 1)
    }
    
    func dfs(_ nestedList: [NestedInteger], _ level: Int) -> Int {
        var sum = 0
        for item in nestedList{
            if item.isInteger(){
                sum = sum + item.getInteger() * level
            }else{
                sum = sum + dfs(item.getList(), level+1)
            }
        }
        return sum
    }
}

