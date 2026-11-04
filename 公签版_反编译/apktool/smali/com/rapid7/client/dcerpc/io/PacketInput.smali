.class public Lcom/rapid7/client/dcerpc/io/PacketInput;
.super Lcom/rapid7/client/dcerpc/io/PrimitiveInput;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic fullySkipBytes(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->fullySkipBytes(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic getCount()J
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->getCount()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public bridge synthetic readBoolean()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->readBoolean()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic readByte()B
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic readChar()C
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->readChar()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic readDouble()D
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->readDouble()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public bridge synthetic readFloat()F
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->readFloat()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic readFully([B)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->readFully([B)V

    return-void
.end method

.method public bridge synthetic readFully([BII)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->readFully([BII)V

    return-void
.end method

.method public readIndex(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedInt()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-gtz v4, :cond_0

    .line 11
    .line 12
    long-to-int p1, v0

    .line 13
    return p1

    .line 14
    :cond_0
    new-instance v2, Ljava/rmi/UnmarshalException;

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
    const/4 v3, 0x3

    .line 28
    new-array v3, v3, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    aput-object p1, v3, v4

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    aput-object v0, v3, p1

    .line 35
    .line 36
    const/4 p1, 0x2

    .line 37
    aput-object v1, v3, p1

    .line 38
    .line 39
    const-string p1, "%s %d > %d"

    .line 40
    .line 41
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v2, p1}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v2
.end method

.method public bridge synthetic readInt()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic readLong()J
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->readLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public readRawBytes([B)V
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readFully([BII)V

    return-void
.end method

.method public readRawBytes(I)[B
    .locals 0

    .line 1
    new-array p1, p1, [B

    .line 2
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readRawBytes([B)V

    return-object p1
.end method

.method public readReferentID()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic readShort()S
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p0}, Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p0}, Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic readUnsignedByte()C
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->readUnsignedByte()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic readUnsignedInt()J
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->readUnsignedInt()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public bridge synthetic readUnsignedShort()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->readUnsignedShort()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
