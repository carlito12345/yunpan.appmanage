.class public abstract Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.super Lcom/rapid7/client/dcerpc/io/HexifyImpl;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/Packet;
.implements Lcom/rapid7/client/dcerpc/io/Hexify;


# instance fields
.field private returnValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/io/HexifyImpl;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getReturnCode()Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->getReturnValue()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->getErrorCode(I)Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getReturnValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->returnValue:I

    .line 2
    .line 3
    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->getReturnCode()Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_SUCCESS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Marshal Not Implemented."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public unmarshal(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->unmarshalResponse(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->returnValue:I

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readByte()B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/rmi/UnmarshalException;

    .line 19
    .line 20
    const-string v0, "At least one byte remained after reading the return code. Is this response aligned properly?"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :catch_0
    return-void
.end method

.method public abstract unmarshalResponse(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
.end method
