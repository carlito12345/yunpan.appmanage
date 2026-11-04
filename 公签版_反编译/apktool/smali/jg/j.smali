.class public final Ljg/j;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/zip/DeflaterOutputStream;Ljava/util/zip/Deflater;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ljg/j;->a:I

    .line 3
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4
    iput-object p1, p0, Ljg/j;->b:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Ljg/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljg/z;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ljg/j;->a:I

    .line 1
    iput-object p1, p0, Ljg/j;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 p1, 0x2000

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Ljg/j;->b:Ljava/lang/Object;

    return-void
.end method

.method private final A()V
    .locals 0

    .line 1
    return-void
.end method

.method private final r()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget v0, p0, Ljg/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Ljg/j;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/util/zip/Deflater;

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Ljg/j;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Ljava/util/zip/DeflaterOutputStream;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 24
    .line 25
    .line 26
    throw v1

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public flush()V
    .locals 1

    .line 1
    iget v0, p0, Ljg/j;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/io/OutputStream;->flush()V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final write(I)V
    .locals 6

    iget v0, p0, Ljg/j;->a:I

    packed-switch v0, :pswitch_data_0

    .line 14
    iget-object v0, p0, Ljg/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    int-to-byte v1, p1

    .line 15
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 16
    iget-object v1, p0, Ljg/j;->c:Ljava/lang/Object;

    check-cast v1, Ljg/z;

    iget-object v2, v1, Ljg/z;->a:Ljava/nio/channels/SeekableByteChannel;

    .line 17
    invoke-static {v2, v0}, La2/s0;->w(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 18
    iget-object v0, v1, Ljg/z;->e:Ljava/util/zip/CRC32;

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    .line 20
    iget-wide v2, v1, Ljg/z;->f:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Ljg/z;->f:J

    return-void

    .line 21
    :pswitch_0
    iget-object v0, p0, Ljg/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {v0, p1}, Ljava/util/zip/DeflaterOutputStream;->write(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final write([B)V
    .locals 2

    iget v0, p0, Ljg/j;->a:I

    packed-switch v0, :pswitch_data_0

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljg/j;->write([BII)V

    return-void

    .line 2
    :pswitch_0
    iget-object v0, p0, Ljg/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final write([BII)V
    .locals 4

    iget v0, p0, Ljg/j;->a:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x2000

    .line 3
    iget-object v1, p0, Ljg/j;->c:Ljava/lang/Object;

    check-cast v1, Ljg/z;

    if-le p3, v0, :cond_0

    .line 4
    iget-object v0, v1, Ljg/z;->a:Ljava/nio/channels/SeekableByteChannel;

    .line 5
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v0, v2}, La2/s0;->w(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Ljg/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 8
    iget-object v2, v1, Ljg/z;->a:Ljava/nio/channels/SeekableByteChannel;

    .line 9
    invoke-static {v2, v0}, La2/s0;->w(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 10
    :goto_0
    iget-object v0, v1, Ljg/z;->e:Ljava/util/zip/CRC32;

    .line 11
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p1, p3

    .line 12
    iget-wide v2, v1, Ljg/z;->f:J

    add-long/2addr v2, p1

    iput-wide v2, v1, Ljg/z;->f:J

    return-void

    .line 13
    :pswitch_0
    iget-object v0, p0, Ljg/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
