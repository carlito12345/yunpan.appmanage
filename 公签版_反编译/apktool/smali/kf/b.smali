.class public final Lkf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li3/d;
.implements Lokhttp3/Callback;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lkf/b;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lkf/b;->a:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    iput-object p1, p0, Lkf/b;->b:Ljava/lang/Object;

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iput-object p2, p0, Lkf/b;->c:Ljava/lang/Object;

    .line 23
    iput-object p3, p0, Lkf/b;->d:Ljava/lang/Object;

    .line 24
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    iput-object p4, p0, Lkf/b;->e:Ljava/lang/Object;

    .line 26
    const-string p4, "-"

    .line 27
    invoke-static {p1, p4, p2, p4, p3}, Lta/q;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    iput-object p1, p0, Lkf/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkf/b;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lkf/b;->b:Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lkf/b;->d:Ljava/lang/Object;

    .line 16
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 17
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lkf/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo3/c;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lkf/b;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lkf/b;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lkf/b;->e:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lkf/b;->f:Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lkf/b;->d:Ljava/lang/Object;

    .line 7
    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p1, p2, p3}, Lo3/c;->d(Ljava/util/TreeSet;Z)V

    .line 9
    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    move-result p1

    new-array p1, p1, [J

    .line 10
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-int/lit8 p4, p3, 0x1

    .line 11
    aput-wide v0, p1, p3

    move p3, p4

    goto :goto_0

    .line 12
    :cond_0
    iput-object p1, p0, Lkf/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo9/a;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lkf/b;->a:I

    .line 36
    iput-object p1, p0, Lkf/b;->f:Ljava/lang/Object;

    iput-object p2, p0, Lkf/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lkf/b;->c:Ljava/lang/Object;

    iput-object p4, p0, Lkf/b;->d:Ljava/lang/Object;

    iput-object p5, p0, Lkf/b;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Llf/a;
    .locals 15

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lkf/b;->d:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    int-to-long v2, v2

    .line 11
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const v5, 0xffff

    .line 16
    .line 17
    .line 18
    and-int/2addr v4, v5

    .line 19
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    and-int/2addr v6, v5

    .line 24
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    int-to-long v7, v7

    .line 29
    const-wide v9, 0xffffffffL

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    and-long/2addr v7, v9

    .line 35
    long-to-int v8, v7

    .line 36
    if-eqz v4, :cond_5

    .line 37
    .line 38
    if-eq v4, v0, :cond_4

    .line 39
    .line 40
    const/4 v7, 0x2

    .line 41
    if-eq v4, v7, :cond_3

    .line 42
    .line 43
    packed-switch v4, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    new-instance v0, Landroidx/fragment/app/b0;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "Unexpected chunk Type: 0x"

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v4, v1}, Lg/b;->e(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x6

    .line 60
    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :pswitch_0
    new-instance v0, Lmf/a;

    .line 65
    .line 66
    int-to-long v4, v8

    .line 67
    invoke-direct {v0, v6, v4, v5}, Lmf/a;-><init>(IJ)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    int-to-long v4, v4

    .line 75
    and-long/2addr v4, v9

    .line 76
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->r(J)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    iput v4, v0, Lmf/a;->d:I

    .line 81
    .line 82
    int-to-long v4, v6

    .line 83
    add-long/2addr v2, v4

    .line 84
    invoke-static {v1, v2, v3}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    :pswitch_1
    new-instance v0, Lmf/m;

    .line 89
    .line 90
    int-to-long v4, v8

    .line 91
    invoke-direct {v0, v6, v4, v5}, Lmf/m;-><init>(IJ)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    and-int/lit16 v4, v4, 0xff

    .line 99
    .line 100
    int-to-short v4, v4

    .line 101
    int-to-byte v4, v4

    .line 102
    iput-byte v4, v0, Lmf/m;->d:B

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    int-to-long v4, v4

    .line 115
    and-long/2addr v4, v9

    .line 116
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->r(J)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    iput v4, v0, Lmf/m;->e:I

    .line 121
    .line 122
    int-to-long v4, v6

    .line 123
    add-long/2addr v2, v4

    .line 124
    invoke-static {v1, v2, v3}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :pswitch_2
    new-instance v0, Lmf/k;

    .line 129
    .line 130
    int-to-long v11, v8

    .line 131
    invoke-direct {v0, v6, v11, v12}, Lmf/k;-><init>(IJ)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    and-int/lit16 v4, v4, 0xff

    .line 139
    .line 140
    int-to-short v4, v4

    .line 141
    int-to-byte v4, v4

    .line 142
    iput-byte v4, v0, Lmf/k;->d:B

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    int-to-long v11, v4

    .line 155
    and-long/2addr v11, v9

    .line 156
    invoke-static {v11, v12}, Lcom/bumptech/glide/c;->r(J)I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    iput v4, v0, Lmf/k;->e:I

    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    int-to-long v11, v4

    .line 167
    and-long/2addr v11, v9

    .line 168
    invoke-static {v11, v12}, Lcom/bumptech/glide/c;->r(J)I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    iput v4, v0, Lmf/k;->f:I

    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    int-to-long v11, v4

    .line 179
    new-instance v4, Lmf/d;

    .line 180
    .line 181
    invoke-direct {v4}, Lmf/d;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    int-to-long v13, v8

    .line 189
    and-long/2addr v9, v13

    .line 190
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 194
    .line 195
    .line 196
    new-instance v8, Ljava/lang/String;

    .line 197
    .line 198
    new-array v13, v7, [B

    .line 199
    .line 200
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 201
    .line 202
    .line 203
    invoke-direct {v8, v13}, Ljava/lang/String;-><init>([B)V

    .line 204
    .line 205
    .line 206
    const-string v13, "\u0000"

    .line 207
    .line 208
    const-string v14, ""

    .line 209
    .line 210
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    iput-object v8, v4, Lmf/d;->a:Ljava/lang/String;

    .line 215
    .line 216
    new-instance v8, Ljava/lang/String;

    .line 217
    .line 218
    new-array v7, v7, [B

    .line 219
    .line 220
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 221
    .line 222
    .line 223
    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    iput-object v7, v4, Lmf/d;->b:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    and-int/2addr v5, v7

    .line 243
    int-to-short v5, v5

    .line 244
    iput-short v5, v4, Lmf/d;->c:S

    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    int-to-long v7, v5

    .line 251
    sub-long/2addr v7, v11

    .line 252
    sub-long/2addr v9, v7

    .line 253
    long-to-int v5, v9

    .line 254
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    add-int/2addr v7, v5

    .line 259
    invoke-virtual {v1, v7}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 260
    .line 261
    .line 262
    iput-object v4, v0, Lmf/k;->g:Lmf/d;

    .line 263
    .line 264
    int-to-long v4, v6

    .line 265
    add-long/2addr v2, v4

    .line 266
    invoke-static {v1, v2, v3}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 267
    .line 268
    .line 269
    return-object v0

    .line 270
    :pswitch_3
    new-instance v4, Lmf/c;

    .line 271
    .line 272
    int-to-long v7, v8

    .line 273
    invoke-direct {v4, v6, v7, v8}, Lmf/c;-><init>(IJ)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    int-to-long v7, v5

    .line 281
    and-long/2addr v7, v9

    .line 282
    long-to-int v5, v7

    .line 283
    iput v5, v4, Lmf/c;->d:I

    .line 284
    .line 285
    sget-object v5, Lqf/b;->a:Ljava/nio/charset/Charset;

    .line 286
    .line 287
    new-instance v5, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const/16 v7, 0x80

    .line 290
    .line 291
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 292
    .line 293
    .line 294
    const/4 v8, 0x0

    .line 295
    const/4 v11, 0x0

    .line 296
    :goto_0
    if-ge v11, v7, :cond_0

    .line 297
    .line 298
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getChar()C

    .line 299
    .line 300
    .line 301
    move-result v12

    .line 302
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    add-int/2addr v11, v0

    .line 306
    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    const/4 v7, 0x0

    .line 312
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 313
    .line 314
    .line 315
    move-result v11

    .line 316
    if-ge v7, v11, :cond_2

    .line 317
    .line 318
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    .line 319
    .line 320
    .line 321
    move-result v11

    .line 322
    if-nez v11, :cond_1

    .line 323
    .line 324
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    goto :goto_2

    .line 328
    :cond_1
    add-int/2addr v7, v0

    .line 329
    goto :goto_1

    .line 330
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    int-to-long v7, v0

    .line 335
    and-long/2addr v7, v9

    .line 336
    invoke-static {v7, v8}, Lcom/bumptech/glide/c;->r(J)I

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    iput v0, v4, Lmf/c;->e:I

    .line 341
    .line 342
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    int-to-long v7, v0

    .line 347
    and-long/2addr v7, v9

    .line 348
    invoke-static {v7, v8}, Lcom/bumptech/glide/c;->r(J)I

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    int-to-long v7, v0

    .line 356
    and-long/2addr v7, v9

    .line 357
    invoke-static {v7, v8}, Lcom/bumptech/glide/c;->r(J)I

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    iput v0, v4, Lmf/c;->f:I

    .line 362
    .line 363
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    int-to-long v7, v0

    .line 368
    and-long/2addr v7, v9

    .line 369
    invoke-static {v7, v8}, Lcom/bumptech/glide/c;->r(J)I

    .line 370
    .line 371
    .line 372
    int-to-long v5, v6

    .line 373
    add-long/2addr v2, v5

    .line 374
    invoke-static {v1, v2, v3}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 375
    .line 376
    .line 377
    return-object v4

    .line 378
    :cond_3
    new-instance v0, Lmf/i;

    .line 379
    .line 380
    invoke-direct {v0, v6, v8}, Lmf/i;-><init>(II)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    int-to-long v4, v4

    .line 388
    and-long/2addr v4, v9

    .line 389
    long-to-int v5, v4

    .line 390
    iput v5, v0, Lmf/i;->d:I

    .line 391
    .line 392
    int-to-long v4, v6

    .line 393
    add-long/2addr v2, v4

    .line 394
    invoke-static {v1, v2, v3}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 395
    .line 396
    .line 397
    return-object v0

    .line 398
    :cond_4
    new-instance v0, Llf/g;

    .line 399
    .line 400
    int-to-long v4, v8

    .line 401
    invoke-direct {v0, v6, v4, v5}, Llf/g;-><init>(IJ)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    int-to-long v4, v4

    .line 409
    and-long/2addr v4, v9

    .line 410
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->r(J)I

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    iput v4, v0, Llf/g;->d:I

    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    int-to-long v4, v4

    .line 421
    and-long/2addr v4, v9

    .line 422
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->r(J)I

    .line 423
    .line 424
    .line 425
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    int-to-long v4, v4

    .line 430
    and-long/2addr v4, v9

    .line 431
    iput-wide v4, v0, Llf/g;->e:J

    .line 432
    .line 433
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    int-to-long v4, v4

    .line 438
    and-long/2addr v4, v9

    .line 439
    iput-wide v4, v0, Llf/g;->f:J

    .line 440
    .line 441
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 442
    .line 443
    .line 444
    int-to-long v4, v6

    .line 445
    add-long/2addr v2, v4

    .line 446
    invoke-static {v1, v2, v3}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 447
    .line 448
    .line 449
    return-object v0

    .line 450
    :cond_5
    :pswitch_4
    int-to-long v4, v6

    .line 451
    add-long/2addr v2, v4

    .line 452
    invoke-static {v1, v2, v3}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 453
    .line 454
    .line 455
    new-instance v0, Lmf/b;

    .line 456
    .line 457
    invoke-direct {v0, v6, v8}, Lmf/b;-><init>(II)V

    .line 458
    .line 459
    .line 460
    return-object v0

    .line 461
    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public d(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lkf/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [J

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p1, p2, v1}, Lu1/f0;->a([JJZ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    array-length p2, v0

    .line 11
    if-ge p1, p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, -0x1

    .line 15
    :goto_0
    return p1
.end method

.method public e(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lkf/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [J

    .line 4
    .line 5
    aget-wide v1, v0, p1

    .line 6
    .line 7
    return-wide v1
.end method

.method public h(J)Ljava/util/List;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lkf/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lo3/c;

    .line 6
    .line 7
    new-instance v9, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v2, v1, Lo3/c;->h:Ljava/lang/String;

    .line 13
    .line 14
    move-wide/from16 v10, p1

    .line 15
    .line 16
    invoke-virtual {v1, v10, v11, v2, v9}, Lo3/c;->g(JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 17
    .line 18
    .line 19
    new-instance v12, Ljava/util/TreeMap;

    .line 20
    .line 21
    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    iget-object v6, v1, Lo3/c;->h:Ljava/lang/String;

    .line 26
    .line 27
    move-object v2, v1

    .line 28
    move-wide/from16 v3, p1

    .line 29
    .line 30
    move-object v7, v12

    .line 31
    invoke-virtual/range {v2 .. v7}, Lo3/c;->i(JZLjava/lang/String;Ljava/util/TreeMap;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lkf/b;->e:Ljava/lang/Object;

    .line 35
    .line 36
    move-object v13, v2

    .line 37
    check-cast v13, Ljava/util/HashMap;

    .line 38
    .line 39
    iget-object v2, v0, Lkf/b;->d:Ljava/lang/Object;

    .line 40
    .line 41
    move-object v5, v2

    .line 42
    check-cast v5, Ljava/util/Map;

    .line 43
    .line 44
    iget-object v7, v1, Lo3/c;->h:Ljava/lang/String;

    .line 45
    .line 46
    move-object v2, v1

    .line 47
    move-object v6, v13

    .line 48
    move-object v8, v12

    .line 49
    invoke-virtual/range {v2 .. v8}, Lo3/c;->h(JLjava/util/Map;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/TreeMap;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const/4 v4, 0x0

    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Landroid/util/Pair;

    .line 73
    .line 74
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 75
    .line 76
    iget-object v6, v0, Lkf/b;->f:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v6, Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Ljava/lang/String;

    .line 85
    .line 86
    if-nez v5, :cond_0

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    array-length v6, v5

    .line 94
    invoke-static {v5, v4, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object v18

    .line 98
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 99
    .line 100
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Lo3/e;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    new-instance v4, Lt1/b;

    .line 110
    .line 111
    move-object v14, v4

    .line 112
    const/high16 v29, -0x1000000

    .line 113
    .line 114
    iget v5, v3, Lo3/e;->j:I

    .line 115
    .line 116
    move/from16 v30, v5

    .line 117
    .line 118
    const/4 v15, 0x0

    .line 119
    const/16 v16, 0x0

    .line 120
    .line 121
    move-object/from16 v17, v16

    .line 122
    .line 123
    iget v5, v3, Lo3/e;->c:F

    .line 124
    .line 125
    move/from16 v19, v5

    .line 126
    .line 127
    const/16 v20, 0x0

    .line 128
    .line 129
    iget v5, v3, Lo3/e;->e:I

    .line 130
    .line 131
    move/from16 v21, v5

    .line 132
    .line 133
    iget v5, v3, Lo3/e;->b:F

    .line 134
    .line 135
    move/from16 v22, v5

    .line 136
    .line 137
    const/16 v23, 0x0

    .line 138
    .line 139
    const/high16 v24, -0x80000000

    .line 140
    .line 141
    const v25, -0x800001

    .line 142
    .line 143
    .line 144
    iget v5, v3, Lo3/e;->f:F

    .line 145
    .line 146
    move/from16 v26, v5

    .line 147
    .line 148
    iget v3, v3, Lo3/e;->g:F

    .line 149
    .line 150
    move/from16 v27, v3

    .line 151
    .line 152
    const/16 v28, 0x0

    .line 153
    .line 154
    const/16 v31, 0x0

    .line 155
    .line 156
    const/16 v32, 0x0

    .line 157
    .line 158
    invoke-direct/range {v14 .. v32}, Lt1/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {v12}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_d

    .line 178
    .line 179
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Ljava/util/Map$Entry;

    .line 184
    .line 185
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    check-cast v5, Lo3/e;

    .line 194
    .line 195
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    check-cast v3, Lt1/a;

    .line 203
    .line 204
    iget-object v6, v3, Lt1/a;->a:Ljava/lang/CharSequence;

    .line 205
    .line 206
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    check-cast v6, Landroid/text/SpannableStringBuilder;

    .line 210
    .line 211
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    const-class v8, Lo3/a;

    .line 216
    .line 217
    invoke-virtual {v6, v4, v7, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    check-cast v7, [Lo3/a;

    .line 222
    .line 223
    array-length v8, v7

    .line 224
    const/4 v9, 0x0

    .line 225
    :goto_2
    if-ge v9, v8, :cond_2

    .line 226
    .line 227
    aget-object v10, v7, v9

    .line 228
    .line 229
    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    .line 230
    .line 231
    .line 232
    move-result v11

    .line 233
    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    .line 234
    .line 235
    .line 236
    move-result v10

    .line 237
    const-string v12, ""

    .line 238
    .line 239
    invoke-virtual {v6, v11, v10, v12}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 240
    .line 241
    .line 242
    add-int/lit8 v9, v9, 0x1

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_2
    const/4 v7, 0x0

    .line 246
    :goto_3
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    const/16 v9, 0x20

    .line 251
    .line 252
    if-ge v7, v8, :cond_5

    .line 253
    .line 254
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    if-ne v8, v9, :cond_4

    .line 259
    .line 260
    add-int/lit8 v8, v7, 0x1

    .line 261
    .line 262
    move v10, v8

    .line 263
    :goto_4
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 264
    .line 265
    .line 266
    move-result v11

    .line 267
    if-ge v10, v11, :cond_3

    .line 268
    .line 269
    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 270
    .line 271
    .line 272
    move-result v11

    .line 273
    if-ne v11, v9, :cond_3

    .line 274
    .line 275
    add-int/lit8 v10, v10, 0x1

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_3
    sub-int/2addr v10, v8

    .line 279
    if-lez v10, :cond_4

    .line 280
    .line 281
    add-int/2addr v10, v7

    .line 282
    invoke-virtual {v6, v7, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 283
    .line 284
    .line 285
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_5
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    const/4 v8, 0x1

    .line 293
    if-lez v7, :cond_6

    .line 294
    .line 295
    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 296
    .line 297
    .line 298
    move-result v7

    .line 299
    if-ne v7, v9, :cond_6

    .line 300
    .line 301
    invoke-virtual {v6, v4, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 302
    .line 303
    .line 304
    :cond_6
    const/4 v7, 0x0

    .line 305
    :goto_5
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    sub-int/2addr v10, v8

    .line 310
    const/16 v11, 0xa

    .line 311
    .line 312
    if-ge v7, v10, :cond_8

    .line 313
    .line 314
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 315
    .line 316
    .line 317
    move-result v10

    .line 318
    if-ne v10, v11, :cond_7

    .line 319
    .line 320
    add-int/lit8 v10, v7, 0x1

    .line 321
    .line 322
    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 323
    .line 324
    .line 325
    move-result v11

    .line 326
    if-ne v11, v9, :cond_7

    .line 327
    .line 328
    add-int/lit8 v11, v7, 0x2

    .line 329
    .line 330
    invoke-virtual {v6, v10, v11}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 331
    .line 332
    .line 333
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_8
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    if-lez v7, :cond_9

    .line 341
    .line 342
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 343
    .line 344
    .line 345
    move-result v7

    .line 346
    sub-int/2addr v7, v8

    .line 347
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    if-ne v7, v9, :cond_9

    .line 352
    .line 353
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 354
    .line 355
    .line 356
    move-result v7

    .line 357
    sub-int/2addr v7, v8

    .line 358
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 359
    .line 360
    .line 361
    move-result v10

    .line 362
    invoke-virtual {v6, v7, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 363
    .line 364
    .line 365
    :cond_9
    const/4 v7, 0x0

    .line 366
    :goto_6
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    sub-int/2addr v10, v8

    .line 371
    if-ge v7, v10, :cond_b

    .line 372
    .line 373
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 374
    .line 375
    .line 376
    move-result v10

    .line 377
    if-ne v10, v9, :cond_a

    .line 378
    .line 379
    add-int/lit8 v10, v7, 0x1

    .line 380
    .line 381
    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 382
    .line 383
    .line 384
    move-result v12

    .line 385
    if-ne v12, v11, :cond_a

    .line 386
    .line 387
    invoke-virtual {v6, v7, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 388
    .line 389
    .line 390
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 391
    .line 392
    goto :goto_6

    .line 393
    :cond_b
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 394
    .line 395
    .line 396
    move-result v7

    .line 397
    if-lez v7, :cond_c

    .line 398
    .line 399
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 400
    .line 401
    .line 402
    move-result v7

    .line 403
    sub-int/2addr v7, v8

    .line 404
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    if-ne v7, v11, :cond_c

    .line 409
    .line 410
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 411
    .line 412
    .line 413
    move-result v7

    .line 414
    sub-int/2addr v7, v8

    .line 415
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 416
    .line 417
    .line 418
    move-result v8

    .line 419
    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 420
    .line 421
    .line 422
    :cond_c
    iget v6, v5, Lo3/e;->c:F

    .line 423
    .line 424
    iput v6, v3, Lt1/a;->e:F

    .line 425
    .line 426
    iget v6, v5, Lo3/e;->d:I

    .line 427
    .line 428
    iput v6, v3, Lt1/a;->f:I

    .line 429
    .line 430
    iget v6, v5, Lo3/e;->e:I

    .line 431
    .line 432
    iput v6, v3, Lt1/a;->g:I

    .line 433
    .line 434
    iget v6, v5, Lo3/e;->b:F

    .line 435
    .line 436
    iput v6, v3, Lt1/a;->h:F

    .line 437
    .line 438
    iget v6, v5, Lo3/e;->f:F

    .line 439
    .line 440
    iput v6, v3, Lt1/a;->l:F

    .line 441
    .line 442
    iget v6, v5, Lo3/e;->i:F

    .line 443
    .line 444
    iput v6, v3, Lt1/a;->k:F

    .line 445
    .line 446
    iget v6, v5, Lo3/e;->h:I

    .line 447
    .line 448
    iput v6, v3, Lt1/a;->j:I

    .line 449
    .line 450
    iget v5, v5, Lo3/e;->j:I

    .line 451
    .line 452
    iput v5, v3, Lt1/a;->p:I

    .line 453
    .line 454
    invoke-virtual {v3}, Lt1/a;->a()Lt1/b;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    goto/16 :goto_1

    .line 462
    .line 463
    :cond_d
    return-object v1
.end method

.method public j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkf/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [J

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lkf/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Ljava/util/ArrayList;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lkf/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object p1, p0, Lkf/b;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p2

    .line 23
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p2
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lkf/b;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v0, p0, Lkf/b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lkf/b;->f:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lo9/a;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lkf/b;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p2, v1, p1, v0}, Lo9/a;->b(Lokhttp3/Response;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lkf/b;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lkf/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "FontRequest {mProviderAuthority: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lkf/b;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, ", mProviderPackage: "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lkf/b;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, ", mQuery: "

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lkf/b;->d:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ", mCertificates:"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    const/4 v2, 0x0

    .line 68
    :goto_0
    iget-object v3, p0, Lkf/b;->e:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v3, Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-ge v2, v4, :cond_1

    .line 77
    .line 78
    const-string v4, " ["

    .line 79
    .line 80
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Ljava/util/List;

    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-ge v4, v5, :cond_0

    .line 95
    .line 96
    const-string v5, " \""

    .line 97
    .line 98
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    check-cast v5, [B

    .line 106
    .line 107
    invoke-static {v5, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v5, "\""

    .line 115
    .line 116
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    add-int/lit8 v4, v4, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_0
    const-string v3, " ]"

    .line 123
    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    add-int/lit8 v2, v2, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_1
    const-string v1, "}mCertificatesArray: 0"

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    return-object v0

    .line 140
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v1, "Attribute{name=\'"

    .line 143
    .line 144
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lkf/b;->c:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v1, Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v1, "\', namespace=\'"

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Lkf/b;->b:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v1, Ljava/lang/String;

    .line 162
    .line 163
    const-string v2, "\'}"

    .line 164
    .line 165
    invoke-static {v1, v2, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    return-object v0

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
