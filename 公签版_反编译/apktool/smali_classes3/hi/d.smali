.class public final Lhi/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lhi/d;->a:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lhi/d;->a:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_0
    const-string v2, "file://"

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_1
    const/4 v2, 0x7

    .line 33
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_2
    sget-object v2, Lfa/g0;->a:Lfa/h0;

    .line 50
    .line 51
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_d

    .line 60
    .line 61
    const-string v2, "/sdcard"

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_d

    .line 68
    .line 69
    const-string v2, "/storage/emulated/0"

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_d

    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v3, "/storage/emulated/"

    .line 80
    .line 81
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 85
    .line 86
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 87
    .line 88
    iget v4, v3, Lcom/yunpan/appmanage/util/k;->n:I

    .line 89
    .line 90
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_3

    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    if-nez p2, :cond_4

    .line 110
    .line 111
    goto/16 :goto_0

    .line 112
    .line 113
    :cond_4
    const/16 v2, 0x8

    .line 114
    .line 115
    const-string v4, "/mnt/media_rw"

    .line 116
    .line 117
    const-string v5, "/storage/"

    .line 118
    .line 119
    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    .line 120
    .line 121
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-nez v6, :cond_7

    .line 126
    .line 127
    const-string v0, "android.intent.action.MEDIA_EJECT"

    .line 128
    .line 129
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    if-nez p2, :cond_5

    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :cond_5
    const-string p2, "U\u76d8\u5df2\u62d4\u51fa"

    .line 138
    .line 139
    invoke-static {p2}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    iget-object p2, v3, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 143
    .line 144
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    new-instance v0, Lja/c;

    .line 152
    .line 153
    const/4 v6, -0x2

    .line 154
    invoke-direct {v0, v6, p1}, Lja/c;-><init>(ILjava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, v0}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p2, p1}, Lcom/yunpan/appmanage/db/MyDb;->deleteDir_thread(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    if-eqz p2, :cond_6

    .line 172
    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-static {p1, v2, p2}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object p2, v3, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 183
    .line 184
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    new-instance v0, Lja/c;

    .line 192
    .line 193
    invoke-direct {v0, v6, p1}, Lja/c;-><init>(ILjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, v0}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-virtual {p2, p1}, Lcom/yunpan/appmanage/db/MyDb;->deleteDir_thread(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :cond_6
    iget-boolean p1, v3, Lcom/yunpan/appmanage/util/k;->w:Z

    .line 207
    .line 208
    if-eqz p1, :cond_d

    .line 209
    .line 210
    iget-object p1, v3, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-eqz p1, :cond_d

    .line 217
    .line 218
    iput-boolean v1, v3, Lcom/yunpan/appmanage/util/k;->w:Z

    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_7
    iget-object p2, v3, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 223
    .line 224
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    if-eqz p2, :cond_8

    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :cond_8
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result p2

    .line 236
    if-eqz p2, :cond_9

    .line 237
    .line 238
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->b(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result p2

    .line 242
    if-nez p2, :cond_9

    .line 243
    .line 244
    new-instance p2, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-static {p1, v2, p2}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    invoke-static {p2}, Lcom/yunpan/appmanage/util/a0;->b(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_9

    .line 258
    .line 259
    move-object p1, p2

    .line 260
    :cond_9
    iget-object p2, v3, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 261
    .line 262
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    iget-object p2, v3, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 266
    .line 267
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    if-le p2, v0, :cond_a

    .line 272
    .line 273
    iget-object p2, v3, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 274
    .line 275
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    new-instance v1, Lqh/g0;

    .line 280
    .line 281
    const/16 v2, 0xf

    .line 282
    .line 283
    invoke-direct {v1, v2}, Lqh/g0;-><init>(I)V

    .line 284
    .line 285
    .line 286
    invoke-static {p2, v1}, Lj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    .line 287
    .line 288
    .line 289
    :cond_a
    iget-object p2, v3, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 290
    .line 291
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result p2

    .line 295
    if-nez p2, :cond_b

    .line 296
    .line 297
    goto :goto_0

    .line 298
    :cond_b
    const-string p2, "U\u76d8\u5df2\u63d2\u5165"

    .line 299
    .line 300
    invoke-static {p2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    new-instance v1, Lja/c;

    .line 308
    .line 309
    const/4 v2, -0x1

    .line 310
    invoke-direct {v1, v2, p1}, Lja/c;-><init>(ILjava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2, v1}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    iget-boolean p2, v3, Lcom/yunpan/appmanage/util/k;->w:Z

    .line 317
    .line 318
    if-nez p2, :cond_d

    .line 319
    .line 320
    :try_start_0
    sget-object p2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 321
    .line 322
    iget-boolean p2, p2, Lcom/yunpan/appmanage/util/w;->q0:Z

    .line 323
    .line 324
    if-eqz p2, :cond_c

    .line 325
    .line 326
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->k(Ljava/lang/String;)J

    .line 327
    .line 328
    .line 329
    move-result-wide v1

    .line 330
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->j(Ljava/lang/String;)J

    .line 331
    .line 332
    .line 333
    move-result-wide v4

    .line 334
    sub-long/2addr v1, v4

    .line 335
    const-wide v4, 0x1900000000L

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    cmp-long p2, v1, v4

    .line 341
    .line 342
    if-lez p2, :cond_c

    .line 343
    .line 344
    iput-boolean v0, v3, Lcom/yunpan/appmanage/util/k;->w:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .line 346
    goto :goto_0

    .line 347
    :catch_0
    :cond_c
    sget-object p2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 348
    .line 349
    iget-object p2, p2, Lcom/yunpan/appmanage/util/k;->f0:Ljava/util/concurrent/ExecutorService;

    .line 350
    .line 351
    new-instance v0, Lcom/yunpan/appmanage/util/z;

    .line 352
    .line 353
    new-instance v1, Ljava/io/File;

    .line 354
    .line 355
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-direct {v0, v1}, Lcom/yunpan/appmanage/util/z;-><init>(Ljava/io/File;)V

    .line 359
    .line 360
    .line 361
    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 362
    .line 363
    .line 364
    :cond_d
    :goto_0
    return-void

    .line 365
    :pswitch_0
    const-string v2, "\u606f\u5c4f\u65f6\u95f4\u5c11\u4e8e "

    .line 366
    .line 367
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p2

    .line 371
    const-string v3, "android.intent.action.SCREEN_ON"

    .line 372
    .line 373
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 377
    const-string v4, ":"

    .line 378
    .line 379
    const-string v5, ".service.AccService"

    .line 380
    .line 381
    const-string v6, "accessibility_enabled"

    .line 382
    .line 383
    const-string v7, "/"

    .line 384
    .line 385
    const-string v8, ""

    .line 386
    .line 387
    const-string v9, "enabled_accessibility_services"

    .line 388
    .line 389
    if-eqz v3, :cond_17

    .line 390
    .line 391
    :try_start_2
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 392
    .line 393
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    .line 395
    .line 396
    sget-object p2, Lwa/t;->a:Lwa/u;

    .line 397
    .line 398
    iget-boolean v3, p2, Lwa/u;->t:Z

    .line 399
    .line 400
    if-eqz v3, :cond_e

    .line 401
    .line 402
    const-string v3, "\u5e7f\u64ad\uff1a\u5c4f\u5e55\u70b9\u4eae"

    .line 403
    .line 404
    invoke-static {v3}, Lwa/w;->c(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    goto :goto_1

    .line 408
    :catch_1
    move-exception p1

    .line 409
    goto/16 :goto_4

    .line 410
    .line 411
    :cond_e
    :goto_1
    invoke-virtual {p2}, Lwa/u;->c()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 412
    .line 413
    .line 414
    :try_start_3
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 415
    .line 416
    .line 417
    move-result-object p2

    .line 418
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 419
    .line 420
    .line 421
    :catch_2
    :try_start_4
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 422
    .line 423
    .line 424
    move-result-object p2

    .line 425
    iget-object p2, p2, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 426
    .line 427
    if-eqz p2, :cond_f

    .line 428
    .line 429
    sget-object p2, Lwa/t;->a:Lwa/u;

    .line 430
    .line 431
    iget-boolean p2, p2, Lwa/u;->K:Z

    .line 432
    .line 433
    if-eqz p2, :cond_f

    .line 434
    .line 435
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 436
    .line 437
    .line 438
    move-result-object p2

    .line 439
    iget-object p2, p2, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 440
    .line 441
    invoke-virtual {p2}, Lcom/yunpan/appmanage/service/AccService;->e()V

    .line 442
    .line 443
    .line 444
    :cond_f
    sget-object p2, Lwa/t;->a:Lwa/u;

    .line 445
    .line 446
    iget-boolean v3, p2, Lwa/u;->F:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 447
    .line 448
    if-eqz v3, :cond_13

    .line 449
    .line 450
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    invoke-static {v3, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    if-nez v3, :cond_10

    .line 459
    .line 460
    move-object v3, v8

    .line 461
    :cond_10
    new-instance v10, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v11

    .line 470
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v10

    .line 480
    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 481
    .line 482
    .line 483
    move-result v10

    .line 484
    if-nez v10, :cond_13

    .line 485
    .line 486
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 487
    .line 488
    .line 489
    move-result v10

    .line 490
    if-eqz v10, :cond_11

    .line 491
    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .line 496
    .line 497
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v4

    .line 511
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v3

    .line 521
    goto :goto_2

    .line 522
    :cond_11
    new-instance v10, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v3

    .line 537
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 558
    .line 559
    .line 560
    move-result-object v4

    .line 561
    invoke-static {v4, v9, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 562
    .line 563
    .line 564
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    invoke-static {v4, v6, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 569
    .line 570
    .line 571
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 572
    .line 573
    .line 574
    move-result-object v4

    .line 575
    invoke-static {v4, v6, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    .line 577
    .line 578
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    invoke-static {v1, v9, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 583
    .line 584
    .line 585
    move-result v1

    .line 586
    if-eqz v1, :cond_12

    .line 587
    .line 588
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    invoke-static {v1, v6, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 593
    .line 594
    .line 595
    :cond_12
    iget-boolean p2, p2, Lwa/u;->t:Z

    .line 596
    .line 597
    if-eqz p2, :cond_13

    .line 598
    .line 599
    const-string p2, "\u5e7f\u64ad\uff1a\u52fe\u9009\u4e86\u606f\u5c4f\u5173\u95ed\u81ea\u52a8\u5316\u670d\u52a1\u4eae\u5c4f\u65f6\u5f00\u542f\uff0c\u5f00\u542f\u4e2d"

    .line 600
    .line 601
    invoke-static {p2}, Lwa/w;->c(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 602
    .line 603
    .line 604
    :catch_3
    :cond_13
    :try_start_6
    sget-object p2, Lwa/t;->a:Lwa/u;

    .line 605
    .line 606
    iget-boolean v0, p2, Lwa/u;->i:Z

    .line 607
    .line 608
    if-eqz v0, :cond_16

    .line 609
    .line 610
    iget v0, p2, Lwa/u;->o:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 611
    .line 612
    const-string v1, "\u4eae\u5c4f"

    .line 613
    .line 614
    if-lez v0, :cond_15

    .line 615
    .line 616
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 617
    .line 618
    .line 619
    move-result-wide v3

    .line 620
    iget-wide v5, p2, Lwa/u;->p:J

    .line 621
    .line 622
    sub-long/2addr v3, v5

    .line 623
    iget v0, p2, Lwa/u;->o:I

    .line 624
    .line 625
    int-to-long v5, v0

    .line 626
    const-wide/32 v7, 0xea60

    .line 627
    .line 628
    .line 629
    mul-long v5, v5, v7

    .line 630
    .line 631
    cmp-long v0, v3, v5

    .line 632
    .line 633
    if-lez v0, :cond_14

    .line 634
    .line 635
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/service/BootReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    goto :goto_3

    .line 639
    :cond_14
    iget-boolean p1, p2, Lwa/u;->t:Z

    .line 640
    .line 641
    if-eqz p1, :cond_16

    .line 642
    .line 643
    new-instance p1, Ljava/lang/StringBuilder;

    .line 644
    .line 645
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    iget p2, p2, Lwa/u;->o:I

    .line 649
    .line 650
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    const-string p2, " \u5206\u949f\u4e0d\u6267\u884c\u5f00\u673a\u4efb\u52a1"

    .line 654
    .line 655
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object p1

    .line 662
    invoke-static {p1}, Lwa/w;->c(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    goto :goto_3

    .line 666
    :cond_15
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/service/BootReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    :cond_16
    :goto_3
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 670
    .line 671
    .line 672
    move-result-object p1

    .line 673
    iget-object p1, p1, Lwa/s;->w:Lz7/s;

    .line 674
    .line 675
    if-eqz p1, :cond_20

    .line 676
    .line 677
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 678
    .line 679
    .line 680
    move-result-object p1

    .line 681
    iget-object p1, p1, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 682
    .line 683
    if-eqz p1, :cond_20

    .line 684
    .line 685
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 686
    .line 687
    .line 688
    move-result-object p1

    .line 689
    const/16 p2, 0x6e

    .line 690
    .line 691
    invoke-virtual {p1, p2}, Lwa/s;->i(I)V

    .line 692
    .line 693
    .line 694
    goto/16 :goto_5

    .line 695
    .line 696
    :cond_17
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 697
    .line 698
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 699
    .line 700
    .line 701
    move-result v1

    .line 702
    if-eqz v1, :cond_1f

    .line 703
    .line 704
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 705
    .line 706
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 707
    .line 708
    .line 709
    sget-object p2, Lwa/t;->a:Lwa/u;

    .line 710
    .line 711
    iget-boolean p2, p2, Lwa/u;->t:Z

    .line 712
    .line 713
    if-eqz p2, :cond_18

    .line 714
    .line 715
    const-string p2, "\u5e7f\u64ad\uff1a\u5c4f\u5e55\u7184\u706d"

    .line 716
    .line 717
    invoke-static {p2}, Lwa/w;->c(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 718
    .line 719
    .line 720
    :cond_18
    :try_start_8
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 721
    .line 722
    .line 723
    move-result-object p2

    .line 724
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 725
    .line 726
    .line 727
    :catch_4
    :try_start_9
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 728
    .line 729
    .line 730
    move-result-object p2

    .line 731
    iget-object p2, p2, Lwa/s;->n:Ljava/util/HashSet;

    .line 732
    .line 733
    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 734
    .line 735
    .line 736
    :catch_5
    :try_start_a
    sget-object p2, Lwa/t;->a:Lwa/u;

    .line 737
    .line 738
    invoke-virtual {p2}, Lwa/u;->c()V

    .line 739
    .line 740
    .line 741
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 742
    .line 743
    .line 744
    move-result-wide v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 745
    :try_start_b
    iput-wide v1, p2, Lwa/u;->p:J

    .line 746
    .line 747
    iget-object v3, p2, Lwa/u;->b:Lz7/s;

    .line 748
    .line 749
    const-string v10, "ScreenOff_Time"

    .line 750
    .line 751
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    invoke-virtual {v3, v10, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 756
    .line 757
    .line 758
    :catch_6
    :try_start_c
    invoke-virtual {p2}, Lwa/u;->i()V

    .line 759
    .line 760
    .line 761
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 762
    .line 763
    .line 764
    move-result-object p2

    .line 765
    iget-object p2, p2, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 766
    .line 767
    const/4 v1, 0x0

    .line 768
    if-eqz p2, :cond_19

    .line 769
    .line 770
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 771
    .line 772
    .line 773
    move-result-object p2

    .line 774
    iget-object p2, p2, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 775
    .line 776
    iget-object p2, p2, Lcom/yunpan/appmanage/service/AccService;->h0:Lta/o;

    .line 777
    .line 778
    if-eqz p2, :cond_19

    .line 779
    .line 780
    sget-object p2, Lwa/t;->a:Lwa/u;

    .line 781
    .line 782
    iget-boolean p2, p2, Lwa/u;->K:Z

    .line 783
    .line 784
    if-eqz p2, :cond_19

    .line 785
    .line 786
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 787
    .line 788
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 789
    .line 790
    .line 791
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 792
    .line 793
    .line 794
    move-result-object p2

    .line 795
    iget-object p2, p2, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 796
    .line 797
    iget-object p2, p2, Lcom/yunpan/appmanage/service/AccService;->h0:Lta/o;

    .line 798
    .line 799
    invoke-virtual {p2}, Lta/o;->g()V

    .line 800
    .line 801
    .line 802
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 803
    .line 804
    .line 805
    move-result-object p2

    .line 806
    iget-object p2, p2, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 807
    .line 808
    iput-object v1, p2, Lcom/yunpan/appmanage/service/AccService;->h0:Lta/o;

    .line 809
    .line 810
    :cond_19
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 811
    .line 812
    .line 813
    move-result-object p2

    .line 814
    iget-object p2, p2, Lwa/s;->w:Lz7/s;

    .line 815
    .line 816
    if-eqz p2, :cond_1a

    .line 817
    .line 818
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 819
    .line 820
    .line 821
    move-result-object p2

    .line 822
    iget-object p2, p2, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 823
    .line 824
    if-eqz p2, :cond_1a

    .line 825
    .line 826
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 827
    .line 828
    .line 829
    move-result-object p2

    .line 830
    const/16 v2, 0x6f

    .line 831
    .line 832
    invoke-virtual {p2, v2}, Lwa/s;->i(I)V

    .line 833
    .line 834
    .line 835
    :cond_1a
    sget-object p2, Lwa/t;->a:Lwa/u;

    .line 836
    .line 837
    iget-boolean v2, p2, Lwa/u;->F:Z

    .line 838
    .line 839
    if-eqz v2, :cond_20

    .line 840
    .line 841
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 842
    .line 843
    .line 844
    move-result-object v2

    .line 845
    iget-object v2, v2, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 846
    .line 847
    if-eqz v2, :cond_1c

    .line 848
    .line 849
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 850
    .line 851
    const/16 v3, 0x18

    .line 852
    .line 853
    if-lt v2, v3, :cond_1b

    .line 854
    .line 855
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 856
    .line 857
    .line 858
    move-result-object v2

    .line 859
    iget-object v2, v2, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 860
    .line 861
    invoke-static {v2}, Lq/t;->A(Lcom/yunpan/appmanage/service/AccService;)V

    .line 862
    .line 863
    .line 864
    :cond_1b
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 865
    .line 866
    .line 867
    move-result-object v2

    .line 868
    iget-object v2, v2, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 869
    .line 870
    invoke-virtual {v2}, Landroid/app/Service;->stopSelf()V

    .line 871
    .line 872
    .line 873
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 874
    .line 875
    .line 876
    move-result-object v2

    .line 877
    iput-object v1, v2, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 878
    .line 879
    :cond_1c
    :try_start_d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 880
    .line 881
    .line 882
    move-result-object v1

    .line 883
    invoke-static {v1, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v1

    .line 887
    if-nez v1, :cond_1d

    .line 888
    .line 889
    move-object v1, v8

    .line 890
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 891
    .line 892
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 893
    .line 894
    .line 895
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v3

    .line 899
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    .line 902
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v2

    .line 909
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 910
    .line 911
    .line 912
    move-result v2

    .line 913
    if-eqz v2, :cond_1e

    .line 914
    .line 915
    new-instance v2, Ljava/lang/StringBuilder;

    .line 916
    .line 917
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    .line 919
    .line 920
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v3

    .line 924
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    const-string v3, "/.service.AccService"

    .line 928
    .line 929
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    .line 931
    .line 932
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v2

    .line 936
    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 937
    .line 938
    .line 939
    move-result-object v1

    .line 940
    new-instance v2, Ljava/lang/StringBuilder;

    .line 941
    .line 942
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 943
    .line 944
    .line 945
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v3

    .line 949
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    .line 951
    .line 952
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    .line 954
    .line 955
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v3

    .line 959
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v1

    .line 973
    const-string v2, "::"

    .line 974
    .line 975
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v1

    .line 979
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 980
    .line 981
    .line 982
    move-result-object v2

    .line 983
    invoke-static {v2, v9, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 984
    .line 985
    .line 986
    move-result v1

    .line 987
    if-eqz v1, :cond_1e

    .line 988
    .line 989
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 990
    .line 991
    .line 992
    move-result-object p1

    .line 993
    invoke-static {p1, v6, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 994
    .line 995
    .line 996
    :cond_1e
    iget-boolean p1, p2, Lwa/u;->t:Z

    .line 997
    .line 998
    if-eqz p1, :cond_20

    .line 999
    .line 1000
    const-string p1, "\u5e7f\u64ad\uff1a\u52fe\u9009\u4e86\u606f\u5c4f\u5173\u95ed\u81ea\u52a8\u5316\u670d\u52a1\u4eae\u5c4f\u65f6\u5f00\u542f\uff0c\u5173\u95ed\u4e2d"

    .line 1001
    .line 1002
    invoke-static {p1}, Lwa/w;->c(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 1003
    .line 1004
    .line 1005
    goto :goto_5

    .line 1006
    :cond_1f
    :try_start_e
    const-string p1, "android.intent.action.USER_PRESENT"

    .line 1007
    .line 1008
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1009
    .line 1010
    .line 1011
    move-result p1

    .line 1012
    if-eqz p1, :cond_20

    .line 1013
    .line 1014
    sget-object p1, Lwa/t;->a:Lwa/u;

    .line 1015
    .line 1016
    iget-boolean p1, p1, Lwa/u;->t:Z

    .line 1017
    .line 1018
    if-eqz p1, :cond_20

    .line 1019
    .line 1020
    const-string p1, "\u5e7f\u64ad\uff1a\u89e3\u9501\u5c4f\u5e55"

    .line 1021
    .line 1022
    invoke-static {p1}, Lwa/w;->c(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 1023
    .line 1024
    .line 1025
    goto :goto_5

    .line 1026
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1027
    .line 1028
    .line 1029
    :catch_7
    :cond_20
    :goto_5
    return-void

    .line 1030
    :pswitch_1
    const-string v0, "moe.shizuku.privileged.api.intent.extra.BINDER"

    .line 1031
    .line 1032
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1033
    .line 1034
    .line 1035
    move-result-object p2

    .line 1036
    check-cast p2, Lmoe/shizuku/api/BinderContainer;

    .line 1037
    .line 1038
    if-eqz p2, :cond_21

    .line 1039
    .line 1040
    iget-object p2, p2, Lmoe/shizuku/api/BinderContainer;->a:Landroid/os/IBinder;

    .line 1041
    .line 1042
    if-eqz p2, :cond_21

    .line 1043
    .line 1044
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1045
    .line 1046
    .line 1047
    move-result-object p1

    .line 1048
    invoke-static {p2, p1}, Lhi/b;->g(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    :cond_21
    return-void

    .line 1052
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
