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
        if self.head is None and self.tail is None:
            self.head = self.Node(dat)
            self.tail = self.head
            return
        self.tail.prev = self.Node(dat)
        self.tail.prev.next = self.tail
        self.tail = self.tail.prev
    
    def dequeue(self):
        if self.head is None:
            print("Nothing to dequeue!")
            return
        if self.head is self.tail:
            temp = self.head.data
            self.head = None
            self.tail = None
        else:
            temp = self.head.data
            self.head = self.head.prev
            self.head.next = None
        print("Element dequeued: " + str(temp))
        
    def peek(self):
        if self.head is None:
            return
        print("Item at the top of the queue: " + str(self.head.data))
    
    def isEmpty(self):
        return self.head == None and self.tail == None
    
    def size(self):
        size = 0
        temp = self.head
        while temp is not None:
            size += 1
            temp = temp.prev
        print("Size of queue: " + str(size))
    
    def printQueue(self):
        print("All elements in queue: ")
        temp = self.head
        while temp is not None:
            print(str(temp.data))
            temp = temp.prev
    
    def clear(self):
        print("Clearing queue...")
        self.head = None
        self.tail = None
            
        
def main():
    q1 = Queue()
    print("Enqueueing 1 to 10...")
    for i in range(1, 11):
        q1.enqueue(i)
    q1.size()
    print("Is the queue empty?: ", end = "")
    print(q1.isEmpty())
    q1.printQueue()
    q1.dequeue()
    q1.dequeue()
    q1.size()
    q1.printQueue()
    for i in range(10):
        q1.dequeue()
    print("Enqueueing 5 to 100...")
    for i in range(5,101):
        q1.enqueue(i)
    q1.size()
    q1.peek()
    q1.clear()
    print("Is the queue empty?: ", end = "")
    print(q1.isEmpty())
    q1.size()
    q1.printQueue()

if __name__ == "__main__":
    main()           
            
            
