//write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
var names = ["arlene", "martin", "angelica", "christina"];
//every element in the string get its length
function longestword(array){
	var x = [];
	for (var i = 0; i < names.length; i++){
		x.push(names[i].length);
	}
	//console.log(x); 
	console.log(x);
}

longestword(names);
//Get each element within the string by its index using a conditional statement(similar to each method in ruby)
//Set a variable equal to that element
//Find the length of each string by x.length
//input: array output: longest element in the array
//Driver code that tests a few arrays