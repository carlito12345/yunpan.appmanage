.class public Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic S:I


# instance fields
.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/widget/TextView;

.field public G:Landroid/widget/TextView;

.field public H:Landroid/widget/TextView;

.field public I:Landroid/widget/TextView;

.field public K:Landroid/widget/TextView;

.field public L:Landroid/widget/TextView;

.field public M:Landroid/widget/TextView;

.field public N:Landroid/widget/TextView;

.field public O:Landroid/widget/TextView;

.field public P:Landroid/widget/TextView;

.field public R:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0049

    return v0
.end method

.method public final u()V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const v2, 0x7f0b05ba

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Landroid/widget/TextView;

    .line 11
    .line 12
    const-string v3, "\u57c3\u5b89YP"

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    const v2, 0x7f0b03ad

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v3, Lua/z6;

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    invoke-direct {v3, v4, p0}, Lua/z6;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    const v2, 0x7f0b05c1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->C:Landroid/widget/TextView;

    .line 43
    .line 44
    const v2, 0x7f0b05c2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->D:Landroid/widget/TextView;

    .line 54
    .line 55
    const v2, 0x7f0b05cd

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->E:Landroid/widget/TextView;

    .line 65
    .line 66
    const v2, 0x7f0b05d8

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Landroid/widget/TextView;

    .line 74
    .line 75
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->F:Landroid/widget/TextView;

    .line 76
    .line 77
    const v2, 0x7f0b05e3

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Landroid/widget/TextView;

    .line 85
    .line 86
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->G:Landroid/widget/TextView;

    .line 87
    .line 88
    const v2, 0x7f0b05e4

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Landroid/widget/TextView;

    .line 96
    .line 97
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->H:Landroid/widget/TextView;

    .line 98
    .line 99
    const v2, 0x7f0b05e5

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Landroid/widget/TextView;

    .line 107
    .line 108
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->I:Landroid/widget/TextView;

    .line 109
    .line 110
    const v2, 0x7f0b05e7

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Landroid/widget/TextView;

    .line 118
    .line 119
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->K:Landroid/widget/TextView;

    .line 120
    .line 121
    const v2, 0x7f0b05e8

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Landroid/widget/TextView;

    .line 129
    .line 130
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->L:Landroid/widget/TextView;

    .line 131
    .line 132
    const v2, 0x7f0b05e9

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Landroid/widget/TextView;

    .line 140
    .line 141
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->M:Landroid/widget/TextView;

    .line 142
    .line 143
    const v2, 0x7f0b05c3

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Landroid/widget/TextView;

    .line 151
    .line 152
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->N:Landroid/widget/TextView;

    .line 153
    .line 154
    const v2, 0x7f0b05c4

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Landroid/widget/TextView;

    .line 162
    .line 163
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->O:Landroid/widget/TextView;

    .line 164
    .line 165
    const v2, 0x7f0b05c5

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Landroid/widget/TextView;

    .line 173
    .line 174
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->P:Landroid/widget/TextView;

    .line 175
    .line 176
    const v2, 0x7f0b05c6

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Landroid/widget/TextView;

    .line 184
    .line 185
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->R:Landroid/widget/TextView;

    .line 186
    .line 187
    const v2, 0x7f0b05c7

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, Landroid/widget/TextView;

    .line 195
    .line 196
    const v2, 0x7f0b05c8

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, Landroid/widget/TextView;

    .line 204
    .line 205
    const v2, 0x7f0b05c9

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, Landroid/widget/TextView;

    .line 213
    .line 214
    const v2, 0x7f0b05ca

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    check-cast v2, Landroid/widget/TextView;

    .line 222
    .line 223
    const v2, 0x7f0b05cb

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    check-cast v2, Landroid/widget/TextView;

    .line 231
    .line 232
    const v2, 0x7f0b05cc

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    check-cast v2, Landroid/widget/TextView;

    .line 240
    .line 241
    const v2, 0x7f0b05ce

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    check-cast v2, Landroid/widget/TextView;

    .line 249
    .line 250
    const v2, 0x7f0b05cf

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    check-cast v2, Landroid/widget/TextView;

    .line 258
    .line 259
    const v2, 0x7f0b05d0

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    check-cast v2, Landroid/widget/TextView;

    .line 267
    .line 268
    const v2, 0x7f0b05d1

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    check-cast v2, Landroid/widget/TextView;

    .line 276
    .line 277
    const v2, 0x7f0b05d2

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    check-cast v2, Landroid/widget/TextView;

    .line 285
    .line 286
    const v2, 0x7f0b05d3

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    check-cast v2, Landroid/widget/TextView;

    .line 294
    .line 295
    const v2, 0x7f0b05d4

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    check-cast v2, Landroid/widget/TextView;

    .line 303
    .line 304
    const v2, 0x7f0b05d5

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    check-cast v2, Landroid/widget/TextView;

    .line 312
    .line 313
    const v2, 0x7f0b05d6

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    check-cast v2, Landroid/widget/TextView;

    .line 321
    .line 322
    const v2, 0x7f0b05d7

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    check-cast v2, Landroid/widget/TextView;

    .line 330
    .line 331
    const v2, 0x7f0b05d9

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    check-cast v2, Landroid/widget/TextView;

    .line 339
    .line 340
    const v2, 0x7f0b05da

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    check-cast v2, Landroid/widget/TextView;

    .line 348
    .line 349
    const v2, 0x7f0b05db

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    check-cast v2, Landroid/widget/TextView;

    .line 357
    .line 358
    const v2, 0x7f0b05dc

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    check-cast v2, Landroid/widget/TextView;

    .line 366
    .line 367
    const v2, 0x7f0b05dd

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    check-cast v2, Landroid/widget/TextView;

    .line 375
    .line 376
    const v2, 0x7f0b05de

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    check-cast v2, Landroid/widget/TextView;

    .line 384
    .line 385
    const v2, 0x7f0b05df

    .line 386
    .line 387
    .line 388
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    check-cast v2, Landroid/widget/TextView;

    .line 393
    .line 394
    const v2, 0x7f0b05e0

    .line 395
    .line 396
    .line 397
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    check-cast v2, Landroid/widget/TextView;

    .line 402
    .line 403
    const v2, 0x7f0b05e1

    .line 404
    .line 405
    .line 406
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    check-cast v2, Landroid/widget/TextView;

    .line 411
    .line 412
    const v2, 0x7f0b05e2

    .line 413
    .line 414
    .line 415
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    check-cast v2, Landroid/widget/TextView;

    .line 420
    .line 421
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->C:Landroid/widget/TextView;

    .line 422
    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    const-string v5, "isDriverDoorOpen: "

    .line 426
    .line 427
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    const-string v5, "cabin"

    .line 431
    .line 432
    const-string v6, "isDriverDoorOpen"

    .line 433
    .line 434
    invoke-static {p0, v6}, Lnh/b;->z(Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;Ljava/lang/String;)Z

    .line 435
    .line 436
    .line 437
    move-result v6

    .line 438
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    .line 447
    .line 448
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->D:Landroid/widget/TextView;

    .line 449
    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    const-string v6, "isPassengerDoorOpen: "

    .line 453
    .line 454
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    const-string v6, "isPassengerDoorOpen"

    .line 458
    .line 459
    invoke-static {p0, v6}, Lnh/b;->z(Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;Ljava/lang/String;)Z

    .line 460
    .line 461
    .line 462
    move-result v6

    .line 463
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    .line 472
    .line 473
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->E:Landroid/widget/TextView;

    .line 474
    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    const-string v6, "isRearDoorOpen: "

    .line 478
    .line 479
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    const-string v6, "isRearDoorOpen"

    .line 483
    .line 484
    invoke-static {p0, v6}, Lnh/b;->z(Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;Ljava/lang/String;)Z

    .line 485
    .line 486
    .line 487
    move-result v6

    .line 488
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    .line 497
    .line 498
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->F:Landroid/widget/TextView;

    .line 499
    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    .line 501
    .line 502
    const-string v6, "isHoodDoorOpen: "

    .line 503
    .line 504
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    const-string v6, "isHoodDoorOpen"

    .line 508
    .line 509
    invoke-static {p0, v6}, Lnh/b;->z(Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;Ljava/lang/String;)Z

    .line 510
    .line 511
    .line 512
    move-result v6

    .line 513
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v3

    .line 520
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    .line 522
    .line 523
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->G:Landroid/widget/TextView;

    .line 524
    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    .line 526
    .line 527
    const-string v6, "getLowBeamMode: "

    .line 528
    .line 529
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    const-string v6, "sensor"

    .line 533
    .line 534
    const-string v7, "getCarLowBeamMode"

    .line 535
    .line 536
    invoke-static {p0, v6, v7}, Lnh/b;->D(Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    move-result v8

    .line 540
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    .line 549
    .line 550
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->H:Landroid/widget/TextView;

    .line 551
    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    .line 553
    .line 554
    const-string v8, "getHighBeamMode: "

    .line 555
    .line 556
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    const-string v8, "getCarHighBeamMode"

    .line 560
    .line 561
    invoke-static {p0, v6, v8}, Lnh/b;->D(Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .line 563
    .line 564
    move-result v9

    .line 565
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    .line 574
    .line 575
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->I:Landroid/widget/TextView;

    .line 576
    .line 577
    new-instance v3, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    const-string v9, "isFrontLightOpen: "

    .line 580
    .line 581
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    invoke-static {p0, v6, v7}, Lnh/b;->D(Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    .line 586
    .line 587
    move-result v7

    .line 588
    if-eq v7, v0, :cond_1

    .line 589
    .line 590
    invoke-static {p0, v6, v8}, Lnh/b;->D(Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .line 592
    .line 593
    move-result v7

    .line 594
    if-ne v7, v0, :cond_0

    .line 595
    .line 596
    goto :goto_0

    .line 597
    :cond_0
    const/4 v7, 0x0

    .line 598
    goto :goto_1

    .line 599
    :cond_1
    :goto_0
    const/4 v7, 0x1

    .line 600
    :goto_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    .line 609
    .line 610
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->K:Landroid/widget/TextView;

    .line 611
    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    .line 613
    .line 614
    const-string v7, "getWindSpeed: "

    .line 615
    .line 616
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    const-string v7, "hvac"

    .line 620
    .line 621
    const-string v8, "getWindSpeed"

    .line 622
    .line 623
    invoke-static {p0, v7, v8}, Lnh/b;->D(Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .line 625
    .line 626
    move-result v9

    .line 627
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v3

    .line 634
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    .line 636
    .line 637
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->L:Landroid/widget/TextView;

    .line 638
    .line 639
    new-instance v3, Ljava/lang/StringBuilder;

    .line 640
    .line 641
    const-string v9, "getPm25Value: "

    .line 642
    .line 643
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    const-string v9, "getPm25Value"

    .line 647
    .line 648
    invoke-static {p0, v7, v9}, Lnh/b;->D(Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .line 650
    .line 651
    move-result v9

    .line 652
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v3

    .line 659
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    .line 661
    .line 662
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->M:Landroid/widget/TextView;

    .line 663
    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    .line 665
    .line 666
    const-string v9, "isHvacOpen: "

    .line 667
    .line 668
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    invoke-static {p0, v7, v8}, Lnh/b;->D(Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    .line 673
    .line 674
    move-result v8

    .line 675
    if-lez v8, :cond_2

    .line 676
    .line 677
    const/4 v8, 0x1

    .line 678
    goto :goto_2

    .line 679
    :cond_2
    const/4 v8, 0x0

    .line 680
    :goto_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v3

    .line 687
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    .line 689
    .line 690
    new-instance v2, Lua/i7;

    .line 691
    .line 692
    invoke-direct {v2, p0}, Lua/i7;-><init>(Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;)V

    .line 693
    .line 694
    .line 695
    :try_start_0
    invoke-static {p0, v5}, Lnh/b;->x(Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;Ljava/lang/String;)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v3

    .line 699
    if-nez v3, :cond_3

    .line 700
    .line 701
    goto :goto_3

    .line 702
    :cond_3
    const-string v5, "com.gxa.lib.caradapter.cabin.OnCabinChangedListener"

    .line 703
    .line 704
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 705
    .line 706
    .line 707
    move-result-object v5

    .line 708
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 709
    .line 710
    .line 711
    move-result-object v8

    .line 712
    new-array v9, v0, [Ljava/lang/Class;

    .line 713
    .line 714
    aput-object v5, v9, v1

    .line 715
    .line 716
    new-instance v10, Laa/a;

    .line 717
    .line 718
    invoke-direct {v10, v1, v2}, Laa/a;-><init>(ILjava/lang/Object;)V

    .line 719
    .line 720
    .line 721
    invoke-static {v8, v9, v10}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v2

    .line 725
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 726
    .line 727
    .line 728
    move-result-object v8

    .line 729
    const-string v9, "subscribeCabinCallback"

    .line 730
    .line 731
    new-array v10, v0, [Ljava/lang/Class;

    .line 732
    .line 733
    aput-object v5, v10, v1

    .line 734
    .line 735
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 736
    .line 737
    .line 738
    move-result-object v5

    .line 739
    new-array v8, v0, [Ljava/lang/Object;

    .line 740
    .line 741
    aput-object v2, v8, v1

    .line 742
    .line 743
    invoke-virtual {v5, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    .line 745
    .line 746
    goto :goto_3

    .line 747
    :catch_0
    move-exception v2

    .line 748
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    :goto_3
    new-instance v2, Lua/i7;

    .line 752
    .line 753
    invoke-direct {v2, p0}, Lua/i7;-><init>(Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;)V

    .line 754
    .line 755
    .line 756
    :try_start_1
    invoke-static {p0, v6}, Lnh/b;->x(Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;Ljava/lang/String;)Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    if-nez v3, :cond_4

    .line 761
    .line 762
    goto :goto_4

    .line 763
    :cond_4
    const-string v5, "com.gxa.lib.caradapter.sensor.OnCarSensorDataChangedListener"

    .line 764
    .line 765
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 766
    .line 767
    .line 768
    move-result-object v5

    .line 769
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 770
    .line 771
    .line 772
    move-result-object v6

    .line 773
    new-array v8, v0, [Ljava/lang/Class;

    .line 774
    .line 775
    aput-object v5, v8, v1

    .line 776
    .line 777
    new-instance v9, Laa/a;

    .line 778
    .line 779
    invoke-direct {v9, v0, v2}, Laa/a;-><init>(ILjava/lang/Object;)V

    .line 780
    .line 781
    .line 782
    invoke-static {v6, v8, v9}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v2

    .line 786
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 787
    .line 788
    .line 789
    move-result-object v6

    .line 790
    const-string v8, "registerCarSensorDataCallback"

    .line 791
    .line 792
    new-array v9, v0, [Ljava/lang/Class;

    .line 793
    .line 794
    aput-object v5, v9, v1

    .line 795
    .line 796
    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 797
    .line 798
    .line 799
    move-result-object v5

    .line 800
    new-array v6, v0, [Ljava/lang/Object;

    .line 801
    .line 802
    aput-object v2, v6, v1

    .line 803
    .line 804
    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 805
    .line 806
    .line 807
    goto :goto_4

    .line 808
    :catch_1
    move-exception v2

    .line 809
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    :goto_4
    new-instance v2, Lua/i7;

    .line 813
    .line 814
    invoke-direct {v2, p0}, Lua/i7;-><init>(Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;)V

    .line 815
    .line 816
    .line 817
    :try_start_2
    invoke-static {p0, v7}, Lnh/b;->x(Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;Ljava/lang/String;)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v3

    .line 821
    if-nez v3, :cond_5

    .line 822
    .line 823
    goto :goto_5

    .line 824
    :cond_5
    const-string v5, "com.gxa.lib.caradapter.interfaces.OnHvacChangedListener"

    .line 825
    .line 826
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 827
    .line 828
    .line 829
    move-result-object v5

    .line 830
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 831
    .line 832
    .line 833
    move-result-object v6

    .line 834
    new-array v7, v0, [Ljava/lang/Class;

    .line 835
    .line 836
    aput-object v5, v7, v1

    .line 837
    .line 838
    new-instance v8, Laa/a;

    .line 839
    .line 840
    invoke-direct {v8, v4, v2}, Laa/a;-><init>(ILjava/lang/Object;)V

    .line 841
    .line 842
    .line 843
    invoke-static {v6, v7, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v2

    .line 847
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 848
    .line 849
    .line 850
    move-result-object v4

    .line 851
    const-string v6, "subscribeHvacCallback"

    .line 852
    .line 853
    new-array v7, v0, [Ljava/lang/Class;

    .line 854
    .line 855
    aput-object v5, v7, v1

    .line 856
    .line 857
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 858
    .line 859
    .line 860
    move-result-object v4

    .line 861
    new-array v0, v0, [Ljava/lang/Object;

    .line 862
    .line 863
    aput-object v2, v0, v1

    .line 864
    .line 865
    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 866
    .line 867
    .line 868
    goto :goto_5

    .line 869
    :catch_2
    move-exception v0

    .line 870
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    :goto_5
    return-void
.end method
