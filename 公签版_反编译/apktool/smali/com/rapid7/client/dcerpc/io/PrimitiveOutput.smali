.class public Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dataOut:Ljava/io/DataOutput;

.field private final dataOutStream:Lv7/i;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    new-instance v0, Lv7/i;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lv7/i;-><init>(Ljava/io/OutputStream;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->dataOutStream:Lv7/i;

    .line 12
    .line 13
    new-instance p1, Lv7/k;

    .line 14
    .line 15
    invoke-direct {p1, v0}, Lv7/k;-><init>(Lv7/i;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->dataOut:Ljava/io/DataOutput;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v0, "Invalid OutputStream: null"

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
    .locals 4

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
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->dataOutStream:Lv7/i;

    .line 12
    .line 13
    iget-wide v2, v2, Lv7/i;->a:J

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
    iget-object p1, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->dataOutStream:Lv7/i;

    .line 25
    .line 26
    iget-wide v2, p1, Lv7/i;->a:J

    .line 27
    .line 28
    sub-long/2addr v0, v2

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->pad(J)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public getCount()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->dataOutStream:Lv7/i;

    .line 2
    .line 3
    iget-wide v0, v0, Lv7/i;->a:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public pad(J)V
    .locals 5

    .line 1
    :goto_0
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    sub-long v0, p1, v0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, p1, v2

    .line 8
    .line 9
    if-lez v4, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeByte(I)V

    .line 13
    .line 14
    .line 15
    move-wide p1, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->dataOut:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->dataOut:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->dataOut:Ljava/io/DataOutput;

    invoke-interface {v0, p1, p2, p3}, Ljava/io/DataOutput;->write([BII)V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->dataOut:Ljava/io/DataOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeByte(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->dataOut:Ljava/io/DataOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->dataOut:Ljava/io/DataOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeChar(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->dataOut:Ljava/io/DataOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeChar(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->dataOut:Ljava/io/DataOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeChars(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeDouble(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->dataOut:Ljava/io/DataOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/io/DataOutput;->writeDouble(D)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeFloat(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->dataOut:Ljava/io/DataOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeFloat(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeInt(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->dataOut:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method

.method public writeInt(J)V
    .locals 0

    long-to-int p2, p1

    .line 2
    invoke-virtual {p0, p2}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    return-void
.end method

.method public writeLong(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->dataOut:Ljava/io/DataOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeShort(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->dataOut:Ljava/io/DataOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeShort(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
