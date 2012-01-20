input metauml;
beginfig(1);


Class.Visitor("Visitor")
    ()
    ("+visitObject1()",
     "+visitObject2()");
     
     
     
Class.VisitorA("Visitor1")
    ()
    ("+visitObject1()",
     "+visitObject2()");
     
     
Class.VisitorB("Visitor2")
    ()
    ("+visitObject1()",
     "+visitObject2()");
     
     
Class.VisitorC("Visitor3")
    ()
    ("+visitObject1()",
     "+visitObject2()");



Class.Object("Object")
    ()
    ("+visit(Visitor v)");
    
    
Class.ObjectA("Object1")
    ()
    ("+visit(Visitor v)");
    
    
Class.ObjectB("Object2")
    ()
    ("+visit(Visitor v)");
    

Note.DoVisit("v.visitObject2(this)");


topToBottom(20)(Visitor, VisitorB);
rightToLeft(20)(VisitorB, VisitorA);
leftToRight(20)(VisitorB, VisitorC);

topToBottom(20)(VisitorA, Object);
topToBottom(20)(Object, ObjectA);
leftToRight(30)(ObjectA, ObjectB);
leftToRight(20)(ObjectB, DoVisit);


drawObject(Visitor);
drawObject(VisitorB);
drawObject(VisitorA);
drawObject(VisitorC);
drawObject(Object);
drawObject(ObjectA);
drawObject(ObjectB);
drawObject(DoVisit);


clink(inheritance)(VisitorA, Visitor);
clink(inheritance)(VisitorB, Visitor);
clink(inheritance)(VisitorC, Visitor);
clink(inheritance)(ObjectA, Object);
clink(inheritance)(ObjectB, Object);
clink(dashedLink)(ObjectB, DoVisit);



endfig;
end
