.class public abstract Lph/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C

.field public static final b:Ljava/util/HashMap;

.field public static final c:Ljava/util/ArrayList;

.field public static final d:Loh/b;

.field public static final e:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lph/n;->a:[C

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lph/n;->b:Ljava/util/HashMap;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/16 v1, 0x6a

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lph/n;->c:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Lah/a;

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    invoke-direct {v0, v1}, Lah/a;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Loh/b;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-direct {v1, v0, v2}, Loh/b;-><init>(Ljava/util/function/Supplier;I)V

    .line 35
    .line 36
    .line 37
    sput-object v1, Lph/n;->d:Loh/b;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lph/n;->e:Ljava/lang/ThreadLocal;

    .line 45
    .line 46
    return-void

    .line 47
    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method public static a(Loh/a;Lph/m;I)V
    .locals 4

    .line 1
    iget-object v0, p1, Lph/m;->c:[I

    .line 2
    .line 3
    invoke-static {v0, p2}, Ljava/util/Arrays;->binarySearch([II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p1, Lph/m;->d:[Ljava/lang/String;

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    add-int/lit8 v3, v3, -0x1

    .line 15
    .line 16
    if-ge v0, v3, :cond_0

    .line 17
    .line 18
    iget-object p1, p1, Lph/m;->c:[I

    .line 19
    .line 20
    add-int/lit8 v3, v0, 0x1

    .line 21
    .line 22
    aget p1, p1, v3

    .line 23
    .line 24
    if-ne p1, p2, :cond_0

    .line 25
    .line 26
    aget-object p1, v2, v3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    aget-object p1, v2, v0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object p1, v1

    .line 33
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/16 v1, 0x3b

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    const/16 p2, 0x26

    .line 42
    .line 43
    invoke-virtual {p0, p2}, Loh/a;->a(C)Loh/a;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0, p1}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0, v1}, Loh/a;->a(C)Loh/a;

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const-string p1, "&#x"

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0, v1}, Loh/a;->a(C)Loh/a;

    .line 70
    .line 71
    .line 72
    :goto_1
    return-void
.end method

.method public static b(ICLjava/nio/charset/CharsetEncoder;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Ld0/f;->c(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz p0, :cond_3

    .line 8
    .line 9
    if-eq p0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const p0, 0xd800

    .line 17
    .line 18
    .line 19
    if-lt p1, p0, :cond_1

    .line 20
    .line 21
    const p0, 0xe000

    .line 22
    .line 23
    .line 24
    if-lt p1, p0, :cond_2

    .line 25
    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    :cond_2
    return v0

    .line 28
    :cond_3
    const/16 p0, 0x80

    .line 29
    .line 30
    if-ge p1, p0, :cond_4

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    :cond_4
    return v0
.end method

.method public static c(Loh/a;Ljava/lang/String;Lph/g;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v1, Lph/g;->a:Lph/m;

    .line 6
    .line 7
    iget-object v1, v1, Lph/g;->b:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string v4, "US-ASCII"

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v4, "UTF-"

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v3, 0x3

    .line 34
    :goto_0
    sget-object v4, Lph/n;->e:Ljava/lang/ThreadLocal;

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    check-cast v6, Ljava/nio/charset/CharsetEncoder;

    .line 41
    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v7, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-nez v7, :cond_3

    .line 53
    .line 54
    :cond_2
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v4, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v10, 0x0

    .line 69
    :goto_1
    if-ge v7, v1, :cond_1d

    .line 70
    .line 71
    move-object/from16 v11, p1

    .line 72
    .line 73
    invoke-virtual {v11, v7}, Ljava/lang/String;->codePointAt(I)I

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    and-int/lit8 v13, p3, 0x4

    .line 78
    .line 79
    const/16 v14, 0x20

    .line 80
    .line 81
    if-eqz v13, :cond_a

    .line 82
    .line 83
    invoke-static {v12}, Loh/f;->i(I)Z

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    if-eqz v13, :cond_8

    .line 88
    .line 89
    and-int/lit8 v13, p3, 0x8

    .line 90
    .line 91
    if-eqz v13, :cond_4

    .line 92
    .line 93
    if-nez v9, :cond_4

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    if-eqz v10, :cond_6

    .line 97
    .line 98
    :cond_5
    :goto_2
    const/4 v5, 0x0

    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :cond_6
    and-int/lit8 v13, p3, 0x10

    .line 102
    .line 103
    if-eqz v13, :cond_7

    .line 104
    .line 105
    const/4 v5, 0x0

    .line 106
    const/4 v8, 0x1

    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_7
    invoke-virtual {v0, v14}, Loh/a;->a(C)Loh/a;

    .line 110
    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    const/4 v10, 0x1

    .line 114
    goto/16 :goto_4

    .line 115
    .line 116
    :cond_8
    if-eqz v8, :cond_9

    .line 117
    .line 118
    invoke-virtual {v0, v14}, Loh/a;->a(C)Loh/a;

    .line 119
    .line 120
    .line 121
    const/4 v8, 0x0

    .line 122
    :cond_9
    const/4 v9, 0x1

    .line 123
    const/4 v10, 0x0

    .line 124
    :cond_a
    sget-object v13, Lph/m;->e:Lph/m;

    .line 125
    .line 126
    const/16 v5, 0xd

    .line 127
    .line 128
    const/16 v4, 0xa

    .line 129
    .line 130
    const/16 v15, 0x9

    .line 131
    .line 132
    if-ne v13, v2, :cond_d

    .line 133
    .line 134
    if-eq v12, v15, :cond_d

    .line 135
    .line 136
    if-eq v12, v4, :cond_d

    .line 137
    .line 138
    if-eq v12, v5, :cond_d

    .line 139
    .line 140
    if-lt v12, v14, :cond_b

    .line 141
    .line 142
    const v14, 0xd7ff

    .line 143
    .line 144
    .line 145
    if-le v12, v14, :cond_d

    .line 146
    .line 147
    :cond_b
    const v14, 0xe000

    .line 148
    .line 149
    .line 150
    if-lt v12, v14, :cond_c

    .line 151
    .line 152
    const v14, 0xfffd

    .line 153
    .line 154
    .line 155
    if-le v12, v14, :cond_d

    .line 156
    .line 157
    :cond_c
    const/high16 v14, 0x10000

    .line 158
    .line 159
    if-lt v12, v14, :cond_5

    .line 160
    .line 161
    const v14, 0x10ffff

    .line 162
    .line 163
    .line 164
    if-gt v12, v14, :cond_5

    .line 165
    .line 166
    :cond_d
    int-to-char v14, v12

    .line 167
    const/high16 v5, 0x10000

    .line 168
    .line 169
    if-ge v12, v5, :cond_1b

    .line 170
    .line 171
    if-eq v14, v15, :cond_1a

    .line 172
    .line 173
    if-eq v14, v4, :cond_1a

    .line 174
    .line 175
    const/16 v4, 0xd

    .line 176
    .line 177
    if-eq v14, v4, :cond_1a

    .line 178
    .line 179
    const/16 v4, 0x22

    .line 180
    .line 181
    if-eq v14, v4, :cond_18

    .line 182
    .line 183
    const/16 v4, 0x3c

    .line 184
    .line 185
    if-eq v14, v4, :cond_17

    .line 186
    .line 187
    const/16 v4, 0x3e

    .line 188
    .line 189
    if-eq v14, v4, :cond_16

    .line 190
    .line 191
    const/16 v4, 0xa0

    .line 192
    .line 193
    if-eq v14, v4, :cond_14

    .line 194
    .line 195
    const/16 v4, 0x26

    .line 196
    .line 197
    if-eq v14, v4, :cond_13

    .line 198
    .line 199
    const/16 v4, 0x27

    .line 200
    .line 201
    if-eq v14, v4, :cond_10

    .line 202
    .line 203
    const/16 v5, 0x20

    .line 204
    .line 205
    if-lt v14, v5, :cond_f

    .line 206
    .line 207
    invoke-static {v3, v14, v6}, Lph/n;->b(ICLjava/nio/charset/CharsetEncoder;)Z

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-nez v4, :cond_e

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_e
    invoke-virtual {v0, v14}, Loh/a;->a(C)Loh/a;

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_f
    :goto_3
    invoke-static {v0, v2, v12}, Lph/n;->a(Loh/a;Lph/m;I)V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_10
    and-int/lit8 v5, p3, 0x2

    .line 223
    .line 224
    if-eqz v5, :cond_12

    .line 225
    .line 226
    and-int/lit8 v5, p3, 0x1

    .line 227
    .line 228
    if-eqz v5, :cond_12

    .line 229
    .line 230
    if-ne v2, v13, :cond_11

    .line 231
    .line 232
    const-string v4, "&#x27;"

    .line 233
    .line 234
    invoke-virtual {v0, v4}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 235
    .line 236
    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    :cond_11
    const-string v4, "&apos;"

    .line 240
    .line 241
    invoke-virtual {v0, v4}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 242
    .line 243
    .line 244
    goto/16 :goto_2

    .line 245
    .line 246
    :cond_12
    invoke-virtual {v0, v4}, Loh/a;->a(C)Loh/a;

    .line 247
    .line 248
    .line 249
    goto/16 :goto_2

    .line 250
    .line 251
    :cond_13
    const-string v4, "&amp;"

    .line 252
    .line 253
    invoke-virtual {v0, v4}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 254
    .line 255
    .line 256
    goto/16 :goto_2

    .line 257
    .line 258
    :cond_14
    if-eq v2, v13, :cond_15

    .line 259
    .line 260
    const-string v4, "&nbsp;"

    .line 261
    .line 262
    invoke-virtual {v0, v4}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 263
    .line 264
    .line 265
    goto/16 :goto_2

    .line 266
    .line 267
    :cond_15
    const-string v4, "&#xa0;"

    .line 268
    .line 269
    invoke-virtual {v0, v4}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 270
    .line 271
    .line 272
    goto/16 :goto_2

    .line 273
    .line 274
    :cond_16
    const-string v4, "&gt;"

    .line 275
    .line 276
    invoke-virtual {v0, v4}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 277
    .line 278
    .line 279
    goto/16 :goto_2

    .line 280
    .line 281
    :cond_17
    const-string v4, "&lt;"

    .line 282
    .line 283
    invoke-virtual {v0, v4}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 284
    .line 285
    .line 286
    goto/16 :goto_2

    .line 287
    .line 288
    :cond_18
    and-int/lit8 v4, p3, 0x2

    .line 289
    .line 290
    if-eqz v4, :cond_19

    .line 291
    .line 292
    const-string v4, "&quot;"

    .line 293
    .line 294
    invoke-virtual {v0, v4}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 295
    .line 296
    .line 297
    goto/16 :goto_2

    .line 298
    .line 299
    :cond_19
    invoke-virtual {v0, v14}, Loh/a;->a(C)Loh/a;

    .line 300
    .line 301
    .line 302
    goto/16 :goto_2

    .line 303
    .line 304
    :cond_1a
    invoke-virtual {v0, v14}, Loh/a;->a(C)Loh/a;

    .line 305
    .line 306
    .line 307
    goto/16 :goto_2

    .line 308
    .line 309
    :cond_1b
    invoke-static {v3, v14, v6}, Lph/n;->b(ICLjava/nio/charset/CharsetEncoder;)Z

    .line 310
    .line 311
    .line 312
    move-result v4

    .line 313
    if-eqz v4, :cond_1c

    .line 314
    .line 315
    sget-object v4, Lph/n;->d:Loh/b;

    .line 316
    .line 317
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    check-cast v4, [C

    .line 322
    .line 323
    const/4 v5, 0x0

    .line 324
    invoke-static {v12, v4, v5}, Ljava/lang/Character;->toChars(I[CI)I

    .line 325
    .line 326
    .line 327
    move-result v13

    .line 328
    iget v14, v0, Loh/a;->a:I

    .line 329
    .line 330
    packed-switch v14, :pswitch_data_0

    .line 331
    .line 332
    .line 333
    const/4 v14, 0x0

    .line 334
    iget-object v15, v0, Loh/a;->b:Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-virtual {v15, v4, v14, v13}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    goto :goto_4

    .line 340
    :pswitch_0
    :try_start_0
    new-instance v14, Ljava/lang/String;

    .line 341
    .line 342
    const/4 v15, 0x0

    .line 343
    invoke-direct {v14, v4, v15, v13}, Ljava/lang/String;-><init>([CII)V

    .line 344
    .line 345
    .line 346
    iget-object v4, v0, Loh/a;->b:Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .line 350
    .line 351
    goto :goto_4

    .line 352
    :catch_0
    move-exception v0

    .line 353
    new-instance v1, Landroidx/fragment/app/b0;

    .line 354
    .line 355
    const/16 v2, 0x8

    .line 356
    .line 357
    invoke-direct {v1, v2, v0}, Landroidx/fragment/app/b0;-><init>(ILjava/lang/Throwable;)V

    .line 358
    .line 359
    .line 360
    throw v1

    .line 361
    :cond_1c
    const/4 v5, 0x0

    .line 362
    invoke-static {v0, v2, v12}, Lph/n;->a(Loh/a;Lph/m;I)V

    .line 363
    .line 364
    .line 365
    :goto_4
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    .line 366
    .line 367
    .line 368
    move-result v4

    .line 369
    add-int/2addr v7, v4

    .line 370
    goto/16 :goto_1

    .line 371
    .line 372
    :cond_1d
    return-void

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
