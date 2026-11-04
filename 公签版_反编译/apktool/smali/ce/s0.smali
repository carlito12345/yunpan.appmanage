.class public final Lce/s0;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I

.field public c:J

.field public d:Z

.field public e:Lce/t0;

.field public f:Lce/r0;

.field public final g:Z

.field public final h:Lce/n0;

.field public final i:Lce/m0;

.field public final j:Lce/q;


# direct methods
.method public constructor <init>(Lce/t0;)V
    .locals 1

    .line 1
    const-string v0, "JCIFS-WriterThread"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lce/s0;->f:Lce/r0;

    .line 8
    .line 9
    iget-object p1, p1, Lce/t0;->n:Lce/c1;

    .line 10
    .line 11
    iget-object p1, p1, Lce/c1;->f:Lce/y0;

    .line 12
    .line 13
    iget-object p1, p1, Lce/y0;->h:Lce/b1;

    .line 14
    .line 15
    const/16 v0, 0x10

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lce/b1;->q(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput-boolean p1, p0, Lce/s0;->g:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    new-instance p1, Lce/n0;

    .line 26
    .line 27
    invoke-direct {p1}, Lce/n0;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lce/s0;->h:Lce/n0;

    .line 31
    .line 32
    new-instance p1, Lce/o0;

    .line 33
    .line 34
    invoke-direct {p1}, Lce/o0;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lce/s0;->j:Lce/q;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p1, Lce/m0;

    .line 41
    .line 42
    invoke-direct {p1}, Lce/m0;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lce/s0;->i:Lce/m0;

    .line 46
    .line 47
    new-instance p1, Lce/p0;

    .line 48
    .line 49
    invoke-direct {p1}, Lce/p0;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lce/s0;->j:Lce/q;

    .line 53
    .line 54
    :goto_0
    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lce/s0;->d:Z

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final declared-synchronized a([BILce/t0;J)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lce/s0;->a:[B

    .line 3
    .line 4
    iput p2, p0, Lce/s0;->b:I

    .line 5
    .line 6
    iput-object p3, p0, Lce/s0;->e:Lce/t0;

    .line 7
    .line 8
    iput-wide p4, p0, Lce/s0;->c:J

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lce/s0;->d:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p1
.end method

.method public final run()V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lce/s0;->d:Z

    .line 7
    .line 8
    :goto_1
    iget-boolean v0, p0, Lce/s0;->d:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_5

    .line 18
    :catch_0
    move-exception v0

    .line 19
    goto :goto_2

    .line 20
    :catch_1
    move-exception v0

    .line 21
    goto :goto_3

    .line 22
    :cond_0
    iget v0, p0, Lce/s0;->b:I
    :try_end_0
    .catch Lce/r0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    return-void

    .line 29
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lce/s0;->g:Z

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lce/s0;->h:Lce/n0;

    .line 36
    .line 37
    iget-object v4, p0, Lce/s0;->e:Lce/t0;

    .line 38
    .line 39
    iget v5, v4, Lce/t0;->q:I

    .line 40
    .line 41
    iget-wide v6, p0, Lce/s0;->c:J

    .line 42
    .line 43
    iget-object v8, p0, Lce/s0;->a:[B

    .line 44
    .line 45
    iput v5, v1, Lce/n0;->F:I

    .line 46
    .line 47
    iput-wide v6, v1, Lce/n0;->M:J

    .line 48
    .line 49
    iput v0, v1, Lce/n0;->G:I

    .line 50
    .line 51
    iput-object v8, v1, Lce/n0;->L:[B

    .line 52
    .line 53
    iput v3, v1, Lce/n0;->K:I

    .line 54
    .line 55
    iput v0, v1, Lce/n0;->H:I

    .line 56
    .line 57
    iput-object v2, v1, Lce/q;->y:Lce/r;

    .line 58
    .line 59
    iget-object v0, p0, Lce/s0;->j:Lce/q;

    .line 60
    .line 61
    invoke-virtual {v4, v1, v0}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lce/s0;->i:Lce/m0;

    .line 66
    .line 67
    iget-object v4, p0, Lce/s0;->e:Lce/t0;

    .line 68
    .line 69
    iget v5, v4, Lce/t0;->q:I

    .line 70
    .line 71
    iget-wide v6, p0, Lce/s0;->c:J

    .line 72
    .line 73
    iget-object v8, p0, Lce/s0;->a:[B

    .line 74
    .line 75
    iput v5, v1, Lce/m0;->C:I

    .line 76
    .line 77
    const-wide v9, 0xffffffffL

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    and-long/2addr v6, v9

    .line 83
    long-to-int v5, v6

    .line 84
    iput v5, v1, Lce/m0;->E:I

    .line 85
    .line 86
    iput v0, v1, Lce/m0;->F:I

    .line 87
    .line 88
    iput-object v8, v1, Lce/m0;->H:[B

    .line 89
    .line 90
    iput v3, v1, Lce/m0;->G:I

    .line 91
    .line 92
    iput v0, v1, Lce/m0;->D:I

    .line 93
    .line 94
    iput-object v2, v1, Lce/q;->y:Lce/r;

    .line 95
    .line 96
    iget-object v0, p0, Lce/s0;->j:Lce/q;

    .line 97
    .line 98
    invoke-virtual {v4, v1, v0}, Lce/t0;->F(Lce/q;Lce/q;)V
    :try_end_2
    .catch Lce/r0; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :goto_2
    :try_start_3
    new-instance v1, Lce/r0;

    .line 103
    .line 104
    const-string v2, "WriterThread"

    .line 105
    .line 106
    invoke-direct {v1, v2, v0}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 107
    .line 108
    .line 109
    iput-object v1, p0, Lce/s0;->f:Lce/r0;

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :goto_3
    iput-object v0, p0, Lce/s0;->f:Lce/r0;

    .line 113
    .line 114
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 115
    .line 116
    .line 117
    monitor-exit p0

    .line 118
    return-void

    .line 119
    :goto_5
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    goto :goto_7

    .line 121
    :goto_6
    throw v0

    .line 122
    :goto_7
    goto :goto_6
.end method
