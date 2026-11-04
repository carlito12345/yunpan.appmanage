.class public final Lo0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Lo0/p;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:[F

.field public final h:F

.field public final i:F

.field public final j:F


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    sget-object v4, Lo0/b;->c:[F

    .line 6
    .line 7
    invoke-static {}, Lo0/b;->n()F

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    float-to-double v5, v5

    .line 12
    const-wide v7, 0x404fd4bbab8b494cL    # 63.66197723675813

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 18
    .line 19
    .line 20
    mul-double v5, v5, v7

    .line 21
    .line 22
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    .line 23
    .line 24
    div-double/2addr v5, v7

    .line 25
    double-to-float v5, v5

    .line 26
    sget-object v6, Lo0/b;->a:[[F

    .line 27
    .line 28
    aget v9, v4, v3

    .line 29
    .line 30
    aget-object v10, v6, v3

    .line 31
    .line 32
    aget v11, v10, v3

    .line 33
    .line 34
    mul-float v11, v11, v9

    .line 35
    .line 36
    aget v12, v4, v2

    .line 37
    .line 38
    aget v13, v10, v2

    .line 39
    .line 40
    mul-float v13, v13, v12

    .line 41
    .line 42
    add-float/2addr v13, v11

    .line 43
    aget v11, v4, v1

    .line 44
    .line 45
    aget v10, v10, v1

    .line 46
    .line 47
    mul-float v10, v10, v11

    .line 48
    .line 49
    add-float/2addr v10, v13

    .line 50
    aget-object v13, v6, v2

    .line 51
    .line 52
    aget v14, v13, v3

    .line 53
    .line 54
    mul-float v14, v14, v9

    .line 55
    .line 56
    aget v15, v13, v2

    .line 57
    .line 58
    mul-float v15, v15, v12

    .line 59
    .line 60
    add-float/2addr v15, v14

    .line 61
    aget v13, v13, v1

    .line 62
    .line 63
    mul-float v13, v13, v11

    .line 64
    .line 65
    add-float/2addr v13, v15

    .line 66
    aget-object v6, v6, v1

    .line 67
    .line 68
    aget v14, v6, v3

    .line 69
    .line 70
    mul-float v9, v9, v14

    .line 71
    .line 72
    aget v14, v6, v2

    .line 73
    .line 74
    mul-float v12, v12, v14

    .line 75
    .line 76
    add-float/2addr v12, v9

    .line 77
    aget v6, v6, v1

    .line 78
    .line 79
    mul-float v11, v11, v6

    .line 80
    .line 81
    add-float/2addr v11, v12

    .line 82
    const/high16 v6, 0x3f800000    # 1.0f

    .line 83
    .line 84
    float-to-double v14, v6

    .line 85
    const-wide v16, 0x3feccccccccccccdL    # 0.9

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    cmpl-double v9, v14, v16

    .line 91
    .line 92
    if-ltz v9, :cond_0

    .line 93
    .line 94
    const v9, 0x3f30a3d7    # 0.69f

    .line 95
    .line 96
    .line 97
    const v19, 0x3f30a3d7    # 0.69f

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    const v9, 0x3f27ae14    # 0.655f

    .line 102
    .line 103
    .line 104
    const v19, 0x3f27ae14    # 0.655f

    .line 105
    .line 106
    .line 107
    :goto_0
    neg-float v9, v5

    .line 108
    const/high16 v12, 0x42280000    # 42.0f

    .line 109
    .line 110
    sub-float/2addr v9, v12

    .line 111
    const/high16 v12, 0x42b80000    # 92.0f

    .line 112
    .line 113
    div-float/2addr v9, v12

    .line 114
    float-to-double v14, v9

    .line 115
    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    .line 116
    .line 117
    .line 118
    move-result-wide v14

    .line 119
    double-to-float v9, v14

    .line 120
    const v12, 0x3e8e38e4

    .line 121
    .line 122
    .line 123
    mul-float v9, v9, v12

    .line 124
    .line 125
    const/high16 v12, 0x3f800000    # 1.0f

    .line 126
    .line 127
    sub-float v9, v12, v9

    .line 128
    .line 129
    mul-float v9, v9, v6

    .line 130
    .line 131
    float-to-double v14, v9

    .line 132
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 133
    .line 134
    cmpl-double v18, v14, v16

    .line 135
    .line 136
    if-lez v18, :cond_1

    .line 137
    .line 138
    const/high16 v9, 0x3f800000    # 1.0f

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_1
    const-wide/16 v16, 0x0

    .line 142
    .line 143
    cmpg-double v18, v14, v16

    .line 144
    .line 145
    if-gez v18, :cond_2

    .line 146
    .line 147
    const/4 v9, 0x0

    .line 148
    :cond_2
    :goto_1
    const/high16 v14, 0x42c80000    # 100.0f

    .line 149
    .line 150
    div-float v15, v14, v10

    .line 151
    .line 152
    mul-float v15, v15, v9

    .line 153
    .line 154
    add-float/2addr v15, v12

    .line 155
    sub-float/2addr v15, v9

    .line 156
    div-float v16, v14, v13

    .line 157
    .line 158
    mul-float v16, v16, v9

    .line 159
    .line 160
    add-float v16, v16, v12

    .line 161
    .line 162
    sub-float v16, v16, v9

    .line 163
    .line 164
    div-float/2addr v14, v11

    .line 165
    mul-float v14, v14, v9

    .line 166
    .line 167
    add-float/2addr v14, v12

    .line 168
    sub-float/2addr v14, v9

    .line 169
    new-array v9, v0, [F

    .line 170
    .line 171
    aput v15, v9, v3

    .line 172
    .line 173
    aput v16, v9, v2

    .line 174
    .line 175
    aput v14, v9, v1

    .line 176
    .line 177
    const/high16 v14, 0x40a00000    # 5.0f

    .line 178
    .line 179
    mul-float v14, v14, v5

    .line 180
    .line 181
    add-float/2addr v14, v12

    .line 182
    div-float v14, v12, v14

    .line 183
    .line 184
    mul-float v15, v14, v14

    .line 185
    .line 186
    mul-float v15, v15, v14

    .line 187
    .line 188
    mul-float v15, v15, v14

    .line 189
    .line 190
    sub-float/2addr v12, v15

    .line 191
    mul-float v15, v15, v5

    .line 192
    .line 193
    const v14, 0x3dcccccd    # 0.1f

    .line 194
    .line 195
    .line 196
    mul-float v14, v14, v12

    .line 197
    .line 198
    mul-float v14, v14, v12

    .line 199
    .line 200
    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    .line 201
    .line 202
    float-to-double v0, v5

    .line 203
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 204
    .line 205
    .line 206
    mul-double v0, v0, v16

    .line 207
    .line 208
    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    .line 209
    .line 210
    .line 211
    move-result-wide v0

    .line 212
    double-to-float v0, v0

    .line 213
    mul-float v14, v14, v0

    .line 214
    .line 215
    add-float v0, v14, v15

    .line 216
    .line 217
    invoke-static {}, Lo0/b;->n()F

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    aget v4, v4, v2

    .line 222
    .line 223
    div-float v15, v1, v4

    .line 224
    .line 225
    float-to-double v4, v15

    .line 226
    move v1, v13

    .line 227
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 228
    .line 229
    .line 230
    move-result-wide v12

    .line 231
    double-to-float v12, v12

    .line 232
    const v13, 0x3fbd70a4    # 1.48f

    .line 233
    .line 234
    .line 235
    add-float v24, v12, v13

    .line 236
    .line 237
    const-wide v12, 0x3fc999999999999aL    # 0.2

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 243
    .line 244
    .line 245
    move-result-wide v4

    .line 246
    double-to-float v4, v4

    .line 247
    const v5, 0x3f39999a    # 0.725f

    .line 248
    .line 249
    .line 250
    div-float v4, v5, v4

    .line 251
    .line 252
    aget v5, v9, v3

    .line 253
    .line 254
    mul-float v5, v5, v0

    .line 255
    .line 256
    mul-float v5, v5, v10

    .line 257
    .line 258
    float-to-double v12, v5

    .line 259
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    .line 260
    .line 261
    .line 262
    div-double/2addr v12, v7

    .line 263
    move v5, v15

    .line 264
    const-wide v14, 0x3fdae147ae147ae1L    # 0.42

    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 270
    .line 271
    .line 272
    move-result-wide v12

    .line 273
    double-to-float v13, v12

    .line 274
    aget v12, v9, v2

    .line 275
    .line 276
    mul-float v12, v12, v0

    .line 277
    .line 278
    mul-float v12, v12, v1

    .line 279
    .line 280
    float-to-double v2, v12

    .line 281
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 282
    .line 283
    .line 284
    div-double/2addr v2, v7

    .line 285
    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 286
    .line 287
    .line 288
    move-result-wide v2

    .line 289
    double-to-float v2, v2

    .line 290
    const/4 v3, 0x2

    .line 291
    aget v12, v9, v3

    .line 292
    .line 293
    mul-float v12, v12, v0

    .line 294
    .line 295
    mul-float v12, v12, v11

    .line 296
    .line 297
    float-to-double v11, v12

    .line 298
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    .line 299
    .line 300
    .line 301
    div-double/2addr v11, v7

    .line 302
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 303
    .line 304
    .line 305
    move-result-wide v7

    .line 306
    double-to-float v7, v7

    .line 307
    const/4 v8, 0x3

    .line 308
    new-array v10, v8, [F

    .line 309
    .line 310
    const/4 v8, 0x0

    .line 311
    aput v13, v10, v8

    .line 312
    .line 313
    const/4 v1, 0x1

    .line 314
    aput v2, v10, v1

    .line 315
    .line 316
    aput v7, v10, v3

    .line 317
    .line 318
    aget v2, v10, v8

    .line 319
    .line 320
    const/high16 v7, 0x43c80000    # 400.0f

    .line 321
    .line 322
    mul-float v8, v2, v7

    .line 323
    .line 324
    const v11, 0x41d90a3d    # 27.13f

    .line 325
    .line 326
    .line 327
    add-float/2addr v2, v11

    .line 328
    div-float/2addr v8, v2

    .line 329
    aget v2, v10, v1

    .line 330
    .line 331
    mul-float v13, v2, v7

    .line 332
    .line 333
    add-float/2addr v2, v11

    .line 334
    div-float/2addr v13, v2

    .line 335
    aget v2, v10, v3

    .line 336
    .line 337
    mul-float v7, v7, v2

    .line 338
    .line 339
    add-float/2addr v2, v11

    .line 340
    div-float/2addr v7, v2

    .line 341
    const/4 v2, 0x3

    .line 342
    new-array v2, v2, [F

    .line 343
    .line 344
    const/4 v10, 0x0

    .line 345
    aput v8, v2, v10

    .line 346
    .line 347
    aput v13, v2, v1

    .line 348
    .line 349
    aput v7, v2, v3

    .line 350
    .line 351
    const/high16 v7, 0x40000000    # 2.0f

    .line 352
    .line 353
    aget v8, v2, v10

    .line 354
    .line 355
    mul-float v8, v8, v7

    .line 356
    .line 357
    aget v1, v2, v1

    .line 358
    .line 359
    add-float/2addr v8, v1

    .line 360
    const v1, 0x3d4ccccd    # 0.05f

    .line 361
    .line 362
    .line 363
    aget v2, v2, v3

    .line 364
    .line 365
    mul-float v2, v2, v1

    .line 366
    .line 367
    add-float/2addr v2, v8

    .line 368
    mul-float v16, v2, v4

    .line 369
    .line 370
    new-instance v1, Lo0/p;

    .line 371
    .line 372
    float-to-double v2, v0

    .line 373
    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    .line 374
    .line 375
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 376
    .line 377
    .line 378
    move-result-wide v2

    .line 379
    double-to-float v2, v2

    .line 380
    move-object v14, v1

    .line 381
    move v15, v5

    .line 382
    move/from16 v17, v4

    .line 383
    .line 384
    move/from16 v18, v4

    .line 385
    .line 386
    move/from16 v20, v6

    .line 387
    .line 388
    move-object/from16 v21, v9

    .line 389
    .line 390
    move/from16 v22, v0

    .line 391
    .line 392
    move/from16 v23, v2

    .line 393
    .line 394
    invoke-direct/range {v14 .. v24}, Lo0/p;-><init>(FFFFFF[FFFF)V

    .line 395
    .line 396
    .line 397
    sput-object v1, Lo0/p;->k:Lo0/p;

    .line 398
    .line 399
    return-void
.end method

.method public constructor <init>(FFFFFF[FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lo0/p;->f:F

    .line 5
    .line 6
    iput p2, p0, Lo0/p;->a:F

    .line 7
    .line 8
    iput p3, p0, Lo0/p;->b:F

    .line 9
    .line 10
    iput p4, p0, Lo0/p;->c:F

    .line 11
    .line 12
    iput p5, p0, Lo0/p;->d:F

    .line 13
    .line 14
    iput p6, p0, Lo0/p;->e:F

    .line 15
    .line 16
    iput-object p7, p0, Lo0/p;->g:[F

    .line 17
    .line 18
    iput p8, p0, Lo0/p;->h:F

    .line 19
    .line 20
    iput p9, p0, Lo0/p;->i:F

    .line 21
    .line 22
    iput p10, p0, Lo0/p;->j:F

    .line 23
    .line 24
    return-void
.end method
