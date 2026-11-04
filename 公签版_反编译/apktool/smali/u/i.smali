.class public final Lu/i;
.super Landroid/view/MenuInflater;
.source "SourceFile"


# static fields
.field public static final e:[Ljava/lang/Class;

.field public static final f:[Ljava/lang/Class;


# instance fields
.field public final a:[Ljava/lang/Object;

.field public final b:[Ljava/lang/Object;

.field public final c:Landroid/content/Context;

.field public d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const-class v1, Landroid/content/Context;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sput-object v0, Lu/i;->e:[Ljava/lang/Class;

    .line 10
    .line 11
    sput-object v0, Lu/i;->f:[Ljava/lang/Class;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu/i;->c:Landroid/content/Context;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-object p1, v0, v1

    .line 11
    .line 12
    iput-object v0, p0, Lu/i;->a:[Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v0, p0, Lu/i;->b:[Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p0, Landroid/content/ContextWrapper;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lu/i;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lu/h;

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-direct {v2, v0, v3}, Lu/h;-><init>(Lu/i;Landroid/view/Menu;)V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    :goto_0
    const/4 v4, 0x1

    .line 17
    const-string v5, "menu"

    .line 18
    .line 19
    const/4 v6, 0x2

    .line 20
    if-ne v3, v6, :cond_1

    .line 21
    .line 22
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    if-eqz v7, :cond_0

    .line 31
    .line 32
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    const-string v2, "Expecting menu, got "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-ne v3, v4, :cond_16

    .line 54
    .line 55
    :goto_1
    const/4 v7, 0x0

    .line 56
    const/4 v9, 0x0

    .line 57
    const/4 v10, 0x0

    .line 58
    const/4 v11, 0x0

    .line 59
    :goto_2
    if-nez v9, :cond_15

    .line 60
    .line 61
    if-eq v3, v4, :cond_14

    .line 62
    .line 63
    const-string v12, "item"

    .line 64
    .line 65
    const-string v13, "group"

    .line 66
    .line 67
    const/4 v14, 0x3

    .line 68
    if-eq v3, v6, :cond_8

    .line 69
    .line 70
    if-eq v3, v14, :cond_3

    .line 71
    .line 72
    :cond_2
    :goto_3
    move-object/from16 v8, p1

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    :goto_4
    const/4 v6, 0x1

    .line 76
    goto/16 :goto_c

    .line 77
    .line 78
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v10, :cond_4

    .line 83
    .line 84
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v14

    .line 88
    if-eqz v14, :cond_4

    .line 89
    .line 90
    move-object/from16 v8, p1

    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    const/4 v6, 0x1

    .line 94
    const/4 v10, 0x0

    .line 95
    const/4 v11, 0x0

    .line 96
    goto/16 :goto_c

    .line 97
    .line 98
    :cond_4
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    if-eqz v13, :cond_5

    .line 103
    .line 104
    iput v7, v2, Lu/h;->b:I

    .line 105
    .line 106
    iput v7, v2, Lu/h;->c:I

    .line 107
    .line 108
    iput v7, v2, Lu/h;->d:I

    .line 109
    .line 110
    iput v7, v2, Lu/h;->e:I

    .line 111
    .line 112
    iput-boolean v4, v2, Lu/h;->f:Z

    .line 113
    .line 114
    iput-boolean v4, v2, Lu/h;->g:Z

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    if-eqz v12, :cond_7

    .line 122
    .line 123
    iget-boolean v3, v2, Lu/h;->h:Z

    .line 124
    .line 125
    if-nez v3, :cond_2

    .line 126
    .line 127
    iget-object v3, v2, Lu/h;->z:Lv/n;

    .line 128
    .line 129
    if-eqz v3, :cond_6

    .line 130
    .line 131
    iget-object v3, v3, Lv/n;->a:Landroid/view/ActionProvider;

    .line 132
    .line 133
    invoke-virtual {v3}, Landroid/view/ActionProvider;->hasSubMenu()Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_6

    .line 138
    .line 139
    iput-boolean v4, v2, Lu/h;->h:Z

    .line 140
    .line 141
    iget v3, v2, Lu/h;->b:I

    .line 142
    .line 143
    iget v12, v2, Lu/h;->i:I

    .line 144
    .line 145
    iget v13, v2, Lu/h;->j:I

    .line 146
    .line 147
    iget-object v14, v2, Lu/h;->k:Ljava/lang/CharSequence;

    .line 148
    .line 149
    iget-object v15, v2, Lu/h;->a:Landroid/view/Menu;

    .line 150
    .line 151
    invoke-interface {v15, v3, v12, v13, v14}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v2, v3}, Lu/h;->b(Landroid/view/MenuItem;)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_6
    iput-boolean v4, v2, Lu/h;->h:Z

    .line 164
    .line 165
    iget v3, v2, Lu/h;->b:I

    .line 166
    .line 167
    iget v12, v2, Lu/h;->i:I

    .line 168
    .line 169
    iget v13, v2, Lu/h;->j:I

    .line 170
    .line 171
    iget-object v14, v2, Lu/h;->k:Ljava/lang/CharSequence;

    .line 172
    .line 173
    iget-object v15, v2, Lu/h;->a:Landroid/view/Menu;

    .line 174
    .line 175
    invoke-interface {v15, v3, v12, v13, v14}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v2, v3}, Lu/h;->b(Landroid/view/MenuItem;)V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_7
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_2

    .line 188
    .line 189
    move-object/from16 v8, p1

    .line 190
    .line 191
    const/4 v4, 0x0

    .line 192
    const/4 v6, 0x1

    .line 193
    const/4 v9, 0x1

    .line 194
    goto/16 :goto_c

    .line 195
    .line 196
    :cond_8
    if-eqz v10, :cond_9

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v13

    .line 207
    const/4 v15, 0x5

    .line 208
    const/4 v8, 0x4

    .line 209
    iget-object v6, v2, Lu/h;->E:Lu/i;

    .line 210
    .line 211
    if-eqz v13, :cond_a

    .line 212
    .line 213
    iget-object v3, v6, Lu/i;->c:Landroid/content/Context;

    .line 214
    .line 215
    sget-object v6, Lp/a;->p:[I

    .line 216
    .line 217
    invoke-virtual {v3, v1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    iput v6, v2, Lu/h;->b:I

    .line 226
    .line 227
    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    iput v6, v2, Lu/h;->c:I

    .line 232
    .line 233
    invoke-virtual {v3, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    iput v6, v2, Lu/h;->d:I

    .line 238
    .line 239
    invoke-virtual {v3, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    iput v6, v2, Lu/h;->e:I

    .line 244
    .line 245
    const/4 v6, 0x2

    .line 246
    invoke-virtual {v3, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    iput-boolean v8, v2, Lu/h;->f:Z

    .line 251
    .line 252
    invoke-virtual {v3, v7, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    iput-boolean v6, v2, Lu/h;->g:Z

    .line 257
    .line 258
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_3

    .line 262
    .line 263
    :cond_a
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v12

    .line 267
    if-eqz v12, :cond_12

    .line 268
    .line 269
    iget-object v3, v6, Lu/i;->c:Landroid/content/Context;

    .line 270
    .line 271
    sget-object v12, Lp/a;->q:[I

    .line 272
    .line 273
    invoke-virtual {v3, v1, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 274
    .line 275
    .line 276
    move-result-object v12

    .line 277
    const/4 v13, 0x2

    .line 278
    invoke-virtual {v12, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    iput v4, v2, Lu/h;->i:I

    .line 283
    .line 284
    iget v4, v2, Lu/h;->c:I

    .line 285
    .line 286
    invoke-virtual {v12, v15, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    iget v15, v2, Lu/h;->d:I

    .line 291
    .line 292
    const/4 v13, 0x6

    .line 293
    invoke-virtual {v12, v13, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 294
    .line 295
    .line 296
    move-result v13

    .line 297
    const/high16 v15, -0x10000

    .line 298
    .line 299
    and-int/2addr v4, v15

    .line 300
    const v15, 0xffff

    .line 301
    .line 302
    .line 303
    and-int/2addr v13, v15

    .line 304
    or-int/2addr v4, v13

    .line 305
    iput v4, v2, Lu/h;->j:I

    .line 306
    .line 307
    const/4 v4, 0x7

    .line 308
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    iput-object v4, v2, Lu/h;->k:Ljava/lang/CharSequence;

    .line 313
    .line 314
    const/16 v4, 0x8

    .line 315
    .line 316
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    iput-object v4, v2, Lu/h;->l:Ljava/lang/CharSequence;

    .line 321
    .line 322
    invoke-virtual {v12, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    iput v4, v2, Lu/h;->m:I

    .line 327
    .line 328
    const/16 v4, 0x9

    .line 329
    .line 330
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    if-nez v4, :cond_b

    .line 335
    .line 336
    const/4 v4, 0x0

    .line 337
    goto :goto_5

    .line 338
    :cond_b
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    :goto_5
    iput-char v4, v2, Lu/h;->n:C

    .line 343
    .line 344
    const/16 v4, 0x10

    .line 345
    .line 346
    const/16 v13, 0x1000

    .line 347
    .line 348
    invoke-virtual {v12, v4, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    iput v4, v2, Lu/h;->o:I

    .line 353
    .line 354
    const/16 v4, 0xa

    .line 355
    .line 356
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    if-nez v4, :cond_c

    .line 361
    .line 362
    const/4 v4, 0x0

    .line 363
    goto :goto_6

    .line 364
    :cond_c
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    :goto_6
    iput-char v4, v2, Lu/h;->p:C

    .line 369
    .line 370
    const/16 v4, 0x14

    .line 371
    .line 372
    invoke-virtual {v12, v4, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 373
    .line 374
    .line 375
    move-result v4

    .line 376
    iput v4, v2, Lu/h;->q:I

    .line 377
    .line 378
    const/16 v4, 0xb

    .line 379
    .line 380
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 381
    .line 382
    .line 383
    move-result v13

    .line 384
    if-eqz v13, :cond_d

    .line 385
    .line 386
    invoke-virtual {v12, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 387
    .line 388
    .line 389
    move-result v4

    .line 390
    iput v4, v2, Lu/h;->r:I

    .line 391
    .line 392
    goto :goto_7

    .line 393
    :cond_d
    iget v4, v2, Lu/h;->e:I

    .line 394
    .line 395
    iput v4, v2, Lu/h;->r:I

    .line 396
    .line 397
    :goto_7
    invoke-virtual {v12, v14, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    iput-boolean v4, v2, Lu/h;->s:Z

    .line 402
    .line 403
    iget-boolean v4, v2, Lu/h;->f:Z

    .line 404
    .line 405
    invoke-virtual {v12, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    iput-boolean v4, v2, Lu/h;->t:Z

    .line 410
    .line 411
    iget-boolean v4, v2, Lu/h;->g:Z

    .line 412
    .line 413
    const/4 v8, 0x1

    .line 414
    invoke-virtual {v12, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    iput-boolean v4, v2, Lu/h;->u:Z

    .line 419
    .line 420
    const/16 v4, 0x15

    .line 421
    .line 422
    const/4 v8, -0x1

    .line 423
    invoke-virtual {v12, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    iput v4, v2, Lu/h;->v:I

    .line 428
    .line 429
    const/16 v4, 0xc

    .line 430
    .line 431
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    iput-object v4, v2, Lu/h;->y:Ljava/lang/String;

    .line 436
    .line 437
    const/16 v4, 0xd

    .line 438
    .line 439
    invoke-virtual {v12, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 440
    .line 441
    .line 442
    move-result v4

    .line 443
    iput v4, v2, Lu/h;->w:I

    .line 444
    .line 445
    const/16 v4, 0xf

    .line 446
    .line 447
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v4

    .line 451
    iput-object v4, v2, Lu/h;->x:Ljava/lang/String;

    .line 452
    .line 453
    const/16 v4, 0xe

    .line 454
    .line 455
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    if-eqz v4, :cond_e

    .line 460
    .line 461
    iget v13, v2, Lu/h;->w:I

    .line 462
    .line 463
    if-nez v13, :cond_e

    .line 464
    .line 465
    iget-object v13, v2, Lu/h;->x:Ljava/lang/String;

    .line 466
    .line 467
    if-nez v13, :cond_e

    .line 468
    .line 469
    sget-object v13, Lu/i;->f:[Ljava/lang/Class;

    .line 470
    .line 471
    iget-object v6, v6, Lu/i;->b:[Ljava/lang/Object;

    .line 472
    .line 473
    invoke-virtual {v2, v4, v13, v6}, Lu/h;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    check-cast v4, Lv/n;

    .line 478
    .line 479
    iput-object v4, v2, Lu/h;->z:Lv/n;

    .line 480
    .line 481
    goto :goto_8

    .line 482
    :cond_e
    const/4 v4, 0x0

    .line 483
    iput-object v4, v2, Lu/h;->z:Lv/n;

    .line 484
    .line 485
    :goto_8
    const/16 v4, 0x11

    .line 486
    .line 487
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    iput-object v4, v2, Lu/h;->A:Ljava/lang/CharSequence;

    .line 492
    .line 493
    const/16 v4, 0x16

    .line 494
    .line 495
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    iput-object v4, v2, Lu/h;->B:Ljava/lang/CharSequence;

    .line 500
    .line 501
    const/16 v4, 0x13

    .line 502
    .line 503
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 504
    .line 505
    .line 506
    move-result v6

    .line 507
    if-eqz v6, :cond_f

    .line 508
    .line 509
    invoke-virtual {v12, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 510
    .line 511
    .line 512
    move-result v4

    .line 513
    iget-object v6, v2, Lu/h;->D:Landroid/graphics/PorterDuff$Mode;

    .line 514
    .line 515
    invoke-static {v4, v6}, Lw/n1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    iput-object v4, v2, Lu/h;->D:Landroid/graphics/PorterDuff$Mode;

    .line 520
    .line 521
    goto :goto_9

    .line 522
    :cond_f
    const/4 v4, 0x0

    .line 523
    iput-object v4, v2, Lu/h;->D:Landroid/graphics/PorterDuff$Mode;

    .line 524
    .line 525
    :goto_9
    const/16 v4, 0x12

    .line 526
    .line 527
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 528
    .line 529
    .line 530
    move-result v6

    .line 531
    if-eqz v6, :cond_11

    .line 532
    .line 533
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 534
    .line 535
    .line 536
    move-result v6

    .line 537
    if-eqz v6, :cond_10

    .line 538
    .line 539
    invoke-virtual {v12, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 540
    .line 541
    .line 542
    move-result v6

    .line 543
    if-eqz v6, :cond_10

    .line 544
    .line 545
    invoke-static {v3, v6}, Ln0/g;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    if-eqz v3, :cond_10

    .line 550
    .line 551
    goto :goto_a

    .line 552
    :cond_10
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    :goto_a
    iput-object v3, v2, Lu/h;->C:Landroid/content/res/ColorStateList;

    .line 557
    .line 558
    const/4 v4, 0x0

    .line 559
    goto :goto_b

    .line 560
    :cond_11
    const/4 v4, 0x0

    .line 561
    iput-object v4, v2, Lu/h;->C:Landroid/content/res/ColorStateList;

    .line 562
    .line 563
    :goto_b
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 564
    .line 565
    .line 566
    iput-boolean v7, v2, Lu/h;->h:Z

    .line 567
    .line 568
    move-object/from16 v8, p1

    .line 569
    .line 570
    goto/16 :goto_4

    .line 571
    .line 572
    :cond_12
    const/4 v4, 0x0

    .line 573
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    move-result v6

    .line 577
    if-eqz v6, :cond_13

    .line 578
    .line 579
    const/4 v6, 0x1

    .line 580
    iput-boolean v6, v2, Lu/h;->h:Z

    .line 581
    .line 582
    iget v3, v2, Lu/h;->b:I

    .line 583
    .line 584
    iget v8, v2, Lu/h;->i:I

    .line 585
    .line 586
    iget v12, v2, Lu/h;->j:I

    .line 587
    .line 588
    iget-object v13, v2, Lu/h;->k:Ljava/lang/CharSequence;

    .line 589
    .line 590
    iget-object v14, v2, Lu/h;->a:Landroid/view/Menu;

    .line 591
    .line 592
    invoke-interface {v14, v3, v8, v12, v13}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 597
    .line 598
    .line 599
    move-result-object v8

    .line 600
    invoke-virtual {v2, v8}, Lu/h;->b(Landroid/view/MenuItem;)V

    .line 601
    .line 602
    .line 603
    move-object/from16 v8, p1

    .line 604
    .line 605
    invoke-virtual {v0, v8, v1, v3}, Lu/i;->b(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    .line 606
    .line 607
    .line 608
    goto :goto_c

    .line 609
    :cond_13
    move-object/from16 v8, p1

    .line 610
    .line 611
    const/4 v6, 0x1

    .line 612
    move-object v11, v3

    .line 613
    const/4 v10, 0x1

    .line 614
    :goto_c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 615
    .line 616
    .line 617
    move-result v3

    .line 618
    const/4 v4, 0x1

    .line 619
    const/4 v6, 0x2

    .line 620
    goto/16 :goto_2

    .line 621
    .line 622
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    .line 623
    .line 624
    const-string v2, "Unexpected end of document"

    .line 625
    .line 626
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    throw v1

    .line 630
    :cond_15
    return-void

    .line 631
    :cond_16
    move-object/from16 v8, p1

    .line 632
    .line 633
    goto/16 :goto_0
.end method

.method public final inflate(ILandroid/view/Menu;)V
    .locals 3

    .line 1
    const-string v0, "Error inflating menu XML"

    .line 2
    .line 3
    instance-of v1, p2, Lv/k;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :try_start_0
    iget-object v2, p0, Lu/i;->c:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, v1, p1, p2}, Lu/i;->b(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :goto_0
    :try_start_1
    new-instance p2, Landroid/view/InflateException;

    .line 40
    .line 41
    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw p2

    .line 45
    :goto_1
    new-instance p2, Landroid/view/InflateException;

    .line 46
    .line 47
    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :goto_2
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 54
    .line 55
    .line 56
    :cond_1
    throw p1
.end method
