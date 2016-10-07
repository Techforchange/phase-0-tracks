//write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
//You need to create an empty string to store the "longest word" and have something to compare each index length to
//For every element in the string, you need its length
//Compare the first element with the empty string to overwrite it
//Continue comparing each additional element with the stored string
function longestword(array){
	var longest = "";

	for (var i = 0; i < array.length; i++){
		if (array[i].length > longest.length) {
			longest = array[i];
		}
		else if (array[i].length < longest.length){
		 longest = longest;
		}
		//else (array[i].length = longest.length);{
			//longest = longest + array[i];
		//}
	}
	console.log(longest);
}
//Driver code that tests a few arrays

longestword(["have", "lo", "lol"]);
longestword(["have", "lolololo", "lolcacwecqvfref3"]);
longestword(["holdde3df231", "lo", "lol"]);
longestword(["have", "lo", "hallelujah","lol", "kikss"]);

//write a function that takes two objects 

function keymatch (name, age){
	
}
//Checks to see if the objects share at least one key-value pair. 