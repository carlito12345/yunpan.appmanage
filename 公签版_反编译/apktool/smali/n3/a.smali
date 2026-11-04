.class public final Ln3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li3/j;


# static fields
.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lu1/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ln3/a;->d:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "\\{\\\\.*?\\}"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Ln3/a;->e:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ln3/a;->a:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ln3/a;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lu1/q;

    .line 19
    .line 20
    invoke-direct {v0}, Lu1/q;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ln3/a;->c:Lu1/q;

    .line 24
    .line 25
    return-void
.end method

.method public static a(Landroid/text/Spanned;Ljava/lang/String;)Lt1/b;
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/16 v18, 0x0

    .line 4
    .line 5
    const/16 v17, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const v13, -0x800001

    .line 9
    .line 10
    .line 11
    const/high16 v16, -0x80000000

    .line 12
    .line 13
    const/4 v14, 0x0

    .line 14
    const/high16 v15, -0x1000000

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance v19, Lt1/b;

    .line 20
    .line 21
    move-object/from16 v0, v19

    .line 22
    .line 23
    move-object/from16 v1, p0

    .line 24
    .line 25
    move-object v2, v3

    .line 26
    move v5, v13

    .line 27
    move/from16 v6, v16

    .line 28
    .line 29
    move/from16 v7, v16

    .line 30
    .line 31
    move v8, v13

    .line 32
    move/from16 v9, v16

    .line 33
    .line 34
    move/from16 v10, v16

    .line 35
    .line 36
    move v11, v13

    .line 37
    move v12, v13

    .line 38
    invoke-direct/range {v0 .. v18}, Lt1/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    .line 39
    .line 40
    .line 41
    return-object v19

    .line 42
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x2

    .line 47
    const/4 v5, 0x1

    .line 48
    const-string v6, "{\\an1}"

    .line 49
    .line 50
    const-string v8, "{\\an2}"

    .line 51
    .line 52
    const-string v9, "{\\an3}"

    .line 53
    .line 54
    const-string v10, "{\\an4}"

    .line 55
    .line 56
    const-string v12, "{\\an5}"

    .line 57
    .line 58
    const-string v7, "{\\an6}"

    .line 59
    .line 60
    const-string v11, "{\\an7}"

    .line 61
    .line 62
    const/16 v20, 0x8

    .line 63
    .line 64
    const-string v15, "{\\an8}"

    .line 65
    .line 66
    const-string v14, "{\\an9}"

    .line 67
    .line 68
    const/16 v21, -0x1

    .line 69
    .line 70
    const/16 v22, 0x0

    .line 71
    .line 72
    const/4 v13, 0x3

    .line 73
    const/4 v4, 0x4

    .line 74
    const/4 v3, 0x5

    .line 75
    sparse-switch v1, :sswitch_data_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :sswitch_0
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    const/4 v1, 0x5

    .line 86
    goto :goto_1

    .line 87
    :sswitch_1
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    const/16 v1, 0x8

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :sswitch_2
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_1

    .line 101
    .line 102
    const/4 v1, 0x2

    .line 103
    goto :goto_1

    .line 104
    :sswitch_3
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_1

    .line 109
    .line 110
    const/4 v1, 0x4

    .line 111
    goto :goto_1

    .line 112
    :sswitch_4
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_1

    .line 117
    .line 118
    const/4 v1, 0x7

    .line 119
    goto :goto_1

    .line 120
    :sswitch_5
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_1

    .line 125
    .line 126
    const/4 v1, 0x1

    .line 127
    goto :goto_1

    .line 128
    :sswitch_6
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_1

    .line 133
    .line 134
    const/4 v1, 0x3

    .line 135
    goto :goto_1

    .line 136
    :sswitch_7
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_1

    .line 141
    .line 142
    const/4 v1, 0x6

    .line 143
    goto :goto_1

    .line 144
    :sswitch_8
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_1

    .line 149
    .line 150
    const/4 v1, 0x0

    .line 151
    goto :goto_1

    .line 152
    :cond_1
    :goto_0
    const/4 v1, -0x1

    .line 153
    :goto_1
    if-eqz v1, :cond_3

    .line 154
    .line 155
    if-eq v1, v5, :cond_3

    .line 156
    .line 157
    if-eq v1, v2, :cond_3

    .line 158
    .line 159
    if-eq v1, v13, :cond_2

    .line 160
    .line 161
    if-eq v1, v4, :cond_2

    .line 162
    .line 163
    if-eq v1, v3, :cond_2

    .line 164
    .line 165
    const/4 v1, 0x1

    .line 166
    goto :goto_2

    .line 167
    :cond_2
    const/4 v1, 0x2

    .line 168
    goto :goto_2

    .line 169
    :cond_3
    const/4 v1, 0x0

    .line 170
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 171
    .line 172
    .line 173
    move-result v23

    .line 174
    sparse-switch v23, :sswitch_data_1

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :sswitch_9
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_4

    .line 183
    .line 184
    const/4 v7, 0x5

    .line 185
    goto :goto_4

    .line 186
    :sswitch_a
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_4

    .line 191
    .line 192
    const/4 v7, 0x4

    .line 193
    goto :goto_4

    .line 194
    :sswitch_b
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_4

    .line 199
    .line 200
    const/4 v7, 0x3

    .line 201
    goto :goto_4

    .line 202
    :sswitch_c
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_4

    .line 207
    .line 208
    const/16 v7, 0x8

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :sswitch_d
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_4

    .line 216
    .line 217
    const/4 v7, 0x7

    .line 218
    goto :goto_4

    .line 219
    :sswitch_e
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_4

    .line 224
    .line 225
    const/4 v7, 0x6

    .line 226
    goto :goto_4

    .line 227
    :sswitch_f
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_4

    .line 232
    .line 233
    const/4 v7, 0x2

    .line 234
    goto :goto_4

    .line 235
    :sswitch_10
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_4

    .line 240
    .line 241
    const/4 v7, 0x1

    .line 242
    goto :goto_4

    .line 243
    :sswitch_11
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_4

    .line 248
    .line 249
    const/4 v7, 0x0

    .line 250
    goto :goto_4

    .line 251
    :cond_4
    :goto_3
    const/4 v7, -0x1

    .line 252
    :goto_4
    if-eqz v7, :cond_6

    .line 253
    .line 254
    if-eq v7, v5, :cond_6

    .line 255
    .line 256
    if-eq v7, v2, :cond_6

    .line 257
    .line 258
    if-eq v7, v13, :cond_5

    .line 259
    .line 260
    if-eq v7, v4, :cond_5

    .line 261
    .line 262
    if-eq v7, v3, :cond_5

    .line 263
    .line 264
    const/4 v7, 0x1

    .line 265
    goto :goto_5

    .line 266
    :cond_5
    const/4 v7, 0x0

    .line 267
    goto :goto_5

    .line 268
    :cond_6
    const/4 v7, 0x2

    .line 269
    :goto_5
    const v0, 0x3da3d70a    # 0.08f

    .line 270
    .line 271
    .line 272
    const/high16 v3, 0x3f000000    # 0.5f

    .line 273
    .line 274
    const v4, 0x3f6b851f    # 0.92f

    .line 275
    .line 276
    .line 277
    if-eqz v1, :cond_9

    .line 278
    .line 279
    if-eq v1, v5, :cond_8

    .line 280
    .line 281
    if-ne v1, v2, :cond_7

    .line 282
    .line 283
    const v8, 0x3f6b851f    # 0.92f

    .line 284
    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 288
    .line 289
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 290
    .line 291
    .line 292
    throw v0

    .line 293
    :cond_8
    const/high16 v8, 0x3f000000    # 0.5f

    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_9
    const v8, 0x3da3d70a    # 0.08f

    .line 297
    .line 298
    .line 299
    :goto_6
    if-eqz v7, :cond_c

    .line 300
    .line 301
    if-eq v7, v5, :cond_b

    .line 302
    .line 303
    if-ne v7, v2, :cond_a

    .line 304
    .line 305
    const v5, 0x3f6b851f    # 0.92f

    .line 306
    .line 307
    .line 308
    goto :goto_7

    .line 309
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 310
    .line 311
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 312
    .line 313
    .line 314
    throw v0

    .line 315
    :cond_b
    const/high16 v5, 0x3f000000    # 0.5f

    .line 316
    .line 317
    goto :goto_7

    .line 318
    :cond_c
    const v5, 0x3da3d70a    # 0.08f

    .line 319
    .line 320
    .line 321
    :goto_7
    new-instance v19, Lt1/b;

    .line 322
    .line 323
    move-object/from16 v0, v19

    .line 324
    .line 325
    const/4 v6, 0x0

    .line 326
    move/from16 v22, v1

    .line 327
    .line 328
    move-object/from16 v1, p0

    .line 329
    .line 330
    const/4 v3, 0x0

    .line 331
    move-object v2, v3

    .line 332
    const/4 v4, 0x0

    .line 333
    move/from16 v9, v22

    .line 334
    .line 335
    move/from16 v10, v16

    .line 336
    .line 337
    const v13, -0x800001

    .line 338
    .line 339
    .line 340
    move v11, v13

    .line 341
    move v12, v13

    .line 342
    const/4 v14, 0x0

    .line 343
    const/high16 v15, -0x1000000

    .line 344
    .line 345
    invoke-direct/range {v0 .. v18}, Lt1/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    .line 346
    .line 347
    .line 348
    return-object v19

    .line 349
    :sswitch_data_0
    .sparse-switch
        -0x28ddbde6 -> :sswitch_8
        -0x28ddbdc7 -> :sswitch_7
        -0x28ddbda8 -> :sswitch_6
        -0x28ddbd89 -> :sswitch_5
        -0x28ddbd6a -> :sswitch_4
        -0x28ddbd4b -> :sswitch_3
        -0x28ddbd2c -> :sswitch_2
        -0x28ddbd0d -> :sswitch_1
        -0x28ddbcee -> :sswitch_0
    .end sparse-switch

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :sswitch_data_1
    .sparse-switch
        -0x28ddbde6 -> :sswitch_11
        -0x28ddbdc7 -> :sswitch_10
        -0x28ddbda8 -> :sswitch_f
        -0x28ddbd89 -> :sswitch_e
        -0x28ddbd6a -> :sswitch_d
        -0x28ddbd4b -> :sswitch_c
        -0x28ddbd2c -> :sswitch_b
        -0x28ddbd0d -> :sswitch_a
        -0x28ddbcee -> :sswitch_9
    .end sparse-switch
.end method

.method public static c(Ljava/util/regex/Matcher;I)J
    .locals 6

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/32 v2, 0x36ee80

    .line 14
    .line 15
    .line 16
    mul-long v0, v0, v2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    :goto_0
    add-int/lit8 v2, p1, 0x2

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    const-wide/32 v4, 0xea60

    .line 35
    .line 36
    .line 37
    mul-long v2, v2, v4

    .line 38
    .line 39
    add-long/2addr v2, v0

    .line 40
    add-int/lit8 v0, p1, 0x3

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    const-wide/16 v4, 0x3e8

    .line 54
    .line 55
    mul-long v0, v0, v4

    .line 56
    .line 57
    add-long/2addr v0, v2

    .line 58
    add-int/lit8 p1, p1, 0x4

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_1

    .line 65
    .line 66
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 67
    .line 68
    .line 69
    move-result-wide p0

    .line 70
    add-long/2addr v0, p0

    .line 71
    :cond_1
    mul-long v0, v0, v4

    .line 72
    .line 73
    return-wide v0
.end method


# virtual methods
.method public final b([BIILi3/i;Lu1/f;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    add-int v4, v1, p3

    .line 10
    .line 11
    iget-object v5, v0, Ln3/a;->c:Lu1/q;

    .line 12
    .line 13
    move-object/from16 v6, p1

    .line 14
    .line 15
    invoke-virtual {v5, v4, v6}, Lu1/q;->M(I[B)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v5, v1}, Lu1/q;->O(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5}, Lu1/q;->K()Ljava/nio/charset/Charset;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v1, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 29
    .line 30
    :goto_0
    iget-wide v6, v2, Li3/i;->a:J

    .line 31
    .line 32
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    cmp-long v10, v6, v8

    .line 38
    .line 39
    if-eqz v10, :cond_1

    .line 40
    .line 41
    iget-boolean v2, v2, Li3/i;->b:Z

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    new-instance v2, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v2, 0x0

    .line 52
    :goto_1
    invoke-virtual {v5, v1}, Lu1/q;->p(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    if-eqz v10, :cond_3

    .line 57
    .line 58
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    if-eqz v11, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v1}, Lu1/q;->p(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    if-nez v10, :cond_4

    .line 73
    .line 74
    const-string v1, "Unexpected end"

    .line 75
    .line 76
    invoke-static {v1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    move-object v0, v3

    .line 80
    goto/16 :goto_9

    .line 81
    .line 82
    :cond_4
    sget-object v11, Ln3/a;->d:Ljava/util/regex/Pattern;

    .line 83
    .line 84
    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    if-eqz v12, :cond_d

    .line 93
    .line 94
    const/4 v10, 0x1

    .line 95
    invoke-static {v11, v10}, Ln3/a;->c(Ljava/util/regex/Matcher;I)J

    .line 96
    .line 97
    .line 98
    move-result-wide v13

    .line 99
    const/4 v10, 0x6

    .line 100
    invoke-static {v11, v10}, Ln3/a;->c(Ljava/util/regex/Matcher;I)J

    .line 101
    .line 102
    .line 103
    move-result-wide v10

    .line 104
    iget-object v12, v0, Ln3/a;->a:Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const/4 v15, 0x0

    .line 107
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 108
    .line 109
    .line 110
    iget-object v4, v0, Ln3/a;->b:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v1}, Lu1/q;->p(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v16

    .line 119
    :goto_2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v17

    .line 123
    if-nez v17, :cond_7

    .line 124
    .line 125
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    .line 126
    .line 127
    .line 128
    move-result v17

    .line 129
    if-lez v17, :cond_5

    .line 130
    .line 131
    const-string v15, "<br>"

    .line 132
    .line 133
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v15

    .line 140
    new-instance v8, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    sget-object v9, Ln3/a;->e:Ljava/util/regex/Pattern;

    .line 146
    .line 147
    invoke-virtual {v9, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    const/4 v15, 0x0

    .line 152
    :goto_3
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    .line 153
    .line 154
    .line 155
    move-result v16

    .line 156
    if-eqz v16, :cond_6

    .line 157
    .line 158
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->start()I

    .line 166
    .line 167
    .line 168
    move-result v16

    .line 169
    move-object/from16 p3, v9

    .line 170
    .line 171
    sub-int v9, v16, v15

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    add-int v3, v9, v0

    .line 178
    .line 179
    move-wide/from16 v16, v13

    .line 180
    .line 181
    const-string v13, ""

    .line 182
    .line 183
    invoke-virtual {v8, v9, v3, v13}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    add-int/2addr v15, v0

    .line 187
    move-object/from16 v0, p0

    .line 188
    .line 189
    move-object/from16 v9, p3

    .line 190
    .line 191
    move-object/from16 v3, p5

    .line 192
    .line 193
    move-wide/from16 v13, v16

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_6
    move-wide/from16 v16, v13

    .line 197
    .line 198
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5, v1}, Lu1/q;->p(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    move-object/from16 v3, p5

    .line 210
    .line 211
    move-wide/from16 v13, v16

    .line 212
    .line 213
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    const/4 v15, 0x0

    .line 219
    move-object/from16 v16, v0

    .line 220
    .line 221
    move-object/from16 v0, p0

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_7
    move-wide/from16 v16, v13

    .line 225
    .line 226
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const/4 v15, 0x0

    .line 235
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-ge v15, v3, :cond_9

    .line 240
    .line 241
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    check-cast v3, Ljava/lang/String;

    .line 246
    .line 247
    const-string v8, "\\{\\\\an[1-9]\\}"

    .line 248
    .line 249
    invoke-virtual {v3, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    if-eqz v8, :cond_8

    .line 254
    .line 255
    :goto_5
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_8
    add-int/lit8 v15, v15, 0x1

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_9
    const/4 v3, 0x0

    .line 265
    goto :goto_5

    .line 266
    :goto_6
    cmp-long v4, v6, v8

    .line 267
    .line 268
    if-eqz v4, :cond_c

    .line 269
    .line 270
    cmp-long v4, v10, v6

    .line 271
    .line 272
    if-ltz v4, :cond_a

    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_a
    if-eqz v2, :cond_b

    .line 276
    .line 277
    new-instance v4, Li3/a;

    .line 278
    .line 279
    invoke-static {v0, v3}, Ln3/a;->a(Landroid/text/Spanned;Ljava/lang/String;)Lt1/b;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-static {v0}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    sub-long v10, v10, v16

    .line 288
    .line 289
    move-object v12, v4

    .line 290
    move-wide/from16 v13, v16

    .line 291
    .line 292
    move-wide v15, v10

    .line 293
    move-object/from16 v17, v0

    .line 294
    .line 295
    invoke-direct/range {v12 .. v17}, Li3/a;-><init>(JJLjava/util/List;)V

    .line 296
    .line 297
    .line 298
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    :cond_b
    move-object/from16 v0, p5

    .line 302
    .line 303
    goto :goto_8

    .line 304
    :cond_c
    :goto_7
    new-instance v4, Li3/a;

    .line 305
    .line 306
    invoke-static {v0, v3}, Ln3/a;->a(Landroid/text/Spanned;Ljava/lang/String;)Lt1/b;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-static {v0}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    sub-long v10, v10, v16

    .line 315
    .line 316
    move-object v12, v4

    .line 317
    move-wide/from16 v13, v16

    .line 318
    .line 319
    move-wide v15, v10

    .line 320
    move-object/from16 v17, v0

    .line 321
    .line 322
    invoke-direct/range {v12 .. v17}, Li3/a;-><init>(JJLjava/util/List;)V

    .line 323
    .line 324
    .line 325
    move-object/from16 v0, p5

    .line 326
    .line 327
    invoke-interface {v0, v4}, Lu1/f;->accept(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :goto_8
    move-object v3, v0

    .line 331
    move-object/from16 v0, p0

    .line 332
    .line 333
    goto/16 :goto_1

    .line 334
    .line 335
    :cond_d
    move-object v0, v3

    .line 336
    const-string v3, "Skipping invalid timing: "

    .line 337
    .line 338
    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    invoke-static {v3}, Lu1/a;->p(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    goto :goto_8

    .line 346
    :catch_0
    move-object v0, v3

    .line 347
    const-string v3, "Skipping invalid index: "

    .line 348
    .line 349
    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    invoke-static {v3}, Lu1/a;->p(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    goto :goto_8

    .line 357
    :goto_9
    if-eqz v2, :cond_e

    .line 358
    .line 359
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-eqz v2, :cond_e

    .line 368
    .line 369
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    check-cast v2, Li3/a;

    .line 374
    .line 375
    invoke-interface {v0, v2}, Lu1/f;->accept(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    goto :goto_a

    .line 379
    :cond_e
    return-void
.end method

.method public final synthetic e(II[B)Li3/d;
    .locals 0

    .line 1
    invoke-static {p0, p3, p2}, Lg/b;->a(Li3/j;[BI)Li3/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic reset()V
    .locals 0

    .line 1
    return-void
.end method
