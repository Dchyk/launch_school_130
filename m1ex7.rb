# Group 1

# Calling a proc executes the block of code saved in it. So because 
# "return" is executed, line 5 is never reached.

# Group 2

# Because the proc was declared in a scope when "return" doesn't make sense,
# we get an unexpected return error when trying to call this proc from 
# within a different scope. Cannot return from the top level of a program.

# Group 3
#
# THe lambda doesn't seem to return out of the method when called. 


# Group 4
#
# The lambda doesn't return out of the method, or throw any type of 
# unexpected return error, despite having been declared in a different 
# scope and then passed into the method

# Group 5
# 
# Yielding to a block that returns a "return" statement throws an unexpected
# return error. 