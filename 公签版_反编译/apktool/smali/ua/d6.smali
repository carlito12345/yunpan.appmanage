.class public final synthetic Lua/d6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityRunMemory;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityRunMemory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/d6;->a:Lcom/yunpan/appmanage/ui/ActivityRunMemory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    sget v1, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->I:I

    .line 3
    .line 4
    iget-object v1, p0, Lua/d6;->a:Lcom/yunpan/appmanage/ui/ActivityRunMemory;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v2, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v3, "android.intent.action.MAIN"

    .line 12
    .line 13
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v3, "android.intent.category.HOME"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 22
    .line 23
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    const/high16 v4, 0x10000

    .line 28
    .line 29
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 37
    .line 38
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 39
    .line 40
    :goto_0
    new-instance v2, Lcom/yunpan/appmanage/bean/MemBean;

    .line 41
    .line 42
    invoke-direct {v2}, Lcom/yunpan/appmanage/bean/MemBean;-><init>()V

    .line 43
    .line 44
    .line 45
    new-array v3, v0, [Ljava/lang/String;

    .line 46
    .line 47
    const-string v4, "cat /proc/meminfo"

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    aput-object v4, v3, v5

    .line 51
    .line 52
    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Lv9/e;->l0()Landroidx/room/s;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Landroidx/room/s;->k()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_9

    .line 73
    .line 74
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    const-string v5, "MemTotal"

    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    const-string v6, " "

    .line 91
    .line 92
    const-string v7, ":"

    .line 93
    .line 94
    if-eqz v5, :cond_2

    .line 95
    .line 96
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    add-int/2addr v5, v0

    .line 101
    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    iput-object v4, v2, Lcom/yunpan/appmanage/bean/MemBean;->MemTotal:Ljava/lang/String;

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    const-string v5, "MemAvailable"

    .line 117
    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_3

    .line 123
    .line 124
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    add-int/2addr v5, v0

    .line 129
    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    iput-object v4, v2, Lcom/yunpan/appmanage/bean/MemBean;->MemAvailable:Ljava/lang/String;

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    const-string v5, "SwapTotal"

    .line 145
    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_4

    .line 151
    .line 152
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    add-int/2addr v5, v0

    .line 157
    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    iput-object v4, v2, Lcom/yunpan/appmanage/bean/MemBean;->SwapTotal:Ljava/lang/String;

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_4
    const-string v5, "SwapFree"

    .line 173
    .line 174
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_5

    .line 179
    .line 180
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    add-int/2addr v5, v0

    .line 185
    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    iput-object v4, v2, Lcom/yunpan/appmanage/bean/MemBean;->SwapFree:Ljava/lang/String;

    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :cond_5
    const-string v5, "MemFree"

    .line 202
    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_6

    .line 208
    .line 209
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    add-int/2addr v5, v0

    .line 214
    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    iput-object v4, v2, Lcom/yunpan/appmanage/bean/MemBean;->MemFree:Ljava/lang/String;

    .line 227
    .line 228
    goto/16 :goto_1

    .line 229
    .line 230
    :cond_6
    const-string v5, "Buffers"

    .line 231
    .line 232
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-eqz v5, :cond_7

    .line 237
    .line 238
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    add-int/2addr v5, v0

    .line 243
    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v6

    .line 247
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    iput-object v4, v2, Lcom/yunpan/appmanage/bean/MemBean;->Buffers:Ljava/lang/String;

    .line 256
    .line 257
    goto/16 :goto_1

    .line 258
    .line 259
    :cond_7
    const-string v5, "Cached"

    .line 260
    .line 261
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-eqz v5, :cond_8

    .line 266
    .line 267
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    add-int/2addr v5, v0

    .line 272
    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    iput-object v4, v2, Lcom/yunpan/appmanage/bean/MemBean;->Cached:Ljava/lang/String;

    .line 285
    .line 286
    goto/16 :goto_1

    .line 287
    .line 288
    :cond_8
    const-string v5, "Slab"

    .line 289
    .line 290
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    if-eqz v5, :cond_1

    .line 295
    .line 296
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    add-int/2addr v5, v0

    .line 301
    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    iput-object v4, v2, Lcom/yunpan/appmanage/bean/MemBean;->Slab:Ljava/lang/String;

    .line 314
    .line 315
    goto/16 :goto_1

    .line 316
    .line 317
    :cond_9
    invoke-virtual {p1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->C:Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 323
    .line 324
    .line 325
    invoke-static {}, Landroid/support/v4/media/session/b;->q()Ljava/util/ArrayList;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    iput-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->C:Ljava/util/ArrayList;

    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    const/16 v3, 0xa

    .line 336
    .line 337
    if-ge v2, v3, :cond_a

    .line 338
    .line 339
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 340
    .line 341
    invoke-static {v2}, Landroid/support/v4/media/session/b;->p(Lda/g;)Ljava/util/ArrayList;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    iput-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->C:Ljava/util/ArrayList;

    .line 346
    .line 347
    :cond_a
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->C:Ljava/util/ArrayList;

    .line 348
    .line 349
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    sub-int/2addr v2, v0

    .line 354
    :goto_2
    if-ltz v2, :cond_f

    .line 355
    .line 356
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->C:Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    check-cast v0, Lcom/yunpan/appmanage/bean/PssBean;

    .line 363
    .line 364
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    if-nez v3, :cond_b

    .line 371
    .line 372
    iget-boolean v3, v0, Lcom/yunpan/appmanage/bean/PssBean;->isCanStarted:Z

    .line 373
    .line 374
    if-nez v3, :cond_c

    .line 375
    .line 376
    :cond_b
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->C:Ljava/util/ArrayList;

    .line 377
    .line 378
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    :cond_c
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 382
    .line 383
    const-string v4, ":acc1"

    .line 384
    .line 385
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    if-eqz v3, :cond_d

    .line 390
    .line 391
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->C:Ljava/util/ArrayList;

    .line 392
    .line 393
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    goto :goto_3

    .line 397
    :cond_d
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 398
    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .line 403
    .line 404
    iget-object v4, v1, Lda/g;->A:Lda/g;

    .line 405
    .line 406
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    const-string v4, ":acc"

    .line 414
    .line 415
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-eqz v0, :cond_e

    .line 427
    .line 428
    iget-object v0, v1, Lda/g;->A:Lda/g;

    .line 429
    .line 430
    const-class v3, Lcom/yunpan/appmanage/service/AccService;

    .line 431
    .line 432
    invoke-static {v0, v3}, Lif/a;->h0(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-nez v0, :cond_e

    .line 437
    .line 438
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->C:Ljava/util/ArrayList;

    .line 439
    .line 440
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    :cond_e
    :goto_3
    add-int/lit8 v2, v2, -0x1

    .line 444
    .line 445
    goto :goto_2

    .line 446
    :cond_f
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->C:Ljava/util/ArrayList;

    .line 447
    .line 448
    new-instance v1, Lqa/e;

    .line 449
    .line 450
    const/16 v2, 0x18

    .line 451
    .line 452
    invoke-direct {v1, v2}, Lqa/e;-><init>(I)V

    .line 453
    .line 454
    .line 455
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 459
    .line 460
    .line 461
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 8

    .line 1
    iget-object v2, p0, Lua/d6;->a:Lcom/yunpan/appmanage/ui/ActivityRunMemory;

    .line 2
    .line 3
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->E:Lx9/p4;

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/yunpan/appmanage/bean/PssBean;

    .line 10
    .line 11
    iget-object p2, p1, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "system"

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    const-string p1, "\u62d2\u7edd\u60a8\u6b64\u6b21\u5371\u9669\u64cd\u4f5c"

    .line 22
    .line 23
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p2, p1, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v0, v2, Lda/g;->A:Lda/g;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    const-string p1, "\u4e3b\u4eba\uff01\u60a8\u8fd9\u662f\u4e3a\u4f55\uff1fo(\u2565\ufe4f\u2565)o"

    .line 42
    .line 43
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p2, v2, Lda/g;->A:Lda/g;

    .line 48
    .line 49
    invoke-static {p2}, Lqf/c;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    new-instance p1, Lha/z6;

    .line 70
    .line 71
    const-string p2, "\u6b64\u5e94\u7528\u662f\u9ed8\u8ba4\u684c\u9762\uff0c\u7981\u6b62\u4f7f\u7528\u5f3a\u5236\u505c\u6b62"

    .line 72
    .line 73
    const-string p3, "\u56e0\u4e3a\u67d0\u4e9b\u70c2\u7cfb\u7edf\uff0c\u5f3a\u5236\u505c\u6b62\u684c\u9762\u7684\u8bdd \u4f1a\u65e0\u6cd5\u5f00\u673a\u81ea\u542f"

    .line 74
    .line 75
    invoke-direct {p1, v2, v2, p2, p3}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    new-instance p1, Lha/z6;

    .line 83
    .line 84
    new-instance v7, Ld3/g;

    .line 85
    .line 86
    const/16 p2, 0x13

    .line 87
    .line 88
    invoke-direct {v7, p3, p2, v2}, Ld3/g;-><init>(IILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    const-string v5, "\u5173\u95ed\u8fdb\u7a0b"

    .line 92
    .line 93
    const-string v6, "\u5f3a\u5236\u505c\u6b62"

    .line 94
    .line 95
    const-string v3, "\u60a8\u8981\u5173\u95ed\u6b64\u8fdb\u7a0b\uff0c\u8fd8\u662f\u5173\u95ed\u6574\u4e2a\u5e94\u7528\uff1f"

    .line 96
    .line 97
    const-string v4, ""

    .line 98
    .line 99
    move-object v0, p1

    .line 100
    move-object v1, v2

    .line 101
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 105
    .line 106
    .line 107
    :goto_0
    return-void
.end method
