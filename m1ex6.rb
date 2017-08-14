# Group 1

# We create a new Proc object called my_proc and define a proc that takes
# one blog argument "thing"
#
# Calling #puts on my_proc returns nil.
# Calling my_proc.call without passing in an argument returns the string we
# defined in the proc, with the variable that should be filled out by
# the argument missing.
# calling my_proc and passing in the string "cat" prints the full string
# including "cat" to the screen.

# Group 2
# We create a lambda with the same format as the Proc above, and set it
# to the local variable my_lambda.
# We create a second lambda with slightly different syntax and set it to 
# the local variable my_second_lambda
# Calling #puts on my_lambda returns nil.
# Calling #puts on my_second_lambda returns nil
# Calling my_lambda and passing in the string 'dog' prints the string
# "This is a dog"
# Calling my_lambda without passing in an argument throws and ArgumentError
# Calling Lambda.new and attempting to set it to a local variable called
# my_third_lambda throws a NameError "uninitialized constant"

# Group 3
# We define a method that takes one parameter and yields to a block.
# Calling the method and not asking yield to pass any argument to the 
# block results in the string being printed without the variable.
#
# Calling the method block_method_1 without a block results in a LocalJumpError.

# Group 4
# We define a method block_method_2 that takes 1 argument and yields to a block,
# passing in 1 argument. 
# Line 31 outputs "This is a turtle."
# Line 32 outputs "This is a turtle and a ." because the block is defined with two
# arguments, but we are yielding only one, so the second argument is 
# undefined/nil.
# Line 35 throws a NameError because there is no local variable, method,
# or argument being passed as "animal".

# Observations:
# Lambdas are like procs, except you can't call Lambda#new because they are just instances
# of class Proc. Both procs and lambdas are essentially blocks that can be saved
# and then executed as a chunk with an argument passed in. Blocks however are
# written at runtime to go with a method that will yield to them. Procs and lambdas are good
# for having reusable blocks to use, whereas blocks are good for use with reusable methods.