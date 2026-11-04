.class public final Lcom/rapid7/client/dcerpc/messages/BindResponse;
.super Lcom/rapid7/client/dcerpc/Header;
.source "SourceFile"


# instance fields
.field private maxRecvFrag:S

.field private maxXmitFrag:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/Header;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getMaxRecvFrag()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/messages/BindResponse;->maxRecvFrag:S

    .line 2
    .line 3
    return v0
.end method

.method public getMaxXmitFrag()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/messages/BindResponse;->maxXmitFrag:S

    .line 2
    .line 3
    return v0
.end method

.method public isACK()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/PDUType;->BIND_ACK:Lcom/rapid7/client/dcerpc/PDUType;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getPDUType()Lcom/rapid7/client/dcerpc/PDUType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isNAK()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/PDUType;->BIND_NAK:Lcom/rapid7/client/dcerpc/PDUType;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getPDUType()Lcom/rapid7/client/dcerpc/PDUType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/messages/BindResponse$1;->$SwitchMap$com$rapid7$client$dcerpc$PDUType:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getPDUType()Lcom/rapid7/client/dcerpc/PDUType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    const/16 v0, 0x10

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/Header;->setFragLength(S)V

    .line 22
    .line 23
    .line 24
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/Header;->marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "Invalid PDU type: "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getPDUType()Lcom/rapid7/client/dcerpc/PDUType;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_1
    const/16 v0, 0x14

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/Header;->setFragLength(S)V

    .line 55
    .line 56
    .line 57
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/Header;->marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 58
    .line 59
    .line 60
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/messages/BindResponse;->maxXmitFrag:S

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 63
    .line 64
    .line 65
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/messages/BindResponse;->maxRecvFrag:S

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method public setMaxRecvFrag(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/rapid7/client/dcerpc/messages/BindResponse;->maxRecvFrag:S

    .line 2
    .line 3
    return-void
.end method

.method public setMaxXmitFrag(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/rapid7/client/dcerpc/messages/BindResponse;->maxXmitFrag:S

    .line 2
    .line 3
    return-void
.end method

.method public unmarshal(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/Header;->unmarshal(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/rapid7/client/dcerpc/messages/BindResponse$1;->$SwitchMap$com$rapid7$client$dcerpc$PDUType:[I

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getPDUType()Lcom/rapid7/client/dcerpc/PDUType;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    aget v0, v0, v1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getFragLength()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/lit8 v0, v0, -0x10

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "Invalid PDU type: "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getPDUType()Lcom/rapid7/client/dcerpc/PDUType;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readShort()S

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput-short v0, p0, Lcom/rapid7/client/dcerpc/messages/BindResponse;->maxXmitFrag:S

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readShort()S

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput-short v0, p0, Lcom/rapid7/client/dcerpc/messages/BindResponse;->maxRecvFrag:S

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getFragLength()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    add-int/lit8 v0, v0, -0x14

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void
.end method
