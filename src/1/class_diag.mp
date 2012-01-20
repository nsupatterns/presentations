input metauml;
beginfig(1);

Class.Shape("Shape")
       ()
       ("+draw()");

Class.ShapeListItem("ShapeListItem")
       ("-prev: ShapeListItem",
        "-next: ShapeListItem",
        "-shape: Shape")
       ("+getNext()",
        "+setNext()",
        "+getPrev()",
        "+setPrev()",
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

leftToRight(60)(Shape, ShapeListItem);
leftToRight(40)(Scene, ShapeList);
topToBottom(20)(ShapeListItem, ShapeList);

drawObject(Shape);
drawObject(ShapeListItem);
drawObject(ShapeList);
drawObject(Scene);


clink(aggregation)(Shape, ShapeListItem);
clink(composition)(ShapeListItem, ShapeList);
clink(composition)(ShapeList, Scene);
clink(associationUni)(Scene, Shape);
clink(associationUni)(Scene, ShapeListItem);


endfig;
end
