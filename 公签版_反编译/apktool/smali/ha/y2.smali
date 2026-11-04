.class public final synthetic Lha/y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View$OnCreateContextMenuListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View$OnCreateContextMenuListener;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/y2;->a:I

    iput-object p1, p0, Lha/y2;->b:Landroid/view/View$OnCreateContextMenuListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 13

    .line 1
    const v0, 0x7f0b01fe

    .line 2
    .line 3
    .line 4
    const v1, 0x7f0b01fd

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const v3, 0x7f0b0207

    .line 9
    .line 10
    .line 11
    iget-object v4, p0, Lha/y2;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x1

    .line 15
    iget v7, p0, Lha/y2;->a:I

    .line 16
    .line 17
    packed-switch v7, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v4, Lua/i9;

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v0, Lha/hb;

    .line 26
    .line 27
    iget-object v8, v4, Lda/h;->f:Landroid/app/Activity;

    .line 28
    .line 29
    iget-object v9, v4, Lda/h;->e:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v1, v4, Lua/i9;->x:Lx9/g0;

    .line 32
    .line 33
    invoke-static {v1, v6}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move-object v10, v1

    .line 38
    check-cast v10, Lx9/w3;

    .line 39
    .line 40
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ne p1, v3, :cond_0

    .line 45
    .line 46
    const/4 v11, 0x0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v11, 0x1

    .line 49
    :goto_0
    new-instance v12, Lua/r8;

    .line 50
    .line 51
    const/16 p1, 0x12

    .line 52
    .line 53
    invoke-direct {v12, v4, p1}, Lua/r8;-><init>(Lua/i9;I)V

    .line 54
    .line 55
    .line 56
    move-object v7, v0

    .line 57
    invoke-direct/range {v7 .. v12}, Lha/hb;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/w3;ILha/gb;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 61
    .line 62
    .line 63
    return v6

    .line 64
    :pswitch_0
    check-cast v4, Lua/q8;

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance v0, Lha/hb;

    .line 70
    .line 71
    iget-object v8, v4, Lda/h;->f:Landroid/app/Activity;

    .line 72
    .line 73
    iget-object v9, v4, Lda/h;->e:Landroid/content/Context;

    .line 74
    .line 75
    iget-object v1, v4, Lua/q8;->l:Lx9/g0;

    .line 76
    .line 77
    invoke-static {v1, v6}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    move-object v10, v1

    .line 82
    check-cast v10, Lx9/w3;

    .line 83
    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-ne p1, v3, :cond_1

    .line 89
    .line 90
    const/4 v11, 0x0

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    const/4 v11, 0x1

    .line 93
    :goto_1
    new-instance v12, Lua/d8;

    .line 94
    .line 95
    const/16 p1, 0xa

    .line 96
    .line 97
    invoke-direct {v12, v4, p1}, Lua/d8;-><init>(Lua/q8;I)V

    .line 98
    .line 99
    .line 100
    move-object v7, v0

    .line 101
    invoke-direct/range {v7 .. v12}, Lha/hb;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/w3;ILha/gb;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 105
    .line 106
    .line 107
    return v6

    .line 108
    :pswitch_1
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 109
    .line 110
    iget-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 111
    .line 112
    const-string v1, "\u6fc0\u6d3b\u4e2d"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    new-instance v1, Ljava/io/File;

    .line 123
    .line 124
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 125
    .line 126
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 127
    .line 128
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 129
    .line 130
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, "/"

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_2

    .line 158
    :catch_0
    const/4 v0, 0x0

    .line 159
    :goto_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    const v3, 0x7f0b0200

    .line 164
    .line 165
    .line 166
    const-string v7, "sh "

    .line 167
    .line 168
    if-ne v1, v3, :cond_5

    .line 169
    .line 170
    const-string p1, "moe.shizuku.privileged.api"

    .line 171
    .line 172
    invoke-static {p1}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    if-nez p1, :cond_2

    .line 177
    .line 178
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    const-string v1, "Shizuku"

    .line 187
    .line 188
    invoke-interface {p1, v1}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean_name(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    if-nez p1, :cond_2

    .line 193
    .line 194
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 195
    .line 196
    const-string v0, "\u672a\u5b89\u88c5shizuku"

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_5

    .line 202
    .line 203
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/File;

    .line 204
    .line 205
    new-instance v3, Ljava/io/File;

    .line 206
    .line 207
    iget-object p1, p1, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 208
    .line 209
    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    const-string v3, "lib"

    .line 221
    .line 222
    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    if-eqz p1, :cond_4

    .line 230
    .line 231
    array-length v1, p1

    .line 232
    :goto_3
    if-ge v5, v1, :cond_4

    .line 233
    .line 234
    aget-object v3, p1, v5

    .line 235
    .line 236
    new-instance v8, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v3, "/libshizuku.so"

    .line 249
    .line 250
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    new-instance v8, Ljava/io/File;

    .line 258
    .line 259
    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    if-eqz v8, :cond_3

    .line 267
    .line 268
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 269
    .line 270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 274
    .line 275
    new-instance v1, Lua/h6;

    .line 276
    .line 277
    invoke-direct {v1, v4, v6}, Lua/h6;-><init>(Lcom/yunpan/appmanage/ui/ActivityShell;I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, v3, v1}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    .line 282
    .line 283
    goto/16 :goto_5

    .line 284
    .line 285
    :cond_3
    add-int/2addr v5, v6

    .line 286
    goto :goto_3

    .line 287
    :catch_1
    :cond_4
    const-string p1, "moe.shizuku.privileged.api/start.sh"

    .line 288
    .line 289
    invoke-static {v7, v0, p1}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    goto :goto_4

    .line 294
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    const v3, 0x7f0b0201

    .line 299
    .line 300
    .line 301
    if-ne v1, v3, :cond_7

    .line 302
    .line 303
    const-string p1, "com.rosan.dhizuku"

    .line 304
    .line 305
    invoke-static {p1}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    if-nez p1, :cond_6

    .line 310
    .line 311
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 312
    .line 313
    const-string v0, "\u672a\u5b89\u88c5Dhizuku"

    .line 314
    .line 315
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_6
    const-string v0, "dpm set-device-owner com.rosan.dhizuku/.server.DhizukuDAReceiver"

    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    const v1, 0x7f0b0202

    .line 327
    .line 328
    .line 329
    if-ne p1, v1, :cond_b

    .line 330
    .line 331
    if-nez v0, :cond_8

    .line 332
    .line 333
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 334
    .line 335
    const-string v0, "\u4e0d\u5b58\u5728\u5185\u90e8\u5b58\u50a8\uff0c\u65e0\u6cd5\u6fc0\u6d3b"

    .line 336
    .line 337
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    .line 339
    .line 340
    goto :goto_5

    .line 341
    :cond_8
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    invoke-virtual {p1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    const-string v1, "\u6743\u9650\u72d7"

    .line 350
    .line 351
    invoke-interface {p1, v1}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean_name(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    if-nez p1, :cond_9

    .line 356
    .line 357
    const-string p1, "com.web1n.permissiondog"

    .line 358
    .line 359
    invoke-static {p1}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    :cond_9
    if-nez p1, :cond_a

    .line 364
    .line 365
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 366
    .line 367
    const-string v0, "\u672a\u5b89\u88c5\u6743\u9650\u72d7"

    .line 368
    .line 369
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    .line 371
    .line 372
    goto :goto_5

    .line 373
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    iget-object p1, p1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 382
    .line 383
    const-string v0, "/files/starter.sh"

    .line 384
    .line 385
    invoke-static {p1, v0, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    :cond_b
    :goto_4
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 390
    .line 391
    new-instance v1, Lua/h6;

    .line 392
    .line 393
    invoke-direct {v1, v4, v2}, Lua/h6;-><init>(Lcom/yunpan/appmanage/ui/ActivityShell;I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1, v0, v1}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V

    .line 397
    .line 398
    .line 399
    :goto_5
    return v6

    .line 400
    :pswitch_2
    sget v3, Lcom/yunpan/appmanage/ui/ActivityApps;->L:I

    .line 401
    .line 402
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityApps;

    .line 403
    .line 404
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    const v7, 0x7f0b01fc

    .line 412
    .line 413
    .line 414
    if-ne v3, v7, :cond_c

    .line 415
    .line 416
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 417
    .line 418
    invoke-virtual {p1, v5}, Lcom/yunpan/appmanage/util/w;->q(I)V

    .line 419
    .line 420
    .line 421
    goto :goto_6

    .line 422
    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    if-ne v3, v1, :cond_d

    .line 427
    .line 428
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 429
    .line 430
    invoke-virtual {p1, v6}, Lcom/yunpan/appmanage/util/w;->q(I)V

    .line 431
    .line 432
    .line 433
    goto :goto_6

    .line 434
    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 435
    .line 436
    .line 437
    move-result p1

    .line 438
    if-ne p1, v0, :cond_e

    .line 439
    .line 440
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 441
    .line 442
    invoke-virtual {p1, v2}, Lcom/yunpan/appmanage/util/w;->q(I)V

    .line 443
    .line 444
    .line 445
    :cond_e
    :goto_6
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 446
    .line 447
    invoke-virtual {p1}, Lx9/c0;->F()I

    .line 448
    .line 449
    .line 450
    move-result p1

    .line 451
    if-nez p1, :cond_f

    .line 452
    .line 453
    iget-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityApps;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 454
    .line 455
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 456
    .line 457
    .line 458
    iget-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityApps;->I:Landroid/widget/EditText;

    .line 459
    .line 460
    const/16 v1, 0x8

    .line 461
    .line 462
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    .line 464
    .line 465
    iget-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 466
    .line 467
    invoke-virtual {v0, v2}, Lx9/c0;->G(I)V

    .line 468
    .line 469
    .line 470
    :cond_f
    invoke-virtual {v4, p1}, Lcom/yunpan/appmanage/ui/ActivityApps;->x(I)V

    .line 471
    .line 472
    .line 473
    return v6

    .line 474
    :pswitch_3
    check-cast v4, Lha/j3;

    .line 475
    .line 476
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    .line 478
    .line 479
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    if-ne v2, v1, :cond_10

    .line 484
    .line 485
    new-instance p1, Lha/vb;

    .line 486
    .line 487
    iget-object v0, v4, Lha/a4;->a:Landroid/app/Activity;

    .line 488
    .line 489
    iget-object v1, v4, Lha/a4;->b:Landroid/content/Context;

    .line 490
    .line 491
    invoke-direct {p1, v0, v1}, Lha/vb;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 492
    .line 493
    .line 494
    new-instance v0, Lha/w2;

    .line 495
    .line 496
    invoke-direct {v0, v4}, Lha/w2;-><init>(Lha/j3;)V

    .line 497
    .line 498
    .line 499
    const-string v1, "\u8bf7\u9009\u62e9\u6587\u4ef6"

    .line 500
    .line 501
    invoke-virtual {p1, v1, v0}, Lha/vb;->c(Ljava/lang/String;Lea/f;)V

    .line 502
    .line 503
    .line 504
    goto :goto_7

    .line 505
    :cond_10
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 506
    .line 507
    .line 508
    move-result p1

    .line 509
    if-ne p1, v0, :cond_11

    .line 510
    .line 511
    new-instance p1, Ljava/util/ArrayList;

    .line 512
    .line 513
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .line 515
    .line 516
    new-instance v0, Lha/a3;

    .line 517
    .line 518
    invoke-direct {v0, v5, p1}, Lha/a3;-><init>(ILjava/util/ArrayList;)V

    .line 519
    .line 520
    .line 521
    new-instance v1, Lmc/c;

    .line 522
    .line 523
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 527
    .line 528
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    new-instance v1, Lha/h3;

    .line 541
    .line 542
    invoke-direct {v1, v4, v5, p1}, Lha/h3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 546
    .line 547
    .line 548
    :cond_11
    :goto_7
    return v6

    .line 549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
