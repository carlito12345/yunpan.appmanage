.class public final Lm2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/o;


# static fields
.field public static final s:[I

.field public static final t:[I

.field public static final u:[B

.field public static final v:[B


# instance fields
.field public final a:[B

.field public final b:I

.field public final c:Ll2/n;

.field public d:Z

.field public e:J

.field public f:I

.field public g:I

.field public h:J

.field public i:I

.field public j:I

.field public k:J

.field public l:Lf2/u0;

.field public m:Ll2/j0;

.field public n:Ll2/j0;

.field public o:Ll2/c0;

.field public p:Z

.field public q:J

.field public r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lm2/a;->s:[I

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lm2/a;->t:[I

    .line 16
    .line 17
    sget-object v0, Lu1/f0;->a:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    const-string v1, "#!AMR\n"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sput-object v1, Lm2/a;->u:[B

    .line 28
    .line 29
    const-string v1, "#!AMR-WB\n"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lm2/a;->v:[B

    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lm2/a;->b:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    iput-object v0, p0, Lm2/a;->a:[B

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lm2/a;->i:I

    .line 14
    .line 15
    new-instance v0, Ll2/n;

    .line 16
    .line 17
    invoke-direct {v0}, Ll2/n;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lm2/a;->c:Ll2/n;

    .line 21
    .line 22
    iput-object v0, p0, Lm2/a;->n:Ll2/j0;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Ll2/o;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c(Ll2/q;)V
    .locals 2

    .line 1
    check-cast p1, Lf2/u0;

    .line 2
    .line 3
    iput-object p1, p0, Lm2/a;->l:Lf2/u0;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v0, v1}, Lf2/u0;->z(II)Ll2/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lm2/a;->m:Ll2/j0;

    .line 12
    .line 13
    iput-object v0, p0, Lm2/a;->n:Ll2/j0;

    .line 14
    .line 15
    invoke-interface {p1}, Ll2/q;->q()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final d(Ll2/p;Ldd/c;)I
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, v0, Lm2/a;->m:Ll2/j0;

    .line 8
    .line 9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v4, Lu1/f0;->a:Ljava/lang/String;

    .line 13
    .line 14
    move-object v4, v1

    .line 15
    check-cast v4, Ll2/l;

    .line 16
    .line 17
    iget-wide v4, v4, Ll2/l;->d:J

    .line 18
    .line 19
    const-wide/16 v6, 0x0

    .line 20
    .line 21
    cmp-long v8, v4, v6

    .line 22
    .line 23
    if-nez v8, :cond_1

    .line 24
    .line 25
    move-object v4, v1

    .line 26
    check-cast v4, Ll2/l;

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Lm2/a;->i(Ll2/l;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v1, "Could not find AMR header."

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    throw v1

    .line 43
    :cond_1
    :goto_0
    iget-boolean v4, v0, Lm2/a;->r:Z

    .line 44
    .line 45
    if-nez v4, :cond_6

    .line 46
    .line 47
    iput-boolean v3, v0, Lm2/a;->r:Z

    .line 48
    .line 49
    iget-boolean v4, v0, Lm2/a;->d:Z

    .line 50
    .line 51
    const-string v5, "audio/amr-wb"

    .line 52
    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    move-object v8, v5

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const-string v8, "audio/amr"

    .line 58
    .line 59
    :goto_1
    if-eqz v4, :cond_3

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    const-string v5, "audio/3gpp"

    .line 63
    .line 64
    :goto_2
    if-eqz v4, :cond_4

    .line 65
    .line 66
    const/16 v9, 0x3e80

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/16 v9, 0x1f40

    .line 70
    .line 71
    :goto_3
    if-eqz v4, :cond_5

    .line 72
    .line 73
    sget-object v4, Lm2/a;->t:[I

    .line 74
    .line 75
    const/16 v10, 0x8

    .line 76
    .line 77
    aget v4, v4, v10

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_5
    sget-object v4, Lm2/a;->s:[I

    .line 81
    .line 82
    const/4 v10, 0x7

    .line 83
    aget v4, v4, v10

    .line 84
    .line 85
    :goto_4
    iget-object v10, v0, Lm2/a;->m:Ll2/j0;

    .line 86
    .line 87
    new-instance v11, Lr1/o;

    .line 88
    .line 89
    invoke-direct {v11}, Lr1/o;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-static {v8}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    iput-object v8, v11, Lr1/o;->m:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v5}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    iput-object v5, v11, Lr1/o;->n:Ljava/lang/String;

    .line 103
    .line 104
    iput v4, v11, Lr1/o;->o:I

    .line 105
    .line 106
    iput v3, v11, Lr1/o;->F:I

    .line 107
    .line 108
    iput v9, v11, Lr1/o;->G:I

    .line 109
    .line 110
    new-instance v4, Lr1/p;

    .line 111
    .line 112
    invoke-direct {v4, v11}, Lr1/p;-><init>(Lr1/o;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v10, v4}, Ll2/j0;->g(Lr1/p;)V

    .line 116
    .line 117
    .line 118
    :cond_6
    iget v4, v0, Lm2/a;->g:I

    .line 119
    .line 120
    const-wide/16 v8, 0x4e20

    .line 121
    .line 122
    const/4 v5, -0x1

    .line 123
    if-nez v4, :cond_b

    .line 124
    .line 125
    :try_start_0
    move-object v4, v1

    .line 126
    check-cast v4, Ll2/l;

    .line 127
    .line 128
    invoke-virtual {v0, v4}, Lm2/a;->h(Ll2/l;)I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    iput v4, v0, Lm2/a;->f:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    iput v4, v0, Lm2/a;->g:I

    .line 135
    .line 136
    iget v10, v0, Lm2/a;->i:I

    .line 137
    .line 138
    if-ne v10, v5, :cond_7

    .line 139
    .line 140
    move-object v10, v1

    .line 141
    check-cast v10, Ll2/l;

    .line 142
    .line 143
    iget-wide v10, v10, Ll2/l;->d:J

    .line 144
    .line 145
    iput-wide v10, v0, Lm2/a;->h:J

    .line 146
    .line 147
    iput v4, v0, Lm2/a;->i:I

    .line 148
    .line 149
    :cond_7
    iget v10, v0, Lm2/a;->i:I

    .line 150
    .line 151
    if-ne v10, v4, :cond_8

    .line 152
    .line 153
    iget v10, v0, Lm2/a;->j:I

    .line 154
    .line 155
    add-int/2addr v10, v3

    .line 156
    iput v10, v0, Lm2/a;->j:I

    .line 157
    .line 158
    :cond_8
    iget-object v10, v0, Lm2/a;->o:Ll2/c0;

    .line 159
    .line 160
    instance-of v11, v10, Ll2/y;

    .line 161
    .line 162
    if-eqz v11, :cond_b

    .line 163
    .line 164
    check-cast v10, Ll2/y;

    .line 165
    .line 166
    iget-wide v11, v0, Lm2/a;->k:J

    .line 167
    .line 168
    iget-wide v13, v0, Lm2/a;->e:J

    .line 169
    .line 170
    add-long/2addr v11, v13

    .line 171
    add-long/2addr v11, v8

    .line 172
    move-object v13, v1

    .line 173
    check-cast v13, Ll2/l;

    .line 174
    .line 175
    iget-wide v13, v13, Ll2/l;->d:J

    .line 176
    .line 177
    int-to-long v6, v4

    .line 178
    add-long/2addr v13, v6

    .line 179
    iget-object v4, v10, Ll2/y;->b:Lsb/e;

    .line 180
    .line 181
    iget v6, v4, Lsb/e;->b:I

    .line 182
    .line 183
    if-nez v6, :cond_9

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_9
    sub-int/2addr v6, v3

    .line 187
    invoke-virtual {v4, v6}, Lsb/e;->c(I)J

    .line 188
    .line 189
    .line 190
    move-result-wide v6

    .line 191
    sub-long v6, v11, v6

    .line 192
    .line 193
    const-wide/32 v17, 0x186a0

    .line 194
    .line 195
    .line 196
    cmp-long v4, v6, v17

    .line 197
    .line 198
    if-gez v4, :cond_a

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_a
    :goto_5
    invoke-virtual {v10, v11, v12, v13, v14}, Ll2/y;->i(JJ)V

    .line 202
    .line 203
    .line 204
    :goto_6
    iget-boolean v4, v0, Lm2/a;->p:Z

    .line 205
    .line 206
    if-eqz v4, :cond_b

    .line 207
    .line 208
    iget-wide v6, v0, Lm2/a;->q:J

    .line 209
    .line 210
    sub-long/2addr v6, v11

    .line 211
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    .line 212
    .line 213
    .line 214
    move-result-wide v6

    .line 215
    cmp-long v4, v6, v8

    .line 216
    .line 217
    if-gez v4, :cond_b

    .line 218
    .line 219
    iput-boolean v2, v0, Lm2/a;->p:Z

    .line 220
    .line 221
    iget-object v4, v0, Lm2/a;->m:Ll2/j0;

    .line 222
    .line 223
    iput-object v4, v0, Lm2/a;->n:Ll2/j0;

    .line 224
    .line 225
    goto :goto_8

    .line 226
    :catch_0
    :goto_7
    const/4 v4, -0x1

    .line 227
    goto :goto_a

    .line 228
    :cond_b
    :goto_8
    iget-object v4, v0, Lm2/a;->n:Ll2/j0;

    .line 229
    .line 230
    iget v6, v0, Lm2/a;->g:I

    .line 231
    .line 232
    invoke-interface {v4, v1, v6, v3}, Ll2/j0;->e(Lr1/h;IZ)I

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    if-ne v4, v5, :cond_c

    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_c
    iget v6, v0, Lm2/a;->g:I

    .line 240
    .line 241
    sub-int/2addr v6, v4

    .line 242
    iput v6, v0, Lm2/a;->g:I

    .line 243
    .line 244
    if-lez v6, :cond_d

    .line 245
    .line 246
    :goto_9
    const/4 v4, 0x0

    .line 247
    goto :goto_a

    .line 248
    :cond_d
    iget-object v4, v0, Lm2/a;->n:Ll2/j0;

    .line 249
    .line 250
    iget-wide v6, v0, Lm2/a;->k:J

    .line 251
    .line 252
    iget-wide v10, v0, Lm2/a;->e:J

    .line 253
    .line 254
    add-long v18, v6, v10

    .line 255
    .line 256
    iget v6, v0, Lm2/a;->f:I

    .line 257
    .line 258
    const/16 v20, 0x1

    .line 259
    .line 260
    const/16 v22, 0x0

    .line 261
    .line 262
    const/16 v23, 0x0

    .line 263
    .line 264
    move-object/from16 v17, v4

    .line 265
    .line 266
    move/from16 v21, v6

    .line 267
    .line 268
    invoke-interface/range {v17 .. v23}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 269
    .line 270
    .line 271
    iget-wide v6, v0, Lm2/a;->e:J

    .line 272
    .line 273
    add-long/2addr v6, v8

    .line 274
    iput-wide v6, v0, Lm2/a;->e:J

    .line 275
    .line 276
    goto :goto_9

    .line 277
    :goto_a
    check-cast v1, Ll2/l;

    .line 278
    .line 279
    iget-object v6, v0, Lm2/a;->o:Ll2/c0;

    .line 280
    .line 281
    if-eqz v6, :cond_e

    .line 282
    .line 283
    goto/16 :goto_e

    .line 284
    .line 285
    :cond_e
    iget v6, v0, Lm2/a;->b:I

    .line 286
    .line 287
    and-int/lit8 v7, v6, 0x4

    .line 288
    .line 289
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    if-eqz v7, :cond_f

    .line 295
    .line 296
    new-instance v1, Ll2/y;

    .line 297
    .line 298
    iget-wide v6, v0, Lm2/a;->h:J

    .line 299
    .line 300
    new-array v8, v3, [J

    .line 301
    .line 302
    aput-wide v6, v8, v2

    .line 303
    .line 304
    new-array v3, v3, [J

    .line 305
    .line 306
    const-wide/16 v6, 0x0

    .line 307
    .line 308
    aput-wide v6, v3, v2

    .line 309
    .line 310
    invoke-direct {v1, v10, v11, v8, v3}, Ll2/y;-><init>(J[J[J)V

    .line 311
    .line 312
    .line 313
    iput-object v1, v0, Lm2/a;->o:Ll2/c0;

    .line 314
    .line 315
    goto :goto_d

    .line 316
    :cond_f
    and-int/lit8 v7, v6, 0x1

    .line 317
    .line 318
    if-eqz v7, :cond_13

    .line 319
    .line 320
    iget v7, v0, Lm2/a;->i:I

    .line 321
    .line 322
    if-eq v7, v5, :cond_10

    .line 323
    .line 324
    iget v12, v0, Lm2/a;->f:I

    .line 325
    .line 326
    if-eq v7, v12, :cond_10

    .line 327
    .line 328
    goto :goto_c

    .line 329
    :cond_10
    iget v10, v0, Lm2/a;->j:I

    .line 330
    .line 331
    const/16 v11, 0x14

    .line 332
    .line 333
    if-ge v10, v11, :cond_11

    .line 334
    .line 335
    if-ne v4, v5, :cond_14

    .line 336
    .line 337
    :cond_11
    and-int/lit8 v6, v6, 0x2

    .line 338
    .line 339
    if-eqz v6, :cond_12

    .line 340
    .line 341
    const/16 v19, 0x1

    .line 342
    .line 343
    goto :goto_b

    .line 344
    :cond_12
    const/16 v19, 0x0

    .line 345
    .line 346
    :goto_b
    int-to-long v2, v7

    .line 347
    const-wide/32 v10, 0x7a1200

    .line 348
    .line 349
    .line 350
    mul-long v2, v2, v10

    .line 351
    .line 352
    div-long/2addr v2, v8

    .line 353
    long-to-int v3, v2

    .line 354
    new-instance v2, Ll2/k;

    .line 355
    .line 356
    iget-wide v8, v0, Lm2/a;->h:J

    .line 357
    .line 358
    const/16 v20, 0x1

    .line 359
    .line 360
    iget-wide v13, v1, Ll2/l;->c:J

    .line 361
    .line 362
    move-object v12, v2

    .line 363
    move-wide v15, v8

    .line 364
    move/from16 v17, v3

    .line 365
    .line 366
    move/from16 v18, v7

    .line 367
    .line 368
    invoke-direct/range {v12 .. v20}, Ll2/k;-><init>(JJIIZZ)V

    .line 369
    .line 370
    .line 371
    iput-object v2, v0, Lm2/a;->o:Ll2/c0;

    .line 372
    .line 373
    iget-object v1, v0, Lm2/a;->m:Ll2/j0;

    .line 374
    .line 375
    iget-wide v2, v2, Ll2/k;->f:J

    .line 376
    .line 377
    invoke-interface {v1, v2, v3}, Ll2/j0;->d(J)V

    .line 378
    .line 379
    .line 380
    goto :goto_d

    .line 381
    :cond_13
    :goto_c
    new-instance v1, Ll2/s;

    .line 382
    .line 383
    invoke-direct {v1, v10, v11}, Ll2/s;-><init>(J)V

    .line 384
    .line 385
    .line 386
    iput-object v1, v0, Lm2/a;->o:Ll2/c0;

    .line 387
    .line 388
    :cond_14
    :goto_d
    iget-object v1, v0, Lm2/a;->o:Ll2/c0;

    .line 389
    .line 390
    if-eqz v1, :cond_15

    .line 391
    .line 392
    iget-object v2, v0, Lm2/a;->l:Lf2/u0;

    .line 393
    .line 394
    invoke-virtual {v2, v1}, Lf2/u0;->s(Ll2/c0;)V

    .line 395
    .line 396
    .line 397
    :cond_15
    :goto_e
    if-ne v4, v5, :cond_16

    .line 398
    .line 399
    iget-object v1, v0, Lm2/a;->o:Ll2/c0;

    .line 400
    .line 401
    instance-of v2, v1, Ll2/y;

    .line 402
    .line 403
    if-eqz v2, :cond_16

    .line 404
    .line 405
    iget-wide v2, v0, Lm2/a;->k:J

    .line 406
    .line 407
    iget-wide v5, v0, Lm2/a;->e:J

    .line 408
    .line 409
    add-long/2addr v2, v5

    .line 410
    move-object v5, v1

    .line 411
    check-cast v5, Ll2/y;

    .line 412
    .line 413
    iput-wide v2, v5, Ll2/y;->c:J

    .line 414
    .line 415
    iget-object v5, v0, Lm2/a;->l:Lf2/u0;

    .line 416
    .line 417
    invoke-virtual {v5, v1}, Lf2/u0;->s(Ll2/c0;)V

    .line 418
    .line 419
    .line 420
    iget-object v1, v0, Lm2/a;->m:Ll2/j0;

    .line 421
    .line 422
    invoke-interface {v1, v2, v3}, Ll2/j0;->d(J)V

    .line 423
    .line 424
    .line 425
    :cond_16
    return v4
.end method

.method public final e(JJ)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lm2/a;->e:J

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lm2/a;->f:I

    .line 7
    .line 8
    iput v2, p0, Lm2/a;->g:I

    .line 9
    .line 10
    iput-wide p3, p0, Lm2/a;->q:J

    .line 11
    .line 12
    iget-object p3, p0, Lm2/a;->o:Ll2/c0;

    .line 13
    .line 14
    instance-of p4, p3, Ll2/y;

    .line 15
    .line 16
    if-eqz p4, :cond_2

    .line 17
    .line 18
    check-cast p3, Ll2/y;

    .line 19
    .line 20
    iget-object p4, p3, Ll2/y;->b:Lsb/e;

    .line 21
    .line 22
    iget v0, p4, Lsb/e;->b:I

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p3, p3, Ll2/y;->a:Lsb/e;

    .line 33
    .line 34
    invoke-static {p3, p1, p2}, Lu1/f0;->b(Lsb/e;J)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p4, p1}, Lsb/e;->c(I)J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    :goto_0
    iput-wide p1, p0, Lm2/a;->k:J

    .line 43
    .line 44
    iget-wide p3, p0, Lm2/a;->q:J

    .line 45
    .line 46
    sub-long/2addr p3, p1

    .line 47
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    const-wide/16 p3, 0x4e20

    .line 52
    .line 53
    cmp-long v0, p1, p3

    .line 54
    .line 55
    if-gez v0, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lm2/a;->p:Z

    .line 60
    .line 61
    iget-object p1, p0, Lm2/a;->c:Ll2/n;

    .line 62
    .line 63
    iput-object p1, p0, Lm2/a;->n:Ll2/j0;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    cmp-long p4, p1, v0

    .line 67
    .line 68
    if-eqz p4, :cond_3

    .line 69
    .line 70
    instance-of p4, p3, Ll2/k;

    .line 71
    .line 72
    if-eqz p4, :cond_3

    .line 73
    .line 74
    check-cast p3, Ll2/k;

    .line 75
    .line 76
    iget-wide v2, p3, Ll2/k;->b:J

    .line 77
    .line 78
    sub-long/2addr p1, v2

    .line 79
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide p1

    .line 83
    const-wide/32 v0, 0x7a1200

    .line 84
    .line 85
    .line 86
    mul-long p1, p1, v0

    .line 87
    .line 88
    iget p3, p3, Ll2/k;->e:I

    .line 89
    .line 90
    int-to-long p3, p3

    .line 91
    div-long/2addr p1, p3

    .line 92
    iput-wide p1, p0, Lm2/a;->k:J

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    iput-wide v0, p0, Lm2/a;->k:J

    .line 96
    .line 97
    :goto_1
    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 2
    .line 3
    sget-object v0, Lu7/y0;->e:Lu7/y0;

    .line 4
    .line 5
    return-object v0
.end method

.method public final g(Ll2/p;)Z
    .locals 0

    .line 1
    check-cast p1, Ll2/l;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lm2/a;->i(Ll2/l;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final h(Ll2/l;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p1, Ll2/l;->f:I

    .line 3
    .line 4
    iget-object v1, p0, Lm2/a;->a:[B

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p1, v1, v0, v2, v0}, Ll2/l;->c([BIIZ)Z

    .line 8
    .line 9
    .line 10
    aget-byte p1, v1, v0

    .line 11
    .line 12
    and-int/lit16 v0, p1, 0x83

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-gtz v0, :cond_5

    .line 16
    .line 17
    shr-int/lit8 p1, p1, 0x3

    .line 18
    .line 19
    const/16 v0, 0xf

    .line 20
    .line 21
    and-int/2addr p1, v0

    .line 22
    if-ltz p1, :cond_3

    .line 23
    .line 24
    if-gt p1, v0, :cond_3

    .line 25
    .line 26
    iget-boolean v0, p0, Lm2/a;->d:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/16 v2, 0xa

    .line 31
    .line 32
    if-lt p1, v2, :cond_1

    .line 33
    .line 34
    const/16 v2, 0xd

    .line 35
    .line 36
    if-le p1, v2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-nez v0, :cond_3

    .line 40
    .line 41
    const/16 v2, 0xc

    .line 42
    .line 43
    if-lt p1, v2, :cond_1

    .line 44
    .line 45
    const/16 v2, 0xe

    .line 46
    .line 47
    if-le p1, v2, :cond_3

    .line 48
    .line 49
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 50
    .line 51
    sget-object v0, Lm2/a;->t:[I

    .line 52
    .line 53
    aget p1, v0, p1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    sget-object v0, Lm2/a;->s:[I

    .line 57
    .line 58
    aget p1, v0, p1

    .line 59
    .line 60
    :goto_1
    return p1

    .line 61
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v2, "Illegal AMR "

    .line 64
    .line 65
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-boolean v2, p0, Lm2/a;->d:Z

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    const-string v2, "WB"

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    const-string v2, "NB"

    .line 76
    .line 77
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v2, " frame type "

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {v1, p1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    throw p1

    .line 97
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v2, "Invalid padding bits for frame header "

    .line 100
    .line 101
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v1, p1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    throw p1
.end method

.method public final i(Ll2/l;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p1, Ll2/l;->f:I

    .line 3
    .line 4
    sget-object v1, Lm2/a;->u:[B

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    new-array v2, v2, [B

    .line 8
    .line 9
    array-length v3, v1

    .line 10
    invoke-virtual {p1, v2, v0, v3, v0}, Ll2/l;->c([BIIZ)Z

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iput-boolean v0, p0, Lm2/a;->d:Z

    .line 21
    .line 22
    array-length v1, v1

    .line 23
    invoke-virtual {p1, v1, v0}, Ll2/l;->o(IZ)Z

    .line 24
    .line 25
    .line 26
    return v3

    .line 27
    :cond_0
    iput v0, p1, Ll2/l;->f:I

    .line 28
    .line 29
    sget-object v1, Lm2/a;->v:[B

    .line 30
    .line 31
    array-length v2, v1

    .line 32
    new-array v2, v2, [B

    .line 33
    .line 34
    array-length v4, v1

    .line 35
    invoke-virtual {p1, v2, v0, v4, v0}, Ll2/l;->c([BIIZ)Z

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    iput-boolean v3, p0, Lm2/a;->d:Z

    .line 45
    .line 46
    array-length v1, v1

    .line 47
    invoke-virtual {p1, v1, v0}, Ll2/l;->o(IZ)Z

    .line 48
    .line 49
    .line 50
    return v3

    .line 51
    :cond_1
    return v0
.end method
