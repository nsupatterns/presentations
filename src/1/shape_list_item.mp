input metauml;
beginfig(1);

Instance.ItemA("i1: ShapeListItem")
               ("prev = ...", "next = item2", "shape = shape1");
Instance.ItemB("i2: ShapeListItem")
               ("prev = item1", "next = item2", "shape = shape2");
Instance.ItemC("i3: ShapeListItem")
               ("prev = item2", "next = ..", "shape = shape3");
leftToRight(25)(ItemA, ItemB, ItemC);


Instance.ShapeA("shape1: Shape")();
Instance.ShapeB("shape2: Shape")();
Instance.ShapeC("shape3: Shape")();

topToBottom(40)(ItemA, ShapeA);
topToBottom(40)(ItemB, ShapeB);
topToBottom(40)(ItemC, ShapeC);

drawObject(ItemA);
drawObject(ItemB);
drawObject(ItemC);

drawObject(ShapeA);
drawObject(ShapeB);
drawObject(ShapeC);


link(associationUni)(ItemA.attributeStack.pict[0].w -- ItemA.sw + (-20, +27));
link(associationUni)(ItemA.attributeStack.pict[1].e -- ItemB.sw + (0, +17));

link(associationUni)(ItemB.attributeStack.pict[0].w -- ItemA.se + (0, +27));
link(associationUni)(ItemB.attributeStack.pict[1].e -- ItemC.sw + (0, +17));

link(associationUni)(ItemC.attributeStack.pict[0].w -- ItemB.se + (0, +27));
link(associationUni)(ItemC.attributeStack.pict[1].e -- ItemC.se + (+20, +17));

link(associationUni)(ItemA.attributeStack.pict[2].s -- ShapeA.n);
link(associationUni)(ItemB.attributeStack.pict[2].s -- ShapeB.n);
link(associationUni)(ItemC.attributeStack.pict[2].s -- ShapeC.n);

endfig;
end
