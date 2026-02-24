class DLinkedList:
    class Node:
        def __init__(self, data, next = None, prev = None):
            self.data = data
            self.next = next
            self.prev = prev
    def __init__(self, head = None, count = 0):
        self.head = head
        self.count = count
    def __len__(self):
        return self.count
    
        
    