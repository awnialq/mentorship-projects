class BinarySearchTree:
    class Node:
        def __init__(self, val = None, left = None, right = None):
            self.val = val
            self.left = left
            self.right = right
            self.height = 1
            
        """
        Given method to display the Binary Tree.

        Call with: BinaryTree.root.display()
        """
        def display(self):
            lines, *_ = self._display_aux()
            for line in lines:
                print(line)


        """
        Given helper method to display the Binary Tree.

        **Do not touch**
        """
        def _display_aux(self):
            """Returns list of strings, width, height, and horizontal coordinate of the root."""
            # No child.
            if self.right is None and self.left is None:
                line = '%s' % self.val
                width = len(line)
                height = 1
                middle = width // 2
                return [line], width, height, middle

            # Only left child.
            if self.right is None:
                lines, n, p, x = self.left._display_aux()
                s = '%s' % self.val
                u = len(s)
                first_line = (x + 1) * ' ' + (n - x - 1) * '_' + s
                second_line = x * ' ' + '/' + (n - x - 1 + u) * ' '
                shifted_lines = [line + u * ' ' for line in lines]
                return [first_line, second_line] + shifted_lines, n + u, p + 2, n + u // 2

            # Only right child.
            if self.left is None:
                lines, n, p, x = self.right._display_aux()
                s = '%s' % self.val
                u = len(s)
                first_line = s + x * '_' + (n - x) * ' '
                second_line = (u + x) * ' ' + '\\' + (n - x - 1) * ' '
                shifted_lines = [u * ' ' + line for line in lines]
                return [first_line, second_line] + shifted_lines, n + u, p + 2, u // 2

            # Two children.
            left, n, p, x = self.left._display_aux()
            right, m, q, y = self.right._display_aux()
            s = '%s' % self.val
            u = len(s)
            first_line = (x + 1) * ' ' + (n - x - 1) * '_' + s + y * '_' + (m - y) * ' '
            second_line = x * ' ' + '/' + (n - x - 1 + u + y) * ' ' + '\\' + (m - y - 1) * ' '
            if p < q:
                left += [n * ' '] * (q - p)
            elif q < p:
                right += [m * ' '] * (p - q)
            zipped_lines = zip(left, right)
            lines = [first_line, second_line] + [a + u * ' ' + b for a, b in zipped_lines]
            return lines, n + m + u, max(p, q) + 2, n + u // 2
    
    def __init__(self, root = None, num = 0):
        self.root = root
        self.num = num
    
    def _height(self, node):
        return node.height if node is not None else 0

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
        self.root = self.tree_insert_r(self.root, val)
        
    
    def tree_insert_r(self, root, val):
        if root is None:
            self.num += 1
            return self.Node(val)
        else:
            if val <= root.val:
                root.left = self.tree_insert_r(root.left, val)
            else:
                root.right = self.tree_insert_r(root.right, val)
            root.height = 1 + max(self._height(root.left), self._height(root.right))
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
            return None
        if val < root.val:
            root.left = self.delete(root.left, val)
        elif val > root.val:
            root.right = self.delete(root.right, val)
        else:
            if root.left is None and root.right is None:
                self.num -= 1
                return None
            elif root.left is None:
                self.num -= 1
                return root.right
            elif root.right is None:
                self.num -= 1
                return root.left
            else:
                successor = self.tree_minimum(root.right)
                root.val = successor.val
                root.right = self.delete(root.right, successor.val)
        root.height = 1 + max(self._height(root.left), self._height(root.right))
        return root
    
    def in_order_arr(self, node, arr):
        if node is None:
            return
        self.in_order_arr(node.left, arr)
        arr.append(node.val)
        self.in_order_arr(node.right, arr)
        
    def build_bst(self, arr, lo, hi):
            if lo > hi:
                return None
            mid = (lo + hi) // 2
            node = self.Node(arr[mid])
            node.left = self.build_bst(arr, lo, mid - 1)
            node.right = self.build_bst(arr, mid + 1, hi)
            node.height = 1 + max(self._height(node.left), self._height(node.right))
            return node
    
    def balance_bst(self):
        arr = []
        self.in_order_arr(self.root, arr)
        self.root = self.build_bst(arr, 0, len(arr) - 1)

def main():
    bst = BinarySearchTree()
    values = [10, 5, 15, 3, 7, 12, 20, 1, 4, 6, 8, 11, 13, 18, 25, 2, 9, 14, 19, 30]
    for v in values:
        bst.tree_insert(v)

    # --- Traversals ---
    print("=== Traversals ===")
    print("Pre-order:  ", end=""); bst.pre_order_traversal(bst.root)
    print("In-order:   ", end=""); bst.in_order_traversal(bst.root)
    print("Post-order: ", end=""); bst.post_order_traversal(bst.root)

    # --- Search ---
    print("\n=== Search ===")
    for val in [7, 19, 99]:
        result = bst.tree_search(bst.root, val)
        print(f"Search {val}: {'found' if result else 'not found'}")

    # --- Min / Max ---
    print("\n=== Min / Max ===")
    print(f"Minimum: {bst.tree_minimum(bst.root).val}")
    print(f"Maximum: {bst.tree_maximum(bst.root).val}")

    # --- Successor / Predecessor ---
    print("\n=== Successor / Predecessor ===")
    for val in [7, 13, 30, 1]:
        node = bst.tree_search(bst.root, val)
        succ = bst.tree_successor(node)
        pred = bst.tree_predecessor(node)
        print(f"Node {val} -> successor: {succ.val if succ else None}, predecessor: {pred.val if pred else None}")

    # --- Common Ancestor ---
    print("\n=== Common Ancestor ===")
    pairs = [(3, 7), (1, 13), (18, 30)]
    for a, b in pairs:
        anc = bst.common_ancestor(bst.root, a, b)
        print(f"LCA({a}, {b}): {anc.val if anc else None}")

    # --- Delete ---
    print("\n=== Delete ===")
    print(f"Nodes before delete: {bst.num}")
    bst.root.display()
    for val in [1, 15, 10]:  # leaf, one child, two children
        bst.root = bst.delete(bst.root, val)
        print(f"\nAfter deleting {val} (nodes: {bst.num}):")
        bst.root.display()

    # --- Balance ---
    print("\n=== Balance (skewed tree) ===")
    skewed = BinarySearchTree()
    for v in range(1, 21):
        skewed.tree_insert(v)
    print("Before balancing:")
    skewed.root.display()
    print(f"Height: {skewed.root.height}\n")
    skewed.balance_bst()
    print("After balancing:")
    skewed.root.display()
    print(f"Height: {skewed.root.height}")

if __name__ == "__main__":
    main()