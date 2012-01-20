input metauml;
beginfig(1);


Class.SystemWindow("SystemWindow")
    ()
    ();
    
    
Class.StyleAWindow("Style1Window")
    ()
    ();
    

Class.StyleBWindow("Style2Window")
    ()
    ();
    
    
    
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


leftToRight(100)(SystemWindow, SystemButton);
topToBottom(20)(SystemWindow, StyleAWindow);
leftToRight(20)(StyleAWindow, StyleBWindow);
topToBottom(20)(SystemButton, StyleAButton);
leftToRight(20)(StyleAButton, StyleBButton);
topToBottom(40)(StyleAWindow, SystemEditBox);
topToBottom(20)(SystemEditBox, StyleAEditBox);
leftToRight(20)(StyleAEditBox, StyleBEditBox);


drawObject(SystemWindow);
drawObject(StyleAWindow);
drawObject(StyleBWindow);
drawObject(SystemButton);
drawObject(StyleAButton);
drawObject(StyleBButton);
drawObject(SystemEditBox);
drawObject(StyleAEditBox);
drawObject(StyleBEditBox);


clink(inheritance)(StyleAWindow, SystemWindow);
clink(inheritance)(StyleBWindow, SystemWindow);

clink(inheritance)(StyleAButton, SystemButton);
clink(inheritance)(StyleBButton, SystemButton);

clink(inheritance)(StyleAEditBox, SystemEditBox);
clink(inheritance)(StyleBEditBox, SystemEditBox);


endfig;
end
