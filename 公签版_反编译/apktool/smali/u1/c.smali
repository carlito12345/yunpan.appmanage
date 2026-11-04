.class public abstract Lu1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[Ljava/lang/String;

.field public static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x4

    .line 4
    new-array v3, v2, [B

    .line 5
    .line 6
    fill-array-data v3, :array_0

    .line 7
    .line 8
    .line 9
    sput-object v3, Lu1/c;->a:[B

    .line 10
    .line 11
    new-array v2, v2, [Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, ""

    .line 14
    .line 15
    aput-object v3, v2, v0

    .line 16
    .line 17
    const-string v0, "A"

    .line 18
    .line 19
    aput-object v0, v2, v1

    .line 20
    .line 21
    const-string v0, "B"

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    aput-object v0, v2, v1

    .line 25
    .line 26
    const-string v0, "C"

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    aput-object v0, v2, v1

    .line 30
    .line 31
    sput-object v2, Lu1/c;->b:[Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "^\\D?(\\d+)$"

    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lu1/c;->c:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public static a(III[IZI)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    sget-object v3, Lu1/c;->b:[Ljava/lang/String;

    .line 6
    .line 7
    aget-object p0, v3, p0

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    const/16 p4, 0x48

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 p4, 0x4c

    .line 23
    .line 24
    :goto_0
    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 25
    .line 26
    .line 27
    move-result-object p4

    .line 28
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p5

    .line 32
    const/4 v3, 0x5

    .line 33
    new-array v3, v3, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object p0, v3, v0

    .line 36
    .line 37
    aput-object p1, v3, v1

    .line 38
    .line 39
    const/4 p0, 0x2

    .line 40
    aput-object p2, v3, p0

    .line 41
    .line 42
    const/4 p0, 0x3

    .line 43
    aput-object p4, v3, p0

    .line 44
    .line 45
    const/4 p0, 0x4

    .line 46
    aput-object p5, v3, p0

    .line 47
    .line 48
    sget-object p0, Lu1/f0;->a:Ljava/lang/String;

    .line 49
    .line 50
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 51
    .line 52
    const-string p1, "hvc1.%s%d.%X.%c%d"

    .line 53
    .line 54
    invoke-static {p0, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    array-length p0, p3

    .line 62
    :goto_1
    if-lez p0, :cond_1

    .line 63
    .line 64
    add-int/lit8 p1, p0, -0x1

    .line 65
    .line 66
    aget p1, p3, p1

    .line 67
    .line 68
    if-nez p1, :cond_1

    .line 69
    .line 70
    add-int/lit8 p0, p0, -0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/4 p1, 0x0

    .line 74
    :goto_2
    if-ge p1, p0, :cond_2

    .line 75
    .line 76
    aget p2, p3, p1

    .line 77
    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    new-array p4, v1, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object p2, p4, v0

    .line 85
    .line 86
    const-string p2, ".%02X"

    .line 87
    .line 88
    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    add-int/2addr p1, v1

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0
.end method

.method public static b(Lr1/p;)Landroid/util/Pair;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "07"

    .line 4
    .line 5
    const-string v2, "06"

    .line 6
    .line 7
    const-string v3, "05"

    .line 8
    .line 9
    const-string v4, "04"

    .line 10
    .line 11
    const-string v5, "03"

    .line 12
    .line 13
    const-string v6, "02"

    .line 14
    .line 15
    const-string v7, "01"

    .line 16
    .line 17
    const/16 v8, 0x10

    .line 18
    .line 19
    const/16 v11, 0x8

    .line 20
    .line 21
    const/4 v13, 0x3

    .line 22
    const/4 v10, 0x1

    .line 23
    iget-object v14, v0, Lr1/p;->k:Ljava/lang/String;

    .line 24
    .line 25
    const/16 v17, 0x0

    .line 26
    .line 27
    if-nez v14, :cond_0

    .line 28
    .line 29
    return-object v17

    .line 30
    :cond_0
    const-string v15, "\\."

    .line 31
    .line 32
    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v14

    .line 36
    const-string v15, "video/dolby-vision"

    .line 37
    .line 38
    iget-object v12, v0, Lr1/p;->o:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v12

    .line 44
    const/16 v15, 0x400

    .line 45
    .line 46
    const/16 v18, 0x800

    .line 47
    .line 48
    const/16 v19, 0x1000

    .line 49
    .line 50
    const/16 v20, 0x200

    .line 51
    .line 52
    const/16 v21, 0x80

    .line 53
    .line 54
    const/16 v22, 0x40

    .line 55
    .line 56
    const/16 v23, 0x20

    .line 57
    .line 58
    const/16 v24, 0x100

    .line 59
    .line 60
    iget-object v9, v0, Lr1/p;->k:Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v12, :cond_1f

    .line 63
    .line 64
    array-length v0, v14

    .line 65
    const-string v12, "Ignoring malformed Dolby Vision codec string: "

    .line 66
    .line 67
    if-ge v0, v13, :cond_1

    .line 68
    .line 69
    invoke-static {v12, v9}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_a

    .line 73
    .line 74
    :cond_1
    sget-object v0, Lu1/c;->c:Ljava/util/regex/Pattern;

    .line 75
    .line 76
    aget-object v13, v14, v10

    .line 77
    .line 78
    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 83
    .line 84
    .line 85
    move-result v13

    .line 86
    if-nez v13, :cond_2

    .line 87
    .line 88
    invoke-static {v12, v9}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_a

    .line 92
    .line 93
    :cond_2
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-nez v0, :cond_3

    .line 98
    .line 99
    :goto_0
    move-object/from16 v12, v17

    .line 100
    .line 101
    :goto_1
    const/4 v9, 0x2

    .line 102
    goto/16 :goto_5

    .line 103
    .line 104
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    sparse-switch v9, :sswitch_data_0

    .line 109
    .line 110
    .line 111
    :goto_2
    const/4 v9, -0x1

    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :sswitch_0
    const-string v9, "10"

    .line 115
    .line 116
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-nez v9, :cond_4

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    const/16 v9, 0xa

    .line 124
    .line 125
    goto/16 :goto_3

    .line 126
    .line 127
    :sswitch_1
    const-string v9, "09"

    .line 128
    .line 129
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-nez v9, :cond_5

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    const/16 v9, 0x9

    .line 137
    .line 138
    goto/16 :goto_3

    .line 139
    .line 140
    :sswitch_2
    const-string v9, "08"

    .line 141
    .line 142
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    if-nez v9, :cond_6

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_6
    const/16 v9, 0x8

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :sswitch_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-nez v9, :cond_7

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_7
    const/4 v9, 0x7

    .line 160
    goto :goto_3

    .line 161
    :sswitch_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-nez v9, :cond_8

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_8
    const/4 v9, 0x6

    .line 169
    goto :goto_3

    .line 170
    :sswitch_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    if-nez v9, :cond_9

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_9
    const/4 v9, 0x5

    .line 178
    goto :goto_3

    .line 179
    :sswitch_6
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    if-nez v9, :cond_a

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_a
    const/4 v9, 0x4

    .line 187
    goto :goto_3

    .line 188
    :sswitch_7
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    if-nez v9, :cond_b

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_b
    const/4 v9, 0x3

    .line 196
    goto :goto_3

    .line 197
    :sswitch_8
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    if-nez v9, :cond_c

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_c
    const/4 v9, 0x2

    .line 205
    goto :goto_3

    .line 206
    :sswitch_9
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    if-nez v9, :cond_d

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_d
    const/4 v9, 0x1

    .line 214
    goto :goto_3

    .line 215
    :sswitch_a
    const-string v9, "00"

    .line 216
    .line 217
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    if-nez v9, :cond_e

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_e
    const/4 v9, 0x0

    .line 225
    :goto_3
    packed-switch v9, :pswitch_data_0

    .line 226
    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :pswitch_0
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    :goto_4
    move-object v12, v9

    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :pswitch_1
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    goto :goto_4

    .line 242
    :pswitch_2
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    goto :goto_4

    .line 247
    :pswitch_3
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    goto :goto_4

    .line 252
    :pswitch_4
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v9

    .line 256
    goto :goto_4

    .line 257
    :pswitch_5
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    goto :goto_4

    .line 262
    :pswitch_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    goto :goto_4

    .line 267
    :pswitch_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    goto :goto_4

    .line 272
    :pswitch_8
    const/4 v9, 0x4

    .line 273
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v12

    .line 277
    goto/16 :goto_1

    .line 278
    .line 279
    :pswitch_9
    const/4 v9, 0x2

    .line 280
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object v12

    .line 284
    goto :goto_5

    .line 285
    :pswitch_a
    const/4 v9, 0x2

    .line 286
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object v12

    .line 290
    :goto_5
    if-nez v12, :cond_f

    .line 291
    .line 292
    const-string v1, "Unknown Dolby Vision profile string: "

    .line 293
    .line 294
    invoke-static {v1, v0}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_a

    .line 298
    .line 299
    :cond_f
    aget-object v0, v14, v9

    .line 300
    .line 301
    if-nez v0, :cond_10

    .line 302
    .line 303
    :goto_6
    move-object/from16 v1, v17

    .line 304
    .line 305
    goto/16 :goto_9

    .line 306
    .line 307
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 308
    .line 309
    .line 310
    move-result v9

    .line 311
    sparse-switch v9, :sswitch_data_1

    .line 312
    .line 313
    .line 314
    :goto_7
    const/4 v9, -0x1

    .line 315
    goto/16 :goto_8

    .line 316
    .line 317
    :sswitch_b
    const-string v1, "13"

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-nez v1, :cond_11

    .line 324
    .line 325
    goto :goto_7

    .line 326
    :cond_11
    const/16 v9, 0xc

    .line 327
    .line 328
    goto/16 :goto_8

    .line 329
    .line 330
    :sswitch_c
    const-string v1, "12"

    .line 331
    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-nez v1, :cond_12

    .line 337
    .line 338
    goto :goto_7

    .line 339
    :cond_12
    const/16 v9, 0xb

    .line 340
    .line 341
    goto/16 :goto_8

    .line 342
    .line 343
    :sswitch_d
    const-string v1, "11"

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-nez v1, :cond_13

    .line 350
    .line 351
    goto :goto_7

    .line 352
    :cond_13
    const/16 v9, 0xa

    .line 353
    .line 354
    goto/16 :goto_8

    .line 355
    .line 356
    :sswitch_e
    const-string v1, "10"

    .line 357
    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-nez v1, :cond_14

    .line 363
    .line 364
    goto :goto_7

    .line 365
    :cond_14
    const/16 v9, 0x9

    .line 366
    .line 367
    goto/16 :goto_8

    .line 368
    .line 369
    :sswitch_f
    const-string v1, "09"

    .line 370
    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    if-nez v1, :cond_15

    .line 376
    .line 377
    goto :goto_7

    .line 378
    :cond_15
    const/16 v9, 0x8

    .line 379
    .line 380
    goto :goto_8

    .line 381
    :sswitch_10
    const-string v1, "08"

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-nez v1, :cond_16

    .line 388
    .line 389
    goto :goto_7

    .line 390
    :cond_16
    const/4 v9, 0x7

    .line 391
    goto :goto_8

    .line 392
    :sswitch_11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    if-nez v1, :cond_17

    .line 397
    .line 398
    goto :goto_7

    .line 399
    :cond_17
    const/4 v9, 0x6

    .line 400
    goto :goto_8

    .line 401
    :sswitch_12
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-nez v1, :cond_18

    .line 406
    .line 407
    goto :goto_7

    .line 408
    :cond_18
    const/4 v9, 0x5

    .line 409
    goto :goto_8

    .line 410
    :sswitch_13
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-nez v1, :cond_19

    .line 415
    .line 416
    goto :goto_7

    .line 417
    :cond_19
    const/4 v9, 0x4

    .line 418
    goto :goto_8

    .line 419
    :sswitch_14
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    if-nez v1, :cond_1a

    .line 424
    .line 425
    goto :goto_7

    .line 426
    :cond_1a
    const/4 v9, 0x3

    .line 427
    goto :goto_8

    .line 428
    :sswitch_15
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    if-nez v1, :cond_1b

    .line 433
    .line 434
    goto :goto_7

    .line 435
    :cond_1b
    const/4 v9, 0x2

    .line 436
    goto :goto_8

    .line 437
    :sswitch_16
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    if-nez v1, :cond_1c

    .line 442
    .line 443
    goto/16 :goto_7

    .line 444
    .line 445
    :cond_1c
    const/4 v9, 0x1

    .line 446
    goto :goto_8

    .line 447
    :sswitch_17
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    if-nez v1, :cond_1d

    .line 452
    .line 453
    goto/16 :goto_7

    .line 454
    .line 455
    :cond_1d
    const/4 v9, 0x0

    .line 456
    :goto_8
    packed-switch v9, :pswitch_data_1

    .line 457
    .line 458
    .line 459
    goto/16 :goto_6

    .line 460
    .line 461
    :pswitch_b
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    goto :goto_9

    .line 466
    :pswitch_c
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    goto :goto_9

    .line 471
    :pswitch_d
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    goto :goto_9

    .line 476
    :pswitch_e
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    goto :goto_9

    .line 481
    :pswitch_f
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    goto :goto_9

    .line 486
    :pswitch_10
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    goto :goto_9

    .line 491
    :pswitch_11
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    goto :goto_9

    .line 496
    :pswitch_12
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    goto :goto_9

    .line 501
    :pswitch_13
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    goto :goto_9

    .line 506
    :pswitch_14
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    goto :goto_9

    .line 511
    :pswitch_15
    const/4 v1, 0x4

    .line 512
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    goto :goto_9

    .line 517
    :pswitch_16
    const/4 v1, 0x2

    .line 518
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    goto :goto_9

    .line 523
    :pswitch_17
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    :goto_9
    if-nez v1, :cond_1e

    .line 528
    .line 529
    const-string v1, "Unknown Dolby Vision level string: "

    .line 530
    .line 531
    invoke-static {v1, v0}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    goto :goto_a

    .line 535
    :cond_1e
    new-instance v0, Landroid/util/Pair;

    .line 536
    .line 537
    invoke-direct {v0, v12, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    move-object/from16 v17, v0

    .line 541
    .line 542
    :goto_a
    return-object v17

    .line 543
    :cond_1f
    const/4 v1, 0x0

    .line 544
    aget-object v2, v14, v1

    .line 545
    .line 546
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    .line 548
    .line 549
    const/16 v1, 0x14

    .line 550
    .line 551
    const/high16 v3, 0x40000

    .line 552
    .line 553
    const/high16 v4, 0x100000

    .line 554
    .line 555
    const/high16 v5, 0x400000

    .line 556
    .line 557
    const/high16 v6, 0x20000

    .line 558
    .line 559
    const/high16 v7, 0x80000

    .line 560
    .line 561
    const/high16 v12, 0x200000

    .line 562
    .line 563
    const/16 v25, 0x4000

    .line 564
    .line 565
    const/high16 v26, 0x10000

    .line 566
    .line 567
    const v27, 0x8000

    .line 568
    .line 569
    .line 570
    const/16 v28, 0x2000

    .line 571
    .line 572
    iget-object v0, v0, Lr1/p;->E:Lr1/g;

    .line 573
    .line 574
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 575
    .line 576
    .line 577
    move-result v29

    .line 578
    sparse-switch v29, :sswitch_data_2

    .line 579
    .line 580
    .line 581
    :goto_b
    const/4 v2, -0x1

    .line 582
    goto/16 :goto_c

    .line 583
    .line 584
    :sswitch_18
    const-string v13, "vvi1"

    .line 585
    .line 586
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v2

    .line 590
    if-nez v2, :cond_20

    .line 591
    .line 592
    goto :goto_b

    .line 593
    :cond_20
    const/16 v2, 0xc

    .line 594
    .line 595
    goto/16 :goto_c

    .line 596
    .line 597
    :sswitch_19
    const-string v13, "vvc1"

    .line 598
    .line 599
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    move-result v2

    .line 603
    if-nez v2, :cond_21

    .line 604
    .line 605
    goto :goto_b

    .line 606
    :cond_21
    const/16 v2, 0xb

    .line 607
    .line 608
    goto/16 :goto_c

    .line 609
    .line 610
    :sswitch_1a
    const-string v13, "vp09"

    .line 611
    .line 612
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result v2

    .line 616
    if-nez v2, :cond_22

    .line 617
    .line 618
    goto :goto_b

    .line 619
    :cond_22
    const/16 v2, 0xa

    .line 620
    .line 621
    goto/16 :goto_c

    .line 622
    .line 623
    :sswitch_1b
    const-string v13, "s263"

    .line 624
    .line 625
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    move-result v2

    .line 629
    if-nez v2, :cond_23

    .line 630
    .line 631
    goto :goto_b

    .line 632
    :cond_23
    const/16 v2, 0x9

    .line 633
    .line 634
    goto/16 :goto_c

    .line 635
    .line 636
    :sswitch_1c
    const-string v13, "mp4a"

    .line 637
    .line 638
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result v2

    .line 642
    if-nez v2, :cond_24

    .line 643
    .line 644
    goto :goto_b

    .line 645
    :cond_24
    const/16 v2, 0x8

    .line 646
    .line 647
    goto/16 :goto_c

    .line 648
    .line 649
    :sswitch_1d
    const-string v13, "iamf"

    .line 650
    .line 651
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    move-result v2

    .line 655
    if-nez v2, :cond_25

    .line 656
    .line 657
    goto :goto_b

    .line 658
    :cond_25
    const/4 v2, 0x7

    .line 659
    goto :goto_c

    .line 660
    :sswitch_1e
    const-string v13, "hvc1"

    .line 661
    .line 662
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result v2

    .line 666
    if-nez v2, :cond_26

    .line 667
    .line 668
    goto :goto_b

    .line 669
    :cond_26
    const/4 v2, 0x6

    .line 670
    goto :goto_c

    .line 671
    :sswitch_1f
    const-string v13, "hev1"

    .line 672
    .line 673
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    move-result v2

    .line 677
    if-nez v2, :cond_27

    .line 678
    .line 679
    goto :goto_b

    .line 680
    :cond_27
    const/4 v2, 0x5

    .line 681
    goto :goto_c

    .line 682
    :sswitch_20
    const-string v13, "avc2"

    .line 683
    .line 684
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result v2

    .line 688
    if-nez v2, :cond_28

    .line 689
    .line 690
    goto :goto_b

    .line 691
    :cond_28
    const/4 v2, 0x4

    .line 692
    goto :goto_c

    .line 693
    :sswitch_21
    const-string v13, "avc1"

    .line 694
    .line 695
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 696
    .line 697
    .line 698
    move-result v2

    .line 699
    if-nez v2, :cond_29

    .line 700
    .line 701
    goto :goto_b

    .line 702
    :cond_29
    const/4 v2, 0x3

    .line 703
    goto :goto_c

    .line 704
    :sswitch_22
    const-string v13, "av01"

    .line 705
    .line 706
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    move-result v2

    .line 710
    if-nez v2, :cond_2a

    .line 711
    .line 712
    goto/16 :goto_b

    .line 713
    .line 714
    :cond_2a
    const/4 v2, 0x2

    .line 715
    goto :goto_c

    .line 716
    :sswitch_23
    const-string v13, "apv1"

    .line 717
    .line 718
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    move-result v2

    .line 722
    if-nez v2, :cond_2b

    .line 723
    .line 724
    goto/16 :goto_b

    .line 725
    .line 726
    :cond_2b
    const/4 v2, 0x1

    .line 727
    goto :goto_c

    .line 728
    :sswitch_24
    const-string v13, "ac-4"

    .line 729
    .line 730
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    move-result v2

    .line 734
    if-nez v2, :cond_2c

    .line 735
    .line 736
    goto/16 :goto_b

    .line 737
    .line 738
    :cond_2c
    const/4 v2, 0x0

    .line 739
    :goto_c
    packed-switch v2, :pswitch_data_2

    .line 740
    .line 741
    .line 742
    return-object v17

    .line 743
    :pswitch_18
    array-length v1, v14

    .line 744
    const-string v2, "Ignoring malformed VVC codec string: "

    .line 745
    .line 746
    const/4 v13, 0x3

    .line 747
    if-ge v1, v13, :cond_2d

    .line 748
    .line 749
    invoke-static {v2, v9}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    goto/16 :goto_13

    .line 753
    .line 754
    :cond_2d
    :try_start_0
    aget-object v1, v14, v10

    .line 755
    .line 756
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 757
    .line 758
    .line 759
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    if-ne v1, v10, :cond_30

    .line 761
    .line 762
    if-eqz v0, :cond_2e

    .line 763
    .line 764
    iget v1, v0, Lr1/g;->c:I

    .line 765
    .line 766
    const/4 v2, 0x6

    .line 767
    if-ne v1, v2, :cond_2e

    .line 768
    .line 769
    const/16 v0, 0x1000

    .line 770
    .line 771
    :goto_d
    const/4 v1, 0x2

    .line 772
    goto :goto_e

    .line 773
    :cond_2e
    if-eqz v0, :cond_2f

    .line 774
    .line 775
    iget v0, v0, Lr1/g;->e:I

    .line 776
    .line 777
    if-ne v0, v11, :cond_2f

    .line 778
    .line 779
    const/4 v0, 0x1

    .line 780
    goto :goto_d

    .line 781
    :cond_2f
    const/4 v0, 0x2

    .line 782
    goto :goto_d

    .line 783
    :cond_30
    const/16 v0, 0x41

    .line 784
    .line 785
    if-ne v1, v0, :cond_4a

    .line 786
    .line 787
    const/4 v0, 0x4

    .line 788
    goto :goto_d

    .line 789
    :goto_e
    aget-object v2, v14, v1

    .line 790
    .line 791
    if-nez v2, :cond_31

    .line 792
    .line 793
    :goto_f
    move-object/from16 v1, v17

    .line 794
    .line 795
    goto/16 :goto_12

    .line 796
    .line 797
    :cond_31
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 798
    .line 799
    .line 800
    move-result v1

    .line 801
    sparse-switch v1, :sswitch_data_3

    .line 802
    .line 803
    .line 804
    :goto_10
    const/4 v9, -0x1

    .line 805
    goto/16 :goto_11

    .line 806
    .line 807
    :sswitch_25
    const-string v1, "L144"

    .line 808
    .line 809
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    move-result v1

    .line 813
    if-nez v1, :cond_32

    .line 814
    .line 815
    goto :goto_10

    .line 816
    :cond_32
    const/16 v9, 0x16

    .line 817
    .line 818
    goto/16 :goto_11

    .line 819
    .line 820
    :sswitch_26
    const-string v1, "L128"

    .line 821
    .line 822
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 823
    .line 824
    .line 825
    move-result v1

    .line 826
    if-nez v1, :cond_33

    .line 827
    .line 828
    goto :goto_10

    .line 829
    :cond_33
    const/16 v9, 0x15

    .line 830
    .line 831
    goto/16 :goto_11

    .line 832
    .line 833
    :sswitch_27
    const-string v1, "L112"

    .line 834
    .line 835
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 836
    .line 837
    .line 838
    move-result v1

    .line 839
    if-nez v1, :cond_34

    .line 840
    .line 841
    goto :goto_10

    .line 842
    :cond_34
    const/16 v9, 0x14

    .line 843
    .line 844
    goto/16 :goto_11

    .line 845
    .line 846
    :sswitch_28
    const-string v1, "H144"

    .line 847
    .line 848
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    move-result v1

    .line 852
    if-nez v1, :cond_35

    .line 853
    .line 854
    goto :goto_10

    .line 855
    :cond_35
    const/16 v9, 0x13

    .line 856
    .line 857
    goto/16 :goto_11

    .line 858
    .line 859
    :sswitch_29
    const-string v1, "H128"

    .line 860
    .line 861
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 862
    .line 863
    .line 864
    move-result v1

    .line 865
    if-nez v1, :cond_36

    .line 866
    .line 867
    goto :goto_10

    .line 868
    :cond_36
    const/16 v9, 0x12

    .line 869
    .line 870
    goto/16 :goto_11

    .line 871
    .line 872
    :sswitch_2a
    const-string v1, "H112"

    .line 873
    .line 874
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 875
    .line 876
    .line 877
    move-result v1

    .line 878
    if-nez v1, :cond_37

    .line 879
    .line 880
    goto :goto_10

    .line 881
    :cond_37
    const/16 v9, 0x11

    .line 882
    .line 883
    goto/16 :goto_11

    .line 884
    .line 885
    :sswitch_2b
    const-string v1, "L96"

    .line 886
    .line 887
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 888
    .line 889
    .line 890
    move-result v1

    .line 891
    if-nez v1, :cond_38

    .line 892
    .line 893
    goto :goto_10

    .line 894
    :cond_38
    const/16 v9, 0x10

    .line 895
    .line 896
    goto/16 :goto_11

    .line 897
    .line 898
    :sswitch_2c
    const-string v1, "L86"

    .line 899
    .line 900
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 901
    .line 902
    .line 903
    move-result v1

    .line 904
    if-nez v1, :cond_39

    .line 905
    .line 906
    goto :goto_10

    .line 907
    :cond_39
    const/16 v9, 0xf

    .line 908
    .line 909
    goto/16 :goto_11

    .line 910
    .line 911
    :sswitch_2d
    const-string v1, "L83"

    .line 912
    .line 913
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 914
    .line 915
    .line 916
    move-result v1

    .line 917
    if-nez v1, :cond_3a

    .line 918
    .line 919
    goto :goto_10

    .line 920
    :cond_3a
    const/16 v9, 0xe

    .line 921
    .line 922
    goto/16 :goto_11

    .line 923
    .line 924
    :sswitch_2e
    const-string v1, "L80"

    .line 925
    .line 926
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 927
    .line 928
    .line 929
    move-result v1

    .line 930
    if-nez v1, :cond_3b

    .line 931
    .line 932
    goto/16 :goto_10

    .line 933
    .line 934
    :cond_3b
    const/16 v9, 0xd

    .line 935
    .line 936
    goto/16 :goto_11

    .line 937
    .line 938
    :sswitch_2f
    const-string v1, "L67"

    .line 939
    .line 940
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 941
    .line 942
    .line 943
    move-result v1

    .line 944
    if-nez v1, :cond_3c

    .line 945
    .line 946
    goto/16 :goto_10

    .line 947
    .line 948
    :cond_3c
    const/16 v9, 0xc

    .line 949
    .line 950
    goto/16 :goto_11

    .line 951
    .line 952
    :sswitch_30
    const-string v1, "L64"

    .line 953
    .line 954
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 955
    .line 956
    .line 957
    move-result v1

    .line 958
    if-nez v1, :cond_3d

    .line 959
    .line 960
    goto/16 :goto_10

    .line 961
    .line 962
    :cond_3d
    const/16 v9, 0xb

    .line 963
    .line 964
    goto/16 :goto_11

    .line 965
    .line 966
    :sswitch_31
    const-string v1, "L51"

    .line 967
    .line 968
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 969
    .line 970
    .line 971
    move-result v1

    .line 972
    if-nez v1, :cond_3e

    .line 973
    .line 974
    goto/16 :goto_10

    .line 975
    .line 976
    :cond_3e
    const/16 v9, 0xa

    .line 977
    .line 978
    goto/16 :goto_11

    .line 979
    .line 980
    :sswitch_32
    const-string v1, "L48"

    .line 981
    .line 982
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 983
    .line 984
    .line 985
    move-result v1

    .line 986
    if-nez v1, :cond_3f

    .line 987
    .line 988
    goto/16 :goto_10

    .line 989
    .line 990
    :cond_3f
    const/16 v9, 0x9

    .line 991
    .line 992
    goto/16 :goto_11

    .line 993
    .line 994
    :sswitch_33
    const-string v1, "L35"

    .line 995
    .line 996
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 997
    .line 998
    .line 999
    move-result v1

    .line 1000
    if-nez v1, :cond_40

    .line 1001
    .line 1002
    goto/16 :goto_10

    .line 1003
    .line 1004
    :cond_40
    const/16 v9, 0x8

    .line 1005
    .line 1006
    goto/16 :goto_11

    .line 1007
    .line 1008
    :sswitch_34
    const-string v1, "L32"

    .line 1009
    .line 1010
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1011
    .line 1012
    .line 1013
    move-result v1

    .line 1014
    if-nez v1, :cond_41

    .line 1015
    .line 1016
    goto/16 :goto_10

    .line 1017
    .line 1018
    :cond_41
    const/4 v9, 0x7

    .line 1019
    goto :goto_11

    .line 1020
    :sswitch_35
    const-string v1, "L16"

    .line 1021
    .line 1022
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1023
    .line 1024
    .line 1025
    move-result v1

    .line 1026
    if-nez v1, :cond_42

    .line 1027
    .line 1028
    goto/16 :goto_10

    .line 1029
    .line 1030
    :cond_42
    const/4 v9, 0x6

    .line 1031
    goto :goto_11

    .line 1032
    :sswitch_36
    const-string v1, "H96"

    .line 1033
    .line 1034
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1035
    .line 1036
    .line 1037
    move-result v1

    .line 1038
    if-nez v1, :cond_43

    .line 1039
    .line 1040
    goto/16 :goto_10

    .line 1041
    .line 1042
    :cond_43
    const/4 v9, 0x5

    .line 1043
    goto :goto_11

    .line 1044
    :sswitch_37
    const-string v1, "H86"

    .line 1045
    .line 1046
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1047
    .line 1048
    .line 1049
    move-result v1

    .line 1050
    if-nez v1, :cond_44

    .line 1051
    .line 1052
    goto/16 :goto_10

    .line 1053
    .line 1054
    :cond_44
    const/4 v9, 0x4

    .line 1055
    goto :goto_11

    .line 1056
    :sswitch_38
    const-string v1, "H83"

    .line 1057
    .line 1058
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1059
    .line 1060
    .line 1061
    move-result v1

    .line 1062
    if-nez v1, :cond_45

    .line 1063
    .line 1064
    goto/16 :goto_10

    .line 1065
    .line 1066
    :cond_45
    const/4 v9, 0x3

    .line 1067
    goto :goto_11

    .line 1068
    :sswitch_39
    const-string v1, "H80"

    .line 1069
    .line 1070
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1071
    .line 1072
    .line 1073
    move-result v1

    .line 1074
    if-nez v1, :cond_46

    .line 1075
    .line 1076
    goto/16 :goto_10

    .line 1077
    .line 1078
    :cond_46
    const/4 v9, 0x2

    .line 1079
    goto :goto_11

    .line 1080
    :sswitch_3a
    const-string v1, "H67"

    .line 1081
    .line 1082
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1083
    .line 1084
    .line 1085
    move-result v1

    .line 1086
    if-nez v1, :cond_47

    .line 1087
    .line 1088
    goto/16 :goto_10

    .line 1089
    .line 1090
    :cond_47
    const/4 v9, 0x1

    .line 1091
    goto :goto_11

    .line 1092
    :sswitch_3b
    const-string v1, "H64"

    .line 1093
    .line 1094
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1095
    .line 1096
    .line 1097
    move-result v1

    .line 1098
    if-nez v1, :cond_48

    .line 1099
    .line 1100
    goto/16 :goto_10

    .line 1101
    .line 1102
    :cond_48
    const/4 v9, 0x0

    .line 1103
    :goto_11
    packed-switch v9, :pswitch_data_3

    .line 1104
    .line 1105
    .line 1106
    goto/16 :goto_f

    .line 1107
    .line 1108
    :pswitch_19
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v1

    .line 1112
    goto/16 :goto_12

    .line 1113
    .line 1114
    :pswitch_1a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v1

    .line 1118
    goto/16 :goto_12

    .line 1119
    .line 1120
    :pswitch_1b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v1

    .line 1124
    goto/16 :goto_12

    .line 1125
    .line 1126
    :pswitch_1c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v1

    .line 1130
    goto/16 :goto_12

    .line 1131
    .line 1132
    :pswitch_1d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v1

    .line 1136
    goto/16 :goto_12

    .line 1137
    .line 1138
    :pswitch_1e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v1

    .line 1142
    goto :goto_12

    .line 1143
    :pswitch_1f
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v1

    .line 1147
    goto :goto_12

    .line 1148
    :pswitch_20
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v1

    .line 1152
    goto :goto_12

    .line 1153
    :pswitch_21
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v1

    .line 1157
    goto :goto_12

    .line 1158
    :pswitch_22
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v1

    .line 1162
    goto :goto_12

    .line 1163
    :pswitch_23
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v1

    .line 1167
    goto :goto_12

    .line 1168
    :pswitch_24
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v1

    .line 1172
    goto :goto_12

    .line 1173
    :pswitch_25
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v1

    .line 1177
    goto :goto_12

    .line 1178
    :pswitch_26
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v1

    .line 1182
    goto :goto_12

    .line 1183
    :pswitch_27
    const/4 v1, 0x4

    .line 1184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v1

    .line 1188
    goto :goto_12

    .line 1189
    :pswitch_28
    const/4 v1, 0x2

    .line 1190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v1

    .line 1194
    goto :goto_12

    .line 1195
    :pswitch_29
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v1

    .line 1199
    goto :goto_12

    .line 1200
    :pswitch_2a
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v1

    .line 1204
    goto :goto_12

    .line 1205
    :pswitch_2b
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v1

    .line 1209
    goto :goto_12

    .line 1210
    :pswitch_2c
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v1

    .line 1214
    goto :goto_12

    .line 1215
    :pswitch_2d
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v1

    .line 1219
    goto :goto_12

    .line 1220
    :pswitch_2e
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v1

    .line 1224
    goto :goto_12

    .line 1225
    :pswitch_2f
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v1

    .line 1229
    :goto_12
    if-nez v1, :cond_49

    .line 1230
    .line 1231
    const-string v0, "Unknown VVC level string: "

    .line 1232
    .line 1233
    invoke-static {v0, v2}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    .line 1235
    .line 1236
    goto :goto_13

    .line 1237
    :cond_49
    new-instance v2, Landroid/util/Pair;

    .line 1238
    .line 1239
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v0

    .line 1243
    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1244
    .line 1245
    .line 1246
    move-object/from16 v17, v2

    .line 1247
    .line 1248
    goto :goto_13

    .line 1249
    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1250
    .line 1251
    const-string v1, "Unknown VVC profile IDC: "

    .line 1252
    .line 1253
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1254
    .line 1255
    .line 1256
    aget-object v1, v14, v10

    .line 1257
    .line 1258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    .line 1260
    .line 1261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v0

    .line 1265
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 1266
    .line 1267
    .line 1268
    goto :goto_13

    .line 1269
    :catch_0
    invoke-static {v2, v9}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    .line 1271
    .line 1272
    :goto_13
    return-object v17

    .line 1273
    :pswitch_30
    array-length v0, v14

    .line 1274
    const-string v2, "Ignoring malformed VP9 codec string: "

    .line 1275
    .line 1276
    const/4 v3, 0x3

    .line 1277
    if-ge v0, v3, :cond_4b

    .line 1278
    .line 1279
    invoke-static {v2, v9}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    .line 1281
    .line 1282
    goto/16 :goto_17

    .line 1283
    .line 1284
    :cond_4b
    :try_start_1
    aget-object v0, v14, v10

    .line 1285
    .line 1286
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1287
    .line 1288
    .line 1289
    move-result v0

    .line 1290
    const/4 v3, 0x2

    .line 1291
    aget-object v4, v14, v3

    .line 1292
    .line 1293
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1294
    .line 1295
    .line 1296
    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1297
    if-eqz v0, :cond_4f

    .line 1298
    .line 1299
    if-eq v0, v10, :cond_4e

    .line 1300
    .line 1301
    if-eq v0, v3, :cond_4d

    .line 1302
    .line 1303
    const/4 v3, 0x3

    .line 1304
    if-eq v0, v3, :cond_4c

    .line 1305
    .line 1306
    const/4 v3, -0x1

    .line 1307
    :goto_14
    const/4 v4, -0x1

    .line 1308
    goto :goto_15

    .line 1309
    :cond_4c
    const/16 v3, 0x8

    .line 1310
    .line 1311
    goto :goto_14

    .line 1312
    :cond_4d
    const/4 v3, 0x4

    .line 1313
    goto :goto_14

    .line 1314
    :cond_4e
    const/4 v3, 0x2

    .line 1315
    goto :goto_14

    .line 1316
    :cond_4f
    const/4 v3, 0x1

    .line 1317
    goto :goto_14

    .line 1318
    :goto_15
    if-ne v3, v4, :cond_50

    .line 1319
    .line 1320
    const-string v1, "Unknown VP9 profile: "

    .line 1321
    .line 1322
    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 1323
    .line 1324
    .line 1325
    goto/16 :goto_17

    .line 1326
    .line 1327
    :cond_50
    const/16 v0, 0xa

    .line 1328
    .line 1329
    if-eq v2, v0, :cond_5a

    .line 1330
    .line 1331
    const/16 v0, 0xb

    .line 1332
    .line 1333
    if-eq v2, v0, :cond_59

    .line 1334
    .line 1335
    if-eq v2, v1, :cond_58

    .line 1336
    .line 1337
    const/16 v0, 0x15

    .line 1338
    .line 1339
    if-eq v2, v0, :cond_57

    .line 1340
    .line 1341
    const/16 v0, 0x1e

    .line 1342
    .line 1343
    if-eq v2, v0, :cond_56

    .line 1344
    .line 1345
    const/16 v0, 0x1f

    .line 1346
    .line 1347
    if-eq v2, v0, :cond_55

    .line 1348
    .line 1349
    const/16 v0, 0x28

    .line 1350
    .line 1351
    if-eq v2, v0, :cond_54

    .line 1352
    .line 1353
    const/16 v0, 0x29

    .line 1354
    .line 1355
    if-eq v2, v0, :cond_53

    .line 1356
    .line 1357
    const/16 v0, 0x32

    .line 1358
    .line 1359
    if-eq v2, v0, :cond_52

    .line 1360
    .line 1361
    const/16 v0, 0x33

    .line 1362
    .line 1363
    if-eq v2, v0, :cond_51

    .line 1364
    .line 1365
    packed-switch v2, :pswitch_data_4

    .line 1366
    .line 1367
    .line 1368
    const/4 v0, -0x1

    .line 1369
    const/4 v8, -0x1

    .line 1370
    goto :goto_16

    .line 1371
    :pswitch_31
    const/4 v0, -0x1

    .line 1372
    const/16 v8, 0x2000

    .line 1373
    .line 1374
    goto :goto_16

    .line 1375
    :pswitch_32
    const/4 v0, -0x1

    .line 1376
    const/16 v8, 0x1000

    .line 1377
    .line 1378
    goto :goto_16

    .line 1379
    :pswitch_33
    const/4 v0, -0x1

    .line 1380
    const/16 v8, 0x800

    .line 1381
    .line 1382
    goto :goto_16

    .line 1383
    :cond_51
    const/4 v0, -0x1

    .line 1384
    const/16 v8, 0x200

    .line 1385
    .line 1386
    goto :goto_16

    .line 1387
    :cond_52
    const/4 v0, -0x1

    .line 1388
    const/16 v8, 0x100

    .line 1389
    .line 1390
    goto :goto_16

    .line 1391
    :cond_53
    const/4 v0, -0x1

    .line 1392
    const/16 v8, 0x80

    .line 1393
    .line 1394
    goto :goto_16

    .line 1395
    :cond_54
    const/4 v0, -0x1

    .line 1396
    const/16 v8, 0x40

    .line 1397
    .line 1398
    goto :goto_16

    .line 1399
    :cond_55
    const/4 v0, -0x1

    .line 1400
    const/16 v8, 0x20

    .line 1401
    .line 1402
    goto :goto_16

    .line 1403
    :cond_56
    const/4 v0, -0x1

    .line 1404
    goto :goto_16

    .line 1405
    :cond_57
    const/4 v0, -0x1

    .line 1406
    const/16 v8, 0x8

    .line 1407
    .line 1408
    goto :goto_16

    .line 1409
    :cond_58
    const/4 v0, -0x1

    .line 1410
    const/4 v8, 0x4

    .line 1411
    goto :goto_16

    .line 1412
    :cond_59
    const/4 v0, -0x1

    .line 1413
    const/4 v8, 0x2

    .line 1414
    goto :goto_16

    .line 1415
    :cond_5a
    const/4 v0, -0x1

    .line 1416
    const/4 v8, 0x1

    .line 1417
    :goto_16
    if-ne v8, v0, :cond_5b

    .line 1418
    .line 1419
    const-string v0, "Unknown VP9 level: "

    .line 1420
    .line 1421
    invoke-static {v2, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 1422
    .line 1423
    .line 1424
    goto :goto_17

    .line 1425
    :cond_5b
    new-instance v0, Landroid/util/Pair;

    .line 1426
    .line 1427
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v1

    .line 1431
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v2

    .line 1435
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1436
    .line 1437
    .line 1438
    move-object/from16 v17, v0

    .line 1439
    .line 1440
    goto :goto_17

    .line 1441
    :catch_1
    invoke-static {v2, v9}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    .line 1443
    .line 1444
    :goto_17
    return-object v17

    .line 1445
    :pswitch_34
    new-instance v0, Landroid/util/Pair;

    .line 1446
    .line 1447
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v1

    .line 1451
    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1452
    .line 1453
    .line 1454
    array-length v1, v14

    .line 1455
    const-string v2, "Ignoring malformed H263 codec string: "

    .line 1456
    .line 1457
    const/4 v3, 0x3

    .line 1458
    if-ge v1, v3, :cond_5c

    .line 1459
    .line 1460
    invoke-static {v2, v9}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    .line 1462
    .line 1463
    goto :goto_18

    .line 1464
    :cond_5c
    :try_start_2
    aget-object v1, v14, v10

    .line 1465
    .line 1466
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1467
    .line 1468
    .line 1469
    move-result v1

    .line 1470
    const/4 v3, 0x2

    .line 1471
    aget-object v3, v14, v3

    .line 1472
    .line 1473
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1474
    .line 1475
    .line 1476
    move-result v3

    .line 1477
    new-instance v4, Landroid/util/Pair;

    .line 1478
    .line 1479
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v1

    .line 1483
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v3

    .line 1487
    invoke-direct {v4, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1488
    .line 1489
    .line 1490
    move-object v0, v4

    .line 1491
    goto :goto_18

    .line 1492
    :catch_2
    invoke-static {v2, v9}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    .line 1494
    .line 1495
    :goto_18
    return-object v0

    .line 1496
    :pswitch_35
    array-length v0, v14

    .line 1497
    const-string v2, "Ignoring malformed MP4A codec string: "

    .line 1498
    .line 1499
    const/4 v3, 0x3

    .line 1500
    if-eq v0, v3, :cond_5d

    .line 1501
    .line 1502
    invoke-static {v2, v9}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    .line 1504
    .line 1505
    goto/16 :goto_1a

    .line 1506
    .line 1507
    :cond_5d
    :try_start_3
    aget-object v0, v14, v10

    .line 1508
    .line 1509
    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 1510
    .line 1511
    .line 1512
    move-result v0

    .line 1513
    invoke-static {v0}, Lr1/e0;->d(I)Ljava/lang/String;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v0

    .line 1517
    const-string v3, "audio/mp4a-latm"

    .line 1518
    .line 1519
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1520
    .line 1521
    .line 1522
    move-result v0

    .line 1523
    if-eqz v0, :cond_64

    .line 1524
    .line 1525
    const/4 v0, 0x2

    .line 1526
    aget-object v3, v14, v0

    .line 1527
    .line 1528
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1529
    .line 1530
    .line 1531
    move-result v0

    .line 1532
    const/16 v3, 0x11

    .line 1533
    .line 1534
    if-eq v0, v3, :cond_63

    .line 1535
    .line 1536
    if-eq v0, v1, :cond_62

    .line 1537
    .line 1538
    const/16 v1, 0x17

    .line 1539
    .line 1540
    if-eq v0, v1, :cond_61

    .line 1541
    .line 1542
    const/16 v1, 0x1d

    .line 1543
    .line 1544
    if-eq v0, v1, :cond_60

    .line 1545
    .line 1546
    const/16 v1, 0x27

    .line 1547
    .line 1548
    if-eq v0, v1, :cond_5f

    .line 1549
    .line 1550
    const/16 v1, 0x2a

    .line 1551
    .line 1552
    if-eq v0, v1, :cond_5e

    .line 1553
    .line 1554
    packed-switch v0, :pswitch_data_5

    .line 1555
    .line 1556
    .line 1557
    const/4 v0, -0x1

    .line 1558
    const/4 v14, -0x1

    .line 1559
    goto :goto_19

    .line 1560
    :pswitch_36
    const/4 v0, -0x1

    .line 1561
    const/4 v14, 0x6

    .line 1562
    goto :goto_19

    .line 1563
    :pswitch_37
    const/4 v0, -0x1

    .line 1564
    const/4 v14, 0x5

    .line 1565
    goto :goto_19

    .line 1566
    :pswitch_38
    const/4 v0, -0x1

    .line 1567
    const/4 v14, 0x4

    .line 1568
    goto :goto_19

    .line 1569
    :pswitch_39
    const/4 v0, -0x1

    .line 1570
    const/4 v14, 0x3

    .line 1571
    goto :goto_19

    .line 1572
    :pswitch_3a
    const/4 v0, -0x1

    .line 1573
    const/4 v14, 0x2

    .line 1574
    goto :goto_19

    .line 1575
    :pswitch_3b
    const/4 v0, -0x1

    .line 1576
    const/4 v14, 0x1

    .line 1577
    goto :goto_19

    .line 1578
    :cond_5e
    const/4 v0, -0x1

    .line 1579
    const/16 v14, 0x2a

    .line 1580
    .line 1581
    goto :goto_19

    .line 1582
    :cond_5f
    const/4 v0, -0x1

    .line 1583
    const/16 v14, 0x27

    .line 1584
    .line 1585
    goto :goto_19

    .line 1586
    :cond_60
    const/4 v0, -0x1

    .line 1587
    const/16 v14, 0x1d

    .line 1588
    .line 1589
    goto :goto_19

    .line 1590
    :cond_61
    const/4 v0, -0x1

    .line 1591
    const/16 v14, 0x17

    .line 1592
    .line 1593
    goto :goto_19

    .line 1594
    :cond_62
    const/4 v0, -0x1

    .line 1595
    const/16 v14, 0x14

    .line 1596
    .line 1597
    goto :goto_19

    .line 1598
    :cond_63
    const/4 v0, -0x1

    .line 1599
    const/16 v14, 0x11

    .line 1600
    .line 1601
    :goto_19
    if-eq v14, v0, :cond_64

    .line 1602
    .line 1603
    new-instance v0, Landroid/util/Pair;

    .line 1604
    .line 1605
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v1

    .line 1609
    const/4 v3, 0x0

    .line 1610
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v3

    .line 1614
    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1615
    .line 1616
    .line 1617
    move-object/from16 v17, v0

    .line 1618
    .line 1619
    goto :goto_1a

    .line 1620
    :catch_3
    invoke-static {v2, v9}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    .line 1622
    .line 1623
    :cond_64
    :goto_1a
    return-object v17

    .line 1624
    :pswitch_3c
    array-length v0, v14

    .line 1625
    const/4 v1, 0x4

    .line 1626
    if-ge v0, v1, :cond_65

    .line 1627
    .line 1628
    const-string v0, "Ignoring malformed IAMF codec string: "

    .line 1629
    .line 1630
    invoke-static {v0, v9}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    .line 1632
    .line 1633
    goto/16 :goto_1e

    .line 1634
    .line 1635
    :cond_65
    :try_start_4
    aget-object v0, v14, v10

    .line 1636
    .line 1637
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1638
    .line 1639
    .line 1640
    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1641
    add-int/2addr v0, v8

    .line 1642
    shl-int v0, v10, v0

    .line 1643
    .line 1644
    const/4 v1, 0x3

    .line 1645
    aget-object v2, v14, v1

    .line 1646
    .line 1647
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1648
    .line 1649
    .line 1650
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 1651
    .line 1652
    .line 1653
    move-result v1

    .line 1654
    sparse-switch v1, :sswitch_data_4

    .line 1655
    .line 1656
    .line 1657
    :goto_1b
    const/16 v16, -0x1

    .line 1658
    .line 1659
    goto :goto_1c

    .line 1660
    :sswitch_3c
    const-string v1, "mp4a"

    .line 1661
    .line 1662
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1663
    .line 1664
    .line 1665
    move-result v1

    .line 1666
    if-nez v1, :cond_66

    .line 1667
    .line 1668
    goto :goto_1b

    .line 1669
    :cond_66
    const/16 v16, 0x3

    .line 1670
    .line 1671
    goto :goto_1c

    .line 1672
    :sswitch_3d
    const-string v1, "ipcm"

    .line 1673
    .line 1674
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1675
    .line 1676
    .line 1677
    move-result v1

    .line 1678
    if-nez v1, :cond_67

    .line 1679
    .line 1680
    goto :goto_1b

    .line 1681
    :cond_67
    const/16 v16, 0x2

    .line 1682
    .line 1683
    goto :goto_1c

    .line 1684
    :sswitch_3e
    const-string v1, "fLaC"

    .line 1685
    .line 1686
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1687
    .line 1688
    .line 1689
    move-result v1

    .line 1690
    if-nez v1, :cond_68

    .line 1691
    .line 1692
    goto :goto_1b

    .line 1693
    :cond_68
    const/16 v16, 0x1

    .line 1694
    .line 1695
    goto :goto_1c

    .line 1696
    :sswitch_3f
    const-string v1, "Opus"

    .line 1697
    .line 1698
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1699
    .line 1700
    .line 1701
    move-result v1

    .line 1702
    if-nez v1, :cond_69

    .line 1703
    .line 1704
    goto :goto_1b

    .line 1705
    :cond_69
    const/16 v16, 0x0

    .line 1706
    .line 1707
    :goto_1c
    packed-switch v16, :pswitch_data_6

    .line 1708
    .line 1709
    .line 1710
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1711
    .line 1712
    const-string v1, "Ignoring unknown codec identifier for IAMF auxiliary profile: "

    .line 1713
    .line 1714
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1715
    .line 1716
    .line 1717
    const/4 v1, 0x3

    .line 1718
    aget-object v1, v14, v1

    .line 1719
    .line 1720
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    .line 1722
    .line 1723
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1724
    .line 1725
    .line 1726
    move-result-object v0

    .line 1727
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 1728
    .line 1729
    .line 1730
    goto :goto_1e

    .line 1731
    :pswitch_3d
    const/4 v9, 0x2

    .line 1732
    goto :goto_1d

    .line 1733
    :pswitch_3e
    const/16 v9, 0x8

    .line 1734
    .line 1735
    goto :goto_1d

    .line 1736
    :pswitch_3f
    const/4 v9, 0x4

    .line 1737
    goto :goto_1d

    .line 1738
    :pswitch_40
    const/4 v9, 0x1

    .line 1739
    :goto_1d
    new-instance v1, Landroid/util/Pair;

    .line 1740
    .line 1741
    const/high16 v2, 0x1000000

    .line 1742
    .line 1743
    or-int/2addr v0, v2

    .line 1744
    or-int/2addr v0, v9

    .line 1745
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v0

    .line 1749
    const/4 v2, 0x0

    .line 1750
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v2

    .line 1754
    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1755
    .line 1756
    .line 1757
    move-object/from16 v17, v1

    .line 1758
    .line 1759
    goto :goto_1e

    .line 1760
    :catch_4
    move-exception v0

    .line 1761
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1762
    .line 1763
    const-string v2, "Ignoring malformed primary profile in IAMF codec string: "

    .line 1764
    .line 1765
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1766
    .line 1767
    .line 1768
    aget-object v2, v14, v10

    .line 1769
    .line 1770
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1771
    .line 1772
    .line 1773
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1774
    .line 1775
    .line 1776
    move-result-object v1

    .line 1777
    invoke-static {v1, v0}, Lu1/a;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1778
    .line 1779
    .line 1780
    :goto_1e
    return-object v17

    .line 1781
    :pswitch_41
    invoke-static {v9, v14, v0}, Lu1/c;->c(Ljava/lang/String;[Ljava/lang/String;Lr1/g;)Landroid/util/Pair;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v0

    .line 1785
    return-object v0

    .line 1786
    :pswitch_42
    array-length v0, v14

    .line 1787
    const-string v1, "Ignoring malformed AVC codec string: "

    .line 1788
    .line 1789
    const/4 v2, 0x2

    .line 1790
    if-ge v0, v2, :cond_6a

    .line 1791
    .line 1792
    invoke-static {v1, v9}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    .line 1794
    .line 1795
    goto/16 :goto_22

    .line 1796
    .line 1797
    :cond_6a
    :try_start_5
    aget-object v0, v14, v10

    .line 1798
    .line 1799
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1800
    .line 1801
    .line 1802
    move-result v0

    .line 1803
    const/4 v3, 0x6

    .line 1804
    if-ne v0, v3, :cond_6b

    .line 1805
    .line 1806
    aget-object v0, v14, v10

    .line 1807
    .line 1808
    const/4 v3, 0x0

    .line 1809
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v0

    .line 1813
    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 1814
    .line 1815
    .line 1816
    move-result v0

    .line 1817
    aget-object v2, v14, v10

    .line 1818
    .line 1819
    const/4 v3, 0x4

    .line 1820
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v2

    .line 1824
    invoke-static {v2, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 1825
    .line 1826
    .line 1827
    move-result v1

    .line 1828
    goto :goto_1f

    .line 1829
    :cond_6b
    array-length v0, v14

    .line 1830
    const/4 v2, 0x3

    .line 1831
    if-lt v0, v2, :cond_75

    .line 1832
    .line 1833
    aget-object v0, v14, v10

    .line 1834
    .line 1835
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1836
    .line 1837
    .line 1838
    move-result v0

    .line 1839
    const/4 v2, 0x2

    .line 1840
    aget-object v3, v14, v2

    .line 1841
    .line 1842
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1843
    .line 1844
    .line 1845
    move-result v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1846
    :goto_1f
    const/16 v2, 0x42

    .line 1847
    .line 1848
    if-eq v0, v2, :cond_72

    .line 1849
    .line 1850
    const/16 v2, 0x4d

    .line 1851
    .line 1852
    if-eq v0, v2, :cond_71

    .line 1853
    .line 1854
    const/16 v2, 0x58

    .line 1855
    .line 1856
    if-eq v0, v2, :cond_70

    .line 1857
    .line 1858
    const/16 v2, 0x64

    .line 1859
    .line 1860
    if-eq v0, v2, :cond_6f

    .line 1861
    .line 1862
    const/16 v2, 0x6e

    .line 1863
    .line 1864
    if-eq v0, v2, :cond_6e

    .line 1865
    .line 1866
    const/16 v2, 0x7a

    .line 1867
    .line 1868
    if-eq v0, v2, :cond_6d

    .line 1869
    .line 1870
    const/16 v2, 0xf4

    .line 1871
    .line 1872
    if-eq v0, v2, :cond_6c

    .line 1873
    .line 1874
    const/4 v2, -0x1

    .line 1875
    const/4 v12, -0x1

    .line 1876
    goto :goto_20

    .line 1877
    :cond_6c
    const/4 v2, -0x1

    .line 1878
    const/16 v12, 0x40

    .line 1879
    .line 1880
    goto :goto_20

    .line 1881
    :cond_6d
    const/4 v2, -0x1

    .line 1882
    const/16 v12, 0x20

    .line 1883
    .line 1884
    goto :goto_20

    .line 1885
    :cond_6e
    const/4 v2, -0x1

    .line 1886
    const/16 v12, 0x10

    .line 1887
    .line 1888
    goto :goto_20

    .line 1889
    :cond_6f
    const/4 v2, -0x1

    .line 1890
    const/16 v12, 0x8

    .line 1891
    .line 1892
    goto :goto_20

    .line 1893
    :cond_70
    const/4 v2, -0x1

    .line 1894
    const/4 v12, 0x4

    .line 1895
    goto :goto_20

    .line 1896
    :cond_71
    const/4 v2, -0x1

    .line 1897
    const/4 v12, 0x2

    .line 1898
    goto :goto_20

    .line 1899
    :cond_72
    const/4 v2, -0x1

    .line 1900
    const/4 v12, 0x1

    .line 1901
    :goto_20
    if-ne v12, v2, :cond_73

    .line 1902
    .line 1903
    const-string v1, "Unknown AVC profile: "

    .line 1904
    .line 1905
    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 1906
    .line 1907
    .line 1908
    goto/16 :goto_22

    .line 1909
    .line 1910
    :cond_73
    packed-switch v1, :pswitch_data_7

    .line 1911
    .line 1912
    .line 1913
    packed-switch v1, :pswitch_data_8

    .line 1914
    .line 1915
    .line 1916
    packed-switch v1, :pswitch_data_9

    .line 1917
    .line 1918
    .line 1919
    packed-switch v1, :pswitch_data_a

    .line 1920
    .line 1921
    .line 1922
    packed-switch v1, :pswitch_data_b

    .line 1923
    .line 1924
    .line 1925
    const/4 v0, -0x1

    .line 1926
    const/4 v8, -0x1

    .line 1927
    goto :goto_21

    .line 1928
    :pswitch_43
    const/4 v0, -0x1

    .line 1929
    const/high16 v8, 0x10000

    .line 1930
    .line 1931
    goto :goto_21

    .line 1932
    :pswitch_44
    const/4 v0, -0x1

    .line 1933
    const v8, 0x8000

    .line 1934
    .line 1935
    .line 1936
    goto :goto_21

    .line 1937
    :pswitch_45
    const/4 v0, -0x1

    .line 1938
    const/16 v8, 0x4000

    .line 1939
    .line 1940
    goto :goto_21

    .line 1941
    :pswitch_46
    const/4 v0, -0x1

    .line 1942
    const/16 v8, 0x2000

    .line 1943
    .line 1944
    goto :goto_21

    .line 1945
    :pswitch_47
    const/4 v0, -0x1

    .line 1946
    const/16 v8, 0x1000

    .line 1947
    .line 1948
    goto :goto_21

    .line 1949
    :pswitch_48
    const/4 v0, -0x1

    .line 1950
    const/16 v8, 0x800

    .line 1951
    .line 1952
    goto :goto_21

    .line 1953
    :pswitch_49
    const/4 v0, -0x1

    .line 1954
    const/16 v8, 0x400

    .line 1955
    .line 1956
    goto :goto_21

    .line 1957
    :pswitch_4a
    const/4 v0, -0x1

    .line 1958
    const/16 v8, 0x200

    .line 1959
    .line 1960
    goto :goto_21

    .line 1961
    :pswitch_4b
    const/4 v0, -0x1

    .line 1962
    const/16 v8, 0x100

    .line 1963
    .line 1964
    goto :goto_21

    .line 1965
    :pswitch_4c
    const/4 v0, -0x1

    .line 1966
    const/16 v8, 0x80

    .line 1967
    .line 1968
    goto :goto_21

    .line 1969
    :pswitch_4d
    const/4 v0, -0x1

    .line 1970
    const/16 v8, 0x40

    .line 1971
    .line 1972
    goto :goto_21

    .line 1973
    :pswitch_4e
    const/4 v0, -0x1

    .line 1974
    const/16 v8, 0x20

    .line 1975
    .line 1976
    goto :goto_21

    .line 1977
    :pswitch_4f
    const/4 v0, -0x1

    .line 1978
    goto :goto_21

    .line 1979
    :pswitch_50
    const/4 v0, -0x1

    .line 1980
    const/16 v8, 0x8

    .line 1981
    .line 1982
    goto :goto_21

    .line 1983
    :pswitch_51
    const/4 v0, -0x1

    .line 1984
    const/4 v8, 0x4

    .line 1985
    goto :goto_21

    .line 1986
    :pswitch_52
    const/4 v0, -0x1

    .line 1987
    const/4 v8, 0x1

    .line 1988
    :goto_21
    if-ne v8, v0, :cond_74

    .line 1989
    .line 1990
    const-string v0, "Unknown AVC level: "

    .line 1991
    .line 1992
    invoke-static {v1, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 1993
    .line 1994
    .line 1995
    goto :goto_22

    .line 1996
    :cond_74
    new-instance v0, Landroid/util/Pair;

    .line 1997
    .line 1998
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1999
    .line 2000
    .line 2001
    move-result-object v1

    .line 2002
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v2

    .line 2006
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2007
    .line 2008
    .line 2009
    move-object/from16 v17, v0

    .line 2010
    .line 2011
    goto :goto_22

    .line 2012
    :cond_75
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2013
    .line 2014
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2015
    .line 2016
    .line 2017
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    .line 2019
    .line 2020
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2021
    .line 2022
    .line 2023
    move-result-object v0

    .line 2024
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    .line 2025
    .line 2026
    .line 2027
    goto :goto_22

    .line 2028
    :catch_5
    invoke-static {v1, v9}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    .line 2030
    .line 2031
    :goto_22
    return-object v17

    .line 2032
    :pswitch_53
    array-length v1, v14

    .line 2033
    const-string v2, "Ignoring malformed AV1 codec string: "

    .line 2034
    .line 2035
    const/4 v13, 0x4

    .line 2036
    if-ge v1, v13, :cond_76

    .line 2037
    .line 2038
    invoke-static {v2, v9}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    .line 2040
    .line 2041
    goto/16 :goto_25

    .line 2042
    .line 2043
    :cond_76
    :try_start_7
    aget-object v1, v14, v10

    .line 2044
    .line 2045
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2046
    .line 2047
    .line 2048
    move-result v1

    .line 2049
    const/4 v13, 0x2

    .line 2050
    aget-object v3, v14, v13

    .line 2051
    .line 2052
    const/4 v4, 0x0

    .line 2053
    invoke-virtual {v3, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 2054
    .line 2055
    .line 2056
    move-result-object v3

    .line 2057
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2058
    .line 2059
    .line 2060
    move-result v3

    .line 2061
    const/4 v4, 0x3

    .line 2062
    aget-object v4, v14, v4

    .line 2063
    .line 2064
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2065
    .line 2066
    .line 2067
    move-result v2
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6

    .line 2068
    if-eqz v1, :cond_77

    .line 2069
    .line 2070
    const-string v0, "Unknown AV1 profile: "

    .line 2071
    .line 2072
    invoke-static {v1, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 2073
    .line 2074
    .line 2075
    goto/16 :goto_25

    .line 2076
    .line 2077
    :cond_77
    if-eq v2, v11, :cond_78

    .line 2078
    .line 2079
    const/16 v1, 0xa

    .line 2080
    .line 2081
    if-eq v2, v1, :cond_78

    .line 2082
    .line 2083
    const-string v0, "Unknown AV1 bit depth: "

    .line 2084
    .line 2085
    invoke-static {v2, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 2086
    .line 2087
    .line 2088
    goto/16 :goto_25

    .line 2089
    .line 2090
    :cond_78
    if-ne v2, v11, :cond_79

    .line 2091
    .line 2092
    const/4 v0, 0x1

    .line 2093
    goto :goto_23

    .line 2094
    :cond_79
    if-eqz v0, :cond_7b

    .line 2095
    .line 2096
    iget-object v1, v0, Lr1/g;->d:[B

    .line 2097
    .line 2098
    if-nez v1, :cond_7a

    .line 2099
    .line 2100
    iget v0, v0, Lr1/g;->c:I

    .line 2101
    .line 2102
    const/4 v1, 0x7

    .line 2103
    if-eq v0, v1, :cond_7a

    .line 2104
    .line 2105
    const/4 v1, 0x6

    .line 2106
    if-ne v0, v1, :cond_7b

    .line 2107
    .line 2108
    :cond_7a
    const/16 v0, 0x1000

    .line 2109
    .line 2110
    goto :goto_23

    .line 2111
    :cond_7b
    const/4 v0, 0x2

    .line 2112
    :goto_23
    packed-switch v3, :pswitch_data_c

    .line 2113
    .line 2114
    .line 2115
    const/4 v1, -0x1

    .line 2116
    const/4 v8, -0x1

    .line 2117
    goto/16 :goto_24

    .line 2118
    .line 2119
    :pswitch_54
    const/high16 v8, 0x800000

    .line 2120
    .line 2121
    :pswitch_55
    const/4 v1, -0x1

    .line 2122
    goto/16 :goto_24

    .line 2123
    .line 2124
    :pswitch_56
    const/4 v1, -0x1

    .line 2125
    const/high16 v8, 0x400000

    .line 2126
    .line 2127
    goto :goto_24

    .line 2128
    :pswitch_57
    const/4 v1, -0x1

    .line 2129
    const/high16 v8, 0x200000

    .line 2130
    .line 2131
    goto :goto_24

    .line 2132
    :pswitch_58
    const/4 v1, -0x1

    .line 2133
    const/high16 v8, 0x100000

    .line 2134
    .line 2135
    goto :goto_24

    .line 2136
    :pswitch_59
    const/4 v1, -0x1

    .line 2137
    const/high16 v8, 0x80000

    .line 2138
    .line 2139
    goto :goto_24

    .line 2140
    :pswitch_5a
    const/4 v1, -0x1

    .line 2141
    const/high16 v8, 0x40000

    .line 2142
    .line 2143
    goto :goto_24

    .line 2144
    :pswitch_5b
    const/4 v1, -0x1

    .line 2145
    const/high16 v8, 0x20000

    .line 2146
    .line 2147
    goto :goto_24

    .line 2148
    :pswitch_5c
    const/4 v1, -0x1

    .line 2149
    const/high16 v8, 0x10000

    .line 2150
    .line 2151
    goto :goto_24

    .line 2152
    :pswitch_5d
    const/4 v1, -0x1

    .line 2153
    const v8, 0x8000

    .line 2154
    .line 2155
    .line 2156
    goto :goto_24

    .line 2157
    :pswitch_5e
    const/4 v1, -0x1

    .line 2158
    const/16 v8, 0x4000

    .line 2159
    .line 2160
    goto :goto_24

    .line 2161
    :pswitch_5f
    const/4 v1, -0x1

    .line 2162
    const/16 v8, 0x2000

    .line 2163
    .line 2164
    goto :goto_24

    .line 2165
    :pswitch_60
    const/4 v1, -0x1

    .line 2166
    const/16 v8, 0x1000

    .line 2167
    .line 2168
    goto :goto_24

    .line 2169
    :pswitch_61
    const/4 v1, -0x1

    .line 2170
    const/16 v8, 0x800

    .line 2171
    .line 2172
    goto :goto_24

    .line 2173
    :pswitch_62
    const/4 v1, -0x1

    .line 2174
    const/16 v8, 0x400

    .line 2175
    .line 2176
    goto :goto_24

    .line 2177
    :pswitch_63
    const/4 v1, -0x1

    .line 2178
    const/16 v8, 0x200

    .line 2179
    .line 2180
    goto :goto_24

    .line 2181
    :pswitch_64
    const/4 v1, -0x1

    .line 2182
    const/16 v8, 0x100

    .line 2183
    .line 2184
    goto :goto_24

    .line 2185
    :pswitch_65
    const/4 v1, -0x1

    .line 2186
    const/16 v8, 0x80

    .line 2187
    .line 2188
    goto :goto_24

    .line 2189
    :pswitch_66
    const/4 v1, -0x1

    .line 2190
    const/16 v8, 0x40

    .line 2191
    .line 2192
    goto :goto_24

    .line 2193
    :pswitch_67
    const/4 v1, -0x1

    .line 2194
    const/16 v8, 0x20

    .line 2195
    .line 2196
    goto :goto_24

    .line 2197
    :pswitch_68
    const/4 v1, -0x1

    .line 2198
    const/16 v8, 0x8

    .line 2199
    .line 2200
    goto :goto_24

    .line 2201
    :pswitch_69
    const/4 v1, -0x1

    .line 2202
    const/4 v8, 0x4

    .line 2203
    goto :goto_24

    .line 2204
    :pswitch_6a
    const/4 v1, -0x1

    .line 2205
    const/4 v8, 0x2

    .line 2206
    goto :goto_24

    .line 2207
    :pswitch_6b
    const/4 v1, -0x1

    .line 2208
    const/4 v8, 0x1

    .line 2209
    :goto_24
    if-ne v8, v1, :cond_7c

    .line 2210
    .line 2211
    const-string v0, "Unknown AV1 level: "

    .line 2212
    .line 2213
    invoke-static {v3, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 2214
    .line 2215
    .line 2216
    goto :goto_25

    .line 2217
    :cond_7c
    new-instance v1, Landroid/util/Pair;

    .line 2218
    .line 2219
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2220
    .line 2221
    .line 2222
    move-result-object v0

    .line 2223
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2224
    .line 2225
    .line 2226
    move-result-object v2

    .line 2227
    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2228
    .line 2229
    .line 2230
    move-object/from16 v17, v1

    .line 2231
    .line 2232
    goto :goto_25

    .line 2233
    :catch_6
    invoke-static {v2, v9}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    .line 2235
    .line 2236
    :goto_25
    return-object v17

    .line 2237
    :pswitch_6c
    array-length v0, v14

    .line 2238
    const-string v1, "Ignoring malformed APV codec string: "

    .line 2239
    .line 2240
    const/4 v2, 0x4

    .line 2241
    if-ge v0, v2, :cond_7d

    .line 2242
    .line 2243
    invoke-static {v1, v9}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    .line 2245
    .line 2246
    goto :goto_27

    .line 2247
    :cond_7d
    :try_start_8
    aget-object v0, v14, v10

    .line 2248
    .line 2249
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2250
    .line 2251
    .line 2252
    move-result-object v0

    .line 2253
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2254
    .line 2255
    .line 2256
    move-result v0

    .line 2257
    const/4 v3, 0x2

    .line 2258
    aget-object v4, v14, v3

    .line 2259
    .line 2260
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2261
    .line 2262
    .line 2263
    move-result-object v3

    .line 2264
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2265
    .line 2266
    .line 2267
    move-result v3

    .line 2268
    const/4 v4, 0x3

    .line 2269
    aget-object v4, v14, v4

    .line 2270
    .line 2271
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2272
    .line 2273
    .line 2274
    move-result-object v2

    .line 2275
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2276
    .line 2277
    .line 2278
    move-result v1
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_7

    .line 2279
    const/16 v2, 0x21

    .line 2280
    .line 2281
    if-ne v0, v2, :cond_7e

    .line 2282
    .line 2283
    const/16 v28, 0x1

    .line 2284
    .line 2285
    goto :goto_26

    .line 2286
    :cond_7e
    const/16 v2, 0x2c

    .line 2287
    .line 2288
    if-ne v0, v2, :cond_80

    .line 2289
    .line 2290
    :goto_26
    div-int/lit8 v0, v3, 0x1e

    .line 2291
    .line 2292
    const/4 v2, 0x2

    .line 2293
    mul-int/lit8 v0, v0, 0x2

    .line 2294
    .line 2295
    const/16 v2, 0x1e

    .line 2296
    .line 2297
    rem-int/2addr v3, v2

    .line 2298
    if-nez v3, :cond_7f

    .line 2299
    .line 2300
    const/4 v2, -0x1

    .line 2301
    add-int/2addr v0, v2

    .line 2302
    :cond_7f
    sub-int/2addr v0, v10

    .line 2303
    shl-int v0, v24, v0

    .line 2304
    .line 2305
    shl-int v1, v10, v1

    .line 2306
    .line 2307
    or-int/2addr v0, v1

    .line 2308
    new-instance v1, Landroid/util/Pair;

    .line 2309
    .line 2310
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2311
    .line 2312
    .line 2313
    move-result-object v2

    .line 2314
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2315
    .line 2316
    .line 2317
    move-result-object v0

    .line 2318
    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2319
    .line 2320
    .line 2321
    move-object/from16 v17, v1

    .line 2322
    .line 2323
    goto :goto_27

    .line 2324
    :cond_80
    const-string v1, "Ignoring invalid APV profile: "

    .line 2325
    .line 2326
    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 2327
    .line 2328
    .line 2329
    goto :goto_27

    .line 2330
    :catch_7
    move-exception v0

    .line 2331
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2332
    .line 2333
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2334
    .line 2335
    .line 2336
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2337
    .line 2338
    .line 2339
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2340
    .line 2341
    .line 2342
    move-result-object v1

    .line 2343
    invoke-static {v1, v0}, Lu1/a;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2344
    .line 2345
    .line 2346
    :goto_27
    return-object v17

    .line 2347
    :pswitch_6d
    array-length v0, v14

    .line 2348
    const-string v1, "Ignoring malformed AC-4 codec string: "

    .line 2349
    .line 2350
    const/4 v2, 0x4

    .line 2351
    if-eq v0, v2, :cond_81

    .line 2352
    .line 2353
    invoke-static {v1, v9}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    .line 2355
    .line 2356
    goto/16 :goto_2b

    .line 2357
    .line 2358
    :cond_81
    :try_start_9
    aget-object v0, v14, v10

    .line 2359
    .line 2360
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2361
    .line 2362
    .line 2363
    move-result v0

    .line 2364
    const/4 v2, 0x2

    .line 2365
    aget-object v3, v14, v2

    .line 2366
    .line 2367
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2368
    .line 2369
    .line 2370
    move-result v3

    .line 2371
    const/4 v4, 0x3

    .line 2372
    aget-object v5, v14, v4

    .line 2373
    .line 2374
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2375
    .line 2376
    .line 2377
    move-result v1
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_8

    .line 2378
    if-eqz v0, :cond_86

    .line 2379
    .line 2380
    if-eq v0, v10, :cond_84

    .line 2381
    .line 2382
    if-eq v0, v2, :cond_82

    .line 2383
    .line 2384
    goto :goto_28

    .line 2385
    :cond_82
    if-ne v3, v10, :cond_83

    .line 2386
    .line 2387
    const/16 v4, 0x402

    .line 2388
    .line 2389
    const/4 v2, -0x1

    .line 2390
    goto :goto_29

    .line 2391
    :cond_83
    if-ne v3, v2, :cond_87

    .line 2392
    .line 2393
    const/16 v2, 0x404

    .line 2394
    .line 2395
    const/4 v2, -0x1

    .line 2396
    const/16 v4, 0x404

    .line 2397
    .line 2398
    goto :goto_29

    .line 2399
    :cond_84
    if-nez v3, :cond_85

    .line 2400
    .line 2401
    const/16 v2, 0x201

    .line 2402
    .line 2403
    const/4 v2, -0x1

    .line 2404
    const/16 v4, 0x201

    .line 2405
    .line 2406
    goto :goto_29

    .line 2407
    :cond_85
    if-ne v3, v10, :cond_87

    .line 2408
    .line 2409
    const/16 v2, 0x202

    .line 2410
    .line 2411
    const/4 v2, -0x1

    .line 2412
    const/16 v4, 0x202

    .line 2413
    .line 2414
    goto :goto_29

    .line 2415
    :cond_86
    if-nez v3, :cond_87

    .line 2416
    .line 2417
    const/16 v2, 0x101

    .line 2418
    .line 2419
    const/4 v2, -0x1

    .line 2420
    const/16 v4, 0x101

    .line 2421
    .line 2422
    goto :goto_29

    .line 2423
    :cond_87
    :goto_28
    const/4 v2, -0x1

    .line 2424
    const/4 v4, -0x1

    .line 2425
    :goto_29
    if-ne v4, v2, :cond_88

    .line 2426
    .line 2427
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2428
    .line 2429
    const-string v2, "Unknown AC-4 profile: "

    .line 2430
    .line 2431
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2432
    .line 2433
    .line 2434
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2435
    .line 2436
    .line 2437
    const-string v0, "."

    .line 2438
    .line 2439
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2440
    .line 2441
    .line 2442
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2443
    .line 2444
    .line 2445
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2446
    .line 2447
    .line 2448
    move-result-object v0

    .line 2449
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 2450
    .line 2451
    .line 2452
    goto :goto_2b

    .line 2453
    :cond_88
    if-eqz v1, :cond_8d

    .line 2454
    .line 2455
    if-eq v1, v10, :cond_8c

    .line 2456
    .line 2457
    const/4 v0, 0x2

    .line 2458
    if-eq v1, v0, :cond_8b

    .line 2459
    .line 2460
    const/4 v0, 0x3

    .line 2461
    if-eq v1, v0, :cond_8a

    .line 2462
    .line 2463
    const/4 v0, 0x4

    .line 2464
    if-eq v1, v0, :cond_89

    .line 2465
    .line 2466
    const/4 v0, -0x1

    .line 2467
    const/4 v8, -0x1

    .line 2468
    goto :goto_2a

    .line 2469
    :cond_89
    const/4 v0, -0x1

    .line 2470
    goto :goto_2a

    .line 2471
    :cond_8a
    const/4 v0, -0x1

    .line 2472
    const/16 v8, 0x8

    .line 2473
    .line 2474
    goto :goto_2a

    .line 2475
    :cond_8b
    const/4 v0, 0x4

    .line 2476
    const/4 v0, -0x1

    .line 2477
    const/4 v8, 0x4

    .line 2478
    goto :goto_2a

    .line 2479
    :cond_8c
    const/4 v0, 0x2

    .line 2480
    const/4 v0, -0x1

    .line 2481
    const/4 v8, 0x2

    .line 2482
    goto :goto_2a

    .line 2483
    :cond_8d
    const/4 v0, -0x1

    .line 2484
    const/4 v8, 0x1

    .line 2485
    :goto_2a
    if-ne v8, v0, :cond_8e

    .line 2486
    .line 2487
    const-string v0, "Unknown AC-4 level: "

    .line 2488
    .line 2489
    invoke-static {v1, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 2490
    .line 2491
    .line 2492
    goto :goto_2b

    .line 2493
    :cond_8e
    new-instance v0, Landroid/util/Pair;

    .line 2494
    .line 2495
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2496
    .line 2497
    .line 2498
    move-result-object v1

    .line 2499
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2500
    .line 2501
    .line 2502
    move-result-object v2

    .line 2503
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2504
    .line 2505
    .line 2506
    move-object/from16 v17, v0

    .line 2507
    .line 2508
    goto :goto_2b

    .line 2509
    :catch_8
    invoke-static {v1, v9}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    .line 2511
    .line 2512
    :goto_2b
    return-object v17

    .line 2513
    :sswitch_data_0
    .sparse-switch
        0x600 -> :sswitch_a
        0x601 -> :sswitch_9
        0x602 -> :sswitch_8
        0x603 -> :sswitch_7
        0x604 -> :sswitch_6
        0x605 -> :sswitch_5
        0x606 -> :sswitch_4
        0x607 -> :sswitch_3
        0x608 -> :sswitch_2
        0x609 -> :sswitch_1
        0x61f -> :sswitch_0
    .end sparse-switch

    .line 2514
    .line 2515
    .line 2516
    .line 2517
    .line 2518
    .line 2519
    .line 2520
    .line 2521
    .line 2522
    .line 2523
    .line 2524
    .line 2525
    .line 2526
    .line 2527
    .line 2528
    .line 2529
    .line 2530
    .line 2531
    .line 2532
    .line 2533
    .line 2534
    .line 2535
    .line 2536
    .line 2537
    .line 2538
    .line 2539
    .line 2540
    .line 2541
    .line 2542
    .line 2543
    .line 2544
    .line 2545
    .line 2546
    .line 2547
    .line 2548
    .line 2549
    .line 2550
    .line 2551
    .line 2552
    .line 2553
    .line 2554
    .line 2555
    .line 2556
    .line 2557
    .line 2558
    .line 2559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2560
    .line 2561
    .line 2562
    .line 2563
    .line 2564
    .line 2565
    .line 2566
    .line 2567
    .line 2568
    .line 2569
    .line 2570
    .line 2571
    .line 2572
    .line 2573
    .line 2574
    .line 2575
    .line 2576
    .line 2577
    .line 2578
    .line 2579
    .line 2580
    .line 2581
    .line 2582
    .line 2583
    .line 2584
    .line 2585
    :sswitch_data_1
    .sparse-switch
        0x601 -> :sswitch_17
        0x602 -> :sswitch_16
        0x603 -> :sswitch_15
        0x604 -> :sswitch_14
        0x605 -> :sswitch_13
        0x606 -> :sswitch_12
        0x607 -> :sswitch_11
        0x608 -> :sswitch_10
        0x609 -> :sswitch_f
        0x61f -> :sswitch_e
        0x620 -> :sswitch_d
        0x621 -> :sswitch_c
        0x622 -> :sswitch_b
    .end sparse-switch

    .line 2586
    .line 2587
    .line 2588
    .line 2589
    .line 2590
    .line 2591
    .line 2592
    .line 2593
    .line 2594
    .line 2595
    .line 2596
    .line 2597
    .line 2598
    .line 2599
    .line 2600
    .line 2601
    .line 2602
    .line 2603
    .line 2604
    .line 2605
    .line 2606
    .line 2607
    .line 2608
    .line 2609
    .line 2610
    .line 2611
    .line 2612
    .line 2613
    .line 2614
    .line 2615
    .line 2616
    .line 2617
    .line 2618
    .line 2619
    .line 2620
    .line 2621
    .line 2622
    .line 2623
    .line 2624
    .line 2625
    .line 2626
    .line 2627
    .line 2628
    .line 2629
    .line 2630
    .line 2631
    .line 2632
    .line 2633
    .line 2634
    .line 2635
    .line 2636
    .line 2637
    .line 2638
    .line 2639
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    .line 2640
    .line 2641
    .line 2642
    .line 2643
    .line 2644
    .line 2645
    .line 2646
    .line 2647
    .line 2648
    .line 2649
    .line 2650
    .line 2651
    .line 2652
    .line 2653
    .line 2654
    .line 2655
    .line 2656
    .line 2657
    .line 2658
    .line 2659
    .line 2660
    .line 2661
    .line 2662
    .line 2663
    .line 2664
    .line 2665
    .line 2666
    .line 2667
    .line 2668
    .line 2669
    :sswitch_data_2
    .sparse-switch
        0x2d9149 -> :sswitch_24
        0x2dcaea -> :sswitch_23
        0x2dd8f6 -> :sswitch_22
        0x2ddf23 -> :sswitch_21
        0x2ddf24 -> :sswitch_20
        0x30d038 -> :sswitch_1f
        0x310dbc -> :sswitch_1e
        0x3134b1 -> :sswitch_1d
        0x333790 -> :sswitch_1c
        0x35091c -> :sswitch_1b
        0x374e43 -> :sswitch_1a
        0x376aee -> :sswitch_19
        0x376ba8 -> :sswitch_18
    .end sparse-switch

    .line 2670
    .line 2671
    .line 2672
    .line 2673
    .line 2674
    .line 2675
    .line 2676
    .line 2677
    .line 2678
    .line 2679
    .line 2680
    .line 2681
    .line 2682
    .line 2683
    .line 2684
    .line 2685
    .line 2686
    .line 2687
    .line 2688
    .line 2689
    .line 2690
    .line 2691
    .line 2692
    .line 2693
    .line 2694
    .line 2695
    .line 2696
    .line 2697
    .line 2698
    .line 2699
    .line 2700
    .line 2701
    .line 2702
    .line 2703
    .line 2704
    .line 2705
    .line 2706
    .line 2707
    .line 2708
    .line 2709
    .line 2710
    .line 2711
    .line 2712
    .line 2713
    .line 2714
    .line 2715
    .line 2716
    .line 2717
    .line 2718
    .line 2719
    .line 2720
    .line 2721
    .line 2722
    .line 2723
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_6c
        :pswitch_53
        :pswitch_42
        :pswitch_42
        :pswitch_41
        :pswitch_41
        :pswitch_3c
        :pswitch_35
        :pswitch_34
        :pswitch_30
        :pswitch_18
        :pswitch_18
    .end packed-switch

    .line 2724
    .line 2725
    .line 2726
    .line 2727
    .line 2728
    .line 2729
    .line 2730
    .line 2731
    .line 2732
    .line 2733
    .line 2734
    .line 2735
    .line 2736
    .line 2737
    .line 2738
    .line 2739
    .line 2740
    .line 2741
    .line 2742
    .line 2743
    .line 2744
    .line 2745
    .line 2746
    .line 2747
    .line 2748
    .line 2749
    .line 2750
    .line 2751
    .line 2752
    .line 2753
    :sswitch_data_3
    .sparse-switch
        0x11506 -> :sswitch_3b
        0x11509 -> :sswitch_3a
        0x11540 -> :sswitch_39
        0x11543 -> :sswitch_38
        0x11546 -> :sswitch_37
        0x11565 -> :sswitch_36
        0x12371 -> :sswitch_35
        0x123ab -> :sswitch_34
        0x123ae -> :sswitch_33
        0x123d0 -> :sswitch_32
        0x123e8 -> :sswitch_31
        0x1240a -> :sswitch_30
        0x1240d -> :sswitch_2f
        0x12444 -> :sswitch_2e
        0x12447 -> :sswitch_2d
        0x1244a -> :sswitch_2c
        0x12469 -> :sswitch_2b
        0x2178ca -> :sswitch_2a
        0x2178ef -> :sswitch_29
        0x217929 -> :sswitch_28
        0x234a46 -> :sswitch_27
        0x234a6b -> :sswitch_26
        0x234aa5 -> :sswitch_25
    .end sparse-switch

    .line 2754
    .line 2755
    .line 2756
    .line 2757
    .line 2758
    .line 2759
    .line 2760
    .line 2761
    .line 2762
    .line 2763
    .line 2764
    .line 2765
    .line 2766
    .line 2767
    .line 2768
    .line 2769
    .line 2770
    .line 2771
    .line 2772
    .line 2773
    .line 2774
    .line 2775
    .line 2776
    .line 2777
    .line 2778
    .line 2779
    .line 2780
    .line 2781
    .line 2782
    .line 2783
    .line 2784
    .line 2785
    .line 2786
    .line 2787
    .line 2788
    .line 2789
    .line 2790
    .line 2791
    .line 2792
    .line 2793
    .line 2794
    .line 2795
    .line 2796
    .line 2797
    .line 2798
    .line 2799
    .line 2800
    .line 2801
    .line 2802
    .line 2803
    .line 2804
    .line 2805
    .line 2806
    .line 2807
    .line 2808
    .line 2809
    .line 2810
    .line 2811
    .line 2812
    .line 2813
    .line 2814
    .line 2815
    .line 2816
    .line 2817
    .line 2818
    .line 2819
    .line 2820
    .line 2821
    .line 2822
    .line 2823
    .line 2824
    .line 2825
    .line 2826
    .line 2827
    .line 2828
    .line 2829
    .line 2830
    .line 2831
    .line 2832
    .line 2833
    .line 2834
    .line 2835
    .line 2836
    .line 2837
    .line 2838
    .line 2839
    .line 2840
    .line 2841
    .line 2842
    .line 2843
    .line 2844
    .line 2845
    .line 2846
    .line 2847
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    .line 2848
    .line 2849
    .line 2850
    .line 2851
    .line 2852
    .line 2853
    .line 2854
    .line 2855
    .line 2856
    .line 2857
    .line 2858
    .line 2859
    .line 2860
    .line 2861
    .line 2862
    .line 2863
    .line 2864
    .line 2865
    .line 2866
    .line 2867
    .line 2868
    .line 2869
    .line 2870
    .line 2871
    .line 2872
    .line 2873
    .line 2874
    .line 2875
    .line 2876
    .line 2877
    .line 2878
    .line 2879
    .line 2880
    .line 2881
    .line 2882
    .line 2883
    .line 2884
    .line 2885
    .line 2886
    .line 2887
    .line 2888
    .line 2889
    .line 2890
    .line 2891
    .line 2892
    .line 2893
    .line 2894
    .line 2895
    .line 2896
    .line 2897
    :pswitch_data_4
    .packed-switch 0x3c
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch

    .line 2898
    .line 2899
    .line 2900
    .line 2901
    .line 2902
    .line 2903
    .line 2904
    .line 2905
    .line 2906
    .line 2907
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
    .end packed-switch

    .line 2908
    .line 2909
    .line 2910
    .line 2911
    .line 2912
    .line 2913
    .line 2914
    .line 2915
    .line 2916
    .line 2917
    .line 2918
    .line 2919
    .line 2920
    .line 2921
    .line 2922
    .line 2923
    :sswitch_data_4
    .sparse-switch
        0x259c5f -> :sswitch_3f
        0x2f8728 -> :sswitch_3e
        0x316bd1 -> :sswitch_3d
        0x333790 -> :sswitch_3c
    .end sparse-switch

    .line 2924
    .line 2925
    .line 2926
    .line 2927
    .line 2928
    .line 2929
    .line 2930
    .line 2931
    .line 2932
    .line 2933
    .line 2934
    .line 2935
    .line 2936
    .line 2937
    .line 2938
    .line 2939
    .line 2940
    .line 2941
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
    .end packed-switch

    .line 2942
    .line 2943
    .line 2944
    .line 2945
    .line 2946
    .line 2947
    .line 2948
    .line 2949
    .line 2950
    .line 2951
    .line 2952
    .line 2953
    :pswitch_data_7
    .packed-switch 0xa
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
    .end packed-switch

    .line 2954
    .line 2955
    .line 2956
    .line 2957
    .line 2958
    .line 2959
    .line 2960
    .line 2961
    .line 2962
    .line 2963
    .line 2964
    .line 2965
    :pswitch_data_8
    .packed-switch 0x14
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
    .end packed-switch

    .line 2966
    .line 2967
    .line 2968
    .line 2969
    .line 2970
    .line 2971
    .line 2972
    .line 2973
    .line 2974
    .line 2975
    :pswitch_data_9
    .packed-switch 0x1e
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
    .end packed-switch

    .line 2976
    .line 2977
    .line 2978
    .line 2979
    .line 2980
    .line 2981
    .line 2982
    .line 2983
    .line 2984
    .line 2985
    :pswitch_data_a
    .packed-switch 0x28
        :pswitch_48
        :pswitch_47
        :pswitch_46
    .end packed-switch

    .line 2986
    .line 2987
    .line 2988
    .line 2989
    .line 2990
    .line 2991
    .line 2992
    .line 2993
    .line 2994
    .line 2995
    :pswitch_data_b
    .packed-switch 0x32
        :pswitch_45
        :pswitch_44
        :pswitch_43
    .end packed-switch

    .line 2996
    .line 2997
    .line 2998
    .line 2999
    .line 3000
    .line 3001
    .line 3002
    .line 3003
    .line 3004
    .line 3005
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_55
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_54
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;[Ljava/lang/String;Lr1/g;)Landroid/util/Pair;
    .locals 11

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x6

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x1

    .line 9
    array-length v6, p1

    .line 10
    const-string v7, "Ignoring malformed HEVC codec string: "

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x4

    .line 14
    if-ge v6, v9, :cond_0

    .line 15
    .line 16
    invoke-static {v7, p0}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v8

    .line 20
    :cond_0
    aget-object v6, p1, v5

    .line 21
    .line 22
    sget-object v10, Lu1/c;->c:Ljava/util/regex/Pattern;

    .line 23
    .line 24
    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 29
    .line 30
    .line 31
    move-result v10

    .line 32
    if-nez v10, :cond_1

    .line 33
    .line 34
    invoke-static {v7, p0}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v8

    .line 38
    :cond_1
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string v6, "1"

    .line 43
    .line 44
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    const/16 v7, 0x1000

    .line 49
    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    const/4 p0, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-string v6, "2"

    .line 55
    .line 56
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_4

    .line 61
    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    iget p0, p2, Lr1/g;->c:I

    .line 65
    .line 66
    if-ne p0, v3, :cond_3

    .line 67
    .line 68
    const/16 p0, 0x1000

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 p0, 0x2

    .line 72
    goto :goto_0

    .line 73
    :cond_4
    const-string p2, "6"

    .line 74
    .line 75
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_21

    .line 80
    .line 81
    const/4 p0, 0x6

    .line 82
    :goto_0
    aget-object p1, p1, v2

    .line 83
    .line 84
    if-nez p1, :cond_5

    .line 85
    .line 86
    :goto_1
    move-object p2, v8

    .line 87
    goto/16 :goto_4

    .line 88
    .line 89
    :cond_5
    const/4 p2, -0x1

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    sparse-switch v6, :sswitch_data_0

    .line 95
    .line 96
    .line 97
    :goto_2
    const/4 v2, -0x1

    .line 98
    goto/16 :goto_3

    .line 99
    .line 100
    :sswitch_0
    const-string v2, "L186"

    .line 101
    .line 102
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_6

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_6
    const/16 v2, 0x19

    .line 110
    .line 111
    goto/16 :goto_3

    .line 112
    .line 113
    :sswitch_1
    const-string v2, "L183"

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_7

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_7
    const/16 v2, 0x18

    .line 123
    .line 124
    goto/16 :goto_3

    .line 125
    .line 126
    :sswitch_2
    const-string v2, "L180"

    .line 127
    .line 128
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-nez v2, :cond_8

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_8
    const/16 v2, 0x17

    .line 136
    .line 137
    goto/16 :goto_3

    .line 138
    .line 139
    :sswitch_3
    const-string v2, "L156"

    .line 140
    .line 141
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-nez v2, :cond_9

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_9
    const/16 v2, 0x16

    .line 149
    .line 150
    goto/16 :goto_3

    .line 151
    .line 152
    :sswitch_4
    const-string v2, "L153"

    .line 153
    .line 154
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-nez v2, :cond_a

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_a
    const/16 v2, 0x15

    .line 162
    .line 163
    goto/16 :goto_3

    .line 164
    .line 165
    :sswitch_5
    const-string v2, "L150"

    .line 166
    .line 167
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-nez v2, :cond_b

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_b
    const/16 v2, 0x14

    .line 175
    .line 176
    goto/16 :goto_3

    .line 177
    .line 178
    :sswitch_6
    const-string v2, "L123"

    .line 179
    .line 180
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-nez v2, :cond_c

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_c
    const/16 v2, 0x13

    .line 188
    .line 189
    goto/16 :goto_3

    .line 190
    .line 191
    :sswitch_7
    const-string v2, "L120"

    .line 192
    .line 193
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-nez v2, :cond_d

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_d
    const/16 v2, 0x12

    .line 201
    .line 202
    goto/16 :goto_3

    .line 203
    .line 204
    :sswitch_8
    const-string v2, "H186"

    .line 205
    .line 206
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-nez v2, :cond_e

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_e
    const/16 v2, 0x11

    .line 214
    .line 215
    goto/16 :goto_3

    .line 216
    .line 217
    :sswitch_9
    const-string v2, "H183"

    .line 218
    .line 219
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    if-nez v2, :cond_f

    .line 224
    .line 225
    goto/16 :goto_2

    .line 226
    .line 227
    :cond_f
    const/16 v2, 0x10

    .line 228
    .line 229
    goto/16 :goto_3

    .line 230
    .line 231
    :sswitch_a
    const-string v2, "H180"

    .line 232
    .line 233
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-nez v2, :cond_10

    .line 238
    .line 239
    goto/16 :goto_2

    .line 240
    .line 241
    :cond_10
    const/16 v2, 0xf

    .line 242
    .line 243
    goto/16 :goto_3

    .line 244
    .line 245
    :sswitch_b
    const-string v2, "H156"

    .line 246
    .line 247
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-nez v2, :cond_11

    .line 252
    .line 253
    goto/16 :goto_2

    .line 254
    .line 255
    :cond_11
    const/16 v2, 0xe

    .line 256
    .line 257
    goto/16 :goto_3

    .line 258
    .line 259
    :sswitch_c
    const-string v2, "H153"

    .line 260
    .line 261
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    if-nez v2, :cond_12

    .line 266
    .line 267
    goto/16 :goto_2

    .line 268
    .line 269
    :cond_12
    const/16 v2, 0xd

    .line 270
    .line 271
    goto/16 :goto_3

    .line 272
    .line 273
    :sswitch_d
    const-string v2, "H150"

    .line 274
    .line 275
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-nez v2, :cond_13

    .line 280
    .line 281
    goto/16 :goto_2

    .line 282
    .line 283
    :cond_13
    const/16 v2, 0xc

    .line 284
    .line 285
    goto/16 :goto_3

    .line 286
    .line 287
    :sswitch_e
    const-string v2, "H123"

    .line 288
    .line 289
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-nez v2, :cond_14

    .line 294
    .line 295
    goto/16 :goto_2

    .line 296
    .line 297
    :cond_14
    const/16 v2, 0xb

    .line 298
    .line 299
    goto/16 :goto_3

    .line 300
    .line 301
    :sswitch_f
    const-string v2, "H120"

    .line 302
    .line 303
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-nez v2, :cond_15

    .line 308
    .line 309
    goto/16 :goto_2

    .line 310
    .line 311
    :cond_15
    const/16 v2, 0xa

    .line 312
    .line 313
    goto/16 :goto_3

    .line 314
    .line 315
    :sswitch_10
    const-string v2, "L93"

    .line 316
    .line 317
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    if-nez v2, :cond_16

    .line 322
    .line 323
    goto/16 :goto_2

    .line 324
    .line 325
    :cond_16
    const/16 v2, 0x9

    .line 326
    .line 327
    goto/16 :goto_3

    .line 328
    .line 329
    :sswitch_11
    const-string v2, "L90"

    .line 330
    .line 331
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    if-nez v2, :cond_17

    .line 336
    .line 337
    goto/16 :goto_2

    .line 338
    .line 339
    :cond_17
    const/16 v2, 0x8

    .line 340
    .line 341
    goto :goto_3

    .line 342
    :sswitch_12
    const-string v2, "L63"

    .line 343
    .line 344
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-nez v2, :cond_18

    .line 349
    .line 350
    goto/16 :goto_2

    .line 351
    .line 352
    :cond_18
    const/4 v2, 0x7

    .line 353
    goto :goto_3

    .line 354
    :sswitch_13
    const-string v2, "L60"

    .line 355
    .line 356
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    if-nez v2, :cond_19

    .line 361
    .line 362
    goto/16 :goto_2

    .line 363
    .line 364
    :cond_19
    const/4 v2, 0x6

    .line 365
    goto :goto_3

    .line 366
    :sswitch_14
    const-string v2, "L30"

    .line 367
    .line 368
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    if-nez v2, :cond_1a

    .line 373
    .line 374
    goto/16 :goto_2

    .line 375
    .line 376
    :cond_1a
    const/4 v2, 0x5

    .line 377
    goto :goto_3

    .line 378
    :sswitch_15
    const-string v2, "H93"

    .line 379
    .line 380
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    if-nez v2, :cond_1b

    .line 385
    .line 386
    goto/16 :goto_2

    .line 387
    .line 388
    :cond_1b
    const/4 v2, 0x4

    .line 389
    goto :goto_3

    .line 390
    :sswitch_16
    const-string v3, "H90"

    .line 391
    .line 392
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    if-nez v3, :cond_1f

    .line 397
    .line 398
    goto/16 :goto_2

    .line 399
    .line 400
    :sswitch_17
    const-string v2, "H63"

    .line 401
    .line 402
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    if-nez v2, :cond_1c

    .line 407
    .line 408
    goto/16 :goto_2

    .line 409
    .line 410
    :cond_1c
    const/4 v2, 0x2

    .line 411
    goto :goto_3

    .line 412
    :sswitch_18
    const-string v2, "H60"

    .line 413
    .line 414
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    if-nez v2, :cond_1d

    .line 419
    .line 420
    goto/16 :goto_2

    .line 421
    .line 422
    :cond_1d
    const/4 v2, 0x1

    .line 423
    goto :goto_3

    .line 424
    :sswitch_19
    const-string v2, "H30"

    .line 425
    .line 426
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    if-nez v2, :cond_1e

    .line 431
    .line 432
    goto/16 :goto_2

    .line 433
    .line 434
    :cond_1e
    const/4 v2, 0x0

    .line 435
    :cond_1f
    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 436
    .line 437
    .line 438
    goto/16 :goto_1

    .line 439
    .line 440
    :pswitch_0
    const/high16 p2, 0x1000000

    .line 441
    .line 442
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 443
    .line 444
    .line 445
    move-result-object p2

    .line 446
    goto/16 :goto_4

    .line 447
    .line 448
    :pswitch_1
    const/high16 p2, 0x400000

    .line 449
    .line 450
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 451
    .line 452
    .line 453
    move-result-object p2

    .line 454
    goto/16 :goto_4

    .line 455
    .line 456
    :pswitch_2
    const/high16 p2, 0x100000

    .line 457
    .line 458
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 459
    .line 460
    .line 461
    move-result-object p2

    .line 462
    goto/16 :goto_4

    .line 463
    .line 464
    :pswitch_3
    const/high16 p2, 0x40000

    .line 465
    .line 466
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 467
    .line 468
    .line 469
    move-result-object p2

    .line 470
    goto/16 :goto_4

    .line 471
    .line 472
    :pswitch_4
    const/high16 p2, 0x10000

    .line 473
    .line 474
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 475
    .line 476
    .line 477
    move-result-object p2

    .line 478
    goto/16 :goto_4

    .line 479
    .line 480
    :pswitch_5
    const/16 p2, 0x4000

    .line 481
    .line 482
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 483
    .line 484
    .line 485
    move-result-object p2

    .line 486
    goto/16 :goto_4

    .line 487
    .line 488
    :pswitch_6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 489
    .line 490
    .line 491
    move-result-object p2

    .line 492
    goto/16 :goto_4

    .line 493
    .line 494
    :pswitch_7
    const/16 p2, 0x400

    .line 495
    .line 496
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    .line 498
    .line 499
    move-result-object p2

    .line 500
    goto/16 :goto_4

    .line 501
    .line 502
    :pswitch_8
    const/high16 p2, 0x2000000

    .line 503
    .line 504
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 505
    .line 506
    .line 507
    move-result-object p2

    .line 508
    goto/16 :goto_4

    .line 509
    .line 510
    :pswitch_9
    const/high16 p2, 0x800000

    .line 511
    .line 512
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 513
    .line 514
    .line 515
    move-result-object p2

    .line 516
    goto/16 :goto_4

    .line 517
    .line 518
    :pswitch_a
    const/high16 p2, 0x200000

    .line 519
    .line 520
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 521
    .line 522
    .line 523
    move-result-object p2

    .line 524
    goto :goto_4

    .line 525
    :pswitch_b
    const/high16 p2, 0x80000

    .line 526
    .line 527
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 528
    .line 529
    .line 530
    move-result-object p2

    .line 531
    goto :goto_4

    .line 532
    :pswitch_c
    const/high16 p2, 0x20000

    .line 533
    .line 534
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 535
    .line 536
    .line 537
    move-result-object p2

    .line 538
    goto :goto_4

    .line 539
    :pswitch_d
    const p2, 0x8000

    .line 540
    .line 541
    .line 542
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 543
    .line 544
    .line 545
    move-result-object p2

    .line 546
    goto :goto_4

    .line 547
    :pswitch_e
    const/16 p2, 0x2000

    .line 548
    .line 549
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 550
    .line 551
    .line 552
    move-result-object p2

    .line 553
    goto :goto_4

    .line 554
    :pswitch_f
    const/16 p2, 0x800

    .line 555
    .line 556
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 557
    .line 558
    .line 559
    move-result-object p2

    .line 560
    goto :goto_4

    .line 561
    :pswitch_10
    const/16 p2, 0x100

    .line 562
    .line 563
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 564
    .line 565
    .line 566
    move-result-object p2

    .line 567
    goto :goto_4

    .line 568
    :pswitch_11
    const/16 p2, 0x40

    .line 569
    .line 570
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 571
    .line 572
    .line 573
    move-result-object p2

    .line 574
    goto :goto_4

    .line 575
    :pswitch_12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 576
    .line 577
    .line 578
    move-result-object p2

    .line 579
    goto :goto_4

    .line 580
    :pswitch_13
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 581
    .line 582
    .line 583
    move-result-object p2

    .line 584
    goto :goto_4

    .line 585
    :pswitch_14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 586
    .line 587
    .line 588
    move-result-object p2

    .line 589
    goto :goto_4

    .line 590
    :pswitch_15
    const/16 p2, 0x200

    .line 591
    .line 592
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 593
    .line 594
    .line 595
    move-result-object p2

    .line 596
    goto :goto_4

    .line 597
    :pswitch_16
    const/16 p2, 0x80

    .line 598
    .line 599
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 600
    .line 601
    .line 602
    move-result-object p2

    .line 603
    goto :goto_4

    .line 604
    :pswitch_17
    const/16 p2, 0x20

    .line 605
    .line 606
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 607
    .line 608
    .line 609
    move-result-object p2

    .line 610
    goto :goto_4

    .line 611
    :pswitch_18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 612
    .line 613
    .line 614
    move-result-object p2

    .line 615
    goto :goto_4

    .line 616
    :pswitch_19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 617
    .line 618
    .line 619
    move-result-object p2

    .line 620
    :goto_4
    if-nez p2, :cond_20

    .line 621
    .line 622
    const-string p0, "Unknown HEVC level string: "

    .line 623
    .line 624
    invoke-static {p0, p1}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    return-object v8

    .line 628
    :cond_20
    new-instance p1, Landroid/util/Pair;

    .line 629
    .line 630
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 631
    .line 632
    .line 633
    move-result-object p0

    .line 634
    invoke-direct {p1, p0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 635
    .line 636
    .line 637
    return-object p1

    .line 638
    :cond_21
    const-string p1, "Unknown HEVC profile string: "

    .line 639
    .line 640
    invoke-static {p1, p0}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    return-object v8

    .line 644
    nop

    .line 645
    :sswitch_data_0
    .sparse-switch
        0x114a5 -> :sswitch_19
        0x11502 -> :sswitch_18
        0x11505 -> :sswitch_17
        0x1155f -> :sswitch_16
        0x11562 -> :sswitch_15
        0x123a9 -> :sswitch_14
        0x12406 -> :sswitch_13
        0x12409 -> :sswitch_12
        0x12463 -> :sswitch_11
        0x12466 -> :sswitch_10
        0x2178e7 -> :sswitch_f
        0x2178ea -> :sswitch_e
        0x217944 -> :sswitch_d
        0x217947 -> :sswitch_c
        0x21794a -> :sswitch_b
        0x2179a1 -> :sswitch_a
        0x2179a4 -> :sswitch_9
        0x2179a7 -> :sswitch_8
        0x234a63 -> :sswitch_7
        0x234a66 -> :sswitch_6
        0x234ac0 -> :sswitch_5
        0x234ac3 -> :sswitch_4
        0x234ac6 -> :sswitch_3
        0x234b1d -> :sswitch_2
        0x234b20 -> :sswitch_1
        0x234b23 -> :sswitch_0
    .end sparse-switch

    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
