input metauml;
beginfig(1);


Class.ComponentFactory("AbstractFactory")
    ()
    ("+createProductA()",
     "+createProductB()");

Class.StyleAFactory("ConcreteFactory1")
    ()
    ("+createProductA()",
     "+createProductB()");
     
Class.StyleBFactory("ConcreteFactory2")
    ()
    ("+createProductA()",
     "+createProductB()");
    
    
Class.SystemButton("ProductB")
    ()
    ();
    
    
Class.StyleAButton("ProductB1")
    ()
    ();
    

Class.StyleBButton("ProductB2")
    ()
    ();
    
    
    
Class.SystemEditBox("ProductA")
    ()
    ();
    	
    
Class.StyleAEditBox("ProductA1")
    ()
    ();
    

Class.StyleBEditBox("ProductA2")
    ()
    ();
     
     
Class.Client("Client")
    ()
    ();



topToBottom(20)(ComponentFactory, StyleAFactory);
leftToRight(10)(StyleAFactory, StyleBFactory);
leftToRight(150)(ComponentFactory, Client);

topToBottom(40)(StyleBFactory, SystemEditBox);
topToBottom(20)(SystemEditBox, StyleBEditBox);
rightToLeft(20)(StyleBEditBox, StyleAEditBox);

leftToRight(10)(SystemEditBox, SystemButton);
topToBottom(20)(SystemButton, StyleAButton);
leftToRight(10)(StyleAButton, StyleBButton);

drawObject(ComponentFactory);
drawObject(StyleAFactory);
drawObject(StyleBFactory);

drawObject(Client);

drawObject(SystemEditBox);
drawObject(StyleBEditBox);
drawObject(StyleAEditBox);

drawObject(SystemButton);
drawObject(StyleAButton);
drawObject(StyleBButton);


clink(inheritance)(StyleAFactory, ComponentFactory);
clink(inheritance)(StyleBFactory, ComponentFactory);

clink(inheritance)(StyleAButton, SystemButton);
clink(inheritance)(StyleBButton, SystemButton);

clink(inheritance)(StyleAEditBox, SystemEditBox);
clink(inheritance)(StyleBEditBox, SystemEditBox);


clink(associationUni)(Client, ComponentFactory);
clink(associationUni)(Client, SystemButton);
clink(associationUni)(Client, SystemEditBox);


endfig;
end
