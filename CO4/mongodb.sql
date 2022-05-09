> db.Student.find();
> db.Students.find();
> show databases;
Students  0.000GB
admin     0.000GB
college   0.000GB
config    0.000GB
local     0.000GB
> use college;
switched to db college



> db.Students.find();
{ "_id" : ObjectId("62789fb9a28d9b04e040f68e"), "srn" : "101", "sname" : "joyal", "degree" : "BCA", "sem" : "3", "cgpa" : "7.6" }
{ "_id" : ObjectId("6278a004a28d9b04e040f68f"), "srn" : "103", "sname" : "Peter", "degree" : "Btech", "sem" : "5", "cgpa" : "6.3" }
{ "_id" : ObjectId("6278a040a28d9b04e040f690"), "srn" : "102", "sname" : "Alaba", "degree" : "Bsc", "sem" : "5", "cgpa" : "8.3" }
{ "_id" : ObjectId("6278a080a28d9b04e040f691"), "srn" : "106", "sname" : "Daisy", "degree" : "Bsc", "sem" : "4", "cgpa" : "7.8" }
{ "_id" : ObjectId("6278a0eca28d9b04e040f692"), "srn" : "109", "sname" : "rahul", "degree" : "Btech", "sem" : "5", "cgpa" : "8.3" }
{ "_id" : ObjectId("6278a2a5e04a35e50319f0ae"), "srn" : "110", "sname" : "Aparna", "degree" : "BArch", "sem" : "4", "cgpa" : "7.3" }
{ "_id" : ObjectId("6278a302e04a35e50319f0af"), "srn" : "111", "sname" : "Ayisha", "degree" : "Bsc", "sem" : "6", "cgpa" : "8.4" }
> db.Students.insert({srn:"104",sname:"Quagmire",degree:"BArch",sem:"6",cgpa:"6.9"});
WriteResult({ "nInserted" : 1 })
> db.Students.find().pretty();
{
        "_id" : ObjectId("62789fb9a28d9b04e040f68e"),
        "srn" : "101",
        "sname" : "joyal",
        "degree" : "BCA",
        "sem" : "3",
        "cgpa" : "7.6"
}
{
        "_id" : ObjectId("6278a004a28d9b04e040f68f"),
        "srn" : "103",
        "sname" : "Peter",
        "degree" : "Btech",
        "sem" : "5",
        "cgpa" : "6.3"
}
{
        "_id" : ObjectId("6278a040a28d9b04e040f690"),
        "srn" : "102",
        "sname" : "Alaba",
        "degree" : "Bsc",
        "sem" : "5",
        "cgpa" : "8.3"
}
{
        "_id" : ObjectId("6278a080a28d9b04e040f691"),
        "srn" : "106",
        "sname" : "Daisy",
        "degree" : "Bsc",
        "sem" : "4",
        "cgpa" : "7.8"
}
{
        "_id" : ObjectId("6278a0eca28d9b04e040f692"),
        "srn" : "109",
        "sname" : "rahul",
        "degree" : "Btech",
        "sem" : "5",
        "cgpa" : "8.3"
}
{
        "_id" : ObjectId("6278a2a5e04a35e50319f0ae"),
        "srn" : "110",
        "sname" : "Aparna",
        "degree" : "BArch",
        "sem" : "4",
        "cgpa" : "7.3"
}
{
        "_id" : ObjectId("6278a302e04a35e50319f0af"),
        "srn" : "111",
        "sname" : "Ayisha",
        "degree" : "Bsc",
        "sem" : "6",
        "cgpa" : "8.4"
}
{
        "_id" : ObjectId("6278a348e04a35e50319f0b0"),
        "srn" : "104",
        "sname" : "Quagmire",
        "degree" : "BArch",
        "sem" : "6",
        "cgpa" : "6.9"
}



> db.Students.find({degree:"BCA"});
{ "_id" : ObjectId("62789fb9a28d9b04e040f68e"), "srn" : "101", "sname" : "joyal", "degree" : "BCA", "sem" : "3", "cgpa" : "7.6" }
{ "_id" : ObjectId("6278a430e04a35e50319f0b1"), "srn" : "112", "sname" : "Patrick", "degree" : "BCA", "sem" : "6", "cgpa" : "6.2" }



> db.Students.find().sort({sname:1});
{ "_id" : ObjectId("6278a040a28d9b04e040f690"), "srn" : "102", "sname" : "Alaba", "degree" : "Bsc", "sem" : "5", "cgpa" : "8.3" }
{ "_id" : ObjectId("6278a2a5e04a35e50319f0ae"), "srn" : "110", "sname" : "Aparna", "degree" : "BArch", "sem" : "4", "cgpa" : "7.3" }
{ "_id" : ObjectId("6278a302e04a35e50319f0af"), "srn" : "111", "sname" : "Ayisha", "degree" : "Bsc", "sem" : "6", "cgpa" : "8.4" }
{ "_id" : ObjectId("6278a080a28d9b04e040f691"), "srn" : "106", "sname" : "Daisy", "degree" : "Bsc", "sem" : "4", "cgpa" : "7.8" }
{ "_id" : ObjectId("6278a430e04a35e50319f0b1"), "srn" : "112", "sname" : "Patrick", "degree" : "BCA", "sem" : "6", "cgpa" : "6.2" }
{ "_id" : ObjectId("6278a004a28d9b04e040f68f"), "srn" : "103", "sname" : "Peter", "degree" : "Btech", "sem" : "5", "cgpa" : "6.3" }
{ "_id" : ObjectId("6278a348e04a35e50319f0b0"), "srn" : "104", "sname" : "Quagmire", "degree" : "BArch", "sem" : "6", "cgpa" : "6.9" }
{ "_id" : ObjectId("62789fb9a28d9b04e040f68e"), "srn" : "101", "sname" : "joyal", "degree" : "BCA", "sem" : "3", "cgpa" : "7.6" }
{ "_id" : ObjectId("6278a0eca28d9b04e040f692"), "srn" : "109", "sname" : "rahul", "degree" : "Btech", "sem" : "5", "cgpa" : "8.3" }



> db.Students.find().limit(5);
{ "_id" : ObjectId("62789fb9a28d9b04e040f68e"), "srn" : "101", "sname" : "joyal", "degree" : "BCA", "sem" : "3", "cgpa" : "7.6" }
{ "_id" : ObjectId("6278a004a28d9b04e040f68f"), "srn" : "103", "sname" : "Peter", "degree" : "Btech", "sem" : "5", "cgpa" : "6.3" }
{ "_id" : ObjectId("6278a040a28d9b04e040f690"), "srn" : "102", "sname" : "Alaba", "degree" : "Bsc", "sem" : "5", "cgpa" : "8.3" }
{ "_id" : ObjectId("6278a080a28d9b04e040f691"), "srn" : "106", "sname" : "Daisy", "degree" : "Bsc", "sem" : "4", "cgpa" : "7.8" }
{ "_id" : ObjectId("6278a0eca28d9b04e040f692"), "srn" : "109", "sname" : "rahul", "degree" : "Btech", "sem" : "5", "cgpa" : "8.3" }



> db.Students.find().sort({cgpa:-1}).skip(4).limit(3);
{ "_id" : ObjectId("62789fb9a28d9b04e040f68e"), "srn" : "101", "sname" : "joyal", "degree" : "BCA", "sem" : "3", "cgpa" : "7.6" }
{ "_id" : ObjectId("6278a2a5e04a35e50319f0ae"), "srn" : "110", "sname" : "Aparna", "degree" : "BArch", "sem" : "4", "cgpa" : "7.3" }
{ "_id" : ObjectId("6278a348e04a35e50319f0b0"), "srn" : "104", "sname" : "Quagmire", "degree" : "BArch", "sem" : "6", "cgpa" : "6.9" }



> db.Students.find({sname:"rahul"},{sname:1,degree:1});
{ "_id" : ObjectId("6278a0eca28d9b04e040f692"), "sname" : "rahul", "degree" : "Btech" }



> db.Students.find().skip(4).limit(3);
{ "_id" : ObjectId("6278a0eca28d9b04e040f692"), "srn" : "109", "sname" : "rahul", "degree" : "Btech", "sem" : "5", "cgpa" : "8.3" }
{ "_id" : ObjectId("6278a2a5e04a35e50319f0ae"), "srn" : "110", "sname" : "Aparna", "degree" : "BArch", "sem" : "4", "cgpa" : "7.3" }
{ "_id" : ObjectId("6278a302e04a35e50319f0af"), "srn" : "111", "sname" : "Ayisha", "degree" : "Bsc", "sem" : "6", "cgpa" : "8.4" }


> db.Students.find().count();
9
> db.Students.find({degree:"BCA"}).count();
2


> db.Students.distinct("sname");
[
        "Alaba",
        "Aparna",
        "Ayisha",
        "Daisy",
        "Patrick",
        "Peter",
        "Quagmire",
        "joyal",
        "rahul"
]
> db.Students.distinct("degree");
[ "BArch", "BCA", "Bsc", "Btech" ]
> db.Students.find({sem:"6"},{sname:1});
{ "_id" : ObjectId("6278a302e04a35e50319f0af"), "sname" : "Ayisha" }
{ "_id" : ObjectId("6278a348e04a35e50319f0b0"), "sname" : "Quagmire" }
{ "_id" : ObjectId("6278a430e04a35e50319f0b1"), "sname" : "Patrick" }
> db.Students.find({sem:"6",degree:"BCA"},{sname:1});
{ "_id" : ObjectId("6278a430e04a35e50319f0b1"), "sname" : "Patrick" }
>> db.Students.find({},{degree:1,_id:0});
{ "degree" : "BCA" }
{ "degree" : "Btech" }
{ "degree" : "Bsc" }
{ "degree" : "Bsc" }
{ "degree" : "Btech" }
{ "degree" : "BArch" }
{ "degree" : "Bsc" }
{ "degree" : "BArch" }
{ "degree" : "BCA" }
 db.Students.find({$and:[{degree:"BCA"},{cgpa:{$gt:"6"}},{cgpa:{$lt:"8"}}]})
{ "_id" : ObjectId("62789fb9a28d9b04e040f68e"), "srn" : "101", "sname" : "joyal", "degree" : "BCA", "sem" : "3", "cgpa" : "7.6" }
{ "_id" : ObjectId("6278a430e04a35e50319f0b1"), "srn" : "112", "sname" : "Patrick", "degree" : "BCA", "sem" : "6", "cgpa" : "6.2" }
