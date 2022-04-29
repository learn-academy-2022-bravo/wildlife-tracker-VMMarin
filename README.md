# README

Story: As a developer I can create an animal model in the database. An animal has the following information: common name, latin name, kingdom (mammal, insect, etc.).

   - rails g resource Wildlife common_name:string latin_name:string kingdom:string -


Story: As the consumer of the API I can see all the animals in the database.
Hint: Make a few animals using Rails Console

1.
     Wildlife.create(common_name:'Cheetah', latin_name:'Acinonyx jubatus
    ', kingdom:'Mammalia')

    <Wildlife:0x0000000137e5db60
     id: 1,
    common_name: "Cheetah",
    latin_name: "Acinonyx jubatus",
    kingdom: "Mammalia",

 2.    

    Wildlife.create(common_name:'Gaboon Viper', latin_name:'Bitis gabon
    ica', kingdom:'Reptilia')

    #<Wildlife:0x000000014084eb08                                   
    id: 2,                                                         
    common_name: "Gaboon Viper",                                   
    latin_name: "Bitis gabonica",                                  
    kingdom: "Reptilia",    

 3.

    Wildlife.create(common_name:'Red Panda', latin_name:'Ailurus fulgen
    s', kingdom:'Mammalia')  

    #<Wildlife:0x00000001409275c0                                   
     id: 3,                                                         
    common_name: "Red Panda",                                      
    latin_name: "Ailurus fulgens",                                 
     kingdom: "Mammalia", 

 4.
     Wildlife.create(common_name:'Axolotl', latin_name:'Ambystoma mexica
    num', kingdom:'Amphibia') 

    #<Wildlife:0x000000014416efc8                                   
    id: 4,                                                         
    common_name: "Axolotl",                                        
    latin_name: "Ambystoma mexicanum",                             
    kingdom: "Amphibia",  





Story: As the consumer of the API I can update an animal in the database.



Story: As the consumer of the API I can destroy an animal in the database.

Story: As the consumer of the API I can create a new animal in the database.

{ 
    "common_name": "Polophemus moth",
    "latin_name":"Antheraea polyphemus" ,
    "kingdom":"Insecta"
}

{"id":5,"common_name":"Polophemus moth","latin_name":"Antheraea polyphemus","kingdom":"Insecta","created_at":"2022-04-29T19:24:39.753Z","updated_at":"2022-04-29T19:24:39.753Z"}

Story: As the consumer of the API I can create a sighting of an animal with date (use the datetime datatype), a latitude, and a longitude.
Hint: An animal has_many sightings. (rails g resource Sighting animal_id:integer ...)
Hint: Datetime is written in Rails as “year-month-day hr:min:sec" (“2022-01-28 05:40:30")