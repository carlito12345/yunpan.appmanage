.class public abstract La2/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu7/y0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, La2/t1;->a:Lu7/y0;

    .line 12
    .line 13
    return-void
.end method

.method public static a(Landroid/media/AudioDeviceInfo;)Lu7/g0;
    .locals 5

    .line 1
    invoke-static {p0}, La2/b;->p(Landroid/media/AudioDeviceInfo;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/TreeSet;

    .line 6
    .line 7
    new-instance v1, La2/n;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2}, La2/n;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lj$/util/Comparator$-EL;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, La2/b;->j(Ljava/lang/Object;)Landroid/media/AudioProfile;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, La2/b;->e(Landroid/media/AudioProfile;)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x1

    .line 47
    if-ne v2, v3, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {v1}, La2/b;->A(Landroid/media/AudioProfile;)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {v2}, Lu1/f0;->D(I)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    invoke-static {v1}, La2/b;->z(Landroid/media/AudioProfile;)[I

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    array-length v2, v1

    .line 65
    const/4 v3, 0x0

    .line 66
    :goto_1
    if-ge v3, v2, :cond_0

    .line 67
    .line 68
    aget v4, v1, v3

    .line 69
    .line 70
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-static {v0}, Lu7/g0;->m(Ljava/util/Collection;)Lu7/g0;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method

.method public static b(Landroid/media/AudioDeviceInfo;)Lu7/g0;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x1

    .line 5
    invoke-static {p0}, La2/a;->c(Landroid/media/AudioDeviceInfo;)I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    invoke-static {v4}, Landroid/support/v4/media/session/b;->t(I)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    sget-object v5, La2/t1;->a:Lu7/y0;

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    return-object v5

    .line 18
    :cond_0
    invoke-static {p0}, La2/a;->c(Landroid/media/AudioDeviceInfo;)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-ne v4, v3, :cond_1

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    invoke-static {p0}, La2/a;->c(Landroid/media/AudioDeviceInfo;)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-ne v4, v1, :cond_3

    .line 38
    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v1, 0x24

    .line 42
    .line 43
    if-lt v0, v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getSpeakerLayoutChannelMask()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    if-eq p0, v3, :cond_2

    .line 52
    .line 53
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const-string p0, "Built-in speaker\'s getSpeakerLayoutChannelMask not usable, defaulting to stereo."

    .line 63
    .line 64
    invoke-static {p0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-object v5

    .line 68
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 69
    .line 70
    const/16 v6, 0x1f

    .line 71
    .line 72
    if-lt v4, v6, :cond_6

    .line 73
    .line 74
    invoke-static {p0}, La2/a;->c(Landroid/media/AudioDeviceInfo;)I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    invoke-static {v7}, Landroid/support/v4/media/session/b;->u(I)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_6

    .line 83
    .line 84
    invoke-static {p0}, La2/t1;->a(Landroid/media/AudioDeviceInfo;)Lu7/g0;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_4

    .line 93
    .line 94
    move-object v5, v0

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    invoke-static {p0}, La2/b;->C(Landroid/media/AudioDeviceInfo;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, La9/o;->K(Ljava/util/List;)Lu7/g0;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_5

    .line 109
    .line 110
    move-object v5, p0

    .line 111
    :cond_5
    :goto_1
    return-object v5

    .line 112
    :cond_6
    if-lt v4, v6, :cond_23

    .line 113
    .line 114
    invoke-static {p0}, La2/a;->c(Landroid/media/AudioDeviceInfo;)I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    invoke-static {v7}, Landroid/support/v4/media/session/b;->v(I)Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_23

    .line 123
    .line 124
    invoke-static {p0}, La2/t1;->a(Landroid/media/AudioDeviceInfo;)Lu7/g0;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-nez v7, :cond_7

    .line 133
    .line 134
    move-object v5, v6

    .line 135
    goto/16 :goto_8

    .line 136
    .line 137
    :cond_7
    invoke-static {p0}, La2/b;->C(Landroid/media/AudioDeviceInfo;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    const/16 v6, 0x22

    .line 142
    .line 143
    if-lt v4, v6, :cond_21

    .line 144
    .line 145
    if-lt v4, v6, :cond_20

    .line 146
    .line 147
    if-nez p0, :cond_8

    .line 148
    .line 149
    goto/16 :goto_6

    .line 150
    .line 151
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    :cond_9
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-eqz v8, :cond_1f

    .line 165
    .line 166
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-static {v8}, La2/b;->i(Ljava/lang/Object;)Landroid/media/AudioDescriptor;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-static {v8}, La2/b;->c(Landroid/media/AudioDescriptor;)I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    if-ne v9, v1, :cond_9

    .line 179
    .line 180
    invoke-static {v8}, La2/b;->y(Landroid/media/AudioDescriptor;)[B

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    array-length v9, v8

    .line 185
    const/4 v10, 0x3

    .line 186
    if-eq v9, v10, :cond_a

    .line 187
    .line 188
    new-instance v9, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v10, "Invalid SADB length: "

    .line 191
    .line 192
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    array-length v8, v8

    .line 196
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-static {v8}, Lu1/a;->p(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_a
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 208
    .line 209
    if-lt v9, v6, :cond_1d

    .line 210
    .line 211
    array-length v9, v8

    .line 212
    if-eq v9, v10, :cond_b

    .line 213
    .line 214
    goto/16 :goto_4

    .line 215
    .line 216
    :cond_b
    aget-byte v9, v8, v0

    .line 217
    .line 218
    and-int/lit8 v10, v9, 0x1

    .line 219
    .line 220
    if-eqz v10, :cond_c

    .line 221
    .line 222
    const/16 v10, 0xc

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_c
    const/4 v10, 0x0

    .line 226
    :goto_3
    and-int/lit8 v11, v9, 0x2

    .line 227
    .line 228
    if-eqz v11, :cond_d

    .line 229
    .line 230
    or-int/lit8 v10, v10, 0x20

    .line 231
    .line 232
    :cond_d
    and-int/lit8 v11, v9, 0x4

    .line 233
    .line 234
    if-eqz v11, :cond_e

    .line 235
    .line 236
    or-int/lit8 v10, v10, 0x10

    .line 237
    .line 238
    :cond_e
    and-int/lit8 v11, v9, 0x8

    .line 239
    .line 240
    if-eqz v11, :cond_f

    .line 241
    .line 242
    or-int/lit16 v10, v10, 0xc0

    .line 243
    .line 244
    :cond_f
    and-int/lit8 v11, v9, 0x10

    .line 245
    .line 246
    if-eqz v11, :cond_10

    .line 247
    .line 248
    or-int/lit16 v10, v10, 0x400

    .line 249
    .line 250
    :cond_10
    and-int/lit8 v11, v9, 0x20

    .line 251
    .line 252
    if-eqz v11, :cond_11

    .line 253
    .line 254
    or-int/lit16 v10, v10, 0x300

    .line 255
    .line 256
    :cond_11
    and-int/lit16 v9, v9, 0x80

    .line 257
    .line 258
    if-eqz v9, :cond_12

    .line 259
    .line 260
    const/high16 v9, 0xc000000

    .line 261
    .line 262
    or-int/2addr v10, v9

    .line 263
    :cond_12
    aget-byte v9, v8, v3

    .line 264
    .line 265
    and-int/lit8 v11, v9, 0x1

    .line 266
    .line 267
    if-eqz v11, :cond_13

    .line 268
    .line 269
    const v11, 0x14000

    .line 270
    .line 271
    .line 272
    or-int/2addr v10, v11

    .line 273
    :cond_13
    and-int/lit8 v11, v9, 0x2

    .line 274
    .line 275
    if-eqz v11, :cond_14

    .line 276
    .line 277
    or-int/lit16 v10, v10, 0x2000

    .line 278
    .line 279
    :cond_14
    and-int/lit8 v11, v9, 0x4

    .line 280
    .line 281
    if-eqz v11, :cond_15

    .line 282
    .line 283
    const v11, 0x8000

    .line 284
    .line 285
    .line 286
    or-int/2addr v10, v11

    .line 287
    :cond_15
    and-int/lit8 v11, v9, 0x8

    .line 288
    .line 289
    if-eqz v11, :cond_16

    .line 290
    .line 291
    or-int/lit16 v10, v10, 0x1800

    .line 292
    .line 293
    :cond_16
    and-int/lit8 v11, v9, 0x10

    .line 294
    .line 295
    if-eqz v11, :cond_17

    .line 296
    .line 297
    const/high16 v11, 0x2000000

    .line 298
    .line 299
    or-int/2addr v10, v11

    .line 300
    :cond_17
    and-int/lit8 v11, v9, 0x20

    .line 301
    .line 302
    if-eqz v11, :cond_18

    .line 303
    .line 304
    const/high16 v11, 0x40000

    .line 305
    .line 306
    or-int/2addr v10, v11

    .line 307
    :cond_18
    and-int/lit8 v11, v9, 0x40

    .line 308
    .line 309
    if-eqz v11, :cond_19

    .line 310
    .line 311
    or-int/lit16 v10, v10, 0x1800

    .line 312
    .line 313
    :cond_19
    and-int/lit16 v9, v9, 0x80

    .line 314
    .line 315
    if-eqz v9, :cond_1a

    .line 316
    .line 317
    const/high16 v9, 0x300000

    .line 318
    .line 319
    or-int/2addr v10, v9

    .line 320
    :cond_1a
    aget-byte v8, v8, v1

    .line 321
    .line 322
    and-int/lit8 v9, v8, 0x1

    .line 323
    .line 324
    if-eqz v9, :cond_1b

    .line 325
    .line 326
    const/high16 v9, 0xa0000

    .line 327
    .line 328
    or-int/2addr v10, v9

    .line 329
    :cond_1b
    and-int/lit8 v9, v8, 0x2

    .line 330
    .line 331
    if-eqz v9, :cond_1c

    .line 332
    .line 333
    const/high16 v9, 0x800000

    .line 334
    .line 335
    or-int/2addr v10, v9

    .line 336
    :cond_1c
    and-int/2addr v8, v2

    .line 337
    if-eqz v8, :cond_1e

    .line 338
    .line 339
    const/high16 v8, 0x1400000

    .line 340
    .line 341
    or-int/2addr v10, v8

    .line 342
    goto :goto_5

    .line 343
    :cond_1d
    :goto_4
    const/4 v10, 0x0

    .line 344
    :cond_1e
    :goto_5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object v8

    .line 348
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    goto/16 :goto_2

    .line 352
    .line 353
    :cond_1f
    new-instance v1, La2/m;

    .line 354
    .line 355
    invoke-direct {v1, v0}, La2/m;-><init>(I)V

    .line 356
    .line 357
    .line 358
    invoke-static {v4, v1}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 359
    .line 360
    .line 361
    invoke-static {v4}, Lu7/g0;->m(Ljava/util/Collection;)Lu7/g0;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    goto :goto_7

    .line 366
    :cond_20
    :goto_6
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 367
    .line 368
    sget-object v0, Lu7/y0;->e:Lu7/y0;

    .line 369
    .line 370
    :goto_7
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-nez v1, :cond_21

    .line 375
    .line 376
    move-object v5, v0

    .line 377
    goto :goto_8

    .line 378
    :cond_21
    invoke-static {p0}, La9/o;->K(Ljava/util/List;)Lu7/g0;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-nez v0, :cond_22

    .line 387
    .line 388
    move-object v5, p0

    .line 389
    :cond_22
    :goto_8
    return-object v5

    .line 390
    :cond_23
    if-lt v4, v6, :cond_24

    .line 391
    .line 392
    invoke-static {p0}, La2/a;->c(Landroid/media/AudioDeviceInfo;)I

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    invoke-static {v0}, Landroid/support/v4/media/session/b;->w(I)Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-eqz v0, :cond_24

    .line 401
    .line 402
    invoke-static {p0}, La2/t1;->a(Landroid/media/AudioDeviceInfo;)Lu7/g0;

    .line 403
    .line 404
    .line 405
    move-result-object p0

    .line 406
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-nez v0, :cond_24

    .line 411
    .line 412
    move-object v5, p0

    .line 413
    :cond_24
    return-object v5
.end method
