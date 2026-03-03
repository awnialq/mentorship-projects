class BinarySearchTree:
    class root:
        def __init__(self, val = None, left = None, right = None):
            self.val = val
            self.left = left
            self.right = right
    
    def __init__(self, root = None, height = 0, num = 0):
        self.root = root
        self.height = height
        self.num = num
    
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
        
    def tree_insert(self, root, val):
        if root is None:
            self.num += 1
            return self.Node(val)
        else:
            if val <= root.val:
                root.left = self.tree_insert(root.left, val)
            else:
                root.right = self.tree_insert(root.right, val)
            return root
    
    def tree_search(self, root, val):
        if root is None:
            return None
        elif root.val == val:
            return root
        else:
            if val < root.val:
                return self.tree_search(root.left, val)
            else:
                return self.tree_search(root.right, val)

    def tree_maximum(self, root):
        if root is None:
            return None
        elif root.right is None:
            return root
        else:
            return self.tree_maximum(root.right)
    
    def tree_minimum(self, root):
        if root is None:
            return None
        elif root.left is None:
            return root
        else:
            return self.tree_minimum(root.left)

    def tree_successor(self, root):
        if root is None:
            return None
        if root.right is not None:
            return self.tree_minimum(root.right)
        successor = None
        cur = self.root
        while cur is not None:
            if root.val < cur.val:
                successor = cur
                cur = cur.left
            elif root.val > cur.val:
                cur = cur.right
            else:
                break
        return successor
    
    def tree_predecessor(self, root):
        if root is None:
            return None
        if root.left is not None:
            return self.tree_maximum(root.left)
        pre = None
        cur = self.root
        while cur is not None:
            if root.val > cur.val:
                pre = cur
                cur = cur.right
            elif root.val < cur.val:
                cur = cur.left
            else:
                break
        return pre

    def common_ancestor(self, root, val1, val2):
        if root is None:
            return None
        if val1 < root.val and val2 < root.val:
            return self.common_ancestor(root.left, val1, val2)
        elif val1 > root.val and val2 > root.val:
            return self.common_ancestor(root.right, val1, val2)
        else:
            return root
    
    def delete(self, root, val):
        if root is None:
            return
        