//write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
var names = ["arlene", "martin", "angelica", "christina"];
//every element in the string get its length
function longestword(array){
	var longest = "";

	for (var i = 0; i < array.length; i++){
		if (array[i].length > longest.length) {
			longest = array[i];
		}
		else if (array[i].length < longest.length){
		 longest = longest;
		}
		else (array[i].length = longest.length);{
			longest = longest + array[i];
		}
	}
	console.log(longest);
}

//var x = ["ha", "lo", "lol"];
console.log(longestword("ha", "lo", "lol"));
//Get each element within the string by its index using a conditional statement(similar to each method in ruby)
//Set a variable equal to that element
//Find the length of each string by x.length
//input: array output: longest element in the array
//Driver code that tests a few arrays