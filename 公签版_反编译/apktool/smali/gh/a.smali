.class public final Lgh/a;
.super Lch/d;
.source "SourceFile"


# static fields
.field public static final u:[B

.field public static final v:[B

.field public static final w:[B

.field public static final x:[B

.field public static final y:[B

.field public static final z:[B


# instance fields
.field public final j:[I

.field public final k:[I

.field public final l:[I

.field public final m:Ljava/lang/String;

.field public final n:[Lqf/c;

.field public final o:Ljava/lang/Object;

.field public volatile p:Z

.field public final q:I

.field public r:Ljava/io/BufferedInputStream;

.field public s:Lgh/c;

.field public final t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lgh/a;->u:[B

    .line 8
    .line 9
    new-array v1, v0, [B

    .line 10
    .line 11
    fill-array-data v1, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v1, Lgh/a;->v:[B

    .line 15
    .line 16
    new-array v1, v0, [B

    .line 17
    .line 18
    fill-array-data v1, :array_2

    .line 19
    .line 20
    .line 21
    sput-object v1, Lgh/a;->w:[B

    .line 22
    .line 23
    new-array v1, v0, [B

    .line 24
    .line 25
    fill-array-data v1, :array_3

    .line 26
    .line 27
    .line 28
    sput-object v1, Lgh/a;->x:[B

    .line 29
    .line 30
    new-array v1, v0, [B

    .line 31
    .line 32
    fill-array-data v1, :array_4

    .line 33
    .line 34
    .line 35
    sput-object v1, Lgh/a;->y:[B

    .line 36
    .line 37
    new-array v0, v0, [B

    .line 38
    .line 39
    fill-array-data v0, :array_5

    .line 40
    .line 41
    .line 42
    sput-object v0, Lgh/a;->z:[B

    .line 43
    .line 44
    return-void

    .line 45
    :array_0
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    nop

    .line 51
    :array_1
    .array-data 1
        -0x1t
        -0x5t
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    nop

    .line 57
    :array_2
    .array-data 1
        -0x1t
        -0x4t
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    nop

    .line 63
    :array_3
    .array-data 1
        -0x1t
        -0x6t
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    nop

    .line 69
    :array_4
    .array-data 1
        -0x1t
        -0x10t
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    nop

    .line 75
    :array_5
    .array-data 1
        0x18t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lch/d;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lgh/a;->o:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lgh/a;->p:Z

    .line 13
    .line 14
    const/16 v1, 0x100

    .line 15
    .line 16
    new-array v2, v1, [I

    .line 17
    .line 18
    iput-object v2, p0, Lgh/a;->j:[I

    .line 19
    .line 20
    new-array v2, v1, [I

    .line 21
    .line 22
    iput-object v2, p0, Lgh/a;->k:[I

    .line 23
    .line 24
    new-array v2, v1, [I

    .line 25
    .line 26
    iput-object v2, p0, Lgh/a;->l:[I

    .line 27
    .line 28
    const-string v2, "VT100"

    .line 29
    .line 30
    iput-object v2, p0, Lgh/a;->m:Ljava/lang/String;

    .line 31
    .line 32
    new-array v1, v1, [Lqf/c;

    .line 33
    .line 34
    iput-object v1, p0, Lgh/a;->n:[Lqf/c;

    .line 35
    .line 36
    iput-boolean v0, p0, Lgh/a;->t:Z

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lgh/a;->r:Ljava/io/BufferedInputStream;

    .line 40
    .line 41
    iput-object v0, p0, Lgh/a;->s:Lgh/c;

    .line 42
    .line 43
    const/16 v0, 0x200

    .line 44
    .line 45
    iput v0, p0, Lgh/a;->q:I

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const/16 v2, 0x100

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lgh/a;->j:[I

    .line 8
    .line 9
    aput v0, v2, v1

    .line 10
    .line 11
    iget-object v2, p0, Lgh/a;->k:[I

    .line 12
    .line 13
    aput v0, v2, v1

    .line 14
    .line 15
    iget-object v2, p0, Lgh/a;->l:[I

    .line 16
    .line 17
    aput v0, v2, v1

    .line 18
    .line 19
    iget-object v2, p0, Lgh/a;->n:[Lqf/c;

    .line 20
    .line 21
    aget-object v2, v2, v1

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Lch/d;->b:Ljava/net/Socket;

    .line 27
    .line 28
    iget v3, p0, Lch/d;->a:I

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lch/d;->b:Ljava/net/Socket;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, Lch/d;->d:Ljava/io/InputStream;

    .line 40
    .line 41
    iget-object v1, p0, Lch/d;->b:Ljava/net/Socket;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 48
    .line 49
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 50
    .line 51
    iget-object v3, p0, Lch/d;->d:Ljava/io/InputStream;

    .line 52
    .line 53
    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lch/d;->d:Ljava/io/InputStream;

    .line 57
    .line 58
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 59
    .line 60
    iget-object v3, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 61
    .line 62
    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    :goto_1
    if-ge v1, v2, :cond_1

    .line 69
    .line 70
    iget-object v3, p0, Lgh/a;->n:[Lqf/c;

    .line 71
    .line 72
    aget-object v3, v3, v1

    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    new-instance v1, Lgh/b;

    .line 78
    .line 79
    iget-object v2, p0, Lch/d;->d:Ljava/io/InputStream;

    .line 80
    .line 81
    iget-boolean v3, p0, Lgh/a;->t:Z

    .line 82
    .line 83
    invoke-direct {v1, v2, p0, v3}, Lgh/b;-><init>(Ljava/io/InputStream;Lgh/a;Z)V

    .line 84
    .line 85
    .line 86
    iget-boolean v2, p0, Lgh/a;->t:Z

    .line 87
    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    iget-object v2, v1, Lgh/b;->j:Lfg/b;

    .line 91
    .line 92
    if-nez v2, :cond_2

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iput-boolean v0, v1, Lgh/b;->b:Z

    .line 96
    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    const/4 v2, 0x1

    .line 106
    add-int/2addr v0, v2

    .line 107
    const/16 v3, 0xa

    .line 108
    .line 109
    if-le v0, v3, :cond_3

    .line 110
    .line 111
    const/16 v0, 0xa

    .line 112
    .line 113
    :cond_3
    iget-object v3, v1, Lgh/b;->j:Lfg/b;

    .line 114
    .line 115
    invoke-virtual {v3, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, v1, Lgh/b;->j:Lfg/b;

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 121
    .line 122
    .line 123
    iget-object v0, v1, Lgh/b;->j:Lfg/b;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 126
    .line 127
    .line 128
    iput-boolean v2, v1, Lgh/b;->n:Z

    .line 129
    .line 130
    :cond_4
    :goto_2
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 131
    .line 132
    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 133
    .line 134
    .line 135
    iput-object v0, p0, Lgh/a;->r:Ljava/io/BufferedInputStream;

    .line 136
    .line 137
    new-instance v0, Lgh/c;

    .line 138
    .line 139
    invoke-direct {v0, p0}, Lgh/c;-><init>(Lgh/a;)V

    .line 140
    .line 141
    .line 142
    iput-object v0, p0, Lgh/a;->s:Lgh/c;

    .line 143
    .line 144
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lgh/a;->r:Ljava/io/BufferedInputStream;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    iget-object v1, p0, Lgh/a;->s:Lgh/c;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1}, Lgh/c;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    :cond_1
    iput-object v0, p0, Lgh/a;->s:Lgh/c;

    .line 20
    .line 21
    iput-object v0, p0, Lgh/a;->r:Ljava/io/BufferedInputStream;

    .line 22
    .line 23
    invoke-super {p0}, Lch/d;->d()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :goto_1
    iput-object v0, p0, Lgh/a;->s:Lgh/c;

    .line 28
    .line 29
    iput-object v0, p0, Lgh/a;->r:Ljava/io/BufferedInputStream;

    .line 30
    .line 31
    invoke-super {p0}, Lch/d;->d()V

    .line 32
    .line 33
    .line 34
    throw v1
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 10
    .line 11
    const-string v1, "Stream closed"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public final h()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    monitor-exit p0

    .line 3
    return-void

    .line 4
    :catchall_0
    move-exception v0

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    throw v0
.end method

.method public final declared-synchronized i()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lgh/a;->p:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lgh/a;->o:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    const/4 v1, 0x1

    .line 10
    :try_start_1
    iput-boolean v1, p0, Lgh/a;->p:Z

    .line 11
    .line 12
    iget-object v1, p0, Lgh/a;->o:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    :catchall_1
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 27
    throw v0
.end method

.method public final j(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lgh/a;->n:[Lqf/c;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    const/16 v1, 0x18

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lgh/a;->m:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    iget-object v3, p0, Lgh/a;->k:[I

    .line 24
    .line 25
    aget v4, v3, p1

    .line 26
    .line 27
    if-lez v4, :cond_1

    .line 28
    .line 29
    add-int/lit8 v5, v4, -0x1

    .line 30
    .line 31
    aput v5, v3, p1

    .line 32
    .line 33
    if-lez v5, :cond_1

    .line 34
    .line 35
    iget-object v5, p0, Lgh/a;->l:[I

    .line 36
    .line 37
    aget v5, v5, p1

    .line 38
    .line 39
    and-int/2addr v5, v2

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    add-int/lit8 v4, v4, -0x2

    .line 43
    .line 44
    aput v4, v3, p1

    .line 45
    .line 46
    :cond_1
    aget v4, v3, p1

    .line 47
    .line 48
    if-nez v4, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lgh/a;->p(I)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_3

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iget-object v1, p0, Lgh/a;->l:[I

    .line 59
    .line 60
    aget v3, v1, p1

    .line 61
    .line 62
    or-int/lit8 v3, v3, 0x4

    .line 63
    .line 64
    aput v3, v1, p1

    .line 65
    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v1, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 68
    .line 69
    sget-object v3, Lgh/a;->v:[B

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    monitor-exit p0

    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    throw p1

    .line 89
    :cond_2
    aget v1, v3, p1

    .line 90
    .line 91
    add-int/2addr v1, v2

    .line 92
    aput v1, v3, p1

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lgh/a;->s(I)V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_1
    iget-object v1, p0, Lgh/a;->l:[I

    .line 98
    .line 99
    aget v3, v1, p1

    .line 100
    .line 101
    or-int/2addr v2, v3

    .line 102
    aput v2, v1, p1

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lgh/a;->p(I)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    aget-object p1, v0, p1

    .line 111
    .line 112
    :cond_4
    return-void
.end method

.method public final k(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lgh/a;->k:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    iget-object v2, p0, Lgh/a;->l:[I

    .line 6
    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    add-int/lit8 v3, v1, -0x1

    .line 10
    .line 11
    aput v3, v0, p1

    .line 12
    .line 13
    if-lez v3, :cond_1

    .line 14
    .line 15
    aget v3, v2, p1

    .line 16
    .line 17
    and-int/lit8 v3, v3, 0x1

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    add-int/lit8 v1, v1, -0x2

    .line 23
    .line 24
    aput v1, v0, p1

    .line 25
    .line 26
    :cond_1
    :goto_0
    aget v0, v0, p1

    .line 27
    .line 28
    if-nez v0, :cond_4

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lgh/a;->p(I)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    aget v0, v2, p1

    .line 37
    .line 38
    and-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p0, p1}, Lgh/a;->p(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    :goto_1
    invoke-virtual {p0, p1}, Lgh/a;->s(I)V

    .line 50
    .line 51
    .line 52
    :cond_3
    aget v0, v2, p1

    .line 53
    .line 54
    and-int/lit8 v0, v0, -0x5

    .line 55
    .line 56
    aput v0, v2, p1

    .line 57
    .line 58
    :cond_4
    aget v0, v2, p1

    .line 59
    .line 60
    and-int/lit8 v0, v0, -0x2

    .line 61
    .line 62
    aput v0, v2, p1

    .line 63
    .line 64
    iget-object v0, p0, Lgh/a;->n:[Lqf/c;

    .line 65
    .line 66
    aget-object p1, v0, p1

    .line 67
    .line 68
    return-void
.end method

.method public final l(I[I)V
    .locals 2

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lgh/a;->n:[Lqf/c;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aget v1, p2, v1

    .line 7
    .line 8
    aget-object v0, v0, v1

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-le p1, v0, :cond_1

    .line 12
    .line 13
    const/16 p1, 0x18

    .line 14
    .line 15
    if-ne v1, p1, :cond_1

    .line 16
    .line 17
    aget p1, p2, v0

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget-object p1, p0, Lgh/a;->m:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 27
    .line 28
    sget-object p2, Lgh/a;->x:[B

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 34
    .line 35
    sget-object p2, Lgh/a;->z:[B

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 41
    .line 42
    iget-object p2, p0, Lgh/a;->m:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v0, p0, Lch/d;->g:Ljava/nio/charset/Charset;

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 54
    .line 55
    sget-object p2, Lgh/a;->y:[B

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    :goto_0
    monitor-exit p0

    .line 69
    goto :goto_2

    .line 70
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p1

    .line 72
    :cond_1
    :goto_2
    return-void
.end method

.method public final m(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lgh/a;->n:[Lqf/c;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    iget-object v1, p0, Lgh/a;->j:[I

    .line 6
    .line 7
    aget v2, v1, p1

    .line 8
    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    add-int/lit8 v2, v2, -0x1

    .line 12
    .line 13
    aput v2, v1, p1

    .line 14
    .line 15
    if-lez v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lgh/a;->t(I)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    aget v2, v1, p1

    .line 24
    .line 25
    add-int/lit8 v2, v2, -0x1

    .line 26
    .line 27
    aput v2, v1, p1

    .line 28
    .line 29
    :cond_0
    aget v2, v1, p1

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lgh/a;->o(I)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    aget v2, v1, p1

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    aput v2, v1, p1

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lgh/a;->r(I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v1, p0, Lgh/a;->l:[I

    .line 49
    .line 50
    aget v2, v1, p1

    .line 51
    .line 52
    or-int/lit8 v2, v2, 0x2

    .line 53
    .line 54
    aput v2, v1, p1

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lgh/a;->o(I)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    aget-object p1, v0, p1

    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method public final n(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lgh/a;->j:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    aput v1, v0, p1

    .line 10
    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lgh/a;->t(I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    aget v1, v0, p1

    .line 20
    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    aput v1, v0, p1

    .line 24
    .line 25
    :cond_0
    aget v0, v0, p1

    .line 26
    .line 27
    iget-object v1, p0, Lgh/a;->l:[I

    .line 28
    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lgh/a;->o(I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lgh/a;->t(I)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lgh/a;->o(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0, p1}, Lgh/a;->r(I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    aget v0, v1, p1

    .line 53
    .line 54
    and-int/lit8 v0, v0, -0x9

    .line 55
    .line 56
    aput v0, v1, p1

    .line 57
    .line 58
    :cond_3
    aget v0, v1, p1

    .line 59
    .line 60
    and-int/lit8 v0, v0, -0x3

    .line 61
    .line 62
    aput v0, v1, p1

    .line 63
    .line 64
    iget-object v0, p0, Lgh/a;->n:[Lqf/c;

    .line 65
    .line 66
    aget-object p1, v0, p1

    .line 67
    .line 68
    return-void
.end method

.method public final o(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgh/a;->l:[I

    .line 2
    .line 3
    aget p1, v0, p1

    .line 4
    .line 5
    and-int/lit8 p1, p1, 0x8

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public final p(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgh/a;->l:[I

    .line 2
    .line 3
    aget p1, v0, p1

    .line 4
    .line 5
    and-int/lit8 p1, p1, 0x4

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public final declared-synchronized q(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lgh/a;->t(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lgh/a;->o(I)Z

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_0
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1
.end method

.method public final declared-synchronized r(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 3
    .line 4
    sget-object v1, Lgh/a;->u:[B

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method

.method public final declared-synchronized s(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 3
    .line 4
    sget-object v1, Lgh/a;->w:[B

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method

.method public final t(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgh/a;->l:[I

    .line 2
    .line 3
    aget p1, v0, p1

    .line 4
    .line 5
    and-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method
