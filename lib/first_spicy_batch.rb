require 'pry'
# The is_spicy_batch method is already defined for you and will be called when running tests.
# @param {Integer} batch
# @return {boolean} whether the batch is spicy
# def is_spicy_batch(batch):

# Input: integer
# Output: integer
#
# Edge cases:
#   - Can 0 be given?
#
# Given an integer that represents a number of batches, we want to iterate through each batch sequentially, from 1 to n
#   - At each batch, run the helper method, is_spicy_batch?
#     - if is_spicy_batch? returns true, return that batch (integer)
#   - If is_spicy_batch? never returns true, return nil
# n = 9999999, 3 is spicy
# is n / 2 spicy?
#   -false
#  (n - n / 2) + n / 2

#   create l,r,m vars

def first_spicy_batch(n)
  l = 1
  r = n
  m = (n / 2).floor
  binary_search(l, r, m)
end

def binary_search(l, r, m)
  # 1,2,3,4,5 target = 8
  # l=7 r= 8 m = 6
  if is_spicy_batch(m) # go left
    return m unless is_spicy_batch(m - 1)

    r = m
    m = (l + ((r - l) / 2).floor)
    return m if m == r

    binary_search(l, r, m)
  else # go right
    # binding.pry
    l = m + 1
    m = l + ((r - l) / 2).floor + 1
    return m if m == l

    binary_search(l, r, m)
  end
end

# counter = 1

# while counter <= n
#   return counter if is_spicy_batch(counter)

#   counter += 1
# end
