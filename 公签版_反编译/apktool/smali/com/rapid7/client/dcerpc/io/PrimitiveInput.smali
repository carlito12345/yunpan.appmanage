.class Lcom/rapid7/client/dcerpc/io/PrimitiveInput;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dataIn:Ljava/io/DataInput;

.field private final dataInStream:Lv7/h;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    new-instance v0, Lv7/h;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lv7/h;-><init>(Ljava/io/InputStream;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->dataInStream:Lv7/h;

    .line 12
    .line 13
    new-instance p1, Lv7/j;

    .line 14
    .line 15
    invoke-direct {p1, v0}, Lv7/j;-><init>(Lv7/h;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->dataIn:Ljava/io/DataInput;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v0, "Invalid InputStream: null"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method


# virtual methods
.method public align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->ONE:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->getOffByOneAlignment()B

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-long v0, v0

    .line 11
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->dataInStream:Lv7/h;

    .line 12
    .line 13
    iget-wide v2, v2, Lv7/h;->a:J

    .line 14
    .line 15
    add-long/2addr v0, v2

    .line 16
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->getOffByOneAlignment()B

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    xor-int/lit8 p1, p1, -0x1

    .line 21
    .line 22
    int-to-long v2, p1

    .line 23
    and-long/2addr v0, v2

    .line 24
    iget-object p1, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->dataInStream:Lv7/h;

    .line 25
    .line 26
    iget-wide v2, p1, Lv7/h;->a:J

    .line 27
    .line 28
    sub-long/2addr v0, v2

    .line 29
    :goto_0
    const-wide/16 v2, 0x1

    .line 30
    .line 31
    sub-long v2, v0, v2

    .line 32
    .line 33
    const-wide/16 v4, 0x0

    .line 34
    .line 35
    cmp-long p1, v0, v4

    .line 36
    .line 37
    if-lez p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->readByte()B

    .line 40
    .line 41
    .line 42
    move-wide v0, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method

.method public fullySkipBytes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->dataIn:Ljava/io/DataInput;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/io/DataInput;->skipBytes(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public getCount()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->dataInStream:Lv7/h;

    .line 2
    .line 3
    iget-wide v0, v0, Lv7/h;->a:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public readBoolean()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->dataIn:Ljava/io/DataInput;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/DataInput;->readBoolean()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readByte()B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->dataIn:Ljava/io/DataInput;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/DataInput;->readByte()B

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readChar()C
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->dataIn:Ljava/io/DataInput;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/DataInput;->readChar()C

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readDouble()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->dataIn:Ljava/io/DataInput;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/DataInput;->readDouble()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->dataIn:Ljava/io/DataInput;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/DataInput;->readFloat()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readFully([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->dataIn:Ljava/io/DataInput;

    invoke-interface {v0, p1}, Ljava/io/DataInput;->readFully([B)V

    return-void
.end method

.method public readFully([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->dataIn:Ljava/io/DataInput;

    invoke-interface {v0, p1, p2, p3}, Ljava/io/DataInput;->readFully([BII)V

    return-void
.end method

.method public readInt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->dataIn:Ljava/io/DataInput;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readLong()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->dataIn:Ljava/io/DataInput;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public readShort()S
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->dataIn:Ljava/io/DataInput;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/DataInput;->readShort()S

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readUnsignedByte()C
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->dataIn:Ljava/io/DataInput;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-char v0, v0

    .line 8
    return v0
.end method

.method public readUnsignedInt()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const-wide v2, 0xffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr v0, v2

    .line 12
    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveInput;->dataIn:Ljava/io/DataInput;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedShort()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
