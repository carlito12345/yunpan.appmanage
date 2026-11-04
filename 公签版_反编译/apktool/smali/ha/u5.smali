.class public final Lha/u5;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lha/v5;


# direct methods
.method public synthetic constructor <init>(Lha/v5;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/u5;->b:I

    iput-object p1, p0, Lha/u5;->c:Lha/v5;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget p1, p0, Lha/u5;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    const-string p1, "\u67e5\u8be2\u5c5e\u6027\u5931\u8d25"

    .line 8
    .line 9
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final E(Ljava/lang/Object;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lha/u5;->c:Lha/v5;

    .line 3
    .line 4
    iget v2, p0, Lha/u5;->b:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lcom/yunpan/appmanage/db/ApkFileBean;

    .line 10
    .line 11
    iget-object v2, v1, Lha/a4;->b:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v5, "file://"

    .line 20
    .line 21
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 25
    .line 26
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 27
    .line 28
    iget-object v6, v5, Lcom/yunpan/appmanage/util/k;->z:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v6, "apk_ico_cache/"

    .line 34
    .line 35
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v6, p1, Lcom/yunpan/appmanage/db/ApkFileBean;->packageName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v6, "_"

    .line 44
    .line 45
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v6, p1, Lcom/yunpan/appmanage/db/ApkFileBean;->lastModified:J

    .line 49
    .line 50
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    new-instance v4, Lo5/x;

    .line 62
    .line 63
    const/16 v6, 0x8

    .line 64
    .line 65
    invoke-direct {v4, v6}, Lo5/x;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v4}, Lw5/e;->z(Lo5/x;)Lw5/e;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget v4, v5, Lcom/yunpan/appmanage/util/k;->R:I

    .line 77
    .line 78
    invoke-virtual {v3, v4, v4}, Lw5/a;->o(II)Lw5/a;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Lcom/bumptech/glide/m;

    .line 83
    .line 84
    iget-object v4, v1, Lha/v5;->h:Landroid/widget/ImageView;

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 87
    .line 88
    .line 89
    iget-object v3, v1, Lha/v5;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 90
    .line 91
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    iget-wide v3, p1, Lcom/yunpan/appmanage/db/ApkFileBean;->versionCode:J

    .line 95
    .line 96
    iget v6, p1, Lcom/yunpan/appmanage/db/ApkFileBean;->minSdk:I

    .line 97
    .line 98
    new-instance v7, Lx9/k5;

    .line 99
    .line 100
    const-string v8, "\u540d\u79f0"

    .line 101
    .line 102
    iget-object v9, p1, Lcom/yunpan/appmanage/db/ApkFileBean;->apkName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-direct {v7, v8, v9, v0}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    iget-object v8, v1, Lha/v5;->k:Lx9/h;

    .line 108
    .line 109
    invoke-virtual {v8, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    new-instance v7, Lx9/k5;

    .line 113
    .line 114
    const-string v9, "\u5305\u540d"

    .line 115
    .line 116
    iget-object v10, p1, Lcom/yunpan/appmanage/db/ApkFileBean;->packageName:Ljava/lang/String;

    .line 117
    .line 118
    invoke-direct {v7, v9, v10, v0}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v8, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    new-instance v7, Lx9/k5;

    .line 125
    .line 126
    const-string v9, "\u4ee3\u53f7"

    .line 127
    .line 128
    iget-object v10, p1, Lcom/yunpan/appmanage/db/ApkFileBean;->versionName:Ljava/lang/String;

    .line 129
    .line 130
    invoke-direct {v7, v9, v10, v0}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v8, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    new-instance v7, Lx9/k5;

    .line 137
    .line 138
    new-instance v9, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v10, ""

    .line 147
    .line 148
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    const-string v10, "\u7248\u672c"

    .line 156
    .line 157
    invoke-direct {v7, v10, v9, v0}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    if-lez v6, :cond_0

    .line 164
    .line 165
    new-instance v7, Lx9/k5;

    .line 166
    .line 167
    new-instance v9, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v10, "android "

    .line 170
    .line 171
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v6}, Lif/a;->w0(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v10, " \u4ee5\u4e0a"

    .line 182
    .line 183
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    const-string v10, "\u9002\u914d"

    .line 191
    .line 192
    invoke-direct {v7, v10, v9, v0}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v8, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_0
    iget-object v7, v1, Lha/v5;->i:Landroid/widget/TextView;

    .line 199
    .line 200
    const-string v8, "\u672a\u5b89\u88c5"

    .line 201
    .line 202
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    if-lez v6, :cond_1

    .line 206
    .line 207
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 208
    .line 209
    if-le v6, v7, :cond_1

    .line 210
    .line 211
    iget-object v2, v1, Lha/v5;->i:Landroid/widget/TextView;

    .line 212
    .line 213
    const-string v3, "\u4e0d\u517c\u5bb9"

    .line 214
    .line 215
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    iget-object v2, v1, Lha/v5;->i:Landroid/widget/TextView;

    .line 219
    .line 220
    const/high16 v3, -0x10000

    .line 221
    .line 222
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_2

    .line 226
    .line 227
    :cond_1
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-virtual {v6}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    iget-object v7, p1, Lcom/yunpan/appmanage/db/ApkFileBean;->packageName:Ljava/lang/String;

    .line 236
    .line 237
    invoke-interface {v6, v7}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    if-nez v6, :cond_2

    .line 242
    .line 243
    iget-object v7, p1, Lcom/yunpan/appmanage/db/ApkFileBean;->packageName:Ljava/lang/String;

    .line 244
    .line 245
    iget-object v8, v5, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    if-eqz v7, :cond_2

    .line 252
    .line 253
    :try_start_0
    new-instance v7, Lcom/yunpan/appmanage/db/AppBean;

    .line 254
    .line 255
    iget-object v8, v5, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 256
    .line 257
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v8, v5, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-direct {v7, v5}, Lcom/yunpan/appmanage/db/AppBean;-><init>(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .line 265
    .line 266
    move-object v6, v7

    .line 267
    goto :goto_0

    .line 268
    :catch_0
    nop

    .line 269
    :cond_2
    :goto_0
    if-eqz v6, :cond_7

    .line 270
    .line 271
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    iget-object v5, p1, Lcom/yunpan/appmanage/db/ApkFileBean;->packageName:Ljava/lang/String;

    .line 276
    .line 277
    const/16 v7, 0x2000

    .line 278
    .line 279
    invoke-virtual {v2, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 284
    .line 285
    int-to-long v7, v2

    .line 286
    cmp-long v2, v3, v7

    .line 287
    .line 288
    if-nez v2, :cond_5

    .line 289
    .line 290
    new-instance v2, Ljava/io/File;

    .line 291
    .line 292
    iget-object v3, v6, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 293
    .line 294
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->p(Ljava/io/File;)J

    .line 298
    .line 299
    .line 300
    move-result-wide v2

    .line 301
    const-wide/16 v4, 0x0

    .line 302
    .line 303
    cmp-long v7, v2, v4

    .line 304
    .line 305
    if-eqz v7, :cond_4

    .line 306
    .line 307
    new-instance v2, Ljava/io/File;

    .line 308
    .line 309
    iget-object v3, v1, Lha/v5;->p:Lx9/w3;

    .line 310
    .line 311
    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 312
    .line 313
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->p(Ljava/io/File;)J

    .line 317
    .line 318
    .line 319
    move-result-wide v2

    .line 320
    new-instance v4, Ljava/io/File;

    .line 321
    .line 322
    iget-object v5, v6, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 323
    .line 324
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-static {v4}, Lcom/yunpan/appmanage/util/a0;->p(Ljava/io/File;)J

    .line 328
    .line 329
    .line 330
    move-result-wide v4

    .line 331
    cmp-long v7, v2, v4

    .line 332
    .line 333
    if-nez v7, :cond_3

    .line 334
    .line 335
    goto :goto_1

    .line 336
    :cond_3
    iget-object v2, v1, Lha/v5;->i:Landroid/widget/TextView;

    .line 337
    .line 338
    const-string v3, "\u4e0d\u540c\u7248\u672c"

    .line 339
    .line 340
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    .line 342
    .line 343
    goto :goto_2

    .line 344
    :catch_1
    nop

    .line 345
    goto :goto_2

    .line 346
    :cond_4
    :goto_1
    iget-object v2, v1, Lha/v5;->i:Landroid/widget/TextView;

    .line 347
    .line 348
    const-string v3, "\u5df2\u5b89\u88c5"

    .line 349
    .line 350
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    .line 352
    .line 353
    iget-object v2, v1, Lha/v5;->i:Landroid/widget/TextView;

    .line 354
    .line 355
    const v3, -0xff0100

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    .line 360
    .line 361
    iget-object v2, v1, Lha/v5;->m:Lx9/t1;

    .line 362
    .line 363
    new-instance v3, Lx9/l3;

    .line 364
    .line 365
    const-string v4, "\u91cd\u88c5"

    .line 366
    .line 367
    const v5, 0x7f080281

    .line 368
    .line 369
    .line 370
    invoke-direct {v3, v5, v4}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2, v0, v3}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    iput-object v6, v1, Lha/v5;->r:Lcom/yunpan/appmanage/db/AppBean;

    .line 377
    .line 378
    goto :goto_2

    .line 379
    :cond_5
    cmp-long v2, v7, v3

    .line 380
    .line 381
    if-gez v2, :cond_6

    .line 382
    .line 383
    iget-object v2, v1, Lha/v5;->i:Landroid/widget/TextView;

    .line 384
    .line 385
    const-string v3, "\u65b0\u7248\u672c"

    .line 386
    .line 387
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    .line 389
    .line 390
    iget-object v2, v1, Lha/v5;->i:Landroid/widget/TextView;

    .line 391
    .line 392
    const/16 v3, -0x100

    .line 393
    .line 394
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 395
    .line 396
    .line 397
    goto :goto_2

    .line 398
    :cond_6
    iget-object v2, v1, Lha/v5;->i:Landroid/widget/TextView;

    .line 399
    .line 400
    const-string v3, "\u65e7\u7248\u672c"

    .line 401
    .line 402
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    .line 404
    .line 405
    iget-object v2, v1, Lha/v5;->i:Landroid/widget/TextView;

    .line 406
    .line 407
    const v3, -0xff0001

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 411
    .line 412
    .line 413
    :cond_7
    :goto_2
    iget-object v2, p1, Lcom/yunpan/appmanage/db/ApkFileBean;->abi:Ljava/lang/String;

    .line 414
    .line 415
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    if-eqz v3, :cond_a

    .line 420
    .line 421
    iget-object v3, v1, Lha/v5;->p:Lx9/w3;

    .line 422
    .line 423
    iget-object v3, v3, Lx9/w3;->a:Ljava/lang/String;

    .line 424
    .line 425
    const-string v4, ".gj"

    .line 426
    .line 427
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    if-eqz v3, :cond_8

    .line 432
    .line 433
    goto :goto_3

    .line 434
    :cond_8
    iget-object v2, v1, Lha/v5;->p:Lx9/w3;

    .line 435
    .line 436
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 437
    .line 438
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    const-string v3, ".apk"

    .line 443
    .line 444
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 445
    .line 446
    .line 447
    move-result v3

    .line 448
    if-nez v3, :cond_9

    .line 449
    .line 450
    const-string v3, ".apk.1"

    .line 451
    .line 452
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    if-eqz v2, :cond_b

    .line 457
    .line 458
    :cond_9
    iget-object v2, v1, Lha/v5;->p:Lx9/w3;

    .line 459
    .line 460
    iget-wide v2, v2, Lx9/w3;->d:J

    .line 461
    .line 462
    const-wide/32 v4, 0x12c00000

    .line 463
    .line 464
    .line 465
    cmp-long v6, v2, v4

    .line 466
    .line 467
    if-gez v6, :cond_b

    .line 468
    .line 469
    new-instance v2, Ljava/io/File;

    .line 470
    .line 471
    iget-object v3, v1, Lha/v5;->p:Lx9/w3;

    .line 472
    .line 473
    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 474
    .line 475
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    new-instance v3, Lma/a;

    .line 479
    .line 480
    const/4 v4, 0x1

    .line 481
    invoke-direct {v3, v2, v4}, Lma/a;-><init>(Ljava/io/File;I)V

    .line 482
    .line 483
    .line 484
    new-instance v2, Lmc/c;

    .line 485
    .line 486
    invoke-direct {v2, v0, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 490
    .line 491
    invoke-virtual {v2, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    invoke-virtual {v0, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    new-instance v2, Lha/h3;

    .line 504
    .line 505
    const/4 v3, 0x2

    .line 506
    invoke-direct {v2, v1, v3, p1}, Lha/h3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v2}, Lec/b;->b(Lec/e;)V

    .line 510
    .line 511
    .line 512
    goto :goto_4

    .line 513
    :cond_a
    :goto_3
    invoke-virtual {v1, v2}, Lha/v5;->a(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    :cond_b
    :goto_4
    return-void

    .line 517
    :pswitch_0
    new-instance v0, Lha/q5;

    .line 518
    .line 519
    iget-object v2, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 520
    .line 521
    iget-object v3, v1, Lha/a4;->b:Landroid/content/Context;

    .line 522
    .line 523
    iget-object v4, v1, Lha/v5;->p:Lx9/w3;

    .line 524
    .line 525
    check-cast p1, Lcom/yunpan/appmanage/bean/FileAttributeBean;

    .line 526
    .line 527
    invoke-direct {v0, v2, v3, v4, p1}, Lha/q5;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/w3;Lcom/yunpan/appmanage/bean/FileAttributeBean;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 534
    .line 535
    .line 536
    return-void

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
