.class public abstract Lo8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;

.field public static final i:[Ljava/lang/String;

.field public static final j:I

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const-string v2, "ro.miui.build.region"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    const-string v2, "ro.miui.region"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    aput-object v2, v1, v4

    .line 13
    .line 14
    const-string v2, "ro.vendor.miui.region"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    aput-object v2, v1, v5

    .line 18
    .line 19
    const-string v2, "ro.mi.os.version.incremental"

    .line 20
    .line 21
    new-array v6, v0, [Ljava/lang/String;

    .line 22
    .line 23
    const-string v7, "ro.mi.os.version.name"

    .line 24
    .line 25
    aput-object v7, v6, v3

    .line 26
    .line 27
    const-string v7, "ro.mi.os.version.code"

    .line 28
    .line 29
    aput-object v7, v6, v4

    .line 30
    .line 31
    aput-object v2, v6, v5

    .line 32
    .line 33
    sput-object v1, Lo8/b;->a:[Ljava/lang/String;

    .line 34
    .line 35
    new-array v7, v5, [Ljava/lang/String;

    .line 36
    .line 37
    const-string v8, "ro.miui.ui.version.name"

    .line 38
    .line 39
    aput-object v8, v7, v3

    .line 40
    .line 41
    const-string v8, "ro.miui.ui.version.code"

    .line 42
    .line 43
    aput-object v8, v7, v4

    .line 44
    .line 45
    sput-object v1, Lo8/b;->b:[Ljava/lang/String;

    .line 46
    .line 47
    const-string v1, "ro.build.display.id"

    .line 48
    .line 49
    const-string v8, "ro.build.version.oplusrom"

    .line 50
    .line 51
    const/4 v9, 0x5

    .line 52
    new-array v10, v9, [Ljava/lang/String;

    .line 53
    .line 54
    aput-object v1, v10, v3

    .line 55
    .line 56
    const-string v11, "ro.build.display.id.show"

    .line 57
    .line 58
    aput-object v11, v10, v4

    .line 59
    .line 60
    const-string v11, "persist.sys.oplus.ota_ver_display"

    .line 61
    .line 62
    aput-object v11, v10, v5

    .line 63
    .line 64
    aput-object v8, v10, v0

    .line 65
    .line 66
    const-string v11, "ro.build.version.oplusrom.confidential"

    .line 67
    .line 68
    const/4 v12, 0x4

    .line 69
    aput-object v11, v10, v12

    .line 70
    .line 71
    const/4 v11, 0x7

    .line 72
    new-array v13, v11, [Ljava/lang/String;

    .line 73
    .line 74
    const-string v14, "ro.vivo.product.version"

    .line 75
    .line 76
    aput-object v14, v13, v3

    .line 77
    .line 78
    const-string v14, "ro.vivo.default.version"

    .line 79
    .line 80
    aput-object v14, v13, v4

    .line 81
    .line 82
    const-string v14, "ro.vivo.build.version.incremental"

    .line 83
    .line 84
    aput-object v14, v13, v5

    .line 85
    .line 86
    const-string v14, "ro.vivo.product.version.incremental"

    .line 87
    .line 88
    aput-object v14, v13, v0

    .line 89
    .line 90
    const-string v14, "ro.vivo.build.version"

    .line 91
    .line 92
    aput-object v14, v13, v12

    .line 93
    .line 94
    const-string v14, "ro.vivo.system.product.version"

    .line 95
    .line 96
    aput-object v14, v13, v9

    .line 97
    .line 98
    const-string v14, "ro.build.software.version"

    .line 99
    .line 100
    const/4 v15, 0x6

    .line 101
    aput-object v14, v13, v15

    .line 102
    .line 103
    new-array v14, v5, [Ljava/lang/String;

    .line 104
    .line 105
    const-string v16, "msc.config.magic.version"

    .line 106
    .line 107
    aput-object v16, v14, v3

    .line 108
    .line 109
    const-string v16, "ro.build.version.magic"

    .line 110
    .line 111
    aput-object v16, v14, v4

    .line 112
    .line 113
    const-string v16, "ro.sys.anco.product.software.version"

    .line 114
    .line 115
    new-array v11, v12, [Ljava/lang/String;

    .line 116
    .line 117
    const-string v18, "ro.product.anco.devicetype"

    .line 118
    .line 119
    aput-object v18, v11, v3

    .line 120
    .line 121
    aput-object v16, v11, v4

    .line 122
    .line 123
    const-string v18, "ro.product.os.dist.anco.apiversion"

    .line 124
    .line 125
    aput-object v18, v11, v5

    .line 126
    .line 127
    const-string v18, "ro.product.os.dist.anco.releasetype"

    .line 128
    .line 129
    aput-object v18, v11, v0

    .line 130
    .line 131
    const-string v18, "persist.sys.hiview.base_version"

    .line 132
    .line 133
    const-string v19, "ro.comp.hl.product_base_version"

    .line 134
    .line 135
    new-array v15, v12, [Ljava/lang/String;

    .line 136
    .line 137
    const-string v21, "ro.honor.build.display.id"

    .line 138
    .line 139
    aput-object v21, v15, v3

    .line 140
    .line 141
    aput-object v18, v15, v4

    .line 142
    .line 143
    aput-object v19, v15, v5

    .line 144
    .line 145
    aput-object v1, v15, v0

    .line 146
    .line 147
    new-array v9, v12, [Ljava/lang/String;

    .line 148
    .line 149
    const-string v22, "ro.huawei.build.display.id"

    .line 150
    .line 151
    aput-object v22, v9, v3

    .line 152
    .line 153
    aput-object v19, v9, v4

    .line 154
    .line 155
    aput-object v18, v9, v5

    .line 156
    .line 157
    const-string v18, "hw_sc.build.platform.version"

    .line 158
    .line 159
    aput-object v18, v9, v0

    .line 160
    .line 161
    sput-object v9, Lo8/b;->c:[Ljava/lang/String;

    .line 162
    .line 163
    new-array v12, v5, [Ljava/lang/String;

    .line 164
    .line 165
    const-string v19, "ro.build.ohos.devicetype"

    .line 166
    .line 167
    aput-object v19, v12, v3

    .line 168
    .line 169
    const-string v19, "persist.sys.ohos.osd.cloud.switch"

    .line 170
    .line 171
    aput-object v19, v12, v4

    .line 172
    .line 173
    new-array v0, v5, [Ljava/lang/String;

    .line 174
    .line 175
    const-string v22, "ro.flyme.published"

    .line 176
    .line 177
    aput-object v22, v0, v3

    .line 178
    .line 179
    const-string v22, "ro.flyme.version.id"

    .line 180
    .line 181
    aput-object v22, v0, v4

    .line 182
    .line 183
    sput-object v0, Lo8/b;->d:[Ljava/lang/String;

    .line 184
    .line 185
    const-string v0, "ro.smartisan.version"

    .line 186
    .line 187
    new-array v4, v5, [Ljava/lang/String;

    .line 188
    .line 189
    const-string v23, "ro.smartisan.sa"

    .line 190
    .line 191
    aput-object v23, v4, v3

    .line 192
    .line 193
    const/16 v22, 0x1

    .line 194
    .line 195
    aput-object v0, v4, v22

    .line 196
    .line 197
    sput-object v4, Lo8/b;->e:[Ljava/lang/String;

    .line 198
    .line 199
    const/16 v4, 0x8

    .line 200
    .line 201
    new-array v4, v4, [Ljava/lang/String;

    .line 202
    .line 203
    const-string v23, "ro.letv.release.version"

    .line 204
    .line 205
    aput-object v23, v4, v3

    .line 206
    .line 207
    const-string v24, "ro.letv.release.version_date"

    .line 208
    .line 209
    aput-object v24, v4, v22

    .line 210
    .line 211
    const-string v24, "ro.product.letv_model"

    .line 212
    .line 213
    aput-object v24, v4, v5

    .line 214
    .line 215
    const-string v24, "ro.product.letv_name"

    .line 216
    .line 217
    const/16 v19, 0x3

    .line 218
    .line 219
    aput-object v24, v4, v19

    .line 220
    .line 221
    const-string v24, "sys.letv.fmodelaid"

    .line 222
    .line 223
    const/16 v18, 0x4

    .line 224
    .line 225
    aput-object v24, v4, v18

    .line 226
    .line 227
    const-string v24, "persist.sys.leui.bootreason"

    .line 228
    .line 229
    const/16 v21, 0x5

    .line 230
    .line 231
    aput-object v24, v4, v21

    .line 232
    .line 233
    const-string v24, "ro.config.leui_ringtone_slot2"

    .line 234
    .line 235
    const/16 v20, 0x6

    .line 236
    .line 237
    aput-object v24, v4, v20

    .line 238
    .line 239
    const-string v20, "ro.leui_oem_unlock_enable"

    .line 240
    .line 241
    const/16 v17, 0x7

    .line 242
    .line 243
    aput-object v20, v4, v17

    .line 244
    .line 245
    sput-object v4, Lo8/b;->f:[Ljava/lang/String;

    .line 246
    .line 247
    new-array v4, v5, [Ljava/lang/String;

    .line 248
    .line 249
    const-string v17, "ro.config.lgsi.fp.incremental"

    .line 250
    .line 251
    aput-object v17, v4, v3

    .line 252
    .line 253
    const-string v17, "ro.config.lgsi.os.version"

    .line 254
    .line 255
    const/16 v20, 0x1

    .line 256
    .line 257
    aput-object v17, v4, v20

    .line 258
    .line 259
    sput-object v4, Lo8/b;->g:[Ljava/lang/String;

    .line 260
    .line 261
    const-string v4, "ro.com.zui.version"

    .line 262
    .line 263
    const/4 v5, 0x5

    .line 264
    move-object/from16 v24, v0

    .line 265
    .line 266
    new-array v0, v5, [Ljava/lang/String;

    .line 267
    .line 268
    aput-object v4, v0, v3

    .line 269
    .line 270
    const-string v5, "ro.zui.version.status"

    .line 271
    .line 272
    aput-object v5, v0, v20

    .line 273
    .line 274
    const-string v5, "ro.zui.hardware.displayid"

    .line 275
    .line 276
    const/16 v17, 0x2

    .line 277
    .line 278
    aput-object v5, v0, v17

    .line 279
    .line 280
    const-string v5, "persist.radio.zui.feature"

    .line 281
    .line 282
    const/4 v3, 0x3

    .line 283
    aput-object v5, v0, v3

    .line 284
    .line 285
    const-string v5, "ro.config.zuisdk.enabled"

    .line 286
    .line 287
    const/16 v18, 0x4

    .line 288
    .line 289
    aput-object v5, v0, v18

    .line 290
    .line 291
    sput-object v0, Lo8/b;->h:[Ljava/lang/String;

    .line 292
    .line 293
    new-array v0, v3, [Ljava/lang/String;

    .line 294
    .line 295
    const-string v3, "ro.os.ota.version"

    .line 296
    .line 297
    const/4 v5, 0x0

    .line 298
    aput-object v3, v0, v5

    .line 299
    .line 300
    const-string v3, "ro.system_ext.ota.version"

    .line 301
    .line 302
    const/4 v5, 0x1

    .line 303
    aput-object v3, v0, v5

    .line 304
    .line 305
    const-string v3, "persist.sys.monitor.ota"

    .line 306
    .line 307
    const/16 v17, 0x2

    .line 308
    .line 309
    aput-object v3, v0, v17

    .line 310
    .line 311
    sput-object v0, Lo8/b;->i:[Ljava/lang/String;

    .line 312
    .line 313
    invoke-static {v6}, Lcom/bumptech/glide/d;->J([Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    const-string v3, "ro.build.version.incremental"

    .line 318
    .line 319
    if-eqz v0, :cond_0

    .line 320
    .line 321
    const v0, -0x4a6b0ad0

    .line 322
    .line 323
    .line 324
    sput v0, Lo8/b;->j:I

    .line 325
    .line 326
    const-string v0, "HyperOS"

    .line 327
    .line 328
    sput-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 329
    .line 330
    new-array v0, v5, [Ljava/lang/String;

    .line 331
    .line 332
    const/4 v6, 0x0

    .line 333
    aput-object v2, v0, v6

    .line 334
    .line 335
    invoke-static {v0}, Lo8/b;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 340
    .line 341
    goto :goto_0

    .line 342
    :cond_0
    const/4 v6, 0x0

    .line 343
    invoke-static {v7}, Lcom/bumptech/glide/d;->J([Ljava/lang/String;)Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-eqz v0, :cond_1

    .line 348
    .line 349
    const v0, 0x241d30

    .line 350
    .line 351
    .line 352
    sput v0, Lo8/b;->j:I

    .line 353
    .line 354
    const-string v0, "MIUI"

    .line 355
    .line 356
    sput-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 357
    .line 358
    new-array v0, v5, [Ljava/lang/String;

    .line 359
    .line 360
    aput-object v3, v0, v6

    .line 361
    .line 362
    invoke-static {v0}, Lo8/b;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 367
    .line 368
    :cond_1
    :goto_0
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 369
    .line 370
    if-nez v0, :cond_4

    .line 371
    .line 372
    const-string v0, "ro.build.version.realmeui"

    .line 373
    .line 374
    invoke-static {v0}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-nez v2, :cond_2

    .line 383
    .line 384
    const v2, -0x33399336

    .line 385
    .line 386
    .line 387
    sput v2, Lo8/b;->j:I

    .line 388
    .line 389
    const-string v2, "realmeUI"

    .line 390
    .line 391
    sput-object v2, Lo8/b;->k:Ljava/lang/String;

    .line 392
    .line 393
    invoke-static {v0}, Lo8/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 398
    .line 399
    goto :goto_1

    .line 400
    :cond_2
    invoke-static {v8}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    const-string v2, "ColorOS"

    .line 409
    .line 410
    const v5, -0x642e7b99

    .line 411
    .line 412
    .line 413
    if-nez v0, :cond_3

    .line 414
    .line 415
    sput v5, Lo8/b;->j:I

    .line 416
    .line 417
    sput-object v2, Lo8/b;->k:Ljava/lang/String;

    .line 418
    .line 419
    invoke-static {v10}, Lo8/b;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 424
    .line 425
    goto :goto_1

    .line 426
    :cond_3
    const-string v0, "ro.build.version.opporom"

    .line 427
    .line 428
    invoke-static {v0}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 433
    .line 434
    .line 435
    move-result v6

    .line 436
    if-nez v6, :cond_4

    .line 437
    .line 438
    sput v5, Lo8/b;->j:I

    .line 439
    .line 440
    sput-object v2, Lo8/b;->k:Ljava/lang/String;

    .line 441
    .line 442
    invoke-static {v0}, Lo8/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 447
    .line 448
    :cond_4
    :goto_1
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 449
    .line 450
    if-nez v0, :cond_6

    .line 451
    .line 452
    const-string v0, "ro.vivo.os.build.display.id"

    .line 453
    .line 454
    invoke-static {v0}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    if-nez v5, :cond_6

    .line 463
    .line 464
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    const-string v6, "origin"

    .line 469
    .line 470
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 471
    .line 472
    .line 473
    move-result v5

    .line 474
    if-eqz v5, :cond_5

    .line 475
    .line 476
    const v0, 0x560cebaa

    .line 477
    .line 478
    .line 479
    sput v0, Lo8/b;->j:I

    .line 480
    .line 481
    const-string v0, "OriginOS"

    .line 482
    .line 483
    sput-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 484
    .line 485
    invoke-static {v13}, Lo8/b;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 490
    .line 491
    goto :goto_2

    .line 492
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    const-string v5, "funtouch"

    .line 497
    .line 498
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    if-eqz v2, :cond_6

    .line 503
    .line 504
    const v2, -0x1186f8dc    # -1.92676E28f

    .line 505
    .line 506
    .line 507
    sput v2, Lo8/b;->j:I

    .line 508
    .line 509
    const-string v2, "FuntouchOS"

    .line 510
    .line 511
    sput-object v2, Lo8/b;->k:Ljava/lang/String;

    .line 512
    .line 513
    const/4 v2, 0x1

    .line 514
    new-array v5, v2, [Ljava/lang/String;

    .line 515
    .line 516
    const/4 v2, 0x0

    .line 517
    aput-object v0, v5, v2

    .line 518
    .line 519
    invoke-static {v5}, Lo8/b;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 524
    .line 525
    :cond_6
    :goto_2
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 526
    .line 527
    if-nez v0, :cond_7

    .line 528
    .line 529
    invoke-static {v14}, Lcom/bumptech/glide/d;->J([Ljava/lang/String;)Z

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    if-eqz v0, :cond_7

    .line 534
    .line 535
    const v0, -0x6b5d6bcf

    .line 536
    .line 537
    .line 538
    sput v0, Lo8/b;->j:I

    .line 539
    .line 540
    const-string v0, "MagicOS"

    .line 541
    .line 542
    sput-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 543
    .line 544
    invoke-static {v15}, Lo8/b;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 549
    .line 550
    :cond_7
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 551
    .line 552
    if-nez v0, :cond_8

    .line 553
    .line 554
    invoke-static {v11}, Lcom/bumptech/glide/d;->J([Ljava/lang/String;)Z

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    if-eqz v0, :cond_8

    .line 559
    .line 560
    const v0, -0xae345d4

    .line 561
    .line 562
    .line 563
    sput v0, Lo8/b;->j:I

    .line 564
    .line 565
    const-string v0, "HarmonyOS NEXT AndroidCompatible"

    .line 566
    .line 567
    sput-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 568
    .line 569
    const/4 v0, 0x1

    .line 570
    new-array v2, v0, [Ljava/lang/String;

    .line 571
    .line 572
    const/4 v0, 0x0

    .line 573
    aput-object v16, v2, v0

    .line 574
    .line 575
    invoke-static {v2}, Lo8/b;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 580
    .line 581
    :cond_8
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 582
    .line 583
    const-string v2, "HarmonyOS"

    .line 584
    .line 585
    const v5, 0x5e67d94a

    .line 586
    .line 587
    .line 588
    if-nez v0, :cond_9

    .line 589
    .line 590
    invoke-static {v12}, Lcom/bumptech/glide/d;->J([Ljava/lang/String;)Z

    .line 591
    .line 592
    .line 593
    move-result v0

    .line 594
    if-eqz v0, :cond_9

    .line 595
    .line 596
    sput v5, Lo8/b;->j:I

    .line 597
    .line 598
    sput-object v2, Lo8/b;->k:Ljava/lang/String;

    .line 599
    .line 600
    invoke-static {v9}, Lo8/b;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 605
    .line 606
    :cond_9
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 607
    .line 608
    if-nez v0, :cond_a

    .line 609
    .line 610
    const-string v0, "ro.build.version.emui"

    .line 611
    .line 612
    invoke-static {v0}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 617
    .line 618
    .line 619
    move-result v6

    .line 620
    if-nez v6, :cond_a

    .line 621
    .line 622
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v6

    .line 626
    const-string v7, "emotionui"

    .line 627
    .line 628
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 629
    .line 630
    .line 631
    move-result v6

    .line 632
    if-eqz v6, :cond_a

    .line 633
    .line 634
    const v6, 0x20893c

    .line 635
    .line 636
    .line 637
    sput v6, Lo8/b;->j:I

    .line 638
    .line 639
    const-string v6, "EMUI"

    .line 640
    .line 641
    sput-object v6, Lo8/b;->k:Ljava/lang/String;

    .line 642
    .line 643
    invoke-static {v0}, Lo8/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 648
    .line 649
    :cond_a
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 650
    .line 651
    const/4 v6, 0x0

    .line 652
    if-nez v0, :cond_e

    .line 653
    .line 654
    const-string v0, "ro.build.version.oneui"

    .line 655
    .line 656
    invoke-static {v0}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 661
    .line 662
    .line 663
    move-result v7

    .line 664
    const-string v8, "OneUI"

    .line 665
    .line 666
    const v9, 0x48cc75a

    .line 667
    .line 668
    .line 669
    if-nez v7, :cond_c

    .line 670
    .line 671
    sput v9, Lo8/b;->j:I

    .line 672
    .line 673
    sput-object v8, Lo8/b;->k:Ljava/lang/String;

    .line 674
    .line 675
    const-string v7, "\\d+"

    .line 676
    .line 677
    invoke-virtual {v0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 678
    .line 679
    .line 680
    move-result v7

    .line 681
    if-eqz v7, :cond_b

    .line 682
    .line 683
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    invoke-static {v0}, Lo8/b;->f(I)Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    sput-object v0, Lo8/b;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    .line 693
    goto :goto_3

    .line 694
    :catch_0
    nop

    .line 695
    goto :goto_3

    .line 696
    :cond_b
    const-string v7, "\\d+(?:\\.\\d+)+"

    .line 697
    .line 698
    invoke-virtual {v0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 699
    .line 700
    .line 701
    move-result v7

    .line 702
    if-eqz v7, :cond_c

    .line 703
    .line 704
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 705
    .line 706
    :cond_c
    :goto_3
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 707
    .line 708
    if-eqz v0, :cond_d

    .line 709
    .line 710
    sget-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 711
    .line 712
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 713
    .line 714
    .line 715
    move-result v0

    .line 716
    if-eqz v0, :cond_e

    .line 717
    .line 718
    :cond_d
    :try_start_1
    const-class v0, Landroid/os/Build$VERSION;

    .line 719
    .line 720
    const-string v7, "SEM_PLATFORM_INT"

    .line 721
    .line 722
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    const/4 v7, 0x1

    .line 727
    invoke-virtual {v0, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 731
    .line 732
    .line 733
    move-result v0

    .line 734
    sput v9, Lo8/b;->j:I

    .line 735
    .line 736
    sput-object v8, Lo8/b;->k:Ljava/lang/String;

    .line 737
    .line 738
    const v7, 0x15f90

    .line 739
    .line 740
    .line 741
    if-lt v0, v7, :cond_e

    .line 742
    .line 743
    sub-int/2addr v0, v7

    .line 744
    invoke-static {v0}, Lo8/b;->f(I)Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    sput-object v0, Lo8/b;->l:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 749
    .line 750
    goto :goto_4

    .line 751
    :catch_1
    nop

    .line 752
    :cond_e
    :goto_4
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 753
    .line 754
    if-nez v0, :cond_f

    .line 755
    .line 756
    const-string v0, "ro.oxygen.version"

    .line 757
    .line 758
    invoke-static {v0}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 763
    .line 764
    .line 765
    move-result v7

    .line 766
    if-nez v7, :cond_f

    .line 767
    .line 768
    const v7, -0x5141f85c

    .line 769
    .line 770
    .line 771
    sput v7, Lo8/b;->j:I

    .line 772
    .line 773
    const-string v7, "OxygenOS"

    .line 774
    .line 775
    sput-object v7, Lo8/b;->k:Ljava/lang/String;

    .line 776
    .line 777
    invoke-static {v0}, Lo8/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 782
    .line 783
    :cond_f
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 784
    .line 785
    if-nez v0, :cond_10

    .line 786
    .line 787
    const-string v0, "ro.rom.version"

    .line 788
    .line 789
    invoke-static {v0}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 794
    .line 795
    .line 796
    move-result v7

    .line 797
    if-nez v7, :cond_10

    .line 798
    .line 799
    const v7, 0x21804e

    .line 800
    .line 801
    .line 802
    sput v7, Lo8/b;->j:I

    .line 803
    .line 804
    const-string v7, "H2OS"

    .line 805
    .line 806
    sput-object v7, Lo8/b;->k:Ljava/lang/String;

    .line 807
    .line 808
    invoke-static {v0}, Lo8/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 813
    .line 814
    :cond_10
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 815
    .line 816
    if-nez v0, :cond_11

    .line 817
    .line 818
    sget-object v0, Lo8/b;->d:[Ljava/lang/String;

    .line 819
    .line 820
    invoke-static {v0}, Lcom/bumptech/glide/d;->J([Ljava/lang/String;)Z

    .line 821
    .line 822
    .line 823
    move-result v0

    .line 824
    if-eqz v0, :cond_11

    .line 825
    .line 826
    const v0, 0x40d592b

    .line 827
    .line 828
    .line 829
    sput v0, Lo8/b;->j:I

    .line 830
    .line 831
    const-string v0, "Flyme"

    .line 832
    .line 833
    sput-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 834
    .line 835
    const/4 v0, 0x1

    .line 836
    new-array v7, v0, [Ljava/lang/String;

    .line 837
    .line 838
    const/4 v0, 0x0

    .line 839
    aput-object v1, v7, v0

    .line 840
    .line 841
    invoke-static {v7}, Lo8/b;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 846
    .line 847
    :cond_11
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 848
    .line 849
    const-string v7, "RedMagicOS"

    .line 850
    .line 851
    const v8, -0x18e1dd60

    .line 852
    .line 853
    .line 854
    if-nez v0, :cond_15

    .line 855
    .line 856
    const-string v0, "ro.build.MiFavor_version"

    .line 857
    .line 858
    invoke-static {v0}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v9

    .line 862
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 863
    .line 864
    .line 865
    move-result v9

    .line 866
    if-nez v9, :cond_15

    .line 867
    .line 868
    invoke-static {v1}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v1

    .line 872
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 873
    .line 874
    .line 875
    move-result v9

    .line 876
    if-nez v9, :cond_15

    .line 877
    .line 878
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v9

    .line 882
    const-string v10, "nebulaaios"

    .line 883
    .line 884
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 885
    .line 886
    .line 887
    move-result v10

    .line 888
    if-eqz v10, :cond_12

    .line 889
    .line 890
    const v0, -0x63728815

    .line 891
    .line 892
    .line 893
    sput v0, Lo8/b;->j:I

    .line 894
    .line 895
    const-string v0, "NebulaAIOS"

    .line 896
    .line 897
    sput-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 898
    .line 899
    invoke-static {v1}, Lo8/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 904
    .line 905
    goto :goto_5

    .line 906
    :cond_12
    const-string v10, "redmagicos"

    .line 907
    .line 908
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 909
    .line 910
    .line 911
    move-result v10

    .line 912
    if-eqz v10, :cond_13

    .line 913
    .line 914
    sput v8, Lo8/b;->j:I

    .line 915
    .line 916
    sput-object v7, Lo8/b;->k:Ljava/lang/String;

    .line 917
    .line 918
    invoke-static {v1}, Lo8/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v0

    .line 922
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 923
    .line 924
    goto :goto_5

    .line 925
    :cond_13
    const-string v10, "myos"

    .line 926
    .line 927
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 928
    .line 929
    .line 930
    move-result v10

    .line 931
    if-eqz v10, :cond_14

    .line 932
    .line 933
    const v0, 0x24d0b0

    .line 934
    .line 935
    .line 936
    sput v0, Lo8/b;->j:I

    .line 937
    .line 938
    const-string v0, "MyOS"

    .line 939
    .line 940
    sput-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 941
    .line 942
    invoke-static {v1}, Lo8/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v0

    .line 946
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 947
    .line 948
    goto :goto_5

    .line 949
    :cond_14
    const-string v1, "zte"

    .line 950
    .line 951
    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 952
    .line 953
    .line 954
    move-result v1

    .line 955
    if-eqz v1, :cond_15

    .line 956
    .line 957
    const v1, -0xc1a83ea

    .line 958
    .line 959
    .line 960
    sput v1, Lo8/b;->j:I

    .line 961
    .line 962
    const-string v1, "MifavorUI"

    .line 963
    .line 964
    sput-object v1, Lo8/b;->k:Ljava/lang/String;

    .line 965
    .line 966
    const/4 v1, 0x1

    .line 967
    new-array v9, v1, [Ljava/lang/String;

    .line 968
    .line 969
    const/4 v1, 0x0

    .line 970
    aput-object v0, v9, v1

    .line 971
    .line 972
    invoke-static {v9}, Lo8/b;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 977
    .line 978
    :cond_15
    :goto_5
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 979
    .line 980
    const-string v1, ""

    .line 981
    .line 982
    if-nez v0, :cond_17

    .line 983
    .line 984
    const-string v0, "ro.build.nubia.rom.name"

    .line 985
    .line 986
    invoke-static {v0}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v0

    .line 990
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 991
    .line 992
    .line 993
    move-result v9

    .line 994
    if-nez v9, :cond_17

    .line 995
    .line 996
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v0

    .line 1000
    const-string v9, "nubiaui"

    .line 1001
    .line 1002
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v0

    .line 1006
    if-eqz v0, :cond_17

    .line 1007
    .line 1008
    const v0, -0x77d55859

    .line 1009
    .line 1010
    .line 1011
    sput v0, Lo8/b;->j:I

    .line 1012
    .line 1013
    const-string v0, "nubiaUI"

    .line 1014
    .line 1015
    sput-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 1016
    .line 1017
    const/4 v0, 0x1

    .line 1018
    new-array v9, v0, [Ljava/lang/String;

    .line 1019
    .line 1020
    const-string v0, "ro.build.nubia.rom.code"

    .line 1021
    .line 1022
    const/4 v10, 0x0

    .line 1023
    aput-object v0, v9, v10

    .line 1024
    .line 1025
    invoke-static {v9}, Lo8/b;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 1030
    .line 1031
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1032
    .line 1033
    const/16 v9, 0x1b

    .line 1034
    .line 1035
    if-lt v0, v9, :cond_17

    .line 1036
    .line 1037
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 1038
    .line 1039
    invoke-static {v0}, Lo8/b;->a(Ljava/lang/String;)I

    .line 1040
    .line 1041
    .line 1042
    move-result v0

    .line 1043
    sget-object v9, Lo8/b;->l:Ljava/lang/String;

    .line 1044
    .line 1045
    if-eqz v9, :cond_16

    .line 1046
    .line 1047
    goto :goto_6

    .line 1048
    :cond_16
    move-object v9, v1

    .line 1049
    :goto_6
    invoke-static {v9}, Lo8/b;->a(Ljava/lang/String;)I

    .line 1050
    .line 1051
    .line 1052
    move-result v9

    .line 1053
    sub-int/2addr v0, v9

    .line 1054
    const/4 v9, 0x5

    .line 1055
    if-lt v0, v9, :cond_17

    .line 1056
    .line 1057
    sput v8, Lo8/b;->j:I

    .line 1058
    .line 1059
    sput-object v7, Lo8/b;->k:Ljava/lang/String;

    .line 1060
    .line 1061
    :cond_17
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 1062
    .line 1063
    if-nez v0, :cond_19

    .line 1064
    .line 1065
    const-string v0, "ro.config.lgsi.os.name"

    .line 1066
    .line 1067
    invoke-static {v0}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v0

    .line 1071
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1072
    .line 1073
    .line 1074
    move-result v7

    .line 1075
    if-nez v7, :cond_18

    .line 1076
    .line 1077
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0

    .line 1081
    const-string v7, "zuxos"

    .line 1082
    .line 1083
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1084
    .line 1085
    .line 1086
    move-result v0

    .line 1087
    if-eqz v0, :cond_18

    .line 1088
    .line 1089
    const v0, 0x51c3b21

    .line 1090
    .line 1091
    .line 1092
    sput v0, Lo8/b;->j:I

    .line 1093
    .line 1094
    const-string v0, "ZUXOS"

    .line 1095
    .line 1096
    sput-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 1097
    .line 1098
    sget-object v0, Lo8/b;->g:[Ljava/lang/String;

    .line 1099
    .line 1100
    invoke-static {v0}, Lo8/b;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v0

    .line 1104
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 1105
    .line 1106
    goto :goto_7

    .line 1107
    :cond_18
    sget-object v0, Lo8/b;->h:[Ljava/lang/String;

    .line 1108
    .line 1109
    invoke-static {v0}, Lcom/bumptech/glide/d;->J([Ljava/lang/String;)Z

    .line 1110
    .line 1111
    .line 1112
    move-result v0

    .line 1113
    if-eqz v0, :cond_19

    .line 1114
    .line 1115
    const v0, 0x15c6e

    .line 1116
    .line 1117
    .line 1118
    sput v0, Lo8/b;->j:I

    .line 1119
    .line 1120
    const-string v0, "ZUI"

    .line 1121
    .line 1122
    sput-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 1123
    .line 1124
    const/4 v0, 0x1

    .line 1125
    new-array v7, v0, [Ljava/lang/String;

    .line 1126
    .line 1127
    const/4 v0, 0x0

    .line 1128
    aput-object v4, v7, v0

    .line 1129
    .line 1130
    invoke-static {v7}, Lo8/b;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v0

    .line 1134
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 1135
    .line 1136
    :cond_19
    :goto_7
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 1137
    .line 1138
    if-nez v0, :cond_1a

    .line 1139
    .line 1140
    const-string v0, "init.svc.bytecellular"

    .line 1141
    .line 1142
    invoke-static {v0}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v0

    .line 1146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1147
    .line 1148
    .line 1149
    move-result v0

    .line 1150
    if-nez v0, :cond_1a

    .line 1151
    .line 1152
    const v0, 0xbee68d

    .line 1153
    .line 1154
    .line 1155
    sput v0, Lo8/b;->j:I

    .line 1156
    .line 1157
    const-string v0, "ObricUI"

    .line 1158
    .line 1159
    sput-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 1160
    .line 1161
    sget-object v0, Lo8/b;->i:[Ljava/lang/String;

    .line 1162
    .line 1163
    invoke-static {v0}, Lo8/b;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v0

    .line 1167
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 1168
    .line 1169
    :cond_1a
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 1170
    .line 1171
    if-nez v0, :cond_1b

    .line 1172
    .line 1173
    const-string v0, "ro.asus.rog"

    .line 1174
    .line 1175
    invoke-static {v0}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v0

    .line 1179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1180
    .line 1181
    .line 1182
    move-result v0

    .line 1183
    if-nez v0, :cond_1b

    .line 1184
    .line 1185
    const v0, 0x4a885be

    .line 1186
    .line 1187
    .line 1188
    sput v0, Lo8/b;->j:I

    .line 1189
    .line 1190
    const-string v0, "ROGUI"

    .line 1191
    .line 1192
    sput-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 1193
    .line 1194
    const/4 v0, 0x1

    .line 1195
    new-array v4, v0, [Ljava/lang/String;

    .line 1196
    .line 1197
    const/4 v0, 0x0

    .line 1198
    aput-object v3, v4, v0

    .line 1199
    .line 1200
    invoke-static {v4}, Lo8/b;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v0

    .line 1204
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 1205
    .line 1206
    :cond_1b
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 1207
    .line 1208
    if-nez v0, :cond_1c

    .line 1209
    .line 1210
    sget-object v0, Lo8/b;->e:[Ljava/lang/String;

    .line 1211
    .line 1212
    invoke-static {v0}, Lcom/bumptech/glide/d;->J([Ljava/lang/String;)Z

    .line 1213
    .line 1214
    .line 1215
    move-result v0

    .line 1216
    if-eqz v0, :cond_1c

    .line 1217
    .line 1218
    const v0, 0x6ba129e4

    .line 1219
    .line 1220
    .line 1221
    sput v0, Lo8/b;->j:I

    .line 1222
    .line 1223
    const-string v0, "SmartisanOS"

    .line 1224
    .line 1225
    sput-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 1226
    .line 1227
    const/4 v0, 0x1

    .line 1228
    new-array v3, v0, [Ljava/lang/String;

    .line 1229
    .line 1230
    const/4 v0, 0x0

    .line 1231
    aput-object v24, v3, v0

    .line 1232
    .line 1233
    invoke-static {v3}, Lo8/b;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v0

    .line 1237
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 1238
    .line 1239
    :cond_1c
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 1240
    .line 1241
    if-nez v0, :cond_1d

    .line 1242
    .line 1243
    sget-object v0, Lo8/b;->f:[Ljava/lang/String;

    .line 1244
    .line 1245
    invoke-static {v0}, Lcom/bumptech/glide/d;->J([Ljava/lang/String;)Z

    .line 1246
    .line 1247
    .line 1248
    move-result v0

    .line 1249
    if-eqz v0, :cond_1d

    .line 1250
    .line 1251
    const v0, 0x10d99

    .line 1252
    .line 1253
    .line 1254
    sput v0, Lo8/b;->j:I

    .line 1255
    .line 1256
    const-string v0, "EUI"

    .line 1257
    .line 1258
    sput-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 1259
    .line 1260
    const/4 v0, 0x1

    .line 1261
    new-array v3, v0, [Ljava/lang/String;

    .line 1262
    .line 1263
    const/4 v0, 0x0

    .line 1264
    aput-object v23, v3, v0

    .line 1265
    .line 1266
    invoke-static {v3}, Lo8/b;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v0

    .line 1270
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 1271
    .line 1272
    :cond_1d
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 1273
    .line 1274
    if-nez v0, :cond_1e

    .line 1275
    .line 1276
    const-string v0, "ro.build.uiversion"

    .line 1277
    .line 1278
    invoke-static {v0}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v0

    .line 1282
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1283
    .line 1284
    .line 1285
    move-result v3

    .line 1286
    if-nez v3, :cond_1e

    .line 1287
    .line 1288
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v3

    .line 1292
    const-string v4, "360ui"

    .line 1293
    .line 1294
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1295
    .line 1296
    .line 1297
    move-result v3

    .line 1298
    if-eqz v3, :cond_1e

    .line 1299
    .line 1300
    const v3, 0x2e7f981

    .line 1301
    .line 1302
    .line 1303
    sput v3, Lo8/b;->j:I

    .line 1304
    .line 1305
    const-string v3, "360UI"

    .line 1306
    .line 1307
    sput-object v3, Lo8/b;->k:Ljava/lang/String;

    .line 1308
    .line 1309
    invoke-static {v0}, Lo8/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v0

    .line 1313
    sput-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 1314
    .line 1315
    :cond_1e
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 1316
    .line 1317
    if-nez v0, :cond_1f

    .line 1318
    .line 1319
    :try_start_2
    const-string v0, "com.huawei.system.BuildEx"

    .line 1320
    .line 1321
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v0

    .line 1325
    const-string v3, "getOsBrand"

    .line 1326
    .line 1327
    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v3

    .line 1331
    const/4 v4, 0x1

    .line 1332
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v0

    .line 1339
    if-eqz v0, :cond_1f

    .line 1340
    .line 1341
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v0

    .line 1345
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v0

    .line 1349
    const-string v3, "harmony"

    .line 1350
    .line 1351
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1352
    .line 1353
    .line 1354
    move-result v0

    .line 1355
    if-eqz v0, :cond_1f

    .line 1356
    .line 1357
    sput v5, Lo8/b;->j:I

    .line 1358
    .line 1359
    sput-object v2, Lo8/b;->k:Ljava/lang/String;

    .line 1360
    .line 1361
    sget-object v0, Lo8/b;->c:[Ljava/lang/String;

    .line 1362
    .line 1363
    invoke-static {v0}, Lo8/b;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v0

    .line 1367
    sput-object v0, Lo8/b;->l:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1368
    .line 1369
    goto :goto_8

    .line 1370
    :catch_2
    nop

    .line 1371
    :cond_1f
    :goto_8
    sget-object v0, Lo8/b;->k:Ljava/lang/String;

    .line 1372
    .line 1373
    if-nez v0, :cond_20

    .line 1374
    .line 1375
    sput-object v1, Lo8/b;->k:Ljava/lang/String;

    .line 1376
    .line 1377
    :cond_20
    sget-object v0, Lo8/b;->l:Ljava/lang/String;

    .line 1378
    .line 1379
    if-nez v0, :cond_21

    .line 1380
    .line 1381
    sput-object v1, Lo8/b;->l:Ljava/lang/String;

    .line 1382
    .line 1383
    :cond_21
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "\\."

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    array-length v1, p0

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    :try_start_0
    aget-object p0, p0, v1

    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return p0

    .line 29
    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "(\\d+)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    const-string v0, "(\\d+(?:\\.\\d+)+)"

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    return-object v1
.end method

.method public static varargs d([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p0, v2

    .line 7
    .line 8
    invoke-static {v3}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-static {v3}, Lo8/b;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    return-object v3

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    array-length v0, p0

    .line 27
    :goto_1
    if-ge v1, v0, :cond_3

    .line 28
    .line 29
    aget-object v2, p0, v1

    .line 30
    .line 31
    invoke-static {v2}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2}, Lo8/b;->b(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-lez v2, :cond_2

    .line 40
    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, ".0"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const-string p0, ""

    .line 63
    .line 64
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lo8/b;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {p0}, Lo8/b;->b(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-lez p0, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, ".0"

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    const-string p0, ""

    .line 37
    .line 38
    return-object p0
.end method

.method public static f(I)Ljava/lang/String;
    .locals 4

    .line 1
    div-int/lit16 v0, p0, 0x2710

    .line 2
    .line 3
    rem-int/lit16 v1, p0, 0x2710

    .line 4
    .line 5
    rem-int/lit8 p0, p0, 0x64

    .line 6
    .line 7
    const-string v2, "."

    .line 8
    .line 9
    if-lez p0, :cond_0

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    div-int/lit8 v1, v1, 0x64

    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    div-int/lit8 v1, v1, 0x64

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public static g()Z
    .locals 2

    .line 1
    sget v0, Lo8/b;->j:I

    .line 2
    .line 3
    const v1, 0x20893c

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public static h()Z
    .locals 2

    .line 1
    sget v0, Lo8/b;->j:I

    .line 2
    .line 3
    const v1, 0x40d592b

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public static i()Z
    .locals 2

    .line 1
    sget v0, Lo8/b;->j:I

    .line 2
    .line 3
    const v1, -0x4a6b0ad0

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public static j()Z
    .locals 6

    .line 1
    invoke-static {}, Lo8/b;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget-object v0, Lo8/b;->a:[Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    new-array v3, v2, [Ljava/lang/String;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    if-ge v4, v2, :cond_1

    .line 16
    .line 17
    aget-object v5, v0, v4

    .line 18
    .line 19
    invoke-static {v5}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    aput-object v5, v3, v4

    .line 24
    .line 25
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_1
    if-ge v0, v2, :cond_3

    .line 30
    .line 31
    aget-object v4, v3, v0

    .line 32
    .line 33
    const-string v5, "cn"

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    return v0

    .line 43
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    return v1
.end method

.method public static k()Z
    .locals 2

    .line 1
    sget v0, Lo8/b;->j:I

    .line 2
    .line 3
    const v1, 0x241d30

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public static l()Z
    .locals 6

    .line 1
    invoke-static {}, Lo8/b;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget-object v0, Lo8/b;->b:[Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    new-array v3, v2, [Ljava/lang/String;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    if-ge v4, v2, :cond_1

    .line 16
    .line 17
    aget-object v5, v0, v4

    .line 18
    .line 19
    invoke-static {v5}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    aput-object v5, v3, v4

    .line 24
    .line 25
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_1
    if-ge v0, v2, :cond_3

    .line 30
    .line 31
    aget-object v4, v3, v0

    .line 32
    .line 33
    const-string v5, "cn"

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    return v0

    .line 43
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    return v1
.end method

.method public static m()Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const-class v3, Ljava/lang/String;

    .line 5
    .line 6
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    .line 7
    .line 8
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    const-string v5, "get"

    .line 13
    .line 14
    new-array v6, v1, [Ljava/lang/Class;

    .line 15
    .line 16
    aput-object v3, v6, v0

    .line 17
    .line 18
    aput-object v3, v6, v2

    .line 19
    .line 20
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    new-array v6, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string v7, "ro.miui.cts"

    .line 27
    .line 28
    aput-object v7, v6, v0

    .line 29
    .line 30
    const-string v7, ""

    .line 31
    .line 32
    aput-object v7, v6, v2

    .line 33
    .line 34
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const-string v6, "getBoolean"

    .line 43
    .line 44
    new-array v7, v1, [Ljava/lang/Class;

    .line 45
    .line 46
    aput-object v3, v7, v0

    .line 47
    .line 48
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 49
    .line 50
    aput-object v3, v7, v2

    .line 51
    .line 52
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v6, "1"

    .line 57
    .line 58
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    xor-int/2addr v5, v2

    .line 63
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    .line 69
    const-string v6, "persist.sys.miui_optimization"

    .line 70
    .line 71
    aput-object v6, v1, v0

    .line 72
    .line 73
    aput-object v5, v1, v2

    .line 74
    .line 75
    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return v0

    .line 88
    :catch_0
    return v2
.end method
