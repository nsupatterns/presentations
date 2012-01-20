input metauml;
beginfig(1);

Instance.ShapeA("shape1: Shape")
               ("prev = ...", "next = shape2");
Instance.ShapeB("shape2: Shape")
               ("prev = shape1", "next = shape3");
Instance.ShapeC("shape3: Shape")
               ("prev = shape2", "next = ..");
leftToRight(40)(ShapeA, ShapeB, ShapeC);

drawObject(ShapeA);
drawObject(ShapeB);
drawObject(ShapeC);


link(associationUni)(ShapeA.attributeStack.pict[0].w -- ShapeA.sw + (-20, +17));
link(associationUni)(ShapeA.attributeStack.pict[1].e -- ShapeB.sw + (0, +7));

link(associationUni)(ShapeB.attributeStack.pict[0].w -- ShapeA.se + (0, +17));
link(associationUni)(ShapeB.attributeStack.pict[1].e -- ShapeC.sw + (0, +7));

link(associationUni)(ShapeC.attributeStack.pict[0].w -- ShapeB.se + (0, +17));
link(associationUni)(ShapeC.attributeStack.pict[1].e -- ShapeC.se + (+20, +7));

endfig;
end
