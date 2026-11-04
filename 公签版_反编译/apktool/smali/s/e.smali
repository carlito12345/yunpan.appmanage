.class public final Ls/e;
.super Ls/f;
.source "SourceFile"

# interfaces
.implements Lq0/h;


# instance fields
.field public n:Ls/b;

.field public p:Z

.field public q:Ls/b;

.field public r:Ls1/g;

.field public s:I

.field public t:I

.field public v:Z


# direct methods
.method public constructor <init>(Ls/b;Landroid/content/res/Resources;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls/f;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Ls/e;->s:I

    .line 6
    .line 7
    iput v0, p0, Ls/e;->t:I

    .line 8
    .line 9
    new-instance v0, Ls/b;

    .line 10
    .line 11
    invoke-direct {v0, p1, p0, p2}, Ls/b;-><init>(Ls/b;Ls/e;Landroid/content/res/Resources;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ls/e;->d(Ls/b;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Ls/e;->onStateChange([I)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ls/e;->jumpToCurrentState()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static e(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Ls/e;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const-string v6, "animated-selector"

    .line 16
    .line 17
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-eqz v6, :cond_1e

    .line 22
    .line 23
    new-instance v5, Ls/e;

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    invoke-direct {v5, v6, v6}, Ls/e;-><init>(Ls/b;Landroid/content/res/Resources;)V

    .line 27
    .line 28
    .line 29
    sget-object v7, Lt/d;->a:[I

    .line 30
    .line 31
    invoke-static {v1, v4, v3, v7}, Lo0/b;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const/4 v8, 0x1

    .line 36
    invoke-virtual {v7, v8, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    invoke-virtual {v5, v9, v8}, Ls/e;->setVisible(ZZ)Z

    .line 41
    .line 42
    .line 43
    iget-object v9, v5, Ls/e;->q:Ls/b;

    .line 44
    .line 45
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 v11, 0x15

    .line 48
    .line 49
    if-lt v10, v11, :cond_0

    .line 50
    .line 51
    iget v10, v9, Ls/b;->d:I

    .line 52
    .line 53
    invoke-static {v7}, Lt/c;->b(Landroid/content/res/TypedArray;)I

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    or-int/2addr v10, v12

    .line 58
    iput v10, v9, Ls/b;->d:I

    .line 59
    .line 60
    :cond_0
    iget-boolean v10, v9, Ls/b;->i:Z

    .line 61
    .line 62
    const/4 v12, 0x2

    .line 63
    invoke-virtual {v7, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    iput-boolean v10, v9, Ls/b;->i:Z

    .line 68
    .line 69
    iget-boolean v10, v9, Ls/b;->l:Z

    .line 70
    .line 71
    const/4 v13, 0x3

    .line 72
    invoke-virtual {v7, v13, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    iput-boolean v10, v9, Ls/b;->l:Z

    .line 77
    .line 78
    iget v10, v9, Ls/b;->y:I

    .line 79
    .line 80
    const/4 v14, 0x4

    .line 81
    invoke-virtual {v7, v14, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    iput v10, v9, Ls/b;->y:I

    .line 86
    .line 87
    const/4 v10, 0x5

    .line 88
    iget v15, v9, Ls/b;->z:I

    .line 89
    .line 90
    invoke-virtual {v7, v10, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    iput v10, v9, Ls/b;->z:I

    .line 95
    .line 96
    iget-boolean v9, v9, Ls/b;->w:Z

    .line 97
    .line 98
    const/4 v10, 0x0

    .line 99
    invoke-virtual {v7, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    invoke-virtual {v5, v9}, Ls/f;->setDither(Z)V

    .line 104
    .line 105
    .line 106
    iget-object v9, v5, Ls/f;->a:Ls/b;

    .line 107
    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    iput-object v1, v9, Ls/b;->b:Landroid/content/res/Resources;

    .line 111
    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 113
    .line 114
    .line 115
    move-result-object v15

    .line 116
    iget v15, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 117
    .line 118
    if-nez v15, :cond_1

    .line 119
    .line 120
    const/16 v15, 0xa0

    .line 121
    .line 122
    :cond_1
    iget v6, v9, Ls/b;->c:I

    .line 123
    .line 124
    iput v15, v9, Ls/b;->c:I

    .line 125
    .line 126
    if-eq v6, v15, :cond_3

    .line 127
    .line 128
    iput-boolean v10, v9, Ls/b;->m:Z

    .line 129
    .line 130
    iput-boolean v10, v9, Ls/b;->j:Z

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    :cond_3
    :goto_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    .line 138
    .line 139
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    add-int/2addr v6, v8

    .line 144
    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-eq v7, v8, :cond_1d

    .line 149
    .line 150
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-ge v9, v6, :cond_4

    .line 155
    .line 156
    if-eq v7, v13, :cond_1d

    .line 157
    .line 158
    :cond_4
    if-eq v7, v12, :cond_5

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_5
    if-le v9, v6, :cond_6

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    const-string v9, "item"

    .line 169
    .line 170
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    const/4 v9, -0x1

    .line 175
    if-eqz v7, :cond_11

    .line 176
    .line 177
    sget-object v7, Lt/d;->b:[I

    .line 178
    .line 179
    invoke-static {v1, v4, v3, v7}, Lo0/b;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-virtual {v7, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 184
    .line 185
    .line 186
    move-result v15

    .line 187
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    if-lez v9, :cond_7

    .line 192
    .line 193
    invoke-static {}, Lw/p2;->d()Lw/p2;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    invoke-virtual {v13, v0, v9}, Lw/p2;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    goto :goto_2

    .line 202
    :cond_7
    const/4 v9, 0x0

    .line 203
    :goto_2
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    .line 205
    .line 206
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    new-array v13, v7, [I

    .line 211
    .line 212
    const/4 v8, 0x0

    .line 213
    const/4 v11, 0x0

    .line 214
    :goto_3
    if-ge v8, v7, :cond_a

    .line 215
    .line 216
    invoke-interface {v3, v8}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 217
    .line 218
    .line 219
    move-result v12

    .line 220
    if-eqz v12, :cond_9

    .line 221
    .line 222
    const v14, 0x10100d0

    .line 223
    .line 224
    .line 225
    if-eq v12, v14, :cond_9

    .line 226
    .line 227
    const v14, 0x1010199

    .line 228
    .line 229
    .line 230
    if-eq v12, v14, :cond_9

    .line 231
    .line 232
    add-int/lit8 v14, v11, 0x1

    .line 233
    .line 234
    invoke-interface {v3, v8, v10}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 235
    .line 236
    .line 237
    move-result v17

    .line 238
    if-eqz v17, :cond_8

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_8
    neg-int v12, v12

    .line 242
    :goto_4
    aput v12, v13, v11

    .line 243
    .line 244
    move v11, v14

    .line 245
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 246
    .line 247
    const/4 v12, 0x2

    .line 248
    const/4 v14, 0x4

    .line 249
    goto :goto_3

    .line 250
    :cond_a
    invoke-static {v13, v11}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    const-string v8, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    .line 255
    .line 256
    if-nez v9, :cond_f

    .line 257
    .line 258
    :goto_5
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 259
    .line 260
    .line 261
    move-result v9

    .line 262
    const/4 v11, 0x4

    .line 263
    if-ne v9, v11, :cond_b

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_b
    const/4 v11, 0x2

    .line 267
    if-ne v9, v11, :cond_e

    .line 268
    .line 269
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    const-string v11, "vector"

    .line 274
    .line 275
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v9

    .line 279
    if-eqz v9, :cond_c

    .line 280
    .line 281
    new-instance v9, Li4/s;

    .line 282
    .line 283
    invoke-direct {v9}, Li4/s;-><init>()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v9, v1, v2, v3, v4}, Li4/s;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 287
    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_c
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 291
    .line 292
    const/16 v11, 0x15

    .line 293
    .line 294
    if-lt v9, v11, :cond_d

    .line 295
    .line 296
    invoke-static/range {p1 .. p4}, Lt/c;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    goto :goto_6

    .line 301
    :cond_d
    invoke-static/range {p1 .. p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    goto :goto_6

    .line 306
    :cond_e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 307
    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v0

    .line 331
    :cond_f
    :goto_6
    if-eqz v9, :cond_10

    .line 332
    .line 333
    iget-object v8, v5, Ls/e;->q:Ls/b;

    .line 334
    .line 335
    invoke-virtual {v8, v9}, Ls/b;->a(Landroid/graphics/drawable/Drawable;)I

    .line 336
    .line 337
    .line 338
    move-result v9

    .line 339
    iget-object v11, v8, Ls/b;->H:[[I

    .line 340
    .line 341
    aput-object v7, v11, v9

    .line 342
    .line 343
    iget-object v7, v8, Ls/b;->J:La0/u;

    .line 344
    .line 345
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v8

    .line 349
    invoke-virtual {v7, v9, v8}, La0/u;->d(ILjava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    :goto_7
    const/4 v8, 0x1

    .line 353
    :goto_8
    const/16 v11, 0x15

    .line 354
    .line 355
    const/4 v12, 0x2

    .line 356
    const/4 v13, 0x3

    .line 357
    const/4 v14, 0x4

    .line 358
    goto/16 :goto_1

    .line 359
    .line 360
    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 361
    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    throw v0

    .line 385
    :cond_11
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v7

    .line 389
    const-string v8, "transition"

    .line 390
    .line 391
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    if-eqz v7, :cond_1c

    .line 396
    .line 397
    sget-object v7, Lt/d;->c:[I

    .line 398
    .line 399
    invoke-static {v1, v4, v3, v7}, Lo0/b;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 400
    .line 401
    .line 402
    move-result-object v7

    .line 403
    const/4 v8, 0x2

    .line 404
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 405
    .line 406
    .line 407
    move-result v11

    .line 408
    const/4 v8, 0x1

    .line 409
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 410
    .line 411
    .line 412
    move-result v12

    .line 413
    invoke-virtual {v7, v10, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 414
    .line 415
    .line 416
    move-result v13

    .line 417
    if-lez v13, :cond_12

    .line 418
    .line 419
    invoke-static {}, Lw/p2;->d()Lw/p2;

    .line 420
    .line 421
    .line 422
    move-result-object v14

    .line 423
    invoke-virtual {v14, v0, v13}, Lw/p2;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 424
    .line 425
    .line 426
    move-result-object v13

    .line 427
    :goto_9
    const/4 v14, 0x3

    .line 428
    goto :goto_a

    .line 429
    :cond_12
    const/4 v13, 0x0

    .line 430
    goto :goto_9

    .line 431
    :goto_a
    invoke-virtual {v7, v14, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 432
    .line 433
    .line 434
    move-result v15

    .line 435
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 436
    .line 437
    .line 438
    const-string v7, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    .line 439
    .line 440
    if-nez v13, :cond_14

    .line 441
    .line 442
    :goto_b
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 443
    .line 444
    .line 445
    move-result v13

    .line 446
    const/4 v8, 0x4

    .line 447
    if-ne v13, v8, :cond_13

    .line 448
    .line 449
    const/4 v8, 0x1

    .line 450
    goto :goto_b

    .line 451
    :cond_13
    const/4 v8, 0x2

    .line 452
    if-ne v13, v8, :cond_17

    .line 453
    .line 454
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v13

    .line 458
    const-string v8, "animated-vector"

    .line 459
    .line 460
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    move-result v8

    .line 464
    if-eqz v8, :cond_15

    .line 465
    .line 466
    new-instance v13, Li4/f;

    .line 467
    .line 468
    invoke-direct {v13, v0}, Li4/f;-><init>(Landroid/content/Context;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v13, v1, v2, v3, v4}, Li4/f;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 472
    .line 473
    .line 474
    :cond_14
    :goto_c
    const/16 v8, 0x15

    .line 475
    .line 476
    goto :goto_e

    .line 477
    :cond_15
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 478
    .line 479
    const/16 v13, 0x15

    .line 480
    .line 481
    if-lt v8, v13, :cond_16

    .line 482
    .line 483
    invoke-static/range {p1 .. p4}, Lt/c;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 484
    .line 485
    .line 486
    move-result-object v8

    .line 487
    :goto_d
    move-object v13, v8

    .line 488
    goto :goto_c

    .line 489
    :cond_16
    invoke-static/range {p1 .. p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    .line 490
    .line 491
    .line 492
    move-result-object v8

    .line 493
    goto :goto_d

    .line 494
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 495
    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .line 500
    .line 501
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    throw v0

    .line 519
    :goto_e
    if-eqz v13, :cond_1b

    .line 520
    .line 521
    if-eq v11, v9, :cond_1a

    .line 522
    .line 523
    if-eq v12, v9, :cond_1a

    .line 524
    .line 525
    iget-object v7, v5, Ls/e;->q:Ls/b;

    .line 526
    .line 527
    invoke-virtual {v7, v13}, Ls/b;->a(Landroid/graphics/drawable/Drawable;)I

    .line 528
    .line 529
    .line 530
    move-result v9

    .line 531
    int-to-long v10, v11

    .line 532
    const/16 v16, 0x20

    .line 533
    .line 534
    shl-long v17, v10, v16

    .line 535
    .line 536
    int-to-long v13, v12

    .line 537
    move/from16 v19, v9

    .line 538
    .line 539
    or-long v8, v17, v13

    .line 540
    .line 541
    if-eqz v15, :cond_18

    .line 542
    .line 543
    const-wide v17, 0x200000000L

    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    goto :goto_f

    .line 549
    :cond_18
    const-wide/16 v17, 0x0

    .line 550
    .line 551
    :goto_f
    iget-object v12, v7, Ls/b;->I:La0/k;

    .line 552
    .line 553
    move/from16 v0, v19

    .line 554
    .line 555
    int-to-long v0, v0

    .line 556
    or-long v20, v0, v17

    .line 557
    .line 558
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    invoke-virtual {v12, v8, v9, v2}, La0/k;->a(JLjava/lang/Long;)V

    .line 563
    .line 564
    .line 565
    if-eqz v15, :cond_19

    .line 566
    .line 567
    shl-long v8, v13, v16

    .line 568
    .line 569
    or-long/2addr v8, v10

    .line 570
    iget-object v2, v7, Ls/b;->I:La0/k;

    .line 571
    .line 572
    const-wide v10, 0x100000000L

    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    or-long/2addr v0, v10

    .line 578
    or-long v0, v0, v17

    .line 579
    .line 580
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-virtual {v2, v8, v9, v0}, La0/k;->a(JLjava/lang/Long;)V

    .line 585
    .line 586
    .line 587
    :cond_19
    move-object/from16 v0, p0

    .line 588
    .line 589
    move-object/from16 v1, p1

    .line 590
    .line 591
    move-object/from16 v2, p2

    .line 592
    .line 593
    const/4 v8, 0x1

    .line 594
    const/4 v10, 0x0

    .line 595
    goto/16 :goto_8

    .line 596
    .line 597
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 598
    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    .line 600
    .line 601
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    .line 603
    .line 604
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    const-string v2, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    .line 612
    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    throw v0

    .line 624
    :cond_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 625
    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .line 630
    .line 631
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    throw v0

    .line 649
    :cond_1c
    move-object/from16 v0, p0

    .line 650
    .line 651
    move-object/from16 v1, p1

    .line 652
    .line 653
    move-object/from16 v2, p2

    .line 654
    .line 655
    goto/16 :goto_7

    .line 656
    .line 657
    :cond_1d
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    invoke-virtual {v5, v0}, Ls/e;->onStateChange([I)Z

    .line 662
    .line 663
    .line 664
    return-object v5

    .line 665
    :cond_1e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 666
    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    .line 668
    .line 669
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    .line 671
    .line 672
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v2

    .line 676
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    const-string v2, ": invalid animated-selector tag "

    .line 680
    .line 681
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    goto :goto_11

    .line 695
    :goto_10
    throw v0

    .line 696
    :goto_11
    goto :goto_10
.end method


# virtual methods
.method public final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ls/f;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Ls/e;->onStateChange([I)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d(Ls/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ls/f;->a:Ls/b;

    .line 2
    .line 3
    iget v0, p0, Ls/f;->g:I

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ls/b;->d(I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Ls/f;->c:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ls/f;->b(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Ls/f;->d:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    instance-of v0, p1, Ls/b;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iput-object p1, p0, Ls/e;->n:Ls/b;

    .line 26
    .line 27
    :cond_1
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iput-object p1, p0, Ls/e;->q:Ls/b;

    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method public final f()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ls/e;->p:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Ls/f;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ls/e;->n:Ls/b;

    .line 9
    .line 10
    iget-object v1, v0, Ls/b;->I:La0/k;

    .line 11
    .line 12
    invoke-virtual {v1}, La0/k;->c()La0/k;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Ls/b;->I:La0/k;

    .line 17
    .line 18
    iget-object v1, v0, Ls/b;->J:La0/u;

    .line 19
    .line 20
    invoke-virtual {v1}, La0/u;->b()La0/u;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, v0, Ls/b;->J:La0/u;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Ls/e;->p:Z

    .line 28
    .line 29
    :cond_0
    return-object p0
.end method

.method public final isStateful()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final jumpToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Ls/f;->jumpToCurrentState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls/e;->r:Ls1/g;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ls1/g;->c0()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Ls/e;->r:Ls1/g;

    .line 13
    .line 14
    iget v0, p0, Ls/e;->s:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ls/f;->c(I)Z

    .line 17
    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    iput v0, p0, Ls/e;->s:I

    .line 21
    .line 22
    iput v0, p0, Ls/e;->t:I

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ls/e;->v:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ls/e;->f()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ls/e;->q:Ls/b;

    .line 9
    .line 10
    iget-object v1, v0, Ls/b;->I:La0/k;

    .line 11
    .line 12
    invoke-virtual {v1}, La0/k;->c()La0/k;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Ls/b;->I:La0/k;

    .line 17
    .line 18
    iget-object v1, v0, Ls/b;->J:La0/u;

    .line 19
    .line 20
    invoke-virtual {v1}, La0/u;->b()La0/u;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, v0, Ls/b;->J:La0/u;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Ls/e;->v:Z

    .line 28
    .line 29
    :cond_0
    return-object p0
.end method

.method public final onStateChange([I)Z
    .locals 13

    .line 1
    iget-object v0, p0, Ls/e;->q:Ls/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ls/b;->f([I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ltz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ls/b;->f([I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :goto_0
    iget v0, p0, Ls/f;->g:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eq v1, v0, :cond_b

    .line 20
    .line 21
    iget-object v3, p0, Ls/e;->r:Ls1/g;

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-eqz v3, :cond_3

    .line 25
    .line 26
    iget v0, p0, Ls/e;->s:I

    .line 27
    .line 28
    if-ne v1, v0, :cond_1

    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_1
    iget v0, p0, Ls/e;->t:I

    .line 33
    .line 34
    if-ne v1, v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v3}, Ls1/g;->i()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v3}, Ls1/g;->S()V

    .line 43
    .line 44
    .line 45
    iget v0, p0, Ls/e;->t:I

    .line 46
    .line 47
    iput v0, p0, Ls/e;->s:I

    .line 48
    .line 49
    iput v1, p0, Ls/e;->t:I

    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_2
    iget v0, p0, Ls/e;->s:I

    .line 54
    .line 55
    invoke-virtual {v3}, Ls1/g;->c0()V

    .line 56
    .line 57
    .line 58
    :cond_3
    const/4 v3, 0x0

    .line 59
    iput-object v3, p0, Ls/e;->r:Ls1/g;

    .line 60
    .line 61
    const/4 v3, -0x1

    .line 62
    iput v3, p0, Ls/e;->t:I

    .line 63
    .line 64
    iput v3, p0, Ls/e;->s:I

    .line 65
    .line 66
    iget-object v3, p0, Ls/e;->q:Ls/b;

    .line 67
    .line 68
    invoke-virtual {v3, v0}, Ls/b;->e(I)I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    invoke-virtual {v3, v1}, Ls/b;->e(I)I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_a

    .line 77
    .line 78
    if-nez v5, :cond_4

    .line 79
    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :cond_4
    int-to-long v7, v5

    .line 83
    const/16 v5, 0x20

    .line 84
    .line 85
    shl-long/2addr v7, v5

    .line 86
    int-to-long v5, v6

    .line 87
    or-long/2addr v5, v7

    .line 88
    iget-object v7, v3, Ls/b;->I:La0/k;

    .line 89
    .line 90
    invoke-virtual {v7, v5, v6}, La0/k;->e(J)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    check-cast v7, Ljava/lang/Long;

    .line 95
    .line 96
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 97
    .line 98
    .line 99
    move-result-wide v7

    .line 100
    long-to-int v8, v7

    .line 101
    if-gez v8, :cond_5

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    iget-object v7, v3, Ls/b;->I:La0/k;

    .line 105
    .line 106
    invoke-virtual {v7, v5, v6}, La0/k;->e(J)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    check-cast v7, Ljava/lang/Long;

    .line 111
    .line 112
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 113
    .line 114
    .line 115
    move-result-wide v9

    .line 116
    const-wide v11, 0x200000000L

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    and-long/2addr v9, v11

    .line 122
    const-wide/16 v11, 0x0

    .line 123
    .line 124
    cmp-long v7, v9, v11

    .line 125
    .line 126
    if-eqz v7, :cond_6

    .line 127
    .line 128
    const/4 v7, 0x1

    .line 129
    goto :goto_1

    .line 130
    :cond_6
    const/4 v7, 0x0

    .line 131
    :goto_1
    invoke-virtual {p0, v8}, Ls/f;->c(I)Z

    .line 132
    .line 133
    .line 134
    iget-object v8, p0, Ls/f;->c:Landroid/graphics/drawable/Drawable;

    .line 135
    .line 136
    instance-of v9, v8, Landroid/graphics/drawable/AnimationDrawable;

    .line 137
    .line 138
    if-eqz v9, :cond_8

    .line 139
    .line 140
    iget-object v3, v3, Ls/b;->I:La0/k;

    .line 141
    .line 142
    invoke-virtual {v3, v5, v6}, La0/k;->e(J)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    check-cast v3, Ljava/lang/Long;

    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 149
    .line 150
    .line 151
    move-result-wide v5

    .line 152
    const-wide v9, 0x100000000L

    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    and-long/2addr v5, v9

    .line 158
    cmp-long v3, v5, v11

    .line 159
    .line 160
    if-eqz v3, :cond_7

    .line 161
    .line 162
    const/4 v2, 0x1

    .line 163
    :cond_7
    new-instance v3, Ls/c;

    .line 164
    .line 165
    check-cast v8, Landroid/graphics/drawable/AnimationDrawable;

    .line 166
    .line 167
    invoke-direct {v3, v8, v2, v7}, Ls/c;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_8
    instance-of v3, v8, Li4/f;

    .line 172
    .line 173
    if-eqz v3, :cond_9

    .line 174
    .line 175
    new-instance v3, Ls/a;

    .line 176
    .line 177
    check-cast v8, Li4/f;

    .line 178
    .line 179
    const/4 v2, 0x1

    .line 180
    invoke-direct {v3, v8, v2}, Ls/a;-><init>(Landroid/graphics/drawable/Animatable;I)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_9
    instance-of v3, v8, Landroid/graphics/drawable/Animatable;

    .line 185
    .line 186
    if-eqz v3, :cond_a

    .line 187
    .line 188
    new-instance v3, Ls/a;

    .line 189
    .line 190
    check-cast v8, Landroid/graphics/drawable/Animatable;

    .line 191
    .line 192
    const/4 v2, 0x0

    .line 193
    invoke-direct {v3, v8, v2}, Ls/a;-><init>(Landroid/graphics/drawable/Animatable;I)V

    .line 194
    .line 195
    .line 196
    :goto_2
    invoke-virtual {v3}, Ls1/g;->b0()V

    .line 197
    .line 198
    .line 199
    iput-object v3, p0, Ls/e;->r:Ls1/g;

    .line 200
    .line 201
    iput v0, p0, Ls/e;->t:I

    .line 202
    .line 203
    iput v1, p0, Ls/e;->s:I

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_a
    :goto_3
    invoke-virtual {p0, v1}, Ls/f;->c(I)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_b

    .line 211
    .line 212
    :goto_4
    const/4 v2, 0x1

    .line 213
    :cond_b
    iget-object v0, p0, Ls/f;->c:Landroid/graphics/drawable/Drawable;

    .line 214
    .line 215
    if-eqz v0, :cond_c

    .line 216
    .line 217
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    or-int/2addr v2, p1

    .line 222
    :cond_c
    return v2
.end method

.method public final setVisible(ZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Ls/f;->setVisible(ZZ)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Ls/e;->r:Ls1/g;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-eqz p2, :cond_2

    .line 12
    .line 13
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Ls1/g;->b0()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Ls/e;->jumpToCurrentState()V

    .line 20
    .line 21
    .line 22
    :cond_2
    :goto_0
    return v0
.end method
