input metauml;
beginfig(1);


Class.Context("Context")
    ("Strategy st")
    ("+someInterface()");
     
     
     
Class.Strategy("Strategy")
    ()
    ("+algoInterface()");
    
    
Class.StrategyA("Strategy1")
    ()
    ("+algoInterface()");

    
Class.StrategyB("Strategy2")
    ()
    ("+algoInterface()");
    
    
Class.StrategyC("Strategy3")
    ()
    ("+algoInterface()");
     
    
    

Note.DoVisit("v.visitObject2(this)");

leftToRight(30)(Context, Strategy);
topToBottom(40)(Strategy, StrategyB);
rightToLeft(30)(StrategyB, StrategyA);
leftToRight(30)(StrategyB, StrategyC);

drawObject(Context);
drawObject(Strategy);
drawObject(StrategyB);
drawObject(StrategyA);
drawObject(StrategyC);


clink(inheritance)(StrategyA, Strategy);
clink(inheritance)(StrategyB, Strategy);
clink(inheritance)(StrategyC, Strategy);
clink(aggregation)(Strategy, Context);



endfig;
end
