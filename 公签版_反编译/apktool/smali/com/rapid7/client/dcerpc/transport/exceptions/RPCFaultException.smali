.class public Lcom/rapid7/client/dcerpc/transport/exceptions/RPCFaultException;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private final rpcFault:Lcom/rapid7/client/dcerpc/PDUFault;

.field private final rpcFaultValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/rapid7/client/dcerpc/transport/exceptions/RPCFaultException;->rpcFaultValue:I

    .line 5
    .line 6
    invoke-static {p1}, Lcom/rapid7/client/dcerpc/PDUFault;->fromValue(I)Lcom/rapid7/client/dcerpc/PDUFault;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/transport/exceptions/RPCFaultException;->rpcFault:Lcom/rapid7/client/dcerpc/PDUFault;

    .line 11
    .line 12
    return-void
.end method

.method public static read(Lcom/rapid7/client/dcerpc/io/PacketInput;)Lcom/rapid7/client/dcerpc/transport/exceptions/RPCFaultException;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    const/4 p0, -0x1

    .line 7
    :goto_0
    new-instance v0, Lcom/rapid7/client/dcerpc/transport/exceptions/RPCFaultException;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/rapid7/client/dcerpc/transport/exceptions/RPCFaultException;-><init>(I)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/transport/exceptions/RPCFaultException;->getRpcFault()Lcom/rapid7/client/dcerpc/PDUFault;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/transport/exceptions/RPCFaultException;->getRpcFaultValue()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v0, v2, v3

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    aput-object v1, v2, v0

    .line 21
    .line 22
    const-string v0, "Fault: %s (0x%08X)"

    .line 23
    .line 24
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public getRpcFault()Lcom/rapid7/client/dcerpc/PDUFault;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/transport/exceptions/RPCFaultException;->rpcFault:Lcom/rapid7/client/dcerpc/PDUFault;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRpcFaultValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/transport/exceptions/RPCFaultException;->rpcFaultValue:I

    .line 2
    .line 3
    return v0
.end method
