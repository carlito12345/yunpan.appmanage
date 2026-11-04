.class public Lcom/yunpan/appmanage/ui/ActivityTextIflytek;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic I:I


# instance fields
.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/widget/TextView;

.field public F:Lx8/c;

.field public final G:Lcom/yunpan/appmanage/carsdk/f;

.field public final H:Lua/o7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yunpan/appmanage/carsdk/f;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-direct {v0, v1, p0}, Lcom/yunpan/appmanage/carsdk/f;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->G:Lcom/yunpan/appmanage/carsdk/f;

    .line 11
    .line 12
    new-instance v0, Lua/o7;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lua/o7;-><init>(Lcom/yunpan/appmanage/ui/ActivityTextIflytek;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->H:Lua/o7;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->F:Lx8/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->H:Lua/o7;

    .line 6
    .line 7
    check-cast v0, Lx8/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lx8/a;->l(Lx8/d;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->F:Lx8/c;

    .line 13
    .line 14
    check-cast v0, Lx8/a;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lx8/a;->j(Lua/n7;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->F:Lx8/c;

    .line 21
    .line 22
    check-cast v0, Lx8/a;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lx8/a;->h(Lua/n7;)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->F:Lx8/c;

    .line 28
    .line 29
    check-cast v0, Lx8/a;

    .line 30
    .line 31
    invoke-virtual {v0}, Lx8/a;->i()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->G:Lcom/yunpan/appmanage/carsdk/f;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 42
    .line 43
    .line 44
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 45
    .line 46
    .line 47
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
    const-string v1, "\u79d1\u5927\u8baf\u98de-\u6d4b\u8bd5"

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
    new-instance v1, Lua/z6;

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    invoke-direct {v1, v2, p0}, Lua/z6;-><init>(ILjava/lang/Object;)V

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->C:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->D:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->E:Landroid/widget/TextView;

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
    const v0, 0x7f0b05e8

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Landroid/widget/TextView;

    .line 117
    .line 118
    const v0, 0x7f0b05e9

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/widget/TextView;

    .line 126
    .line 127
    const v0, 0x7f0b05c3

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Landroid/widget/TextView;

    .line 135
    .line 136
    const v0, 0x7f0b05c4

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Landroid/widget/TextView;

    .line 144
    .line 145
    const v0, 0x7f0b05c5

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
    const v0, 0x7f0b05c6

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Landroid/widget/TextView;

    .line 162
    .line 163
    const v0, 0x7f0b05c7

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Landroid/widget/TextView;

    .line 171
    .line 172
    const v0, 0x7f0b05c8

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Landroid/widget/TextView;

    .line 180
    .line 181
    const v0, 0x7f0b05c9

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Landroid/widget/TextView;

    .line 189
    .line 190
    const v0, 0x7f0b05ca

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Landroid/widget/TextView;

    .line 198
    .line 199
    const v0, 0x7f0b05cb

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
    const v0, 0x7f0b05cc

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Landroid/widget/TextView;

    .line 216
    .line 217
    const v0, 0x7f0b05ce

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Landroid/widget/TextView;

    .line 225
    .line 226
    const v0, 0x7f0b05cf

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Landroid/widget/TextView;

    .line 234
    .line 235
    const v0, 0x7f0b05d0

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Landroid/widget/TextView;

    .line 243
    .line 244
    const v0, 0x7f0b05d1

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
    const v0, 0x7f0b05d2

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    check-cast v0, Landroid/widget/TextView;

    .line 261
    .line 262
    const v0, 0x7f0b05d3

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    check-cast v0, Landroid/widget/TextView;

    .line 270
    .line 271
    const v0, 0x7f0b05d4

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Landroid/widget/TextView;

    .line 279
    .line 280
    const v0, 0x7f0b05d5

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    check-cast v0, Landroid/widget/TextView;

    .line 288
    .line 289
    const v0, 0x7f0b05d6

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    check-cast v0, Landroid/widget/TextView;

    .line 297
    .line 298
    const v0, 0x7f0b05d7

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
    const v0, 0x7f0b05d9

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
    const v0, 0x7f0b05da

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
    const v0, 0x7f0b05db

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
    const v0, 0x7f0b05dc

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
    const v0, 0x7f0b05dd

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
    const v0, 0x7f0b05de

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
    const v0, 0x7f0b05df

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
    const v0, 0x7f0b05e0

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
    const v0, 0x7f0b05e1

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
    const v0, 0x7f0b05e2

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
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 398
    .line 399
    const-string v1, "com.iflytek.autofly.EVENTBUS"

    .line 400
    .line 401
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    const-string v1, "com.iflytek.cutefly.speechclient.hmi"

    .line 405
    .line 406
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    .line 408
    .line 409
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->G:Lcom/yunpan/appmanage/carsdk/f;

    .line 410
    .line 411
    const/4 v2, 0x1

    .line 412
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .line 414
    .line 415
    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    const-string v2, "\u65e0\u6cd5\u7ed1\u5b9a\uff1a"

    .line 420
    .line 421
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-static {v0, v1}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 425
    .line 426
    .line 427
    :goto_0
    return-void
.end method
