.class public Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
.implements Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;


# instance fields
.field private cbInSecurityDescriptor:I

.field private lpSecurityDescriptor:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getLpSecurityDescriptor()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;->lpSecurityDescriptor:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public marshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;->lpSecurityDescriptor:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;->cbInSecurityDescriptor:I

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;->lpSecurityDescriptor:[B

    .line 20
    .line 21
    array-length v0, v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;->lpSecurityDescriptor:[B

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public marshalEntity(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;->lpSecurityDescriptor:[B

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;->cbInSecurityDescriptor:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public marshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 0

    return-void
.end method

.method public setCbInSecurityDescriptor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;->cbInSecurityDescriptor:I

    .line 2
    .line 3
    return-void
.end method

.method public setLpSecurityDescriptor([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;->lpSecurityDescriptor:[B

    .line 2
    .line 3
    return-void
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;->lpSecurityDescriptor:[B

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 12
    .line 13
    .line 14
    const-string v0, "Offset"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readIndex(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 21
    .line 22
    .line 23
    const-string v0, "ActualCount"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readIndex(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;->lpSecurityDescriptor:[B

    .line 30
    .line 31
    array-length v2, v1

    .line 32
    if-ne v0, v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readRawBytes([B)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Ljava/rmi/UnmarshalException;

    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;->lpSecurityDescriptor:[B

    .line 45
    .line 46
    array-length v1, v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x2

    .line 52
    new-array v2, v2, [Ljava/lang/Object;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    aput-object v0, v2, v3

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    aput-object v1, v2, v0

    .line 59
    .line 60
    const-string v0, "AcutalCount of the conformant varying array does not match cbOutSecurityDescriptor: %d != %d"

    .line 61
    .line 62
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p1, v0}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_1
    :goto_0
    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    const/4 v1, 0x4

    .line 16
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 17
    .line 18
    .line 19
    const-string v1, "cbOutSecurityDescriptor"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readIndex(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    new-array p1, p1, [B

    .line 28
    .line 29
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;->lpSecurityDescriptor:[B

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;->lpSecurityDescriptor:[B

    .line 34
    .line 35
    :goto_1
    return-void
.end method

.method public unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method
