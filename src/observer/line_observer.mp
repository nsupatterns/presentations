input metauml;
beginfig(1);


Class.Subject("LineModel")
    ("observers")
    ("+attach(Observer)",
     "+detach(Observer)",
     "+notify()");
     
     
Class.Observer("LineObserver")
    ()    
    ("+update()");
    
    
Class.ConcreteObserver("Line")
    ("model")
    ("+update()");
    
    
Class.ConcreteObserverB("LinePanel")
    ("model")
    ("+update()");


leftToRight(120)(Subject, Observer);
topToBottom(50)(Subject, ConcreteObserverB);
topToBottom(60)(Observer, ConcreteObserver);


drawObject(Subject);
drawObject(Observer);
drawObject(ConcreteObserverB);
drawObject(ConcreteObserver);


link(associationUni)(pathHorizontal(Subject.attributeStack.pict[0].e + (35, 0), Observer.left));
clink(associationUni)(ConcreteObserver, Subject);
clink(associationUni)(ConcreteObserverB, Subject);
clink(inheritance)(ConcreteObserver, Observer);
clink(inheritance)(ConcreteObserverB, Observer);

endfig;
end
