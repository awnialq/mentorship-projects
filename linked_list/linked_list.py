class LinkedList:
    class Node:
        def __init__(self, data = None, next = None):
            self.data = data
            self.next = next
    def __init__(self, head = None, count = 0):
        self.head = head
        self.count = count
        
    def __len__(self):
        return self.count
    
    def print(self):
        print("Elements in LinkedList: (Index: Data): ")
        temp = self.head
        num = 0
        while temp is not None:
            print(f"{num}: {temp.data}")
            temp = temp.next
            num += 1
    
    def getValue(self, index):
        if self.count == 0 or (index >= self.count):
            print("Index out of bounds")
            return
        i = 0
        val = self.head
        while i < index:
            val = val.next
            i += 1
        return val.data
    
    def addAtHead(self, val):
        if self.count == 0:
            self.head = self.Node(val)
            self.count += 1
            return
        temp = self.head
        self.head = self.Node(val)
        self.head.next = temp
        self.count += 1
        
    def insert(self, val):
        if self.count == 0:
            self.head = self.Node(val)
            self.count += 1
            return
        end = self.head
        while end.next is not None:
            end = end.next
        end.next = self.Node(val)
        self.count += 1
    
    def delete(self, val):
        if self.head is None:
            return
            
        if self.head.data == val:
            self.head = self.head.next
            self.count -= 1
            print(f"Deleted val: {val}")
            return
            
        current = self.head
        while current.next is not None:
            if current.next.data == val:
                current.next = current.next.next
                self.count -= 1
                print(f"Deleted val: {val}")
                return
            current = current.next
        print(f"No data of value {val} is in the Linked List")
    
    def addAtTail(self, val):
        self.insert(val)
    
    def addAtIndex(self, idx, val):
        if idx < 0 or idx > self.count:
            print("Index out of bounds")
            return
            
        if idx == 0:
            self.addAtHead(val)
            return
            
        if idx == self.count:
            self.addAtTail(val)
            return
        cur = self.head
        i = 0
        while i < (idx - 1):
            cur = cur.next
            i += 1  
        new = self.Node(val)
        new.next = cur.next
        cur.next = new
        self.count += 1
    
    def deleteAtIndex(self, idx):
        if idx < 0 or idx >= self.count:
            print("Index out of bounds")
            return
            
        if idx == 0:
            print(f"Deleted value: {self.head.data}")
            self.head = self.head.next
            self.count -= 1
            return
            
        cur = self.head
        i = 0
        while i < (idx - 1):
            cur = cur.next
            i += 1
        print(f"Deleted value: {cur.next.data}")
        cur.next = cur.next.next
        self.count -= 1
    
    def max(self):
        if self.count == 0:
            print("Nothing in the Linked List")
            return
        temp = self.head.next
        max = self.head.data
        while temp is not None:
            if temp.data > max:
                max = temp.data
            temp = temp.next
        print(f"Max value: {max}")
    
    def min(self):
        if self.count == 0:
            print("Nothing in the Linked List")
            return
        temp = self.head.next
        min = self.head.data
        while temp is not None:
            if temp.data < min:
                min = temp.data
            temp = temp.next
        print(f"Min value: {min}")
        
def main():
    ll1 = LinkedList()
    ll1.addAtHead(1)
    ll1.addAtTail(2)
    ll1.addAtIndex(0, 3)
    ll1.print()
    print(f"Size of ll1: {ll1.__len__()}")
    ll1.delete(5)
    ll1.delete(3)
    ll1.print()
    print(f"Size of ll1: {ll1.__len__()}")
    for i in range (3, 101):
        ll1.addAtTail(i)
    ll1.print()
    print(f"Size of ll1: {ll1.__len__()}")
    ll1.deleteAtIndex(100)
    ll1.max()
    ll1.deleteAtIndex(99)
    ll1.max()
    print(f"Size of ll1: {ll1.__len__()}")
    ll1.min()
    ll1.deleteAtIndex(0)
    print(f"Size of ll1: {ll1.__len__()}")
    ll1.min()
    ll1.print()
    
if __name__ == "__main__":
    main()