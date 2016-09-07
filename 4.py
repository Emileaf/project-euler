# A palindromic number reads the same both ways. The largest palindrome
# made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

import itertools

def palindrome():
    alist = range(100, 1000)
    combs = list(itertools.combinations_with_replacement(alist, 2))
    combs.sort(key=lambda x: x[0] * x[1], reverse=True) 
    for a, b in combs:
        product = a * b
        if ispalindrome(product):
            return product

def ispalindrome(x):
    num = str(x)
    if num[::-1] == num:
        return True
    else:
        return False

print(palindrome())

# Answer: 906609
    




