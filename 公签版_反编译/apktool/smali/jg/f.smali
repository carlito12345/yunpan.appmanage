.class public final Ljg/f;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:Ljava/nio/channels/SeekableByteChannel;

.field public c:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljg/f;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 5
    .line 6
    iput-wide p2, p0, Ljg/f;->c:J

    .line 7
    .line 8
    const-wide/16 v0, 0x2000

    .line 9
    .line 10
    cmp-long p1, p2, v0

    .line 11
    .line 12
    if-gez p1, :cond_0

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    cmp-long p1, p2, v0

    .line 17
    .line 18
    if-lez p1, :cond_0

    .line 19
    .line 20
    long-to-int p1, p2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 p1, 0x2000

    .line 23
    .line 24
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Ljg/f;->a:Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final read()I
    .locals 5

    .line 1
    iget-wide v0, p0, Ljg/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 2
    iput-wide v0, p0, Ljg/f;->c:J

    .line 3
    iget-object v0, p0, Ljg/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 4
    iget-object v1, p0, Ljg/f;->b:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v1, v0}, La2/s0;->b(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-gez v1, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final read([BII)I
    .locals 5

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_0
    iget-wide v0, p0, Ljg/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    int-to-long v2, p3

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    long-to-int p3, v0

    .line 8
    :cond_2
    iget-object v0, p0, Ljg/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-gt p3, v1, :cond_3

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 10
    iget-object p3, p0, Ljg/f;->b:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {p3, v0}, La2/s0;->b(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result p3

    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 13
    iget-object p3, p0, Ljg/f;->b:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {p3, v0}, La2/s0;->b(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result p3

    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_0
    if-ltz p3, :cond_4

    .line 15
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 16
    iget-wide p1, p0, Ljg/f;->c:J

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Ljg/f;->c:J

    :cond_4
    return p3
.end method
