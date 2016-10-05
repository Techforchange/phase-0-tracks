//Declare an array of four colors 
var color = ["pink","purple","red","white"];
//Declare an array of four names
var names = ["Bob","Mike","David","Coco"];
//Add a code that adds another color to the colors array
color.push("black");
//Add a code that adds another name to the names array
names.push("George");
//create an empty array
horse = {};
// The keys of your object should be horse names, and the values should be colors.
for (var i = 0; i < color.length; i++){
	horse[names[i]] = color[i];
}
console.log(horse);

//Car function

function Car(year,color,isHybrid){
	console.log("Our new car:", this);

	this.year = year;
	this.color = color;
	this.isHybrid = isHybrid;

	this.repair = function() {
		if (this.year < 2000){
			console.log("Go get a repair!");} 
		else {
			console.log("No repair is needed!");
		}
	}
}
	
