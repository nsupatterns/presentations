input metauml;
beginfig(1);

Class.Button("Button")
       ("-command")
       ("+onClick()");



Interface.ButtonCommand("ButtonCommand")
       ("+Execute()");


Class.AddLineCommand("AddLineButtonCommand")
       ("-scene")
       ("+Execute()");


Class.Scene("Scene")
       ()
       ("+addLine()");


Note.Execute("scene.AddLine()");


leftToRight(40)(Button, ButtonCommand);
topToBottom(40)(ButtonCommand, AddLineCommand);
rightToLeft(40)(AddLineCommand, Scene);
leftToRight(20)(AddLineCommand, Execute);


drawObject(Button);
drawObject(ButtonCommand);
drawObject(AddLineCommand);
drawObject(Execute);
drawObject(Scene);


clink(aggregation)(ButtonCommand, Button);
clink(inheritance)(AddLineCommand, ButtonCommand);
clink(dashedLink)(AddLineCommand.methodStack.pict[0], Execute);
clink(associationUni)(AddLineCommand, Scene);

endfig;
end
