.class public Lcom/android/apksig/internal/util/ByteBufferDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/apksig/util/DataSource;


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mSize:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/apksig/internal/util/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mBuffer:Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    iput p1, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    return-void
.end method

.method private checkChunkValid(JJ)V
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_4

    .line 6
    .line 7
    cmp-long v2, p3, v0

    .line 8
    .line 9
    if-ltz v2, :cond_3

    .line 10
    .line 11
    iget v0, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    .line 12
    .line 13
    int-to-long v1, v0

    .line 14
    const-string v3, ")"

    .line 15
    .line 16
    const-string v4, ") > source size ("

    .line 17
    .line 18
    const-string v5, "offset ("

    .line 19
    .line 20
    cmp-long v6, p1, v1

    .line 21
    .line 22
    if-gtz v6, :cond_2

    .line 23
    .line 24
    add-long v1, p1, p3

    .line 25
    .line 26
    const-string v6, ") + size ("

    .line 27
    .line 28
    cmp-long v7, v1, p1

    .line 29
    .line 30
    if-ltz v7, :cond_1

    .line 31
    .line 32
    int-to-long v7, v0

    .line 33
    cmp-long v0, v1, v7

    .line 34
    .line 35
    if-gtz v0, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 39
    .line 40
    invoke-static {p1, p2, v5, v6}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget p2, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    .line 51
    .line 52
    invoke-static {p1, p2, v3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 61
    .line 62
    invoke-static {p1, p2, v5, v6}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string p2, ") overflow"

    .line 67
    .line 68
    invoke-static {p1, p3, p4, p2}, Landroid/support/v4/media/session/a;->t(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_2
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    .line 77
    .line 78
    invoke-static {p1, p2, v5, v4}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget p2, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    .line 83
    .line 84
    invoke-static {p1, p2, v3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p3

    .line 92
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 93
    .line 94
    const-string p2, "size: "

    .line 95
    .line 96
    invoke-static {p3, p4, p2}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_4
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    .line 105
    .line 106
    const-string p4, "offset: "

    .line 107
    .line 108
    invoke-static {p1, p2, p4}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p3
.end method


# virtual methods
.method public copyTo(JILjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/apksig/internal/util/ByteBufferDataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public feed(JJLcom/android/apksig/util/DataSink;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p3, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    .line 8
    .line 9
    int-to-long v0, v0

    .line 10
    cmp-long v2, p3, v0

    .line 11
    .line 12
    if-gtz v2, :cond_0

    .line 13
    .line 14
    long-to-int p4, p3

    .line 15
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/apksig/internal/util/ByteBufferDataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p5, p1}, Lcom/android/apksig/util/DataSink;->consume(Ljava/nio/ByteBuffer;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 24
    .line 25
    const-string p2, "size: "

    .line 26
    .line 27
    const-string p5, ", source size: "

    .line 28
    .line 29
    invoke-static {p3, p4, p2, p5}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget p3, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    .line 34
    .line 35
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public getByteBuffer(JI)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    int-to-long v0, p3

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/apksig/internal/util/ByteBufferDataSource;->checkChunkValid(JJ)V

    .line 3
    .line 4
    .line 5
    long-to-int p2, p1

    .line 6
    add-int/2addr p3, p2

    .line 7
    iget-object p1, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mBuffer:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mBuffer:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mBuffer:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 19
    .line 20
    .line 21
    iget-object p3, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mBuffer:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mBuffer:Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    monitor-exit p1

    .line 33
    return-object p2

    .line 34
    :catchall_0
    move-exception p2

    .line 35
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p2
.end method

.method public size()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    return-wide v0
.end method

.method public slice(JJ)Lcom/android/apksig/internal/util/ByteBufferDataSource;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 2
    iget v2, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    int-to-long v2, v2

    cmp-long v4, p3, v2

    if-nez v4, :cond_0

    return-object p0

    :cond_0
    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    .line 3
    iget v0, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    int-to-long v0, v0

    cmp-long v2, p3, v0

    if-gtz v2, :cond_1

    .line 4
    new-instance v0, Lcom/android/apksig/internal/util/ByteBufferDataSource;

    long-to-int p4, p3

    .line 5
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/apksig/internal/util/ByteBufferDataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lcom/android/apksig/internal/util/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-object v0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "size: "

    const-string v0, ", source size: "

    .line 7
    invoke-static {p3, p4, p2, v0}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 8
    iget p3, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic slice(JJ)Lcom/android/apksig/util/DataSource;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/apksig/internal/util/ByteBufferDataSource;->slice(JJ)Lcom/android/apksig/internal/util/ByteBufferDataSource;

    move-result-object p1

    return-object p1
.end method
