"""
Tests for the Heap (max-heap) implementation in heap.py.
Run with: python -m pytest test_heap.py -v --tb=short
       or: python -m unittest test_heap.py -v
"""

import unittest
from heap import Heap


class TestHelpers(unittest.TestCase):
    """Tree-navigation helpers: parent, left, right."""

    def setUp(self):
        self.h = Heap()

    def test_parent_of_left_child(self):
        self.assertEqual(self.h.parent(1), 0)

    def test_parent_of_right_child(self):
        self.assertEqual(self.h.parent(2), 0)

    def test_parent_deeper(self):
        self.assertEqual(self.h.parent(5), 2)
        self.assertEqual(self.h.parent(6), 2)

    def test_left_of_root(self):
        self.assertEqual(self.h.left(0), 1)

    def test_left_deeper(self):
        self.assertEqual(self.h.left(1), 3)
        self.assertEqual(self.h.left(2), 5)

    def test_right_of_root(self):
        self.assertEqual(self.h.right(0), 2)

    def test_right_deeper(self):
        self.assertEqual(self.h.right(1), 4)
        self.assertEqual(self.h.right(2), 6)


class TestSwap(unittest.TestCase):
    """swap() exchanges two elements in the internal list."""

    def setUp(self):
        self.h = Heap()
        self.h.heap = [1, 2]

    def test_swap_two_elements(self):
        self.h.swap(0, 1)
        self.assertEqual(self.h.heap, [2, 1])

    def test_swap_same_index(self):
        self.h.swap(0, 0)
        self.assertEqual(self.h.heap, [1, 2])


class TestInsert(unittest.TestCase):
    """insert() appends and bubbles up to maintain max-heap order."""

    def setUp(self):
        self.h = Heap()

    def test_insert_into_empty(self):
        self.h.insert(5)
        self.assertEqual(self.h.heap, [5])

    def test_insert_smaller_no_swap(self):
        self.h.insert(10)
        self.h.insert(3)          # 3 < 10, stays as right child
        self.assertEqual(self.h.heap[0], 10)
        self.assertIn(3, self.h.heap)

    def test_insert_larger_bubbles_to_root(self):
        self.h.insert(5)
        self.h.insert(10)         # 10 > 5, bubbles to root
        self.assertEqual(self.h.heap[0], 10)

    def test_insert_multiple_max_at_root(self):
        for v in [3, 1, 4, 1, 5, 9, 2, 6]:
            self.h.insert(v)
        # Max-heap invariant: root is the largest element
        self.assertEqual(self.h.heap[0], 9)
        self.assertEqual(self.h.sorted(), -1)

    def test_insert_bubble_multi_level(self):
        # Build [10, 9, 8], then insert 11 which must bubble two levels
        for v in [10, 9, 8]:
            self.h.insert(v)
        self.h.insert(11)
        self.assertEqual(self.h.heap[0], 11)
        self.assertEqual(self.h.sorted(), -1)


class TestMaxHeapify(unittest.TestCase):
    """max_heapify() sifts down the element at *position*."""

    def setUp(self):
        self.h = Heap()

    def test_already_valid_no_change(self):
        self.h.heap = [10, 9, 8]
        self.h.max_heapify(0)
        self.assertEqual(self.h.heap, [10, 9, 8])

    def test_left_child_largest(self):
        self.h.heap = [5, 10, 3]
        self.h.max_heapify(0)
        self.assertEqual(self.h.heap[0], 10)
        self.assertEqual(self.h.sorted(), -1)

    def test_right_child_largest(self):
        self.h.heap = [5, 3, 10]
        self.h.max_heapify(0)
        self.assertEqual(self.h.heap[0], 10)
        self.assertEqual(self.h.sorted(), -1)

    def test_recursive_sift_down(self):
        # Root is small; violation cascades two levels deep
        self.h.heap = [1, 9, 8, 7, 6, 5, 4]
        self.h.max_heapify(0)
        self.assertEqual(self.h.heap[0], 9)
        self.assertEqual(self.h.sorted(), -1)

    def test_explicit_size_limits_range(self):
        # With size=3 only the first three positions are considered
        self.h.heap = [1, 10, 8, 99, 99]
        self.h.max_heapify(0, size=3)
        # 99s at indices 3 and 4 are outside the virtual sub-array
        self.assertEqual(self.h.heap[0], 10)

    def test_no_left_child(self):
        self.h.heap = [5]
        self.h.max_heapify(0)     # leaf node — nothing to do
        self.assertEqual(self.h.heap, [5])


class TestHeapify(unittest.TestCase):
    """heapify() (Floyd's algorithm) builds a valid max-heap in O(n)."""

    def setUp(self):
        self.h = Heap()

    def test_empty_list(self):
        self.h.heap = []
        self.h.heapify()
        self.assertEqual(self.h.heap, [])

    def test_single_element(self):
        self.h.heap = [42]
        self.h.heapify()
        self.assertEqual(self.h.heap, [42])

    def test_already_valid(self):
        self.h.heap = [10, 9, 8, 7, 6, 5, 4]
        self.h.heapify()
        self.assertEqual(self.h.sorted(), -1)

    def test_reverse_sorted(self):
        self.h.heap = [1, 2, 3, 4, 5, 6, 7]
        self.h.heapify()
        self.assertEqual(self.h.heap[0], 7)
        self.assertEqual(self.h.sorted(), -1)

    def test_arbitrary_order(self):
        self.h.heap = [3, 1, 4, 1, 5, 9, 2, 6]
        self.h.heapify()
        self.assertEqual(self.h.heap[0], 9)
        self.assertEqual(self.h.sorted(), -1)


class TestSorted(unittest.TestCase):
    """sorted() returns -1 for a valid max-heap, else the first violation index."""

    def setUp(self):
        self.h = Heap()

    def test_empty_heap(self):
        self.assertEqual(self.h.sorted(), -1)

    def test_single_element(self):
        self.h.heap = [1]
        self.assertEqual(self.h.sorted(), -1)

    def test_valid_heap(self):
        self.h.heap = [10, 9, 8, 7, 6, 5, 4]
        self.assertEqual(self.h.sorted(), -1)

    def test_violation_at_first_child(self):
        self.h.heap = [5, 9, 8]   # 9 > parent 5 → violation at index 1
        self.assertEqual(self.h.sorted(), 1)

    def test_violation_deeper(self):
        self.h.heap = [10, 9, 8, 7, 6, 5, 99]  # 99 > parent 8 at index 6
        self.assertEqual(self.h.sorted(), 6)


class TestHeight(unittest.TestCase):
    """height() returns floor(log2(n)) for n nodes, -1 for empty."""

    def setUp(self):
        self.h = Heap()

    def test_empty_heap(self):
        self.assertEqual(self.h.height(), -1)

    def test_single_node(self):
        self.h.heap = [1]
        self.assertEqual(self.h.height(), 0)

    def test_two_levels(self):
        self.h.heap = [10, 9, 8]     # 3 nodes → height 1
        self.assertEqual(self.h.height(), 1)

    def test_three_levels_full(self):
        self.h.heap = [10, 9, 8, 7, 6, 5, 4]   # 7 nodes → height 2
        self.assertEqual(self.h.height(), 2)

    def test_three_levels_partial(self):
        self.h.heap = [10, 9, 8, 7, 6]          # 5 nodes → height 2
        self.assertEqual(self.h.height(), 2)

    def test_four_levels(self):
        self.h.heap = list(range(15, 0, -1))     # 15 nodes → height 3
        self.assertEqual(self.h.height(), 3)


class TestDelete(unittest.TestCase):
    """delete() removes and returns the maximum element."""

    def setUp(self):
        self.h = Heap()

    def test_delete_from_empty(self):
        self.assertIsNone(self.h.delete())

    def test_delete_single_element(self):
        self.h.heap = [42]
        self.assertEqual(self.h.delete(), 42)
        self.assertEqual(self.h.heap, [])

    def test_delete_returns_max(self):
        self.h.heap = [10, 9, 8, 7, 6, 5, 4]
        self.assertEqual(self.h.delete(), 10)

    def test_heap_valid_after_delete(self):
        self.h.heap = [10, 9, 8, 7, 6, 5, 4]
        self.h.delete()
        self.assertEqual(self.h.sorted(), -1)

    def test_repeated_deletes_give_sorted_order(self):
        values = [3, 1, 4, 1, 5, 9, 2, 6]
        self.h.create_heap(values)
        result = [self.h.delete() for _ in range(len(values))]
        self.assertEqual(result, sorted(values, reverse=True))

    def test_delete_two_element_heap(self):
        self.h.heap = [10, 5]
        self.assertEqual(self.h.delete(), 10)
        self.assertEqual(self.h.heap, [5])


class TestCreateHeap(unittest.TestCase):
    """create_heap() replaces existing contents and builds a valid max-heap."""

    def setUp(self):
        self.h = Heap()

    def test_create_from_empty_iterable(self):
        self.h.create_heap([])
        self.assertEqual(self.h.heap, [])

    def test_create_replaces_existing(self):
        self.h.heap = [99, 98, 97]
        self.h.create_heap([1, 2, 3])
        self.assertNotIn(99, self.h.heap)

    def test_create_produces_valid_max_heap(self):
        self.h.create_heap([3, 1, 4, 1, 5, 9, 2, 6])
        self.assertEqual(self.h.heap[0], 9)
        self.assertEqual(self.h.sorted(), -1)

    def test_create_from_tuple(self):
        self.h.create_heap((5, 3, 8, 1))
        self.assertEqual(self.h.heap[0], 8)
        self.assertEqual(self.h.sorted(), -1)

    def test_create_single_element(self):
        self.h.create_heap([7])
        self.assertEqual(self.h.heap, [7])


class TestRepr(unittest.TestCase):
    """__repr__ returns a human-readable string."""

    def setUp(self):
        self.h = Heap()

    def test_repr_empty(self):
        self.assertEqual(repr(self.h), "Heap([])")

    def test_repr_with_elements(self):
        self.h.heap = [10, 9, 8]
        self.assertEqual(repr(self.h), "Heap([10, 9, 8])")


class TestInit(unittest.TestCase):
    """__init__ creates an empty heap."""

    def test_initial_heap_is_empty(self):
        h = Heap()
        self.assertEqual(h.heap, [])


if __name__ == "__main__":
    unittest.main(verbosity=2)
