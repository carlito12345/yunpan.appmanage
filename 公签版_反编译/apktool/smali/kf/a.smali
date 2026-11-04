.class public final Lkf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/HashSet;


# instance fields
.field public a:Ll2/l0;

.field public b:[Ljava/lang/String;

.field public final c:Ljava/nio/ByteBuffer;

.field public d:Lkf/e;

.field public final e:Lmf/h;

.field public f:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    new-array v1, v1, [Ljava/lang/String;

    .line 5
    .line 6
    const-string v2, "screenOrientation"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    const-string v2, "configChanges"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    aput-object v2, v1, v3

    .line 15
    .line 16
    const-string v2, "windowSoftInputMode"

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    aput-object v2, v1, v3

    .line 20
    .line 21
    const-string v2, "launchMode"

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    aput-object v2, v1, v3

    .line 25
    .line 26
    const-string v2, "installLocation"

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    aput-object v2, v1, v3

    .line 30
    .line 31
    const-string v2, "protectionLevel"

    .line 32
    .line 33
    const/4 v3, 0x5

    .line 34
    aput-object v2, v1, v3

    .line 35
    .line 36
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lkf/a;->g:Ljava/util/HashSet;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lmf/h;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 5
    .line 6
    sget-object v1, Lqf/a;->a:Ljava/util/Locale;

    .line 7
    .line 8
    iput-object v1, p0, Lkf/a;->f:Ljava/util/Locale;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lkf/a;->c:Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lkf/a;->e:Lmf/h;

    .line 20
    .line 21
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x4

    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    const/16 v3, 0x10

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x3

    .line 15
    const/4 v6, 0x2

    .line 16
    const/4 v7, 0x1

    .line 17
    const/4 v8, -0x1

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v9

    .line 22
    sparse-switch v9, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :sswitch_0
    const-string v9, "protectionLevel"

    .line 27
    .line 28
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v8, 0x5

    .line 36
    goto :goto_0

    .line 37
    :sswitch_1
    const-string v9, "launchMode"

    .line 38
    .line 39
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v8, 0x4

    .line 47
    goto :goto_0

    .line 48
    :sswitch_2
    const-string v9, "screenOrientation"

    .line 49
    .line 50
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v8, 0x3

    .line 58
    goto :goto_0

    .line 59
    :sswitch_3
    const-string v9, "configChanges"

    .line 60
    .line 61
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/4 v8, 0x2

    .line 69
    goto :goto_0

    .line 70
    :sswitch_4
    const-string v9, "installLocation"

    .line 71
    .line 72
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-nez p0, :cond_4

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const/4 v8, 0x1

    .line 80
    goto :goto_0

    .line 81
    :sswitch_5
    const-string v9, "windowSoftInputMode"

    .line 82
    .line 83
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-nez p0, :cond_5

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    const/4 v8, 0x0

    .line 91
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 92
    .line 93
    .line 94
    return-object p1

    .line 95
    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {p0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .line 99
    .line 100
    and-int/lit8 p1, v4, 0x10

    .line 101
    .line 102
    if-eqz p1, :cond_6

    .line 103
    .line 104
    xor-int/2addr v4, v3

    .line 105
    const-string p1, "system"

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    :cond_6
    and-int/lit8 p1, v4, 0x20

    .line 111
    .line 112
    if-eqz p1, :cond_7

    .line 113
    .line 114
    xor-int/2addr v4, v2

    .line 115
    const-string p1, "development"

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_7
    if-eqz v4, :cond_b

    .line 121
    .line 122
    if-eq v4, v7, :cond_a

    .line 123
    .line 124
    if-eq v4, v6, :cond_9

    .line 125
    .line 126
    if-eq v4, v5, :cond_8

    .line 127
    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v0, "ProtectionLevel:"

    .line 131
    .line 132
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_8
    const-string p1, "signatureOrSystem"

    .line 151
    .line 152
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_9
    const-string p1, "signature"

    .line 157
    .line 158
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_a
    const-string p1, "dangerous"

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_b
    const-string p1, "normal"

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    :goto_1
    invoke-static {p0}, Landroid/support/v4/media/session/b;->x(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    return-object p0

    .line 178
    :pswitch_1
    if-eqz v4, :cond_f

    .line 179
    .line 180
    if-eq v4, v7, :cond_e

    .line 181
    .line 182
    if-eq v4, v6, :cond_d

    .line 183
    .line 184
    if-eq v4, v5, :cond_c

    .line 185
    .line 186
    new-instance p0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string p1, "LaunchMode:"

    .line 189
    .line 190
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v4, p0}, Lg/b;->e(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    goto :goto_2

    .line 198
    :cond_c
    const-string p0, "singleInstance"

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_d
    const-string p0, "singleTask"

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_e
    const-string p0, "singleTop"

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_f
    const-string p0, "standard"

    .line 208
    .line 209
    :goto_2
    return-object p0

    .line 210
    :pswitch_2
    packed-switch v4, :pswitch_data_1

    .line 211
    .line 212
    .line 213
    new-instance p0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string p1, "ScreenOrientation:"

    .line 216
    .line 217
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v4, p0}, Lg/b;->e(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    goto :goto_3

    .line 225
    :pswitch_3
    const-string p0, "locked"

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :pswitch_4
    const-string p0, "fullUser"

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :pswitch_5
    const-string p0, "userPortrait"

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :pswitch_6
    const-string p0, "userLandscape"

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :pswitch_7
    const-string p0, "fullSensor"

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :pswitch_8
    const-string p0, "reversePortrait"

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :pswitch_9
    const-string p0, "reverseLandscape"

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :pswitch_a
    const-string p0, "sensorPortrait"

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :pswitch_b
    const-string p0, "sensorLandscape"

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :pswitch_c
    const-string p0, "nosensor"

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :pswitch_d
    const-string p0, "sensor"

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :pswitch_e
    const-string p0, "behind"

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :pswitch_f
    const-string p0, "user"

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :pswitch_10
    const-string p0, "portrait"

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :pswitch_11
    const-string p0, "landscape"

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :pswitch_12
    const-string p0, "unspecified"

    .line 271
    .line 272
    :goto_3
    return-object p0

    .line 273
    :pswitch_13
    new-instance p0, Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .line 277
    .line 278
    and-int/lit16 p1, v4, 0x1000

    .line 279
    .line 280
    if-eqz p1, :cond_10

    .line 281
    .line 282
    const-string p1, "density"

    .line 283
    .line 284
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    goto/16 :goto_4

    .line 288
    .line 289
    :cond_10
    const/high16 p1, 0x40000000    # 2.0f

    .line 290
    .line 291
    and-int/2addr p1, v4

    .line 292
    if-eqz p1, :cond_11

    .line 293
    .line 294
    const-string p1, "fontScale"

    .line 295
    .line 296
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    goto/16 :goto_4

    .line 300
    .line 301
    :cond_11
    and-int/lit8 p1, v4, 0x10

    .line 302
    .line 303
    if-eqz p1, :cond_12

    .line 304
    .line 305
    const-string p1, "keyboard"

    .line 306
    .line 307
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    goto/16 :goto_4

    .line 311
    .line 312
    :cond_12
    and-int/lit8 p1, v4, 0x20

    .line 313
    .line 314
    if-eqz p1, :cond_13

    .line 315
    .line 316
    const-string p1, "keyboardHidden"

    .line 317
    .line 318
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    goto/16 :goto_4

    .line 322
    .line 323
    :cond_13
    and-int/lit16 p1, v4, 0x2000

    .line 324
    .line 325
    if-eqz p1, :cond_14

    .line 326
    .line 327
    const-string p1, "direction"

    .line 328
    .line 329
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    goto/16 :goto_4

    .line 333
    .line 334
    :cond_14
    and-int/lit8 p1, v4, 0x4

    .line 335
    .line 336
    if-eqz p1, :cond_15

    .line 337
    .line 338
    const-string p1, "locale"

    .line 339
    .line 340
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_15
    and-int/lit8 p1, v4, 0x1

    .line 345
    .line 346
    if-eqz p1, :cond_16

    .line 347
    .line 348
    const-string p1, "mcc"

    .line 349
    .line 350
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_16
    and-int/lit8 p1, v4, 0x2

    .line 355
    .line 356
    if-eqz p1, :cond_17

    .line 357
    .line 358
    const-string p1, "mnc"

    .line 359
    .line 360
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    goto :goto_4

    .line 364
    :cond_17
    and-int/lit8 p1, v4, 0x40

    .line 365
    .line 366
    if-eqz p1, :cond_18

    .line 367
    .line 368
    const-string p1, "navigation"

    .line 369
    .line 370
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    goto :goto_4

    .line 374
    :cond_18
    and-int/lit16 p1, v4, 0x80

    .line 375
    .line 376
    if-eqz p1, :cond_19

    .line 377
    .line 378
    const-string p1, "orientation"

    .line 379
    .line 380
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    goto :goto_4

    .line 384
    :cond_19
    and-int/lit16 p1, v4, 0x100

    .line 385
    .line 386
    if-eqz p1, :cond_1a

    .line 387
    .line 388
    const-string p1, "screenLayout"

    .line 389
    .line 390
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    goto :goto_4

    .line 394
    :cond_1a
    and-int/lit16 p1, v4, 0x400

    .line 395
    .line 396
    if-eqz p1, :cond_1b

    .line 397
    .line 398
    const-string p1, "screenSize"

    .line 399
    .line 400
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    goto :goto_4

    .line 404
    :cond_1b
    and-int/lit16 p1, v4, 0x800

    .line 405
    .line 406
    if-eqz p1, :cond_1c

    .line 407
    .line 408
    const-string p1, "smallestScreenSize"

    .line 409
    .line 410
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    goto :goto_4

    .line 414
    :cond_1c
    and-int/lit8 p1, v4, 0x8

    .line 415
    .line 416
    if-eqz p1, :cond_1d

    .line 417
    .line 418
    const-string p1, "touchscreen"

    .line 419
    .line 420
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    goto :goto_4

    .line 424
    :cond_1d
    and-int/lit16 p1, v4, 0x200

    .line 425
    .line 426
    if-eqz p1, :cond_1e

    .line 427
    .line 428
    const-string p1, "uiMode"

    .line 429
    .line 430
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    :cond_1e
    :goto_4
    invoke-static {p0}, Landroid/support/v4/media/session/b;->x(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p0

    .line 437
    return-object p0

    .line 438
    :pswitch_14
    if-eqz v4, :cond_21

    .line 439
    .line 440
    if-eq v4, v7, :cond_20

    .line 441
    .line 442
    if-eq v4, v6, :cond_1f

    .line 443
    .line 444
    new-instance p0, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    const-string p1, "installLocation:"

    .line 447
    .line 448
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    invoke-static {v4, p0}, Lg/b;->e(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object p0

    .line 455
    goto :goto_5

    .line 456
    :cond_1f
    const-string p0, "preferExternal"

    .line 457
    .line 458
    goto :goto_5

    .line 459
    :cond_20
    const-string p0, "internalOnly"

    .line 460
    .line 461
    goto :goto_5

    .line 462
    :cond_21
    const-string p0, "auto"

    .line 463
    .line 464
    :goto_5
    return-object p0

    .line 465
    :pswitch_15
    and-int/lit16 p0, v4, 0xf0

    .line 466
    .line 467
    and-int/lit8 p1, v4, 0xf

    .line 468
    .line 469
    new-instance v4, Ljava/util/ArrayList;

    .line 470
    .line 471
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 472
    .line 473
    .line 474
    if-eqz p0, :cond_25

    .line 475
    .line 476
    if-eq p0, v3, :cond_24

    .line 477
    .line 478
    if-eq p0, v2, :cond_23

    .line 479
    .line 480
    const/16 v2, 0x30

    .line 481
    .line 482
    if-eq p0, v2, :cond_22

    .line 483
    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    .line 485
    .line 486
    const-string v3, "WindowInputModeAdjust:"

    .line 487
    .line 488
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object p0

    .line 495
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object p0

    .line 502
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    goto :goto_6

    .line 506
    :cond_22
    const-string p0, "adjustNothing"

    .line 507
    .line 508
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    goto :goto_6

    .line 512
    :cond_23
    const-string p0, "adjustPan"

    .line 513
    .line 514
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    goto :goto_6

    .line 518
    :cond_24
    const-string p0, "adjustResize"

    .line 519
    .line 520
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    :cond_25
    :goto_6
    if-eqz p1, :cond_2b

    .line 524
    .line 525
    if-eq p1, v7, :cond_2a

    .line 526
    .line 527
    if-eq p1, v6, :cond_29

    .line 528
    .line 529
    if-eq p1, v5, :cond_28

    .line 530
    .line 531
    if-eq p1, v1, :cond_27

    .line 532
    .line 533
    if-eq p1, v0, :cond_26

    .line 534
    .line 535
    new-instance p0, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    const-string v0, "WindowInputModeState:"

    .line 538
    .line 539
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object p1

    .line 546
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object p0

    .line 553
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    goto :goto_7

    .line 557
    :cond_26
    const-string p0, "stateAlwaysVisible"

    .line 558
    .line 559
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    goto :goto_7

    .line 563
    :cond_27
    const-string p0, "stateVisible"

    .line 564
    .line 565
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    goto :goto_7

    .line 569
    :cond_28
    const-string p0, "stateAlwaysHidden"

    .line 570
    .line 571
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    goto :goto_7

    .line 575
    :cond_29
    const-string p0, "stateHidden"

    .line 576
    .line 577
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    goto :goto_7

    .line 581
    :cond_2a
    const-string p0, "stateUnchanged"

    .line 582
    .line 583
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    :cond_2b
    :goto_7
    invoke-static {v4}, Landroid/support/v4/media/session/b;->x(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object p0

    .line 590
    return-object p0

    .line 591
    :sswitch_data_0
    .sparse-switch
        -0x7fad7a8d -> :sswitch_5
        0x5525e70 -> :sswitch_4
        0xd28a921 -> :sswitch_3
        0xd90a1c4 -> :sswitch_2
        0x208ebff6 -> :sswitch_1
        0x7cf7702b -> :sswitch_0
    .end sparse-switch

    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    :pswitch_data_1
    .packed-switch -0x1
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
    .end packed-switch
.end method


# virtual methods
.method public final b()Llf/a;
    .locals 10

    .line 1
    iget-object v0, p0, Lkf/a;->c:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    int-to-long v1, v1

    .line 16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const v4, 0xffff

    .line 21
    .line 22
    .line 23
    and-int/2addr v3, v4

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    and-int/2addr v4, v5

    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    int-to-long v5, v5

    .line 34
    const-wide v7, 0xffffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    and-long/2addr v5, v7

    .line 40
    if-eqz v3, :cond_4

    .line 41
    .line 42
    const/4 v9, 0x1

    .line 43
    if-eq v3, v9, :cond_3

    .line 44
    .line 45
    const/4 v7, 0x3

    .line 46
    if-eq v3, v7, :cond_2

    .line 47
    .line 48
    const/16 v7, 0x180

    .line 49
    .line 50
    if-eq v3, v7, :cond_1

    .line 51
    .line 52
    packed-switch v3, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    new-instance v0, Landroidx/fragment/app/b0;

    .line 56
    .line 57
    const-string v1, "Unexpected chunk type:"

    .line 58
    .line 59
    invoke-static {v3, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const/4 v2, 0x6

    .line 64
    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :pswitch_0
    new-instance v7, Lmf/b;

    .line 69
    .line 70
    invoke-direct {v7, v3, v4, v5, v6}, Lmf/b;-><init>(IIJ)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 77
    .line 78
    .line 79
    int-to-long v3, v4

    .line 80
    add-long/2addr v1, v3

    .line 81
    invoke-static {v0, v1, v2}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 82
    .line 83
    .line 84
    return-object v7

    .line 85
    :cond_1
    int-to-long v7, v4

    .line 86
    add-long/2addr v1, v7

    .line 87
    invoke-static {v0, v1, v2}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Lof/b;

    .line 91
    .line 92
    invoke-direct {v0, v3, v4, v5, v6}, Lof/b;-><init>(IIJ)V

    .line 93
    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_2
    new-instance v0, Lmf/b;

    .line 97
    .line 98
    invoke-direct {v0, v3, v4, v5, v6}, Lmf/b;-><init>(IIJ)V

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_3
    new-instance v3, Llf/g;

    .line 103
    .line 104
    invoke-direct {v3, v4, v5, v6}, Llf/g;-><init>(IJ)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    int-to-long v5, v5

    .line 112
    and-long/2addr v5, v7

    .line 113
    invoke-static {v5, v6}, Lcom/bumptech/glide/c;->r(J)I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    iput v5, v3, Llf/g;->d:I

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    int-to-long v5, v5

    .line 124
    and-long/2addr v5, v7

    .line 125
    invoke-static {v5, v6}, Lcom/bumptech/glide/c;->r(J)I

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    int-to-long v5, v5

    .line 133
    and-long/2addr v5, v7

    .line 134
    iput-wide v5, v3, Llf/g;->e:J

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    int-to-long v5, v5

    .line 141
    and-long/2addr v5, v7

    .line 142
    iput-wide v5, v3, Llf/g;->f:J

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 145
    .line 146
    .line 147
    int-to-long v4, v4

    .line 148
    add-long/2addr v1, v4

    .line 149
    invoke-static {v0, v1, v2}, Ls1/g;->P(Ljava/nio/ByteBuffer;J)V

    .line 150
    .line 151
    .line 152
    return-object v3

    .line 153
    :cond_4
    new-instance v0, Lmf/b;

    .line 154
    .line 155
    invoke-direct {v0, v3, v4, v5, v6}, Lmf/b;-><init>(IIJ)V

    .line 156
    .line 157
    .line 158
    return-object v0

    .line 159
    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
