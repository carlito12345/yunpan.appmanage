.class public final synthetic Lfa/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lfa/v;->a:I

    iput-object p1, p0, Lfa/v;->c:Ljava/lang/Object;

    iput p2, p0, Lfa/v;->b:I

    iput-object p3, p0, Lfa/v;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p4, p0, Lfa/v;->a:I

    iput-object p1, p0, Lfa/v;->c:Ljava/lang/Object;

    iput-object p2, p0, Lfa/v;->d:Ljava/lang/Object;

    iput p3, p0, Lfa/v;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lfa/v;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget v3, p0, Lfa/v;->b:I

    .line 6
    .line 7
    iget-object v4, p0, Lfa/v;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget v5, p0, Lfa/v;->a:I

    .line 10
    .line 11
    packed-switch v5, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v4, Ly3/b;

    .line 15
    .line 16
    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 17
    .line 18
    invoke-interface {v4, v3, v2}, Ly3/b;->c(ILjava/io/Serializable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    check-cast v4, Ly3/a;

    .line 23
    .line 24
    iget-object v0, v4, Ly3/a;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Ly3/b;

    .line 27
    .line 28
    check-cast v2, Ljava/io/Serializable;

    .line 29
    .line 30
    invoke-interface {v0, v3, v2}, Ly3/b;->c(ILjava/io/Serializable;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    check-cast v4, Lwb/g;

    .line 35
    .line 36
    iget-object v0, v4, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 37
    .line 38
    check-cast v2, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 39
    .line 40
    if-ne v0, v2, :cond_1

    .line 41
    .line 42
    iget-object v0, v4, Lwb/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eq v3, v0, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    invoke-virtual {v2, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->setLayoutBusy(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v1, v2, v2, v0}, Ltb/u;->j(FFZ)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void

    .line 64
    :pswitch_2
    check-cast v2, Ljava/lang/String;

    .line 65
    .line 66
    sget v5, Lcom/yunpan/appmanage/ui/ActivityHome;->O:I

    .line 67
    .line 68
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityHome;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 74
    .line 75
    const/16 v6, 0x18

    .line 76
    .line 77
    const/16 v7, 0x2200

    .line 78
    .line 79
    if-lt v5, v6, :cond_2

    .line 80
    .line 81
    iget-object v4, v4, Lda/g;->A:Lda/g;

    .line 82
    .line 83
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    goto :goto_1

    .line 92
    :catch_0
    nop

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    iget-object v4, v4, Lda/g;->A:Lda/g;

    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    :goto_1
    new-instance v5, Lcom/yunpan/appmanage/db/AppBean;

    .line 105
    .line 106
    invoke-direct {v5, v4}, Lcom/yunpan/appmanage/db/AppBean;-><init>(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    move-object v0, v5

    .line 110
    :goto_2
    const/16 v4, 0xc

    .line 111
    .line 112
    if-nez v3, :cond_4

    .line 113
    .line 114
    if-nez v0, :cond_3

    .line 115
    .line 116
    goto/16 :goto_4

    .line 117
    .line 118
    :cond_3
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-interface {v1, v0}, Lcom/yunpan/appmanage/db/AppDao;->insert(Lcom/yunpan/appmanage/db/AppBean;)J

    .line 127
    .line 128
    .line 129
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-instance v2, Lja/a;

    .line 134
    .line 135
    invoke-direct {v2, v4, v0}, Lja/a;-><init>(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_4
    if-ne v3, v1, :cond_7

    .line 143
    .line 144
    if-nez v0, :cond_5

    .line 145
    .line 146
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-interface {v0, v2}, Lcom/yunpan/appmanage/db/AppDao;->deletePackageName(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 158
    .line 159
    iget-object v1, v0, Lcom/yunpan/appmanage/util/w;->X:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-nez v1, :cond_6

    .line 166
    .line 167
    iget-object v1, v0, Lcom/yunpan/appmanage/util/w;->X:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_6

    .line 174
    .line 175
    const-string v1, ""

    .line 176
    .line 177
    iput-object v1, v0, Lcom/yunpan/appmanage/util/w;->X:Ljava/lang/String;

    .line 178
    .line 179
    const-string v3, "InstallSource"

    .line 180
    .line 181
    :try_start_1
    iget-object v4, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 182
    .line 183
    invoke-virtual {v4, v3, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    .line 185
    .line 186
    :catch_1
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_5
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-interface {v1, v0}, Lcom/yunpan/appmanage/db/AppDao;->insert(Lcom/yunpan/appmanage/db/AppBean;)J

    .line 199
    .line 200
    .line 201
    :cond_6
    :goto_3
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    new-instance v1, Lja/a;

    .line 206
    .line 207
    const/16 v3, 0xb

    .line 208
    .line 209
    invoke-direct {v1, v3, v2}, Lja/a;-><init>(ILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_7
    const/4 v1, 0x2

    .line 217
    if-ne v3, v1, :cond_9

    .line 218
    .line 219
    if-nez v0, :cond_8

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_8
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-interface {v1, v0}, Lcom/yunpan/appmanage/db/AppDao;->insert(Lcom/yunpan/appmanage/db/AppBean;)J

    .line 231
    .line 232
    .line 233
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    new-instance v2, Lja/a;

    .line 238
    .line 239
    invoke-direct {v2, v4, v0}, Lja/a;-><init>(ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v2}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    :cond_9
    :goto_4
    return-void

    .line 246
    :pswitch_3
    check-cast v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 247
    .line 248
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-eqz v4, :cond_c

    .line 257
    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    check-cast v4, Lu1/l;

    .line 263
    .line 264
    iget-boolean v5, v4, Lu1/l;->d:Z

    .line 265
    .line 266
    if-nez v5, :cond_a

    .line 267
    .line 268
    const/4 v5, -0x1

    .line 269
    if-eq v3, v5, :cond_b

    .line 270
    .line 271
    iget-object v5, v4, Lu1/l;->b:Lh5/d0;

    .line 272
    .line 273
    invoke-virtual {v5, v3}, Lh5/d0;->a(I)V

    .line 274
    .line 275
    .line 276
    :cond_b
    iput-boolean v1, v4, Lu1/l;->c:Z

    .line 277
    .line 278
    move-object v5, v2

    .line 279
    check-cast v5, Lu1/j;

    .line 280
    .line 281
    iget-object v4, v4, Lu1/l;->a:Ljava/lang/Object;

    .line 282
    .line 283
    invoke-interface {v5, v4}, Lu1/j;->a(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_c
    return-void

    .line 288
    :pswitch_4
    check-cast v4, Lz7/s;

    .line 289
    .line 290
    check-cast v2, Lcom/yunpan/appmanage/service/AccService;

    .line 291
    .line 292
    :try_start_2
    const-string v5, "str1"

    .line 293
    .line 294
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 307
    .line 308
    const/16 v6, 0x15

    .line 309
    .line 310
    if-lt v5, v6, :cond_d

    .line 311
    .line 312
    sget-object v5, Lwa/t;->a:Lwa/u;

    .line 313
    .line 314
    iget-object v5, v5, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 315
    .line 316
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    invoke-static {v5, v6}, Lg7/d;->g(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    goto :goto_6

    .line 329
    :catch_2
    move-exception v0

    .line 330
    goto :goto_9

    .line 331
    :cond_d
    move-object v5, v0

    .line 332
    :goto_6
    if-nez v5, :cond_e

    .line 333
    .line 334
    sget-object v5, Lwa/t;->a:Lwa/u;

    .line 335
    .line 336
    iget-object v5, v5, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 337
    .line 338
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    :cond_e
    const/high16 v6, 0x10000000

    .line 351
    .line 352
    if-nez v5, :cond_f

    .line 353
    .line 354
    new-instance v5, Landroid/content/Intent;

    .line 355
    .line 356
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 363
    .line 364
    .line 365
    goto :goto_7

    .line 366
    :cond_f
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    .line 368
    .line 369
    const/high16 v0, 0x10200000

    .line 370
    .line 371
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 372
    .line 373
    .line 374
    :goto_7
    if-ne v3, v1, :cond_10

    .line 375
    .line 376
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 377
    .line 378
    iget-object v0, v0, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 379
    .line 380
    invoke-static {v1, v0, v5}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 381
    .line 382
    .line 383
    goto :goto_8

    .line 384
    :cond_10
    const/16 v0, 0x36

    .line 385
    .line 386
    if-ne v3, v0, :cond_11

    .line 387
    .line 388
    invoke-virtual {v2, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 389
    .line 390
    .line 391
    goto :goto_8

    .line 392
    :cond_11
    const/16 v0, 0x37

    .line 393
    .line 394
    if-ne v3, v0, :cond_12

    .line 395
    .line 396
    new-instance v0, Landroid/content/Intent;

    .line 397
    .line 398
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 399
    .line 400
    const-class v3, Lcom/yunpan/appmanage/ui/ActivityTrans;

    .line 401
    .line 402
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 406
    .line 407
    .line 408
    const-string v2, "intent"

    .line 409
    .line 410
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 411
    .line 412
    .line 413
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 414
    .line 415
    invoke-static {v1, v2, v0}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 416
    .line 417
    .line 418
    goto :goto_a

    .line 419
    :cond_12
    :goto_8
    const-wide/16 v0, 0x3e8

    .line 420
    .line 421
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 422
    .line 423
    .line 424
    goto :goto_a

    .line 425
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 426
    .line 427
    .line 428
    :goto_a
    return-void

    .line 429
    :pswitch_5
    check-cast v4, La2/w0;

    .line 430
    .line 431
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    check-cast v2, Ljava/lang/String;

    .line 435
    .line 436
    invoke-static {v3, v2}, La2/w0;->Y(ILjava/lang/String;)Lfa/x;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    const/16 v1, 0x29a

    .line 441
    .line 442
    invoke-virtual {v4, v1, v0}, La2/w0;->e0(ILjava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    return-void

    .line 446
    nop

    .line 447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
