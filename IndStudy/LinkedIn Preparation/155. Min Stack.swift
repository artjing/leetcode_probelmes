
class MinStack {

    /** initialize your data structure here. */
    var stack1 = [Int]()
    var stack2 = [Int]()
    
    init() {
        
    }
    
    func push(_ val: Int) {
        if stack2.isEmpty || val <= stack2.last! {
            stack2.append(val)
        }
        stack1.append(val)
    }
    
    func pop() {
        
        let last = stack1.removeLast()
        if last == stack2.last! {
            stack2.removeLast()
        }
    }
    
    func top() -> Int {
        return stack1.last!
    }
    
    func getMin() -> Int {
        return stack2.last!
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */
