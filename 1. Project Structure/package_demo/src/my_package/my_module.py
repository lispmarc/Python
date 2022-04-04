#########################################################
# Example of a module within the package 
# Contains the functions, classes, variables of the 
# module
#########################################################

# Example function
def factorial(n):
    if n < 0:
        raise Exception("Negative numbers are not allowed")
    if n==0:
        return 1
    else:
        return n*factorial(n-1)
    
# Example variable
jabberwocky="""
    Twas brillig, and the slithy toves
      Did gyre and gimble in the wabe:
    All mimsy were the borogoves,
      And the mome raths outgrabe. 
"""