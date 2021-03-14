//
//  155_ Min Stack_C++.cpp
//  
//
//  Created by 董静 on 3/14/21.
//

#include <stdio.h>

class MinStack {
public:
    /** initialize your data structure here. */
    stack<int>currentStack;
    stack<int>minStack;
        
    MinStack() {
        
    }
    
    void push(int x) {
        if(currentStack.empty() || x <= getMin()) minStack.push(x);
        currentStack.push(x);
    }
    
    void pop() {
        if(currentStack.top() == getMin()){
            minStack.pop();
        }
        currentStack.pop();
    }
    
    int top() {
        return currentStack.top();
    }
    
    int getMin() {
        return minStack.top();
    }
};
