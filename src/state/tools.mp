input metauml;
beginfig(1);


Class.Scene("Scene")
    ("selectedTool: Tool")
    ("+onMouseDown()",
     "+onMouseUp()",
     "+onMouseMove()");


Class.Tool("Tool")
    ()
    ("+draw()",
     "+onMouseDown()",
     "+onMouseUp()",
     "+onMouseMove()");    

    
Class.LineTool("LineTool")
    ()
    ("+draw()",
     "+onMouseDown()",
     "+onMouseUp()",
     "+onMouseMove()");    
    
    
Class.RectangleTool("RectangleTool")
    ()
    ("+draw()",
     "+onMouseDown()",
     "+onMouseUp()",
     "+onMouseMove()"); 
    
    
Class.CircleTool("CircleTool")
    ()
    ("+draw()",
     "+onMouseDown()",
     "+onMouseUp()",
     "+onMouseMove()"); 



leftToRight(30)(Scene, Tool);
topToBottom(40)(Tool, RectangleTool);
leftToRight(20)(RectangleTool, CircleTool);
rightToLeft(20)(RectangleTool, LineTool);

drawObject(Scene);
drawObject(Tool);
drawObject(RectangleTool);
drawObject(LineTool);
drawObject(CircleTool);


clink(aggregationUni)(Tool, Scene);
clink(inheritance)(LineTool, Tool);
clink(inheritance)(RectangleTool, Tool);
clink(inheritance)(CircleTool, Tool);


endfig;
end
