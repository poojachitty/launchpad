class Task:
    def __init__(self,taskname,tdesc,tstatus,tpriority,tnotes,tbm,townid,tcrid,crton,modon):
        self.taskname=taskname
        self.description=tdesc
        self.status=tstatus
        self.priority=tpriority
        self.notes=tnotes
        self.bookmark=tbm
        self.ownerid=townid
        self.creatorid=tcrid
        self.createdon=crton
        self.modifiedon=modon

    def changePriority(self,tpriority):
        a=input("set priority :")
        self.priority=a




t=Task("develop","develop the front end","progress","high","finish it fast","front",101,2002,"10-12-2022","10-12-2022")

print("priority is ",t.priority)
t.changePriority(t.priority)
print("priority is changed to ",t.priority)

