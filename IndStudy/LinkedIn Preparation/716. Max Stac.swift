class MaxStack {

    /** initialize your data structure here. */
    
    var stack = [Int]()
    var maxStack = [Int]()
    
    init() {
        
    }
    
    func push(_ x: Int) {
        
        maxStack.append( maxStack.isEmpty ? x : max(x, maxStack.last!))
        stack.append(x)
    }
    
    func pop() -> Int {
        maxStack.removeLast()
        return stack.removeLast()
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func peekMax() -> Int {
        return maxStack.last!
    }
    
    func popMax() -> Int {
        
        var temp = [Int]()
        let max = maxStack.last!
        maxStack.removeLast()

        while let last = stack.popLast() {
            if last == max {
                break
            }else{
                temp.append(last)
            }
        }
        
        while let item = temp.popLast() {
            stack.append(item)
        }
        
        return max
    }
}

/**
 * Your MaxStack object will be instantiated and called as such:
 * let obj = MaxStack()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.peekMax()
 * let ret_5: Int = obj.popMax()
 */
