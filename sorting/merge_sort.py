"""
Implement Merge Sort
"""


# helper method for merge_sort
# performs the comparisons and reassignments on the original array
def merge(arr1, arr2):
    i, j, k = 0, 0, 0
    ret_arr = []
    total = len(arr1) + len(arr2)

    while k < total:
        if i >= len(arr1):
            ret_arr.append(arr2[j])
            j += 1
        elif j >= len(arr2):
            ret_arr.append(arr1[i])
            i += 1
        elif arr1[i] <= arr2[j]:
            ret_arr.append(arr1[i])
            i += 1
        else:
            ret_arr.append(arr2[j])
            j += 1
        k += 1

    return ret_arr


# n log(n) sorting algorithm that behaves like a binary tree in its
# recursive-based method of splitting and sorting
def merge_sort(arr):

    # The divide portion of the algorithm
    if len(arr) <= 1:
        return arr

    # split the array into two
    mid = len(arr) // 2
    left = merge_sort(arr[:mid])
    right = merge_sort(arr[mid:])

    # from here we can assume both left and right are sorted at this point
    return merge(left, right)


arr = [8, 2, 7, 6, 9, 3, 4, 1, 0, 5]
arr = merge_sort(arr)
print(arr)