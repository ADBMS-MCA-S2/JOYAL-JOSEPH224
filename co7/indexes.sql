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
uncaught exception: SyntaxError: missing ] after element list :
@(shell):1:54
> db.register.insert({name:"joyal",regno:121,mark:[{maths:87,english:87,computer:99}]})
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
uncaught exception: SyntaxError: missing ) after argument list :
@(shell):1:29
> db.register.createIndex(regno:1)
uncaught exception: SyntaxError: missing ) after argument list :
@(shell):1:29
> db.register.createIndex(r{egno:1})
uncaught exception: SyntaxError: missing ) after argument list :
@(shell):1:25
> db.register.createIndex({regno:1})
{
        "numIndexesBefore" : 1,
        "numIndexesAfter" : 2,
        "createdCollectionAutomatically" : false,
        "ok" : 1
}
> db.register.getIndexes
function(filter) {
    var res = this.runCommand("listIndexes", filter);

    if (!res.ok) {
        if (res.code == ErrorCodes.NamespaceNotFound) {
            // For compatibility, return []
            return [];
        }

        throw _getErrorWithCode(res, "listIndexes failed: " + tojson(res));
    }

    return new DBCommandCursor(this._db, res).toArray();
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
