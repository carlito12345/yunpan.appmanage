.class public final Lmc/f;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lgc/b;
.implements Lec/e;


# static fields
.field public static final p:[Lmc/e;

.field public static final q:[Lmc/e;


# instance fields
.field public final a:Lec/e;

.field public final b:Lua/t6;

.field public final c:I

.field public final d:I

.field public volatile e:Lkc/c;

.field public volatile f:Z

.field public final g:Lpc/a;

.field public volatile h:Z

.field public final i:Ljava/util/concurrent/atomic/AtomicReference;

.field public j:Lgc/b;

.field public k:J

.field public l:J

.field public m:I

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Lmc/e;

    .line 3
    .line 4
    sput-object v1, Lmc/f;->p:[Lmc/e;

    .line 5
    .line 6
    new-array v0, v0, [Lmc/e;

    .line 7
    .line 8
    sput-object v0, Lmc/f;->q:[Lmc/e;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lec/e;Lua/t6;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lpc/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lpc/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lmc/f;->g:Lpc/a;

    .line 10
    .line 11
    iput-object p1, p0, Lmc/f;->a:Lec/e;

    .line 12
    .line 13
    iput-object p2, p0, Lmc/f;->b:Lua/t6;

    .line 14
    .line 15
    const p1, 0x7fffffff

    .line 16
    .line 17
    .line 18
    iput p1, p0, Lmc/f;->c:I

    .line 19
    .line 20
    iput p3, p0, Lmc/f;->d:I

    .line 21
    .line 22
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    sget-object p2, Lmc/f;->p:[Lmc/e;

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lmc/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmc/f;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lqf/c;->P(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lmc/f;->g:Lpc/a;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lpc/a;->a(Ljava/lang/Throwable;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lmc/f;->f:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Lmc/f;->g()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {p1}, Lqf/c;->P(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public final E(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmc/f;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmc/f;->b:Lua/t6;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lua/t6;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lec/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    .line 14
    iget v0, p0, Lmc/f;->c:I

    .line 15
    .line 16
    const v1, 0x7fffffff

    .line 17
    .line 18
    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    monitor-enter p0

    .line 22
    :try_start_1
    iget v0, p0, Lmc/f;->n:I

    .line 23
    .line 24
    iget v1, p0, Lmc/f;->c:I

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    iput v0, p0, Lmc/f;->n:I

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    throw p1

    .line 38
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p1

    .line 40
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lmc/f;->j(Lec/b;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_1
    move-exception p1

    .line 45
    invoke-static {p1}, Lif/a;->K0(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lmc/f;->j:Lgc/b;

    .line 49
    .line 50
    invoke-interface {v0}, Lgc/b;->c()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lmc/f;->B(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final b(Lgc/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmc/f;->j:Lgc/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lgc/b;->c()V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lhc/d;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p1, v0}, Lhc/d;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lqf/c;->P(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput-object p1, p0, Lmc/f;->j:Lgc/b;

    .line 19
    .line 20
    iget-object p1, p0, Lmc/f;->a:Lec/e;

    .line 21
    .line 22
    invoke-interface {p1, p0}, Lec/e;->b(Lgc/b;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmc/f;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmc/f;->h:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lmc/f;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lmc/f;->g:Lpc/a;

    .line 15
    .line 16
    invoke-virtual {v0}, Lpc/a;->b()Ljava/lang/Throwable;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object v1, Lpc/c;->a:Lpc/b;

    .line 23
    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    invoke-static {v0}, Lqf/c;->P(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmc/f;->h:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lmc/f;->g:Lpc/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Throwable;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lmc/f;->f()Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lmc/f;->g:Lpc/a;

    .line 21
    .line 22
    invoke-virtual {v0}, Lpc/a;->b()Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v2, Lpc/c;->a:Lpc/b;

    .line 27
    .line 28
    if-eq v0, v2, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lmc/f;->a:Lec/e;

    .line 31
    .line 32
    invoke-interface {v2, v0}, Lec/e;->B(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return v1

    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    return v0
.end method

.method public final f()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lmc/f;->j:Lgc/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lgc/b;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lmc/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, [Lmc/e;

    .line 13
    .line 14
    sget-object v2, Lmc/f;->q:[Lmc/e;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, [Lmc/e;

    .line 24
    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    array-length v1, v0

    .line 28
    :goto_0
    if-ge v3, v1, :cond_0

    .line 29
    .line 30
    aget-object v2, v0, v3

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Lic/a;->b(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x1

    .line 42
    return v0

    .line 43
    :cond_1
    return v3
.end method

.method public final g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lmc/f;->h()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 14

    .line 1
    iget-object v0, p0, Lmc/f;->a:Lec/e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lmc/f;->d()Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-object v2, p0, Lmc/f;->e:Lkc/c;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v2, :cond_4

    .line 16
    .line 17
    :goto_1
    invoke-virtual {p0}, Lmc/f;->d()Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    invoke-interface {v2}, Lkc/d;->poll()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    if-nez v5, :cond_3

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_3
    invoke-interface {v0, v5}, Lec/e;->E(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_4
    :goto_2
    const v2, 0x7fffffff

    .line 38
    .line 39
    .line 40
    if-eqz v4, :cond_5

    .line 41
    .line 42
    iget v3, p0, Lmc/f;->c:I

    .line 43
    .line 44
    if-eq v3, v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, v4}, Lmc/f;->l(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_5
    iget-boolean v5, p0, Lmc/f;->f:Z

    .line 51
    .line 52
    iget-object v6, p0, Lmc/f;->e:Lkc/c;

    .line 53
    .line 54
    iget-object v7, p0, Lmc/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    check-cast v7, [Lmc/e;

    .line 61
    .line 62
    array-length v8, v7

    .line 63
    iget v9, p0, Lmc/f;->c:I

    .line 64
    .line 65
    if-ne v9, v2, :cond_1c

    .line 66
    .line 67
    if-eqz v5, :cond_9

    .line 68
    .line 69
    if-eqz v6, :cond_6

    .line 70
    .line 71
    invoke-interface {v6}, Lkc/d;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_9

    .line 76
    .line 77
    :cond_6
    if-nez v8, :cond_9

    .line 78
    .line 79
    iget-object v1, p0, Lmc/f;->g:Lpc/a;

    .line 80
    .line 81
    invoke-virtual {v1}, Lpc/a;->b()Ljava/lang/Throwable;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    sget-object v2, Lpc/c;->a:Lpc/b;

    .line 86
    .line 87
    if-eq v1, v2, :cond_8

    .line 88
    .line 89
    if-nez v1, :cond_7

    .line 90
    .line 91
    invoke-interface {v0}, Lec/e;->onComplete()V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_7
    invoke-interface {v0, v1}, Lec/e;->B(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :cond_8
    :goto_3
    return-void

    .line 99
    :cond_9
    if-eqz v8, :cond_1a

    .line 100
    .line 101
    iget-wide v5, p0, Lmc/f;->l:J

    .line 102
    .line 103
    iget v9, p0, Lmc/f;->m:I

    .line 104
    .line 105
    if-le v8, v9, :cond_a

    .line 106
    .line 107
    aget-object v10, v7, v9

    .line 108
    .line 109
    iget-wide v10, v10, Lmc/e;->a:J

    .line 110
    .line 111
    cmp-long v12, v10, v5

    .line 112
    .line 113
    if-eqz v12, :cond_f

    .line 114
    .line 115
    :cond_a
    if-gt v8, v9, :cond_b

    .line 116
    .line 117
    const/4 v9, 0x0

    .line 118
    :cond_b
    const/4 v10, 0x0

    .line 119
    :goto_4
    if-ge v10, v8, :cond_e

    .line 120
    .line 121
    aget-object v11, v7, v9

    .line 122
    .line 123
    iget-wide v11, v11, Lmc/e;->a:J

    .line 124
    .line 125
    cmp-long v13, v11, v5

    .line 126
    .line 127
    if-nez v13, :cond_c

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_c
    add-int/lit8 v9, v9, 0x1

    .line 131
    .line 132
    if-ne v9, v8, :cond_d

    .line 133
    .line 134
    const/4 v9, 0x0

    .line 135
    :cond_d
    add-int/lit8 v10, v10, 0x1

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_e
    :goto_5
    iput v9, p0, Lmc/f;->m:I

    .line 139
    .line 140
    aget-object v5, v7, v9

    .line 141
    .line 142
    iget-wide v5, v5, Lmc/e;->a:J

    .line 143
    .line 144
    iput-wide v5, p0, Lmc/f;->l:J

    .line 145
    .line 146
    :cond_f
    const/4 v5, 0x0

    .line 147
    :goto_6
    if-ge v5, v8, :cond_19

    .line 148
    .line 149
    invoke-virtual {p0}, Lmc/f;->d()Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-eqz v6, :cond_10

    .line 154
    .line 155
    return-void

    .line 156
    :cond_10
    aget-object v6, v7, v9

    .line 157
    .line 158
    iget-object v10, v6, Lmc/e;->d:Lkc/d;

    .line 159
    .line 160
    if-eqz v10, :cond_14

    .line 161
    .line 162
    :cond_11
    :try_start_0
    invoke-interface {v10}, Lkc/d;->poll()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    if-nez v11, :cond_12

    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_12
    invoke-interface {v0, v11}, Lec/e;->E(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Lmc/f;->d()Z

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    if-eqz v11, :cond_11

    .line 177
    .line 178
    return-void

    .line 179
    :catchall_0
    move-exception v10

    .line 180
    invoke-static {v10}, Lif/a;->K0(Ljava/lang/Throwable;)V

    .line 181
    .line 182
    .line 183
    invoke-static {v6}, Lic/a;->b(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 184
    .line 185
    .line 186
    iget-object v11, p0, Lmc/f;->g:Lpc/a;

    .line 187
    .line 188
    invoke-virtual {v11, v10}, Lpc/a;->a(Ljava/lang/Throwable;)Z

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lmc/f;->d()Z

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    if-eqz v10, :cond_13

    .line 196
    .line 197
    return-void

    .line 198
    :cond_13
    invoke-virtual {p0, v6}, Lmc/f;->i(Lmc/e;)V

    .line 199
    .line 200
    .line 201
    add-int/lit8 v4, v4, 0x1

    .line 202
    .line 203
    add-int/lit8 v9, v9, 0x1

    .line 204
    .line 205
    if-ne v9, v8, :cond_18

    .line 206
    .line 207
    goto :goto_8

    .line 208
    :cond_14
    :goto_7
    iget-boolean v10, v6, Lmc/e;->c:Z

    .line 209
    .line 210
    iget-object v11, v6, Lmc/e;->d:Lkc/d;

    .line 211
    .line 212
    if-eqz v10, :cond_17

    .line 213
    .line 214
    if-eqz v11, :cond_15

    .line 215
    .line 216
    invoke-interface {v11}, Lkc/d;->isEmpty()Z

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    if-eqz v10, :cond_17

    .line 221
    .line 222
    :cond_15
    invoke-virtual {p0, v6}, Lmc/f;->i(Lmc/e;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Lmc/f;->d()Z

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    if-eqz v6, :cond_16

    .line 230
    .line 231
    return-void

    .line 232
    :cond_16
    add-int/lit8 v4, v4, 0x1

    .line 233
    .line 234
    :cond_17
    add-int/lit8 v9, v9, 0x1

    .line 235
    .line 236
    if-ne v9, v8, :cond_18

    .line 237
    .line 238
    :goto_8
    const/4 v9, 0x0

    .line 239
    :cond_18
    add-int/lit8 v5, v5, 0x1

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_19
    iput v9, p0, Lmc/f;->m:I

    .line 243
    .line 244
    aget-object v3, v7, v9

    .line 245
    .line 246
    iget-wide v5, v3, Lmc/e;->a:J

    .line 247
    .line 248
    iput-wide v5, p0, Lmc/f;->l:J

    .line 249
    .line 250
    :cond_1a
    if-eqz v4, :cond_1b

    .line 251
    .line 252
    iget v3, p0, Lmc/f;->c:I

    .line 253
    .line 254
    if-eq v3, v2, :cond_0

    .line 255
    .line 256
    invoke-virtual {p0, v4}, Lmc/f;->l(I)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :cond_1b
    neg-int v1, v1

    .line 262
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-nez v1, :cond_0

    .line 267
    .line 268
    return-void

    .line 269
    :cond_1c
    monitor-enter p0

    .line 270
    const/4 v0, 0x0

    .line 271
    :try_start_1
    throw v0

    .line 272
    :goto_9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 273
    throw v0

    .line 274
    :catchall_1
    move-exception v0

    .line 275
    goto :goto_9
.end method

.method public final i(Lmc/e;)V
    .locals 7

    .line 1
    :goto_0
    iget-object v0, p0, Lmc/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, [Lmc/e;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_1
    if-ge v4, v2, :cond_2

    .line 16
    .line 17
    aget-object v5, v1, v4

    .line 18
    .line 19
    if-ne v5, p1, :cond_1

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    const/4 v4, -0x1

    .line 26
    :goto_2
    if-gez v4, :cond_3

    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    const/4 v5, 0x1

    .line 30
    if-ne v2, v5, :cond_4

    .line 31
    .line 32
    sget-object v2, Lmc/f;->p:[Lmc/e;

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_4
    add-int/lit8 v6, v2, -0x1

    .line 36
    .line 37
    new-array v6, v6, [Lmc/e;

    .line 38
    .line 39
    invoke-static {v1, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v3, v4, 0x1

    .line 43
    .line 44
    sub-int/2addr v2, v4

    .line 45
    sub-int/2addr v2, v5

    .line 46
    invoke-static {v1, v3, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    move-object v2, v6

    .line 50
    :cond_5
    :goto_3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_6

    .line 55
    .line 56
    return-void

    .line 57
    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eq v3, v1, :cond_5

    .line 62
    .line 63
    goto :goto_0
.end method

.method public final j(Lec/b;)V
    .locals 6

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/Callable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    check-cast p1, Ljava/util/concurrent/Callable;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const v2, 0x7fffffff

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lmc/f;->a:Lec/e;

    .line 32
    .line 33
    invoke-interface {v0, p1}, Lec/e;->E(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_5

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object v0, p0, Lmc/f;->e:Lkc/c;

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    iget v0, p0, Lmc/f;->c:I

    .line 48
    .line 49
    if-ne v0, v2, :cond_2

    .line 50
    .line 51
    new-instance v0, Lnc/b;

    .line 52
    .line 53
    iget v1, p0, Lmc/f;->d:I

    .line 54
    .line 55
    invoke-direct {v0, v1}, Lnc/b;-><init>(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance v0, Lnc/a;

    .line 60
    .line 61
    iget v1, p0, Lmc/f;->c:I

    .line 62
    .line 63
    invoke-direct {v0, v1}, Lnc/a;-><init>(I)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iput-object v0, p0, Lmc/f;->e:Lkc/c;

    .line 67
    .line 68
    :cond_3
    invoke-interface {v0, p1}, Lkc/d;->offer(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_4

    .line 73
    .line 74
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string v0, "Scalar queue full?!"

    .line 77
    .line 78
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lmc/f;->B(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_5
    invoke-virtual {p0}, Lmc/f;->h()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception p1

    .line 97
    invoke-static {p1}, Lif/a;->K0(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lmc/f;->g:Lpc/a;

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Lpc/a;->a(Ljava/lang/Throwable;)Z

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lmc/f;->g()V

    .line 106
    .line 107
    .line 108
    :goto_1
    iget p1, p0, Lmc/f;->c:I

    .line 109
    .line 110
    if-ne p1, v2, :cond_6

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_6
    monitor-enter p0

    .line 114
    const/4 p1, 0x0

    .line 115
    :try_start_1
    throw p1

    .line 116
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    throw p1

    .line 118
    :catchall_1
    move-exception p1

    .line 119
    goto :goto_2

    .line 120
    :cond_7
    new-instance v0, Lmc/e;

    .line 121
    .line 122
    iget-wide v2, p0, Lmc/f;->k:J

    .line 123
    .line 124
    const-wide/16 v4, 0x1

    .line 125
    .line 126
    add-long/2addr v4, v2

    .line 127
    iput-wide v4, p0, Lmc/f;->k:J

    .line 128
    .line 129
    invoke-direct {v0, p0, v2, v3}, Lmc/e;-><init>(Lmc/f;J)V

    .line 130
    .line 131
    .line 132
    :goto_3
    iget-object v2, p0, Lmc/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, [Lmc/e;

    .line 139
    .line 140
    sget-object v4, Lmc/f;->q:[Lmc/e;

    .line 141
    .line 142
    if-ne v3, v4, :cond_8

    .line 143
    .line 144
    invoke-static {v0}, Lic/a;->b(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_8
    array-length v4, v3

    .line 149
    add-int/lit8 v5, v4, 0x1

    .line 150
    .line 151
    new-array v5, v5, [Lmc/e;

    .line 152
    .line 153
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    .line 155
    .line 156
    aput-object v0, v5, v4

    .line 157
    .line 158
    :cond_9
    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_a

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 165
    .line 166
    .line 167
    :goto_4
    return-void

    .line 168
    :cond_a
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    if-eq v4, v3, :cond_9

    .line 173
    .line 174
    goto :goto_3
.end method

.method public final l(I)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    monitor-enter p0

    .line 5
    const/4 p1, 0x0

    .line 6
    :try_start_0
    throw p1

    .line 7
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    goto :goto_0
.end method

.method public final onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmc/f;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lmc/f;->f:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lmc/f;->g()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
