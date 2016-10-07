//write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
//You need to create an empty string to store the "longest word" and have something to compare each index length to
//For every element in the string, you need its length
//Compare the first element with the empty string to overwrite it
//Continue comparing each additional element with the stored string
/*function longestword(array){
	var longest = [];

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
*/	
//write a function that takes two objects 

function keymatch (array){


  if (array[0].key == array[1].key){
			console.log("true");
	}
	else if (array[0].value == array[1].value) {
		console.log("true");
	}
	else {
		console.log("false");
	} 
}

function RandomTest(int){
arr = [];
word = "hello"


x = Math.floor(Math.random() * 10) + 1
console.log(x)
	var RandomLetters = [];
for (var i = 0; i < x; i++){

	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	RandomLetters.push(alphabet[Math.floor(Math.random() * 26) + 1]);
	
}
RandomLetters.join("");



//var example = [{name: "Steven", age: 6},{name: "Mark", age: 54}];

//keymatch(example);


//array[x] = y == array2[x] = y
//Create an empty array to push the two hashes
//If the two objects share at least one value => true	
//else false
//Call each index of the array, in this case each object by its key and value



//Checks to see if the objects share at least one key-value pair. 

//Driver code that tests a few arrays

/*longestword(["have", "lo", "lol"]);
longestword(["have", "lolololo", "lolcacwecqvfref3"]);
longestword(["holdde3df231", "lo", "lol"]);
longestword(["have", "lo", "hallelujah","lol", "kikss"]);
*/

