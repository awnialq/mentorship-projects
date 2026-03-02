class BinarySearchTree:
    class Node:
        def __init__(self, val = None, left = None, right = None):
            self.val = val
            self.left = left
            self.right = right
    
    def __init__(self, root = None, height = 0):
        self.root = root
        self.height = height
    
    def pre_order_traversal(self, root):
        if root is None:
            return
        print(f"{root.val}, ")
        self.pre_order_traversal(root.left)
        self.pre_order_traversal(root.right)
        
    def in_order_traversal(self, root):
        if root is None:
            return
        self.in_order_traversal(root.left)
        print(f"{root.val}, ")
        self.in_order_traversal(root.right)
        
    def post_order_traversal(self, root):
        if root is None:
            return
        self.post_order_traversal(root.left)
        self.post_order_traversal(root.right)
        print(f"{root.val}, ")
        
    def tree_insert(self, val):
        if self.root is None:
            self.root = self.Node(val, None, None)
        else:
            if(val <= self.root.val):
                self.root.left = self.Node(val, None, None)
        
            