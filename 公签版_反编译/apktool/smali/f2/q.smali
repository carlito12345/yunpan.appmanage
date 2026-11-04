.class public final Lf2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/b0;


# instance fields
.field public final a:Lf2/p;

.field public final b:Lua/i8;

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:F

.field public final g:F

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;Ll2/m;)V
    .locals 2

    .line 1
    new-instance v0, Lua/i8;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lua/i8;-><init>(Landroid/content/ContextWrapper;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lha/l2;

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    invoke-direct {p1, v1}, Lha/l2;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lf2/q;->b:Lua/i8;

    .line 17
    .line 18
    new-instance v1, Lf2/p;

    .line 19
    .line 20
    invoke-direct {v1, p2, p1}, Lf2/p;-><init>(Ll2/m;Lha/l2;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lf2/q;->a:Lf2/p;

    .line 24
    .line 25
    iget-object p1, v1, Lf2/p;->d:Lua/i8;

    .line 26
    .line 27
    if-eq v0, p1, :cond_0

    .line 28
    .line 29
    iput-object v0, v1, Lf2/p;->d:Lua/i8;

    .line 30
    .line 31
    iget-object p1, v1, Lf2/p;->b:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 34
    .line 35
    .line 36
    iget-object p1, v1, Lf2/p;->c:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 39
    .line 40
    .line 41
    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    iput-wide p1, p0, Lf2/q;->c:J

    .line 47
    .line 48
    iput-wide p1, p0, Lf2/q;->d:J

    .line 49
    .line 50
    iput-wide p1, p0, Lf2/q;->e:J

    .line 51
    .line 52
    const p1, -0x800001

    .line 53
    .line 54
    .line 55
    iput p1, p0, Lf2/q;->f:F

    .line 56
    .line 57
    iput p1, p0, Lf2/q;->g:F

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lf2/q;->h:Z

    .line 61
    .line 62
    return-void
.end method

.method public static e(Ljava/lang/Class;Lua/i8;)Lf2/b0;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    .line 4
    .line 5
    const-class v3, Lw1/g;

    .line 6
    .line 7
    aput-object v3, v2, v0

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    aput-object p1, v1, v0

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lf2/b0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method


# virtual methods
.method public final a(Lha/l2;)Lf2/b0;
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/q;->a:Lf2/p;

    .line 2
    .line 3
    iput-object p1, v0, Lf2/p;->f:Lha/l2;

    .line 4
    .line 5
    iget-object v1, v0, Lf2/p;->a:Ll2/m;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iput-object p1, v1, Ll2/m;->c:Lha/l2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit v1

    .line 11
    iget-object v0, v0, Lf2/p;->c:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lf2/b0;

    .line 32
    .line 33
    invoke-interface {v1, p1}, Lf2/b0;->a(Lha/l2;)Lf2/b0;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object p0

    .line 38
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1
.end method

.method public final b(Lr1/y;)Lf2/a;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v0, Lr1/y;->b:Lr1/v;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lr1/y;->b:Lr1/v;

    .line 11
    .line 12
    iget-object v2, v2, Lr1/v;->a:Landroid/net/Uri;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    const-string v4, "ssai"

    .line 22
    .line 23
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    throw v3

    .line 31
    :cond_1
    :goto_0
    iget-object v2, v0, Lr1/y;->b:Lr1/v;

    .line 32
    .line 33
    iget-object v2, v2, Lr1/v;->b:Ljava/lang/String;

    .line 34
    .line 35
    const-string v4, "application/x-image-uri"

    .line 36
    .line 37
    invoke-static {v2, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_11

    .line 42
    .line 43
    iget-object v2, v0, Lr1/y;->b:Lr1/v;

    .line 44
    .line 45
    iget-object v4, v2, Lr1/v;->a:Landroid/net/Uri;

    .line 46
    .line 47
    iget-object v2, v2, Lr1/v;->b:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v4, v2}, Lu1/f0;->z(Landroid/net/Uri;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iget-object v4, v0, Lr1/y;->b:Lr1/v;

    .line 54
    .line 55
    iget-wide v4, v4, Lr1/v;->e:J

    .line 56
    .line 57
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    const/4 v8, 0x1

    .line 63
    cmp-long v9, v4, v6

    .line 64
    .line 65
    if-eqz v9, :cond_2

    .line 66
    .line 67
    iget-object v4, v1, Lf2/q;->a:Lf2/p;

    .line 68
    .line 69
    iget-object v4, v4, Lf2/p;->a:Ll2/m;

    .line 70
    .line 71
    monitor-enter v4

    .line 72
    :try_start_0
    iput v8, v4, Ll2/m;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    monitor-exit v4

    .line 75
    iget-object v4, v1, Lf2/q;->a:Lf2/p;

    .line 76
    .line 77
    invoke-static {v4}, Lf2/p;->a(Lf2/p;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    throw v0

    .line 84
    :cond_2
    :goto_1
    :try_start_2
    iget-object v4, v1, Lf2/q;->a:Lf2/p;

    .line 85
    .line 86
    invoke-virtual {v4, v2}, Lf2/p;->b(I)Lf2/b0;

    .line 87
    .line 88
    .line 89
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    iget-object v4, v0, Lr1/y;->c:Lr1/u;

    .line 91
    .line 92
    new-instance v5, Lr1/t;

    .line 93
    .line 94
    invoke-direct {v5, v4}, Lr1/t;-><init>(Lr1/u;)V

    .line 95
    .line 96
    .line 97
    iget-object v4, v0, Lr1/y;->c:Lr1/u;

    .line 98
    .line 99
    iget-wide v9, v4, Lr1/u;->a:J

    .line 100
    .line 101
    cmp-long v11, v9, v6

    .line 102
    .line 103
    if-nez v11, :cond_3

    .line 104
    .line 105
    iget-wide v9, v1, Lf2/q;->c:J

    .line 106
    .line 107
    iput-wide v9, v5, Lr1/t;->a:J

    .line 108
    .line 109
    :cond_3
    iget v9, v4, Lr1/u;->d:F

    .line 110
    .line 111
    const v10, -0x800001

    .line 112
    .line 113
    .line 114
    cmpl-float v9, v9, v10

    .line 115
    .line 116
    if-nez v9, :cond_4

    .line 117
    .line 118
    iget v9, v1, Lf2/q;->f:F

    .line 119
    .line 120
    iput v9, v5, Lr1/t;->d:F

    .line 121
    .line 122
    :cond_4
    iget v9, v4, Lr1/u;->e:F

    .line 123
    .line 124
    cmpl-float v9, v9, v10

    .line 125
    .line 126
    if-nez v9, :cond_5

    .line 127
    .line 128
    iget v9, v1, Lf2/q;->g:F

    .line 129
    .line 130
    iput v9, v5, Lr1/t;->e:F

    .line 131
    .line 132
    :cond_5
    iget-wide v9, v4, Lr1/u;->b:J

    .line 133
    .line 134
    cmp-long v11, v9, v6

    .line 135
    .line 136
    if-nez v11, :cond_6

    .line 137
    .line 138
    iget-wide v9, v1, Lf2/q;->d:J

    .line 139
    .line 140
    iput-wide v9, v5, Lr1/t;->b:J

    .line 141
    .line 142
    :cond_6
    iget-wide v9, v4, Lr1/u;->c:J

    .line 143
    .line 144
    cmp-long v4, v9, v6

    .line 145
    .line 146
    if-nez v4, :cond_7

    .line 147
    .line 148
    iget-wide v9, v1, Lf2/q;->e:J

    .line 149
    .line 150
    iput-wide v9, v5, Lr1/t;->c:J

    .line 151
    .line 152
    :cond_7
    new-instance v4, Lr1/u;

    .line 153
    .line 154
    invoke-direct {v4, v5}, Lr1/u;-><init>(Lr1/t;)V

    .line 155
    .line 156
    .line 157
    iget-object v5, v0, Lr1/y;->c:Lr1/u;

    .line 158
    .line 159
    invoke-virtual {v4, v5}, Lr1/u;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-nez v5, :cond_c

    .line 164
    .line 165
    new-instance v5, Lr1/y0;

    .line 166
    .line 167
    invoke-direct {v5}, Lr1/y0;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    sget-object v9, Lu7/y0;->e:Lu7/y0;

    .line 175
    .line 176
    sget-object v10, Lr1/w;->a:Lr1/w;

    .line 177
    .line 178
    iget-object v10, v0, Lr1/y;->e:Lr1/s;

    .line 179
    .line 180
    new-instance v11, Ldd/c;

    .line 181
    .line 182
    invoke-direct {v11, v10}, Ldd/c;-><init>(Lr1/s;)V

    .line 183
    .line 184
    .line 185
    iget-object v10, v0, Lr1/y;->a:Ljava/lang/String;

    .line 186
    .line 187
    iget-object v12, v0, Lr1/y;->d:Lr1/b0;

    .line 188
    .line 189
    iget-object v15, v0, Lr1/y;->f:Lr1/w;

    .line 190
    .line 191
    iget-object v0, v0, Lr1/y;->b:Lr1/v;

    .line 192
    .line 193
    if-eqz v0, :cond_8

    .line 194
    .line 195
    iget-object v5, v0, Lr1/v;->b:Ljava/lang/String;

    .line 196
    .line 197
    iget-object v6, v0, Lr1/v;->a:Landroid/net/Uri;

    .line 198
    .line 199
    iget-object v7, v0, Lr1/v;->c:Ljava/util/List;

    .line 200
    .line 201
    iget-object v9, v0, Lr1/v;->d:Lu7/g0;

    .line 202
    .line 203
    sget-object v13, Lu7/g0;->b:Lu7/e0;

    .line 204
    .line 205
    sget-object v13, Lu7/y0;->e:Lu7/y0;

    .line 206
    .line 207
    iget-wide v13, v0, Lr1/v;->e:J

    .line 208
    .line 209
    move-object/from16 v18, v5

    .line 210
    .line 211
    move-object/from16 v17, v6

    .line 212
    .line 213
    move-object/from16 v20, v7

    .line 214
    .line 215
    move-object/from16 v21, v9

    .line 216
    .line 217
    move-wide/from16 v22, v13

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_8
    move-object/from16 v17, v3

    .line 221
    .line 222
    move-object/from16 v18, v17

    .line 223
    .line 224
    move-object/from16 v20, v5

    .line 225
    .line 226
    move-wide/from16 v22, v6

    .line 227
    .line 228
    move-object/from16 v21, v9

    .line 229
    .line 230
    :goto_2
    new-instance v0, Lr1/t;

    .line 231
    .line 232
    invoke-direct {v0, v4}, Lr1/t;-><init>(Lr1/u;)V

    .line 233
    .line 234
    .line 235
    const/16 v19, 0x0

    .line 236
    .line 237
    if-eqz v17, :cond_9

    .line 238
    .line 239
    new-instance v4, Lr1/v;

    .line 240
    .line 241
    move-object/from16 v16, v4

    .line 242
    .line 243
    invoke-direct/range {v16 .. v23}, Lr1/v;-><init>(Landroid/net/Uri;Ljava/lang/String;Lif/a;Ljava/util/List;Lu7/g0;J)V

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_9
    move-object/from16 v16, v19

    .line 248
    .line 249
    :goto_3
    new-instance v4, Lr1/y;

    .line 250
    .line 251
    if-eqz v10, :cond_a

    .line 252
    .line 253
    :goto_4
    move-object v14, v10

    .line 254
    goto :goto_5

    .line 255
    :cond_a
    const-string v10, ""

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :goto_5
    new-instance v5, Lr1/s;

    .line 259
    .line 260
    invoke-direct {v5, v11}, Lr1/s;-><init>(Ldd/c;)V

    .line 261
    .line 262
    .line 263
    new-instance v6, Lr1/u;

    .line 264
    .line 265
    invoke-direct {v6, v0}, Lr1/u;-><init>(Lr1/t;)V

    .line 266
    .line 267
    .line 268
    if-eqz v12, :cond_b

    .line 269
    .line 270
    :goto_6
    move-object/from16 v18, v12

    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_b
    sget-object v12, Lr1/b0;->B:Lr1/b0;

    .line 274
    .line 275
    goto :goto_6

    .line 276
    :goto_7
    move-object v13, v4

    .line 277
    move-object v0, v15

    .line 278
    move-object v15, v5

    .line 279
    move-object/from16 v17, v6

    .line 280
    .line 281
    move-object/from16 v19, v0

    .line 282
    .line 283
    invoke-direct/range {v13 .. v19}, Lr1/y;-><init>(Ljava/lang/String;Lr1/s;Lr1/v;Lr1/u;Lr1/b0;Lr1/w;)V

    .line 284
    .line 285
    .line 286
    move-object v0, v4

    .line 287
    :cond_c
    invoke-interface {v2, v0}, Lf2/b0;->b(Lr1/y;)Lf2/a;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    iget-object v4, v0, Lr1/y;->b:Lr1/v;

    .line 292
    .line 293
    iget-object v4, v4, Lr1/v;->d:Lu7/g0;

    .line 294
    .line 295
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result v5

    .line 299
    if-nez v5, :cond_f

    .line 300
    .line 301
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    add-int/2addr v5, v8

    .line 306
    new-array v5, v5, [Lf2/a;

    .line 307
    .line 308
    const/4 v6, 0x0

    .line 309
    aput-object v2, v5, v6

    .line 310
    .line 311
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-lez v2, :cond_e

    .line 316
    .line 317
    iget-boolean v0, v1, Lf2/q;->h:Z

    .line 318
    .line 319
    if-nez v0, :cond_d

    .line 320
    .line 321
    iget-object v0, v1, Lf2/q;->b:Lua/i8;

    .line 322
    .line 323
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    check-cast v0, Lr1/x;

    .line 331
    .line 332
    new-instance v0, Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 335
    .line 336
    .line 337
    new-instance v0, Ljava/util/HashSet;

    .line 338
    .line 339
    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 340
    .line 341
    .line 342
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 343
    .line 344
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 345
    .line 346
    .line 347
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 348
    .line 349
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 350
    .line 351
    .line 352
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 353
    .line 354
    sget-object v0, Lu7/y0;->e:Lu7/y0;

    .line 355
    .line 356
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 357
    .line 358
    .line 359
    sget-object v0, Lu7/y0;->e:Lu7/y0;

    .line 360
    .line 361
    sget-object v0, Lr1/w;->a:Lr1/w;

    .line 362
    .line 363
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 364
    .line 365
    throw v3

    .line 366
    :cond_d
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 367
    .line 368
    sget-object v0, Lu7/y0;->e:Lu7/y0;

    .line 369
    .line 370
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    check-cast v0, Lr1/x;

    .line 375
    .line 376
    throw v3

    .line 377
    :cond_e
    new-instance v2, Lf2/m0;

    .line 378
    .line 379
    invoke-direct {v2, v5}, Lf2/m0;-><init>([Lf2/a;)V

    .line 380
    .line 381
    .line 382
    :cond_f
    iget-object v3, v0, Lr1/y;->e:Lr1/s;

    .line 383
    .line 384
    iget-wide v3, v3, Lr1/r;->a:J

    .line 385
    .line 386
    const-wide/high16 v5, -0x8000000000000000L

    .line 387
    .line 388
    cmp-long v7, v3, v5

    .line 389
    .line 390
    if-nez v7, :cond_10

    .line 391
    .line 392
    goto :goto_8

    .line 393
    :cond_10
    new-instance v3, Lf2/d;

    .line 394
    .line 395
    invoke-direct {v3, v2}, Lf2/d;-><init>(Lf2/a;)V

    .line 396
    .line 397
    .line 398
    iget-object v2, v0, Lr1/y;->e:Lr1/s;

    .line 399
    .line 400
    iget-boolean v4, v3, Lf2/d;->d:Z

    .line 401
    .line 402
    xor-int/2addr v4, v8

    .line 403
    invoke-static {v4}, La9/o;->t(Z)V

    .line 404
    .line 405
    .line 406
    iget-wide v4, v2, Lr1/r;->a:J

    .line 407
    .line 408
    iget-boolean v2, v3, Lf2/d;->d:Z

    .line 409
    .line 410
    xor-int/2addr v2, v8

    .line 411
    invoke-static {v2}, La9/o;->t(Z)V

    .line 412
    .line 413
    .line 414
    iput-wide v4, v3, Lf2/d;->b:J

    .line 415
    .line 416
    iget-boolean v2, v3, Lf2/d;->d:Z

    .line 417
    .line 418
    xor-int/2addr v2, v8

    .line 419
    invoke-static {v2}, La9/o;->t(Z)V

    .line 420
    .line 421
    .line 422
    iput-boolean v8, v3, Lf2/d;->c:Z

    .line 423
    .line 424
    iget-boolean v2, v3, Lf2/d;->d:Z

    .line 425
    .line 426
    xor-int/2addr v2, v8

    .line 427
    invoke-static {v2}, La9/o;->t(Z)V

    .line 428
    .line 429
    .line 430
    iget-boolean v2, v3, Lf2/d;->d:Z

    .line 431
    .line 432
    xor-int/2addr v2, v8

    .line 433
    invoke-static {v2}, La9/o;->t(Z)V

    .line 434
    .line 435
    .line 436
    iget-boolean v2, v3, Lf2/d;->d:Z

    .line 437
    .line 438
    xor-int/2addr v2, v8

    .line 439
    invoke-static {v2}, La9/o;->t(Z)V

    .line 440
    .line 441
    .line 442
    iget-boolean v2, v3, Lf2/d;->d:Z

    .line 443
    .line 444
    xor-int/2addr v2, v8

    .line 445
    invoke-static {v2}, La9/o;->t(Z)V

    .line 446
    .line 447
    .line 448
    iput-boolean v8, v3, Lf2/d;->d:Z

    .line 449
    .line 450
    new-instance v2, Lf2/g;

    .line 451
    .line 452
    invoke-direct {v2, v3}, Lf2/g;-><init>(Lf2/d;)V

    .line 453
    .line 454
    .line 455
    :goto_8
    iget-object v3, v0, Lr1/y;->b:Lr1/v;

    .line 456
    .line 457
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    .line 459
    .line 460
    iget-object v0, v0, Lr1/y;->b:Lr1/v;

    .line 461
    .line 462
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    return-object v2

    .line 466
    :catch_0
    move-exception v0

    .line 467
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 468
    .line 469
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 470
    .line 471
    .line 472
    throw v2

    .line 473
    :cond_11
    iget-object v0, v0, Lr1/y;->b:Lr1/v;

    .line 474
    .line 475
    iget-wide v4, v0, Lr1/v;->e:J

    .line 476
    .line 477
    sget-object v0, Lu1/f0;->a:Ljava/lang/String;

    .line 478
    .line 479
    goto :goto_a

    .line 480
    :goto_9
    throw v3

    .line 481
    :goto_a
    goto :goto_9
.end method

.method public final c(Z)Lf2/b0;
    .locals 2

    .line 1
    iput-boolean p1, p0, Lf2/q;->h:Z

    .line 2
    .line 3
    iget-object v0, p0, Lf2/q;->a:Lf2/p;

    .line 4
    .line 5
    iput-boolean p1, v0, Lf2/p;->e:Z

    .line 6
    .line 7
    iget-object v1, v0, Lf2/p;->a:Ll2/m;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iput-boolean p1, v1, Ll2/m;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit v1

    .line 13
    iget-object v0, v0, Lf2/p;->c:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lf2/b0;

    .line 34
    .line 35
    invoke-interface {v1, p1}, Lf2/b0;->c(Z)Lf2/b0;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object p0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    goto :goto_2

    .line 43
    :goto_1
    throw p1

    .line 44
    :goto_2
    goto :goto_1
.end method

.method public final d(I)Lf2/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/q;->a:Lf2/p;

    .line 2
    .line 3
    iput p1, v0, Lf2/p;->g:I

    .line 4
    .line 5
    iget-object v0, v0, Lf2/p;->a:Ll2/m;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iput p1, v0, Ll2/m;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method
