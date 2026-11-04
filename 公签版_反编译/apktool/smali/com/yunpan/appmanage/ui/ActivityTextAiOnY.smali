.class public Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic S0:I


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

.field public M0:Landroid/widget/TextView;

.field public N:Landroid/widget/TextView;

.field public N0:Landroid/widget/TextView;

.field public O:Landroid/widget/TextView;

.field public O0:Landroid/widget/TextView;

.field public P:Landroid/widget/TextView;

.field public P0:Landroid/widget/TextView;

.field public Q0:Landroid/widget/TextView;

.field public R:Landroid/widget/TextView;

.field public R0:I

.field public S:Landroid/widget/TextView;

.field public T:Landroid/widget/TextView;

.field public V:Landroid/widget/TextView;

.field public X:Landroid/widget/TextView;

.field public Y:Landroid/widget/TextView;

.field public Z:Landroid/widget/TextView;

.field public h0:Landroid/widget/TextView;

.field public t0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->R0:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/yunpan/appmanage/carsdk/e;->h()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0049

    return v0
.end method

.method public final u()V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/yunpan/appmanage/carsdk/e;->e(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "\u4e0d\u662f\u6b64\u6b3e\u8f66\u578b"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const v0, 0x7f0b05ba

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    const-string v1, "\u57c3\u5b89Y sdk\u6d4b\u8bd5"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0b03ad

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lua/z6;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-direct {v1, v2, p0}, Lua/z6;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0b05c1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->C:Landroid/widget/TextView;

    .line 56
    .line 57
    const v0, 0x7f0b05c2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->D:Landroid/widget/TextView;

    .line 67
    .line 68
    const v0, 0x7f0b05cd

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/TextView;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->E:Landroid/widget/TextView;

    .line 78
    .line 79
    const v0, 0x7f0b05d8

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/TextView;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->F:Landroid/widget/TextView;

    .line 89
    .line 90
    const v0, 0x7f0b05e3

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/widget/TextView;

    .line 98
    .line 99
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->G:Landroid/widget/TextView;

    .line 100
    .line 101
    const v0, 0x7f0b05e4

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroid/widget/TextView;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->H:Landroid/widget/TextView;

    .line 111
    .line 112
    const v0, 0x7f0b05e5

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroid/widget/TextView;

    .line 120
    .line 121
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->I:Landroid/widget/TextView;

    .line 122
    .line 123
    const v0, 0x7f0b05e7

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Landroid/widget/TextView;

    .line 131
    .line 132
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->K:Landroid/widget/TextView;

    .line 133
    .line 134
    const v0, 0x7f0b05e8

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Landroid/widget/TextView;

    .line 142
    .line 143
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->L:Landroid/widget/TextView;

    .line 144
    .line 145
    const v0, 0x7f0b05e9

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Landroid/widget/TextView;

    .line 153
    .line 154
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->M:Landroid/widget/TextView;

    .line 155
    .line 156
    const v0, 0x7f0b05c3

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Landroid/widget/TextView;

    .line 164
    .line 165
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->N:Landroid/widget/TextView;

    .line 166
    .line 167
    const v0, 0x7f0b05c4

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Landroid/widget/TextView;

    .line 175
    .line 176
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->O:Landroid/widget/TextView;

    .line 177
    .line 178
    const v0, 0x7f0b05c5

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Landroid/widget/TextView;

    .line 186
    .line 187
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->P:Landroid/widget/TextView;

    .line 188
    .line 189
    const v0, 0x7f0b05c6

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Landroid/widget/TextView;

    .line 197
    .line 198
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->R:Landroid/widget/TextView;

    .line 199
    .line 200
    const v0, 0x7f0b05c7

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Landroid/widget/TextView;

    .line 208
    .line 209
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->S:Landroid/widget/TextView;

    .line 210
    .line 211
    const v0, 0x7f0b05c8

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Landroid/widget/TextView;

    .line 219
    .line 220
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->T:Landroid/widget/TextView;

    .line 221
    .line 222
    const v0, 0x7f0b05c9

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    check-cast v0, Landroid/widget/TextView;

    .line 230
    .line 231
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->V:Landroid/widget/TextView;

    .line 232
    .line 233
    const v0, 0x7f0b05ca

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    check-cast v0, Landroid/widget/TextView;

    .line 241
    .line 242
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->X:Landroid/widget/TextView;

    .line 243
    .line 244
    const v0, 0x7f0b05cb

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    check-cast v0, Landroid/widget/TextView;

    .line 252
    .line 253
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->Y:Landroid/widget/TextView;

    .line 254
    .line 255
    const v0, 0x7f0b05cc

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    check-cast v0, Landroid/widget/TextView;

    .line 263
    .line 264
    const v0, 0x7f0b05ce

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Landroid/widget/TextView;

    .line 272
    .line 273
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->Z:Landroid/widget/TextView;

    .line 274
    .line 275
    const v0, 0x7f0b05cf

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, Landroid/widget/TextView;

    .line 283
    .line 284
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->h0:Landroid/widget/TextView;

    .line 285
    .line 286
    const v0, 0x7f0b05d0

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    check-cast v0, Landroid/widget/TextView;

    .line 294
    .line 295
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->t0:Landroid/widget/TextView;

    .line 296
    .line 297
    const v0, 0x7f0b05d1

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    check-cast v0, Landroid/widget/TextView;

    .line 305
    .line 306
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->M0:Landroid/widget/TextView;

    .line 307
    .line 308
    const v0, 0x7f0b05d2

    .line 309
    .line 310
    .line 311
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    check-cast v0, Landroid/widget/TextView;

    .line 316
    .line 317
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->N0:Landroid/widget/TextView;

    .line 318
    .line 319
    const v0, 0x7f0b05d3

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    check-cast v0, Landroid/widget/TextView;

    .line 327
    .line 328
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->O0:Landroid/widget/TextView;

    .line 329
    .line 330
    const v0, 0x7f0b05d4

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    check-cast v0, Landroid/widget/TextView;

    .line 338
    .line 339
    const v0, 0x7f0b05d5

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    check-cast v0, Landroid/widget/TextView;

    .line 347
    .line 348
    const v0, 0x7f0b05d6

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    check-cast v0, Landroid/widget/TextView;

    .line 356
    .line 357
    const v0, 0x7f0b05d7

    .line 358
    .line 359
    .line 360
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    check-cast v0, Landroid/widget/TextView;

    .line 365
    .line 366
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->P0:Landroid/widget/TextView;

    .line 367
    .line 368
    const v0, 0x7f0b05d9

    .line 369
    .line 370
    .line 371
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    check-cast v0, Landroid/widget/TextView;

    .line 376
    .line 377
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->Q0:Landroid/widget/TextView;

    .line 378
    .line 379
    const v0, 0x7f0b05da

    .line 380
    .line 381
    .line 382
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    check-cast v0, Landroid/widget/TextView;

    .line 387
    .line 388
    const v0, 0x7f0b05db

    .line 389
    .line 390
    .line 391
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    check-cast v0, Landroid/widget/TextView;

    .line 396
    .line 397
    const v0, 0x7f0b05dc

    .line 398
    .line 399
    .line 400
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    check-cast v0, Landroid/widget/TextView;

    .line 405
    .line 406
    :try_start_0
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 411
    .line 412
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/carsdk/e;->d(Landroid/content/Context;)V

    .line 413
    .line 414
    .line 415
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->c()Lcom/yunpan/appmanage/carsdk/e;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    new-instance v1, Lua/i1;

    .line 420
    .line 421
    const/16 v2, 0x13

    .line 422
    .line 423
    invoke-direct {v1, v2, p0}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/e;->d:Lcom/yunpan/appmanage/carsdk/d;

    .line 427
    .line 428
    new-instance v0, Lua/h7;

    .line 429
    .line 430
    invoke-direct {v0, p0}, Lua/h7;-><init>(Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;)V

    .line 431
    .line 432
    .line 433
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    const/4 v2, 0x0

    .line 438
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 439
    .line 440
    .line 441
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    const/4 v2, 0x1

    .line 446
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 447
    .line 448
    .line 449
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    const/4 v2, 0x2

    .line 454
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 455
    .line 456
    .line 457
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    const/4 v2, 0x3

    .line 462
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 463
    .line 464
    .line 465
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    const/4 v2, 0x4

    .line 470
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 471
    .line 472
    .line 473
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    const/4 v2, 0x5

    .line 478
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 479
    .line 480
    .line 481
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    const/4 v2, 0x6

    .line 486
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 487
    .line 488
    .line 489
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    const/4 v2, 0x7

    .line 494
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 495
    .line 496
    .line 497
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    const/16 v2, 0x8

    .line 502
    .line 503
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 504
    .line 505
    .line 506
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    const/16 v2, 0x9

    .line 511
    .line 512
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 513
    .line 514
    .line 515
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    const/16 v2, 0xa

    .line 520
    .line 521
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 522
    .line 523
    .line 524
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    const/16 v2, 0xb

    .line 529
    .line 530
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 531
    .line 532
    .line 533
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    const/16 v2, 0xc

    .line 538
    .line 539
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 540
    .line 541
    .line 542
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    const/16 v2, 0xd

    .line 547
    .line 548
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 549
    .line 550
    .line 551
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    const/16 v2, 0xe

    .line 556
    .line 557
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 558
    .line 559
    .line 560
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    const/16 v2, 0xf

    .line 565
    .line 566
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 567
    .line 568
    .line 569
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    const/16 v2, 0x10

    .line 574
    .line 575
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 576
    .line 577
    .line 578
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    const/16 v2, 0x11

    .line 583
    .line 584
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 585
    .line 586
    .line 587
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    const/16 v2, 0x12

    .line 592
    .line 593
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 594
    .line 595
    .line 596
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    const/16 v2, 0x13

    .line 601
    .line 602
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 603
    .line 604
    .line 605
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    const/16 v2, 0x14

    .line 610
    .line 611
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 612
    .line 613
    .line 614
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    const/16 v2, 0x15

    .line 619
    .line 620
    invoke-virtual {v1, v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .line 622
    .line 623
    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    .line 626
    .line 627
    const-string v2, "\u5931\u8d25: "

    .line 628
    .line 629
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v2

    .line 636
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 647
    .line 648
    .line 649
    :goto_0
    return-void
.end method
