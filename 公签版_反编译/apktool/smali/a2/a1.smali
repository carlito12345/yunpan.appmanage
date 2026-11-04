.class public final La2/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final t:Ljava/lang/Object;

.field public static u:Ljava/util/concurrent/ScheduledExecutorService;

.field public static v:I


# instance fields
.field public final a:Landroid/media/AudioTrack;

.field public final b:La2/x;

.field public final c:F

.field public final d:La1/i;

.field public e:La2/w0;

.field public final f:La2/e1;

.field public final g:Z

.field public final h:I

.field public final i:Lv3/f;

.field public final j:Lu1/m;

.field public k:Z

.field public l:J

.field public m:J

.field public n:J

.field public o:Ljava/nio/ByteBuffer;

.field public p:I

.field public q:I

.field public r:I

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La2/a1;->t:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioTrack;La2/x;La1/i;FLu1/z;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La2/a1;->a:Landroid/media/AudioTrack;

    .line 5
    .line 6
    iput-object p2, p0, La2/a1;->b:La2/x;

    .line 7
    .line 8
    iput p4, p0, La2/a1;->c:F

    .line 9
    .line 10
    iput-object p3, p0, La2/a1;->d:La1/i;

    .line 11
    .line 12
    new-instance p4, Lu1/m;

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p4, v0}, Lu1/m;-><init>(Ljava/lang/Thread;)V

    .line 19
    .line 20
    .line 21
    iput-object p4, p0, La2/a1;->j:Lu1/m;

    .line 22
    .line 23
    iget p4, p2, La2/x;->a:I

    .line 24
    .line 25
    invoke-static {p4}, Lu1/f0;->D(I)Z

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    iput-boolean p4, p0, La2/a1;->g:Z

    .line 30
    .line 31
    if-eqz p4, :cond_0

    .line 32
    .line 33
    iget p4, p2, La2/x;->c:I

    .line 34
    .line 35
    invoke-static {p4}, Ljava/lang/Integer;->bitCount(I)I

    .line 36
    .line 37
    .line 38
    move-result p4

    .line 39
    iget v0, p2, La2/x;->a:I

    .line 40
    .line 41
    invoke-static {v0}, Lu1/f0;->o(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    mul-int v0, v0, p4

    .line 46
    .line 47
    iput v0, p0, La2/a1;->h:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p4, -0x1

    .line 51
    iput p4, p0, La2/a1;->h:I

    .line 52
    .line 53
    :goto_0
    new-instance p4, La2/e1;

    .line 54
    .line 55
    new-instance v1, La1/i;

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    invoke-direct {v1, v0, p0}, La1/i;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget v5, p0, La2/a1;->h:I

    .line 62
    .line 63
    iget v6, p2, La2/x;->f:I

    .line 64
    .line 65
    iget v4, p2, La2/x;->a:I

    .line 66
    .line 67
    move-object v0, p4

    .line 68
    move-object v2, p5

    .line 69
    move-object v3, p1

    .line 70
    invoke-direct/range {v0 .. v6}, La2/e1;-><init>(La1/i;Lu1/z;Landroid/media/AudioTrack;III)V

    .line 71
    .line 72
    .line 73
    iput-object p4, p0, La2/a1;->f:La2/e1;

    .line 74
    .line 75
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    .line 77
    const/16 p4, 0x18

    .line 78
    .line 79
    if-lt p2, p4, :cond_1

    .line 80
    .line 81
    if-eqz p3, :cond_1

    .line 82
    .line 83
    new-instance p2, La2/w0;

    .line 84
    .line 85
    invoke-direct {p2, p1, p3}, La2/w0;-><init>(Landroid/media/AudioTrack;La1/i;)V

    .line 86
    .line 87
    .line 88
    iput-object p2, p0, La2/a1;->e:La2/w0;

    .line 89
    .line 90
    :cond_1
    invoke-virtual {p0}, La2/a1;->c()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    new-instance p1, Lv3/f;

    .line 97
    .line 98
    invoke-direct {p1, p0}, Lv3/f;-><init>(La2/a1;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    const/4 p1, 0x0

    .line 103
    :goto_1
    iput-object p1, p0, La2/a1;->i:Lv3/f;

    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 29

    .line 1
    const/4 v0, 0x1

    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    iget-object v2, v1, La2/a1;->f:La2/e1;

    .line 5
    .line 6
    iget-object v3, v2, La2/e1;->d:Landroid/media/AudioTrack;

    .line 7
    .line 8
    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    iget-object v5, v2, La2/e1;->h:La2/r0;

    .line 13
    .line 14
    const-wide/16 v6, 0x3e8

    .line 15
    .line 16
    const-wide/16 v9, 0x0

    .line 17
    .line 18
    iget-object v12, v2, La2/e1;->b:Lu1/z;

    .line 19
    .line 20
    const/4 v13, 0x3

    .line 21
    if-ne v4, v13, :cond_19

    .line 22
    .line 23
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v14

    .line 30
    div-long/2addr v14, v6

    .line 31
    move-object/from16 v16, v12

    .line 32
    .line 33
    iget-wide v11, v2, La2/e1;->l:J

    .line 34
    .line 35
    sub-long v11, v14, v11

    .line 36
    .line 37
    const-wide/16 v17, 0x7530

    .line 38
    .line 39
    cmp-long v19, v11, v17

    .line 40
    .line 41
    if-ltz v19, :cond_3

    .line 42
    .line 43
    invoke-virtual {v2}, La2/e1;->a()J

    .line 44
    .line 45
    .line 46
    move-result-wide v11

    .line 47
    iget v4, v2, La2/e1;->e:I

    .line 48
    .line 49
    invoke-static {v4, v11, v12}, Lu1/f0;->K(IJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v11

    .line 53
    cmp-long v4, v11, v9

    .line 54
    .line 55
    if-nez v4, :cond_0

    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_0
    iget v4, v2, La2/e1;->s:I

    .line 60
    .line 61
    iget v13, v2, La2/e1;->i:F

    .line 62
    .line 63
    const/high16 v19, 0x3f800000    # 1.0f

    .line 64
    .line 65
    cmpl-float v19, v13, v19

    .line 66
    .line 67
    if-nez v19, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    long-to-double v11, v11

    .line 71
    float-to-double v6, v13

    .line 72
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    .line 73
    .line 74
    .line 75
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 76
    .line 77
    .line 78
    div-double/2addr v11, v6

    .line 79
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    .line 80
    .line 81
    .line 82
    move-result-wide v11

    .line 83
    :goto_0
    sub-long/2addr v11, v14

    .line 84
    iget-object v6, v2, La2/e1;->c:[J

    .line 85
    .line 86
    aput-wide v11, v6, v4

    .line 87
    .line 88
    iget v4, v2, La2/e1;->s:I

    .line 89
    .line 90
    add-int/2addr v4, v0

    .line 91
    const/16 v7, 0xa

    .line 92
    .line 93
    rem-int/2addr v4, v7

    .line 94
    iput v4, v2, La2/e1;->s:I

    .line 95
    .line 96
    iget v4, v2, La2/e1;->t:I

    .line 97
    .line 98
    if-ge v4, v7, :cond_2

    .line 99
    .line 100
    add-int/2addr v4, v0

    .line 101
    iput v4, v2, La2/e1;->t:I

    .line 102
    .line 103
    :cond_2
    iput-wide v14, v2, La2/e1;->l:J

    .line 104
    .line 105
    iput-wide v9, v2, La2/e1;->k:J

    .line 106
    .line 107
    const/4 v4, 0x0

    .line 108
    :goto_1
    iget v7, v2, La2/e1;->t:I

    .line 109
    .line 110
    if-ge v4, v7, :cond_3

    .line 111
    .line 112
    iget-wide v11, v2, La2/e1;->k:J

    .line 113
    .line 114
    aget-wide v21, v6, v4

    .line 115
    .line 116
    int-to-long v8, v7

    .line 117
    div-long v21, v21, v8

    .line 118
    .line 119
    add-long v7, v21, v11

    .line 120
    .line 121
    iput-wide v7, v2, La2/e1;->k:J

    .line 122
    .line 123
    add-int/2addr v4, v0

    .line 124
    const-wide/16 v9, 0x0

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    iget-wide v6, v2, La2/e1;->n:J

    .line 128
    .line 129
    iget-boolean v4, v2, La2/e1;->g:Z

    .line 130
    .line 131
    const-wide/32 v8, 0x7a120

    .line 132
    .line 133
    .line 134
    if-eqz v4, :cond_5

    .line 135
    .line 136
    iget-object v4, v2, La2/e1;->m:Ljava/lang/reflect/Method;

    .line 137
    .line 138
    if-eqz v4, :cond_5

    .line 139
    .line 140
    iget-wide v10, v2, La2/e1;->o:J

    .line 141
    .line 142
    sub-long v10, v14, v10

    .line 143
    .line 144
    cmp-long v12, v10, v8

    .line 145
    .line 146
    if-ltz v12, :cond_5

    .line 147
    .line 148
    const/4 v10, 0x0

    .line 149
    :try_start_0
    invoke-virtual {v4, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    check-cast v4, Ljava/lang/Integer;

    .line 154
    .line 155
    sget-object v11, Lu1/f0;->a:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    int-to-long v11, v4

    .line 162
    const-wide/16 v19, 0x3e8

    .line 163
    .line 164
    mul-long v11, v11, v19

    .line 165
    .line 166
    iget-wide v8, v2, La2/e1;->f:J

    .line 167
    .line 168
    sub-long/2addr v11, v8

    .line 169
    iput-wide v11, v2, La2/e1;->n:J

    .line 170
    .line 171
    const-wide/16 v8, 0x0

    .line 172
    .line 173
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 174
    .line 175
    .line 176
    move-result-wide v11

    .line 177
    iput-wide v11, v2, La2/e1;->n:J

    .line 178
    .line 179
    const-wide/32 v8, 0x989680

    .line 180
    .line 181
    .line 182
    cmp-long v4, v11, v8

    .line 183
    .line 184
    if-lez v4, :cond_4

    .line 185
    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v8, "Ignoring impossibly large audio latency: "

    .line 189
    .line 190
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-static {v4}, Lu1/a;->p(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const-wide/16 v8, 0x0

    .line 204
    .line 205
    iput-wide v8, v2, La2/e1;->n:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :catch_0
    iput-object v10, v2, La2/e1;->m:Ljava/lang/reflect/Method;

    .line 209
    .line 210
    :cond_4
    :goto_2
    iput-wide v14, v2, La2/e1;->o:J

    .line 211
    .line 212
    :cond_5
    iget-wide v8, v2, La2/e1;->n:J

    .line 213
    .line 214
    cmp-long v4, v6, v8

    .line 215
    .line 216
    if-eqz v4, :cond_6

    .line 217
    .line 218
    const/4 v4, 0x1

    .line 219
    goto :goto_3

    .line 220
    :cond_6
    const/4 v4, 0x0

    .line 221
    :goto_3
    iget v6, v2, La2/e1;->i:F

    .line 222
    .line 223
    invoke-virtual {v2, v14, v15}, La2/e1;->b(J)J

    .line 224
    .line 225
    .line 226
    move-result-wide v7

    .line 227
    if-nez v4, :cond_7

    .line 228
    .line 229
    iget-wide v9, v5, La2/r0;->g:J

    .line 230
    .line 231
    sub-long v9, v14, v9

    .line 232
    .line 233
    iget-wide v11, v5, La2/r0;->f:J

    .line 234
    .line 235
    cmp-long v4, v9, v11

    .line 236
    .line 237
    if-gez v4, :cond_7

    .line 238
    .line 239
    :goto_4
    move-object/from16 v17, v2

    .line 240
    .line 241
    move-object/from16 v23, v3

    .line 242
    .line 243
    goto/16 :goto_a

    .line 244
    .line 245
    :cond_7
    iput-wide v14, v5, La2/r0;->g:J

    .line 246
    .line 247
    iget-object v9, v5, La2/r0;->a:La2/q0;

    .line 248
    .line 249
    iget-object v4, v9, La2/q0;->a:Landroid/media/AudioTrack;

    .line 250
    .line 251
    iget-object v10, v9, La2/q0;->b:Landroid/media/AudioTimestamp;

    .line 252
    .line 253
    invoke-static {v4, v10}, La2/p0;->u(Landroid/media/AudioTrack;Landroid/media/AudioTimestamp;)Z

    .line 254
    .line 255
    .line 256
    move-result v10

    .line 257
    if-eqz v10, :cond_a

    .line 258
    .line 259
    iget-object v4, v9, La2/q0;->b:Landroid/media/AudioTimestamp;

    .line 260
    .line 261
    invoke-static {v4}, La2/p0;->y(Landroid/media/AudioTimestamp;)J

    .line 262
    .line 263
    .line 264
    move-result-wide v11

    .line 265
    iget-wide v0, v9, La2/q0;->d:J

    .line 266
    .line 267
    cmp-long v4, v0, v11

    .line 268
    .line 269
    if-lez v4, :cond_9

    .line 270
    .line 271
    iget-boolean v4, v9, La2/q0;->f:Z

    .line 272
    .line 273
    if-eqz v4, :cond_8

    .line 274
    .line 275
    move-wide/from16 v23, v14

    .line 276
    .line 277
    iget-wide v13, v9, La2/q0;->g:J

    .line 278
    .line 279
    add-long/2addr v13, v0

    .line 280
    iput-wide v13, v9, La2/q0;->g:J

    .line 281
    .line 282
    const/4 v0, 0x0

    .line 283
    iput-boolean v0, v9, La2/q0;->f:Z

    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_8
    move-wide/from16 v23, v14

    .line 287
    .line 288
    iget-wide v0, v9, La2/q0;->c:J

    .line 289
    .line 290
    const-wide/16 v13, 0x1

    .line 291
    .line 292
    add-long/2addr v0, v13

    .line 293
    iput-wide v0, v9, La2/q0;->c:J

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_9
    move-wide/from16 v23, v14

    .line 297
    .line 298
    :goto_5
    iput-wide v11, v9, La2/q0;->d:J

    .line 299
    .line 300
    iget-wide v0, v9, La2/q0;->g:J

    .line 301
    .line 302
    add-long/2addr v11, v0

    .line 303
    iget-wide v0, v9, La2/q0;->c:J

    .line 304
    .line 305
    const/16 v13, 0x20

    .line 306
    .line 307
    shl-long/2addr v0, v13

    .line 308
    add-long/2addr v11, v0

    .line 309
    iput-wide v11, v9, La2/q0;->e:J

    .line 310
    .line 311
    goto :goto_6

    .line 312
    :cond_a
    move-wide/from16 v23, v14

    .line 313
    .line 314
    :goto_6
    iget v0, v5, La2/r0;->b:I

    .line 315
    .line 316
    if-eqz v10, :cond_d

    .line 317
    .line 318
    iget-object v11, v9, La2/q0;->b:Landroid/media/AudioTimestamp;

    .line 319
    .line 320
    invoke-static {v11}, La2/p0;->b(Landroid/media/AudioTimestamp;)J

    .line 321
    .line 322
    .line 323
    move-result-wide v11

    .line 324
    const-wide/16 v13, 0x3e8

    .line 325
    .line 326
    div-long/2addr v11, v13

    .line 327
    move-object/from16 v17, v2

    .line 328
    .line 329
    iget-wide v1, v9, La2/q0;->e:J

    .line 330
    .line 331
    iget-object v4, v9, La2/q0;->b:Landroid/media/AudioTimestamp;

    .line 332
    .line 333
    invoke-static {v4}, La2/p0;->b(Landroid/media/AudioTimestamp;)J

    .line 334
    .line 335
    .line 336
    move-result-wide v19

    .line 337
    div-long v25, v19, v13

    .line 338
    .line 339
    invoke-static {v0, v1, v2}, Lu1/f0;->K(IJ)J

    .line 340
    .line 341
    .line 342
    move-result-wide v1

    .line 343
    sub-long v13, v23, v25

    .line 344
    .line 345
    invoke-static {v13, v14, v6}, Lu1/f0;->s(JF)J

    .line 346
    .line 347
    .line 348
    move-result-wide v13

    .line 349
    add-long/2addr v13, v1

    .line 350
    sub-long v1, v11, v23

    .line 351
    .line 352
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 353
    .line 354
    .line 355
    move-result-wide v1

    .line 356
    const-string v4, ", "

    .line 357
    .line 358
    iget-object v15, v5, La2/r0;->c:La1/i;

    .line 359
    .line 360
    const-wide/32 v26, 0x4c4b40

    .line 361
    .line 362
    .line 363
    cmp-long v28, v1, v26

    .line 364
    .line 365
    if-lez v28, :cond_b

    .line 366
    .line 367
    iget-wide v1, v9, La2/q0;->e:J

    .line 368
    .line 369
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    new-instance v13, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string v14, "Spurious audio timestamp (system clock mismatch): "

    .line 375
    .line 376
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    move-wide/from16 v1, v23

    .line 392
    .line 393
    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    iget-object v4, v15, La1/i;->b:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast v4, La2/a1;

    .line 408
    .line 409
    invoke-virtual {v4}, La2/a1;->b()J

    .line 410
    .line 411
    .line 412
    move-result-wide v7

    .line 413
    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    invoke-static {v4}, Lu1/a;->p(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    const/4 v4, 0x4

    .line 424
    invoke-virtual {v5, v4}, La2/r0;->a(I)V

    .line 425
    .line 426
    .line 427
    goto :goto_7

    .line 428
    :cond_b
    move-wide/from16 v1, v23

    .line 429
    .line 430
    sub-long/2addr v13, v7

    .line 431
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    .line 432
    .line 433
    .line 434
    move-result-wide v13

    .line 435
    cmp-long v23, v13, v26

    .line 436
    .line 437
    if-lez v23, :cond_c

    .line 438
    .line 439
    iget-wide v13, v9, La2/q0;->e:J

    .line 440
    .line 441
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    .line 443
    .line 444
    move-object/from16 v23, v3

    .line 445
    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    move/from16 v24, v6

    .line 449
    .line 450
    const-string v6, "Spurious audio timestamp (frame position mismatch): "

    .line 451
    .line 452
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    iget-object v4, v15, La1/i;->b:Ljava/lang/Object;

    .line 480
    .line 481
    check-cast v4, La2/a1;

    .line 482
    .line 483
    invoke-virtual {v4}, La2/a1;->b()J

    .line 484
    .line 485
    .line 486
    move-result-wide v6

    .line 487
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    invoke-static {v3}, Lu1/a;->p(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    const/4 v3, 0x4

    .line 498
    invoke-virtual {v5, v3}, La2/r0;->a(I)V

    .line 499
    .line 500
    .line 501
    goto :goto_8

    .line 502
    :cond_c
    move-object/from16 v23, v3

    .line 503
    .line 504
    move/from16 v24, v6

    .line 505
    .line 506
    const/4 v3, 0x4

    .line 507
    iget v4, v5, La2/r0;->d:I

    .line 508
    .line 509
    if-ne v4, v3, :cond_e

    .line 510
    .line 511
    const/4 v3, 0x0

    .line 512
    invoke-virtual {v5, v3}, La2/r0;->a(I)V

    .line 513
    .line 514
    .line 515
    goto :goto_8

    .line 516
    :cond_d
    move-object/from16 v17, v2

    .line 517
    .line 518
    move-wide/from16 v1, v23

    .line 519
    .line 520
    :goto_7
    move-object/from16 v23, v3

    .line 521
    .line 522
    move/from16 v24, v6

    .line 523
    .line 524
    :cond_e
    :goto_8
    iget v3, v5, La2/r0;->d:I

    .line 525
    .line 526
    if-eqz v3, :cond_17

    .line 527
    .line 528
    const/4 v6, 0x1

    .line 529
    if-eq v3, v6, :cond_12

    .line 530
    .line 531
    const/4 v6, 0x2

    .line 532
    if-eq v3, v6, :cond_11

    .line 533
    .line 534
    const/4 v0, 0x3

    .line 535
    if-eq v3, v0, :cond_10

    .line 536
    .line 537
    const/4 v0, 0x4

    .line 538
    if-ne v3, v0, :cond_f

    .line 539
    .line 540
    goto/16 :goto_a

    .line 541
    .line 542
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 543
    .line 544
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 545
    .line 546
    .line 547
    throw v0

    .line 548
    :cond_10
    if-eqz v10, :cond_1a

    .line 549
    .line 550
    const/4 v0, 0x0

    .line 551
    invoke-virtual {v5, v0}, La2/r0;->a(I)V

    .line 552
    .line 553
    .line 554
    goto/16 :goto_b

    .line 555
    .line 556
    :cond_11
    const/4 v0, 0x0

    .line 557
    if-nez v10, :cond_1b

    .line 558
    .line 559
    invoke-virtual {v5, v0}, La2/r0;->a(I)V

    .line 560
    .line 561
    .line 562
    goto/16 :goto_a

    .line 563
    .line 564
    :cond_12
    if-eqz v10, :cond_16

    .line 565
    .line 566
    iget-wide v6, v9, La2/q0;->e:J

    .line 567
    .line 568
    iget-wide v10, v5, La2/r0;->h:J

    .line 569
    .line 570
    cmp-long v3, v6, v10

    .line 571
    .line 572
    if-gtz v3, :cond_13

    .line 573
    .line 574
    goto :goto_9

    .line 575
    :cond_13
    iget-wide v6, v5, La2/r0;->i:J

    .line 576
    .line 577
    invoke-static {v0, v10, v11}, Lu1/f0;->K(IJ)J

    .line 578
    .line 579
    .line 580
    move-result-wide v10

    .line 581
    sub-long v14, v1, v6

    .line 582
    .line 583
    move/from16 v3, v24

    .line 584
    .line 585
    invoke-static {v14, v15, v3}, Lu1/f0;->s(JF)J

    .line 586
    .line 587
    .line 588
    move-result-wide v6

    .line 589
    add-long/2addr v6, v10

    .line 590
    iget-wide v10, v9, La2/q0;->e:J

    .line 591
    .line 592
    iget-object v8, v9, La2/q0;->b:Landroid/media/AudioTimestamp;

    .line 593
    .line 594
    invoke-static {v8}, La2/p0;->b(Landroid/media/AudioTimestamp;)J

    .line 595
    .line 596
    .line 597
    move-result-wide v14

    .line 598
    const-wide/16 v19, 0x3e8

    .line 599
    .line 600
    div-long v14, v14, v19

    .line 601
    .line 602
    invoke-static {v0, v10, v11}, Lu1/f0;->K(IJ)J

    .line 603
    .line 604
    .line 605
    move-result-wide v10

    .line 606
    sub-long v14, v1, v14

    .line 607
    .line 608
    invoke-static {v14, v15, v3}, Lu1/f0;->s(JF)J

    .line 609
    .line 610
    .line 611
    move-result-wide v14

    .line 612
    add-long/2addr v14, v10

    .line 613
    sub-long/2addr v14, v6

    .line 614
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    .line 615
    .line 616
    .line 617
    move-result-wide v6

    .line 618
    cmp-long v0, v6, v19

    .line 619
    .line 620
    if-gez v0, :cond_14

    .line 621
    .line 622
    const/4 v0, 0x2

    .line 623
    invoke-virtual {v5, v0}, La2/r0;->a(I)V

    .line 624
    .line 625
    .line 626
    goto :goto_a

    .line 627
    :cond_14
    :goto_9
    iget-wide v6, v5, La2/r0;->e:J

    .line 628
    .line 629
    sub-long v14, v1, v6

    .line 630
    .line 631
    const-wide/32 v0, 0x1e8480

    .line 632
    .line 633
    .line 634
    cmp-long v2, v14, v0

    .line 635
    .line 636
    if-lez v2, :cond_15

    .line 637
    .line 638
    const/4 v0, 0x3

    .line 639
    invoke-virtual {v5, v0}, La2/r0;->a(I)V

    .line 640
    .line 641
    .line 642
    goto :goto_a

    .line 643
    :cond_15
    iget-wide v0, v9, La2/q0;->e:J

    .line 644
    .line 645
    iput-wide v0, v5, La2/r0;->h:J

    .line 646
    .line 647
    iget-object v0, v9, La2/q0;->b:Landroid/media/AudioTimestamp;

    .line 648
    .line 649
    invoke-static {v0}, La2/p0;->b(Landroid/media/AudioTimestamp;)J

    .line 650
    .line 651
    .line 652
    move-result-wide v0

    .line 653
    const-wide/16 v6, 0x3e8

    .line 654
    .line 655
    div-long/2addr v0, v6

    .line 656
    iput-wide v0, v5, La2/r0;->i:J

    .line 657
    .line 658
    goto :goto_a

    .line 659
    :cond_16
    const/4 v0, 0x0

    .line 660
    const-wide/16 v6, 0x3e8

    .line 661
    .line 662
    invoke-virtual {v5, v0}, La2/r0;->a(I)V

    .line 663
    .line 664
    .line 665
    goto :goto_b

    .line 666
    :cond_17
    const/4 v0, 0x0

    .line 667
    const-wide/16 v6, 0x3e8

    .line 668
    .line 669
    if-eqz v10, :cond_18

    .line 670
    .line 671
    iget-object v1, v9, La2/q0;->b:Landroid/media/AudioTimestamp;

    .line 672
    .line 673
    invoke-static {v1}, La2/p0;->b(Landroid/media/AudioTimestamp;)J

    .line 674
    .line 675
    .line 676
    move-result-wide v1

    .line 677
    div-long/2addr v1, v6

    .line 678
    iget-wide v3, v5, La2/r0;->e:J

    .line 679
    .line 680
    cmp-long v8, v1, v3

    .line 681
    .line 682
    if-ltz v8, :cond_1b

    .line 683
    .line 684
    iget-wide v1, v9, La2/q0;->e:J

    .line 685
    .line 686
    iput-wide v1, v5, La2/r0;->h:J

    .line 687
    .line 688
    iget-object v1, v9, La2/q0;->b:Landroid/media/AudioTimestamp;

    .line 689
    .line 690
    invoke-static {v1}, La2/p0;->b(Landroid/media/AudioTimestamp;)J

    .line 691
    .line 692
    .line 693
    move-result-wide v1

    .line 694
    div-long/2addr v1, v6

    .line 695
    iput-wide v1, v5, La2/r0;->i:J

    .line 696
    .line 697
    const/4 v1, 0x1

    .line 698
    invoke-virtual {v5, v1}, La2/r0;->a(I)V

    .line 699
    .line 700
    .line 701
    goto :goto_b

    .line 702
    :cond_18
    iget-wide v3, v5, La2/r0;->e:J

    .line 703
    .line 704
    sub-long v14, v1, v3

    .line 705
    .line 706
    const-wide/32 v1, 0x7a120

    .line 707
    .line 708
    .line 709
    cmp-long v3, v14, v1

    .line 710
    .line 711
    if-lez v3, :cond_1b

    .line 712
    .line 713
    const/4 v1, 0x3

    .line 714
    invoke-virtual {v5, v1}, La2/r0;->a(I)V

    .line 715
    .line 716
    .line 717
    goto :goto_b

    .line 718
    :cond_19
    move-object/from16 v17, v2

    .line 719
    .line 720
    move-object/from16 v23, v3

    .line 721
    .line 722
    move-object/from16 v16, v12

    .line 723
    .line 724
    :cond_1a
    :goto_a
    const/4 v0, 0x0

    .line 725
    :cond_1b
    :goto_b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 726
    .line 727
    .line 728
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 729
    .line 730
    .line 731
    move-result-wide v1

    .line 732
    const-wide/16 v3, 0x3e8

    .line 733
    .line 734
    div-long/2addr v1, v3

    .line 735
    iget v3, v5, La2/r0;->d:I

    .line 736
    .line 737
    const/4 v4, 0x2

    .line 738
    if-ne v3, v4, :cond_1c

    .line 739
    .line 740
    const/4 v11, 0x1

    .line 741
    goto :goto_c

    .line 742
    :cond_1c
    const/4 v11, 0x0

    .line 743
    :goto_c
    if-eqz v11, :cond_1d

    .line 744
    .line 745
    move-object/from16 v0, v17

    .line 746
    .line 747
    iget v3, v0, La2/e1;->i:F

    .line 748
    .line 749
    iget-object v4, v5, La2/r0;->a:La2/q0;

    .line 750
    .line 751
    iget-wide v6, v4, La2/q0;->e:J

    .line 752
    .line 753
    iget-object v4, v4, La2/q0;->b:Landroid/media/AudioTimestamp;

    .line 754
    .line 755
    invoke-static {v4}, La2/p0;->b(Landroid/media/AudioTimestamp;)J

    .line 756
    .line 757
    .line 758
    move-result-wide v8

    .line 759
    const-wide/16 v12, 0x3e8

    .line 760
    .line 761
    div-long/2addr v8, v12

    .line 762
    iget v4, v5, La2/r0;->b:I

    .line 763
    .line 764
    invoke-static {v4, v6, v7}, Lu1/f0;->K(IJ)J

    .line 765
    .line 766
    .line 767
    move-result-wide v6

    .line 768
    sub-long v8, v1, v8

    .line 769
    .line 770
    invoke-static {v8, v9, v3}, Lu1/f0;->s(JF)J

    .line 771
    .line 772
    .line 773
    move-result-wide v3

    .line 774
    add-long/2addr v3, v6

    .line 775
    :goto_d
    move-wide v12, v3

    .line 776
    goto :goto_e

    .line 777
    :cond_1d
    move-object/from16 v0, v17

    .line 778
    .line 779
    invoke-virtual {v0, v1, v2}, La2/e1;->b(J)J

    .line 780
    .line 781
    .line 782
    move-result-wide v3

    .line 783
    goto :goto_d

    .line 784
    :goto_e
    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioTrack;->getPlayState()I

    .line 785
    .line 786
    .line 787
    move-result v3

    .line 788
    const/4 v4, 0x3

    .line 789
    if-ne v3, v4, :cond_21

    .line 790
    .line 791
    if-nez v11, :cond_1e

    .line 792
    .line 793
    iget v3, v5, La2/r0;->d:I

    .line 794
    .line 795
    if-eqz v3, :cond_1f

    .line 796
    .line 797
    const/4 v4, 0x1

    .line 798
    if-ne v3, v4, :cond_1e

    .line 799
    .line 800
    goto :goto_f

    .line 801
    :cond_1e
    invoke-virtual {v0, v12, v13}, La2/e1;->d(J)V

    .line 802
    .line 803
    .line 804
    :cond_1f
    :goto_f
    iget-wide v3, v0, La2/e1;->z:J

    .line 805
    .line 806
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    cmp-long v7, v3, v5

    .line 812
    .line 813
    if-eqz v7, :cond_20

    .line 814
    .line 815
    sub-long v3, v1, v3

    .line 816
    .line 817
    iget-wide v5, v0, La2/e1;->y:J

    .line 818
    .line 819
    sub-long v5, v12, v5

    .line 820
    .line 821
    iget v7, v0, La2/e1;->i:F

    .line 822
    .line 823
    invoke-static {v3, v4, v7}, Lu1/f0;->s(JF)J

    .line 824
    .line 825
    .line 826
    move-result-wide v3

    .line 827
    iget-wide v7, v0, La2/e1;->y:J

    .line 828
    .line 829
    add-long/2addr v7, v3

    .line 830
    sub-long v9, v7, v12

    .line 831
    .line 832
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    .line 833
    .line 834
    .line 835
    move-result-wide v9

    .line 836
    const-wide/16 v14, 0x0

    .line 837
    .line 838
    cmp-long v11, v5, v14

    .line 839
    .line 840
    if-eqz v11, :cond_20

    .line 841
    .line 842
    const-wide/32 v5, 0xf4240

    .line 843
    .line 844
    .line 845
    cmp-long v11, v9, v5

    .line 846
    .line 847
    if-gez v11, :cond_20

    .line 848
    .line 849
    const-wide/16 v5, 0xa

    .line 850
    .line 851
    mul-long v3, v3, v5

    .line 852
    .line 853
    const-wide/16 v5, 0x64

    .line 854
    .line 855
    div-long/2addr v3, v5

    .line 856
    sub-long v14, v7, v3

    .line 857
    .line 858
    add-long v16, v7, v3

    .line 859
    .line 860
    invoke-static/range {v12 .. v17}, Lu1/f0;->h(JJJ)J

    .line 861
    .line 862
    .line 863
    move-result-wide v12

    .line 864
    :cond_20
    iput-wide v1, v0, La2/e1;->z:J

    .line 865
    .line 866
    iput-wide v12, v0, La2/e1;->y:J

    .line 867
    .line 868
    goto :goto_10

    .line 869
    :cond_21
    const/4 v1, 0x1

    .line 870
    if-ne v3, v1, :cond_22

    .line 871
    .line 872
    invoke-virtual {v0, v12, v13}, La2/e1;->d(J)V

    .line 873
    .line 874
    .line 875
    :cond_22
    :goto_10
    return-wide v12
.end method

.method public final b()J
    .locals 6

    .line 1
    iget-boolean v0, p0, La2/a1;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, La2/a1;->l:J

    .line 6
    .line 7
    iget v2, p0, La2/a1;->h:I

    .line 8
    .line 9
    int-to-long v2, v2

    .line 10
    sget-object v4, Lu1/f0;->a:Ljava/lang/String;

    .line 11
    .line 12
    add-long/2addr v0, v2

    .line 13
    const-wide/16 v4, 0x1

    .line 14
    .line 15
    sub-long/2addr v0, v4

    .line 16
    div-long/2addr v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-wide v0, p0, La2/a1;->m:J

    .line 19
    .line 20
    :goto_0
    return-wide v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, La2/a1;->a:Landroid/media/AudioTrack;

    .line 8
    .line 9
    invoke-static {v0}, La2/c;->u(Landroid/media/AudioTrack;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final d(Lr1/h0;)V
    .locals 5

    .line 1
    iget-object v0, p0, La2/a1;->a:Landroid/media/AudioTrack;

    .line 2
    .line 3
    new-instance v1, Landroid/media/PlaybackParams;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/media/PlaybackParams;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget v2, p1, Lr1/h0;->a:F

    .line 13
    .line 14
    const v3, 0x3dcccccd    # 0.1f

    .line 15
    .line 16
    .line 17
    iget v4, p0, La2/a1;->c:F

    .line 18
    .line 19
    invoke-static {v2, v3, v4}, Lu1/f0;->f(FFF)F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget p1, p1, Lr1/h0;->b:F

    .line 28
    .line 29
    const/high16 v2, 0x41000000    # 8.0f

    .line 30
    .line 31
    invoke-static {p1, v3, v2}, Lu1/f0;->f(FFF)F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v1, 0x2

    .line 40
    invoke-virtual {p1, v1}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    const-string v1, "Failed to set playback params"

    .line 50
    .line 51
    invoke-static {v1, p1}, Lu1/a;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/media/PlaybackParams;->getSpeed()F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iget-object v0, p0, La2/a1;->f:La2/e1;

    .line 63
    .line 64
    iput p1, v0, La2/e1;->i:F

    .line 65
    .line 66
    iget-object p1, v0, La2/e1;->h:La2/r0;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1, v1}, La2/r0;->a(I)V

    .line 70
    .line 71
    .line 72
    const-wide/16 v2, 0x0

    .line 73
    .line 74
    iput-wide v2, v0, La2/e1;->k:J

    .line 75
    .line 76
    iput v1, v0, La2/e1;->t:I

    .line 77
    .line 78
    iput v1, v0, La2/e1;->s:I

    .line 79
    .line 80
    iput-wide v2, v0, La2/e1;->l:J

    .line 81
    .line 82
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    iput-wide v1, v0, La2/e1;->y:J

    .line 88
    .line 89
    iput-wide v1, v0, La2/e1;->z:J

    .line 90
    .line 91
    return-void
.end method

.method public final e(JILjava/nio/ByteBuffer;)Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p4

    .line 6
    .line 7
    iget-object v5, v0, La2/a1;->b:La2/x;

    .line 8
    .line 9
    iget-boolean v6, v0, La2/a1;->g:Z

    .line 10
    .line 11
    if-nez v6, :cond_0

    .line 12
    .line 13
    iget v7, v0, La2/a1;->q:I

    .line 14
    .line 15
    if-nez v7, :cond_0

    .line 16
    .line 17
    iget v7, v5, La2/x;->a:I

    .line 18
    .line 19
    invoke-static {v3, v7}, La2/n1;->i(Ljava/nio/ByteBuffer;I)I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    iput v7, v0, La2/a1;->q:I

    .line 24
    .line 25
    :cond_0
    iget-object v7, v0, La2/a1;->j:Lu1/m;

    .line 26
    .line 27
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    iget-object v9, v7, Lu1/m;->a:Ljava/lang/Thread;

    .line 35
    .line 36
    const/4 v10, 0x1

    .line 37
    if-ne v8, v9, :cond_1

    .line 38
    .line 39
    const/4 v8, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v8, 0x0

    .line 42
    :goto_0
    iget-object v9, v0, La2/a1;->a:Landroid/media/AudioTrack;

    .line 43
    .line 44
    const/16 v11, 0x18

    .line 45
    .line 46
    if-eqz v8, :cond_6

    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, La2/a1;->b()J

    .line 49
    .line 50
    .line 51
    move-result-wide v12

    .line 52
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    .line 54
    if-lt v8, v11, :cond_2

    .line 55
    .line 56
    invoke-static {v9}, La2/s0;->a(Landroid/media/AudioTrack;)I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    move-object/from16 v21, v5

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_2
    iget-boolean v8, v0, La2/a1;->s:Z

    .line 64
    .line 65
    invoke-virtual/range {p0 .. p0}, La2/a1;->a()J

    .line 66
    .line 67
    .line 68
    move-result-wide v14

    .line 69
    invoke-virtual {v9}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    sget-object v16, Lu1/f0;->a:Ljava/lang/String;

    .line 74
    .line 75
    move-object/from16 v21, v5

    .line 76
    .line 77
    int-to-long v4, v11

    .line 78
    const-wide/32 v18, 0xf4240

    .line 79
    .line 80
    .line 81
    sget-object v20, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    .line 82
    .line 83
    move-wide/from16 v16, v4

    .line 84
    .line 85
    invoke-static/range {v14 .. v20}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    cmp-long v11, v12, v4

    .line 90
    .line 91
    if-lez v11, :cond_3

    .line 92
    .line 93
    const/4 v4, 0x1

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    const/4 v4, 0x0

    .line 96
    :goto_1
    iput-boolean v4, v0, La2/a1;->s:Z

    .line 97
    .line 98
    if-eqz v8, :cond_4

    .line 99
    .line 100
    if-nez v4, :cond_4

    .line 101
    .line 102
    invoke-virtual {v9}, Landroid/media/AudioTrack;->getPlayState()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eq v4, v10, :cond_4

    .line 107
    .line 108
    iget v4, v0, La2/a1;->r:I

    .line 109
    .line 110
    add-int/2addr v4, v10

    .line 111
    :goto_2
    move v8, v4

    .line 112
    goto :goto_3

    .line 113
    :cond_4
    iget v4, v0, La2/a1;->r:I

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :goto_3
    iget v4, v0, La2/a1;->r:I

    .line 117
    .line 118
    if-le v8, v4, :cond_5

    .line 119
    .line 120
    const/4 v4, 0x1

    .line 121
    goto :goto_4

    .line 122
    :cond_5
    const/4 v4, 0x0

    .line 123
    :goto_4
    iput v8, v0, La2/a1;->r:I

    .line 124
    .line 125
    if-eqz v4, :cond_7

    .line 126
    .line 127
    new-instance v4, La2/u0;

    .line 128
    .line 129
    const/4 v5, 0x0

    .line 130
    invoke-direct {v4, v5}, La2/u0;-><init>(I)V

    .line 131
    .line 132
    .line 133
    const/4 v5, -0x1

    .line 134
    invoke-virtual {v7, v5, v4}, Lu1/m;->e(ILu1/j;)V

    .line 135
    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_6
    move-object/from16 v21, v5

    .line 139
    .line 140
    :cond_7
    :goto_5
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->remaining()I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    move-object/from16 v5, v21

    .line 145
    .line 146
    iget-boolean v5, v5, La2/x;->d:Z

    .line 147
    .line 148
    if-eqz v5, :cond_f

    .line 149
    .line 150
    const-wide/high16 v7, -0x8000000000000000L

    .line 151
    .line 152
    cmp-long v5, v1, v7

    .line 153
    .line 154
    if-nez v5, :cond_8

    .line 155
    .line 156
    iget-wide v1, v0, La2/a1;->n:J

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_8
    iput-wide v1, v0, La2/a1;->n:J

    .line 160
    .line 161
    :goto_6
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->remaining()I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 166
    .line 167
    const/16 v8, 0x1a

    .line 168
    .line 169
    const-wide/16 v11, 0x3e8

    .line 170
    .line 171
    if-lt v7, v8, :cond_9

    .line 172
    .line 173
    mul-long v1, v1, v11

    .line 174
    .line 175
    invoke-static {v9, v3, v5, v1, v2}, La2/a;->e(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    const/4 v2, 0x0

    .line 180
    goto :goto_8

    .line 181
    :cond_9
    iget-object v7, v0, La2/a1;->o:Ljava/nio/ByteBuffer;

    .line 182
    .line 183
    if-nez v7, :cond_a

    .line 184
    .line 185
    const/16 v7, 0x10

    .line 186
    .line 187
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    iput-object v7, v0, La2/a1;->o:Ljava/nio/ByteBuffer;

    .line 192
    .line 193
    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 194
    .line 195
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 196
    .line 197
    .line 198
    iget-object v7, v0, La2/a1;->o:Ljava/nio/ByteBuffer;

    .line 199
    .line 200
    const v8, 0x55550001

    .line 201
    .line 202
    .line 203
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 204
    .line 205
    .line 206
    :cond_a
    iget v7, v0, La2/a1;->p:I

    .line 207
    .line 208
    if-nez v7, :cond_b

    .line 209
    .line 210
    iget-object v7, v0, La2/a1;->o:Ljava/nio/ByteBuffer;

    .line 211
    .line 212
    const/4 v8, 0x4

    .line 213
    invoke-virtual {v7, v8, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 214
    .line 215
    .line 216
    iget-object v7, v0, La2/a1;->o:Ljava/nio/ByteBuffer;

    .line 217
    .line 218
    const/16 v8, 0x8

    .line 219
    .line 220
    mul-long v1, v1, v11

    .line 221
    .line 222
    invoke-virtual {v7, v8, v1, v2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 223
    .line 224
    .line 225
    iget-object v1, v0, La2/a1;->o:Ljava/nio/ByteBuffer;

    .line 226
    .line 227
    const/4 v2, 0x0

    .line 228
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 229
    .line 230
    .line 231
    iput v5, v0, La2/a1;->p:I

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_b
    const/4 v2, 0x0

    .line 235
    :goto_7
    iget-object v1, v0, La2/a1;->o:Ljava/nio/ByteBuffer;

    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-lez v1, :cond_d

    .line 242
    .line 243
    iget-object v7, v0, La2/a1;->o:Ljava/nio/ByteBuffer;

    .line 244
    .line 245
    invoke-static {v9, v7, v1}, La2/t0;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    if-gez v7, :cond_c

    .line 250
    .line 251
    iput v2, v0, La2/a1;->p:I

    .line 252
    .line 253
    move v5, v7

    .line 254
    goto :goto_8

    .line 255
    :cond_c
    if-ge v7, v1, :cond_d

    .line 256
    .line 257
    const/4 v5, 0x0

    .line 258
    goto :goto_8

    .line 259
    :cond_d
    invoke-static {v9, v3, v5}, La2/t0;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-gez v5, :cond_e

    .line 264
    .line 265
    iput v2, v0, La2/a1;->p:I

    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_e
    iget v1, v0, La2/a1;->p:I

    .line 269
    .line 270
    sub-int/2addr v1, v5

    .line 271
    iput v1, v0, La2/a1;->p:I

    .line 272
    .line 273
    goto :goto_8

    .line 274
    :cond_f
    const/4 v2, 0x0

    .line 275
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->remaining()I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    invoke-static {v9, v3, v1}, La2/t0;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    :goto_8
    if-gez v5, :cond_14

    .line 284
    .line 285
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 286
    .line 287
    const/16 v3, 0x18

    .line 288
    .line 289
    if-lt v1, v3, :cond_10

    .line 290
    .line 291
    const/4 v1, -0x6

    .line 292
    if-eq v5, v1, :cond_11

    .line 293
    .line 294
    :cond_10
    const/16 v1, -0x20

    .line 295
    .line 296
    if-ne v5, v1, :cond_12

    .line 297
    .line 298
    :cond_11
    const/4 v4, 0x1

    .line 299
    goto :goto_9

    .line 300
    :cond_12
    const/4 v4, 0x0

    .line 301
    :goto_9
    if-eqz v4, :cond_13

    .line 302
    .line 303
    iget-object v1, v0, La2/a1;->d:La1/i;

    .line 304
    .line 305
    if-eqz v1, :cond_13

    .line 306
    .line 307
    iget-object v1, v1, La1/i;->b:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v1, La2/d1;

    .line 310
    .line 311
    iget-object v2, v1, La2/d1;->i:La2/l;

    .line 312
    .line 313
    if-eqz v2, :cond_13

    .line 314
    .line 315
    sget-object v3, La2/g;->f:La2/g;

    .line 316
    .line 317
    iput-object v3, v1, La2/d1;->h:La2/g;

    .line 318
    .line 319
    invoke-virtual {v2, v3}, La2/l;->b(La2/g;)V

    .line 320
    .line 321
    .line 322
    :cond_13
    new-instance v1, La2/q;

    .line 323
    .line 324
    invoke-direct {v1, v5, v4}, La2/q;-><init>(IZ)V

    .line 325
    .line 326
    .line 327
    throw v1

    .line 328
    :cond_14
    if-ne v5, v4, :cond_15

    .line 329
    .line 330
    const/4 v4, 0x1

    .line 331
    goto :goto_a

    .line 332
    :cond_15
    const/4 v4, 0x0

    .line 333
    :goto_a
    if-eqz v6, :cond_16

    .line 334
    .line 335
    iget-wide v1, v0, La2/a1;->l:J

    .line 336
    .line 337
    int-to-long v5, v5

    .line 338
    add-long/2addr v1, v5

    .line 339
    iput-wide v1, v0, La2/a1;->l:J

    .line 340
    .line 341
    goto :goto_b

    .line 342
    :cond_16
    if-eqz v4, :cond_17

    .line 343
    .line 344
    iget-wide v1, v0, La2/a1;->m:J

    .line 345
    .line 346
    iget v3, v0, La2/a1;->q:I

    .line 347
    .line 348
    int-to-long v5, v3

    .line 349
    move/from16 v3, p3

    .line 350
    .line 351
    int-to-long v7, v3

    .line 352
    mul-long v5, v5, v7

    .line 353
    .line 354
    add-long/2addr v5, v1

    .line 355
    iput-wide v5, v0, La2/a1;->m:J

    .line 356
    .line 357
    :cond_17
    :goto_b
    return v4
.end method
