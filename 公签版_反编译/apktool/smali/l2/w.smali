.class public final Ll2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:F

.field public final m:I

.field public final n:Ljava/lang/String;

.field public final o:La2/w0;


# direct methods
.method public constructor <init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;La2/w0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll2/w;->a:Ljava/util/List;

    .line 5
    .line 6
    iput p2, p0, Ll2/w;->b:I

    .line 7
    .line 8
    iput p3, p0, Ll2/w;->c:I

    .line 9
    .line 10
    iput p4, p0, Ll2/w;->d:I

    .line 11
    .line 12
    iput p5, p0, Ll2/w;->e:I

    .line 13
    .line 14
    iput p6, p0, Ll2/w;->f:I

    .line 15
    .line 16
    iput p7, p0, Ll2/w;->g:I

    .line 17
    .line 18
    iput p8, p0, Ll2/w;->h:I

    .line 19
    .line 20
    iput p9, p0, Ll2/w;->i:I

    .line 21
    .line 22
    iput p10, p0, Ll2/w;->j:I

    .line 23
    .line 24
    iput p11, p0, Ll2/w;->k:I

    .line 25
    .line 26
    iput p12, p0, Ll2/w;->l:F

    .line 27
    .line 28
    iput p13, p0, Ll2/w;->m:I

    .line 29
    .line 30
    iput-object p14, p0, Ll2/w;->n:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p15, p0, Ll2/w;->o:La2/w0;

    .line 33
    .line 34
    return-void
.end method

.method public static a(Lu1/q;ZLa2/w0;)Ll2/w;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0, v1}, Lu1/q;->P(I)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    goto/16 :goto_9

    .line 12
    .line 13
    :cond_0
    const/16 v2, 0x15

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lu1/q;->P(I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    and-int/lit8 v2, v2, 0x3

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual/range {p0 .. p0}, Lu1/q;->d()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    :goto_1
    const/4 v8, 0x1

    .line 36
    if-ge v6, v3, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0, v8}, Lu1/q;->P(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p0 .. p0}, Lu1/q;->I()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    const/4 v9, 0x0

    .line 46
    :goto_2
    if-ge v9, v8, :cond_1

    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Lu1/q;->I()I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    add-int/lit8 v11, v10, 0x4

    .line 53
    .line 54
    add-int/2addr v7, v11

    .line 55
    invoke-virtual {v0, v10}, Lu1/q;->P(I)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v9, v9, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v0, v4}, Lu1/q;->O(I)V

    .line 65
    .line 66
    .line 67
    new-array v4, v7, [B

    .line 68
    .line 69
    const/4 v6, -0x1

    .line 70
    const/high16 v9, 0x3f800000    # 1.0f

    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    move-object/from16 v26, p2

    .line 74
    .line 75
    move-object/from16 v25, v10

    .line 76
    .line 77
    const/4 v6, 0x0

    .line 78
    const/4 v9, 0x0

    .line 79
    const/4 v14, -0x1

    .line 80
    const/4 v15, -0x1

    .line 81
    const/16 v16, -0x1

    .line 82
    .line 83
    const/16 v17, -0x1

    .line 84
    .line 85
    const/16 v18, -0x1

    .line 86
    .line 87
    const/16 v19, -0x1

    .line 88
    .line 89
    const/16 v20, -0x1

    .line 90
    .line 91
    const/16 v21, -0x1

    .line 92
    .line 93
    const/16 v22, -0x1

    .line 94
    .line 95
    const/high16 v23, 0x3f800000    # 1.0f

    .line 96
    .line 97
    const/16 v24, -0x1

    .line 98
    .line 99
    :goto_3
    if-ge v6, v3, :cond_9

    .line 100
    .line 101
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    and-int/lit8 v10, v10, 0x3f

    .line 106
    .line 107
    invoke-virtual/range {p0 .. p0}, Lu1/q;->I()I

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    move-object/from16 v12, v26

    .line 112
    .line 113
    const/4 v13, 0x0

    .line 114
    :goto_4
    if-ge v13, v11, :cond_8

    .line 115
    .line 116
    invoke-virtual/range {p0 .. p0}, Lu1/q;->I()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    move/from16 v27, v3

    .line 121
    .line 122
    sget-object v3, Lv1/o;->a:[B

    .line 123
    .line 124
    invoke-static {v3, v5, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    .line 126
    .line 127
    add-int/lit8 v9, v9, 0x4

    .line 128
    .line 129
    iget-object v3, v0, Lu1/q;->a:[B

    .line 130
    .line 131
    invoke-virtual/range {p0 .. p0}, Lu1/q;->d()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-static {v3, v1, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    .line 137
    .line 138
    const/16 v1, 0x20

    .line 139
    .line 140
    if-ne v10, v1, :cond_3

    .line 141
    .line 142
    if-nez v13, :cond_3

    .line 143
    .line 144
    add-int v1, v9, v8

    .line 145
    .line 146
    invoke-static {v9, v1, v4}, Lv1/o;->l(II[B)La2/w0;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    move/from16 v34, v11

    .line 151
    .line 152
    goto/16 :goto_6

    .line 153
    .line 154
    :cond_3
    const/16 v1, 0x21

    .line 155
    .line 156
    if-ne v10, v1, :cond_5

    .line 157
    .line 158
    if-nez v13, :cond_5

    .line 159
    .line 160
    add-int v1, v9, v8

    .line 161
    .line 162
    invoke-static {v4, v9, v1, v12}, Lv1/o;->k([BIILa2/w0;)Lv1/k;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    iget v3, v1, Lv1/k;->a:I

    .line 167
    .line 168
    const/4 v14, 0x1

    .line 169
    add-int/2addr v3, v14

    .line 170
    iget v15, v1, Lv1/k;->g:I

    .line 171
    .line 172
    iget v14, v1, Lv1/k;->h:I

    .line 173
    .line 174
    iget v5, v1, Lv1/k;->c:I

    .line 175
    .line 176
    add-int/lit8 v17, v5, 0x8

    .line 177
    .line 178
    iget v5, v1, Lv1/k;->d:I

    .line 179
    .line 180
    add-int/lit8 v18, v5, 0x8

    .line 181
    .line 182
    iget v5, v1, Lv1/k;->k:I

    .line 183
    .line 184
    move/from16 p2, v3

    .line 185
    .line 186
    iget v3, v1, Lv1/k;->l:I

    .line 187
    .line 188
    move/from16 v16, v3

    .line 189
    .line 190
    iget v3, v1, Lv1/k;->m:I

    .line 191
    .line 192
    move/from16 v19, v3

    .line 193
    .line 194
    iget v3, v1, Lv1/k;->i:F

    .line 195
    .line 196
    move/from16 v20, v3

    .line 197
    .line 198
    iget v3, v1, Lv1/k;->j:I

    .line 199
    .line 200
    iget-object v1, v1, Lv1/k;->b:Lv1/h;

    .line 201
    .line 202
    if-eqz v1, :cond_4

    .line 203
    .line 204
    move/from16 v21, v3

    .line 205
    .line 206
    iget v3, v1, Lv1/h;->a:I

    .line 207
    .line 208
    move/from16 v23, v5

    .line 209
    .line 210
    iget-boolean v5, v1, Lv1/h;->b:Z

    .line 211
    .line 212
    move/from16 v34, v11

    .line 213
    .line 214
    iget v11, v1, Lv1/h;->c:I

    .line 215
    .line 216
    move/from16 v24, v14

    .line 217
    .line 218
    iget v14, v1, Lv1/h;->d:I

    .line 219
    .line 220
    move/from16 v26, v15

    .line 221
    .line 222
    iget-object v15, v1, Lv1/h;->e:[I

    .line 223
    .line 224
    iget v1, v1, Lv1/h;->f:I

    .line 225
    .line 226
    move/from16 v28, v3

    .line 227
    .line 228
    move/from16 v29, v11

    .line 229
    .line 230
    move/from16 v30, v14

    .line 231
    .line 232
    move-object/from16 v31, v15

    .line 233
    .line 234
    move/from16 v32, v5

    .line 235
    .line 236
    move/from16 v33, v1

    .line 237
    .line 238
    invoke-static/range {v28 .. v33}, Lu1/c;->a(III[IZI)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v25

    .line 242
    goto :goto_5

    .line 243
    :cond_4
    move/from16 v21, v3

    .line 244
    .line 245
    move/from16 v23, v5

    .line 246
    .line 247
    move/from16 v34, v11

    .line 248
    .line 249
    move/from16 v24, v14

    .line 250
    .line 251
    move/from16 v26, v15

    .line 252
    .line 253
    :goto_5
    move/from16 v14, p2

    .line 254
    .line 255
    move/from16 v15, v26

    .line 256
    .line 257
    const/4 v5, 0x0

    .line 258
    move/from16 v35, v20

    .line 259
    .line 260
    move/from16 v20, v16

    .line 261
    .line 262
    move/from16 v16, v24

    .line 263
    .line 264
    move/from16 v24, v21

    .line 265
    .line 266
    move/from16 v21, v19

    .line 267
    .line 268
    move/from16 v19, v23

    .line 269
    .line 270
    move/from16 v23, v35

    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_5
    move/from16 v34, v11

    .line 274
    .line 275
    const/16 v1, 0x27

    .line 276
    .line 277
    if-ne v10, v1, :cond_7

    .line 278
    .line 279
    if-nez v13, :cond_7

    .line 280
    .line 281
    add-int v1, v9, v8

    .line 282
    .line 283
    invoke-static {v9, v1, v4}, Lv1/o;->j(II[B)Landroidx/leanback/widget/i;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    if-eqz v1, :cond_7

    .line 288
    .line 289
    if-eqz v12, :cond_7

    .line 290
    .line 291
    iget v1, v1, Landroidx/leanback/widget/i;->b:I

    .line 292
    .line 293
    iget-object v3, v12, La2/w0;->b:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v3, Lu7/g0;

    .line 296
    .line 297
    const/4 v5, 0x0

    .line 298
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    check-cast v3, Lv1/g;

    .line 303
    .line 304
    iget v3, v3, Lv1/g;->b:I

    .line 305
    .line 306
    if-ne v1, v3, :cond_6

    .line 307
    .line 308
    const/16 v22, 0x4

    .line 309
    .line 310
    goto :goto_6

    .line 311
    :cond_6
    const/4 v1, 0x5

    .line 312
    const/16 v22, 0x5

    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_7
    const/4 v5, 0x0

    .line 316
    :goto_6
    add-int/2addr v9, v8

    .line 317
    invoke-virtual {v0, v8}, Lu1/q;->P(I)V

    .line 318
    .line 319
    .line 320
    add-int/lit8 v13, v13, 0x1

    .line 321
    .line 322
    move/from16 v3, v27

    .line 323
    .line 324
    move/from16 v11, v34

    .line 325
    .line 326
    const/4 v1, 0x4

    .line 327
    const/4 v8, 0x1

    .line 328
    goto/16 :goto_4

    .line 329
    .line 330
    :cond_8
    move/from16 v27, v3

    .line 331
    .line 332
    add-int/lit8 v6, v6, 0x1

    .line 333
    .line 334
    move-object/from16 v26, v12

    .line 335
    .line 336
    const/4 v1, 0x4

    .line 337
    const/4 v8, 0x1

    .line 338
    goto/16 :goto_3

    .line 339
    .line 340
    :cond_9
    if-nez v7, :cond_a

    .line 341
    .line 342
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    :goto_7
    move-object v12, v0

    .line 347
    goto :goto_8

    .line 348
    :cond_a
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    goto :goto_7

    .line 353
    :goto_8
    new-instance v0, Ll2/w;

    .line 354
    .line 355
    const/4 v1, 0x1

    .line 356
    add-int/lit8 v13, v2, 0x1

    .line 357
    .line 358
    move-object v11, v0

    .line 359
    invoke-direct/range {v11 .. v26}, Ll2/w;-><init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;La2/w0;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .line 361
    .line 362
    return-object v0

    .line 363
    :goto_9
    if-eqz p1, :cond_b

    .line 364
    .line 365
    const-string v1, "L-HEVC config"

    .line 366
    .line 367
    goto :goto_a

    .line 368
    :cond_b
    const-string v1, "HEVC config"

    .line 369
    .line 370
    :goto_a
    const-string v2, "Error parsing"

    .line 371
    .line 372
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-static {v0, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    goto :goto_c

    .line 381
    :goto_b
    throw v0

    .line 382
    :goto_c
    goto :goto_b
.end method
