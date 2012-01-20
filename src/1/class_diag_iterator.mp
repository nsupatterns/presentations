input metauml;
beginfig(1);

Class.T("T")
       ()
       ("+draw()");

Class.Iterator("Iterator")
       ()
       ("+getNext()",
        "+getItem()",
        "+setItem()",
        "+isEnd()");

Class.Container("Container")
       ()
       ("+add()",
        "+addBefore()",
        "+remove()",
        "+...");


Class.Client("Client")
       ()
       ();

topToBottom(40)(Client, Iterator);
leftToRight(40)(Iterator, Container);

drawObject(Client);
drawObject(Iterator);
drawObject(Container);

clink(associationUni)(Client, Iterator);
clink(associationUni)(Client, Container);
clink(association)(Iterator, Container);


endfig;
end
