# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define the method
  # Write the items as strings
  # set default quantity
  # print the list to the console [puts]
# output: [hash]
def create_list(items)	
	new_list = items.split
	grocery_list = {}
	new_list.each do |item|
		grocery_list[item] = 1
	end
	puts grocery_list
	return grocery_list
	# list = {items => 1}
	#make a items for each word within the string
end
 
p create_list("carrots apples cereal pizza")


# Method to add an item to a list
# input: item name and optional quantity
# steps: 
# create a new list that calls previous list
# add item to the list
#print updated list
# output: updated list with added item

arlene_list = create_list("carrots apples cereal pizza")

def add_item (item, int, list)
		list[item] = int
		p list
end
p add_item("banana", 2, arlene_list)

# Method to remove an item from the list
def remove_item(item, list)
	#remove an item
	list.delete(item) 
	#print to console new list
	p list
end

p remove_item("cereal", arlene_list)


# Method to update the quantity of an item
# input: item, new quantity, list
# steps:
#call the list
#replace item and quantity
#print list to the console
# output: new list with updates

def update_list(item, int, list)
	new_item = item.to_s
	list[new_item] = int
	p list
end

update_list("banana", 4, arlene_list)

# Method to print a list and make it look pretty
# input:
# steps:
# output:


### What did you learn about pseudocode from working on this challenge? 
#How you must break the problem apart to fully grasp it. Pseucode helps with that.
### What are the tradeoffs of using arrays and hashes for this challenge?
#Arrays came in handy when you simply have a list but in this case, each item had a quantity so a hash was more useful.
###What does a method return?
#The values stored
### What kind of things can you pass into methods as arguments?
# Strings, Integers, Objects
### How can you pass information between methods?
#Assigning a variable in this case, to the returned values from another method and using that variable within your new method
### What concepts were solidified in this challenge, and what concepts are still confusing?
#The manner in which to break down the problem and how to use pseucode to answer it. I'm still struggling with syntax in terms of when to use {}. [], () and = vs =>


