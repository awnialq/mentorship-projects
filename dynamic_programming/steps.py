# Steps
# A child is running up a staircase with n steps and can hop either 1 step, 2 steps, 
# or 3 steps at a time. Implement a method to count how many 
# possible ways the child can run up the stairs.

# basic recursive method
def steps(n):
    if n <= 0:
        return 0
    if n == 1:
        return 1
    elif n == 2:
        return 2
    elif n == 3:
        return 4
    return (steps(n-1) + steps(n-2) + steps(n-3))

print(steps(4))


# Steps (Dynamic, Memoized)
def memoized_steps(n):
    memoized = [-1] * (n + 1)
    memoized[0] = 0
    memoized[1] = 1
    memoized[2] = 2
    memoized[3] = 4
    return memoized_steps_helper(n, memoized)
    


# helper function
def memoized_steps_helper(n, r):
    if r[n] != -1:
        return r[n]
    r[n] = memoized_steps_helper(n-1, r) + memoized_steps_helper(n-2, r) + memoized_steps_helper(n-3, r)
    return r[n]

print(memoized_steps(4))


# Steps (Dynamic, Bottom Up)
def bottom_up_steps(n):
    memoized = [0] * (n + 1)
    memoized[0] = 0
    memoized[1] = 1
    memoized[2] = 2
    memoized[3] = 4
    for i in range(4, n + 1):
        memoized[i] = memoized[i-1] + memoized[i-2] + memoized[i-3]
    return memoized[n]

print (bottom_up_steps(4))