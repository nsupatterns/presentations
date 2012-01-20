input metauml;
beginfig(1);


Class.Context("ConnectorShape")
    ("ConnectPoint p1",
     "ConnectPoint p2",
     "ConnectStrategy st")
    ("+setStrategy()",
     "+draw()");
     
     
     
Class.Strategy("ConnectStrategy")
    ()
    ("+draw(Point start, Point end)");
    
    
Class.StrategyA("LineCStrategy")
    ()
    ("+draw()");

    
Class.StrategyB("MultiLineCStrategy")
    ()
    ("+draw()");
    
    
Class.StrategyC("RLineCStrategy")
    ()
    ("+draw()");
     
    
    

leftToRight(30)(Context, Strategy);
topToBottom(40)(Strategy, StrategyB);
rightToLeft(20)(StrategyB, StrategyA);
leftToRight(20)(StrategyB, StrategyC);

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
