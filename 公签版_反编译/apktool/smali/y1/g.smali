.class public final Ly1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly1/h0;


# static fields
.field public static final r:Lu7/y0;


# instance fields
.field public final a:Lr1/p0;

.field public final b:Lr1/o0;

.field public final c:Li2/d;

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:J

.field public final l:I

.field public final m:Z

.field public final n:J

.field public final o:Lu7/d1;

.field public final p:Lj$/util/concurrent/ConcurrentHashMap;

.field public q:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x6

    .line 2
    sget-object v1, Lu7/g0;->b:Lu7/e0;

    .line 3
    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "file"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    const-string v2, "content"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    aput-object v2, v1, v3

    .line 15
    .line 16
    const-string v2, "data"

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    aput-object v2, v1, v3

    .line 20
    .line 21
    const-string v2, "android.resource"

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    aput-object v2, v1, v3

    .line 25
    .line 26
    const-string v2, "rawresource"

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    aput-object v2, v1, v3

    .line 30
    .line 31
    const-string v2, "asset"

    .line 32
    .line 33
    const/4 v3, 0x5

    .line 34
    aput-object v2, v1, v3

    .line 35
    .line 36
    invoke-static {v0, v1}, Lu7/q;->b(I[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lu7/g0;->i(I[Ljava/lang/Object;)Lu7/y0;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Ly1/g;->r:Lu7/y0;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 1
    new-instance v0, Li2/d;

    .line 2
    .line 3
    invoke-direct {v0}, Li2/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lu7/d1;->g:Lu7/d1;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/16 v2, 0x3e8

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const-string v4, "bufferForPlaybackMs"

    .line 15
    .line 16
    const-string v5, "0"

    .line 17
    .line 18
    invoke-static {v4, v2, v3, v5}, Ly1/g;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v6, "bufferForPlaybackForLocalPlaybackMs"

    .line 22
    .line 23
    invoke-static {v6, v2, v3, v5}, Ly1/g;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/16 v7, 0x7d0

    .line 27
    .line 28
    const-string v8, "bufferForPlaybackAfterRebufferMs"

    .line 29
    .line 30
    invoke-static {v8, v7, v3, v5}, Ly1/g;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v9, "bufferForPlaybackAfterRebufferForLocalPlaybackMs"

    .line 34
    .line 35
    invoke-static {v9, v2, v3, v5}, Ly1/g;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const v10, 0xc350

    .line 39
    .line 40
    .line 41
    const-string v11, "minBufferMs"

    .line 42
    .line 43
    invoke-static {v11, v10, v2, v4}, Ly1/g;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v4, "minBufferForLocalPlaybackMs"

    .line 47
    .line 48
    invoke-static {v4, v2, v2, v6}, Ly1/g;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v11, v10, v7, v8}, Ly1/g;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v4, v2, v2, v9}, Ly1/g;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v6, "maxBufferMs"

    .line 58
    .line 59
    invoke-static {v6, v10, v10, v11}, Ly1/g;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v6, "maxBufferForLocalPlaybackMs"

    .line 63
    .line 64
    invoke-static {v6, v10, v2, v4}, Ly1/g;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v4, "backBufferDurationMs"

    .line 68
    .line 69
    invoke-static {v4, v3, v3, v5}, Ly1/g;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v4, Lr1/p0;

    .line 73
    .line 74
    invoke-direct {v4}, Lr1/p0;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v4, p0, Ly1/g;->a:Lr1/p0;

    .line 78
    .line 79
    new-instance v4, Lr1/o0;

    .line 80
    .line 81
    invoke-direct {v4}, Lr1/o0;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v4, p0, Ly1/g;->b:Lr1/o0;

    .line 85
    .line 86
    iput-object v0, p0, Ly1/g;->c:Li2/d;

    .line 87
    .line 88
    int-to-long v4, v10

    .line 89
    invoke-static {v4, v5}, Lu1/f0;->G(J)J

    .line 90
    .line 91
    .line 92
    move-result-wide v8

    .line 93
    iput-wide v8, p0, Ly1/g;->d:J

    .line 94
    .line 95
    int-to-long v8, v2

    .line 96
    invoke-static {v8, v9}, Lu1/f0;->G(J)J

    .line 97
    .line 98
    .line 99
    move-result-wide v10

    .line 100
    iput-wide v10, p0, Ly1/g;->e:J

    .line 101
    .line 102
    invoke-static {v4, v5}, Lu1/f0;->G(J)J

    .line 103
    .line 104
    .line 105
    move-result-wide v10

    .line 106
    iput-wide v10, p0, Ly1/g;->f:J

    .line 107
    .line 108
    invoke-static {v4, v5}, Lu1/f0;->G(J)J

    .line 109
    .line 110
    .line 111
    move-result-wide v4

    .line 112
    iput-wide v4, p0, Ly1/g;->g:J

    .line 113
    .line 114
    invoke-static {v8, v9}, Lu1/f0;->G(J)J

    .line 115
    .line 116
    .line 117
    move-result-wide v4

    .line 118
    iput-wide v4, p0, Ly1/g;->h:J

    .line 119
    .line 120
    invoke-static {v8, v9}, Lu1/f0;->G(J)J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    iput-wide v4, p0, Ly1/g;->i:J

    .line 125
    .line 126
    int-to-long v4, v7

    .line 127
    invoke-static {v4, v5}, Lu1/f0;->G(J)J

    .line 128
    .line 129
    .line 130
    move-result-wide v4

    .line 131
    iput-wide v4, p0, Ly1/g;->j:J

    .line 132
    .line 133
    invoke-static {v8, v9}, Lu1/f0;->G(J)J

    .line 134
    .line 135
    .line 136
    move-result-wide v4

    .line 137
    iput-wide v4, p0, Ly1/g;->k:J

    .line 138
    .line 139
    const/4 v0, -0x1

    .line 140
    iput v0, p0, Ly1/g;->l:I

    .line 141
    .line 142
    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Ly1/g;->m:Z

    .line 144
    .line 145
    int-to-long v2, v3

    .line 146
    invoke-static {v2, v3}, Lu1/f0;->G(J)J

    .line 147
    .line 148
    .line 149
    move-result-wide v2

    .line 150
    iput-wide v2, p0, Ly1/g;->n:J

    .line 151
    .line 152
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 153
    .line 154
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 155
    .line 156
    .line 157
    iput-object v0, p0, Ly1/g;->p:Lj$/util/concurrent/ConcurrentHashMap;

    .line 158
    .line 159
    invoke-static {v1}, Lu7/d1;->b(Ljava/util/Map;)Lu7/d1;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iput-object v0, p0, Ly1/g;->o:Lu7/d1;

    .line 164
    .line 165
    const-wide/16 v0, -0x1

    .line 166
    .line 167
    iput-wide v0, p0, Ly1/g;->q:J

    .line 168
    .line 169
    return-void
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 1
    if-lt p1, p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const/4 p2, 0x2

    .line 7
    new-array p2, p2, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    aput-object p0, p2, v0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    aput-object p3, p2, p0

    .line 14
    .line 15
    const-string p0, "%s cannot be less than %s"

    .line 16
    .line 17
    invoke-static {p0, p2}, Landroid/support/v4/media/session/b;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method


# virtual methods
.method public final b(Ly1/g0;)Z
    .locals 14

    .line 1
    iget-object v0, p1, Ly1/g0;->a:Lz1/i;

    .line 2
    .line 3
    iget-object v1, p0, Ly1/g;->p:Lj$/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ly1/f;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Ly1/g;->p:Lj$/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ly1/f;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    monitor-enter v2

    .line 26
    :try_start_0
    iget v3, v2, Ly1/f;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit v2

    .line 29
    iget-object v2, p0, Ly1/g;->c:Li2/d;

    .line 30
    .line 31
    iget v2, v2, Li2/d;->b:I

    .line 32
    .line 33
    mul-int v3, v3, v2

    .line 34
    .line 35
    iget-object v2, p0, Ly1/g;->p:Lj$/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ly1/f;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget v2, v2, Ly1/f;->c:I

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    const/4 v5, 0x0

    .line 50
    if-lt v3, v2, :cond_0

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v2, 0x0

    .line 55
    :goto_0
    sget-object v3, Lz1/i;->c:Lz1/i;

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    xor-int/lit8 p1, v2, 0x1

    .line 64
    .line 65
    return p1

    .line 66
    :cond_1
    iget-object v0, p1, Ly1/g0;->c:Lf2/c0;

    .line 67
    .line 68
    iget-object v0, v0, Lf2/c0;->a:Ljava/lang/Object;

    .line 69
    .line 70
    iget-object v3, p0, Ly1/g;->b:Lr1/o0;

    .line 71
    .line 72
    iget-object v6, p1, Ly1/g0;->b:Lr1/q0;

    .line 73
    .line 74
    invoke-virtual {v6, v0, v3}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget v0, v0, Lr1/o0;->c:I

    .line 79
    .line 80
    const-wide/16 v7, 0x0

    .line 81
    .line 82
    iget-object v3, p0, Ly1/g;->a:Lr1/p0;

    .line 83
    .line 84
    invoke-virtual {v6, v0, v3, v7, v8}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v0, v0, Lr1/p0;->c:Lr1/y;

    .line 89
    .line 90
    iget-object v0, v0, Lr1/y;->b:Lr1/v;

    .line 91
    .line 92
    if-nez v0, :cond_3

    .line 93
    .line 94
    :cond_2
    const/4 v0, 0x0

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    iget-object v0, v0, Lr1/v;->a:Landroid/net/Uri;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_4

    .line 107
    .line 108
    sget-object v3, Ly1/g;->r:Lu7/y0;

    .line 109
    .line 110
    invoke-virtual {v3, v0}, Lu7/g0;->contains(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    :cond_4
    const/4 v0, 0x1

    .line 117
    :goto_1
    if-eqz v0, :cond_5

    .line 118
    .line 119
    iget-wide v6, p0, Ly1/g;->e:J

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    iget-wide v6, p0, Ly1/g;->d:J

    .line 123
    .line 124
    :goto_2
    if-eqz v0, :cond_6

    .line 125
    .line 126
    iget-wide v8, p0, Ly1/g;->g:J

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_6
    iget-wide v8, p0, Ly1/g;->f:J

    .line 130
    .line 131
    :goto_3
    iget v3, p1, Ly1/g0;->e:F

    .line 132
    .line 133
    const/high16 v10, 0x3f800000    # 1.0f

    .line 134
    .line 135
    cmpl-float v10, v3, v10

    .line 136
    .line 137
    if-lez v10, :cond_7

    .line 138
    .line 139
    invoke-static {v6, v7, v3}, Lu1/f0;->s(JF)J

    .line 140
    .line 141
    .line 142
    move-result-wide v6

    .line 143
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 144
    .line 145
    .line 146
    move-result-wide v6

    .line 147
    :cond_7
    const-wide/32 v10, 0x7a120

    .line 148
    .line 149
    .line 150
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 151
    .line 152
    .line 153
    move-result-wide v6

    .line 154
    iget-wide v12, p1, Ly1/g0;->d:J

    .line 155
    .line 156
    cmp-long p1, v12, v6

    .line 157
    .line 158
    if-gez p1, :cond_b

    .line 159
    .line 160
    if-eqz v0, :cond_8

    .line 161
    .line 162
    iget-boolean p1, p0, Ly1/g;->m:Z

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_8
    const/4 p1, 0x0

    .line 166
    :goto_4
    if-nez p1, :cond_a

    .line 167
    .line 168
    if-nez v2, :cond_9

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_9
    const/4 v4, 0x0

    .line 172
    :cond_a
    :goto_5
    iput-boolean v4, v1, Ly1/f;->b:Z

    .line 173
    .line 174
    if-nez v4, :cond_d

    .line 175
    .line 176
    cmp-long p1, v12, v10

    .line 177
    .line 178
    if-gez p1, :cond_d

    .line 179
    .line 180
    const-string p1, "Target buffer size reached with less than 500ms of buffered media data."

    .line 181
    .line 182
    invoke-static {p1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_b
    cmp-long p1, v12, v8

    .line 187
    .line 188
    if-gez p1, :cond_c

    .line 189
    .line 190
    if-eqz v2, :cond_d

    .line 191
    .line 192
    :cond_c
    iput-boolean v5, v1, Ly1/f;->b:Z

    .line 193
    .line 194
    :cond_d
    :goto_6
    iget-boolean p1, v1, Ly1/f;->b:Z

    .line 195
    .line 196
    return p1

    .line 197
    :catchall_0
    move-exception p1

    .line 198
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    goto :goto_8

    .line 200
    :goto_7
    throw p1

    .line 201
    :goto_8
    goto :goto_7
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/g;->p:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Ly1/g;->c:Li2/d;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-boolean v2, v0, Li2/d;->a:Z

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Li2/d;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    goto :goto_3

    .line 25
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v1

    .line 27
    :cond_1
    iget-object v0, p0, Ly1/g;->c:Li2/d;

    .line 28
    .line 29
    iget-object v2, p0, Ly1/g;->p:Lj$/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ly1/f;

    .line 50
    .line 51
    iget v3, v3, Ly1/f;->c:I

    .line 52
    .line 53
    add-int/2addr v1, v3

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {v0, v1}, Li2/d;->d(I)V

    .line 56
    .line 57
    .line 58
    :goto_3
    return-void
.end method
