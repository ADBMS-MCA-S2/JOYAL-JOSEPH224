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


 db.createCollection("comments")
{ "ok" : 1 }
> db.comments.insert({name:"joyal",post:"ceo"})
WriteResult({ "nInserted" : 1 })
> db.comments.insert({name:"harper",post:"hofman"})
WriteResult({ "nInserted" : 1 })
> db.comments.insert({name:"riya",post:"manger"})
WriteResult({ "nInserted" : 1 })
> db.comments.insert({name:"erling",post:"hr"})
WriteResult({ "nInserted" : 1 })
> db.comments.createIndex({post:"text"})
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
> db.comments.getIndexes()
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
                        "_fts" : "text",
                        "_ftsx" : 1
                },
                "name" : "post_text",
                "weights" : {
                        "post" : 1
                },
                "default_language" : "english",
                "language_override" : "language",
                "textIndexVersion" : 3
        }
]
> db.comments.find({$text:{$search:"\post"}})
> db.comments.find({$text:{$search:"\ceo\"}})
uncaught exception: SyntaxError: "" literal not terminated before end of script :
@(shell):1:43
> db.comments.find({$text:{$search:"\ceo"}})
{ "_id" : ObjectId("62a072a36e2fc1288e065adb"), "name" : "joyal", "post" : "ceo" }
> db.comments.find({$text:{$search:"\ceo"}},{_id:0})
{ "name" : "joyal", "post" : "ceo" }
> db.comments.find({$text:{$search:"\harper"}},{_id:0})
>
