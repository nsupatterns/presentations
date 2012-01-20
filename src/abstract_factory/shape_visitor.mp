input metauml;
beginfig(1);


Class.Visitor("ShapeVisitor")
    ()
    ("+visitLine()",
     "+visitRectangle()",
     "+visitCircle()");
     
     
     
Class.VisitorA("SelectPointsCollector")
    ()
    ("+visitLine()",
     "+visitRectangle()",
     "+visitCircle()");
     
     
Class.VisitorB("ConnectPointsCollector")
    ()
    ("+visitLine()",
     "+visitRectangle()",
     "+visitCircle()");



Class.Object("Shape")
    ()
    ("+visit(ShapeVisitor)");
    
    
Class.ObjectA("Line")
    ()
    ("+visit(ShapeVisitor)");
    
    
Class.ObjectB("Rectangle")
    ()
    ("+visit(ShapeVisitor)");
    
    
Class.ObjectC("Circle")
    ()
    ("+visit(ShapeVisitor)");
    


topToBottom(10)(Visitor, VisitorB);
rightToLeft(20)(VisitorB, VisitorA);

topToBottom(10)(VisitorB, Object);
topToBottom(10)(Object, ObjectB);
rightToLeft(10)(ObjectB, ObjectA);
leftToRight(10)(ObjectB, ObjectC);


drawObject(Visitor);
drawObject(VisitorB);
drawObject(VisitorA);
drawObject(Object);
drawObject(ObjectB);
drawObject(ObjectA);
drawObject(ObjectC);


clink(inheritance)(VisitorA, Visitor);
clink(inheritance)(VisitorB, Visitor);
clink(inheritance)(ObjectA, Object);
clink(inheritance)(ObjectB, Object);
clink(inheritance)(ObjectC, Object);



endfig;
end
