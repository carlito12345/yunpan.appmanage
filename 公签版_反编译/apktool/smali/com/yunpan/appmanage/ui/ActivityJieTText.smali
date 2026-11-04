.class public Lcom/yunpan/appmanage/ui/ActivityJieTText;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic t0:I


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

.field public S:Landroid/widget/TextView;

.field public T:Landroid/widget/TextView;

.field public V:Landroid/widget/TextView;

.field public X:Landroid/widget/TextView;

.field public Y:Landroid/widget/TextView;

.field public Z:Landroid/widget/TextView;

.field public h0:Landroid/widget/TextView;


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
.method public final onDestroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/carsdk/g0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yunpan/appmanage/carsdk/h0;->d()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0049

    return v0
.end method

.method public final u()V
    .locals 7

    .line 1
    const v0, 0x7f0b05ba

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    const-string v1, "\u6377\u9014\u8f66\u673asdk\u8c03\u8bd5"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0b03ad

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lua/g1;

    .line 23
    .line 24
    const/4 v2, 0x6

    .line 25
    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    const v0, 0x7f0b05c1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->C:Landroid/widget/TextView;

    .line 41
    .line 42
    const v0, 0x7f0b05c2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->D:Landroid/widget/TextView;

    .line 52
    .line 53
    const v0, 0x7f0b05cd

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->E:Landroid/widget/TextView;

    .line 63
    .line 64
    const v0, 0x7f0b05d8

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/TextView;

    .line 72
    .line 73
    const v0, 0x7f0b05e3

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/widget/TextView;

    .line 81
    .line 82
    const v0, 0x7f0b05e4

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/TextView;

    .line 90
    .line 91
    const v0, 0x7f0b05e5

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroid/widget/TextView;

    .line 99
    .line 100
    const v0, 0x7f0b05e7

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/TextView;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->F:Landroid/widget/TextView;

    .line 110
    .line 111
    const v0, 0x7f0b05e8

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->G:Landroid/widget/TextView;

    .line 121
    .line 122
    const v0, 0x7f0b05e9

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/TextView;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->H:Landroid/widget/TextView;

    .line 132
    .line 133
    const v0, 0x7f0b05c3

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/TextView;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->I:Landroid/widget/TextView;

    .line 143
    .line 144
    const v0, 0x7f0b05c4

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroid/widget/TextView;

    .line 152
    .line 153
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->K:Landroid/widget/TextView;

    .line 154
    .line 155
    const v0, 0x7f0b05c5

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Landroid/widget/TextView;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->L:Landroid/widget/TextView;

    .line 165
    .line 166
    const v0, 0x7f0b05c6

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroid/widget/TextView;

    .line 174
    .line 175
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->M:Landroid/widget/TextView;

    .line 176
    .line 177
    const v0, 0x7f0b05c7

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Landroid/widget/TextView;

    .line 185
    .line 186
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->N:Landroid/widget/TextView;

    .line 187
    .line 188
    const v0, 0x7f0b05c8

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Landroid/widget/TextView;

    .line 196
    .line 197
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->O:Landroid/widget/TextView;

    .line 198
    .line 199
    const v0, 0x7f0b05c9

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Landroid/widget/TextView;

    .line 207
    .line 208
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->P:Landroid/widget/TextView;

    .line 209
    .line 210
    const v0, 0x7f0b05ca

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Landroid/widget/TextView;

    .line 218
    .line 219
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->R:Landroid/widget/TextView;

    .line 220
    .line 221
    const v0, 0x7f0b05cb

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Landroid/widget/TextView;

    .line 229
    .line 230
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->S:Landroid/widget/TextView;

    .line 231
    .line 232
    const v0, 0x7f0b05cc

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Landroid/widget/TextView;

    .line 240
    .line 241
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->T:Landroid/widget/TextView;

    .line 242
    .line 243
    const v0, 0x7f0b05ce

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Landroid/widget/TextView;

    .line 251
    .line 252
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->V:Landroid/widget/TextView;

    .line 253
    .line 254
    const v0, 0x7f0b05cf

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Landroid/widget/TextView;

    .line 262
    .line 263
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->X:Landroid/widget/TextView;

    .line 264
    .line 265
    const v0, 0x7f0b05d0

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Landroid/widget/TextView;

    .line 273
    .line 274
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->Y:Landroid/widget/TextView;

    .line 275
    .line 276
    const v0, 0x7f0b05d1

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    check-cast v0, Landroid/widget/TextView;

    .line 284
    .line 285
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->Z:Landroid/widget/TextView;

    .line 286
    .line 287
    const v0, 0x7f0b05d2

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Landroid/widget/TextView;

    .line 295
    .line 296
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->h0:Landroid/widget/TextView;

    .line 297
    .line 298
    const v0, 0x7f0b05d3

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Landroid/widget/TextView;

    .line 306
    .line 307
    const v0, 0x7f0b05d4

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    check-cast v0, Landroid/widget/TextView;

    .line 315
    .line 316
    const v0, 0x7f0b05d5

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    check-cast v0, Landroid/widget/TextView;

    .line 324
    .line 325
    const v0, 0x7f0b05d6

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    check-cast v0, Landroid/widget/TextView;

    .line 333
    .line 334
    const v0, 0x7f0b05d7

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    check-cast v0, Landroid/widget/TextView;

    .line 342
    .line 343
    const v0, 0x7f0b05d9

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    check-cast v0, Landroid/widget/TextView;

    .line 351
    .line 352
    const v0, 0x7f0b05da

    .line 353
    .line 354
    .line 355
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    check-cast v0, Landroid/widget/TextView;

    .line 360
    .line 361
    const v0, 0x7f0b05db

    .line 362
    .line 363
    .line 364
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    check-cast v0, Landroid/widget/TextView;

    .line 369
    .line 370
    const v0, 0x7f0b05dc

    .line 371
    .line 372
    .line 373
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    check-cast v0, Landroid/widget/TextView;

    .line 378
    .line 379
    :try_start_0
    sget-object v1, Lcom/yunpan/appmanage/carsdk/g0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 380
    .line 381
    const/4 v4, 0x0

    .line 382
    const/4 v5, 0x1

    .line 383
    const/4 v6, 0x1

    .line 384
    const/4 v3, 0x1

    .line 385
    move-object v2, p0

    .line 386
    invoke-virtual/range {v1 .. v6}, Lcom/yunpan/appmanage/carsdk/h0;->a(Landroid/content/Context;ZZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .line 388
    .line 389
    goto :goto_0

    .line 390
    :catch_0
    const-string v0, "\u4e0d\u9002\u5408\u60a8\u7684\u8f66\u673a"

    .line 391
    .line 392
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 396
    .line 397
    .line 398
    :goto_0
    sget-object v0, Lcom/yunpan/appmanage/carsdk/g0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 399
    .line 400
    new-instance v1, Lua/t2;

    .line 401
    .line 402
    invoke-direct {v1, p0}, Lua/t2;-><init>(Lcom/yunpan/appmanage/ui/ActivityJieTText;)V

    .line 403
    .line 404
    .line 405
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->g:Lcom/autolink/adapterinterface/IHardKeyCallback$Stub;

    .line 406
    .line 407
    new-instance v1, Lua/u2;

    .line 408
    .line 409
    invoke-direct {v1, p0}, Lua/u2;-><init>(Lcom/yunpan/appmanage/ui/ActivityJieTText;)V

    .line 410
    .line 411
    .line 412
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->h:Lua/u2;

    .line 413
    .line 414
    :try_start_1
    new-instance v1, Lua/v2;

    .line 415
    .line 416
    invoke-direct {v1, p0}, Lua/v2;-><init>(Lcom/yunpan/appmanage/ui/ActivityJieTText;)V

    .line 417
    .line 418
    .line 419
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->j:Lua/v2;

    .line 420
    .line 421
    iget-object v2, v0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;

    .line 422
    .line 423
    invoke-interface {v2, v1}, Lcom/autolink/adapterinterface/car/IALCar;->registerCarSpeedListener(Lcom/autolink/adapterinterface/car/IALCarSpeedListener;)V

    .line 424
    .line 425
    .line 426
    new-instance v1, Lua/w2;

    .line 427
    .line 428
    invoke-direct {v1, p0}, Lua/w2;-><init>(Lcom/yunpan/appmanage/ui/ActivityJieTText;)V

    .line 429
    .line 430
    .line 431
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->l:Lua/w2;

    .line 432
    .line 433
    iget-object v2, v0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;

    .line 434
    .line 435
    invoke-interface {v2, v1}, Lcom/autolink/adapterinterface/car/IALCar;->registerCarEngineSpeedListener(Lcom/autolink/adapterinterface/car/IALCarEngineSpeedListener;)V

    .line 436
    .line 437
    .line 438
    new-instance v1, Lua/x2;

    .line 439
    .line 440
    invoke-direct {v1, p0}, Lua/x2;-><init>(Lcom/yunpan/appmanage/ui/ActivityJieTText;)V

    .line 441
    .line 442
    .line 443
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->k:Lua/x2;

    .line 444
    .line 445
    iget-object v2, v0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;

    .line 446
    .line 447
    invoke-interface {v2, v1}, Lcom/autolink/adapterinterface/car/IALCar;->registerVehicleControlPropertyListener(Lcom/autolink/adapterinterface/car/IALCarVehicleControlPropertyListener;)V

    .line 448
    .line 449
    .line 450
    new-instance v1, Lua/y2;

    .line 451
    .line 452
    invoke-direct {v1, p0}, Lua/y2;-><init>(Lcom/yunpan/appmanage/ui/ActivityJieTText;)V

    .line 453
    .line 454
    .line 455
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->m:Lua/y2;

    .line 456
    .line 457
    iget-object v2, v0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;

    .line 458
    .line 459
    invoke-interface {v2, v1}, Lcom/autolink/adapterinterface/car/IALCar;->registerCarSteerListener(Lcom/autolink/adapterinterface/car/IALCarSteerListener;)V

    .line 460
    .line 461
    .line 462
    new-instance v1, Lua/z2;

    .line 463
    .line 464
    invoke-direct {v1, p0}, Lua/z2;-><init>(Lcom/yunpan/appmanage/ui/ActivityJieTText;)V

    .line 465
    .line 466
    .line 467
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->n:Lua/z2;

    .line 468
    .line 469
    iget-object v2, v0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;

    .line 470
    .line 471
    invoke-interface {v2, v1}, Lcom/autolink/adapterinterface/car/IALCar;->registerCarTyreListener(Lcom/autolink/adapterinterface/car/IALCarTyreListener;)V

    .line 472
    .line 473
    .line 474
    new-instance v1, Lua/a3;

    .line 475
    .line 476
    invoke-direct {v1, p0}, Lua/a3;-><init>(Lcom/yunpan/appmanage/ui/ActivityJieTText;)V

    .line 477
    .line 478
    .line 479
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->o:Lua/a3;

    .line 480
    .line 481
    iget-object v2, v0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;

    .line 482
    .line 483
    invoke-interface {v2, v1}, Lcom/autolink/adapterinterface/car/IALCar;->registerAVMPropertyListener(Lcom/autolink/adapterinterface/car/IALCarAVMPropertyListener;)V

    .line 484
    .line 485
    .line 486
    new-instance v1, Lua/b3;

    .line 487
    .line 488
    invoke-direct {v1, p0}, Lua/b3;-><init>(Lcom/yunpan/appmanage/ui/ActivityJieTText;)V

    .line 489
    .line 490
    .line 491
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->p:Lua/b3;

    .line 492
    .line 493
    iget-object v2, v0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;

    .line 494
    .line 495
    invoke-interface {v2, v1}, Lcom/autolink/adapterinterface/car/IALCar;->registerCarWindListener(Lcom/autolink/adapterinterface/car/IALCarWindListener;)V

    .line 496
    .line 497
    .line 498
    new-instance v1, Lua/r2;

    .line 499
    .line 500
    invoke-direct {v1, p0}, Lua/r2;-><init>(Lcom/yunpan/appmanage/ui/ActivityJieTText;)V

    .line 501
    .line 502
    .line 503
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->q:Lua/r2;

    .line 504
    .line 505
    iget-object v2, v0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;

    .line 506
    .line 507
    invoke-interface {v2, v1}, Lcom/autolink/adapterinterface/car/IALCar;->registerExtPropertyListener(Lcom/autolink/adapterinterface/car/IALCarExtPropertyListener;)V

    .line 508
    .line 509
    .line 510
    new-instance v1, Lua/s2;

    .line 511
    .line 512
    invoke-direct {v1, p0}, Lua/s2;-><init>(Lcom/yunpan/appmanage/ui/ActivityJieTText;)V

    .line 513
    .line 514
    .line 515
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/h0;->r:Lua/s2;

    .line 516
    .line 517
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;

    .line 518
    .line 519
    invoke-interface {v0, v1}, Lcom/autolink/adapterinterface/car/IALCar;->registerHvacPropertyListener(Lcom/autolink/adapterinterface/car/IALCarHvacPropertyListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 520
    .line 521
    .line 522
    :catch_1
    return-void
.end method
