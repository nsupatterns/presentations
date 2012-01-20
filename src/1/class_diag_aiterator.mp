input metauml;
beginfig(1);

Class.AbstractIterator("AbstractIterator")
       ()
       ("+getNext()",
        "+getItem()",
        "+setItem()",
        "+isEnd()");

Class.Iterator("Iterator")
       ()
       ("+getNext()",
        "+getItem()",
        "+isEnd()");

Class.AbstractContainer("AbstractContainer")
       ()
       ("+createIterator(): AbstractIterator");


Class.Container("Container")
       ()
       ("+createIterator(): Iterator");


Class.Client("Client")
       ()
       ();


topToBottom(30)(Client, AbstractIterator);
topToBottom(30)(AbstractIterator, Iterator);
leftToRight(68)(Iterator, Container);
leftToRight.top(40)(AbstractIterator, AbstractContainer);

drawObject(Client);
drawObject(AbstractIterator);
drawObject(Iterator);
drawObject(AbstractContainer);
drawObject(Container);


clink(inheritance)(Iterator, AbstractIterator);
clink(inheritance)(Container, AbstractContainer);
clink(association)(Container, Iterator);
clink(associationUni)(Client, AbstractIterator);
clink(associationUni)(Client, AbstractContainer);


endfig;
end
