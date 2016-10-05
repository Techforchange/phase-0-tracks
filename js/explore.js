//Takes a string as a parameter, set it equal to "hello"
//Set counter to start at the end of the string
//Have your counter be greater than -1, otherwise it won't print index of 0
//Have your counter go backwards which means it needs to decrease
// For each string, it should print the reverse of its letters

function reverse(word){
	var x = [];
	for (var i = 0; i <word.length; i ++){
		x = word[i] + x;
	}
	return x;
}
console.log(reverse("hello"));



