#Design a nested data structure representing a school full of classrooms and furniture in each classroom 

school = {
	library: ["bookshelf", "tables"],
	cafeteria: {"kitchen" => ["sink", "cupboard", "food"],
			   "dining tables" => ["clean plates"],
			   "chairs" => [100]},
	math_class: ["student desks", "student tables", "ruler", "clock"],
	science_class: ["science lab", "chairs"],
	english_class: ["bookshelf", "tables", "chairs", "books"],
	pe_class: ["basketball court", "basketball" ],
	office: ["principal's desk"]

}

p school

p school[:math_class].last

p school[:cafeteria].first

p school[:office][0]
