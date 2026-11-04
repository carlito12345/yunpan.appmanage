.class final Lokhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation


# instance fields
.field activeWriter:Z

.field final buffer:Lfg/i;

.field final frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

.field final isClient:Z

.field private final maskCursor:Lfg/g;

.field private final maskKey:[B

.field final random:Ljava/util/Random;

.field final sink:Lfg/j;

.field final sinkBuffer:Lfg/i;

.field writerClosed:Z


# direct methods
.method public constructor <init>(ZLfg/j;Ljava/util/Random;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfg/i;

    .line 5
    .line 6
    invoke-direct {v0}, Lfg/i;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lfg/i;

    .line 10
    .line 11
    new-instance v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;-><init>(Lokhttp3/internal/ws/WebSocketWriter;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    .line 17
    .line 18
    if-eqz p2, :cond_3

    .line 19
    .line 20
    if-eqz p3, :cond_2

    .line 21
    .line 22
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    .line 23
    .line 24
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lfg/j;

    .line 25
    .line 26
    invoke-interface {p2}, Lfg/j;->buffer()Lfg/i;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lfg/i;

    .line 31
    .line 32
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    const/4 p3, 0x4

    .line 38
    new-array p3, p3, [B

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object p3, p2

    .line 42
    :goto_0
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    new-instance p2, Lfg/g;

    .line 47
    .line 48
    invoke-direct {p2}, Lfg/g;-><init>()V

    .line 49
    .line 50
    .line 51
    :cond_1
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lfg/g;

    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 55
    .line 56
    const-string p2, "random == null"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 63
    .line 64
    const-string p2, "sink == null"

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method private writeControlFrame(ILfg/l;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p2}, Lfg/l;->g()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-long v1, v0

    .line 10
    const-wide/16 v3, 0x7d

    .line 11
    .line 12
    cmp-long v5, v1, v3

    .line 13
    .line 14
    if-gtz v5, :cond_2

    .line 15
    .line 16
    or-int/lit16 p1, p1, 0x80

    .line 17
    .line 18
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lfg/i;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lfg/i;->W(I)V

    .line 21
    .line 22
    .line 23
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    or-int/lit16 p1, v0, 0x80

    .line 28
    .line 29
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lfg/i;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lfg/i;->W(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    .line 35
    .line 36
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lfg/i;

    .line 42
    .line 43
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lfg/i;->U([B)V

    .line 46
    .line 47
    .line 48
    if-lez v0, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lfg/i;

    .line 51
    .line 52
    iget-wide v0, p1, Lfg/i;->b:J

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lfg/i;->T(Lfg/l;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lfg/i;

    .line 58
    .line 59
    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lfg/g;

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lfg/i;->O(Lfg/g;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lfg/g;

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Lfg/g;->r(J)I

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lfg/g;

    .line 70
    .line 71
    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    .line 72
    .line 73
    invoke-static {p1, p2}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lfg/g;[B)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lfg/g;

    .line 77
    .line 78
    invoke-virtual {p1}, Lfg/g;->close()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lfg/i;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lfg/i;->W(I)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lfg/i;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lfg/i;->T(Lfg/l;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_0
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lfg/j;

    .line 93
    .line 94
    invoke-interface {p1}, Lfg/j;->flush()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    const-string p2, "Payload size must be less than or equal to 125"

    .line 101
    .line 102
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 107
    .line 108
    const-string p2, "closed"

    .line 109
    .line 110
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1
.end method


# virtual methods
.method public newMessageSink(IJ)Lfg/x;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 7
    .line 8
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    .line 9
    .line 10
    iput p1, v1, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    .line 11
    .line 12
    iput-wide p2, v1, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    .line 13
    .line 14
    iput-boolean v0, v1, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, v1, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string p2, "Another message writer is active. Did you call close()?"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public writeClose(ILfg/l;)V
    .locals 1

    .line 1
    sget-object v0, Lfg/l;->d:Lfg/l;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-static {p1}, Lokhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    .line 10
    .line 11
    .line 12
    :cond_1
    new-instance v0, Lfg/i;

    .line 13
    .line 14
    invoke-direct {v0}, Lfg/i;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lfg/i;->b0(I)V

    .line 18
    .line 19
    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, p2}, Lfg/i;->T(Lfg/l;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-wide p1, v0, Lfg/i;->b:J

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Lfg/i;->c(J)Lfg/l;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_3
    const/16 p1, 0x8

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    :try_start_0
    invoke-direct {p0, p1, v0}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILfg/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    iput-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    iput-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    .line 42
    .line 43
    throw p1
.end method

.method public writeMessageFrame(IJZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    if-eqz p5, :cond_1

    .line 11
    .line 12
    or-int/lit16 p1, p1, 0x80

    .line 13
    .line 14
    :cond_1
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lfg/i;

    .line 15
    .line 16
    invoke-virtual {p4, p1}, Lfg/i;->W(I)V

    .line 17
    .line 18
    .line 19
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    const/16 v0, 0x80

    .line 24
    .line 25
    :cond_2
    const-wide/16 p4, 0x7d

    .line 26
    .line 27
    cmp-long p1, p2, p4

    .line 28
    .line 29
    if-gtz p1, :cond_3

    .line 30
    .line 31
    long-to-int p1, p2

    .line 32
    or-int/2addr p1, v0

    .line 33
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lfg/i;

    .line 34
    .line 35
    invoke-virtual {p4, p1}, Lfg/i;->W(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    const-wide/32 p4, 0xffff

    .line 40
    .line 41
    .line 42
    cmp-long p1, p2, p4

    .line 43
    .line 44
    if-gtz p1, :cond_4

    .line 45
    .line 46
    or-int/lit8 p1, v0, 0x7e

    .line 47
    .line 48
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lfg/i;

    .line 49
    .line 50
    invoke-virtual {p4, p1}, Lfg/i;->W(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lfg/i;

    .line 54
    .line 55
    long-to-int p4, p2

    .line 56
    invoke-virtual {p1, p4}, Lfg/i;->b0(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    or-int/lit8 p1, v0, 0x7f

    .line 61
    .line 62
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lfg/i;

    .line 63
    .line 64
    invoke-virtual {p4, p1}, Lfg/i;->W(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lfg/i;

    .line 68
    .line 69
    invoke-virtual {p1, p2, p3}, Lfg/i;->a0(J)V

    .line 70
    .line 71
    .line 72
    :goto_1
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    .line 73
    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    .line 77
    .line 78
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    .line 79
    .line 80
    invoke-virtual {p1, p4}, Ljava/util/Random;->nextBytes([B)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lfg/i;

    .line 84
    .line 85
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    .line 86
    .line 87
    invoke-virtual {p1, p4}, Lfg/i;->U([B)V

    .line 88
    .line 89
    .line 90
    const-wide/16 p4, 0x0

    .line 91
    .line 92
    cmp-long p1, p2, p4

    .line 93
    .line 94
    if-lez p1, :cond_6

    .line 95
    .line 96
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lfg/i;

    .line 97
    .line 98
    iget-wide p4, p1, Lfg/i;->b:J

    .line 99
    .line 100
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lfg/i;

    .line 101
    .line 102
    invoke-virtual {p1, v0, p2, p3}, Lfg/i;->write(Lfg/i;J)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lfg/i;

    .line 106
    .line 107
    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lfg/g;

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Lfg/i;->O(Lfg/g;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lfg/g;

    .line 113
    .line 114
    invoke-virtual {p1, p4, p5}, Lfg/g;->r(J)I

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lfg/g;

    .line 118
    .line 119
    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    .line 120
    .line 121
    invoke-static {p1, p2}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lfg/g;[B)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lfg/g;

    .line 125
    .line 126
    invoke-virtual {p1}, Lfg/g;->close()V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lfg/i;

    .line 131
    .line 132
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lfg/i;

    .line 133
    .line 134
    invoke-virtual {p1, p4, p2, p3}, Lfg/i;->write(Lfg/i;J)V

    .line 135
    .line 136
    .line 137
    :cond_6
    :goto_2
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lfg/j;

    .line 138
    .line 139
    invoke-interface {p1}, Lfg/j;->emit()Lfg/j;

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 144
    .line 145
    const-string p2, "closed"

    .line 146
    .line 147
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1
.end method

.method public writePing(Lfg/l;)V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILfg/l;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writePong(Lfg/l;)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILfg/l;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
