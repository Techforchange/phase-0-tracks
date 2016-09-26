 #Method that when calling number gives you its index


			

def array_placement(array, int)

  index = 0
  while index < array.length
  	return index
  else
  	nil
  end
  index += 1
end
end


array = [1,4,1,7,5]

array_placement(array, 7)
		
#Method that displays the sum of a certain fibonacci number

def fib(num)
    arr_fib = [0]
    x = 0
    y = 1
    before_x = nil
        (num -1).times do ||
            before_x = x 
            x = y
            y = before_x + y
            puts x
            arr_fib.push(x)
        end
    puts arr_fib
end

fib(6)

#Sort an array
def bubble_sort(array)
    x = 0
     while x < array.length
         i = x +1
         while i < array.length
             if array[i]< array[x]
                 sorting = array[x]
                 array[x] = array [i]
                 array[i] = sorting
             end
             i += 1
         end
     x += 1
    end
    p array
end
arr = [3,1,2]
bubble_sort(arr)

#1.)You start the your index of zero and you go through the array swapping the first index with the one next to it
#after that you keep doing that until youve reached the end and starts over until the numbers are in the correct indexes. It takes a while because it compares two at a time to put them in the correct order
#2.)we looked up a a small video that showed how bubble sorting works and it helped us more  conceptutially due to it being more of a visual thing to see. But googling helped us understand it

#3.)tackling this problem seems scary and hard when it comes to the code . its fun to see what we can do with it but there are alot of things we are going to have to google and thats terrifyinh but exciting. Leaning new things is fun. It may be scary but it wont affect us if we dont let it
#4.)psuedo code
#first start by taking in an array of ints
#second start off with an index of zero 
#then creat a loop for the method to run through the whole array
#then reorder numbers and you get your new array 
#then the last is writng an actual method