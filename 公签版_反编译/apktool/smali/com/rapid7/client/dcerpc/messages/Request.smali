.class public final Lcom/rapid7/client/dcerpc/messages/Request;
.super Lcom/rapid7/client/dcerpc/Header;
.source "SourceFile"


# instance fields
.field private opNum:S

.field private stub:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/Header;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/rapid7/client/dcerpc/PDUType;->REQUEST:Lcom/rapid7/client/dcerpc/PDUType;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/Header;->setPDUType(Lcom/rapid7/client/dcerpc/PDUType;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getOpNum()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/messages/Request;->opNum:S

    .line 2
    .line 3
    return v0
.end method

.method public getStub()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/messages/Request;->stub:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/messages/Request;->getStub()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getPFCFlags()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/rapid7/client/dcerpc/PFCFlag;->OBJECT_UUID:Lcom/rapid7/client/dcerpc/PFCFlag;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/16 v0, 0x28

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v0, 0x18

    .line 23
    .line 24
    :goto_0
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/messages/Request;->stub:[B

    .line 25
    .line 26
    array-length v1, v1

    .line 27
    add-int/2addr v0, v1

    .line 28
    int-to-short v0, v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/Header;->setFragLength(S)V

    .line 30
    .line 31
    .line 32
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/Header;->marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/messages/Request;->getStub()[B

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    array-length v1, v0

    .line 40
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/messages/Request;->getOpNum()S

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "Invalid stub: "

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/messages/Request;->getStub()[B

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method public setOpNum(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/rapid7/client/dcerpc/messages/Request;->opNum:S

    .line 2
    .line 3
    return-void
.end method

.method public setStub([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/messages/Request;->stub:[B

    .line 2
    .line 3
    return-void
.end method

.method public unmarshal(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Unmarshal Not Implemented."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
