input metauml;
beginfig(1);


Class.Client("Scene")
    ()
    ();

    
Class.Component("Shape")
    ()
    ("+draw()",
     "+move()");


Class.LeafA("Line")
    ()
    ("+draw()",
     "+move()");


Class.LeafB("Circle")
    ()
    ("+draw()",
     "+move()");


Class.Composite("ShapeGroup")
    ()
    ("+draw()",
     "+move()",
     "+add(Shape)",
     "+remove(Shape)");



leftToRight(40)(Client, Component);
topToBottom(40)(Component, LeafB);
rightToLeft(20)(LeafB, LeafA);
leftToRight(20)(LeafB, Composite);


drawObject(Client);
drawObject(Component);
drawObject(LeafB);
drawObject(LeafA);
drawObject(Composite);


clink(associationUni)(Client, Component);
clink(inheritance)(LeafA, Component);
clink(inheritance)(LeafB, Component);
clink(inheritance)(Composite, Component);
link(aggregation)(pathStepX(Component.e, Composite.e, 140));


endfig;
end
