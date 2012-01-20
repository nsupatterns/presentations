input metauml;
beginfig(1);


Class.Context("Context")
    ()
    ("+Request()");

    
Interface.St("State")
    ("+Handle(args)");
    
    
Class.StateA("StateA")
    ()
    ("+Handle(args)");
    
Class.StateB("StateB")
    ()
    ("+Handle(args)");


Note.StateHandle("state.Handle()");


leftToRight(60)(Context, St);
topToBottom(40)(St, StateA);
leftToRight(20)(StateA, StateB);
topToBottom(20)(Context, StateHandle);

drawObject(Context);
drawObject(St);
drawObject(StateA);
drawObject(StateB);
drawObject(StateHandle);


clink(dashedLink)(Context, StateHandle);
clink(aggregationUni)(St, Context);
clink(inheritance)(StateA, St);
clink(inheritance)(StateB, St);


endfig;
end
