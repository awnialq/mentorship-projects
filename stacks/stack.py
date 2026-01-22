class Stack:
    class Node:
        def __init__(self, val, next = None):
            self.val = val
            self.next = next
    
    def __init__(self):
        self.top = None
        self.size = 0
    
    def push(self, val):
        if self.top is None:
            self.top = self.Node(val)
        else:
            temp = self.Node(val, self.top)
            self.top = temp
        self.size += 1
    
    def pop(self):
        if self.size >= 1:
            temp = self.top
            self.top = self.top.next
            self.size -= 1
            print("Popped: ", end = '')
            print(temp.val)
            return temp.val
            
        
    
    def peek(self):
        if self.top is not None:
            print("Peek: ", end = '')
            print(self.top.val)
        else: 
            print("Peek: ")
    
    def isEmpty(self):
        return self.size == 0
    
    def getSize(self):
        return self.size
        
    def printStack(self):
        print("Stack top to bottom: ")
        if self.top is not None:
            temp = self.top
            i = 0
            while(i < self.size):
                print(temp.val)
                temp = temp.next
                i += 1
    
def main():
    print("Testing Stack with basic numbers: ")
    s1 = Stack()
    s1.push(1)
    s1.push(2)
    s1.push(3)
    s1.push(4)
    s1.push(5)
    s1.peek()
    s1.printStack()
    print("Size: ", end = '')
    print(s1.getSize())
    print("Is the stack empty?(T/F): ", end = '')
    print(s1.isEmpty())
    s1.pop()
    s1.peek()
    s1.printStack()
    print("Size: ", end = '')
    print(s1.getSize())
    s1.pop()
    s1.peek()
    s1.pop()
    print("Size: ", end = '')
    print(s1.getSize())
    s1.peek()
    s1.pop()
    s1.peek()
    s1.pop()
    s1.peek()
    s1.printStack()
    print("Size: ", end = '')
    print(s1.getSize())
    print("Size: ", end = '')
    print(s1.getSize())
    
    print("\nTesting stack with tuples: ")
    s2 = Stack()
    s2.push([0, 0])
    s2.push([1, 1])
    s2.push([2, 2])
    print("Size: ", end = '')
    print(s2.getSize())
    s2.printStack()
    print("Size: ", end = '')
    print(s2.getSize())
    s2.pop()
    print("Size: ", end = '')
    print(s2.getSize())
    s2.printStack()
    print("Is the stack empty?(T/F): ", end = '')
    print(s2.isEmpty())
    s2.pop()
    s2.pop()
    print("Size: ", end = '')
    print(s2.getSize())
    print("Is the stack empty?(T/F): ", end = '')
    print(s2.isEmpty())
    
    
    
if __name__ == "__main__":
    main()          
        
