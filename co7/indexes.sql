> use School
switched to db School
> db.createCollection("register")
{ "ok" : 1 }
> db.register.insert({name:"joyal",regno:121,mark:{maths:87,english:87,computer:99}})
WriteResult({ "nInserted" : 1 })
> db.register.find().pretty();
{
        "_id" : ObjectId("62a06b8b6e2fc1288e065ad6"),
        "name" : "joyal",
        "regno" : 121,
        "mark" : {
                "maths" : 87,
                "english" : 87,
                "computer" : 99
        }
}
> db.register.insert({name:"joyal",regno:121,mark:[maths:87,english:87,computer:99]})
> db.register.insert({name:"joyal",regno:121,mark:[{maths:87,english:87,computer:99}]})
WriteResult({ "nInserted" : 1 })
> db.register.find().pretty();

{
        "_id" : ObjectId("62a06c766e2fc1288e065ad7"),
        "name" : "joyal",
        "regno" : 121,
        "mark" : [
                {
                        "maths" : 87,
                        "english" : 87,
                        "computer" : 99
                }
        ]
}

> db.register.insert({name:"marthandan",regno:102,mark:[{maths:54,english:67,computer:95}]})
WriteResult({ "nInserted" : 1 })
> db.register.insert({name:"alex",regno:103,mark:[{maths:54,english:67,computer:95}]})
WriteResult({ "nInserted" : 1 })
> db.register.getIndexes()
[ { "v" : 2, "key" : { "_id" : 1 }, "name" : "_id_" } ]
> db.register.insert({name:"karthi",regno:123,mark:[{maths:67,english:78,computer:46}]})
WriteResult({ "nInserted" : 1 })
> db.register.craeteIndex(regno:1)

> db.register.createIndex(regno:1)

> db.register.createIndex(r{egno:1})

> db.register.createIndex({regno:1})
{
        "numIndexesBefore" : 1,
        "numIndexesAfter" : 2,
        "createdCollectionAutomatically" : false,
        "ok" : 1
}


> db.register.getIndexes()
[
        {
                "v" : 2,
                "key" : {
                        "_id" : 1
                },
                "name" : "_id_"
        },
        {
                "v" : 2,
                "key" : {
                        "regno" : 1
                },
                "name" : "regno_1"
        }
]
>

SINGLE FIELD INDEX


 db.register.createIndex({regno:1})
{
        "numIndexesBefore" : 1,
        "numIndexesAfter" : 2,
        "createdCollectionAutomatically" : false,
        "ok" : 1
}

> db.register.getIndexes()
[
        {
                "v" : 2,
                "key" : {
                        "_id" : 1
                },
                "name" : "_id_"
        },
        {
                "v" : 2,
                "key" : {
                        "regno" : 1
                },
                "name" : "regno_1"
        }
]
> db.dropIndex({regno:1})

> db.register.dropIndex({regno:1})
{ "nIndexesWas" : 2, "ok" : 1 }
> db.register.getIndexes()
[ { "v" : 2, "key" : { "_id" : 1 }, "name" : "_id_" } ]


COMPOUND INDEX

 db.register.createIndex({regno:1,name:1})
{
        "numIndexesBefore" : 1,
        "numIndexesAfter" : 2,
        "createdCollectionAutomatically" : false,
        "ok" : 1
}
> db.register.getIndexes()
[
        {
                "v" : 2,
                "key" : {
                        "_id" : 1
                },
                "name" : "_id_"
        },
        {
                "v" : 2,
                "key" : {
                        "regno" : 1,
                        "name" : 1
                },
                "name" : "regno_1_name_1"
        }
]



MULTIKEY INDEXES


db.register.createIndex({"mark.maths":1})
{
        "numIndexesBefore" : 2,
        "numIndexesAfter" : 3,
        "createdCollectionAutomatically" : false,
        "ok" : 1
}
> db.register.createIndex({"mark.english":1})
{
        "numIndexesBefore" : 3,
        "numIndexesAfter" : 4,
        "createdCollectionAutomatically" : false,
        "ok" : 1
}
> db.register.getIndexes()
[
        {
                "v" : 2,
                "key" : {
                        "_id" : 1
                },
                "name" : "_id_"
        },
        {
                "v" : 2,
                "key" : {
                        "regno" : 1,
                        "name" : 1
                },
                "name" : "regno_1_name_1"
        },
        {
                "v" : 2,
                "key" : {
                        "mark.maths" : 1
                },
                "name" : "mark.maths_1"
        },
        {
                "v" : 2,
                "key" : {
                        "mark.english" : 1
                },
                "name" : "mark.english_1"
        }
]



TEXT INDEXES

