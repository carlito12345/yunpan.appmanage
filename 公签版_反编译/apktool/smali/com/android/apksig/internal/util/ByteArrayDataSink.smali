.class public Lcom/android/apksig/internal/util/ByteArrayDataSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/apksig/util/ReadableDataSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;
    }
.end annotation


# static fields
.field private static final MAX_READ_CHUNK_SIZE:I = 0x10000


# instance fields
.field private mArray:[B

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x10000

    .line 1
    invoke-direct {p0, v0}, Lcom/android/apksig/internal/util/ByteArrayDataSink;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    .line 3
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mArray:[B

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initial capacity: "

    .line 5
    invoke-static {p1, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic access$100(Lcom/android/apksig/internal/util/ByteArrayDataSink;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mArray:[B

    .line 2
    .line 3
    return-object p0
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
    iget v0, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mSize:I

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
    iget p2, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mSize:I

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
    iget p2, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mSize:I

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

.method private ensureAvailable(I)V
    .locals 8

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mSize:I

    .line 5
    .line 6
    int-to-long v0, v0

    .line 7
    int-to-long v2, p1

    .line 8
    add-long/2addr v0, v2

    .line 9
    iget-object p1, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mArray:[B

    .line 10
    .line 11
    array-length v2, p1

    .line 12
    int-to-long v2, v2

    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-gtz v4, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    const-wide/32 v2, 0x7fffffff

    .line 19
    .line 20
    .line 21
    cmp-long v4, v0, v2

    .line 22
    .line 23
    if-gtz v4, :cond_2

    .line 24
    .line 25
    array-length p1, p1

    .line 26
    int-to-long v4, p1

    .line 27
    const-wide/16 v6, 0x2

    .line 28
    .line 29
    mul-long v4, v4, v6

    .line 30
    .line 31
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    long-to-int p1, v2

    .line 36
    int-to-long v2, p1

    .line 37
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    long-to-int p1, v0

    .line 42
    iget-object v0, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mArray:[B

    .line 43
    .line 44
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mArray:[B

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, "Required capacity too large: "

    .line 56
    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, ", max: 2147483647"

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method


# virtual methods
.method public consume(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 20
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/apksig/internal/util/ByteArrayDataSink;->consume([BII)V

    .line 23
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 24
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/apksig/internal/util/ByteArrayDataSink;->ensureAvailable(I)V

    .line 25
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [B

    .line 26
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 27
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    .line 28
    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 29
    iget-object v4, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mArray:[B

    iget v5, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mSize:I

    invoke-static {v1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget v3, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mSize:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mSize:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public consume([BII)V
    .locals 2

    .line 1
    const-string v0, "offset: "

    if-ltz p2, :cond_2

    .line 2
    array-length v1, p1

    if-gt p2, v1, :cond_1

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/apksig/internal/util/ByteArrayDataSink;->ensureAvailable(I)V

    .line 4
    iget-object v0, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mArray:[B

    iget v1, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mSize:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget p1, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mSize:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mSize:I

    return-void

    .line 6
    :cond_1
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, ", buf.length: "

    .line 7
    invoke-static {v0, p2, v1}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 8
    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 10
    invoke-static {p2, v0}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyTo(JILjava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    int-to-long v0, p3

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/apksig/internal/util/ByteArrayDataSink;->checkChunkValid(JJ)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mArray:[B

    .line 6
    .line 7
    long-to-int p2, p1

    .line 8
    invoke-virtual {p4, v0, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public feed(JJLcom/android/apksig/util/DataSink;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/apksig/internal/util/ByteArrayDataSink;->checkChunkValid(JJ)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mArray:[B

    .line 5
    .line 6
    long-to-int p2, p1

    .line 7
    long-to-int p1, p3

    .line 8
    invoke-interface {p5, v0, p2, p1}, Lcom/android/apksig/util/DataSink;->consume([BII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getByteBuffer(JI)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    int-to-long v0, p3

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/apksig/internal/util/ByteArrayDataSink;->checkChunkValid(JJ)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mArray:[B

    .line 6
    .line 7
    long-to-int p2, p1

    .line 8
    invoke-static {v0, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public size()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/apksig/internal/util/ByteArrayDataSink;->mSize:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    return-wide v0
.end method

.method public slice(JJ)Lcom/android/apksig/util/DataSource;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/apksig/internal/util/ByteArrayDataSink;->checkChunkValid(JJ)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;

    .line 5
    .line 6
    long-to-int p2, p1

    .line 7
    long-to-int p1, p3

    .line 8
    const/4 p3, 0x0

    .line 9
    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/apksig/internal/util/ByteArrayDataSink$SliceDataSource;-><init>(Lcom/android/apksig/internal/util/ByteArrayDataSink;IILcom/android/apksig/internal/util/ByteArrayDataSink$1;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
