input metauml;
beginfig(1);

Class.Shape("Shape")
       ()
       ("+draw()");

Class.ShapeListItem("ShapeListItem")
       ()
       ("+getNext()",
        "+getShape()",
        "+setShape()");

Class.ShapeList("ShapeList")
       ("-first: ShapeListItem",
        "-last: ShapeListItem")
       ("+getFirst()",
        "+add()",
        "+addBefore()",
        "+remove()");


Class.Scene("Scene")
       ("-shapes: ShapeList")
       ("+addShape()",
        "+addShapeBefore()",
        "+removeShape()");


Class.ShapeListNode("ShapeListNode")
       ("-prev: ShapeListNode",
        "-next: ShapeListNode",
        "-shape: Shape")
       ("+getNext()",
        "+setNext()",
        "+getPrev()",
        "+setPrev()",
        "+getShape()",
        "+setShape()");

leftToRight(60)(Shape, ShapeListItem);
leftToRight.bottom(20)(ShapeList, ShapeListNode);
leftToRight(20)(Scene, ShapeList);
topToBottom(20)(ShapeListItem, ShapeList);

drawObject(Shape);
drawObject(ShapeListItem);
drawObject(ShapeList);
drawObject(Scene);
drawObject(ShapeListNode);


clink(associationUni)(ShapeListItem, Shape);
link(composition)(pathHorizontal(ShapeListNode.w, ShapeList.right));
clink(composition)(ShapeList, Scene);
link(associationUni)(pathVertical(Scene.n, Shape.bottom));
clink(associationUni)(Scene, ShapeListItem);
clink(associationUni)(ShapeListItem, ShapeListNode);

stepY := 30;
link(aggregation)
(pathStepY(Shape.n, ShapeListNode.n, 	stepY));



endfig;
end
