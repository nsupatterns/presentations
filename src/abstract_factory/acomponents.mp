input metauml;
beginfig(1);


Class.ComponentFactory("ComponentFactory")
    ()
    ("+createButton()",
     "+createEditBox()");

Class.StyleAFactory("Style1Factory")
    ()
    ("+createButton()",
     "+createEditBox()");
     
Class.StyleBFactory("Style2Factory")
    ()
    ("+createButton()",
     "+createEditBox()");
    
    
Class.SystemButton("SystemButton")
    ()
    ("+setListener()");
    
    
Class.StyleAButton("Style1Button")
    ()
    ("+setListener()");
    

Class.StyleBButton("Style2Button")
    ()
    ("+setListener()");
    
    
    
Class.SystemEditBox("SystemEditBox")
    ()
    ("+setText()",
     "+getText()");
    
    
Class.StyleAEditBox("Style1EditBox")
    ()
    ("+setText()",
     "+getText()");
    

Class.StyleBEditBox("Style2EditBox")
    ()
    ("+setText()",
     "+getText()");
     
     
Class.Client("Client")
    ()
    ();



topToBottom(20)(ComponentFactory, StyleAFactory);
leftToRight(10)(StyleAFactory, StyleBFactory);
leftToRight(150)(ComponentFactory, Client);

topToBottom(10)(StyleBFactory, SystemEditBox);
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
