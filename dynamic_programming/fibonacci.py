import time

# fibonacci og - unoptimized approach
def fibonacci(n):
    if n <= 1:
        return n
    return fibonacci(n-2) + fibonacci(n-1)


# Memoized fibonacci
def mem_fib(n):
    memoization_arr = [-1] * (n + 1)
    memoization_arr[0] = 0
    memoization_arr[1] = 1
    return mem_fib_helper(n, memoization_arr)
    

def mem_fib_helper(n, r):
    if r[n] != -1:
        return r[n]
    r[n - 2] = mem_fib_helper(n - 2, r)
    r[n - 1] = mem_fib_helper(n - 1, r)
    return r[n-2] + r[n - 1]
   
# Bottom-up fibonacci
def bottomUp_fib(n):
    if n <= 1:
        return n
    arr = [0] * (n + 1)
    arr[0] = 0
    arr[1] = 1
    for i in range(2, n + 1):
        arr[i] = arr[i-2] + arr[i-1]
    
    return arr[n]
     
# "to get to the 9th, reusing steps of first 8"
start = time.perf_counter()
print(f"Regular fib: {fibonacci(9)}")
end = time.perf_counter()
reg_fib = start - end
print(f"Time taken for regular fib: {reg_fib:0.8f}")
start = time.perf_counter()
print(f"Recursive memoization fib: {mem_fib(9)}")
end = time.perf_counter()
memo_fib = start - end
print(f"Time taken for recursive memoization fib: {memo_fib:0.8f}")
print(f"Recursive memoization is {reg_fib/memo_fib} times faster than regular fib")
start = time.perf_counter()
print(f"Iterative memoization fib: {bottomUp_fib(9)}")
end = time.perf_counter()
iter_memo_fib = start - end
print(f"Time taken for recursive memoization fib: {iter_memo_fib:0.8f}")
print(f"Iterative memoization is {reg_fib/iter_memo_fib} times faster than regular fib")
print(f"Iterative memoization is {memo_fib/iter_memo_fib} times faster than recursive memoization fib")


    