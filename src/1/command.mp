input metauml;
beginfig(1);

Interface.Command("Command")
       ("+Execute()");


Class.ConcreteCommand("ConcreteCommand")
       ("-receiver")
       ("+Execute()");


Class.Invoker("Invoker")
       ()
       ();


Class.Receiver("Receiver")
       ()
       ("+Action()");


Note.Execute("receiver.Execute()");


leftToRight(40)(Invoker, Command);
topToBottom(40)(Command, ConcreteCommand);
rightToLeft(40)(ConcreteCommand, Receiver);
leftToRight(40)(ConcreteCommand, Execute);


drawObject(Invoker);
drawObject(Command);
drawObject(ConcreteCommand);
drawObject(Execute);
drawObject(Receiver);


clink(aggregation)(Command, Invoker);
clink(inheritance)(ConcreteCommand, Command);
clink(dashedLink)(ConcreteCommand.methodStack.pict[0], Execute);
clink(associationUni)(ConcreteCommand, Receiver);

endfig;
end
