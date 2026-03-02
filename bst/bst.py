class BinarySearchTree:
    class Node:
        def __init__(self, val = None, left = None, right = None):
            self.val = val
            self.left = left
            self.right = right
    
    def __init__(self, root = None, height = 0):
        self.root = root
        self.height = height
    
    def tree_insert(self, val):
        
            