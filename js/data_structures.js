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
	console.log("Our new car:");

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

//Driver code
console.log("Let's make a new car!");
var newcar = new Car(1999,"red",false);
console.log("This newcar has a year:");
console.log(newcar.year);
console.log("Is this a hybrid?:");
console.log(newcar.isHybrid)
console.log("This newcar has a gorgeous color of:");
console.log(newcar.color);
newcar.repair();
console.log("-----")
console.log("Let's make a new car!");
var lexus = new Car(2014,"black",true);
console.log("This newcar has a year:");
console.log(lexus.year);
console.log("Is this a hybrid?:");
console.log(lexus.isHybrid)
console.log("This newcar has a gorgeous color of:");
console.log(lexus.color);
lexus.repair();
console.log("-----")
console.log("Let's make a new car!");
var car3 = new Car(2000,"white",true);
console.log("This newcar has a year:");
console.log(car3.year);
console.log("Is this a hybrid?:");
console.log(car3.isHybrid)
console.log("This newcar has a gorgeous color of:");
console.log(car3.color);
car3.repair();
console.log("-----")



	
