college  0.000GB
config   0.000GB
local    0.000GB
> use Employee
switched to db Employee
> db.createCollection('emp_details');
{ "ok" : 1 }
> db.emp_details.insert({empid:102,empname:"martin",dept:"backend",desn:"developer",sal:20000,yoj:2011,addr:{dno:100,street:"pinestreet",loc:"Beetown",city:"Crocity"}});
WriteResult({ "nInserted" : 1 })
> db.emp_details.insert({empid:106,empname:"rahul",dept:"ui dept",desn:"ui designer",sal:24000,yoj:2014,addr:{dno:103,street:"marketroad",loc:"kadappakada",city:"Kollam"}});
WriteResult({ "nInserted" : 1 })
> db.emp_details.insert({empid:104,empname:"Saliha",dept:"frotend",desn:"developer",sal:21200,yoj:2014,addr:{dno:108,street:"divestreet",loc:"Parippally",city:"Kollam"}});
WriteResult({ "nInserted" : 1 })
> db.emp_details.insert({empid:105,empname:"remya",dept:"backend",desn:"tester",sal:24000,yoj:2009,addr:{dno:100,street:"barkroad",loc:"Marad",city:"Kochi"}});
WriteResult({ "nInserted" : 1 })
>
