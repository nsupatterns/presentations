input metauml;
beginfig(1);


Class.TcpConnection("TcpConnection")
    ()
    (
     "+connect()",
     "+close()",
     "+send()",
     "+recv()",
     "+listen()",
     "+accept()"
    );

    
Interface.TcpState("TcpState")
    (
     "+connect()",
     "+close()",
     "+send()",
     "+recv()",
     "+listen()",
     "+accept()"
    );
    
    
Class.TcpClosed("TcpClosed")
    ()
    (
     "+connect()",
     "+close()",
     "+send()",
     "+recv()",
     "+listen()",
     "+accept()"
    );
    
Class.TcpConnected("TcpConnected")
    ()
    ("+connect()",
     "+close()",
     "+send()",
     "+recv()",
     "+listen()",
     "+accept()"
    );
    
    
Class.TcpListen("TcpListen")
    ()
    ("+connect()",
     "+close()",
     "+send()",
     "+recv()",
     "+listen()",
     "+accept()"
    );


leftToRight(60)(TcpConnection, TcpState);
topToBottom(50)(TcpState, TcpClosed);
leftToRight(20)(TcpClosed, TcpConnected);
rightToLeft(20)(TcpClosed, TcpListen);

drawObject(TcpConnection);
drawObject(TcpState);
drawObject(TcpClosed);
drawObject(TcpConnected);
drawObject(TcpListen);


clink(aggregationUni)(TcpState, TcpConnection);
clink(inheritance)(TcpClosed, TcpState);
clink(inheritance)(TcpConnected, TcpState);
clink(inheritance)(TcpListen, TcpState);


endfig;
end
