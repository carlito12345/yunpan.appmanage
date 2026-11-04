.class public final Lqh/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lqh/h0;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Lqh/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 1
    const/16 v7, 0xd

    .line 2
    .line 3
    const-string v8, "script"

    .line 4
    .line 5
    const/16 v9, 0xc

    .line 6
    .line 7
    const/16 v10, 0xb

    .line 8
    .line 9
    const/16 v11, 0xa

    .line 10
    .line 11
    const/16 v12, 0x9

    .line 12
    .line 13
    const/16 v13, 0x8

    .line 14
    .line 15
    const/4 v14, 0x7

    .line 16
    const/4 v15, 0x6

    .line 17
    const/4 v0, 0x5

    .line 18
    const/4 v1, 0x4

    .line 19
    const/4 v2, 0x3

    .line 20
    const/4 v3, 0x2

    .line 21
    const/4 v4, 0x1

    .line 22
    const/4 v5, 0x0

    .line 23
    const/16 v6, 0x46

    .line 24
    .line 25
    new-array v6, v6, [Ljava/lang/String;

    .line 26
    .line 27
    const-string v23, "html"

    .line 28
    .line 29
    aput-object v23, v6, v5

    .line 30
    .line 31
    const-string v23, "head"

    .line 32
    .line 33
    aput-object v23, v6, v4

    .line 34
    .line 35
    const-string v23, "body"

    .line 36
    .line 37
    aput-object v23, v6, v3

    .line 38
    .line 39
    const-string v23, "frameset"

    .line 40
    .line 41
    aput-object v23, v6, v2

    .line 42
    .line 43
    aput-object v8, v6, v1

    .line 44
    .line 45
    const-string v23, "noscript"

    .line 46
    .line 47
    aput-object v23, v6, v0

    .line 48
    .line 49
    const-string v23, "style"

    .line 50
    .line 51
    aput-object v23, v6, v15

    .line 52
    .line 53
    const-string v23, "meta"

    .line 54
    .line 55
    aput-object v23, v6, v14

    .line 56
    .line 57
    const-string v23, "link"

    .line 58
    .line 59
    aput-object v23, v6, v13

    .line 60
    .line 61
    const-string v23, "title"

    .line 62
    .line 63
    aput-object v23, v6, v12

    .line 64
    .line 65
    const-string v23, "frame"

    .line 66
    .line 67
    aput-object v23, v6, v11

    .line 68
    .line 69
    const-string v23, "noframes"

    .line 70
    .line 71
    aput-object v23, v6, v10

    .line 72
    .line 73
    const-string v23, "section"

    .line 74
    .line 75
    aput-object v23, v6, v9

    .line 76
    .line 77
    const-string v23, "nav"

    .line 78
    .line 79
    aput-object v23, v6, v7

    .line 80
    .line 81
    const-string v23, "aside"

    .line 82
    .line 83
    const/16 v22, 0xe

    .line 84
    .line 85
    aput-object v23, v6, v22

    .line 86
    .line 87
    const-string v23, "hgroup"

    .line 88
    .line 89
    const/16 v21, 0xf

    .line 90
    .line 91
    aput-object v23, v6, v21

    .line 92
    .line 93
    const-string v23, "header"

    .line 94
    .line 95
    const/16 v20, 0x10

    .line 96
    .line 97
    aput-object v23, v6, v20

    .line 98
    .line 99
    const-string v23, "footer"

    .line 100
    .line 101
    const/16 v19, 0x11

    .line 102
    .line 103
    aput-object v23, v6, v19

    .line 104
    .line 105
    const-string v23, "p"

    .line 106
    .line 107
    const/16 v18, 0x12

    .line 108
    .line 109
    aput-object v23, v6, v18

    .line 110
    .line 111
    const-string v23, "h1"

    .line 112
    .line 113
    const/16 v17, 0x13

    .line 114
    .line 115
    aput-object v23, v6, v17

    .line 116
    .line 117
    const-string v23, "h2"

    .line 118
    .line 119
    const/16 v16, 0x14

    .line 120
    .line 121
    aput-object v23, v6, v16

    .line 122
    .line 123
    const-string v23, "h3"

    .line 124
    .line 125
    const/16 v24, 0x15

    .line 126
    .line 127
    aput-object v23, v6, v24

    .line 128
    .line 129
    const-string v23, "h4"

    .line 130
    .line 131
    const/16 v24, 0x16

    .line 132
    .line 133
    aput-object v23, v6, v24

    .line 134
    .line 135
    const-string v23, "h5"

    .line 136
    .line 137
    const/16 v24, 0x17

    .line 138
    .line 139
    aput-object v23, v6, v24

    .line 140
    .line 141
    const-string v23, "h6"

    .line 142
    .line 143
    const/16 v24, 0x18

    .line 144
    .line 145
    aput-object v23, v6, v24

    .line 146
    .line 147
    const-string v23, "br"

    .line 148
    .line 149
    const/16 v24, 0x19

    .line 150
    .line 151
    aput-object v23, v6, v24

    .line 152
    .line 153
    const-string v23, "button"

    .line 154
    .line 155
    const/16 v24, 0x1a

    .line 156
    .line 157
    aput-object v23, v6, v24

    .line 158
    .line 159
    const-string v23, "ul"

    .line 160
    .line 161
    const/16 v24, 0x1b

    .line 162
    .line 163
    aput-object v23, v6, v24

    .line 164
    .line 165
    const-string v23, "ol"

    .line 166
    .line 167
    const/16 v24, 0x1c

    .line 168
    .line 169
    aput-object v23, v6, v24

    .line 170
    .line 171
    const-string v23, "pre"

    .line 172
    .line 173
    const/16 v24, 0x1d

    .line 174
    .line 175
    aput-object v23, v6, v24

    .line 176
    .line 177
    const-string v23, "div"

    .line 178
    .line 179
    const/16 v24, 0x1e

    .line 180
    .line 181
    aput-object v23, v6, v24

    .line 182
    .line 183
    const-string v23, "blockquote"

    .line 184
    .line 185
    const/16 v24, 0x1f

    .line 186
    .line 187
    aput-object v23, v6, v24

    .line 188
    .line 189
    const-string v23, "hr"

    .line 190
    .line 191
    const/16 v24, 0x20

    .line 192
    .line 193
    aput-object v23, v6, v24

    .line 194
    .line 195
    const-string v23, "address"

    .line 196
    .line 197
    const/16 v24, 0x21

    .line 198
    .line 199
    aput-object v23, v6, v24

    .line 200
    .line 201
    const-string v23, "figure"

    .line 202
    .line 203
    const/16 v24, 0x22

    .line 204
    .line 205
    aput-object v23, v6, v24

    .line 206
    .line 207
    const-string v23, "figcaption"

    .line 208
    .line 209
    const/16 v24, 0x23

    .line 210
    .line 211
    aput-object v23, v6, v24

    .line 212
    .line 213
    const-string v23, "form"

    .line 214
    .line 215
    const/16 v24, 0x24

    .line 216
    .line 217
    aput-object v23, v6, v24

    .line 218
    .line 219
    const-string v23, "fieldset"

    .line 220
    .line 221
    const/16 v24, 0x25

    .line 222
    .line 223
    aput-object v23, v6, v24

    .line 224
    .line 225
    const-string v23, "ins"

    .line 226
    .line 227
    const/16 v24, 0x26

    .line 228
    .line 229
    aput-object v23, v6, v24

    .line 230
    .line 231
    const-string v23, "del"

    .line 232
    .line 233
    const/16 v24, 0x27

    .line 234
    .line 235
    aput-object v23, v6, v24

    .line 236
    .line 237
    const-string v23, "dl"

    .line 238
    .line 239
    const/16 v24, 0x28

    .line 240
    .line 241
    aput-object v23, v6, v24

    .line 242
    .line 243
    const-string v23, "dt"

    .line 244
    .line 245
    const/16 v24, 0x29

    .line 246
    .line 247
    aput-object v23, v6, v24

    .line 248
    .line 249
    const-string v23, "dd"

    .line 250
    .line 251
    const/16 v24, 0x2a

    .line 252
    .line 253
    aput-object v23, v6, v24

    .line 254
    .line 255
    const-string v23, "li"

    .line 256
    .line 257
    const/16 v24, 0x2b

    .line 258
    .line 259
    aput-object v23, v6, v24

    .line 260
    .line 261
    const-string v23, "table"

    .line 262
    .line 263
    const/16 v24, 0x2c

    .line 264
    .line 265
    aput-object v23, v6, v24

    .line 266
    .line 267
    const-string v23, "caption"

    .line 268
    .line 269
    const/16 v24, 0x2d

    .line 270
    .line 271
    aput-object v23, v6, v24

    .line 272
    .line 273
    const-string v23, "thead"

    .line 274
    .line 275
    const/16 v24, 0x2e

    .line 276
    .line 277
    aput-object v23, v6, v24

    .line 278
    .line 279
    const-string v23, "tfoot"

    .line 280
    .line 281
    const/16 v24, 0x2f

    .line 282
    .line 283
    aput-object v23, v6, v24

    .line 284
    .line 285
    const-string v23, "tbody"

    .line 286
    .line 287
    const/16 v24, 0x30

    .line 288
    .line 289
    aput-object v23, v6, v24

    .line 290
    .line 291
    const-string v23, "colgroup"

    .line 292
    .line 293
    const/16 v24, 0x31

    .line 294
    .line 295
    aput-object v23, v6, v24

    .line 296
    .line 297
    const-string v23, "col"

    .line 298
    .line 299
    const/16 v24, 0x32

    .line 300
    .line 301
    aput-object v23, v6, v24

    .line 302
    .line 303
    const-string v23, "tr"

    .line 304
    .line 305
    const/16 v24, 0x33

    .line 306
    .line 307
    aput-object v23, v6, v24

    .line 308
    .line 309
    const-string v23, "th"

    .line 310
    .line 311
    const/16 v24, 0x34

    .line 312
    .line 313
    aput-object v23, v6, v24

    .line 314
    .line 315
    const-string v23, "td"

    .line 316
    .line 317
    const/16 v24, 0x35

    .line 318
    .line 319
    aput-object v23, v6, v24

    .line 320
    .line 321
    const-string v23, "video"

    .line 322
    .line 323
    const/16 v24, 0x36

    .line 324
    .line 325
    aput-object v23, v6, v24

    .line 326
    .line 327
    const-string v23, "audio"

    .line 328
    .line 329
    const/16 v24, 0x37

    .line 330
    .line 331
    aput-object v23, v6, v24

    .line 332
    .line 333
    const-string v23, "canvas"

    .line 334
    .line 335
    const/16 v24, 0x38

    .line 336
    .line 337
    aput-object v23, v6, v24

    .line 338
    .line 339
    const-string v23, "details"

    .line 340
    .line 341
    const/16 v24, 0x39

    .line 342
    .line 343
    aput-object v23, v6, v24

    .line 344
    .line 345
    const-string v23, "menu"

    .line 346
    .line 347
    const/16 v24, 0x3a

    .line 348
    .line 349
    aput-object v23, v6, v24

    .line 350
    .line 351
    const-string v23, "plaintext"

    .line 352
    .line 353
    const/16 v24, 0x3b

    .line 354
    .line 355
    aput-object v23, v6, v24

    .line 356
    .line 357
    const-string v23, "template"

    .line 358
    .line 359
    const/16 v24, 0x3c

    .line 360
    .line 361
    aput-object v23, v6, v24

    .line 362
    .line 363
    const-string v24, "article"

    .line 364
    .line 365
    const/16 v25, 0x3d

    .line 366
    .line 367
    aput-object v24, v6, v25

    .line 368
    .line 369
    const-string v24, "main"

    .line 370
    .line 371
    const/16 v25, 0x3e

    .line 372
    .line 373
    aput-object v24, v6, v25

    .line 374
    .line 375
    const-string v24, "center"

    .line 376
    .line 377
    const/16 v25, 0x3f

    .line 378
    .line 379
    aput-object v24, v6, v25

    .line 380
    .line 381
    const/16 v24, 0x40

    .line 382
    .line 383
    aput-object v23, v6, v24

    .line 384
    .line 385
    const-string v23, "dir"

    .line 386
    .line 387
    const/16 v24, 0x41

    .line 388
    .line 389
    aput-object v23, v6, v24

    .line 390
    .line 391
    const-string v23, "applet"

    .line 392
    .line 393
    const/16 v24, 0x42

    .line 394
    .line 395
    aput-object v23, v6, v24

    .line 396
    .line 397
    const-string v23, "marquee"

    .line 398
    .line 399
    const/16 v24, 0x43

    .line 400
    .line 401
    aput-object v23, v6, v24

    .line 402
    .line 403
    const-string v23, "listing"

    .line 404
    .line 405
    const/16 v24, 0x44

    .line 406
    .line 407
    aput-object v23, v6, v24

    .line 408
    .line 409
    const-string v23, "#root"

    .line 410
    .line 411
    const/16 v24, 0x45

    .line 412
    .line 413
    aput-object v23, v6, v24

    .line 414
    .line 415
    const/16 v7, 0x44

    .line 416
    .line 417
    new-array v7, v7, [Ljava/lang/String;

    .line 418
    .line 419
    const-string v24, "object"

    .line 420
    .line 421
    aput-object v24, v7, v5

    .line 422
    .line 423
    const-string v24, "base"

    .line 424
    .line 425
    aput-object v24, v7, v4

    .line 426
    .line 427
    const-string v24, "font"

    .line 428
    .line 429
    aput-object v24, v7, v3

    .line 430
    .line 431
    const-string v24, "tt"

    .line 432
    .line 433
    aput-object v24, v7, v2

    .line 434
    .line 435
    const-string v24, "i"

    .line 436
    .line 437
    aput-object v24, v7, v1

    .line 438
    .line 439
    const-string v24, "b"

    .line 440
    .line 441
    aput-object v24, v7, v0

    .line 442
    .line 443
    const-string v24, "u"

    .line 444
    .line 445
    aput-object v24, v7, v15

    .line 446
    .line 447
    const-string v24, "big"

    .line 448
    .line 449
    aput-object v24, v7, v14

    .line 450
    .line 451
    const-string v24, "small"

    .line 452
    .line 453
    aput-object v24, v7, v13

    .line 454
    .line 455
    const-string v24, "em"

    .line 456
    .line 457
    aput-object v24, v7, v12

    .line 458
    .line 459
    const-string v24, "strong"

    .line 460
    .line 461
    aput-object v24, v7, v11

    .line 462
    .line 463
    const-string v24, "dfn"

    .line 464
    .line 465
    aput-object v24, v7, v10

    .line 466
    .line 467
    const-string v24, "code"

    .line 468
    .line 469
    aput-object v24, v7, v9

    .line 470
    .line 471
    const-string v24, "samp"

    .line 472
    .line 473
    const/16 v23, 0xd

    .line 474
    .line 475
    aput-object v24, v7, v23

    .line 476
    .line 477
    const-string v24, "kbd"

    .line 478
    .line 479
    const/16 v22, 0xe

    .line 480
    .line 481
    aput-object v24, v7, v22

    .line 482
    .line 483
    const-string v24, "var"

    .line 484
    .line 485
    const/16 v21, 0xf

    .line 486
    .line 487
    aput-object v24, v7, v21

    .line 488
    .line 489
    const-string v24, "cite"

    .line 490
    .line 491
    const/16 v20, 0x10

    .line 492
    .line 493
    aput-object v24, v7, v20

    .line 494
    .line 495
    const-string v24, "abbr"

    .line 496
    .line 497
    const/16 v19, 0x11

    .line 498
    .line 499
    aput-object v24, v7, v19

    .line 500
    .line 501
    const-string v24, "time"

    .line 502
    .line 503
    const/16 v18, 0x12

    .line 504
    .line 505
    aput-object v24, v7, v18

    .line 506
    .line 507
    const-string v24, "acronym"

    .line 508
    .line 509
    const/16 v17, 0x13

    .line 510
    .line 511
    aput-object v24, v7, v17

    .line 512
    .line 513
    const-string v24, "mark"

    .line 514
    .line 515
    const/16 v16, 0x14

    .line 516
    .line 517
    aput-object v24, v7, v16

    .line 518
    .line 519
    const-string v24, "ruby"

    .line 520
    .line 521
    const/16 v25, 0x15

    .line 522
    .line 523
    aput-object v24, v7, v25

    .line 524
    .line 525
    const-string v24, "rt"

    .line 526
    .line 527
    const/16 v25, 0x16

    .line 528
    .line 529
    aput-object v24, v7, v25

    .line 530
    .line 531
    const-string v24, "rp"

    .line 532
    .line 533
    const/16 v25, 0x17

    .line 534
    .line 535
    aput-object v24, v7, v25

    .line 536
    .line 537
    const-string v24, "rtc"

    .line 538
    .line 539
    const/16 v25, 0x18

    .line 540
    .line 541
    aput-object v24, v7, v25

    .line 542
    .line 543
    const-string v24, "a"

    .line 544
    .line 545
    const/16 v25, 0x19

    .line 546
    .line 547
    aput-object v24, v7, v25

    .line 548
    .line 549
    const-string v24, "img"

    .line 550
    .line 551
    const/16 v25, 0x1a

    .line 552
    .line 553
    aput-object v24, v7, v25

    .line 554
    .line 555
    const-string v24, "wbr"

    .line 556
    .line 557
    const/16 v25, 0x1b

    .line 558
    .line 559
    aput-object v24, v7, v25

    .line 560
    .line 561
    const-string v24, "map"

    .line 562
    .line 563
    const/16 v25, 0x1c

    .line 564
    .line 565
    aput-object v24, v7, v25

    .line 566
    .line 567
    const-string v24, "q"

    .line 568
    .line 569
    const/16 v25, 0x1d

    .line 570
    .line 571
    aput-object v24, v7, v25

    .line 572
    .line 573
    const-string v24, "sub"

    .line 574
    .line 575
    const/16 v25, 0x1e

    .line 576
    .line 577
    aput-object v24, v7, v25

    .line 578
    .line 579
    const-string v24, "sup"

    .line 580
    .line 581
    const/16 v25, 0x1f

    .line 582
    .line 583
    aput-object v24, v7, v25

    .line 584
    .line 585
    const-string v24, "bdo"

    .line 586
    .line 587
    const/16 v25, 0x20

    .line 588
    .line 589
    aput-object v24, v7, v25

    .line 590
    .line 591
    const-string v24, "iframe"

    .line 592
    .line 593
    const/16 v25, 0x21

    .line 594
    .line 595
    aput-object v24, v7, v25

    .line 596
    .line 597
    const-string v24, "embed"

    .line 598
    .line 599
    const/16 v25, 0x22

    .line 600
    .line 601
    aput-object v24, v7, v25

    .line 602
    .line 603
    const-string v24, "span"

    .line 604
    .line 605
    const/16 v25, 0x23

    .line 606
    .line 607
    aput-object v24, v7, v25

    .line 608
    .line 609
    const-string v24, "input"

    .line 610
    .line 611
    const/16 v25, 0x24

    .line 612
    .line 613
    aput-object v24, v7, v25

    .line 614
    .line 615
    const-string v24, "select"

    .line 616
    .line 617
    const/16 v25, 0x25

    .line 618
    .line 619
    aput-object v24, v7, v25

    .line 620
    .line 621
    const-string v24, "textarea"

    .line 622
    .line 623
    const/16 v25, 0x26

    .line 624
    .line 625
    aput-object v24, v7, v25

    .line 626
    .line 627
    const-string v24, "label"

    .line 628
    .line 629
    const/16 v25, 0x27

    .line 630
    .line 631
    aput-object v24, v7, v25

    .line 632
    .line 633
    const-string v24, "optgroup"

    .line 634
    .line 635
    const/16 v25, 0x28

    .line 636
    .line 637
    aput-object v24, v7, v25

    .line 638
    .line 639
    const-string v24, "option"

    .line 640
    .line 641
    const/16 v25, 0x29

    .line 642
    .line 643
    aput-object v24, v7, v25

    .line 644
    .line 645
    const-string v24, "legend"

    .line 646
    .line 647
    const/16 v25, 0x2a

    .line 648
    .line 649
    aput-object v24, v7, v25

    .line 650
    .line 651
    const-string v24, "datalist"

    .line 652
    .line 653
    const/16 v25, 0x2b

    .line 654
    .line 655
    aput-object v24, v7, v25

    .line 656
    .line 657
    const-string v24, "keygen"

    .line 658
    .line 659
    const/16 v25, 0x2c

    .line 660
    .line 661
    aput-object v24, v7, v25

    .line 662
    .line 663
    const-string v24, "output"

    .line 664
    .line 665
    const/16 v25, 0x2d

    .line 666
    .line 667
    aput-object v24, v7, v25

    .line 668
    .line 669
    const-string v24, "progress"

    .line 670
    .line 671
    const/16 v25, 0x2e

    .line 672
    .line 673
    aput-object v24, v7, v25

    .line 674
    .line 675
    const-string v24, "meter"

    .line 676
    .line 677
    const/16 v25, 0x2f

    .line 678
    .line 679
    aput-object v24, v7, v25

    .line 680
    .line 681
    const-string v24, "area"

    .line 682
    .line 683
    const/16 v25, 0x30

    .line 684
    .line 685
    aput-object v24, v7, v25

    .line 686
    .line 687
    const-string v25, "param"

    .line 688
    .line 689
    const/16 v26, 0x31

    .line 690
    .line 691
    aput-object v25, v7, v26

    .line 692
    .line 693
    const-string v26, "source"

    .line 694
    .line 695
    const/16 v27, 0x32

    .line 696
    .line 697
    aput-object v26, v7, v27

    .line 698
    .line 699
    const-string v27, "track"

    .line 700
    .line 701
    const/16 v28, 0x33

    .line 702
    .line 703
    aput-object v27, v7, v28

    .line 704
    .line 705
    const-string v28, "summary"

    .line 706
    .line 707
    const/16 v29, 0x34

    .line 708
    .line 709
    aput-object v28, v7, v29

    .line 710
    .line 711
    const-string v28, "command"

    .line 712
    .line 713
    const/16 v29, 0x35

    .line 714
    .line 715
    aput-object v28, v7, v29

    .line 716
    .line 717
    const-string v28, "device"

    .line 718
    .line 719
    const/16 v29, 0x36

    .line 720
    .line 721
    aput-object v28, v7, v29

    .line 722
    .line 723
    const/16 v28, 0x37

    .line 724
    .line 725
    aput-object v24, v7, v28

    .line 726
    .line 727
    const-string v24, "basefont"

    .line 728
    .line 729
    const/16 v28, 0x38

    .line 730
    .line 731
    aput-object v24, v7, v28

    .line 732
    .line 733
    const-string v24, "bgsound"

    .line 734
    .line 735
    const/16 v28, 0x39

    .line 736
    .line 737
    aput-object v24, v7, v28

    .line 738
    .line 739
    const-string v24, "menuitem"

    .line 740
    .line 741
    const/16 v28, 0x3a

    .line 742
    .line 743
    aput-object v24, v7, v28

    .line 744
    .line 745
    const/16 v24, 0x3b

    .line 746
    .line 747
    aput-object v25, v7, v24

    .line 748
    .line 749
    const/16 v24, 0x3c

    .line 750
    .line 751
    aput-object v26, v7, v24

    .line 752
    .line 753
    const/16 v24, 0x3d

    .line 754
    .line 755
    aput-object v27, v7, v24

    .line 756
    .line 757
    const-string v24, "data"

    .line 758
    .line 759
    const/16 v25, 0x3e

    .line 760
    .line 761
    aput-object v24, v7, v25

    .line 762
    .line 763
    const-string v24, "bdi"

    .line 764
    .line 765
    const/16 v25, 0x3f

    .line 766
    .line 767
    aput-object v24, v7, v25

    .line 768
    .line 769
    const-string v24, "s"

    .line 770
    .line 771
    const/16 v25, 0x40

    .line 772
    .line 773
    aput-object v24, v7, v25

    .line 774
    .line 775
    const-string v24, "strike"

    .line 776
    .line 777
    const/16 v25, 0x41

    .line 778
    .line 779
    aput-object v24, v7, v25

    .line 780
    .line 781
    const-string v24, "nobr"

    .line 782
    .line 783
    const/16 v25, 0x42

    .line 784
    .line 785
    aput-object v24, v7, v25

    .line 786
    .line 787
    const-string v24, "rb"

    .line 788
    .line 789
    const/16 v25, 0x43

    .line 790
    .line 791
    aput-object v24, v7, v25

    .line 792
    .line 793
    const/16 v9, 0x14

    .line 794
    .line 795
    new-array v10, v9, [Ljava/lang/String;

    .line 796
    .line 797
    const-string v9, "title"

    .line 798
    .line 799
    aput-object v9, v10, v5

    .line 800
    .line 801
    const-string v9, "a"

    .line 802
    .line 803
    aput-object v9, v10, v4

    .line 804
    .line 805
    const-string v9, "p"

    .line 806
    .line 807
    aput-object v9, v10, v3

    .line 808
    .line 809
    const-string v9, "h1"

    .line 810
    .line 811
    aput-object v9, v10, v2

    .line 812
    .line 813
    const-string v9, "h2"

    .line 814
    .line 815
    aput-object v9, v10, v1

    .line 816
    .line 817
    const-string v9, "h3"

    .line 818
    .line 819
    aput-object v9, v10, v0

    .line 820
    .line 821
    const-string v9, "h4"

    .line 822
    .line 823
    aput-object v9, v10, v15

    .line 824
    .line 825
    const-string v9, "h5"

    .line 826
    .line 827
    aput-object v9, v10, v14

    .line 828
    .line 829
    const-string v9, "h6"

    .line 830
    .line 831
    aput-object v9, v10, v13

    .line 832
    .line 833
    const-string v9, "pre"

    .line 834
    .line 835
    aput-object v9, v10, v12

    .line 836
    .line 837
    const-string v9, "address"

    .line 838
    .line 839
    aput-object v9, v10, v11

    .line 840
    .line 841
    const-string v9, "li"

    .line 842
    .line 843
    const/16 v25, 0xb

    .line 844
    .line 845
    aput-object v9, v10, v25

    .line 846
    .line 847
    const-string v9, "th"

    .line 848
    .line 849
    const/16 v24, 0xc

    .line 850
    .line 851
    aput-object v9, v10, v24

    .line 852
    .line 853
    const-string v9, "td"

    .line 854
    .line 855
    const/16 v23, 0xd

    .line 856
    .line 857
    aput-object v9, v10, v23

    .line 858
    .line 859
    const/16 v9, 0xe

    .line 860
    .line 861
    aput-object v8, v10, v9

    .line 862
    .line 863
    const-string v9, "style"

    .line 864
    .line 865
    const/16 v21, 0xf

    .line 866
    .line 867
    aput-object v9, v10, v21

    .line 868
    .line 869
    const-string v9, "ins"

    .line 870
    .line 871
    const/16 v20, 0x10

    .line 872
    .line 873
    aput-object v9, v10, v20

    .line 874
    .line 875
    const-string v9, "del"

    .line 876
    .line 877
    const/16 v19, 0x11

    .line 878
    .line 879
    aput-object v9, v10, v19

    .line 880
    .line 881
    const-string v9, "s"

    .line 882
    .line 883
    const/16 v18, 0x12

    .line 884
    .line 885
    aput-object v9, v10, v18

    .line 886
    .line 887
    const-string v9, "button"

    .line 888
    .line 889
    const/16 v17, 0x13

    .line 890
    .line 891
    aput-object v9, v10, v17

    .line 892
    .line 893
    const/16 v9, 0x15

    .line 894
    .line 895
    new-array v9, v9, [Ljava/lang/String;

    .line 896
    .line 897
    const-string v26, "meta"

    .line 898
    .line 899
    aput-object v26, v9, v5

    .line 900
    .line 901
    const-string v26, "link"

    .line 902
    .line 903
    aput-object v26, v9, v4

    .line 904
    .line 905
    const-string v26, "base"

    .line 906
    .line 907
    aput-object v26, v9, v3

    .line 908
    .line 909
    const-string v26, "frame"

    .line 910
    .line 911
    aput-object v26, v9, v2

    .line 912
    .line 913
    const-string v26, "img"

    .line 914
    .line 915
    aput-object v26, v9, v1

    .line 916
    .line 917
    const-string v26, "br"

    .line 918
    .line 919
    aput-object v26, v9, v0

    .line 920
    .line 921
    const-string v26, "wbr"

    .line 922
    .line 923
    aput-object v26, v9, v15

    .line 924
    .line 925
    const-string v26, "embed"

    .line 926
    .line 927
    aput-object v26, v9, v14

    .line 928
    .line 929
    const-string v26, "hr"

    .line 930
    .line 931
    aput-object v26, v9, v13

    .line 932
    .line 933
    const-string v26, "input"

    .line 934
    .line 935
    aput-object v26, v9, v12

    .line 936
    .line 937
    const-string v26, "keygen"

    .line 938
    .line 939
    aput-object v26, v9, v11

    .line 940
    .line 941
    const-string v26, "col"

    .line 942
    .line 943
    const/16 v25, 0xb

    .line 944
    .line 945
    aput-object v26, v9, v25

    .line 946
    .line 947
    const-string v26, "command"

    .line 948
    .line 949
    const/16 v24, 0xc

    .line 950
    .line 951
    aput-object v26, v9, v24

    .line 952
    .line 953
    const-string v26, "device"

    .line 954
    .line 955
    const/16 v23, 0xd

    .line 956
    .line 957
    aput-object v26, v9, v23

    .line 958
    .line 959
    const-string v23, "area"

    .line 960
    .line 961
    const/16 v22, 0xe

    .line 962
    .line 963
    aput-object v23, v9, v22

    .line 964
    .line 965
    const-string v22, "basefont"

    .line 966
    .line 967
    const/16 v21, 0xf

    .line 968
    .line 969
    aput-object v22, v9, v21

    .line 970
    .line 971
    const-string v21, "bgsound"

    .line 972
    .line 973
    const/16 v20, 0x10

    .line 974
    .line 975
    aput-object v21, v9, v20

    .line 976
    .line 977
    const-string v20, "menuitem"

    .line 978
    .line 979
    const/16 v19, 0x11

    .line 980
    .line 981
    aput-object v20, v9, v19

    .line 982
    .line 983
    const-string v19, "param"

    .line 984
    .line 985
    const/16 v18, 0x12

    .line 986
    .line 987
    aput-object v19, v9, v18

    .line 988
    .line 989
    const-string v18, "source"

    .line 990
    .line 991
    const/16 v17, 0x13

    .line 992
    .line 993
    aput-object v18, v9, v17

    .line 994
    .line 995
    const-string v17, "track"

    .line 996
    .line 997
    const/16 v16, 0x14

    .line 998
    .line 999
    aput-object v17, v9, v16

    .line 1000
    .line 1001
    const-string v16, "title"

    .line 1002
    .line 1003
    const-string v17, "textarea"

    .line 1004
    .line 1005
    new-array v14, v0, [Ljava/lang/String;

    .line 1006
    .line 1007
    const-string v19, "pre"

    .line 1008
    .line 1009
    aput-object v19, v14, v5

    .line 1010
    .line 1011
    const-string v19, "plaintext"

    .line 1012
    .line 1013
    aput-object v19, v14, v4

    .line 1014
    .line 1015
    aput-object v16, v14, v3

    .line 1016
    .line 1017
    aput-object v17, v14, v2

    .line 1018
    .line 1019
    aput-object v8, v14, v1

    .line 1020
    .line 1021
    new-array v11, v3, [Ljava/lang/String;

    .line 1022
    .line 1023
    aput-object v16, v11, v5

    .line 1024
    .line 1025
    aput-object v17, v11, v4

    .line 1026
    .line 1027
    new-array v12, v15, [Ljava/lang/String;

    .line 1028
    .line 1029
    const-string v17, "iframe"

    .line 1030
    .line 1031
    aput-object v17, v12, v5

    .line 1032
    .line 1033
    const-string v17, "noembed"

    .line 1034
    .line 1035
    aput-object v17, v12, v4

    .line 1036
    .line 1037
    const-string v17, "noframes"

    .line 1038
    .line 1039
    aput-object v17, v12, v3

    .line 1040
    .line 1041
    aput-object v8, v12, v2

    .line 1042
    .line 1043
    const-string v17, "style"

    .line 1044
    .line 1045
    aput-object v17, v12, v1

    .line 1046
    .line 1047
    const-string v17, "xmp"

    .line 1048
    .line 1049
    aput-object v17, v12, v0

    .line 1050
    .line 1051
    sget-object v15, Loh/a;->d:[Ljava/lang/String;

    .line 1052
    .line 1053
    new-array v13, v4, [Ljava/lang/String;

    .line 1054
    .line 1055
    const-string v21, "math"

    .line 1056
    .line 1057
    aput-object v21, v13, v5

    .line 1058
    .line 1059
    new-array v1, v0, [Ljava/lang/String;

    .line 1060
    .line 1061
    const-string v22, "mi"

    .line 1062
    .line 1063
    aput-object v22, v1, v5

    .line 1064
    .line 1065
    const-string v22, "mo"

    .line 1066
    .line 1067
    aput-object v22, v1, v4

    .line 1068
    .line 1069
    const-string v22, "msup"

    .line 1070
    .line 1071
    aput-object v22, v1, v3

    .line 1072
    .line 1073
    const-string v22, "mn"

    .line 1074
    .line 1075
    aput-object v22, v1, v2

    .line 1076
    .line 1077
    const-string v22, "mtext"

    .line 1078
    .line 1079
    const/16 v21, 0x4

    .line 1080
    .line 1081
    aput-object v22, v1, v21

    .line 1082
    .line 1083
    new-array v0, v2, [Ljava/lang/String;

    .line 1084
    .line 1085
    const-string v23, "svg"

    .line 1086
    .line 1087
    aput-object v23, v0, v5

    .line 1088
    .line 1089
    const-string v23, "femerge"

    .line 1090
    .line 1091
    aput-object v23, v0, v4

    .line 1092
    .line 1093
    const-string v23, "femergenode"

    .line 1094
    .line 1095
    aput-object v23, v0, v3

    .line 1096
    .line 1097
    new-array v2, v4, [Ljava/lang/String;

    .line 1098
    .line 1099
    const-string v26, "text"

    .line 1100
    .line 1101
    aput-object v26, v2, v5

    .line 1102
    .line 1103
    new-array v3, v4, [Ljava/lang/String;

    .line 1104
    .line 1105
    aput-object v8, v3, v5

    .line 1106
    .line 1107
    new-instance v8, Lqh/h0;

    .line 1108
    .line 1109
    invoke-direct {v8}, Lqh/h0;-><init>()V

    .line 1110
    .line 1111
    .line 1112
    new-instance v4, Lqh/g0;

    .line 1113
    .line 1114
    const/4 v5, 0x4

    .line 1115
    invoke-direct {v4, v5}, Lqh/g0;-><init>(I)V

    .line 1116
    .line 1117
    .line 1118
    const-string v5, "http://www.w3.org/1999/xhtml"

    .line 1119
    .line 1120
    invoke-virtual {v8, v5, v6, v4}, Lqh/h0;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 1121
    .line 1122
    .line 1123
    new-instance v4, Lqh/g0;

    .line 1124
    .line 1125
    const/16 v6, 0x8

    .line 1126
    .line 1127
    invoke-direct {v4, v6}, Lqh/g0;-><init>(I)V

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v8, v5, v7, v4}, Lqh/h0;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 1131
    .line 1132
    .line 1133
    new-instance v4, Lqh/g0;

    .line 1134
    .line 1135
    const/16 v6, 0x9

    .line 1136
    .line 1137
    invoke-direct {v4, v6}, Lqh/g0;-><init>(I)V

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v8, v5, v10, v4}, Lqh/h0;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 1141
    .line 1142
    .line 1143
    new-instance v4, Lqh/g0;

    .line 1144
    .line 1145
    const/16 v6, 0xa

    .line 1146
    .line 1147
    invoke-direct {v4, v6}, Lqh/g0;-><init>(I)V

    .line 1148
    .line 1149
    .line 1150
    invoke-virtual {v8, v5, v9, v4}, Lqh/h0;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 1151
    .line 1152
    .line 1153
    new-instance v4, Lqh/g0;

    .line 1154
    .line 1155
    const/16 v6, 0xb

    .line 1156
    .line 1157
    invoke-direct {v4, v6}, Lqh/g0;-><init>(I)V

    .line 1158
    .line 1159
    .line 1160
    invoke-virtual {v8, v5, v14, v4}, Lqh/h0;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 1161
    .line 1162
    .line 1163
    new-instance v4, Lqh/g0;

    .line 1164
    .line 1165
    const/16 v6, 0xc

    .line 1166
    .line 1167
    invoke-direct {v4, v6}, Lqh/g0;-><init>(I)V

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v8, v5, v11, v4}, Lqh/h0;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 1171
    .line 1172
    .line 1173
    new-instance v4, Lqh/g0;

    .line 1174
    .line 1175
    const/4 v6, 0x0

    .line 1176
    invoke-direct {v4, v6}, Lqh/g0;-><init>(I)V

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v8, v5, v12, v4}, Lqh/h0;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 1180
    .line 1181
    .line 1182
    new-instance v4, Lqh/g0;

    .line 1183
    .line 1184
    const/4 v6, 0x1

    .line 1185
    invoke-direct {v4, v6}, Lqh/g0;-><init>(I)V

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v8, v5, v15, v4}, Lqh/h0;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 1189
    .line 1190
    .line 1191
    new-instance v4, Lqh/g0;

    .line 1192
    .line 1193
    const/4 v5, 0x2

    .line 1194
    invoke-direct {v4, v5}, Lqh/g0;-><init>(I)V

    .line 1195
    .line 1196
    .line 1197
    const-string v5, "http://www.w3.org/1998/Math/MathML"

    .line 1198
    .line 1199
    invoke-virtual {v8, v5, v13, v4}, Lqh/h0;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 1200
    .line 1201
    .line 1202
    new-instance v4, Lqh/g0;

    .line 1203
    .line 1204
    const/4 v6, 0x3

    .line 1205
    invoke-direct {v4, v6}, Lqh/g0;-><init>(I)V

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual {v8, v5, v1, v4}, Lqh/h0;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 1209
    .line 1210
    .line 1211
    new-instance v1, Lqh/g0;

    .line 1212
    .line 1213
    const/4 v4, 0x5

    .line 1214
    invoke-direct {v1, v4}, Lqh/g0;-><init>(I)V

    .line 1215
    .line 1216
    .line 1217
    const-string v4, "http://www.w3.org/2000/svg"

    .line 1218
    .line 1219
    invoke-virtual {v8, v4, v0, v1}, Lqh/h0;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 1220
    .line 1221
    .line 1222
    new-instance v0, Lqh/g0;

    .line 1223
    .line 1224
    const/4 v1, 0x6

    .line 1225
    invoke-direct {v0, v1}, Lqh/g0;-><init>(I)V

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {v8, v4, v2, v0}, Lqh/h0;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 1229
    .line 1230
    .line 1231
    new-instance v0, Lqh/g0;

    .line 1232
    .line 1233
    const/4 v1, 0x7

    .line 1234
    invoke-direct {v0, v1}, Lqh/g0;-><init>(I)V

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v8, v4, v3, v0}, Lqh/h0;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 1238
    .line 1239
    .line 1240
    sput-object v8, Lqh/h0;->c:Lqh/h0;

    .line 1241
    .line 1242
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lqh/h0;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lqh/h0;->b:Lqh/h0;

    return-void
.end method

.method public constructor <init>(Lqh/h0;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lqh/h0;->a:Ljava/util/HashMap;

    .line 6
    iput-object p1, p0, Lqh/h0;->b:Lqh/h0;

    return-void
.end method


# virtual methods
.method public final a(Lqh/f0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lqh/h0;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p1, Lqh/f0;->a:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, La2/n;

    .line 6
    .line 7
    const/4 v3, 0x7

    .line 8
    invoke-direct {v2, v3}, La2/n;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/Map;

    .line 16
    .line 17
    iget-object v1, p1, Lqh/f0;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lqh/f0;
    .locals 1

    .line 1
    invoke-static {p1}, Lnh/b;->d0(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lqh/h0;->a:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/util/Map;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lqh/f0;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    iget-object v0, p0, Lqh/h0;->b:Lqh/h0;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Lqh/h0;->b(Ljava/lang/String;Ljava/lang/String;)Lqh/f0;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lqh/f0;->a()Lqh/f0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lqh/h0;->a(Lqh/f0;)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    return-object p1
.end method

.method public final c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 5

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p2, v2

    .line 7
    .line 8
    invoke-virtual {p0, v3, p1}, Lqh/h0;->b(Ljava/lang/String;Ljava/lang/String;)Lqh/f0;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    new-instance v4, Lqh/f0;

    .line 15
    .line 16
    invoke-direct {v4, v3, v3, p1}, Lqh/f0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput v1, v4, Lqh/f0;->d:I

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v4, v3}, Lqh/f0;->e(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v4}, Lqh/h0;->a(Lqh/f0;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-interface {p3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lqh/f0;
    .locals 1

    .line 1
    invoke-static {p1}, Lnh/b;->d0(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lnh/b;->b0(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p3}, Lqh/h0;->b(Ljava/lang/String;Ljava/lang/String;)Lqh/f0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    if-eqz p4, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move-object p1, p2

    .line 22
    :goto_0
    invoke-virtual {p0, p2, p3}, Lqh/h0;->b(Ljava/lang/String;Ljava/lang/String;)Lqh/f0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    if-eqz p4, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Lqh/f0;->a()Lqh/f0;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object p1, v0, Lqh/f0;->b:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lqh/h0;->a(Lqh/f0;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-object v0

    .line 46
    :cond_3
    new-instance p4, Lqh/f0;

    .line 47
    .line 48
    invoke-direct {p4, p1, p2, p3}, Lqh/f0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p4}, Lqh/h0;->a(Lqh/f0;)V

    .line 52
    .line 53
    .line 54
    return-object p4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lqh/h0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Lqh/h0;

    .line 8
    .line 9
    iget-object v0, p0, Lqh/h0;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    iget-object p1, p1, Lqh/h0;->a:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lqh/h0;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
