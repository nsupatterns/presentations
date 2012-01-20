input metauml;
beginfig(1);


Class.LineTool("LineTool")
    ()
    ("+draw()",
     "+onMouseDown()",
     "+onMouseUp()",
     "+onMouseMove()");
     
     
Class.LineToolState("LineToolState")
    ()
    ("+draw()",
     "+onMouseDown()",
     "+onMouseUp()",
     "+onMouseMove()");
    
    
Class.LineToolStateStart("LineToolStateStart")
    ()
    ("+draw()",
     "+onMouseDown()",
     "+onMouseUp()",
     "+onMouseMove()");
        
        
Class.LineToolStatePressed("LineToolStatePressed")
    ()
    ("+draw()",
     "+onMouseDown()",
     "+onMouseUp()",
     "+onMouseMove()");
     
     
Class.LineToolStateFreeMove("LineToolStateFreeMove")
    ()
    ("+draw()",
     "+onMouseDown()",
     "+onMouseUp()",
     "+onMouseMove()");
     

leftToRight(30)(LineTool, LineToolState);
topToBottom(40)(LineToolState, LineToolStatePressed);
leftToRight(20)(LineToolStatePressed, LineToolStateFreeMove);
rightToLeft(20)(LineToolStatePressed, LineToolStateStart);

drawObject(LineTool);
drawObject(LineToolState);
drawObject(LineToolStatePressed);
drawObject(LineToolStateFreeMove);
drawObject(LineToolStateStart);


clink(aggregationUni)(LineToolState, LineTool);
clink(inheritance)(LineToolStateStart, LineToolState);
clink(inheritance)(LineToolStatePressed, LineToolState);
clink(inheritance)(LineToolStateFreeMove, LineToolState);

endfig;
end
