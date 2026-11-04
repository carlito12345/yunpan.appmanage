.class public final Ldb/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final c:Ldb/p;

.field public final d:Ljava/util/Vector;

.field public final e:[[Ldb/q;

.field public f:Z


# direct methods
.method public constructor <init>(Ldb/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    new-array v0, v0, [[Ldb/q;

    .line 6
    .line 7
    iput-object v0, p0, Ldb/p;->e:[[Ldb/q;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Ldb/p;->f:Z

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ldb/p;->a:Ljava/util/HashMap;

    .line 18
    .line 19
    iput-object p1, p0, Ldb/p;->c:Ldb/p;

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Ldb/p;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 27
    .line 28
    new-instance v0, Ljava/util/Vector;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Ldb/p;->d:Ljava/util/Vector;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p1, Ldb/p;->d:Ljava/util/Vector;

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lbi/a;)I
    .locals 10

    .line 1
    iget-boolean v0, p0, Ldb/p;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget p1, p1, Lbi/a;->a:I

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Ldb/p;->b(Ljava/lang/Class;)Ldb/o;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, v0, Ldb/o;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object v1, v0, Ldb/o;->b:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x0

    .line 34
    :goto_0
    :try_start_1
    iget-object v4, p0, Ldb/p;->e:[[Ldb/q;

    .line 35
    .line 36
    array-length v5, v4

    .line 37
    const/4 v6, 0x0

    .line 38
    if-ge v3, v5, :cond_2

    .line 39
    .line 40
    aget-object v5, v4, v3

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    array-length v7, v5

    .line 45
    if-lt v7, v1, :cond_1

    .line 46
    .line 47
    aput-object v6, v4, v3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto/16 :goto_9

    .line 52
    .line 53
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move-object v5, v6

    .line 57
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    if-nez v5, :cond_3

    .line 59
    .line 60
    :try_start_2
    new-array v5, v1, [Ldb/q;

    .line 61
    .line 62
    :cond_3
    iget-object v3, v0, Ldb/o;->b:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 65
    .line 66
    .line 67
    iget-object v3, v0, Ldb/o;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 74
    .line 75
    .line 76
    :try_start_3
    new-instance v3, Lag/h;

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-direct {v3, v4}, Lag/h;-><init>(B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 80
    .line 81
    .line 82
    move-object v7, v6

    .line 83
    const/4 v4, 0x0

    .line 84
    :goto_2
    if-ge v4, v1, :cond_6

    .line 85
    .line 86
    :try_start_4
    iget v8, p1, Lbi/a;->a:I

    .line 87
    .line 88
    and-int/lit8 v8, v8, 0x1

    .line 89
    .line 90
    if-nez v8, :cond_6

    .line 91
    .line 92
    aget-object v8, v5, v4

    .line 93
    .line 94
    invoke-interface {v8, p1, v3}, Ldb/q;->a(Lbi/a;Lag/h;)V

    .line 95
    .line 96
    .line 97
    iget-boolean v9, v3, Lag/h;->a:Z

    .line 98
    .line 99
    if-eqz v9, :cond_5

    .line 100
    .line 101
    if-nez v7, :cond_4

    .line 102
    .line 103
    new-instance v9, Ljava/util/LinkedList;

    .line 104
    .line 105
    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 106
    .line 107
    .line 108
    move-object v7, v9

    .line 109
    goto :goto_3

    .line 110
    :catchall_1
    move-exception p1

    .line 111
    move-object v6, v7

    .line 112
    goto :goto_7

    .line 113
    :cond_4
    :goto_3
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    :cond_5
    iput-boolean v2, v3, Lag/h;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 117
    .line 118
    add-int/lit8 v4, v4, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    if-eqz v7, :cond_7

    .line 122
    .line 123
    iget-object v1, v0, Ldb/o;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 130
    .line 131
    .line 132
    :try_start_5
    iget-object v1, v0, Ldb/o;->b:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 135
    .line 136
    .line 137
    iget-object v0, v0, Ldb/o;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :catchall_2
    move-exception p1

    .line 148
    iget-object v0, v0, Ldb/o;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :cond_7
    :goto_4
    invoke-virtual {p0, v5}, Ldb/p;->c([Ldb/q;)V

    .line 159
    .line 160
    .line 161
    :goto_5
    iget-object v0, p0, Ldb/p;->d:Ljava/util/Vector;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-ge v2, v0, :cond_9

    .line 168
    .line 169
    iget v0, p1, Lbi/a;->a:I

    .line 170
    .line 171
    and-int/lit8 v0, v0, 0x1

    .line 172
    .line 173
    if-nez v0, :cond_9

    .line 174
    .line 175
    :try_start_6
    iget-object v0, p0, Ldb/p;->d:Ljava/util/Vector;

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Ldb/p;
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :catch_0
    nop

    .line 185
    move-object v0, v6

    .line 186
    :goto_6
    if-eqz v0, :cond_8

    .line 187
    .line 188
    invoke-virtual {v0, p1}, Ldb/p;->a(Lbi/a;)I

    .line 189
    .line 190
    .line 191
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_9
    iget p1, p1, Lbi/a;->a:I

    .line 195
    .line 196
    return p1

    .line 197
    :catchall_3
    move-exception p1

    .line 198
    :goto_7
    if-eqz v6, :cond_a

    .line 199
    .line 200
    iget-object v1, v0, Ldb/o;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 207
    .line 208
    .line 209
    :try_start_7
    iget-object v1, v0, Ldb/o;->b:Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 212
    .line 213
    .line 214
    iget-object v0, v0, Ldb/o;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 221
    .line 222
    .line 223
    goto :goto_8

    .line 224
    :catchall_4
    move-exception p1

    .line 225
    iget-object v0, v0, Ldb/o;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 232
    .line 233
    .line 234
    throw p1

    .line 235
    :cond_a
    :goto_8
    invoke-virtual {p0, v5}, Ldb/p;->c([Ldb/q;)V

    .line 236
    .line 237
    .line 238
    throw p1

    .line 239
    :catchall_5
    move-exception p1

    .line 240
    goto :goto_a

    .line 241
    :goto_9
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 242
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 243
    :goto_a
    iget-object v0, v0, Ldb/o;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 250
    .line 251
    .line 252
    goto :goto_c

    .line 253
    :goto_b
    throw p1

    .line 254
    :goto_c
    goto :goto_b
.end method

.method public final b(Ljava/lang/Class;)Ldb/o;
    .locals 4

    .line 1
    iget-object v0, p0, Ldb/p;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Ldb/p;->a:Ljava/util/HashMap;

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ldb/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 32
    .line 33
    .line 34
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ldb/o;

    .line 39
    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    new-instance v2, Ldb/o;

    .line 43
    .line 44
    invoke-direct {v2}, Ldb/o;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_1
    :goto_2
    return-object v2

    .line 70
    :catchall_1
    move-exception p1

    .line 71
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public final declared-synchronized c([Ldb/q;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v1, p0, Ldb/p;->e:[[Ldb/q;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ge v0, v2, :cond_1

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Ldb/p;->e:[[Ldb/q;

    .line 17
    .line 18
    aput-object p1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    goto :goto_4

    .line 30
    :goto_3
    throw p1

    .line 31
    :goto_4
    goto :goto_3
.end method

.method public final d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldb/p;->c:Ldb/p;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "The event manager is set to be root, and can not be disabled"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :cond_1
    :goto_0
    iput-boolean p1, p0, Ldb/p;->f:Z

    .line 17
    .line 18
    return-void
.end method

.method public final e(Ljava/lang/Class;Ldb/n;)Ldb/z;
    .locals 2

    .line 1
    new-instance v0, Ldb/m;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p2}, Ldb/m;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Ldb/p;->f(Ljava/lang/Class;Ldb/q;)Ldb/z;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final f(Ljava/lang/Class;Ldb/q;)Ldb/z;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Ldb/p;->b(Ljava/lang/Class;)Ldb/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Ldb/o;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v0, v0, Ldb/o;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    new-instance v0, Ldb/z;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1, p2}, Ldb/z;-><init>(Ldb/p;Ljava/lang/Class;Ldb/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 45
    .line 46
    .line 47
    new-instance v0, Ldb/z;

    .line 48
    .line 49
    invoke-direct {v0, p0, p1, p2}, Ldb/z;-><init>(Ldb/p;Ljava/lang/Class;Ldb/q;)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    .line 59
    .line 60
    throw p1
.end method
