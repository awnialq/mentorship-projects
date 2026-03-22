"""
Heap Data Structure
===================
A heap is a specialized tree-based data structure that satisfies the "heap property":

  - **Max-Heap**: Every parent node is >= its children. The largest value is always at the root.
  - **Min-Heap**: Every parent node is <= its children. The smallest value is always at the root.

Heaps are commonly stored as arrays (lists) rather than explicit tree nodes. The mapping
between array indices and tree positions works as follows for a 0-indexed array:

  - Root is at index 0.
  - For a node at index i:
      - Left child  → index 2*i + 1
      - Right child → index 2*i + 2
      - Parent      → index (i - 1) // 2

Example (max-heap):
         10
        /   \\
       9     8
      / \\   / \\
     7   6 5   4

  Stored as: [10, 9, 8, 7, 6, 5, 4]

Common uses: priority queues, heap sort, finding the k-th largest/smallest element.
"""


class Heap:
    """
    A max-heap implementation backed by a Python list.

    In a max-heap the largest element is always at the root (index 0),
    and every parent is greater than or equal to both of its children.

    Attributes:
        heap (list): The internal list that stores heap elements.
    """

    def __init__(self):
        self.heap = []

    # ------------------------------------------------------------------
    # Tree navigation helpers
    # ------------------------------------------------------------------

    def parent(self, position):
        """
        Return the index of the parent of the node at *position*.

        In the array representation every node's parent sits at
        index ``(position - 1) // 2``.

        Args:
            position (int): Index of the current node (must be > 0).

        Returns:
            int: Index of the parent node.

        Example:
            heap = [10, 9, 8]   # root=10, left=9, right=8
            parent(1) → 0  (parent of 9 is 10)
            parent(2) → 0  (parent of 8 is 10)
        """
        return (position - 1) // 2

    def left(self, position):
        """
        Return the index of the left child of the node at *position*.

        Left child is always at index ``2 * position + 1``.

        Args:
            position (int): Index of the current node.

        Returns:
            int: Index of the left child.

        Example:
            heap = [10, 9, 8, 7, 6]
            left(0) → 1  (left child of 10 is 9)
            left(1) → 3  (left child of 9 is 7)
        """
        return 2 * position + 1

    def right(self, position):
        """
        Return the index of the right child of the node at *position*.

        Right child is always at index ``2 * position + 2``.

        Args:
            position (int): Index of the current node.

        Returns:
            int: Index of the right child.

        Example:
            heap = [10, 9, 8, 7, 6, 5]
            right(0) → 2  (right child of 10 is 8)
            right(1) → 4  (right child of 9 is 6)
        """
        return 2 * position + 2

    # ------------------------------------------------------------------
    # Core operations
    # ------------------------------------------------------------------

    def swap(self, i, j):
        """
        Swap the elements at indices *i* and *j* in the heap.

        This is a building block used by insert, heapify, and delete
        to move elements into their correct positions.

        Args:
            i (int): Index of the first element.
            j (int): Index of the second element.
        """
        self.heap[i], self.heap[j] = self.heap[j], self.heap[i]

    def insert(self, value):
        """
        Insert *value* into the heap while maintaining the max-heap property.

        Strategy – "bubble up" (also called sift-up):
          1. Append the new value at the end of the array (bottom of the tree).
          2. Compare it with its parent; if it is larger, swap them.
          3. Repeat step 2 until the value is smaller than its parent
             or it reaches the root.

        This restores the heap property in O(log n) time.

        Args:
            value: The value to insert.

        Example:
            heap = [10, 9, 8]
            insert(11)
            → append 11  : [10, 9, 8, 11]
            → 11 > parent(9) → swap: [10, 11, 8, 9]
            → 11 > parent(10) → swap: [11, 10, 8, 9]
        """
        self.heap.append(value)
        current = len(self.heap) - 1

        # Bubble up: move the new element toward the root as long as it is
        # larger than its parent.
        while current > 0 and self.heap[current] > self.heap[self.parent(current)]:
            self.swap(current, self.parent(current))
            current = self.parent(current)

    def max_heapify(self, position, size=None):
        """
        Restore the max-heap property for the subtree rooted at *position*.

        Strategy – "trickle down" (also called sift-down):
          1. Find the largest value among the node and its two children.
          2. If the largest is not the node itself, swap them.
          3. Recursively apply to the affected subtree.

        This assumes both left and right subtrees already satisfy the
        max-heap property, so only the root of the subtree may be out of place.

        Time complexity: O(log n)

        Args:
            position (int): Root of the subtree to heapify.
            size (int, optional): Number of elements to consider.
                Defaults to the full heap length. Used by heapify() and
                delete() to operate on a virtual sub-array.
        """
        if size is None:
            size = len(self.heap)

        largest = position
        left = self.left(position)
        right = self.right(position)

        if left < size and self.heap[left] > self.heap[largest]:
            largest = left
        if right < size and self.heap[right] > self.heap[largest]:
            largest = right

        if largest != position:
            self.swap(position, largest)
            self.max_heapify(largest, size)

    def heapify(self):
        """
        Build a valid max-heap from the current, possibly unordered, list.

        Strategy – "Floyd's algorithm":
          Starting from the last non-leaf node and working up to the root,
          call max_heapify() on each node. Leaf nodes (the bottom half of
          the array) are already trivially valid heaps of size 1, so we
          only need to process the upper half.

        This runs in O(n) time, which is more efficient than inserting
        each element individually (which would be O(n log n)).

        The last non-leaf node is at index ``len(heap) // 2 - 1``.
        """
        # Start from the last internal (non-leaf) node and move to the root.
        start = len(self.heap) // 2 - 1
        for position in range(start, -1, -1):
            self.max_heapify(position)

    def sorted(self):
        """
        Return the index of the first position where the max-heap property
        is violated, or -1 if the heap is fully sorted (valid).

        A position is "out of order" when a child is strictly greater
        than its parent – which breaks the max-heap invariant.

        Returns:
            int: Index of the first violating child, or -1 if none found.

        Example:
            heap = [10, 9, 8]  → -1  (valid max-heap)
            heap = [5,  9, 8]  → 1   (9 > 5, position 1 violates the rule)
        """
        for i in range(1, len(self.heap)):
            if self.heap[i] > self.heap[self.parent(i)]:
                return i
        return -1

    def height(self):
        """
        Return the height of the heap tree.

        Height is defined as the number of edges on the longest path from
        the root to a leaf. An empty heap has height -1; a single-element
        heap has height 0.

        For a complete binary tree with n nodes the height is
        ``floor(log2(n))``, which equals the number of times we can
        halve n before reaching 0.

        Returns:
            int: Height of the heap (-1 if empty).

        Example:
            heap = [10]              → height 0
            heap = [10, 9, 8]        → height 1
            heap = [10, 9, 8, 7, 6]  → height 2
        """
        n = len(self.heap)
        if n == 0:
            return -1
        height = 0
        nodes = n
        while nodes > 1:
            nodes //= 2
            height += 1
        return height

    def delete(self):
        """
        Remove and return the root (maximum) element of the heap.

        Strategy:
          1. Swap the root with the last element.
          2. Remove the last element (the old root) from the list.
          3. Call max_heapify(0) on the new root to restore the heap property.

        This runs in O(log n) time.

        Returns:
            The maximum element that was at the root, or None if the heap
            is empty.

        Example:
            heap = [10, 9, 8, 7]
            delete() → returns 10, heap becomes [9, 7, 8]
        """
        if not self.heap:
            return None

        # Swap root with the last element, then pop the last element.
        self.swap(0, len(self.heap) - 1)
        maximum = self.heap.pop()

        # Restore the max-heap property from the new root downward.
        if self.heap:
            self.max_heapify(0)

        return maximum

    def create_heap(self, values):
        """
        Populate the heap from an iterable of *values* and heapify.

        This replaces any existing heap contents with *values* and then
        calls heapify() to arrange them into a valid max-heap in O(n) time.

        Args:
            values (iterable): Collection of values to build the heap from.

        Example:
            h = Heap()
            h.create_heap([3, 1, 4, 1, 5, 9, 2, 6])
            # h.heap is now a valid max-heap, e.g. [9, 6, 4, 3, 5, 1, 2, 1]
        """
        self.heap = list(values)
        self.heapify()

    def __repr__(self):
        return f"Heap({self.heap})"
