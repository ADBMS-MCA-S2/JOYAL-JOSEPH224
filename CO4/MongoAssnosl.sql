use college2
db.createCollection("studlist")
db.studlist.insert({name:{fname:"Thara",lname:"palis"},rolno:20,dept:"civil",mark:92,grade:"A+",loc:"trissur",contact:932334242,gender:"female"});
WriteResult({ "nInserted" : 1 })
 db.studlist.insert({name:{fname:"marp",lname:"terpan"},rolno:17,dept:"mech",mark:76,grade:"C",loc:"Ernakulam",contact:932334242,gender:"male"});
WriteResult({ "nInserted" : 1 })
 db.studlist.insert({name:{fname:"werner",lname:"sali"},rolno:11,dept:"mca",mark:84,grade:"A",loc:"kochi",contact:932333242,gender:"male"});
WriteResult({ "nInserted" : 1 })
 db.studlist.insert({name:{fname:"martin",lname:"luthor"},rolno:13,dept:"mca",mark:94,grade:"A+",loc:"kollam",contact:932439242,gender:"male"});
WriteResult({ "nInserted" : 1 })
 db.studlist.insert({name:{fname:"partha",lname:"sarthi"},rolno:18,dept:"mech",mark:94,grade:"A",loc:"kollam",contact:944705321,gender:"female"});
WriteResult({ "nInserted" : 1 })
 db.studlist.insert({name:{fname:"guruppa",lname:"maliya"},rolno:10,dept:"civil",mark:88,grade:"B+",loc:"palakad",contact:944788781,gender:"male"});
WriteResult({ "nInserted" : 1 })



db.studlist.find({dept:"mca",gender:"female"},{name:1,mark:1,_id:0}).pretty();
{ "name" : { "fname" : "priya", "lname" : "yira" }, "mark" : 90 }


 db.studlist.aggregate([{$group:{_id:0,"max_mark":{$max:"$mark"}}}])
{ "_id" : 0, "max_mark" : 94 }

db.studlist.find({gender:"male",grade:"A+"},{name:1,_id:0}).pretty();
{ "name" : { "fname" : "martin", "lname" : "luthor" } }



 db.studlist.find({dept:"mech"},{name:1,_id:0}).sort({mark:-1}).limit(3)
{ "name" : { "fname" : "partha", "lname" : "sarthi" } }
{ "name" : { "fname" : "jane", "lname" : "dine" } }
{ "name" : { "fname" : "marp", "lname" : "terpan" } }
