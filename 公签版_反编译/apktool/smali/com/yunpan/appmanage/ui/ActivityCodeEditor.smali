.class public Lcom/yunpan/appmanage/ui/ActivityCodeEditor;
.super Lda/g;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic c1:I


# instance fields
.field public C:Lio/github/rosemoe/sora/widget/CodeEditor;

.field public D:Landroid/widget/EditText;

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Landroidx/recyclerview/widget/RecyclerView;

.field public G:Lx9/t0;

.field public H:Lx9/t0;

.field public I:Landroid/widget/TextView;

.field public final K:[Ljava/lang/String;

.field public final L:[Ljava/lang/String;

.field public final M:[Ljava/lang/String;

.field public M0:Landroid/widget/TextView;

.field public N:I

.field public N0:Landroid/widget/TextView;

.field public O:Ljava/lang/String;

.field public O0:Landroid/widget/TextView;

.field public P:Ljava/lang/String;

.field public P0:Landroid/widget/TextView;

.field public Q0:Landroid/widget/TextView;

.field public R:Landroid/net/Uri;

.field public R0:Landroid/widget/TextView;

.field public S:Z

.field public S0:Ljava/lang/String;

.field public final T:J

.field public final T0:I

.field public final U0:I

.field public V:Ltb/p;

.field public final V0:I

.field public final W0:I

.field public X:Landroid/content/SharedPreferences;

.field public final X0:I

.field public Y:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final Y0:I

.field public Z:Landroid/widget/EditText;

.field public final Z0:I

.field public final a1:I

.field public final b1:I

.field public h0:Landroid/widget/EditText;

.field public t0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lda/g;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 8
    .line 9
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 10
    .line 11
    const/16 v1, 0x2c

    .line 12
    .line 13
    new-array v1, v1, [Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "\u6362\u884c\u7b26"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object v2, v1, v3

    .line 19
    .line 20
    const-string v2, "\u5236\u8868\u7b26"

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    aput-object v2, v1, v4

    .line 24
    .line 25
    const-string v2, "<"

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    aput-object v2, v1, v5

    .line 29
    .line 30
    const-string v2, ">"

    .line 31
    .line 32
    const/4 v6, 0x3

    .line 33
    aput-object v2, v1, v6

    .line 34
    .line 35
    const-string v2, "<>"

    .line 36
    .line 37
    const/4 v7, 0x4

    .line 38
    aput-object v2, v1, v7

    .line 39
    .line 40
    const-string v2, "{"

    .line 41
    .line 42
    const/4 v8, 0x5

    .line 43
    aput-object v2, v1, v8

    .line 44
    .line 45
    const-string v2, "}"

    .line 46
    .line 47
    const/4 v9, 0x6

    .line 48
    aput-object v2, v1, v9

    .line 49
    .line 50
    const-string v2, "{}"

    .line 51
    .line 52
    const/4 v10, 0x7

    .line 53
    aput-object v2, v1, v10

    .line 54
    .line 55
    const-string v2, "["

    .line 56
    .line 57
    const/16 v11, 0x8

    .line 58
    .line 59
    aput-object v2, v1, v11

    .line 60
    .line 61
    const-string v2, "]"

    .line 62
    .line 63
    const/16 v12, 0x9

    .line 64
    .line 65
    aput-object v2, v1, v12

    .line 66
    .line 67
    const-string v2, "[]"

    .line 68
    .line 69
    const/16 v13, 0xa

    .line 70
    .line 71
    aput-object v2, v1, v13

    .line 72
    .line 73
    const-string v2, "("

    .line 74
    .line 75
    const/16 v14, 0xb

    .line 76
    .line 77
    aput-object v2, v1, v14

    .line 78
    .line 79
    const-string v2, ")"

    .line 80
    .line 81
    const/16 v15, 0xc

    .line 82
    .line 83
    aput-object v2, v1, v15

    .line 84
    .line 85
    const-string v2, "()"

    .line 86
    .line 87
    const/16 v15, 0xd

    .line 88
    .line 89
    aput-object v2, v1, v15

    .line 90
    .line 91
    const-string v2, "\u3010"

    .line 92
    .line 93
    const/16 v15, 0xe

    .line 94
    .line 95
    aput-object v2, v1, v15

    .line 96
    .line 97
    const-string v2, "\u3011"

    .line 98
    .line 99
    const/16 v15, 0xf

    .line 100
    .line 101
    aput-object v2, v1, v15

    .line 102
    .line 103
    const-string v2, "\u3010\u3011"

    .line 104
    .line 105
    const/16 v15, 0x10

    .line 106
    .line 107
    aput-object v2, v1, v15

    .line 108
    .line 109
    const-string v2, "\""

    .line 110
    .line 111
    const/16 v20, 0x11

    .line 112
    .line 113
    aput-object v2, v1, v20

    .line 114
    .line 115
    const-string v2, "\"\""

    .line 116
    .line 117
    const/16 v21, 0x12

    .line 118
    .line 119
    aput-object v2, v1, v21

    .line 120
    .line 121
    const-string v2, "\'"

    .line 122
    .line 123
    const/16 v22, 0x13

    .line 124
    .line 125
    aput-object v2, v1, v22

    .line 126
    .line 127
    const-string v2, "`"

    .line 128
    .line 129
    const/16 v23, 0x14

    .line 130
    .line 131
    aput-object v2, v1, v23

    .line 132
    .line 133
    const-string v2, "~"

    .line 134
    .line 135
    const/16 v24, 0x15

    .line 136
    .line 137
    aput-object v2, v1, v24

    .line 138
    .line 139
    const-string v2, "!"

    .line 140
    .line 141
    const/16 v25, 0x16

    .line 142
    .line 143
    aput-object v2, v1, v25

    .line 144
    .line 145
    const-string v2, "@"

    .line 146
    .line 147
    const/16 v25, 0x17

    .line 148
    .line 149
    aput-object v2, v1, v25

    .line 150
    .line 151
    const-string v2, "#"

    .line 152
    .line 153
    const/16 v25, 0x18

    .line 154
    .line 155
    aput-object v2, v1, v25

    .line 156
    .line 157
    const-string v2, "$"

    .line 158
    .line 159
    const/16 v25, 0x19

    .line 160
    .line 161
    aput-object v2, v1, v25

    .line 162
    .line 163
    const-string v2, "%"

    .line 164
    .line 165
    const/16 v25, 0x1a

    .line 166
    .line 167
    aput-object v2, v1, v25

    .line 168
    .line 169
    const-string v2, "^"

    .line 170
    .line 171
    const/16 v25, 0x1b

    .line 172
    .line 173
    aput-object v2, v1, v25

    .line 174
    .line 175
    const-string v2, "&"

    .line 176
    .line 177
    const/16 v25, 0x1c

    .line 178
    .line 179
    aput-object v2, v1, v25

    .line 180
    .line 181
    const-string v2, "*"

    .line 182
    .line 183
    const/16 v25, 0x1d

    .line 184
    .line 185
    aput-object v2, v1, v25

    .line 186
    .line 187
    const-string v2, "|"

    .line 188
    .line 189
    const/16 v25, 0x1e

    .line 190
    .line 191
    aput-object v2, v1, v25

    .line 192
    .line 193
    const-string v2, "\\"

    .line 194
    .line 195
    const/16 v25, 0x1f

    .line 196
    .line 197
    aput-object v2, v1, v25

    .line 198
    .line 199
    const-string v2, "/"

    .line 200
    .line 201
    const/16 v25, 0x20

    .line 202
    .line 203
    aput-object v2, v1, v25

    .line 204
    .line 205
    const-string v2, "?"

    .line 206
    .line 207
    const/16 v25, 0x21

    .line 208
    .line 209
    aput-object v2, v1, v25

    .line 210
    .line 211
    const-string v2, "."

    .line 212
    .line 213
    const/16 v25, 0x22

    .line 214
    .line 215
    aput-object v2, v1, v25

    .line 216
    .line 217
    const-string v2, ":"

    .line 218
    .line 219
    const/16 v25, 0x23

    .line 220
    .line 221
    aput-object v2, v1, v25

    .line 222
    .line 223
    const-string v2, ";"

    .line 224
    .line 225
    const/16 v25, 0x24

    .line 226
    .line 227
    aput-object v2, v1, v25

    .line 228
    .line 229
    const-string v2, "\uff1a"

    .line 230
    .line 231
    const/16 v25, 0x25

    .line 232
    .line 233
    aput-object v2, v1, v25

    .line 234
    .line 235
    const-string v2, "\uff1b"

    .line 236
    .line 237
    const/16 v25, 0x26

    .line 238
    .line 239
    aput-object v2, v1, v25

    .line 240
    .line 241
    const-string v2, "\uff0c"

    .line 242
    .line 243
    const/16 v25, 0x27

    .line 244
    .line 245
    aput-object v2, v1, v25

    .line 246
    .line 247
    const-string v2, "\u3001"

    .line 248
    .line 249
    const/16 v25, 0x28

    .line 250
    .line 251
    aput-object v2, v1, v25

    .line 252
    .line 253
    const-string v25, "\u3002"

    .line 254
    .line 255
    const/16 v26, 0x29

    .line 256
    .line 257
    aput-object v25, v1, v26

    .line 258
    .line 259
    const/16 v25, 0x2a

    .line 260
    .line 261
    aput-object v2, v1, v25

    .line 262
    .line 263
    const-string v2, "\uff1f"

    .line 264
    .line 265
    const/16 v25, 0x2b

    .line 266
    .line 267
    aput-object v2, v1, v25

    .line 268
    .line 269
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->K:[Ljava/lang/String;

    .line 270
    .line 271
    const/16 v1, 0x2b

    .line 272
    .line 273
    new-array v1, v1, [Ljava/lang/String;

    .line 274
    .line 275
    const-string v2, "\u81ea\u52a8\u8bc6\u522b"

    .line 276
    .line 277
    aput-object v2, v1, v3

    .line 278
    .line 279
    const-string v2, "UTF-8"

    .line 280
    .line 281
    aput-object v2, v1, v4

    .line 282
    .line 283
    const-string v2, "UTF-8-BOM"

    .line 284
    .line 285
    aput-object v2, v1, v5

    .line 286
    .line 287
    const-string v2, "GBK"

    .line 288
    .line 289
    aput-object v2, v1, v6

    .line 290
    .line 291
    const-string v2, "GB2312"

    .line 292
    .line 293
    aput-object v2, v1, v7

    .line 294
    .line 295
    const-string v2, "GB18030"

    .line 296
    .line 297
    aput-object v2, v1, v8

    .line 298
    .line 299
    const-string v2, "BIG5"

    .line 300
    .line 301
    aput-object v2, v1, v9

    .line 302
    .line 303
    const-string v2, "BIG5-HKSCS"

    .line 304
    .line 305
    aput-object v2, v1, v10

    .line 306
    .line 307
    const-string v2, "UTF-16"

    .line 308
    .line 309
    aput-object v2, v1, v11

    .line 310
    .line 311
    const-string v2, "UTF-16BE"

    .line 312
    .line 313
    aput-object v2, v1, v12

    .line 314
    .line 315
    const-string v2, "UTF-16LE"

    .line 316
    .line 317
    aput-object v2, v1, v13

    .line 318
    .line 319
    const-string v2, "EUC-KR"

    .line 320
    .line 321
    aput-object v2, v1, v14

    .line 322
    .line 323
    const-string v2, "EUC-JP"

    .line 324
    .line 325
    const/16 v16, 0xc

    .line 326
    .line 327
    aput-object v2, v1, v16

    .line 328
    .line 329
    const-string v2, "Shift_JIS"

    .line 330
    .line 331
    const/16 v17, 0xd

    .line 332
    .line 333
    aput-object v2, v1, v17

    .line 334
    .line 335
    const-string v2, "CESU-8"

    .line 336
    .line 337
    const/16 v18, 0xe

    .line 338
    .line 339
    aput-object v2, v1, v18

    .line 340
    .line 341
    const-string v2, "ISO-2022-JP"

    .line 342
    .line 343
    const/16 v19, 0xf

    .line 344
    .line 345
    aput-object v2, v1, v19

    .line 346
    .line 347
    const-string v2, "ISO-2022-KR"

    .line 348
    .line 349
    aput-object v2, v1, v15

    .line 350
    .line 351
    const-string v2, "ISO-8859-1"

    .line 352
    .line 353
    aput-object v2, v1, v20

    .line 354
    .line 355
    const-string v2, "ISO-8859-2"

    .line 356
    .line 357
    aput-object v2, v1, v21

    .line 358
    .line 359
    const-string v2, "ISO-8859-3"

    .line 360
    .line 361
    aput-object v2, v1, v22

    .line 362
    .line 363
    const-string v2, "ISO-8859-4"

    .line 364
    .line 365
    aput-object v2, v1, v23

    .line 366
    .line 367
    const-string v2, "ISO-8859-5"

    .line 368
    .line 369
    aput-object v2, v1, v24

    .line 370
    .line 371
    const-string v2, "ISO-8859-6"

    .line 372
    .line 373
    const/16 v25, 0x16

    .line 374
    .line 375
    aput-object v2, v1, v25

    .line 376
    .line 377
    const-string v2, "ISO-8859-7"

    .line 378
    .line 379
    const/16 v25, 0x17

    .line 380
    .line 381
    aput-object v2, v1, v25

    .line 382
    .line 383
    const-string v2, "ISO-8859-8"

    .line 384
    .line 385
    const/16 v25, 0x18

    .line 386
    .line 387
    aput-object v2, v1, v25

    .line 388
    .line 389
    const-string v2, "ISO-8859-9"

    .line 390
    .line 391
    const/16 v25, 0x19

    .line 392
    .line 393
    aput-object v2, v1, v25

    .line 394
    .line 395
    const-string v2, "ISO-8859-10"

    .line 396
    .line 397
    const/16 v25, 0x1a

    .line 398
    .line 399
    aput-object v2, v1, v25

    .line 400
    .line 401
    const-string v2, "ISO-8859-11"

    .line 402
    .line 403
    const/16 v25, 0x1b

    .line 404
    .line 405
    aput-object v2, v1, v25

    .line 406
    .line 407
    const-string v2, "ISO-8859-12"

    .line 408
    .line 409
    const/16 v25, 0x1c

    .line 410
    .line 411
    aput-object v2, v1, v25

    .line 412
    .line 413
    const-string v2, "ISO-8859-13"

    .line 414
    .line 415
    const/16 v25, 0x1d

    .line 416
    .line 417
    aput-object v2, v1, v25

    .line 418
    .line 419
    const-string v2, "ISO-8859-14"

    .line 420
    .line 421
    const/16 v25, 0x1e

    .line 422
    .line 423
    aput-object v2, v1, v25

    .line 424
    .line 425
    const-string v2, "ISO-8859-15"

    .line 426
    .line 427
    const/16 v25, 0x1f

    .line 428
    .line 429
    aput-object v2, v1, v25

    .line 430
    .line 431
    const-string v2, "KOI8-R"

    .line 432
    .line 433
    const/16 v25, 0x20

    .line 434
    .line 435
    aput-object v2, v1, v25

    .line 436
    .line 437
    const-string v2, "KOI8-U"

    .line 438
    .line 439
    const/16 v25, 0x21

    .line 440
    .line 441
    aput-object v2, v1, v25

    .line 442
    .line 443
    const-string v2, "Windows-1250"

    .line 444
    .line 445
    const/16 v25, 0x22

    .line 446
    .line 447
    aput-object v2, v1, v25

    .line 448
    .line 449
    const-string v2, "Windows-1251"

    .line 450
    .line 451
    const/16 v25, 0x23

    .line 452
    .line 453
    aput-object v2, v1, v25

    .line 454
    .line 455
    const-string v2, "Windows-1252"

    .line 456
    .line 457
    const/16 v25, 0x24

    .line 458
    .line 459
    aput-object v2, v1, v25

    .line 460
    .line 461
    const-string v2, "Windows-1253"

    .line 462
    .line 463
    const/16 v25, 0x25

    .line 464
    .line 465
    aput-object v2, v1, v25

    .line 466
    .line 467
    const-string v2, "Windows-1254"

    .line 468
    .line 469
    const/16 v25, 0x26

    .line 470
    .line 471
    aput-object v2, v1, v25

    .line 472
    .line 473
    const-string v2, "Windows-1255"

    .line 474
    .line 475
    const/16 v25, 0x27

    .line 476
    .line 477
    aput-object v2, v1, v25

    .line 478
    .line 479
    const-string v2, "Windows-1256"

    .line 480
    .line 481
    const/16 v25, 0x28

    .line 482
    .line 483
    aput-object v2, v1, v25

    .line 484
    .line 485
    const-string v2, "Windows-1257"

    .line 486
    .line 487
    const/16 v25, 0x29

    .line 488
    .line 489
    aput-object v2, v1, v25

    .line 490
    .line 491
    const-string v2, "Windows-1258"

    .line 492
    .line 493
    const/16 v25, 0x2a

    .line 494
    .line 495
    aput-object v2, v1, v25

    .line 496
    .line 497
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->L:[Ljava/lang/String;

    .line 498
    .line 499
    const/16 v1, 0x2a

    .line 500
    .line 501
    new-array v1, v1, [Ljava/lang/String;

    .line 502
    .line 503
    const-string v2, "UTF-8"

    .line 504
    .line 505
    aput-object v2, v1, v3

    .line 506
    .line 507
    const-string v2, "UTF-8-BOM"

    .line 508
    .line 509
    aput-object v2, v1, v4

    .line 510
    .line 511
    const-string v2, "GBK"

    .line 512
    .line 513
    aput-object v2, v1, v5

    .line 514
    .line 515
    const-string v2, "GB2312"

    .line 516
    .line 517
    aput-object v2, v1, v6

    .line 518
    .line 519
    const-string v2, "GB18030"

    .line 520
    .line 521
    aput-object v2, v1, v7

    .line 522
    .line 523
    const-string v2, "BIG5"

    .line 524
    .line 525
    aput-object v2, v1, v8

    .line 526
    .line 527
    const-string v2, "BIG5-HKSCS"

    .line 528
    .line 529
    aput-object v2, v1, v9

    .line 530
    .line 531
    const-string v2, "UTF-16"

    .line 532
    .line 533
    aput-object v2, v1, v10

    .line 534
    .line 535
    const-string v2, "UTF-16BE"

    .line 536
    .line 537
    aput-object v2, v1, v11

    .line 538
    .line 539
    const-string v2, "UTF-16LE"

    .line 540
    .line 541
    aput-object v2, v1, v12

    .line 542
    .line 543
    const-string v2, "EUC-KR"

    .line 544
    .line 545
    aput-object v2, v1, v13

    .line 546
    .line 547
    const-string v2, "EUC-JP"

    .line 548
    .line 549
    aput-object v2, v1, v14

    .line 550
    .line 551
    const-string v2, "Shift_JIS"

    .line 552
    .line 553
    const/16 v5, 0xc

    .line 554
    .line 555
    aput-object v2, v1, v5

    .line 556
    .line 557
    const-string v2, "CESU-8"

    .line 558
    .line 559
    const/16 v5, 0xd

    .line 560
    .line 561
    aput-object v2, v1, v5

    .line 562
    .line 563
    const-string v2, "ISO-2022-JP"

    .line 564
    .line 565
    const/16 v5, 0xe

    .line 566
    .line 567
    aput-object v2, v1, v5

    .line 568
    .line 569
    const-string v2, "ISO-2022-KR"

    .line 570
    .line 571
    const/16 v5, 0xf

    .line 572
    .line 573
    aput-object v2, v1, v5

    .line 574
    .line 575
    const-string v2, "ISO-8859-1"

    .line 576
    .line 577
    aput-object v2, v1, v15

    .line 578
    .line 579
    const-string v2, "ISO-8859-2"

    .line 580
    .line 581
    aput-object v2, v1, v20

    .line 582
    .line 583
    const-string v2, "ISO-8859-3"

    .line 584
    .line 585
    aput-object v2, v1, v21

    .line 586
    .line 587
    const-string v2, "ISO-8859-4"

    .line 588
    .line 589
    aput-object v2, v1, v22

    .line 590
    .line 591
    const-string v2, "ISO-8859-5"

    .line 592
    .line 593
    aput-object v2, v1, v23

    .line 594
    .line 595
    const-string v2, "ISO-8859-6"

    .line 596
    .line 597
    aput-object v2, v1, v24

    .line 598
    .line 599
    const-string v2, "ISO-8859-7"

    .line 600
    .line 601
    const/16 v5, 0x16

    .line 602
    .line 603
    aput-object v2, v1, v5

    .line 604
    .line 605
    const-string v2, "ISO-8859-8"

    .line 606
    .line 607
    const/16 v5, 0x17

    .line 608
    .line 609
    aput-object v2, v1, v5

    .line 610
    .line 611
    const-string v2, "ISO-8859-9"

    .line 612
    .line 613
    const/16 v5, 0x18

    .line 614
    .line 615
    aput-object v2, v1, v5

    .line 616
    .line 617
    const-string v2, "ISO-8859-10"

    .line 618
    .line 619
    const/16 v5, 0x19

    .line 620
    .line 621
    aput-object v2, v1, v5

    .line 622
    .line 623
    const-string v2, "ISO-8859-11"

    .line 624
    .line 625
    const/16 v5, 0x1a

    .line 626
    .line 627
    aput-object v2, v1, v5

    .line 628
    .line 629
    const-string v2, "ISO-8859-12"

    .line 630
    .line 631
    const/16 v5, 0x1b

    .line 632
    .line 633
    aput-object v2, v1, v5

    .line 634
    .line 635
    const-string v2, "ISO-8859-13"

    .line 636
    .line 637
    const/16 v5, 0x1c

    .line 638
    .line 639
    aput-object v2, v1, v5

    .line 640
    .line 641
    const-string v2, "ISO-8859-14"

    .line 642
    .line 643
    const/16 v5, 0x1d

    .line 644
    .line 645
    aput-object v2, v1, v5

    .line 646
    .line 647
    const-string v2, "ISO-8859-15"

    .line 648
    .line 649
    const/16 v5, 0x1e

    .line 650
    .line 651
    aput-object v2, v1, v5

    .line 652
    .line 653
    const-string v2, "KOI8-R"

    .line 654
    .line 655
    const/16 v5, 0x1f

    .line 656
    .line 657
    aput-object v2, v1, v5

    .line 658
    .line 659
    const-string v2, "KOI8-U"

    .line 660
    .line 661
    const/16 v5, 0x20

    .line 662
    .line 663
    aput-object v2, v1, v5

    .line 664
    .line 665
    const-string v2, "Windows-1250"

    .line 666
    .line 667
    const/16 v5, 0x21

    .line 668
    .line 669
    aput-object v2, v1, v5

    .line 670
    .line 671
    const-string v2, "Windows-1251"

    .line 672
    .line 673
    const/16 v5, 0x22

    .line 674
    .line 675
    aput-object v2, v1, v5

    .line 676
    .line 677
    const-string v2, "Windows-1252"

    .line 678
    .line 679
    const/16 v5, 0x23

    .line 680
    .line 681
    aput-object v2, v1, v5

    .line 682
    .line 683
    const-string v2, "Windows-1253"

    .line 684
    .line 685
    const/16 v5, 0x24

    .line 686
    .line 687
    aput-object v2, v1, v5

    .line 688
    .line 689
    const-string v2, "Windows-1254"

    .line 690
    .line 691
    const/16 v5, 0x25

    .line 692
    .line 693
    aput-object v2, v1, v5

    .line 694
    .line 695
    const-string v2, "Windows-1255"

    .line 696
    .line 697
    const/16 v5, 0x26

    .line 698
    .line 699
    aput-object v2, v1, v5

    .line 700
    .line 701
    const-string v2, "Windows-1256"

    .line 702
    .line 703
    const/16 v5, 0x27

    .line 704
    .line 705
    aput-object v2, v1, v5

    .line 706
    .line 707
    const-string v2, "Windows-1257"

    .line 708
    .line 709
    const/16 v5, 0x28

    .line 710
    .line 711
    aput-object v2, v1, v5

    .line 712
    .line 713
    const-string v2, "Windows-1258"

    .line 714
    .line 715
    const/16 v5, 0x29

    .line 716
    .line 717
    aput-object v2, v1, v5

    .line 718
    .line 719
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->M:[Ljava/lang/String;

    .line 720
    .line 721
    iput v3, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->N:I

    .line 722
    .line 723
    const-string v1, "\u81ea\u52a8\u8bc6\u522b"

    .line 724
    .line 725
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->O:Ljava/lang/String;

    .line 726
    .line 727
    const-string v1, "UTF-8"

    .line 728
    .line 729
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->P:Ljava/lang/String;

    .line 730
    .line 731
    iput-boolean v4, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 732
    .line 733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 734
    .line 735
    .line 736
    move-result-wide v1

    .line 737
    iput-wide v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->T:J

    .line 738
    .line 739
    const-string v1, ""

    .line 740
    .line 741
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S0:Ljava/lang/String;

    .line 742
    .line 743
    iput v11, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->T0:I

    .line 744
    .line 745
    iput v12, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->U0:I

    .line 746
    .line 747
    iput v13, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->V0:I

    .line 748
    .line 749
    iput v14, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->W0:I

    .line 750
    .line 751
    const/16 v1, 0xc

    .line 752
    .line 753
    iput v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X0:I

    .line 754
    .line 755
    const/16 v1, 0xd

    .line 756
    .line 757
    iput v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Y0:I

    .line 758
    .line 759
    const/16 v1, 0xe

    .line 760
    .line 761
    iput v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Z0:I

    .line 762
    .line 763
    const/16 v1, 0xf

    .line 764
    .line 765
    iput v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->a1:I

    .line 766
    .line 767
    iput v15, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->b1:I

    .line 768
    .line 769
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lmb/g;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget v1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->N:I

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget v1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->N:I

    .line 39
    .line 40
    if-eq v0, v1, :cond_1

    .line 41
    .line 42
    :goto_0
    new-instance v0, Lha/z6;

    .line 43
    .line 44
    iget-object v4, p0, Lda/g;->A:Lda/g;

    .line 45
    .line 46
    new-instance v9, Lua/f1;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-direct {v9, p0, v1}, Lua/f1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V

    .line 50
    .line 51
    .line 52
    const-string v7, "\u4fdd\u5b58\u5e76\u5173\u95ed"

    .line 53
    .line 54
    const-string v8, "\u4e0d\u4fdd\u5b58"

    .line 55
    .line 56
    const-string v5, "\u6587\u4ef6\u5df2\u6539\u52a8\u8fc7\uff0c\u662f\u5426\u5148\u4fdd\u5b58\uff1f"

    .line 57
    .line 58
    const-string v6, ""

    .line 59
    .line 60
    move-object v2, v0

    .line 61
    move-object v3, p0

    .line 62
    invoke-direct/range {v2 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final B(Z)V
    .locals 3

    .line 1
    new-instance v0, Lua/d1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lua/d1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lmc/c;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lua/g;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-direct {v1, p0, p1, v2}, Lua/g;-><init>(Ljava/lang/Object;ZI)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x17

    .line 6
    .line 7
    if-ne v0, v1, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 20
    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x1

    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    const-string v0, "input_method"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 47
    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 51
    .line 52
    :cond_2
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 54
    .line 55
    .line 56
    :cond_3
    return v1

    .line 57
    :cond_4
    invoke-super {p0, p1}, Lq/i;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    return p1
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->M0:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->M0:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 58
    .line 59
    .line 60
    :goto_1
    return-void

    .line 61
    :cond_3
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->A()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0b0335

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Z:Landroid/widget/EditText;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 28
    .line 29
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getSearcher()Ltb/r;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ltb/r;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const v1, 0x7f0b0336

    .line 43
    .line 44
    .line 45
    if-ne v0, v1, :cond_3

    .line 46
    .line 47
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Z:Landroid/widget/EditText;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 65
    .line 66
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getSearcher()Ltb/r;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ltb/r;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const v1, 0x7f0b0337

    .line 80
    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    if-ne v0, v1, :cond_9

    .line 84
    .line 85
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Z:Landroid/widget/EditText;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    :try_start_2
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 103
    .line 104
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getSearcher()Ltb/r;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ltb/r;->c()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    const/4 v0, -0x1

    .line 113
    if-eq p1, v0, :cond_8

    .line 114
    .line 115
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 116
    .line 117
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getSearcher()Ltb/r;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->h0:Landroid/widget/EditText;

    .line 122
    .line 123
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget-object v3, p1, Ltb/r;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 132
    .line 133
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-nez v4, :cond_5

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    invoke-virtual {p1}, Ltb/r;->c()I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-le v4, v0, :cond_7

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_6

    .line 151
    .line 152
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->A()V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_6
    iget-object v0, p1, Ltb/r;->c:Ltb/p;

    .line 157
    .line 158
    iget v0, v0, Ltb/p;->b:I

    .line 159
    .line 160
    iget-object p1, p1, Ltb/r;->d:Ltb/o;

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v1, v2, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->u(Ljava/lang/CharSequence;ZZ)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_7
    invoke-virtual {p1}, Ltb/r;->d()V

    .line 170
    .line 171
    .line 172
    :goto_0
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 173
    .line 174
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getSearcher()Ltb/r;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1}, Ltb/r;->d()V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_3

    .line 182
    .line 183
    :cond_8
    new-instance p1, Ljava/lang/Exception;

    .line 184
    .line 185
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 186
    .line 187
    .line 188
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 189
    :catch_0
    :try_start_3
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 190
    .line 191
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getSearcher()Ltb/r;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p1}, Ltb/r;->d()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 196
    .line 197
    .line 198
    goto/16 :goto_3

    .line 199
    .line 200
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    const v1, 0x7f0b0338

    .line 205
    .line 206
    .line 207
    if-ne v0, v1, :cond_b

    .line 208
    .line 209
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Z:Landroid/widget/EditText;

    .line 210
    .line 211
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_a

    .line 224
    .line 225
    return-void

    .line 226
    :cond_a
    :try_start_4
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 227
    .line 228
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getSearcher()Ltb/r;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->h0:Landroid/widget/EditText;

    .line 233
    .line 234
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {p1, v0}, Ltb/r;->g(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 243
    .line 244
    .line 245
    goto/16 :goto_3

    .line 246
    .line 247
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    const v1, 0x7f0b0339

    .line 252
    .line 253
    .line 254
    if-ne v0, v1, :cond_c

    .line 255
    .line 256
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 257
    .line 258
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 262
    .line 263
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 264
    .line 265
    .line 266
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 267
    .line 268
    const/16 v0, 0x8

    .line 269
    .line 270
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 271
    .line 272
    .line 273
    :try_start_5
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 274
    .line 275
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getSearcher()Ltb/r;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-virtual {p1}, Ltb/r;->h()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 280
    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    const v1, 0x7f0b033a

    .line 288
    .line 289
    .line 290
    if-ne v0, v1, :cond_10

    .line 291
    .line 292
    new-instance v0, Landroid/widget/PopupMenu;

    .line 293
    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->V:Ltb/p;

    .line 306
    .line 307
    iget-boolean v1, v1, Ltb/p;->a:Z

    .line 308
    .line 309
    if-eqz v1, :cond_d

    .line 310
    .line 311
    const-string v1, "\u533a\u5206\u5927\u5c0f\u5199 \u00d7"

    .line 312
    .line 313
    goto :goto_1

    .line 314
    :cond_d
    const-string v1, "\u533a\u5206\u5927\u5c0f\u5199 \u221a"

    .line 315
    .line 316
    :goto_1
    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    const/4 v3, 0x1

    .line 321
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->V:Ltb/p;

    .line 326
    .line 327
    iget-boolean v4, v4, Ltb/p;->a:Z

    .line 328
    .line 329
    xor-int/2addr v4, v3

    .line 330
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    new-instance v4, Lua/b1;

    .line 335
    .line 336
    const/4 v5, 0x0

    .line 337
    invoke-direct {v4, v5, p0}, Lua/b1;-><init>(ILjava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 341
    .line 342
    .line 343
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->V:Ltb/p;

    .line 344
    .line 345
    iget v1, v1, Ltb/p;->b:I

    .line 346
    .line 347
    const/4 v4, 0x3

    .line 348
    if-ne v1, v4, :cond_e

    .line 349
    .line 350
    const-string v1, "\u6b63\u5219\u8868\u8fbe\u5f0f \u221a"

    .line 351
    .line 352
    goto :goto_2

    .line 353
    :cond_e
    const-string v1, "\u6b63\u5219\u8868\u8fbe\u5f0f \u00d7"

    .line 354
    .line 355
    :goto_2
    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->V:Ltb/p;

    .line 364
    .line 365
    iget v1, v1, Ltb/p;->b:I

    .line 366
    .line 367
    if-ne v1, v4, :cond_f

    .line 368
    .line 369
    const/4 v2, 0x1

    .line 370
    :cond_f
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    new-instance v1, Lua/b1;

    .line 375
    .line 376
    const/4 v2, 0x1

    .line 377
    invoke-direct {v1, v2, p0}, Lua/b1;-><init>(ILjava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 384
    .line 385
    .line 386
    :catch_1
    :cond_10
    :goto_3
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lja/c;

    .line 6
    .line 7
    const/16 v2, 0xa

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lja/c;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Lkh/e;->l(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->p1:Lvb/k;

    .line 30
    .line 31
    invoke-virtual {v1}, Lvb/k;->e()V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->p1:Lvb/k;

    .line 35
    .line 36
    invoke-virtual {v1}, Lvb/k;->f()V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->c:Lvb/s;

    .line 40
    .line 41
    invoke-virtual {v1}, Lub/b;->b()V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->q1:Ltb/u;

    .line 45
    .line 46
    iget-object v1, v1, Ltb/u;->d:Lvb/v;

    .line 47
    .line 48
    invoke-virtual {v1}, Lvb/v;->a()V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->d:Lvb/p;

    .line 52
    .line 53
    invoke-virtual {v1}, Lvb/p;->b()V

    .line 54
    .line 55
    .line 56
    iget-boolean v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->T:Z

    .line 57
    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    new-instance v1, Ldb/l;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Ldb/l;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Ldb/p;->a(Lbi/a;)I

    .line 68
    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    iput-boolean v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->T:Z

    .line 72
    .line 73
    iget-object v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->m1:Lgb/b;

    .line 74
    .line 75
    if-eqz v1, :cond_0

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    new-instance v1, Lgb/a;

    .line 81
    .line 82
    invoke-direct {v1}, Lgb/a;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->m1:Lgb/b;

    .line 86
    .line 87
    :cond_0
    iget-object v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->f:Ll5/y;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 93
    .line 94
    if-eqz v1, :cond_1

    .line 95
    .line 96
    iget-object v1, v1, Lmb/g;->b:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    :cond_1
    iget-object v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->j1:Lzb/a;

    .line 102
    .line 103
    iget-object v1, v1, Lzb/a;->b:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    if-ne v2, v0, :cond_2

    .line 126
    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 128
    .line 129
    .line 130
    :cond_3
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 131
    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    const-string v1, ""

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    :cond_4
    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->N:I

    .line 141
    .line 142
    return-void
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/16 v0, 0x52

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->F:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public onMessageEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lkh/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Lda/g;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iget-wide v2, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->T:J

    .line 9
    .line 10
    sub-long/2addr v0, v2

    .line 11
    const-wide/16 v2, 0x2710

    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-gez v4, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Lua/d1;

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    invoke-direct {v0, p0, v1}, Lua/d1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lmc/c;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lua/e1;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-direct {v1, p0, v2}, Lua/e1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e002e

    return v0
.end method

.method public final u()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x3

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v6, 0x1

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->R:Landroid/net/Uri;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, v1}, Lkh/e;->j(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v1, Lda/g;->A:Lda/g;

    .line 32
    .line 33
    const-string v7, "CodeEditor"

    .line 34
    .line 35
    invoke-virtual {v0, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 40
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const/16 v7, 0x15

    .line 44
    .line 45
    if-lt v0, v7, :cond_1

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    :goto_0
    iput-boolean v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 51
    .line 52
    const v0, 0x7f0b05f0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->I:Landroid/widget/TextView;

    .line 62
    .line 63
    const v0, 0x7f0b04e2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 71
    .line 72
    iput-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 73
    .line 74
    const/16 v7, 0x8

    .line 75
    .line 76
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    const v0, 0x7f0b0447

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/EditText;

    .line 87
    .line 88
    iput-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Z:Landroid/widget/EditText;

    .line 89
    .line 90
    const v0, 0x7f0b0448

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/widget/EditText;

    .line 98
    .line 99
    iput-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->h0:Landroid/widget/EditText;

    .line 100
    .line 101
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Z:Landroid/widget/EditText;

    .line 102
    .line 103
    new-instance v7, Lha/aa;

    .line 104
    .line 105
    const/4 v8, 0x5

    .line 106
    invoke-direct {v7, v1, v8}, Lha/aa;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Z:Landroid/widget/EditText;

    .line 113
    .line 114
    new-instance v7, Lua/c1;

    .line 115
    .line 116
    invoke-direct {v7, v1, v5}, Lua/c1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->h0:Landroid/widget/EditText;

    .line 123
    .line 124
    new-instance v7, Lha/uc;

    .line 125
    .line 126
    invoke-direct {v7, v1, v4}, Lha/uc;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 130
    .line 131
    .line 132
    const v0, 0x7f0b05f3

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Landroid/widget/TextView;

    .line 140
    .line 141
    iput-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->t0:Landroid/widget/TextView;

    .line 142
    .line 143
    const v0, 0x7f0b0335

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Landroid/widget/TextView;

    .line 151
    .line 152
    iput-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->M0:Landroid/widget/TextView;

    .line 153
    .line 154
    const v0, 0x7f0b0336

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Landroid/widget/TextView;

    .line 162
    .line 163
    iput-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->N0:Landroid/widget/TextView;

    .line 164
    .line 165
    const v0, 0x7f0b0337

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Landroid/widget/TextView;

    .line 173
    .line 174
    iput-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->O0:Landroid/widget/TextView;

    .line 175
    .line 176
    const v0, 0x7f0b0338

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Landroid/widget/TextView;

    .line 184
    .line 185
    iput-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->P0:Landroid/widget/TextView;

    .line 186
    .line 187
    const v0, 0x7f0b0339

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Landroid/widget/TextView;

    .line 195
    .line 196
    iput-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Q0:Landroid/widget/TextView;

    .line 197
    .line 198
    const v0, 0x7f0b033a

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Landroid/widget/TextView;

    .line 206
    .line 207
    iput-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->R0:Landroid/widget/TextView;

    .line 208
    .line 209
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->M0:Landroid/widget/TextView;

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    .line 213
    .line 214
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->N0:Landroid/widget/TextView;

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->O0:Landroid/widget/TextView;

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    .line 223
    .line 224
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->P0:Landroid/widget/TextView;

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    .line 228
    .line 229
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Q0:Landroid/widget/TextView;

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    .line 234
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->R0:Landroid/widget/TextView;

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->M0:Landroid/widget/TextView;

    .line 240
    .line 241
    new-instance v7, Lha/o4;

    .line 242
    .line 243
    invoke-direct {v7, v3}, Lha/o4;-><init>(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->R0:Landroid/widget/TextView;

    .line 250
    .line 251
    new-instance v7, Lha/o4;

    .line 252
    .line 253
    invoke-direct {v7, v4}, Lha/o4;-><init>(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 257
    .line 258
    .line 259
    const v0, 0x7f0b050d

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 267
    .line 268
    iput-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 269
    .line 270
    new-instance v7, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 271
    .line 272
    invoke-direct {v7, v1, v5, v5}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 276
    .line 277
    .line 278
    new-instance v0, Lx9/t0;

    .line 279
    .line 280
    invoke-direct {v0, v6}, Lx9/t0;-><init>(I)V

    .line 281
    .line 282
    .line 283
    iput-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 284
    .line 285
    new-instance v7, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 286
    .line 287
    const v8, 0x7f08022a

    .line 288
    .line 289
    .line 290
    invoke-direct {v7, v8}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 297
    .line 298
    new-instance v7, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 299
    .line 300
    const v8, 0x7f08022b

    .line 301
    .line 302
    .line 303
    invoke-direct {v7, v8}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 310
    .line 311
    new-instance v7, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 312
    .line 313
    const v8, 0x7f080227

    .line 314
    .line 315
    .line 316
    invoke-direct {v7, v8}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    iget-boolean v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 323
    .line 324
    iget v7, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->V0:I

    .line 325
    .line 326
    iget v8, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->b1:I

    .line 327
    .line 328
    iget v9, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->U0:I

    .line 329
    .line 330
    iget v10, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->T0:I

    .line 331
    .line 332
    const-string v11, "\u91cd\u8f7d"

    .line 333
    .line 334
    const-string v12, "\u66ff\u6362"

    .line 335
    .line 336
    const-string v13, "\u7f16\u7801"

    .line 337
    .line 338
    if-eqz v0, :cond_2

    .line 339
    .line 340
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 341
    .line 342
    new-instance v14, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 343
    .line 344
    const v15, 0x7f080229

    .line 345
    .line 346
    .line 347
    invoke-direct {v14, v15}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v14}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 354
    .line 355
    new-instance v14, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 356
    .line 357
    const v15, 0x7f080228

    .line 358
    .line 359
    .line 360
    invoke-direct {v14, v15}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v14}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 367
    .line 368
    new-instance v14, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 369
    .line 370
    const v15, 0x7f08022c

    .line 371
    .line 372
    .line 373
    invoke-direct {v14, v15}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, v14}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 380
    .line 381
    new-instance v14, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 382
    .line 383
    const v15, 0x7f08022d

    .line 384
    .line 385
    .line 386
    invoke-direct {v14, v15}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(I)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v14}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 393
    .line 394
    new-instance v14, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 395
    .line 396
    invoke-direct {v14, v12, v10}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(Ljava/lang/String;I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v14}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 403
    .line 404
    new-instance v10, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 405
    .line 406
    invoke-direct {v10, v13, v9}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(Ljava/lang/String;I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0, v10}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 413
    .line 414
    new-instance v9, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 415
    .line 416
    invoke-direct {v9, v13, v8}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(Ljava/lang/String;I)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0, v9}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 423
    .line 424
    new-instance v8, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 425
    .line 426
    invoke-direct {v8, v11, v7}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(Ljava/lang/String;I)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, v8}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 433
    .line 434
    new-instance v7, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 435
    .line 436
    const-string v8, "\u9ad8\u4eae"

    .line 437
    .line 438
    iget v9, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->W0:I

    .line 439
    .line 440
    invoke-direct {v7, v8, v9}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(Ljava/lang/String;I)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    goto :goto_1

    .line 447
    :cond_2
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 448
    .line 449
    new-instance v14, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 450
    .line 451
    invoke-direct {v14, v12, v10}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(Ljava/lang/String;I)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v14}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 458
    .line 459
    new-instance v10, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 460
    .line 461
    invoke-direct {v10, v13, v9}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(Ljava/lang/String;I)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v10}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 465
    .line 466
    .line 467
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 468
    .line 469
    new-instance v9, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 470
    .line 471
    invoke-direct {v9, v13, v8}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(Ljava/lang/String;I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v0, v9}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 478
    .line 479
    new-instance v8, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 480
    .line 481
    invoke-direct {v8, v11, v7}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(Ljava/lang/String;I)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0, v8}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 485
    .line 486
    .line 487
    :goto_1
    iget-object v7, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->R:Landroid/net/Uri;

    .line 488
    .line 489
    const/4 v8, -0x1

    .line 490
    const/4 v9, 0x0

    .line 491
    if-nez v7, :cond_3

    .line 492
    .line 493
    move-object v12, v9

    .line 494
    goto/16 :goto_9

    .line 495
    .line 496
    :cond_3
    const-string v0, "content"

    .line 497
    .line 498
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v10

    .line 502
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    if-eqz v0, :cond_7

    .line 507
    .line 508
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 509
    .line 510
    .line 511
    move-result-object v12

    .line 512
    const/4 v14, 0x0

    .line 513
    const/4 v15, 0x0

    .line 514
    const/16 v16, 0x0

    .line 515
    .line 516
    const/16 v17, 0x0

    .line 517
    .line 518
    move-object v13, v7

    .line 519
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 520
    .line 521
    .line 522
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 523
    if-eqz v10, :cond_5

    .line 524
    .line 525
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    if-eqz v0, :cond_5

    .line 530
    .line 531
    new-array v0, v2, [Ljava/lang/String;

    .line 532
    .line 533
    const-string v11, "_display_name"

    .line 534
    .line 535
    aput-object v11, v0, v5

    .line 536
    .line 537
    aput-object v11, v0, v6

    .line 538
    .line 539
    const-string v11, "title"

    .line 540
    .line 541
    aput-object v11, v0, v3

    .line 542
    .line 543
    const-string v11, "name"

    .line 544
    .line 545
    aput-object v11, v0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 546
    .line 547
    move-object v12, v9

    .line 548
    const/4 v11, 0x0

    .line 549
    :goto_2
    if-ge v11, v2, :cond_6

    .line 550
    .line 551
    :try_start_2
    aget-object v13, v0, v11

    .line 552
    .line 553
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 554
    .line 555
    .line 556
    move-result v13

    .line 557
    if-eq v13, v8, :cond_4

    .line 558
    .line 559
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v12

    .line 563
    if-eqz v12, :cond_4

    .line 564
    .line 565
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 566
    .line 567
    .line 568
    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 569
    if-nez v13, :cond_4

    .line 570
    .line 571
    goto :goto_6

    .line 572
    :catchall_0
    move-exception v0

    .line 573
    move-object v11, v0

    .line 574
    goto :goto_4

    .line 575
    :cond_4
    add-int/2addr v11, v6

    .line 576
    goto :goto_2

    .line 577
    :goto_3
    move-object v11, v0

    .line 578
    move-object v12, v9

    .line 579
    goto :goto_4

    .line 580
    :catchall_1
    move-exception v0

    .line 581
    goto :goto_3

    .line 582
    :goto_4
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 583
    .line 584
    .line 585
    goto :goto_5

    .line 586
    :catchall_2
    move-exception v0

    .line 587
    move-object v10, v0

    .line 588
    :try_start_4
    const-class v0, Ljava/lang/Throwable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 589
    .line 590
    :try_start_5
    const-string v13, "addSuppressed"

    .line 591
    .line 592
    new-array v14, v6, [Ljava/lang/Class;

    .line 593
    .line 594
    aput-object v0, v14, v5

    .line 595
    .line 596
    invoke-virtual {v0, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    new-array v13, v6, [Ljava/lang/Object;

    .line 601
    .line 602
    aput-object v10, v13, v5

    .line 603
    .line 604
    invoke-virtual {v0, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 605
    .line 606
    .line 607
    :catch_0
    :goto_5
    :try_start_6
    throw v11

    .line 608
    :catch_1
    move-exception v0

    .line 609
    goto :goto_7

    .line 610
    :cond_5
    move-object v12, v9

    .line 611
    :cond_6
    :goto_6
    if-eqz v10, :cond_8

    .line 612
    .line 613
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 614
    .line 615
    .line 616
    goto :goto_8

    .line 617
    :catch_2
    move-exception v0

    .line 618
    move-object v12, v9

    .line 619
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 620
    .line 621
    .line 622
    goto :goto_8

    .line 623
    :cond_7
    move-object v12, v9

    .line 624
    :cond_8
    :goto_8
    if-nez v12, :cond_9

    .line 625
    .line 626
    const-string v0, "file"

    .line 627
    .line 628
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v10

    .line 632
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    move-result v0

    .line 636
    if-eqz v0, :cond_9

    .line 637
    .line 638
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    if-eqz v0, :cond_9

    .line 643
    .line 644
    const-string v10, "/"

    .line 645
    .line 646
    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 647
    .line 648
    .line 649
    move-result v10

    .line 650
    add-int/2addr v10, v6

    .line 651
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v12

    .line 655
    :cond_9
    if-nez v12, :cond_a

    .line 656
    .line 657
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    if-eqz v0, :cond_a

    .line 662
    .line 663
    move-object v12, v0

    .line 664
    :cond_a
    :goto_9
    iput-object v12, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S0:Ljava/lang/String;

    .line 665
    .line 666
    if-eqz v12, :cond_b

    .line 667
    .line 668
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    const-string v7, ".json"

    .line 673
    .line 674
    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 675
    .line 676
    .line 677
    move-result v0

    .line 678
    if-eqz v0, :cond_b

    .line 679
    .line 680
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 681
    .line 682
    new-instance v7, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 683
    .line 684
    const-string v10, "\u683c\u5f0f\u5316"

    .line 685
    .line 686
    iget v11, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X0:I

    .line 687
    .line 688
    invoke-direct {v7, v10, v11}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(Ljava/lang/String;I)V

    .line 689
    .line 690
    .line 691
    invoke-virtual {v0, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 692
    .line 693
    .line 694
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 695
    .line 696
    new-instance v7, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 697
    .line 698
    const-string v10, "\u538b\u7f29"

    .line 699
    .line 700
    iget v11, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Y0:I

    .line 701
    .line 702
    invoke-direct {v7, v10, v11}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(Ljava/lang/String;I)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v0, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 706
    .line 707
    .line 708
    :cond_b
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 709
    .line 710
    new-instance v7, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 711
    .line 712
    const-string v10, "\u6e05\u7a7a"

    .line 713
    .line 714
    iget v11, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->a1:I

    .line 715
    .line 716
    invoke-direct {v7, v10, v11}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(Ljava/lang/String;I)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v0, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 720
    .line 721
    .line 722
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 723
    .line 724
    new-instance v7, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 725
    .line 726
    const-string v10, "TV"

    .line 727
    .line 728
    iget v11, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Z0:I

    .line 729
    .line 730
    invoke-direct {v7, v10, v11}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(Ljava/lang/String;I)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v0, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 734
    .line 735
    .line 736
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 737
    .line 738
    iget-object v7, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 739
    .line 740
    invoke-virtual {v0, v7}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 741
    .line 742
    .line 743
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 744
    .line 745
    new-instance v7, Lua/d1;

    .line 746
    .line 747
    const/4 v10, 0x6

    .line 748
    invoke-direct {v7, v1, v10}, Lua/d1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V

    .line 749
    .line 750
    .line 751
    iput-object v7, v0, Lc6/g;->e:Lc6/e;

    .line 752
    .line 753
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 754
    .line 755
    new-instance v7, Lua/v0;

    .line 756
    .line 757
    invoke-direct {v7, v4}, Lua/v0;-><init>(I)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v0, v7}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 761
    .line 762
    .line 763
    const v0, 0x7f0b04f5

    .line 764
    .line 765
    .line 766
    invoke-virtual {v1, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 767
    .line 768
    .line 769
    move-result-object v4

    .line 770
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 771
    .line 772
    iput-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->F:Landroidx/recyclerview/widget/RecyclerView;

    .line 773
    .line 774
    new-instance v4, Lx9/t0;

    .line 775
    .line 776
    invoke-direct {v4, v6}, Lx9/t0;-><init>(I)V

    .line 777
    .line 778
    .line 779
    iput-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->H:Lx9/t0;

    .line 780
    .line 781
    const/4 v4, 0x0

    .line 782
    :goto_a
    iget-object v7, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->K:[Ljava/lang/String;

    .line 783
    .line 784
    array-length v10, v7

    .line 785
    if-ge v4, v10, :cond_c

    .line 786
    .line 787
    iget-object v10, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->H:Lx9/t0;

    .line 788
    .line 789
    new-instance v11, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 790
    .line 791
    aget-object v7, v7, v4

    .line 792
    .line 793
    invoke-direct {v11, v7}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(Ljava/lang/String;)V

    .line 794
    .line 795
    .line 796
    invoke-virtual {v10, v11}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 797
    .line 798
    .line 799
    add-int/2addr v4, v6

    .line 800
    goto :goto_a

    .line 801
    :cond_c
    iget-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->F:Landroidx/recyclerview/widget/RecyclerView;

    .line 802
    .line 803
    iget-object v7, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->H:Lx9/t0;

    .line 804
    .line 805
    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 806
    .line 807
    .line 808
    iget-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->H:Lx9/t0;

    .line 809
    .line 810
    new-instance v7, Lua/d1;

    .line 811
    .line 812
    const/4 v10, 0x7

    .line 813
    invoke-direct {v7, v1, v10}, Lua/d1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V

    .line 814
    .line 815
    .line 816
    iput-object v7, v4, Lc6/g;->e:Lc6/e;

    .line 817
    .line 818
    const-string v4, "auto_indent"

    .line 819
    .line 820
    const-string v7, "highlight_current_line"

    .line 821
    .line 822
    const-string v10, "gesture_scale"

    .line 823
    .line 824
    const-string v11, "show_line_number"

    .line 825
    .line 826
    const-string v12, "auto_line"

    .line 827
    .line 828
    const-string v13, "size"

    .line 829
    .line 830
    const v14, 0x7f0b055d

    .line 831
    .line 832
    .line 833
    invoke-virtual {v1, v14}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 834
    .line 835
    .line 836
    move-result-object v15

    .line 837
    check-cast v15, Landroidx/core/widget/NestedScrollView;

    .line 838
    .line 839
    iget-boolean v14, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 840
    .line 841
    if-nez v14, :cond_d

    .line 842
    .line 843
    invoke-virtual {v15, v5}, Landroid/view/View;->setVisibility(I)V

    .line 844
    .line 845
    .line 846
    new-instance v0, Landroid/widget/EditText;

    .line 847
    .line 848
    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 849
    .line 850
    .line 851
    iput-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 852
    .line 853
    const v2, 0x800033

    .line 854
    .line 855
    .line 856
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 857
    .line 858
    .line 859
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 860
    .line 861
    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 862
    .line 863
    .line 864
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 865
    .line 866
    const/16 v2, 0xa

    .line 867
    .line 868
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 869
    .line 870
    .line 871
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 872
    .line 873
    const/high16 v2, 0x41900000    # 18.0f

    .line 874
    .line 875
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 876
    .line 877
    .line 878
    new-instance v0, Li0/e;

    .line 879
    .line 880
    invoke-direct {v0, v8, v8}, Li0/e;-><init>(II)V

    .line 881
    .line 882
    .line 883
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 884
    .line 885
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    .line 887
    .line 888
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 889
    .line 890
    const/16 v2, 0x3e8

    .line 891
    .line 892
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 893
    .line 894
    .line 895
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 896
    .line 897
    new-instance v2, Lua/c1;

    .line 898
    .line 899
    invoke-direct {v2, v1, v6}, Lua/c1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 903
    .line 904
    .line 905
    goto/16 :goto_11

    .line 906
    .line 907
    :cond_d
    new-instance v14, Ltb/p;

    .line 908
    .line 909
    invoke-direct {v14, v6, v5}, Ltb/p;-><init>(IZ)V

    .line 910
    .line 911
    .line 912
    iput-object v14, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->V:Ltb/p;

    .line 913
    .line 914
    new-instance v14, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 915
    .line 916
    invoke-direct {v14, v1, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 917
    .line 918
    .line 919
    iput-object v14, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 920
    .line 921
    invoke-virtual/range {p0 .. p0}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 922
    .line 923
    .line 924
    move-result-object v15

    .line 925
    const v9, 0x7f0701c2

    .line 926
    .line 927
    .line 928
    invoke-virtual {v15, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 929
    .line 930
    .line 931
    move-result v9

    .line 932
    int-to-float v9, v9

    .line 933
    invoke-virtual {v14, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->setCursorWidth(F)V

    .line 934
    .line 935
    .line 936
    iget-object v9, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 937
    .line 938
    sget-object v14, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 939
    .line 940
    invoke-virtual {v9, v14}, Lio/github/rosemoe/sora/widget/CodeEditor;->setTypefaceText(Landroid/graphics/Typeface;)V

    .line 941
    .line 942
    .line 943
    iget-object v9, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 944
    .line 945
    invoke-virtual {v9, v14}, Lio/github/rosemoe/sora/widget/CodeEditor;->setTypefaceText(Landroid/graphics/Typeface;)V

    .line 946
    .line 947
    .line 948
    iget-object v9, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 949
    .line 950
    const/high16 v14, 0x40000000    # 2.0f

    .line 951
    .line 952
    iput v14, v9, Lio/github/rosemoe/sora/widget/CodeEditor;->B:F

    .line 953
    .line 954
    const v14, 0x3f8ccccd    # 1.1f

    .line 955
    .line 956
    .line 957
    iput v14, v9, Lio/github/rosemoe/sora/widget/CodeEditor;->A:F

    .line 958
    .line 959
    const/16 v9, 0x12

    .line 960
    .line 961
    :try_start_7
    iget-object v14, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 962
    .line 963
    invoke-interface {v14, v13, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 964
    .line 965
    .line 966
    move-result v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 967
    goto :goto_b

    .line 968
    :catch_3
    iget-object v14, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 969
    .line 970
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 971
    .line 972
    .line 973
    move-result-object v14

    .line 974
    invoke-interface {v14, v13, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 975
    .line 976
    .line 977
    move-result-object v13

    .line 978
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 979
    .line 980
    .line 981
    :goto_b
    iget-object v13, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 982
    .line 983
    int-to-float v9, v9

    .line 984
    invoke-virtual {v13, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->setTextSize(F)V

    .line 985
    .line 986
    .line 987
    :try_start_8
    iget-object v9, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 988
    .line 989
    invoke-interface {v9, v12, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 990
    .line 991
    .line 992
    move-result v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 993
    goto :goto_c

    .line 994
    :catch_4
    iget-object v9, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 995
    .line 996
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 997
    .line 998
    .line 999
    move-result-object v9

    .line 1000
    invoke-interface {v9, v12, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v9

    .line 1004
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1005
    .line 1006
    .line 1007
    const/4 v9, 0x1

    .line 1008
    :goto_c
    iget-object v12, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1009
    .line 1010
    invoke-virtual {v12, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->setWordwrap(Z)V

    .line 1011
    .line 1012
    .line 1013
    :try_start_9
    iget-object v9, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 1014
    .line 1015
    invoke-interface {v9, v11, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1019
    goto :goto_d

    .line 1020
    :catch_5
    iget-object v9, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 1021
    .line 1022
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v9

    .line 1026
    invoke-interface {v9, v11, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v9

    .line 1030
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1031
    .line 1032
    .line 1033
    const/4 v9, 0x1

    .line 1034
    :goto_d
    iget-object v11, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1035
    .line 1036
    invoke-virtual {v11, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->setLineNumberEnabled(Z)V

    .line 1037
    .line 1038
    .line 1039
    :try_start_a
    iget-object v9, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 1040
    .line 1041
    invoke-interface {v9, v10, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v9
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 1045
    goto :goto_e

    .line 1046
    :catch_6
    iget-object v9, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 1047
    .line 1048
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v9

    .line 1052
    invoke-interface {v9, v10, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v9

    .line 1056
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1057
    .line 1058
    .line 1059
    const/4 v9, 0x0

    .line 1060
    :goto_e
    iget-object v10, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1061
    .line 1062
    invoke-virtual {v10, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->setScalable(Z)V

    .line 1063
    .line 1064
    .line 1065
    :try_start_b
    iget-object v9, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 1066
    .line 1067
    invoke-interface {v9, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1068
    .line 1069
    .line 1070
    move-result v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 1071
    goto :goto_f

    .line 1072
    :catch_7
    iget-object v9, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 1073
    .line 1074
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v9

    .line 1078
    invoke-interface {v9, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v7

    .line 1082
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1083
    .line 1084
    .line 1085
    const/4 v7, 0x1

    .line 1086
    :goto_f
    iget-object v9, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1087
    .line 1088
    invoke-virtual {v9, v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->setHighlightCurrentLine(Z)V

    .line 1089
    .line 1090
    .line 1091
    :try_start_c
    iget-object v7, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 1092
    .line 1093
    invoke-interface {v7, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1094
    .line 1095
    .line 1096
    move-result v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 1097
    goto :goto_10

    .line 1098
    :catch_8
    iget-object v7, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 1099
    .line 1100
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v7

    .line 1104
    invoke-interface {v7, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v4

    .line 1108
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1109
    .line 1110
    .line 1111
    const/4 v4, 0x1

    .line 1112
    :goto_10
    iget-object v7, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1113
    .line 1114
    invoke-virtual {v7, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->M(Z)V

    .line 1115
    .line 1116
    .line 1117
    iget-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1118
    .line 1119
    invoke-virtual {v4, v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->setEditable(Z)V

    .line 1120
    .line 1121
    .line 1122
    iget-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1123
    .line 1124
    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 1125
    .line 1126
    .line 1127
    iget-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1128
    .line 1129
    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1130
    .line 1131
    .line 1132
    iget-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1133
    .line 1134
    invoke-virtual {v4, v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->setSoftKeyboardEnabled(Z)V

    .line 1135
    .line 1136
    .line 1137
    iget-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1138
    .line 1139
    invoke-virtual {v4, v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->setDisableSoftKbdIfHardKbdAvailable(Z)V

    .line 1140
    .line 1141
    .line 1142
    iget-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1143
    .line 1144
    new-instance v6, Ldb/m;

    .line 1145
    .line 1146
    invoke-direct {v6, v2, v1}, Ldb/m;-><init>(ILjava/lang/Object;)V

    .line 1147
    .line 1148
    .line 1149
    const-class v2, Ldb/v;

    .line 1150
    .line 1151
    invoke-virtual {v4, v2, v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->l0(Ljava/lang/Class;Ldb/q;)V

    .line 1152
    .line 1153
    .line 1154
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1155
    .line 1156
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v2

    .line 1160
    iput-boolean v5, v2, Ltb/e;->q:Z

    .line 1161
    .line 1162
    iput-boolean v5, v2, Ltb/e;->d:Z

    .line 1163
    .line 1164
    iput v8, v2, Ltb/e;->c:I

    .line 1165
    .line 1166
    iput-boolean v5, v2, Ltb/e;->b:Z

    .line 1167
    .line 1168
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1169
    .line 1170
    new-instance v4, Lua/c1;

    .line 1171
    .line 1172
    invoke-direct {v4, v1, v3}, Lua/c1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1176
    .line 1177
    .line 1178
    new-instance v2, Li0/e;

    .line 1179
    .line 1180
    invoke-direct {v2, v5, v5}, Li0/e;-><init>(II)V

    .line 1181
    .line 1182
    .line 1183
    const v3, 0x7f0b04e4

    .line 1184
    .line 1185
    .line 1186
    iput v3, v2, Li0/e;->j:I

    .line 1187
    .line 1188
    iput v0, v2, Li0/e;->k:I

    .line 1189
    .line 1190
    iput v5, v2, Li0/e;->t:I

    .line 1191
    .line 1192
    iput v5, v2, Li0/e;->v:I

    .line 1193
    .line 1194
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1195
    .line 1196
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1197
    .line 1198
    .line 1199
    :goto_11
    iget-boolean v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 1200
    .line 1201
    const v2, 0x7f0b0558

    .line 1202
    .line 1203
    .line 1204
    if-eqz v0, :cond_10

    .line 1205
    .line 1206
    if-eqz v0, :cond_e

    .line 1207
    .line 1208
    const v14, 0x7f0b0558

    .line 1209
    .line 1210
    .line 1211
    goto :goto_12

    .line 1212
    :cond_e
    const v14, 0x7f0b055d

    .line 1213
    .line 1214
    .line 1215
    :goto_12
    invoke-virtual {v1, v14}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v0

    .line 1219
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1220
    .line 1221
    iget-boolean v2, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 1222
    .line 1223
    if-eqz v2, :cond_f

    .line 1224
    .line 1225
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1226
    .line 1227
    goto :goto_13

    .line 1228
    :cond_f
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 1229
    .line 1230
    :goto_13
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1231
    .line 1232
    .line 1233
    :goto_14
    const/4 v2, 0x0

    .line 1234
    goto :goto_17

    .line 1235
    :cond_10
    if-eqz v0, :cond_11

    .line 1236
    .line 1237
    const v14, 0x7f0b0558

    .line 1238
    .line 1239
    .line 1240
    goto :goto_15

    .line 1241
    :cond_11
    const v14, 0x7f0b055d

    .line 1242
    .line 1243
    .line 1244
    :goto_15
    invoke-virtual {v1, v14}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v0

    .line 1248
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 1249
    .line 1250
    iget-boolean v2, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 1251
    .line 1252
    if-eqz v2, :cond_12

    .line 1253
    .line 1254
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1255
    .line 1256
    goto :goto_16

    .line 1257
    :cond_12
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 1258
    .line 1259
    :goto_16
    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    .line 1260
    .line 1261
    .line 1262
    goto :goto_14

    .line 1263
    :goto_17
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->x(Ljava/lang/String;)V

    .line 1264
    .line 1265
    .line 1266
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lma/b;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, p0, v1, p1}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lmc/c;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Lua/e1;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-direct {v0, p0, v1}, Lua/e1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final y(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-string v3, "addSuppressed"

    .line 8
    .line 9
    const-class v4, Ljava/lang/Throwable;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v5, "\u81ea\u52a8"

    .line 14
    .line 15
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-eqz v5, :cond_2

    .line 20
    .line 21
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->R:Landroid/net/Uri;

    .line 22
    .line 23
    invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 24
    .line 25
    .line 26
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :try_start_1
    invoke-static {v5}, Lorg/mozilla/universalchardet/UniversalDetector;->detectCharset(Ljava/io/InputStream;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 32
    .line 33
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    if-eqz v5, :cond_2

    .line 37
    .line 38
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catch_0
    move-exception v5

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception v6

    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_1
    move-exception v5

    .line 52
    :try_start_4
    new-array v7, v1, [Ljava/lang/Class;

    .line 53
    .line 54
    aput-object v4, v7, v0

    .line 55
    .line 56
    invoke-virtual {v4, v3, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    new-array v8, v1, [Ljava/lang/Object;

    .line 61
    .line 62
    aput-object v5, v8, v0

    .line 63
    .line 64
    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 65
    .line 66
    .line 67
    :catch_1
    :cond_1
    :goto_0
    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 68
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_2
    const-string v5, "UTF-8"

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_4

    .line 80
    .line 81
    :cond_3
    move-object p1, v5

    .line 82
    :cond_4
    const-string v6, "US-ASCII"

    .line 83
    .line 84
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_5

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_5
    move-object v5, p1

    .line 92
    :goto_3
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->R:Landroid/net/Uri;

    .line 93
    .line 94
    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    .line 99
    .line 100
    new-instance v6, Ljava/io/InputStreamReader;

    .line 101
    .line 102
    invoke-direct {v6, p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 106
    .line 107
    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    :goto_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    if-eqz v7, :cond_6

    .line 118
    .line 119
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const/16 v7, 0xa

    .line 123
    .line 124
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :catchall_2
    move-exception v2

    .line 129
    goto :goto_5

    .line 130
    :cond_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 134
    .line 135
    .line 136
    iput-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->O:Ljava/lang/String;

    .line 137
    .line 138
    iput-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->P:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 144
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 145
    .line 146
    .line 147
    return-object v0

    .line 148
    :goto_5
    if-eqz p1, :cond_7

    .line 149
    .line 150
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 151
    .line 152
    .line 153
    goto :goto_6

    .line 154
    :catchall_3
    move-exception p1

    .line 155
    :try_start_8
    new-array v5, v1, [Ljava/lang/Class;

    .line 156
    .line 157
    aput-object v4, v5, v0

    .line 158
    .line 159
    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    new-array v1, v1, [Ljava/lang/Object;

    .line 164
    .line 165
    aput-object p1, v1, v0

    .line 166
    .line 167
    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 168
    .line 169
    .line 170
    :catch_2
    :cond_7
    :goto_6
    goto :goto_8

    .line 171
    :goto_7
    throw v2

    .line 172
    :goto_8
    goto :goto_7
.end method

.method public final z()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->g0(II)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getSearcher()Ltb/r;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ltb/r;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    nop

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Z:Landroid/widget/EditText;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->t0:Landroid/widget/TextView;

    .line 35
    .line 36
    const-string v1, "\u7ed3\u679c\uff1a0"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 43
    .line 44
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getSearcher()Ltb/r;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Z:Landroid/widget/EditText;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->V:Ltb/p;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    iget v3, v2, Ltb/p;->b:I

    .line 70
    .line 71
    const/4 v4, 0x3

    .line 72
    if-ne v3, v4, :cond_1

    .line 73
    .line 74
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 75
    .line 76
    .line 77
    :cond_1
    iput-object v1, v0, Ltb/r;->b:Ljava/lang/String;

    .line 78
    .line 79
    iput-object v2, v0, Ltb/r;->c:Ltb/p;

    .line 80
    .line 81
    invoke-virtual {v0}, Ltb/r;->b()V

    .line 82
    .line 83
    .line 84
    iget-object v0, v0, Ltb/r;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string v1, "pattern length must be > 0"

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :catch_1
    :goto_1
    return-void
.end method
