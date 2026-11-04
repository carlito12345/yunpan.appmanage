.class public Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;


# instance fields
.field private buffer:[I


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

.method private readIndex(Ljava/lang/String;Lcom/rapid7/client/dcerpc/io/PacketInput;)I
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedInt()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    cmp-long p2, v0, v2

    .line 9
    .line 10
    if-gtz p2, :cond_0

    .line 11
    .line 12
    long-to-int p1, v0

    .line 13
    return p1

    .line 14
    :cond_0
    new-instance p2, Ljava/rmi/UnmarshalException;

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const v1, 0x7fffffff

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x3

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    aput-object p1, v2, v3

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    aput-object v0, v2, p1

    .line 35
    .line 36
    const/4 p1, 0x2

    .line 37
    aput-object v1, v2, p1

    .line 38
    .line 39
    const-string p1, "%s %d > %d"

    .line 40
    .line 41
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p2, p1}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->getBuffer()[I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast p1, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->getBuffer()[I

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public getBuffer()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->buffer:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->getBuffer()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public marshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->buffer:[I

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
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->buffer:[I

    .line 11
    .line 12
    array-length v0, v0

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
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->buffer:[I

    .line 21
    .line 22
    array-length v1, v1

    .line 23
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->buffer:[I

    .line 27
    .line 28
    array-length v2, v1

    .line 29
    :goto_0
    if-ge v0, v2, :cond_0

    .line 30
    .line 31
    aget v3, v1, v0

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
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
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->buffer:[I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeNull()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    array-length v0, v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->buffer:[I

    .line 26
    .line 27
    array-length v0, v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public marshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 0

    return-void
.end method

.method public setBuffer([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->buffer:[I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->buffer:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "null"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    array-length v0, v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v0, v1, v2

    .line 18
    .line 19
    const-string v0, "RPC_SHORT_BLOB{size(Buffer):%s}"

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->buffer:[I

    .line 5
    .line 6
    if-eqz v3, :cond_1

    .line 7
    .line 8
    sget-object v3, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 9
    .line 10
    invoke-virtual {p1, v3}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    invoke-virtual {p1, v3}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 15
    .line 16
    .line 17
    const-string v3, "Offset"

    .line 18
    .line 19
    invoke-direct {p0, v3, p1}, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->readIndex(Ljava/lang/String;Lcom/rapid7/client/dcerpc/io/PacketInput;)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const-string v4, "ActualCount"

    .line 24
    .line 25
    invoke-direct {p0, v4, p1}, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->readIndex(Ljava/lang/String;Lcom/rapid7/client/dcerpc/io/PacketInput;)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    iget-object v5, p0, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->buffer:[I

    .line 30
    .line 31
    array-length v5, v5

    .line 32
    if-ne v4, v5, :cond_0

    .line 33
    .line 34
    mul-int/lit8 v3, v3, 0x2

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    if-ge v1, v4, :cond_1

    .line 40
    .line 41
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->buffer:[I

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedShort()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    aput v3, v2, v1

    .line 48
    .line 49
    add-int/2addr v1, v0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance p1, Ljava/rmi/UnmarshalException;

    .line 52
    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v4, p0, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->buffer:[I

    .line 58
    .line 59
    array-length v4, v4

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    new-array v2, v2, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object v3, v2, v1

    .line 67
    .line 68
    aput-object v4, v2, v0

    .line 69
    .line 70
    const-string v0, "Expected Length == Buffer.ActualCount: %d != %d"

    .line 71
    .line 72
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p1, v0}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :cond_1
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
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedShort()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    new-array p1, v0, [I

    .line 21
    .line 22
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->buffer:[I

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method
