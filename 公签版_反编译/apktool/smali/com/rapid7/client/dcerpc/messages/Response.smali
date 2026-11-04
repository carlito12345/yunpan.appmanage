.class public final Lcom/rapid7/client/dcerpc/messages/Response;
.super Lcom/rapid7/client/dcerpc/Header;
.source "SourceFile"


# instance fields
.field private stub:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/Header;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/rapid7/client/dcerpc/PDUType;->RESPONSE:Lcom/rapid7/client/dcerpc/PDUType;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/Header;->setPDUType(Lcom/rapid7/client/dcerpc/PDUType;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getStub()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/messages/Response;->stub:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/messages/Response;->stub:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, 0x18

    .line 5
    .line 6
    int-to-short v0, v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/Header;->setFragLength(S)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/Header;->marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeByte(I)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/messages/Response;->getStub()[B

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getAuthLength()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    new-array v0, v0, [B

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public setStub([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/messages/Response;->stub:[B

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getFragLength()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getAuthLength()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    add-int/lit8 v0, v0, -0x18

    .line 14
    .line 15
    new-array v0, v0, [B

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/messages/Response;->setStub([B)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x8

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/messages/Response;->getStub()[B

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readFully([B)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/Header;->getAuthLength()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
