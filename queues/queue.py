class Queue:
    class Node:
        def __init__(self, data, next = None, prev = None):
            self.data = data
            self.next = next
            self.prev = prev
    def __init__(self, head = None, tail = None):
        self.head = head
        self.tail = tail
    
    def enqueue(self, dat):
        if(self.head == None and self.tail == None):
            self.head = self.Node(dat)
            self.tail = self.head
        else:
            temp = self.tail
            self.tail = self.Node(dat)
            temp.prev = self.tail
            self.tail.next = temp
    
    def dequeue(self):
        if(self.head == None):
            return
        temp = self.head.data
        self.head = self.head.prev
        self.head.next = None
        print("Element dequeued: " + temp)
        
    def peek(self):
        if(self.head == None):
            return
        
    
            
            
            
