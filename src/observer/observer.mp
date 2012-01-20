input metauml;
beginfig(1);


Class.Subject("Subjet")
    ("observers")
    ("+attach(Observer)",
     "+detach(Observer)",
     "+notify()");


Class.ConcreteSubject("ConcreteSubject")
    ("subjectState")
    ("+setState()",
     "+getState()");
     
     
Class.Observer("Observer")
    ()    
    ("+update()");
    
    
Class.ConcreteObserver("ConcreteObserver")
    ("subject",
     "observerState")
    ("+update()");


Note.Notify("for each o in observers {", "    o.update()", "}");
Note.Update("observerState = subject->GetState()");
Note.GetState("return subhectState;");

topToBottom(50)(Subject, ConcreteSubject);
leftToRight(140)(Subject, Observer);
topToBottom(70)(Observer, ConcreteObserver);

Notify.w = Subject.se + (15, 0);
Update.ne = ConcreteObserver.s + (-30, -10);
GetState.w = ConcreteSubject.e + (20, -20);

drawObject(Subject);
drawObject(ConcreteSubject);
drawObject(Observer);
drawObject(ConcreteObserver);
drawObject(Notify);
drawObject(Update);
drawObject(GetState);


link(associationUni)(pathHorizontal(Subject.attributeStack.pict[0].e + (35, 0), Observer.left));
link(associationUni)(pathHorizontal(ConcreteObserver.attributeStack.pict[0].w - (11, 0), ConcreteSubject.right));
clink(inheritance)(ConcreteSubject, Subject);
clink(inheritance)(ConcreteObserver, Observer);
link(dashedLink)(pathHorizontal(Subject.methodStack.pict[2].e, Notify.left));
link(dashedLink)(pathStepX(ConcreteObserver.methodStack.pict[0].e, Update.e, 10));
link(dashedLink)(pathHorizontal(ConcreteSubject.methodStack.pict[1].e, GetState.left));

endfig;
end
