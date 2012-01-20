input metauml;
beginfig(1);


Class.Client("Client")
    ()
    ();

    
Class.Component("Component")
    ()
    ("+operation1()",
     "+operation2()");


Class.LeafA("Leaf1")
    ()
    ("+operation1()",
     "+operation2()");


Class.LeafB("Leaf2")
    ()
    ("+operation1()",
     "+operation2()");


Class.Composite("Composite")
    ()
    ("+operation1()",
     "+operation2()",
     "+add(Component)",
     "+remove(Component)");



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
