input metauml;
beginfig(1);

Interface.SystemButton("SystemButton")
       ("onClick()");


Class.AddLineButton("AddLineButton")
       ()
       ("onClick()");


Class.AddCircleButton("AddCircleButton")
       ()
       ("onClick()");


Class.AddRectangleButton("AddRectangleButton")
       ()
       ("onClick()");


Class.ExitButton("ExitButton")
       ()
       ("onClick()");


Class.AboutButton("AboutButton")
       ()
       ("onClick()");



Class.HelpButton("HelpButton")
       ()
       ("onClick()");


leftToRight(10)(AddLineButton, AddCircleButton, AddRectangleButton);
topToBottom(20)(AddCircleButton, SystemButton);
topToBottom(20)(SystemButton, AboutButton);
leftToRight(10)(AboutButton, HelpButton);
rightToLeft(10)(AboutButton, ExitButton);

drawObject(AddLineButton);
drawObject(AddCircleButton);
drawObject(AddRectangleButton);
drawObject(SystemButton);
drawObject(AboutButton);
drawObject(HelpButton);
drawObject(ExitButton);

clink(inheritance)(AddLineButton, SystemButton);
clink(inheritance)(AddCircleButton, SystemButton);
clink(inheritance)(AddRectangleButton, SystemButton);
clink(inheritance)(AboutButton, SystemButton);
clink(inheritance)(HelpButton, SystemButton);
clink(inheritance)(ExitButton, SystemButton);

endfig;
end
