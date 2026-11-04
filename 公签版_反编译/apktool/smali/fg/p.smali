.class public final Lfg/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfg/z;


# instance fields
.field public a:B

.field public final b:Lfg/t;

.field public final c:Ljava/util/zip/Inflater;

.field public final d:Lfg/q;

.field public final e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lfg/z;)V
    .locals 2

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lfg/t;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lfg/t;-><init>(Lfg/z;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lfg/p;->b:Lfg/t;

    .line 15
    .line 16
    new-instance p1, Ljava/util/zip/Inflater;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lfg/p;->c:Ljava/util/zip/Inflater;

    .line 23
    .line 24
    new-instance v1, Lfg/q;

    .line 25
    .line 26
    invoke-direct {v1, v0, p1}, Lfg/q;-><init>(Lfg/t;Ljava/util/zip/Inflater;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lfg/p;->d:Lfg/q;

    .line 30
    .line 31
    new-instance p1, Ljava/util/zip/CRC32;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lfg/p;->e:Ljava/util/zip/CRC32;

    .line 37
    .line 38
    return-void
.end method

.method public static r(IILjava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-array v2, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object p2, v2, v3

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    aput-object p1, v2, p2

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    aput-object p0, v2, p1

    .line 25
    .line 26
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "%s: actual 0x%08x != expected 0x%08x"

    .line 31
    .line 32
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1
.end method


# virtual methods
.method public final A(JLfg/i;J)V
    .locals 5

    .line 1
    iget-object p3, p3, Lfg/i;->a:Lfg/u;

    .line 2
    .line 3
    invoke-static {p3}, Lue/d;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :goto_0
    iget v0, p3, Lfg/u;->c:I

    .line 7
    .line 8
    iget v1, p3, Lfg/u;->b:I

    .line 9
    .line 10
    sub-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    cmp-long v4, p1, v2

    .line 14
    .line 15
    if-ltz v4, :cond_0

    .line 16
    .line 17
    sub-int/2addr v0, v1

    .line 18
    int-to-long v0, v0

    .line 19
    sub-long/2addr p1, v0

    .line 20
    iget-object p3, p3, Lfg/u;->f:Lfg/u;

    .line 21
    .line 22
    invoke-static {p3}, Lue/d;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    cmp-long v2, p4, v0

    .line 29
    .line 30
    if-lez v2, :cond_1

    .line 31
    .line 32
    iget v2, p3, Lfg/u;->b:I

    .line 33
    .line 34
    int-to-long v2, v2

    .line 35
    add-long/2addr v2, p1

    .line 36
    long-to-int p1, v2

    .line 37
    iget p2, p3, Lfg/u;->c:I

    .line 38
    .line 39
    sub-int/2addr p2, p1

    .line 40
    int-to-long v2, p2

    .line 41
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    long-to-int p2, v2

    .line 46
    iget-object v2, p0, Lfg/p;->e:Ljava/util/zip/CRC32;

    .line 47
    .line 48
    iget-object v3, p3, Lfg/u;->a:[B

    .line 49
    .line 50
    invoke-virtual {v2, v3, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 51
    .line 52
    .line 53
    int-to-long p1, p2

    .line 54
    sub-long/2addr p4, p1

    .line 55
    iget-object p3, p3, Lfg/u;->f:Lfg/u;

    .line 56
    .line 57
    invoke-static {p3}, Lue/d;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    move-wide p1, v0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfg/p;->d:Lfg/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfg/q;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final read(Lfg/i;J)J
    .locals 26

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-wide/from16 v8, p2

    .line 6
    .line 7
    const-string v0, "sink"

    .line 8
    .line 9
    invoke-static {v7, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    cmp-long v2, v8, v0

    .line 15
    .line 16
    if-ltz v2, :cond_12

    .line 17
    .line 18
    cmp-long v2, v8, v0

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_0
    iget-byte v0, v6, Lfg/p;->a:B

    .line 24
    .line 25
    iget-object v10, v6, Lfg/p;->e:Ljava/util/zip/CRC32;

    .line 26
    .line 27
    const/4 v11, 0x1

    .line 28
    const-wide/16 v12, -0x1

    .line 29
    .line 30
    iget-object v15, v6, Lfg/p;->b:Lfg/t;

    .line 31
    .line 32
    if-nez v0, :cond_d

    .line 33
    .line 34
    const-wide/16 v0, 0xa

    .line 35
    .line 36
    invoke-virtual {v15, v0, v1}, Lfg/t;->F(J)V

    .line 37
    .line 38
    .line 39
    iget-object v14, v15, Lfg/t;->b:Lfg/i;

    .line 40
    .line 41
    const-wide/16 v0, 0x3

    .line 42
    .line 43
    invoke-virtual {v14, v0, v1}, Lfg/i;->L(J)B

    .line 44
    .line 45
    .line 46
    move-result v20

    .line 47
    shr-int/lit8 v0, v20, 0x1

    .line 48
    .line 49
    and-int/2addr v0, v11

    .line 50
    if-ne v0, v11, :cond_1

    .line 51
    .line 52
    const/16 v21, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    .line 56
    const/16 v21, 0x0

    .line 57
    .line 58
    :goto_0
    if-eqz v21, :cond_2

    .line 59
    .line 60
    const-wide/16 v4, 0xa

    .line 61
    .line 62
    const-wide/16 v1, 0x0

    .line 63
    .line 64
    move-object/from16 v0, p0

    .line 65
    .line 66
    move-object v3, v14

    .line 67
    invoke-virtual/range {v0 .. v5}, Lfg/p;->A(JLfg/i;J)V

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {v15}, Lfg/t;->readShort()S

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const-string v1, "ID1ID2"

    .line 75
    .line 76
    const/16 v2, 0x1f8b

    .line 77
    .line 78
    invoke-static {v2, v0, v1}, Lfg/p;->r(IILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-wide/16 v0, 0x8

    .line 82
    .line 83
    invoke-virtual {v15, v0, v1}, Lfg/t;->skip(J)V

    .line 84
    .line 85
    .line 86
    shr-int/lit8 v0, v20, 0x2

    .line 87
    .line 88
    and-int/2addr v0, v11

    .line 89
    const v22, 0xff00

    .line 90
    .line 91
    .line 92
    const-wide/16 v4, 0x2

    .line 93
    .line 94
    if-ne v0, v11, :cond_5

    .line 95
    .line 96
    invoke-virtual {v15, v4, v5}, Lfg/t;->F(J)V

    .line 97
    .line 98
    .line 99
    if-eqz v21, :cond_3

    .line 100
    .line 101
    const-wide/16 v16, 0x2

    .line 102
    .line 103
    const-wide/16 v1, 0x0

    .line 104
    .line 105
    move-object/from16 v0, p0

    .line 106
    .line 107
    move-object v3, v14

    .line 108
    move-wide/from16 v4, v16

    .line 109
    .line 110
    invoke-virtual/range {v0 .. v5}, Lfg/p;->A(JLfg/i;J)V

    .line 111
    .line 112
    .line 113
    :cond_3
    invoke-virtual {v14}, Lfg/i;->readShort()S

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    and-int v1, v0, v22

    .line 118
    .line 119
    ushr-int/lit8 v1, v1, 0x8

    .line 120
    .line 121
    and-int/lit16 v0, v0, 0xff

    .line 122
    .line 123
    shl-int/lit8 v0, v0, 0x8

    .line 124
    .line 125
    or-int/2addr v0, v1

    .line 126
    int-to-short v0, v0

    .line 127
    int-to-long v4, v0

    .line 128
    invoke-virtual {v15, v4, v5}, Lfg/t;->F(J)V

    .line 129
    .line 130
    .line 131
    if-eqz v21, :cond_4

    .line 132
    .line 133
    const-wide/16 v1, 0x0

    .line 134
    .line 135
    move-object/from16 v0, p0

    .line 136
    .line 137
    move-object v3, v14

    .line 138
    move-wide/from16 v16, v4

    .line 139
    .line 140
    invoke-virtual/range {v0 .. v5}, Lfg/p;->A(JLfg/i;J)V

    .line 141
    .line 142
    .line 143
    move-wide/from16 v0, v16

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    move-wide v0, v4

    .line 147
    :goto_1
    invoke-virtual {v15, v0, v1}, Lfg/t;->skip(J)V

    .line 148
    .line 149
    .line 150
    :cond_5
    shr-int/lit8 v0, v20, 0x3

    .line 151
    .line 152
    and-int/2addr v0, v11

    .line 153
    const-wide/16 v23, 0x1

    .line 154
    .line 155
    if-ne v0, v11, :cond_8

    .line 156
    .line 157
    const-wide v18, 0x7fffffffffffffffL

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    const-wide/16 v16, 0x0

    .line 164
    .line 165
    move-object/from16 v25, v14

    .line 166
    .line 167
    move-object v14, v15

    .line 168
    move-object v4, v15

    .line 169
    move v15, v0

    .line 170
    invoke-virtual/range {v14 .. v19}, Lfg/t;->r(BJJ)J

    .line 171
    .line 172
    .line 173
    move-result-wide v14

    .line 174
    cmp-long v0, v14, v12

    .line 175
    .line 176
    if-eqz v0, :cond_7

    .line 177
    .line 178
    if-eqz v21, :cond_6

    .line 179
    .line 180
    add-long v16, v14, v23

    .line 181
    .line 182
    const-wide/16 v1, 0x0

    .line 183
    .line 184
    move-object/from16 v0, p0

    .line 185
    .line 186
    move-object/from16 v3, v25

    .line 187
    .line 188
    move-object v12, v4

    .line 189
    move-wide/from16 v4, v16

    .line 190
    .line 191
    invoke-virtual/range {v0 .. v5}, Lfg/p;->A(JLfg/i;J)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_6
    move-object v12, v4

    .line 196
    :goto_2
    add-long v14, v14, v23

    .line 197
    .line 198
    invoke-virtual {v12, v14, v15}, Lfg/t;->skip(J)V

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    .line 203
    .line 204
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 205
    .line 206
    .line 207
    throw v0

    .line 208
    :cond_8
    move-object/from16 v25, v14

    .line 209
    .line 210
    move-object v12, v15

    .line 211
    :goto_3
    shr-int/lit8 v0, v20, 0x4

    .line 212
    .line 213
    and-int/2addr v0, v11

    .line 214
    if-ne v0, v11, :cond_b

    .line 215
    .line 216
    const-wide v18, 0x7fffffffffffffffL

    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    const/4 v15, 0x0

    .line 222
    const-wide/16 v16, 0x0

    .line 223
    .line 224
    move-object v14, v12

    .line 225
    invoke-virtual/range {v14 .. v19}, Lfg/t;->r(BJJ)J

    .line 226
    .line 227
    .line 228
    move-result-wide v13

    .line 229
    const-wide/16 v0, -0x1

    .line 230
    .line 231
    cmp-long v2, v13, v0

    .line 232
    .line 233
    if-eqz v2, :cond_a

    .line 234
    .line 235
    if-eqz v21, :cond_9

    .line 236
    .line 237
    add-long v4, v13, v23

    .line 238
    .line 239
    const-wide/16 v1, 0x0

    .line 240
    .line 241
    move-object/from16 v0, p0

    .line 242
    .line 243
    move-object/from16 v3, v25

    .line 244
    .line 245
    invoke-virtual/range {v0 .. v5}, Lfg/p;->A(JLfg/i;J)V

    .line 246
    .line 247
    .line 248
    :cond_9
    add-long v13, v13, v23

    .line 249
    .line 250
    invoke-virtual {v12, v13, v14}, Lfg/t;->skip(J)V

    .line 251
    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    .line 255
    .line 256
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 257
    .line 258
    .line 259
    throw v0

    .line 260
    :cond_b
    :goto_4
    if-eqz v21, :cond_c

    .line 261
    .line 262
    const-wide/16 v0, 0x2

    .line 263
    .line 264
    invoke-virtual {v12, v0, v1}, Lfg/t;->F(J)V

    .line 265
    .line 266
    .line 267
    invoke-virtual/range {v25 .. v25}, Lfg/i;->readShort()S

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    and-int v1, v0, v22

    .line 272
    .line 273
    ushr-int/lit8 v1, v1, 0x8

    .line 274
    .line 275
    and-int/lit16 v0, v0, 0xff

    .line 276
    .line 277
    shl-int/lit8 v0, v0, 0x8

    .line 278
    .line 279
    or-int/2addr v0, v1

    .line 280
    int-to-short v0, v0

    .line 281
    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    .line 282
    .line 283
    .line 284
    move-result-wide v1

    .line 285
    long-to-int v2, v1

    .line 286
    int-to-short v1, v2

    .line 287
    const-string v2, "FHCRC"

    .line 288
    .line 289
    invoke-static {v0, v1, v2}, Lfg/p;->r(IILjava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v10}, Ljava/util/zip/CRC32;->reset()V

    .line 293
    .line 294
    .line 295
    :cond_c
    iput-byte v11, v6, Lfg/p;->a:B

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_d
    move-object v12, v15

    .line 299
    :goto_5
    iget-byte v0, v6, Lfg/p;->a:B

    .line 300
    .line 301
    const/4 v1, 0x2

    .line 302
    if-ne v0, v11, :cond_f

    .line 303
    .line 304
    iget-wide v2, v7, Lfg/i;->b:J

    .line 305
    .line 306
    iget-object v0, v6, Lfg/p;->d:Lfg/q;

    .line 307
    .line 308
    invoke-virtual {v0, v7, v8, v9}, Lfg/q;->read(Lfg/i;J)J

    .line 309
    .line 310
    .line 311
    move-result-wide v8

    .line 312
    const-wide/16 v4, -0x1

    .line 313
    .line 314
    cmp-long v0, v8, v4

    .line 315
    .line 316
    if-eqz v0, :cond_e

    .line 317
    .line 318
    move-object/from16 v0, p0

    .line 319
    .line 320
    move-wide v1, v2

    .line 321
    move-object/from16 v3, p1

    .line 322
    .line 323
    move-wide v4, v8

    .line 324
    invoke-virtual/range {v0 .. v5}, Lfg/p;->A(JLfg/i;J)V

    .line 325
    .line 326
    .line 327
    return-wide v8

    .line 328
    :cond_e
    iput-byte v1, v6, Lfg/p;->a:B

    .line 329
    .line 330
    :cond_f
    iget-byte v0, v6, Lfg/p;->a:B

    .line 331
    .line 332
    if-ne v0, v1, :cond_10

    .line 333
    .line 334
    invoke-virtual {v12}, Lfg/t;->A()I

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    .line 339
    .line 340
    .line 341
    move-result-wide v1

    .line 342
    long-to-int v2, v1

    .line 343
    const-string v1, "CRC"

    .line 344
    .line 345
    invoke-static {v0, v2, v1}, Lfg/p;->r(IILjava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v12}, Lfg/t;->A()I

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    iget-object v1, v6, Lfg/p;->c:Ljava/util/zip/Inflater;

    .line 353
    .line 354
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    .line 355
    .line 356
    .line 357
    move-result-wide v1

    .line 358
    long-to-int v2, v1

    .line 359
    const-string v1, "ISIZE"

    .line 360
    .line 361
    invoke-static {v0, v2, v1}, Lfg/p;->r(IILjava/lang/String;)V

    .line 362
    .line 363
    .line 364
    const/4 v0, 0x3

    .line 365
    iput-byte v0, v6, Lfg/p;->a:B

    .line 366
    .line 367
    invoke-virtual {v12}, Lfg/t;->j()Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-eqz v0, :cond_11

    .line 372
    .line 373
    :cond_10
    const-wide/16 v0, -0x1

    .line 374
    .line 375
    goto :goto_6

    .line 376
    :cond_11
    new-instance v0, Ljava/io/IOException;

    .line 377
    .line 378
    const-string v1, "gzip finished without exhausting source"

    .line 379
    .line 380
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw v0

    .line 384
    :goto_6
    return-wide v0

    .line 385
    :cond_12
    const-string v0, "byteCount < 0: "

    .line 386
    .line 387
    invoke-static {v8, v9, v0}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 392
    .line 393
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    throw v1
.end method

.method public final timeout()Lfg/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfg/p;->b:Lfg/t;

    .line 2
    .line 3
    iget-object v0, v0, Lfg/t;->a:Lfg/z;

    .line 4
    .line 5
    invoke-interface {v0}, Lfg/z;->timeout()Lfg/c0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
