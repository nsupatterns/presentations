input metauml;
beginfig(1);
Class.Shape("Shape")
       ()
       ("+draw(canvas: SystemCanvas): void");

Class.Line("Line")
       ("-x1: int",
        "-y1: int",
        "-x2: int",
        "-y2: int")
       ("+draw");

Class.Rectangle("Rectangle")
       ("-x1: int",
        "-y1: int",
        "-x2: int",
        "-y2: int")
       ("+draw()");

Class.Circle("Circle")
       ("-x: int",
        "-y: int",
        "-radius: int")
       ("+draw()");


leftToRight(30)(Line, Rectangle, Circle);
topToBottom(40)(Shape, Rectangle);

drawObjects(Shape, Line, Rectangle, Circle);

clink(inheritance)(Line, Shape);
clink(inheritance)(Rectangle, Shape);
clink(inheritance)(Circle, Shape);

endfig;
end
