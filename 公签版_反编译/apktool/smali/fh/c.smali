.class public final Lfh/c;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lfh/c;->a:I

    .line 1
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    iput-object p1, p0, Lfh/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/InflaterInputStream;Ljava/util/zip/Inflater;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lfh/c;->a:I

    .line 3
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    iput-object p2, p0, Lfh/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljg/t;Ljava/io/BufferedInputStream;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lfh/c;->a:I

    .line 5
    iput-object p1, p0, Lfh/c;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget v0, p0, Lfh/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object v0, p0, Lfh/c;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/util/zip/Inflater;

    .line 13
    .line 14
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 23
    .line 24
    .line 25
    throw v1

    .line 26
    :pswitch_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lfh/c;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Ljava/net/Socket;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public read()I
    .locals 2

    iget v0, p0, Lfh/c;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    return v0

    .line 1
    :pswitch_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lfh/c;->b:Ljava/lang/Object;

    check-cast v1, Ljg/t;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public read([B)I
    .locals 2

    iget v0, p0, Lfh/c;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result p1

    return p1

    .line 3
    :pswitch_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lfh/c;->read([BII)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public read([BII)I
    .locals 1

    iget v0, p0, Lfh/c;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    return p1

    :pswitch_0
    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_1

    .line 5
    iget-object p2, p0, Lfh/c;->b:Ljava/lang/Object;

    check-cast p2, Ljg/t;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
