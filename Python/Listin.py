#python List

"""There are four collection data types in the Python programming language:

List is a collection which is ordered and changeable. Allows duplicate members.
Tuple is a collection which is ordered and unchangeable. Allows duplicate members.
Set is a collection which is unordered and unindexed. No duplicate members.
Dictionary is a collection which is unordered, changeable and indexed. No duplicate members."""



 #In Python lists are written with square brackets,A list is a collection which is ordered and changeable
Countries=['Amsterdam','Berlin','Czech']
print(Countries)


#changing the item in the list(also allow duplicate)

Countries=['Amsterdam','Berlin','Czech']
Countries[2]='America'
print(Countries)



#The list() Constructor
"""It is also possible to use the list() constructor to make a list.
To add an item to the list use append() object method.
To remove a specific item use the remove() object method.
The len() function returns the length of the list."""

#using constructor with in double round-brackets

Countries=[('Amsterdam','Berlin','Czech')]
print(Countries)


####replacing of values using array pointer
Countries=['Amsterdam','Berlin','Czech']
Countries[1]= "Germany"
print(Countries)


#append ()using constructor
Countries=list(("Amsterdam","Berlin","Czech"))
Countries.append("India")
print(Countries)


Countries=list(("Amsterdam","Berlin","Czech"))
Countries.remove("Amsterdam")
print(Countries)

####append,insert,remove,sort using constructor(The insert() method inserts the specified value at the specified position.) eg list.insert(pos, elmnt)
Countries=list(("Amsterdam","Berlin","Czech"))
Countries.remove("Amsterdam"),Countries.insert(0,"India"),Countries.append('Singapore'),Countries.sort(reverse=True)
print(Countries)




