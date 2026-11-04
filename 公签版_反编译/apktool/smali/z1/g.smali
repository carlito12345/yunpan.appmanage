.class public final Lz1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Landroidx/media3/exoplayer/video/r;

.field public static final i:Ljava/util/Random;


# instance fields
.field public final a:Lr1/p0;

.field public final b:Lr1/o0;

.field public final c:Ljava/util/HashMap;

.field public d:Lz1/h;

.field public e:Lr1/q0;

.field public f:Ljava/lang/String;

.field public g:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/video/r;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/video/r;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lz1/g;->h:Landroidx/media3/exoplayer/video/r;

    .line 8
    .line 9
    new-instance v0, Ljava/util/Random;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lz1/g;->i:Ljava/util/Random;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lr1/p0;

    .line 5
    .line 6
    invoke-direct {v0}, Lr1/p0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lz1/g;->a:Lr1/p0;

    .line 10
    .line 11
    new-instance v0, Lr1/o0;

    .line 12
    .line 13
    invoke-direct {v0}, Lr1/o0;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lz1/g;->b:Lr1/o0;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lz1/g;->c:Ljava/util/HashMap;

    .line 24
    .line 25
    sget-object v0, Lr1/q0;->a:Lr1/n0;

    .line 26
    .line 27
    iput-object v0, p0, Lz1/g;->e:Lr1/q0;

    .line 28
    .line 29
    const-wide/16 v0, -0x1

    .line 30
    .line 31
    iput-wide v0, p0, Lz1/g;->g:J

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lz1/f;)V
    .locals 5

    .line 1
    iget-wide v0, p1, Lz1/f;->c:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    iget-boolean p1, p1, Lz1/f;->e:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iput-wide v0, p0, Lz1/g;->g:J

    .line 14
    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lz1/g;->f:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public final declared-synchronized b(Lz1/a;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lz1/g;->f:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lz1/g;->c:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lz1/f;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lz1/g;->a(Lz1/f;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lz1/g;->c:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lz1/f;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 46
    .line 47
    .line 48
    iget-boolean v2, v1, Lz1/f;->e:Z

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    iget-object v2, p0, Lz1/g;->d:Lz1/h;

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    iget-object v1, v1, Lz1/f;->a:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v2, p1, v1}, Lz1/h;->f(Lz1/a;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    goto :goto_4

    .line 66
    :goto_3
    throw p1

    .line 67
    :goto_4
    goto :goto_3
.end method

.method public final c(ILf2/c0;)Lz1/f;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lz1/g;->c:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const/4 v5, 0x0

    .line 18
    const-wide v6, 0x7fffffffffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    if-eqz v8, :cond_8

    .line 28
    .line 29
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    check-cast v8, Lz1/f;

    .line 34
    .line 35
    iget-wide v9, v8, Lz1/f;->c:J

    .line 36
    .line 37
    const-wide/16 v11, -0x1

    .line 38
    .line 39
    cmp-long v13, v9, v11

    .line 40
    .line 41
    if-nez v13, :cond_2

    .line 42
    .line 43
    iget v9, v8, Lz1/f;->b:I

    .line 44
    .line 45
    if-ne v1, v9, :cond_2

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    iget-object v9, v8, Lz1/f;->g:Lz1/g;

    .line 50
    .line 51
    iget-object v10, v9, Lz1/g;->c:Ljava/util/HashMap;

    .line 52
    .line 53
    iget-object v13, v9, Lz1/g;->f:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    check-cast v10, Lz1/f;

    .line 60
    .line 61
    if-eqz v10, :cond_1

    .line 62
    .line 63
    iget-wide v13, v10, Lz1/f;->c:J

    .line 64
    .line 65
    cmp-long v10, v13, v11

    .line 66
    .line 67
    if-eqz v10, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-wide v9, v9, Lz1/g;->g:J

    .line 71
    .line 72
    const-wide/16 v13, 0x1

    .line 73
    .line 74
    add-long/2addr v13, v9

    .line 75
    :goto_1
    iget-wide v9, v2, Lf2/c0;->d:J

    .line 76
    .line 77
    cmp-long v15, v9, v13

    .line 78
    .line 79
    if-ltz v15, :cond_2

    .line 80
    .line 81
    iput-wide v9, v8, Lz1/f;->c:J

    .line 82
    .line 83
    :cond_2
    iget-object v9, v8, Lz1/f;->d:Lf2/c0;

    .line 84
    .line 85
    if-eqz v2, :cond_5

    .line 86
    .line 87
    iget-wide v13, v2, Lf2/c0;->d:J

    .line 88
    .line 89
    cmp-long v10, v13, v11

    .line 90
    .line 91
    if-nez v10, :cond_3

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    if-nez v9, :cond_4

    .line 95
    .line 96
    invoke-virtual/range {p2 .. p2}, Lf2/c0;->b()Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    if-nez v10, :cond_0

    .line 101
    .line 102
    iget-wide v11, v8, Lz1/f;->c:J

    .line 103
    .line 104
    cmp-long v10, v13, v11

    .line 105
    .line 106
    if-nez v10, :cond_0

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_4
    iget-wide v10, v9, Lf2/c0;->d:J

    .line 110
    .line 111
    cmp-long v12, v13, v10

    .line 112
    .line 113
    if-nez v12, :cond_0

    .line 114
    .line 115
    iget v10, v2, Lf2/c0;->b:I

    .line 116
    .line 117
    iget v11, v9, Lf2/c0;->b:I

    .line 118
    .line 119
    if-ne v10, v11, :cond_0

    .line 120
    .line 121
    iget v10, v2, Lf2/c0;->c:I

    .line 122
    .line 123
    iget v11, v9, Lf2/c0;->c:I

    .line 124
    .line 125
    if-ne v10, v11, :cond_0

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    :goto_2
    iget v10, v8, Lz1/f;->b:I

    .line 129
    .line 130
    if-ne v1, v10, :cond_0

    .line 131
    .line 132
    :goto_3
    iget-wide v10, v8, Lz1/f;->c:J

    .line 133
    .line 134
    const-wide/16 v12, -0x1

    .line 135
    .line 136
    cmp-long v14, v10, v12

    .line 137
    .line 138
    if-eqz v14, :cond_7

    .line 139
    .line 140
    cmp-long v12, v10, v6

    .line 141
    .line 142
    if-gez v12, :cond_6

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_6
    cmp-long v12, v10, v6

    .line 146
    .line 147
    if-nez v12, :cond_0

    .line 148
    .line 149
    sget-object v10, Lu1/f0;->a:Ljava/lang/String;

    .line 150
    .line 151
    iget-object v10, v5, Lz1/f;->d:Lf2/c0;

    .line 152
    .line 153
    if-eqz v10, :cond_0

    .line 154
    .line 155
    if-eqz v9, :cond_0

    .line 156
    .line 157
    move-object v5, v8

    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_7
    :goto_4
    move-object v5, v8

    .line 161
    move-wide v6, v10

    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_8
    if-nez v5, :cond_9

    .line 165
    .line 166
    sget-object v4, Lz1/g;->h:Landroidx/media3/exoplayer/video/r;

    .line 167
    .line 168
    invoke-virtual {v4}, Landroidx/media3/exoplayer/video/r;->get()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Ljava/lang/String;

    .line 173
    .line 174
    new-instance v5, Lz1/f;

    .line 175
    .line 176
    invoke-direct {v5, v0, v4, v1, v2}, Lz1/f;-><init>(Lz1/g;Ljava/lang/String;ILf2/c0;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    :cond_9
    return-object v5
.end method

.method public final declared-synchronized d(Lr1/q0;Lf2/c0;)Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p2, Lf2/c0;->a:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, Lz1/g;->b:Lr1/o0;

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Lr1/o0;->c:I

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lz1/g;->c(ILf2/c0;)Lz1/f;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p1, p1, Lz1/f;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object p1

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

.method public final e(Lz1/a;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lz1/a;->b:Lr1/q0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr1/q0;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lz1/g;->c:Ljava/util/HashMap;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lz1/g;->f:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lz1/f;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lz1/g;->a(Lz1/f;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lz1/g;->f:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lz1/f;

    .line 35
    .line 36
    iget v1, p1, Lz1/a;->c:I

    .line 37
    .line 38
    iget-object v2, p1, Lz1/a;->d:Lf2/c0;

    .line 39
    .line 40
    invoke-virtual {p0, v1, v2}, Lz1/g;->c(ILf2/c0;)Lz1/f;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v3, v3, Lz1/f;->a:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v3, p0, Lz1/g;->f:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lz1/g;->f(Lz1/a;)V

    .line 49
    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v2}, Lf2/c0;->b()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget-wide v3, v2, Lf2/c0;->d:J

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget-wide v5, v0, Lz1/f;->c:J

    .line 64
    .line 65
    cmp-long p1, v5, v3

    .line 66
    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    iget-object p1, v0, Lz1/f;->d:Lf2/c0;

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    iget v0, p1, Lf2/c0;->b:I

    .line 74
    .line 75
    iget v5, v2, Lf2/c0;->b:I

    .line 76
    .line 77
    if-ne v0, v5, :cond_2

    .line 78
    .line 79
    iget p1, p1, Lf2/c0;->c:I

    .line 80
    .line 81
    iget v0, v2, Lf2/c0;->c:I

    .line 82
    .line 83
    if-eq p1, v0, :cond_3

    .line 84
    .line 85
    :cond_2
    new-instance p1, Lf2/c0;

    .line 86
    .line 87
    iget-object v0, v2, Lf2/c0;->a:Ljava/lang/Object;

    .line 88
    .line 89
    invoke-direct {p1, v0, v3, v4}, Lf2/c0;-><init>(Ljava/lang/Object;J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v1, p1}, Lz1/g;->c(ILf2/c0;)Lz1/f;

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lz1/g;->d:Lz1/h;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    :cond_3
    return-void
.end method

.method public final declared-synchronized f(Lz1/a;)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lz1/g;->d:Lz1/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p1, Lz1/a;->b:Lr1/q0;

    .line 8
    .line 9
    invoke-virtual {v0}, Lr1/q0;->p()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :cond_0
    :try_start_1
    iget-object v0, p1, Lz1/a;->d:Lf2/c0;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget-wide v0, v0, Lf2/c0;->d:J

    .line 22
    .line 23
    const-wide/16 v2, -0x1

    .line 24
    .line 25
    cmp-long v4, v0, v2

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    iget-object v4, p0, Lz1/g;->c:Ljava/util/HashMap;

    .line 30
    .line 31
    iget-object v5, p0, Lz1/g;->f:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lz1/f;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    iget-wide v4, v4, Lz1/f;->c:J

    .line 42
    .line 43
    cmp-long v6, v4, v2

    .line 44
    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-wide v4, p0, Lz1/g;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    const-wide/16 v6, 0x1

    .line 51
    .line 52
    add-long/2addr v4, v6

    .line 53
    :goto_0
    cmp-long v6, v0, v4

    .line 54
    .line 55
    if-gez v6, :cond_2

    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :cond_2
    :try_start_2
    iget-object v0, p0, Lz1/g;->c:Ljava/util/HashMap;

    .line 60
    .line 61
    iget-object v1, p0, Lz1/g;->f:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lz1/f;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    iget-wide v4, v0, Lz1/f;->c:J

    .line 72
    .line 73
    cmp-long v1, v4, v2

    .line 74
    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    iget v0, v0, Lz1/f;->b:I

    .line 78
    .line 79
    iget v1, p1, Lz1/a;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .line 81
    if-eq v0, v1, :cond_3

    .line 82
    .line 83
    monitor-exit p0

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :cond_3
    :try_start_3
    iget v0, p1, Lz1/a;->c:I

    .line 89
    .line 90
    iget-object v1, p1, Lz1/a;->d:Lf2/c0;

    .line 91
    .line 92
    invoke-virtual {p0, v0, v1}, Lz1/g;->c(ILf2/c0;)Lz1/f;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v1, p0, Lz1/g;->f:Ljava/lang/String;

    .line 97
    .line 98
    if-nez v1, :cond_4

    .line 99
    .line 100
    iget-object v1, v0, Lz1/f;->a:Ljava/lang/String;

    .line 101
    .line 102
    iput-object v1, p0, Lz1/g;->f:Ljava/lang/String;

    .line 103
    .line 104
    :cond_4
    iget-object v1, p1, Lz1/a;->d:Lf2/c0;

    .line 105
    .line 106
    const/4 v2, 0x1

    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    invoke-virtual {v1}, Lf2/c0;->b()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_5

    .line 114
    .line 115
    new-instance v1, Lf2/c0;

    .line 116
    .line 117
    iget-object v3, p1, Lz1/a;->d:Lf2/c0;

    .line 118
    .line 119
    iget-object v4, v3, Lf2/c0;->a:Ljava/lang/Object;

    .line 120
    .line 121
    iget-wide v5, v3, Lf2/c0;->d:J

    .line 122
    .line 123
    iget v3, v3, Lf2/c0;->b:I

    .line 124
    .line 125
    invoke-direct {v1, v3, v5, v6, v4}, Lf2/c0;-><init>(IJLjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    iget v3, p1, Lz1/a;->c:I

    .line 129
    .line 130
    invoke-virtual {p0, v3, v1}, Lz1/g;->c(ILf2/c0;)Lz1/f;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-boolean v3, v1, Lz1/f;->e:Z

    .line 135
    .line 136
    if-nez v3, :cond_5

    .line 137
    .line 138
    iput-boolean v2, v1, Lz1/f;->e:Z

    .line 139
    .line 140
    iget-object v1, p1, Lz1/a;->b:Lr1/q0;

    .line 141
    .line 142
    iget-object v3, p1, Lz1/a;->d:Lf2/c0;

    .line 143
    .line 144
    iget-object v3, v3, Lf2/c0;->a:Ljava/lang/Object;

    .line 145
    .line 146
    iget-object v4, p0, Lz1/g;->b:Lr1/o0;

    .line 147
    .line 148
    invoke-virtual {v1, v3, v4}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lz1/g;->b:Lr1/o0;

    .line 152
    .line 153
    iget-object v3, p1, Lz1/a;->d:Lf2/c0;

    .line 154
    .line 155
    iget v3, v3, Lf2/c0;->b:I

    .line 156
    .line 157
    invoke-virtual {v1, v3}, Lr1/o0;->d(I)J

    .line 158
    .line 159
    .line 160
    const-wide/16 v3, 0x0

    .line 161
    .line 162
    invoke-static {v3, v4}, Lu1/f0;->R(J)J

    .line 163
    .line 164
    .line 165
    move-result-wide v5

    .line 166
    iget-object v1, p0, Lz1/g;->b:Lr1/o0;

    .line 167
    .line 168
    iget-wide v7, v1, Lr1/o0;->e:J

    .line 169
    .line 170
    invoke-static {v7, v8}, Lu1/f0;->R(J)J

    .line 171
    .line 172
    .line 173
    move-result-wide v7

    .line 174
    add-long/2addr v5, v7

    .line 175
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Lz1/g;->d:Lz1/h;

    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    :cond_5
    iget-boolean v1, v0, Lz1/f;->e:Z

    .line 184
    .line 185
    if-nez v1, :cond_6

    .line 186
    .line 187
    iput-boolean v2, v0, Lz1/f;->e:Z

    .line 188
    .line 189
    iget-object v1, p0, Lz1/g;->d:Lz1/h;

    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    :cond_6
    iget-object v1, v0, Lz1/f;->a:Ljava/lang/String;

    .line 195
    .line 196
    iget-object v3, p0, Lz1/g;->f:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_7

    .line 203
    .line 204
    iget-boolean v1, v0, Lz1/f;->f:Z

    .line 205
    .line 206
    if-nez v1, :cond_7

    .line 207
    .line 208
    iput-boolean v2, v0, Lz1/f;->f:Z

    .line 209
    .line 210
    iget-object v1, p0, Lz1/g;->d:Lz1/h;

    .line 211
    .line 212
    iget-object v0, v0, Lz1/f;->a:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v1, p1, v0}, Lz1/h;->e(Lz1/a;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    .line 216
    .line 217
    :cond_7
    monitor-exit p0

    .line 218
    return-void

    .line 219
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 220
    throw p1
.end method

.method public final declared-synchronized g(Lz1/a;I)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lz1/g;->d:Lz1/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p2, 0x0

    .line 12
    :goto_0
    iget-object v0, p0, Lz1/g;->c:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_4

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lz1/f;

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Lz1/f;->a(Lz1/a;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 41
    .line 42
    .line 43
    iget-object v2, v1, Lz1/f;->a:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p0, Lz1/g;->f:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lz1/g;->a(Lz1/f;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_3

    .line 59
    :cond_2
    :goto_2
    iget-boolean v3, v1, Lz1/f;->e:Z

    .line 60
    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    iget-boolean v2, v1, Lz1/f;->f:Z

    .line 68
    .line 69
    :cond_3
    iget-object v2, p0, Lz1/g;->d:Lz1/h;

    .line 70
    .line 71
    iget-object v1, v1, Lz1/f;->a:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v2, p1, v1}, Lz1/h;->f(Lz1/a;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-virtual {p0, p1}, Lz1/g;->e(Lz1/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    monitor-exit p0

    .line 81
    return-void

    .line 82
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    goto :goto_5

    .line 84
    :goto_4
    throw p1

    .line 85
    :goto_5
    goto :goto_4
.end method
