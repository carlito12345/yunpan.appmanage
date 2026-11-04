.class public Lnet/sf/sevenzipjbinding/util/ByteArrayStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IInStream;
.implements Lnet/sf/sevenzipjbinding/IOutStream;


# static fields
.field private static final INPUT_STREAM_READ_BUFFER_SIZE:I = 0x4000

.field private static final MAX_CHUNK_SIZE:I = 0x100000


# instance fields
.field private final chunkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private currentChunkIndex:I

.field private currentPosition:I

.field private currentPositionInChunk:I

.field private final initialSize:I

.field private final maxSize:I

.field private seekToPosition:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x400

    .line 5
    invoke-direct {p0, v0, p1}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 8
    iput p1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->initialSize:I

    if-ltz p2, :cond_1

    if-ltz p1, :cond_0

    .line 9
    iput p2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->maxSize:I

    .line 10
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->init()V

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Initial size of the byte array stream should be >0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Maximal size of the byte array stream should be >0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BZ)V
    .locals 2

    .line 3
    array-length v0, p1

    const/16 v1, 0x400

    if-le v1, v0, :cond_0

    array-length v1, p1

    :cond_0
    array-length v0, p1

    invoke-direct {p0, v1, v0}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;-><init>(II)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->setBytes([BZ)V

    return-void
.end method

.method public constructor <init>([BZI)V
    .locals 1

    const/16 v0, 0x400

    .line 1
    invoke-direct {p0, v0, p3}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;-><init>(II)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->setBytes([BZ)V

    return-void
.end method

.method private allocateNextChunk(I)V
    .locals 7

    .line 1
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    add-int/lit8 v2, v2, -0x1

    .line 13
    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 17
    .line 18
    iget v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    .line 19
    .line 20
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, [B

    .line 25
    .line 26
    array-length v0, v0

    .line 27
    iget v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    .line 28
    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    .line 33
    .line 34
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    .line 39
    .line 40
    :cond_1
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    .line 41
    .line 42
    iget v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->maxSize:I

    .line 43
    .line 44
    const-string v3, ")"

    .line 45
    .line 46
    const-string v4, "Maximal size of the byte array stream was reached. (Max size = "

    .line 47
    .line 48
    if-ge v0, v2, :cond_8

    .line 49
    .line 50
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    add-int/lit8 v0, v0, -0x1

    .line 57
    .line 58
    if-ne v0, v1, :cond_2

    .line 59
    .line 60
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->initialSize:I

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, [B

    .line 70
    .line 71
    array-length v0, v0

    .line 72
    shl-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    :goto_0
    const/high16 v2, 0x100000

    .line 75
    .line 76
    if-ltz v0, :cond_3

    .line 77
    .line 78
    if-le v0, v2, :cond_4

    .line 79
    .line 80
    :cond_3
    const/high16 v0, 0x100000

    .line 81
    .line 82
    :cond_4
    iget v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    .line 83
    .line 84
    add-int v5, v2, v0

    .line 85
    .line 86
    iget v6, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->maxSize:I

    .line 87
    .line 88
    if-le v5, v6, :cond_5

    .line 89
    .line 90
    sub-int v0, v6, v2

    .line 91
    .line 92
    :cond_5
    if-eq p1, v1, :cond_7

    .line 93
    .line 94
    if-ge v0, p1, :cond_7

    .line 95
    .line 96
    add-int/2addr v2, p1

    .line 97
    if-ge v2, v6, :cond_6

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->maxSize:I

    .line 108
    .line 109
    invoke-static {v0, v1, v3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_7
    move p1, v0

    .line 118
    :goto_1
    new-array p1, p1, [B

    .line 119
    .line 120
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 121
    .line 122
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    .line 127
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->maxSize:I

    .line 134
    .line 135
    invoke-static {v0, v1, v3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1
.end method

.method private endWriting()V
    .locals 3

    .line 1
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    .line 2
    .line 3
    iget v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->init()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 20
    .line 21
    add-int/lit8 v2, v0, -0x1

    .line 22
    .line 23
    iput v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    .line 24
    .line 25
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 29
    .line 30
    iget v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, [B

    .line 37
    .line 38
    array-length v0, v0

    .line 39
    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    .line 8
    .line 9
    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    .line 13
    .line 14
    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    .line 15
    .line 16
    iput v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->seekToPosition:I

    .line 17
    .line 18
    return-void
.end method

.method private performDelayedSeek()V
    .locals 6

    .line 1
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->seekToPosition:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    .line 8
    .line 9
    if-ne v2, v0, :cond_1

    .line 10
    .line 11
    iput v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->seekToPosition:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-le v0, v2, :cond_2

    .line 18
    .line 19
    int-to-long v4, v0

    .line 20
    invoke-direct {p0, v4, v5, v3}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->setSize(JZ)V

    .line 21
    .line 22
    .line 23
    iput v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->seekToPosition:I

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    const/4 v0, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    iget-object v4, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-ge v0, v4, :cond_4

    .line 35
    .line 36
    iget-object v4, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, [B

    .line 43
    .line 44
    array-length v4, v4

    .line 45
    add-int/2addr v2, v4

    .line 46
    iget v5, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->seekToPosition:I

    .line 47
    .line 48
    if-le v2, v5, :cond_3

    .line 49
    .line 50
    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    .line 51
    .line 52
    sub-int/2addr v2, v5

    .line 53
    sub-int/2addr v4, v2

    .line 54
    iput v4, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    .line 55
    .line 56
    iput v5, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    .line 57
    .line 58
    iput v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->seekToPosition:I

    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    sub-int/2addr v0, v3

    .line 71
    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    .line 72
    .line 73
    iget-object v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, [B

    .line 80
    .line 81
    array-length v0, v0

    .line 82
    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    .line 83
    .line 84
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    .line 85
    .line 86
    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    .line 87
    .line 88
    iput v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->seekToPosition:I

    .line 89
    .line 90
    return-void
.end method

.method private declared-synchronized setSize(JZ)V
    .locals 5

    const-string v0, "Maximal size of the byte array stream was reached by setSize("

    monitor-enter p0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->truncate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 5
    :cond_0
    :try_start_1
    iget v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->maxSize:I

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-gtz v3, :cond_c

    .line 6
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    int-to-long v1, v0

    const/4 v3, 0x0

    cmp-long v4, p1, v1

    if-lez v4, :cond_6

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    long-to-int v1, p1

    new-array v2, v1, [B

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iput v3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    .line 9
    iput v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    .line 10
    :cond_1
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    int-to-long v0, v0

    sub-long v0, p1, v0

    long-to-int v1, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 11
    :goto_0
    iget-object v4, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 12
    iget-object v4, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    sub-int/2addr v2, v0

    if-ge v2, v1, :cond_3

    add-int/2addr v0, v2

    .line 14
    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    sub-int/2addr v1, v2

    .line 15
    invoke-direct {p0, v1}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->allocateNextChunk(I)V

    if-eqz p3, :cond_4

    .line 16
    iput v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 17
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    .line 18
    iget-object p3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    long-to-int p3, p1

    .line 19
    iput p3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    :cond_5
    long-to-int p3, p1

    .line 20
    iput p3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    .line 21
    :cond_6
    iget p3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    int-to-long v0, p3

    cmp-long p3, p1, v0

    if-gez p3, :cond_b

    const/4 p3, 0x0

    .line 22
    :goto_2
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_b

    .line 23
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr p3, v0

    int-to-long v0, p3

    cmp-long v2, v0, p1

    if-ltz v2, :cond_a

    .line 24
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-le v0, v3, :cond_7

    .line 25
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 26
    :cond_7
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->seekToPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    int-to-long v0, v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_8

    long-to-int v0, p1

    .line 27
    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->seekToPosition:I

    goto :goto_4

    .line 28
    :cond_8
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    int-to-long v0, v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_9

    long-to-int v0, p1

    .line 29
    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    sub-int/2addr v0, p3

    .line 30
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    .line 31
    iput v3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    :cond_9
    :goto_4
    long-to-int v0, p1

    .line 32
    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 33
    :cond_b
    monitor-exit p0

    return-void

    .line 34
    :cond_c
    :try_start_2
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "). Maximal size is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->maxSize:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 35
    :goto_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method private startWriting()V
    .locals 4

    .line 1
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    .line 7
    .line 8
    iget-object v3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, [B

    .line 15
    .line 16
    array-length v0, v0

    .line 17
    if-lt v2, v0, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-direct {p0, v1}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->allocateNextChunk(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public declared-synchronized getBytes()[B
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    .line 3
    .line 4
    new-array v0, v0, [B

    .line 5
    .line 6
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, [B

    .line 25
    .line 26
    array-length v5, v4

    .line 27
    add-int/2addr v5, v3

    .line 28
    iget v6, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    .line 29
    .line 30
    if-le v5, v6, :cond_0

    .line 31
    .line 32
    sub-int/2addr v6, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    array-length v6, v4

    .line 35
    :goto_1
    invoke-static {v4, v2, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    add-int/2addr v3, v6

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    monitor-exit p0

    .line 43
    return-object v0

    .line 44
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    goto :goto_4

    .line 46
    :goto_3
    throw v0

    .line 47
    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized getCurrentPosition()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->seekToPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return v0

    .line 9
    :cond_0
    :try_start_1
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    throw v0
.end method

.method public getDetachedInputStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "Not implemented"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "Not implemented"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "Not implemented"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public declared-synchronized getSize()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public declared-synchronized isEOF()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->getCurrentPosition()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    monitor-exit p0

    .line 14
    return v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw v0
.end method

.method public read([B)I
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized read([BII)I
    .locals 6

    const-string v0, "Invalid start position ("

    monitor-enter p0

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    .line 2
    :try_start_0
    array-length v1, p1

    add-int v2, p2, p3

    if-lt v1, v2, :cond_5

    .line 3
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->seekToPosition:I

    iget v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 4
    monitor-exit p0

    return v2

    .line 5
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->performDelayedSeek()V

    .line 6
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    add-int v1, v0, p3

    iget v3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    if-le v1, v3, :cond_1

    sub-int p3, v3, v0

    :cond_1
    move v0, p3

    :cond_2
    :goto_0
    if-lez v0, :cond_4

    .line 7
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    iget v3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    .line 8
    iget v3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    sub-int v3, v1, v3

    if-le v0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v0

    .line 9
    :goto_1
    iget-object v4, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    iget v5, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget v5, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    invoke-static {v4, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v3

    .line 10
    iget v4, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    add-int/2addr v4, v3

    iput v4, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    sub-int/2addr v0, v3

    if-lt v4, v1, :cond_2

    .line 11
    iget v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    iget-object v3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 12
    iget v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    .line 13
    iput v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    .line 14
    iget-object v3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 15
    :cond_4
    iget p1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    add-int/2addr p1, p3

    iput p1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit p0

    return p3

    .line 17
    :cond_5
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") and length ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized rewind()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->seekToPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public declared-synchronized seek(JI)J
    .locals 4

    .line 1
    const-string v0, "Seek: unknown origin: "

    .line 2
    .line 3
    const-string v1, "Maximal size of the byte array stream was reached by seek to "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    if-eqz p3, :cond_3

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq p3, v2, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne p3, v2, :cond_1

    .line 13
    .line 14
    :try_start_0
    iget p3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    .line 15
    .line 16
    :cond_0
    :goto_0
    int-to-long v2, p3

    .line 17
    add-long/2addr p1, v2

    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_2

    .line 21
    :cond_1
    new-instance p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-direct {p1, p2}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_2
    iget p3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->seekToPosition:I

    .line 40
    .line 41
    const/4 v0, -0x1

    .line 42
    if-ne p3, v0, :cond_0

    .line 43
    .line 44
    iget p3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    :goto_1
    iget p3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->maxSize:I

    .line 48
    .line 49
    int-to-long v2, p3

    .line 50
    cmp-long p3, p1, v2

    .line 51
    .line 52
    if-gtz p3, :cond_4

    .line 53
    .line 54
    long-to-int p3, p1

    .line 55
    iput p3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->seekToPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return-wide p1

    .line 59
    :cond_4
    :try_start_1
    new-instance p3, Ljava/lang/RuntimeException;

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, ", maximal size is "

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget p1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->maxSize:I

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, " bytes"

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p3

    .line 92
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    goto :goto_4

    .line 94
    :goto_3
    throw p1

    .line 95
    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized setBytes([BZ)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->init()V

    .line 3
    .line 4
    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    new-array p2, v0, [B

    .line 10
    .line 11
    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    .line 13
    .line 14
    move-object p1, p2

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iget-object p2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iput v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    .line 24
    .line 25
    iput v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    .line 26
    .line 27
    iput v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    .line 28
    .line 29
    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p1
.end method

.method public declared-synchronized setSize(J)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->setSize(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized truncate()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public write([B)I
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->write([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized write([BII)I
    .locals 5

    const-string v0, "Invalid start position ("

    monitor-enter p0

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    .line 2
    :try_start_0
    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int v2, p2, p3

    if-lt v1, v2, :cond_5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->performDelayedSeek()V

    .line 5
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->startWriting()V

    .line 6
    :cond_1
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    iget v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 7
    array-length v2, v1

    iget v3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    sub-int/2addr v2, v3

    if-ge v2, p3, :cond_2

    goto :goto_0

    :cond_2
    move v2, p3

    .line 8
    :goto_0
    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget v3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    add-int/2addr v3, v2

    iput v3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    .line 10
    iget v4, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    add-int/2addr v4, v2

    iput v4, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    .line 11
    array-length v1, v1

    if-lt v3, v1, :cond_3

    .line 12
    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    .line 13
    iget v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    .line 14
    iget-object v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    const/4 v1, -0x1

    .line 15
    invoke-direct {p0, v1}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->allocateNextChunk(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    if-gtz p3, :cond_1

    .line 16
    iget p2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    iget p3, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    if-le p2, p3, :cond_4

    .line 17
    iput p2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    .line 18
    :cond_4
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->endWriting()V

    .line 19
    array-length p1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 20
    :cond_5
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") and length ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized writeFromInputStream(Ljava/io/InputStream;Z)V
    .locals 5

    .line 1
    const-string v0, "Maximal size of the byte array stream was reached. (Max size = "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->performDelayedSeek()V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x1

    .line 11
    if-nez v1, :cond_5

    .line 12
    .line 13
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->init()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget v4, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->maxSize:I

    .line 21
    .line 22
    if-gt v1, v4, :cond_4

    .line 23
    .line 24
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->initialSize:I

    .line 25
    .line 26
    if-le v1, v0, :cond_1

    .line 27
    .line 28
    new-array v0, v1, [B

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 31
    .line 32
    .line 33
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-ne v1, v3, :cond_0

    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :cond_0
    :try_start_1
    iput v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    .line 39
    .line 40
    iput v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    .line 41
    .line 42
    iput v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    .line 43
    .line 44
    iput v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    .line 45
    .line 46
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_4

    .line 54
    :cond_1
    :goto_0
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->startWriting()V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 58
    .line 59
    iget v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentChunkIndex:I

    .line 60
    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, [B

    .line 66
    .line 67
    iget v1, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    .line 68
    .line 69
    array-length v2, v0

    .line 70
    sub-int/2addr v2, v1

    .line 71
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-ne v1, v3, :cond_3

    .line 76
    .line 77
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    .line 78
    .line 79
    iput v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    .line 80
    .line 81
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->endWriting()V

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    iget v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    .line 86
    .line 87
    add-int/2addr v2, v1

    .line 88
    iput v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPosition:I

    .line 89
    .line 90
    iget v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    .line 91
    .line 92
    add-int/2addr v2, v1

    .line 93
    iput v2, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->currentPositionInChunk:I

    .line 94
    .line 95
    array-length v0, v0

    .line 96
    sub-int/2addr v0, v2

    .line 97
    if-nez v0, :cond_2

    .line 98
    .line 99
    invoke-direct {p0, v3}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->allocateNextChunk(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 104
    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->maxSize:I

    .line 111
    .line 112
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v0, ")"

    .line 116
    .line 117
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_5
    const/16 v0, 0x4000

    .line 129
    .line 130
    new-array v0, v0, [B

    .line 131
    .line 132
    :goto_2
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-ne v1, v3, :cond_7

    .line 137
    .line 138
    :goto_3
    if-eqz p2, :cond_6

    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .line 142
    .line 143
    :cond_6
    monitor-exit p0

    .line 144
    return-void

    .line 145
    :cond_7
    :try_start_2
    invoke-virtual {p0, v0, v2, v1}, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->write([BII)I

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    goto :goto_6

    .line 151
    :goto_5
    throw p1

    .line 152
    :goto_6
    goto :goto_5
.end method

.method public declared-synchronized writeToOutputStream(Ljava/io/OutputStream;Z)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->chunkList:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, [B

    .line 21
    .line 22
    array-length v4, v3

    .line 23
    add-int/2addr v4, v2

    .line 24
    iget v5, p0, Lnet/sf/sevenzipjbinding/util/ByteArrayStream;->size:I

    .line 25
    .line 26
    if-le v4, v5, :cond_0

    .line 27
    .line 28
    sub-int/2addr v5, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    array-length v5, v3

    .line 31
    :goto_1
    invoke-virtual {p1, v3, v1, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    add-int/2addr v2, v5

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_3

    .line 38
    :cond_1
    if-eqz p2, :cond_2

    .line 39
    .line 40
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :catchall_1
    move-exception p1

    .line 45
    goto :goto_4

    .line 46
    :catch_0
    :cond_2
    :goto_2
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_3
    if-eqz p2, :cond_3

    .line 49
    .line 50
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    .line 52
    .line 53
    :catch_1
    :cond_3
    :try_start_3
    throw v0

    .line 54
    :goto_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    goto :goto_6

    .line 56
    :goto_5
    throw p1

    .line 57
    :goto_6
    goto :goto_5
.end method
