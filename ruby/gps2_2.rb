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

# What did you learn about pseudocode from working on this challenge?
# What are the tradeoffs of using arrays and hashes for this challenge?
# What does a method return?
# What kind of things can you pass into methods as arguments?
# How can you pass information between methods?
# What concepts were solidified in this challenge, and what concepts are still confusing?

