.class public final Lf2/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Landroid/net/Uri;

.field public final c:Lw1/w;

.field public final d:Lv3/f;

.field public final e:Lf2/u0;

.field public final f:Lu1/e;

.field public final g:Ldd/c;

.field public volatile h:Z

.field public i:Z

.field public j:J

.field public k:Lw1/j;

.field public l:Ll2/j0;

.field public m:Z

.field public final synthetic n:Lf2/u0;


# direct methods
.method public constructor <init>(Lf2/u0;Landroid/net/Uri;Lw1/h;Lv3/f;Lf2/u0;Lu1/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf2/r0;->n:Lf2/u0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lf2/r0;->b:Landroid/net/Uri;

    .line 7
    .line 8
    new-instance p1, Lw1/w;

    .line 9
    .line 10
    invoke-direct {p1, p3}, Lw1/w;-><init>(Lw1/h;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lf2/r0;->c:Lw1/w;

    .line 14
    .line 15
    iput-object p4, p0, Lf2/r0;->d:Lv3/f;

    .line 16
    .line 17
    iput-object p5, p0, Lf2/r0;->e:Lf2/u0;

    .line 18
    .line 19
    iput-object p6, p0, Lf2/r0;->f:Lu1/e;

    .line 20
    .line 21
    new-instance p1, Ldd/c;

    .line 22
    .line 23
    const/4 p2, 0x3

    .line 24
    const/4 p3, 0x0

    .line 25
    invoke-direct {p1, p2, p3}, Ldd/c;-><init>(IZ)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lf2/r0;->g:Ldd/c;

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lf2/r0;->i:Z

    .line 32
    .line 33
    sget-object p1, Lf2/t;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 36
    .line 37
    .line 38
    move-result-wide p1

    .line 39
    iput-wide p1, p0, Lf2/r0;->a:J

    .line 40
    .line 41
    const-wide/16 p1, 0x0

    .line 42
    .line 43
    const/4 p3, 0x0

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lf2/r0;->a(JLjava/lang/String;)Lw1/j;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lf2/r0;->k:Lw1/j;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;)Lw1/j;
    .locals 11

    .line 1
    sget-object v0, Lf2/u0;->X:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string v1, "W/"

    .line 6
    .line 7
    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lu7/d1;->a()Landroidx/room/s;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Landroidx/room/s;->B(Ljava/util/Set;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "If-Range"

    .line 25
    .line 26
    invoke-virtual {v1, v0, p3}, Landroidx/room/s;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 p3, 0x0

    .line 30
    invoke-virtual {v1, p3}, Landroidx/room/s;->b(Z)Lu7/d1;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_0
    move-object v5, v0

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    iget-object p3, p0, Lf2/r0;->n:Lf2/u0;

    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lf2/r0;->b:Landroid/net/Uri;

    .line 44
    .line 45
    const-string p3, "The uri must be set."

    .line 46
    .line 47
    invoke-static {v2, p3}, La9/o;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance p3, Lw1/j;

    .line 51
    .line 52
    const-wide/16 v8, -0x1

    .line 53
    .line 54
    const/4 v10, 0x6

    .line 55
    const/4 v3, 0x1

    .line 56
    const/4 v4, 0x0

    .line 57
    move-object v1, p3

    .line 58
    move-wide v6, p1

    .line 59
    invoke-direct/range {v1 .. v10}, Lw1/j;-><init>(Landroid/net/Uri;I[BLjava/util/Map;JJI)V

    .line 60
    .line 61
    .line 62
    return-object p3
.end method

.method public final b()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    move-object v4, v2

    .line 6
    const/4 v3, 0x0

    .line 7
    :cond_0
    :goto_0
    if-nez v3, :cond_11

    .line 8
    .line 9
    iget-boolean v5, v1, Lf2/r0;->h:Z

    .line 10
    .line 11
    if-nez v5, :cond_11

    .line 12
    .line 13
    const-wide/16 v5, -0x1

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    :try_start_0
    iget-object v8, v1, Lf2/r0;->g:Ldd/c;

    .line 17
    .line 18
    iget-wide v13, v8, Ldd/c;->b:J

    .line 19
    .line 20
    invoke-virtual {v1, v13, v14, v4}, Lf2/r0;->a(JLjava/lang/String;)Lw1/j;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iput-object v4, v1, Lf2/r0;->k:Lw1/j;

    .line 25
    .line 26
    iget-object v8, v1, Lf2/r0;->c:Lw1/w;

    .line 27
    .line 28
    invoke-virtual {v8, v4}, Lw1/w;->j(Lw1/j;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v8

    .line 32
    iget-boolean v4, v1, Lf2/r0;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    if-ne v3, v7, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v0, v1, Lf2/r0;->d:Lv3/f;

    .line 40
    .line 41
    invoke-virtual {v0}, Lv3/f;->x()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    cmp-long v0, v2, v5

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, v1, Lf2/r0;->g:Ldd/c;

    .line 50
    .line 51
    iget-object v2, v1, Lf2/r0;->d:Lv3/f;

    .line 52
    .line 53
    invoke-virtual {v2}, Lv3/f;->x()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    iput-wide v2, v0, Ldd/c;->b:J

    .line 58
    .line 59
    :cond_2
    :goto_1
    iget-object v0, v1, Lf2/r0;->c:Lw1/w;

    .line 60
    .line 61
    if-eqz v0, :cond_11

    .line 62
    .line 63
    :try_start_1
    invoke-virtual {v0}, Lw1/w;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 64
    .line 65
    .line 66
    goto/16 :goto_b

    .line 67
    .line 68
    :cond_3
    :try_start_2
    iget-object v4, v1, Lf2/r0;->c:Lw1/w;

    .line 69
    .line 70
    iget-object v4, v4, Lw1/w;->a:Lw1/h;

    .line 71
    .line 72
    invoke-interface {v4}, Lw1/h;->g()Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const-string v10, "ETag"

    .line 77
    .line 78
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Ljava/util/List;

    .line 83
    .line 84
    if-eqz v4, :cond_4

    .line 85
    .line 86
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-nez v10, :cond_4

    .line 91
    .line 92
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Ljava/lang/String;

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    goto/16 :goto_a

    .line 101
    .line 102
    :cond_4
    move-object v4, v2

    .line 103
    :goto_2
    cmp-long v10, v8, v5

    .line 104
    .line 105
    if-eqz v10, :cond_5

    .line 106
    .line 107
    add-long/2addr v8, v13

    .line 108
    iget-object v10, v1, Lf2/r0;->n:Lf2/u0;

    .line 109
    .line 110
    iget-object v11, v10, Lf2/u0;->r:Landroid/os/Handler;

    .line 111
    .line 112
    new-instance v12, Lf2/n0;

    .line 113
    .line 114
    const/4 v15, 0x0

    .line 115
    invoke-direct {v12, v10, v15}, Lf2/n0;-><init>(Lf2/u0;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    .line 120
    .line 121
    :cond_5
    move-wide v15, v8

    .line 122
    iget-object v8, v1, Lf2/r0;->n:Lf2/u0;

    .line 123
    .line 124
    iget-object v9, v1, Lf2/r0;->c:Lw1/w;

    .line 125
    .line 126
    iget-object v9, v9, Lw1/w;->a:Lw1/h;

    .line 127
    .line 128
    invoke-interface {v9}, Lw1/h;->g()Ljava/util/Map;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    invoke-static {v9}, Ly2/b;->d(Ljava/util/Map;)Ly2/b;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    iput-object v9, v8, Lf2/u0;->t:Ly2/b;

    .line 137
    .line 138
    iget-object v8, v1, Lf2/r0;->c:Lw1/w;

    .line 139
    .line 140
    iget-object v9, v1, Lf2/r0;->n:Lf2/u0;

    .line 141
    .line 142
    iget-object v9, v9, Lf2/u0;->t:Ly2/b;

    .line 143
    .line 144
    if-eqz v9, :cond_6

    .line 145
    .line 146
    iget v9, v9, Ly2/b;->f:I

    .line 147
    .line 148
    const/4 v10, -0x1

    .line 149
    if-eq v9, v10, :cond_6

    .line 150
    .line 151
    new-instance v10, Lf2/s;

    .line 152
    .line 153
    invoke-direct {v10, v8, v9, v1}, Lf2/s;-><init>(Lw1/h;ILf2/r0;)V

    .line 154
    .line 155
    .line 156
    iget-object v8, v1, Lf2/r0;->n:Lf2/u0;

    .line 157
    .line 158
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    new-instance v9, Lf2/t0;

    .line 162
    .line 163
    invoke-direct {v9, v0, v7}, Lf2/t0;-><init>(IZ)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8, v9}, Lf2/u0;->B(Lf2/t0;)Ll2/j0;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    iput-object v8, v1, Lf2/r0;->l:Ll2/j0;

    .line 171
    .line 172
    sget-object v9, Lf2/u0;->Y:Lr1/p;

    .line 173
    .line 174
    invoke-interface {v8, v9}, Ll2/j0;->g(Lr1/p;)V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_6
    move-object v10, v8

    .line 179
    :goto_3
    iget-object v9, v1, Lf2/r0;->d:Lv3/f;

    .line 180
    .line 181
    iget-object v11, v1, Lf2/r0;->b:Landroid/net/Uri;

    .line 182
    .line 183
    iget-object v8, v1, Lf2/r0;->c:Lw1/w;

    .line 184
    .line 185
    iget-object v8, v8, Lw1/w;->a:Lw1/h;

    .line 186
    .line 187
    invoke-interface {v8}, Lw1/h;->g()Ljava/util/Map;

    .line 188
    .line 189
    .line 190
    move-result-object v12

    .line 191
    iget-object v8, v1, Lf2/r0;->e:Lf2/u0;

    .line 192
    .line 193
    move-wide/from16 v18, v13

    .line 194
    .line 195
    move-object/from16 v17, v8

    .line 196
    .line 197
    invoke-virtual/range {v9 .. v17}, Lv3/f;->C(Lw1/h;Landroid/net/Uri;Ljava/util/Map;JJLf2/u0;)V

    .line 198
    .line 199
    .line 200
    iget-object v8, v1, Lf2/r0;->n:Lf2/u0;

    .line 201
    .line 202
    iget-object v8, v8, Lf2/u0;->t:Ly2/b;

    .line 203
    .line 204
    if-eqz v8, :cond_8

    .line 205
    .line 206
    iget-object v8, v1, Lf2/r0;->d:Lv3/f;

    .line 207
    .line 208
    iget-object v8, v8, Lv3/f;->c:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v8, Ll2/o;

    .line 211
    .line 212
    if-nez v8, :cond_7

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_7
    invoke-interface {v8}, Ll2/o;->b()Ll2/o;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    instance-of v9, v8, Le3/e;

    .line 220
    .line 221
    if-eqz v9, :cond_8

    .line 222
    .line 223
    check-cast v8, Le3/e;

    .line 224
    .line 225
    iput-boolean v7, v8, Le3/e;->s:Z

    .line 226
    .line 227
    :cond_8
    :goto_4
    iget-boolean v8, v1, Lf2/r0;->i:Z

    .line 228
    .line 229
    if-eqz v8, :cond_9

    .line 230
    .line 231
    iget-object v8, v1, Lf2/r0;->d:Lv3/f;

    .line 232
    .line 233
    iget-wide v9, v1, Lf2/r0;->j:J

    .line 234
    .line 235
    iget-object v8, v8, Lv3/f;->c:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v8, Ll2/o;

    .line 238
    .line 239
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    move-wide/from16 v11, v18

    .line 243
    .line 244
    invoke-interface {v8, v11, v12, v9, v10}, Ll2/o;->e(JJ)V

    .line 245
    .line 246
    .line 247
    iput-boolean v0, v1, Lf2/r0;->i:Z

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_9
    move-wide/from16 v11, v18

    .line 251
    .line 252
    :goto_5
    move-wide v13, v11

    .line 253
    :cond_a
    :goto_6
    if-nez v3, :cond_c

    .line 254
    .line 255
    iget-boolean v8, v1, Lf2/r0;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    .line 257
    if-nez v8, :cond_c

    .line 258
    .line 259
    :try_start_3
    iget-object v8, v1, Lf2/r0;->f:Lu1/e;

    .line 260
    .line 261
    monitor-enter v8
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    :goto_7
    :try_start_4
    iget-boolean v9, v8, Lu1/e;->b:Z

    .line 263
    .line 264
    if-nez v9, :cond_b

    .line 265
    .line 266
    iget-object v9, v8, Lu1/e;->a:Lu1/z;

    .line 267
    .line 268
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 272
    .line 273
    .line 274
    goto :goto_7

    .line 275
    :catchall_1
    move-exception v0

    .line 276
    goto :goto_8

    .line 277
    :cond_b
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 278
    :try_start_6
    iget-object v8, v1, Lf2/r0;->d:Lv3/f;

    .line 279
    .line 280
    iget-object v9, v1, Lf2/r0;->g:Ldd/c;

    .line 281
    .line 282
    iget-object v10, v8, Lv3/f;->c:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v10, Ll2/o;

    .line 285
    .line 286
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    iget-object v8, v8, Lv3/f;->d:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v8, Ll2/l;

    .line 292
    .line 293
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    invoke-interface {v10, v8, v9}, Ll2/o;->d(Ll2/p;Ldd/c;)I

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    iget-object v8, v1, Lf2/r0;->d:Lv3/f;

    .line 301
    .line 302
    invoke-virtual {v8}, Lv3/f;->x()J

    .line 303
    .line 304
    .line 305
    move-result-wide v8

    .line 306
    iget-object v10, v1, Lf2/r0;->n:Lf2/u0;

    .line 307
    .line 308
    iget-wide v10, v10, Lf2/u0;->i:J

    .line 309
    .line 310
    add-long/2addr v10, v13

    .line 311
    cmp-long v12, v8, v10

    .line 312
    .line 313
    if-lez v12, :cond_a

    .line 314
    .line 315
    iget-object v10, v1, Lf2/r0;->f:Lu1/e;

    .line 316
    .line 317
    invoke-virtual {v10}, Lu1/e;->d()V

    .line 318
    .line 319
    .line 320
    iget-object v10, v1, Lf2/r0;->n:Lf2/u0;

    .line 321
    .line 322
    iget-object v11, v10, Lf2/u0;->r:Landroid/os/Handler;

    .line 323
    .line 324
    iget-object v10, v10, Lf2/u0;->q:Lf2/n0;

    .line 325
    .line 326
    invoke-virtual {v11, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 327
    .line 328
    .line 329
    move-wide v13, v8

    .line 330
    goto :goto_6

    .line 331
    :goto_8
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 332
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 333
    :catch_0
    :try_start_9
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 334
    .line 335
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 336
    .line 337
    .line 338
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 339
    :cond_c
    if-ne v3, v7, :cond_d

    .line 340
    .line 341
    const/4 v3, 0x0

    .line 342
    goto :goto_9

    .line 343
    :cond_d
    iget-object v7, v1, Lf2/r0;->d:Lv3/f;

    .line 344
    .line 345
    invoke-virtual {v7}, Lv3/f;->x()J

    .line 346
    .line 347
    .line 348
    move-result-wide v7

    .line 349
    cmp-long v9, v7, v5

    .line 350
    .line 351
    if-eqz v9, :cond_e

    .line 352
    .line 353
    iget-object v5, v1, Lf2/r0;->g:Ldd/c;

    .line 354
    .line 355
    iget-object v6, v1, Lf2/r0;->d:Lv3/f;

    .line 356
    .line 357
    invoke-virtual {v6}, Lv3/f;->x()J

    .line 358
    .line 359
    .line 360
    move-result-wide v6

    .line 361
    iput-wide v6, v5, Ldd/c;->b:J

    .line 362
    .line 363
    :cond_e
    :goto_9
    iget-object v5, v1, Lf2/r0;->c:Lw1/w;

    .line 364
    .line 365
    if-eqz v5, :cond_0

    .line 366
    .line 367
    :try_start_a
    invoke-virtual {v5}, Lw1/w;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 368
    .line 369
    .line 370
    goto/16 :goto_0

    .line 371
    .line 372
    :catch_1
    nop

    .line 373
    goto/16 :goto_0

    .line 374
    .line 375
    :goto_a
    if-eq v3, v7, :cond_f

    .line 376
    .line 377
    iget-object v2, v1, Lf2/r0;->d:Lv3/f;

    .line 378
    .line 379
    invoke-virtual {v2}, Lv3/f;->x()J

    .line 380
    .line 381
    .line 382
    move-result-wide v2

    .line 383
    cmp-long v4, v2, v5

    .line 384
    .line 385
    if-eqz v4, :cond_f

    .line 386
    .line 387
    iget-object v2, v1, Lf2/r0;->g:Ldd/c;

    .line 388
    .line 389
    iget-object v3, v1, Lf2/r0;->d:Lv3/f;

    .line 390
    .line 391
    invoke-virtual {v3}, Lv3/f;->x()J

    .line 392
    .line 393
    .line 394
    move-result-wide v3

    .line 395
    iput-wide v3, v2, Ldd/c;->b:J

    .line 396
    .line 397
    :cond_f
    iget-object v2, v1, Lf2/r0;->c:Lw1/w;

    .line 398
    .line 399
    if-eqz v2, :cond_10

    .line 400
    .line 401
    :try_start_b
    invoke-virtual {v2}, Lw1/w;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 402
    .line 403
    .line 404
    :catch_2
    :cond_10
    throw v0

    .line 405
    :catch_3
    :cond_11
    :goto_b
    return-void
.end method
