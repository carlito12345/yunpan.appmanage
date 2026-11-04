.class public final synthetic Lua/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityHome;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityHome;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/b2;->a:I

    iput-object p1, p0, Lua/b2;->b:Lcom/yunpan/appmanage/ui/ActivityHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget v2, Lcom/yunpan/appmanage/ui/ActivityHome;->O:I

    .line 4
    .line 5
    iget-object v2, p0, Lua/b2;->b:Lcom/yunpan/appmanage/ui/ActivityHome;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v3, "/openfilecj.apk"

    .line 11
    .line 12
    invoke-static {}, Lcom/yunpan/appmanage/ui/ActivityHome;->G()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-interface {v4}, Lcom/yunpan/appmanage/db/AppDao;->deleteAll()V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x3

    .line 27
    const/16 v5, 0x18

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v8, 0x2000

    .line 33
    .line 34
    if-lt v7, v5, :cond_0

    .line 35
    .line 36
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 37
    .line 38
    iget-object v7, v7, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 39
    .line 40
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    nop

    .line 46
    move-object v7, v6

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 49
    .line 50
    iget-object v7, v7, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 51
    .line 52
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-ge v8, v4, :cond_1

    .line 61
    .line 62
    sget-object v8, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 63
    .line 64
    iget-object v8, v8, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 65
    .line 66
    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    goto :goto_1

    .line 71
    :catch_1
    nop

    .line 72
    :cond_1
    :goto_1
    iget-object v8, v2, Lcom/yunpan/appmanage/ui/ActivityHome;->M:Lcom/yunpan/appmanage/carsdk/u;

    .line 73
    .line 74
    const/16 v9, 0x7c

    .line 75
    .line 76
    if-nez v7, :cond_2

    .line 77
    .line 78
    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 79
    .line 80
    .line 81
    goto/16 :goto_f

    .line 82
    .line 83
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    if-eqz v11, :cond_5

    .line 92
    .line 93
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 98
    .line 99
    :try_start_2
    new-instance v12, Lcom/yunpan/appmanage/db/AppBean;

    .line 100
    .line 101
    invoke-direct {v12, v11}, Lcom/yunpan/appmanage/db/AppBean;-><init>(Landroid/content/pm/ApplicationInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :catch_2
    move-exception v11

    .line 106
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    move-object v12, v6

    .line 110
    :goto_3
    if-eqz v12, :cond_3

    .line 111
    .line 112
    iget-object v11, v12, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 113
    .line 114
    sget-object v13, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 115
    .line 116
    iget-object v14, v13, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    if-eqz v11, :cond_4

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    invoke-virtual {v11}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    invoke-interface {v11, v12}, Lcom/yunpan/appmanage/db/AppDao;->insert(Lcom/yunpan/appmanage/db/AppBean;)J

    .line 134
    .line 135
    .line 136
    iget-object v11, v13, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 137
    .line 138
    if-nez v11, :cond_3

    .line 139
    .line 140
    iget v11, v12, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 141
    .line 142
    const v14, 0x186a0

    .line 143
    .line 144
    .line 145
    rem-int/2addr v11, v14

    .line 146
    const/16 v14, 0x3e8

    .line 147
    .line 148
    if-ne v11, v14, :cond_3

    .line 149
    .line 150
    iget-boolean v11, v12, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 151
    .line 152
    if-eqz v11, :cond_3

    .line 153
    .line 154
    iget-object v11, v12, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v11}, Ld/b;->v(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    iput-object v11, v13, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :catch_3
    move-exception v11

    .line 164
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_5
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 169
    .line 170
    iput-boolean v1, v6, Lcom/yunpan/appmanage/util/k;->B:Z

    .line 171
    .line 172
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-ge v7, v4, :cond_6

    .line 177
    .line 178
    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    .line 180
    .line 181
    goto/16 :goto_f

    .line 182
    .line 183
    :cond_6
    const/16 v4, 0x7b

    .line 184
    .line 185
    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 186
    .line 187
    .line 188
    iget-boolean v4, v6, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 189
    .line 190
    const-string v6, "addSuppressed"

    .line 191
    .line 192
    const-class v7, Ljava/lang/Throwable;

    .line 193
    .line 194
    if-eqz v4, :cond_9

    .line 195
    .line 196
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 197
    .line 198
    if-lt v4, v5, :cond_9

    .line 199
    .line 200
    const-string v4, "com.gj.openfile"

    .line 201
    .line 202
    invoke-static {v4}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    if-nez v4, :cond_9

    .line 207
    .line 208
    :try_start_4
    iget-object v4, v2, Lda/g;->A:Lda/g;

    .line 209
    .line 210
    invoke-virtual {v4}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    const v5, 0x7f120018

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 218
    .line 219
    .line 220
    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 221
    :try_start_5
    new-instance v5, Ljava/io/FileOutputStream;

    .line 222
    .line 223
    new-instance v9, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    iget-object v10, v2, Lda/g;->A:Lda/g;

    .line 229
    .line 230
    invoke-virtual {v10}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 245
    .line 246
    .line 247
    const/high16 v9, 0x100000

    .line 248
    .line 249
    :try_start_6
    new-array v9, v9, [B

    .line 250
    .line 251
    :goto_4
    invoke-virtual {v4, v9}, Ljava/io/InputStream;->read([B)I

    .line 252
    .line 253
    .line 254
    move-result v10

    .line 255
    const/4 v11, -0x1

    .line 256
    if-eq v10, v11, :cond_7

    .line 257
    .line 258
    invoke-virtual {v5, v9, v0, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 259
    .line 260
    .line 261
    goto :goto_4

    .line 262
    :catchall_0
    move-exception v3

    .line 263
    goto :goto_5

    .line 264
    :cond_7
    sget-object v9, Lma/h;->a:Lma/i;

    .line 265
    .line 266
    new-instance v10, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    iget-object v11, v2, Lda/g;->A:Lda/g;

    .line 272
    .line 273
    invoke-virtual {v11}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 274
    .line 275
    .line 276
    move-result-object v11

    .line 277
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-virtual {v9, v3}, Lma/i;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 288
    .line 289
    .line 290
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 291
    .line 292
    .line 293
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 294
    .line 295
    .line 296
    goto :goto_9

    .line 297
    :catchall_1
    move-exception v3

    .line 298
    goto :goto_7

    .line 299
    :goto_5
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 300
    .line 301
    .line 302
    goto :goto_6

    .line 303
    :catchall_2
    move-exception v5

    .line 304
    :try_start_a
    new-array v9, v1, [Ljava/lang/Class;

    .line 305
    .line 306
    aput-object v7, v9, v0

    .line 307
    .line 308
    invoke-virtual {v7, v6, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 309
    .line 310
    .line 311
    move-result-object v9

    .line 312
    new-array v10, v1, [Ljava/lang/Object;

    .line 313
    .line 314
    aput-object v5, v10, v0

    .line 315
    .line 316
    invoke-virtual {v9, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 317
    .line 318
    .line 319
    :catch_4
    :goto_6
    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 320
    :goto_7
    if-eqz v4, :cond_8

    .line 321
    .line 322
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 323
    .line 324
    .line 325
    goto :goto_8

    .line 326
    :catchall_3
    move-exception v4

    .line 327
    :try_start_d
    new-array v5, v1, [Ljava/lang/Class;

    .line 328
    .line 329
    aput-object v7, v5, v0

    .line 330
    .line 331
    invoke-virtual {v7, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    new-array v9, v1, [Ljava/lang/Object;

    .line 336
    .line 337
    aput-object v4, v9, v0

    .line 338
    .line 339
    invoke-virtual {v5, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 340
    .line 341
    .line 342
    :catch_5
    :cond_8
    :goto_8
    :try_start_e
    throw v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 343
    :catch_6
    :cond_9
    :goto_9
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 344
    .line 345
    iget-object v4, v3, Lcom/yunpan/appmanage/util/w;->X:Ljava/lang/String;

    .line 346
    .line 347
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    if-nez v4, :cond_a

    .line 352
    .line 353
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    invoke-virtual {v4}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    iget-object v5, v3, Lcom/yunpan/appmanage/util/w;->X:Ljava/lang/String;

    .line 362
    .line 363
    invoke-interface {v4, v5}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    if-nez v4, :cond_a

    .line 368
    .line 369
    const-string v4, ""

    .line 370
    .line 371
    iput-object v4, v3, Lcom/yunpan/appmanage/util/w;->X:Ljava/lang/String;

    .line 372
    .line 373
    const-string v5, "InstallSource"

    .line 374
    .line 375
    :try_start_f
    iget-object v9, v3, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 376
    .line 377
    invoke-virtual {v9, v5, v4}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 378
    .line 379
    .line 380
    :catch_7
    invoke-virtual {v3}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 381
    .line 382
    .line 383
    :cond_a
    new-instance v4, Ljava/io/File;

    .line 384
    .line 385
    new-instance v5, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .line 389
    .line 390
    iget-object v3, v3, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 396
    .line 397
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 398
    .line 399
    const-string v9, ".png"

    .line 400
    .line 401
    invoke-static {v3, v9, v5}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    if-nez v3, :cond_b

    .line 413
    .line 414
    :try_start_10
    invoke-virtual {v2}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    const v3, 0x7f08008f

    .line 419
    .line 420
    .line 421
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 422
    .line 423
    .line 424
    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    .line 425
    :try_start_11
    new-instance v3, Ljava/io/FileOutputStream;

    .line 426
    .line 427
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 428
    .line 429
    .line 430
    :try_start_12
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 431
    .line 432
    const/16 v5, 0x64

    .line 433
    .line 434
    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 435
    .line 436
    .line 437
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 438
    .line 439
    .line 440
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 441
    .line 442
    .line 443
    :try_start_14
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    .line 444
    .line 445
    .line 446
    goto :goto_c

    .line 447
    :catchall_4
    move-exception v3

    .line 448
    goto :goto_b

    .line 449
    :catchall_5
    move-exception v4

    .line 450
    :try_start_15
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 451
    .line 452
    .line 453
    goto :goto_a

    .line 454
    :catchall_6
    move-exception v3

    .line 455
    :try_start_16
    new-array v5, v1, [Ljava/lang/Class;

    .line 456
    .line 457
    aput-object v7, v5, v0

    .line 458
    .line 459
    invoke-virtual {v7, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    new-array v6, v1, [Ljava/lang/Object;

    .line 464
    .line 465
    aput-object v3, v6, v0

    .line 466
    .line 467
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 468
    .line 469
    .line 470
    :catch_8
    :goto_a
    :try_start_17
    throw v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 471
    :goto_b
    :try_start_18
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 472
    .line 473
    .line 474
    throw v3
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9

    .line 475
    :catch_9
    :cond_b
    :goto_c
    new-instance v2, Ljava/io/File;

    .line 476
    .line 477
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 478
    .line 479
    iget-object v3, v3, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 480
    .line 481
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    array-length v3, v2

    .line 489
    const/4 v4, 0x0

    .line 490
    :goto_d
    if-ge v4, v3, :cond_f

    .line 491
    .line 492
    aget-object v5, v2, v4

    .line 493
    .line 494
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v6

    .line 498
    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 499
    .line 500
    .line 501
    move-result v7

    .line 502
    if-eqz v7, :cond_d

    .line 503
    .line 504
    const/4 v7, 0x4

    .line 505
    invoke-static {v7, v0, v6}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v6

    .line 509
    invoke-static {v6}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 510
    .line 511
    .line 512
    move-result-object v7

    .line 513
    if-nez v7, :cond_e

    .line 514
    .line 515
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 516
    .line 517
    iget-object v7, v7, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 518
    .line 519
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v6

    .line 523
    if-eqz v6, :cond_c

    .line 524
    .line 525
    goto :goto_e

    .line 526
    :cond_c
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 527
    .line 528
    .line 529
    goto :goto_e

    .line 530
    :cond_d
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 531
    .line 532
    .line 533
    :cond_e
    :goto_e
    add-int/2addr v4, v1

    .line 534
    goto :goto_d

    .line 535
    :cond_f
    const/16 v0, 0x7d

    .line 536
    .line 537
    const-wide/16 v1, 0x1a0a

    .line 538
    .line 539
    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 540
    .line 541
    .line 542
    :goto_f
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lua/b2;->b:Lcom/yunpan/appmanage/ui/ActivityHome;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    iget v0, v1, Lua/b2;->a:I

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Lcom/yunpan/appmanage/ui/ActivityHome;->x(Lcom/yunpan/appmanage/ui/ActivityHome;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lua/b2;->a()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityHome;->O:I

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v5, "bdVideo/"

    .line 26
    .line 27
    const-string v6, "apk_ico_cache/"

    .line 28
    .line 29
    const-string v7, "enabled_accessibility_services"

    .line 30
    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v8, 0x15

    .line 34
    .line 35
    if-lt v0, v8, :cond_0

    .line 36
    .line 37
    :try_start_0
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 38
    .line 39
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 40
    .line 41
    new-instance v8, Ljava/io/File;

    .line 42
    .line 43
    iget-object v9, v0, Lcom/yunpan/appmanage/util/k;->e:Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v8}, Lcom/yunpan/appmanage/util/h0;->a(Ljava/io/File;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    iput-object v8, v0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :cond_0
    :goto_0
    sget-object v0, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 60
    .line 61
    invoke-static {}, Lv9/c;->a()Lv9/i;

    .line 62
    .line 63
    .line 64
    sget-object v0, Lwa/v;->a:Lcom/yunpan/appmanage/util/b0;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/b0;->b()V

    .line 67
    .line 68
    .line 69
    sget-object v8, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 70
    .line 71
    iget-boolean v8, v8, Lcom/yunpan/appmanage/util/w;->R:Z

    .line 72
    .line 73
    const-string v9, ""

    .line 74
    .line 75
    const-string v10, "/"

    .line 76
    .line 77
    if-eqz v8, :cond_a

    .line 78
    .line 79
    iget-object v8, v0, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v8, Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-nez v8, :cond_a

    .line 88
    .line 89
    :try_start_1
    iget-object v8, v2, Lda/g;->A:Lda/g;

    .line 90
    .line 91
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-static {v8, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    if-nez v8, :cond_1

    .line 100
    .line 101
    move-object v8, v9

    .line 102
    :cond_1
    new-instance v11, Ljava/util/HashSet;

    .line 103
    .line 104
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 111
    const-string v13, ":"

    .line 112
    .line 113
    if-nez v12, :cond_3

    .line 114
    .line 115
    :try_start_2
    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    array-length v12, v8

    .line 120
    const/4 v14, 0x0

    .line 121
    :goto_1
    if-ge v14, v12, :cond_3

    .line 122
    .line 123
    aget-object v15, v8, v14

    .line 124
    .line 125
    invoke-virtual {v15, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 129
    if-nez v16, :cond_2

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_2
    :try_start_3
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v15

    .line 136
    invoke-static {v15}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 137
    .line 138
    .line 139
    move-result-object v15

    .line 140
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v15

    .line 144
    invoke-virtual {v11, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 145
    .line 146
    .line 147
    :catch_1
    :goto_2
    add-int/2addr v14, v4

    .line 148
    goto :goto_1

    .line 149
    :cond_3
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    iget-object v0, v0, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v0, Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    array-length v12, v0

    .line 163
    const/4 v14, 0x0

    .line 164
    :goto_3
    if-ge v14, v12, :cond_7

    .line 165
    .line 166
    aget-object v15, v0, v14

    .line 167
    .line 168
    invoke-virtual {v15, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 172
    if-nez v16, :cond_4

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_4
    :try_start_5
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v15

    .line 179
    invoke-static {v15}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 180
    .line 181
    .line 182
    move-result-object v15

    .line 183
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v15

    .line 187
    invoke-virtual {v11, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v16

    .line 191
    if-nez v16, :cond_6

    .line 192
    .line 193
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    .line 194
    .line 195
    .line 196
    move-result v16

    .line 197
    if-nez v16, :cond_5

    .line 198
    .line 199
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_5
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 207
    .line 208
    .line 209
    :catch_2
    :cond_6
    :goto_4
    add-int/2addr v14, v4

    .line 210
    goto :goto_3

    .line 211
    :cond_7
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-lez v0, :cond_a

    .line 216
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result v12

    .line 230
    if-eqz v12, :cond_8

    .line 231
    .line 232
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    check-cast v12, Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_8
    sget-object v11, Lwa/t;->a:Lwa/u;

    .line 246
    .line 247
    iget-boolean v11, v11, Lwa/u;->t:Z

    .line 248
    .line 249
    if-eqz v11, :cond_9

    .line 250
    .line 251
    new-instance v11, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    const-string v12, "\u65e0\u969c\u788d\u670d\u52a1\u914d\u7f6e\u4e0d\u4e00\u81f4\uff0c\u8ffd\u52a0\n\u8fd8\u9700\u5f00\u542f\uff1a"

    .line 257
    .line 258
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v12, "\n\u5f53\u524d\u5f00\u542f\uff1a"

    .line 265
    .line 266
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v11

    .line 276
    invoke-static {v11}, Lwa/w;->c(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    :cond_9
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    iget-object v8, v2, Lda/g;->A:Lda/g;

    .line 283
    .line 284
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-static {v8, v7, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_a

    .line 297
    .line 298
    iget-object v0, v2, Lda/g;->A:Lda/g;

    .line 299
    .line 300
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    const-string v7, "accessibility_enabled"

    .line 305
    .line 306
    invoke-static {v0, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 307
    .line 308
    .line 309
    :catch_3
    :cond_a
    sget-object v0, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 310
    .line 311
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/d0;->c()Ljava/util/ArrayList;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    const/4 v7, 0x0

    .line 316
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 317
    .line 318
    .line 319
    move-result v8

    .line 320
    if-ge v7, v8, :cond_c

    .line 321
    .line 322
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    check-cast v8, Lx9/n5;

    .line 327
    .line 328
    iget-object v8, v8, Lx9/n5;->g:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v8

    .line 334
    if-eqz v8, :cond_b

    .line 335
    .line 336
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    check-cast v8, Lx9/n5;

    .line 341
    .line 342
    new-instance v11, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v12

    .line 351
    check-cast v12, Lx9/n5;

    .line 352
    .line 353
    invoke-virtual {v12}, Lx9/n5;->b()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v12

    .line 357
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 361
    .line 362
    .line 363
    move-result-wide v12

    .line 364
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v11

    .line 371
    invoke-static {v11}, Lif/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v11

    .line 375
    iput-object v11, v8, Lx9/n5;->g:Ljava/lang/String;

    .line 376
    .line 377
    sget-object v8, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 378
    .line 379
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v11

    .line 383
    check-cast v11, Lx9/n5;

    .line 384
    .line 385
    invoke-virtual {v8, v7, v11}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 386
    .line 387
    .line 388
    :cond_b
    add-int/2addr v7, v4

    .line 389
    goto :goto_6

    .line 390
    :cond_c
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 391
    .line 392
    iget-object v7, v0, Lcom/yunpan/appmanage/util/w;->U:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 395
    .line 396
    .line 397
    move-result v7

    .line 398
    if-nez v7, :cond_d

    .line 399
    .line 400
    invoke-static {}, Lcom/yunpan/appmanage/ui/ActivityNezha;->y()Z

    .line 401
    .line 402
    .line 403
    :cond_d
    iget v7, v0, Lcom/yunpan/appmanage/util/w;->V:I

    .line 404
    .line 405
    const/4 v8, -0x1

    .line 406
    if-ne v7, v8, :cond_e

    .line 407
    .line 408
    :try_start_7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    const-string v8, "com.ecarx.appstore"

    .line 413
    .line 414
    const/16 v11, 0x2200

    .line 415
    .line 416
    invoke-virtual {v7, v8, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0, v4}, Lcom/yunpan/appmanage/util/w;->z(I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v4}, Lcom/yunpan/appmanage/util/w;->s(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 423
    .line 424
    .line 425
    goto :goto_7

    .line 426
    :catch_4
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 427
    .line 428
    invoke-virtual {v0, v3}, Lcom/yunpan/appmanage/util/w;->z(I)V

    .line 429
    .line 430
    .line 431
    :cond_e
    :goto_7
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 432
    .line 433
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v7

    .line 437
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 438
    .line 439
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    const/4 v8, 0x0

    .line 447
    const-string v11, "/data/"

    .line 448
    .line 449
    if-nez v0, :cond_14

    .line 450
    .line 451
    :try_start_8
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 452
    .line 453
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 454
    .line 455
    iget-object v12, v2, Lda/g;->A:Lda/g;

    .line 456
    .line 457
    invoke-virtual {v12}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 458
    .line 459
    .line 460
    move-result-object v12

    .line 461
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v12

    .line 465
    iput-object v12, v0, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 466
    .line 467
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 468
    .line 469
    .line 470
    move-result v12

    .line 471
    if-eqz v12, :cond_f

    .line 472
    .line 473
    iput-object v9, v0, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 474
    .line 475
    :catch_5
    :cond_f
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 476
    .line 477
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 478
    .line 479
    iget-object v12, v0, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 480
    .line 481
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 482
    .line 483
    .line 484
    move-result v12

    .line 485
    const-string v13, "/Android/data/"

    .line 486
    .line 487
    if-eqz v12, :cond_10

    .line 488
    .line 489
    invoke-static {v7, v13}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    move-result-object v12

    .line 493
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v14

    .line 497
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    const-string v14, "/cache"

    .line 501
    .line 502
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v12

    .line 509
    iput-object v12, v0, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 510
    .line 511
    :cond_10
    :try_start_9
    iget-object v12, v2, Lda/g;->A:Lda/g;

    .line 512
    .line 513
    invoke-virtual {v12}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    .line 514
    .line 515
    .line 516
    move-result-object v12

    .line 517
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v12

    .line 521
    iput-object v12, v0, Lcom/yunpan/appmanage/util/k;->t:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 522
    .line 523
    :catch_6
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 524
    .line 525
    iget-object v12, v0, Lcom/yunpan/appmanage/util/k;->t:Ljava/lang/String;

    .line 526
    .line 527
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 528
    .line 529
    .line 530
    move-result v12

    .line 531
    if-eqz v12, :cond_11

    .line 532
    .line 533
    const-string v12, "/Android/obb/"

    .line 534
    .line 535
    invoke-static {v7, v12}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    move-result-object v12

    .line 539
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v14

    .line 543
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v12

    .line 550
    iput-object v12, v0, Lcom/yunpan/appmanage/util/k;->t:Ljava/lang/String;

    .line 551
    .line 552
    :cond_11
    :try_start_a
    iget-object v12, v2, Lda/g;->A:Lda/g;

    .line 553
    .line 554
    invoke-virtual {v12, v8}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 555
    .line 556
    .line 557
    move-result-object v12

    .line 558
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v12

    .line 562
    iput-object v12, v0, Lcom/yunpan/appmanage/util/k;->r:Ljava/lang/String;

    .line 563
    .line 564
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 565
    .line 566
    .line 567
    move-result v12

    .line 568
    if-eqz v12, :cond_12

    .line 569
    .line 570
    iput-object v9, v0, Lcom/yunpan/appmanage/util/k;->r:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 571
    .line 572
    :catch_7
    :cond_12
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 573
    .line 574
    iget-object v12, v0, Lcom/yunpan/appmanage/util/k;->r:Ljava/lang/String;

    .line 575
    .line 576
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 577
    .line 578
    .line 579
    move-result v12

    .line 580
    if-eqz v12, :cond_13

    .line 581
    .line 582
    invoke-static {v7, v13}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    move-result-object v12

    .line 586
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v13

    .line 590
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    const-string v13, "/files"

    .line 594
    .line 595
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v12

    .line 602
    iput-object v12, v0, Lcom/yunpan/appmanage/util/k;->r:Ljava/lang/String;

    .line 603
    .line 604
    :cond_13
    new-instance v12, Ljava/io/File;

    .line 605
    .line 606
    iget-object v13, v0, Lcom/yunpan/appmanage/util/k;->r:Ljava/lang/String;

    .line 607
    .line 608
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 612
    .line 613
    .line 614
    move-result-object v12

    .line 615
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 616
    .line 617
    .line 618
    move-result-object v12

    .line 619
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v12

    .line 623
    invoke-static {v12}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 624
    .line 625
    .line 626
    move-result v13

    .line 627
    if-nez v13, :cond_14

    .line 628
    .line 629
    const-string v13, "/data"

    .line 630
    .line 631
    const-string v14, "/\u200bdata"

    .line 632
    .line 633
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v12

    .line 637
    invoke-static {v12}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 638
    .line 639
    .line 640
    move-result v12

    .line 641
    if-eqz v12, :cond_14

    .line 642
    .line 643
    iget-object v12, v0, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 644
    .line 645
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v12

    .line 649
    iput-object v12, v0, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 650
    .line 651
    iget-object v12, v0, Lcom/yunpan/appmanage/util/k;->t:Ljava/lang/String;

    .line 652
    .line 653
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v12

    .line 657
    iput-object v12, v0, Lcom/yunpan/appmanage/util/k;->t:Ljava/lang/String;

    .line 658
    .line 659
    iget-object v12, v0, Lcom/yunpan/appmanage/util/k;->r:Ljava/lang/String;

    .line 660
    .line 661
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v12

    .line 665
    iput-object v12, v0, Lcom/yunpan/appmanage/util/k;->r:Ljava/lang/String;

    .line 666
    .line 667
    :cond_14
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 668
    .line 669
    .line 670
    move-result v0

    .line 671
    const-string v12, "/."

    .line 672
    .line 673
    const-string v13, "rm -rf \'"

    .line 674
    .line 675
    if-eqz v0, :cond_15

    .line 676
    .line 677
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 678
    .line 679
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 680
    .line 681
    new-instance v14, Ljava/lang/StringBuilder;

    .line 682
    .line 683
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    .line 685
    .line 686
    iget-object v15, v2, Lda/g;->A:Lda/g;

    .line 687
    .line 688
    invoke-virtual {v15}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 689
    .line 690
    .line 691
    move-result-object v15

    .line 692
    invoke-virtual {v15}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v15

    .line 696
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    const-string v15, "/image/"

    .line 700
    .line 701
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v14

    .line 708
    iput-object v14, v0, Lcom/yunpan/appmanage/util/k;->z:Ljava/lang/String;

    .line 709
    .line 710
    goto :goto_8

    .line 711
    :cond_15
    invoke-static {v13, v7, v12}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v14

    .line 719
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    const-string v14, "/cache/\'"

    .line 723
    .line 724
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    new-array v14, v4, [Ljava/lang/String;

    .line 732
    .line 733
    aput-object v0, v14, v3

    .line 734
    .line 735
    invoke-static {v14}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 740
    .line 741
    .line 742
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 743
    .line 744
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 745
    .line 746
    invoke-static {v7, v12}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    move-result-object v14

    .line 750
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v15

    .line 754
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v14

    .line 764
    iput-object v14, v0, Lcom/yunpan/appmanage/util/k;->z:Ljava/lang/String;

    .line 765
    .line 766
    :goto_8
    :try_start_b
    new-instance v0, Ljava/io/File;

    .line 767
    .line 768
    sget-object v14, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 769
    .line 770
    iget-object v15, v14, Lcom/yunpan/appmanage/util/k;->z:Ljava/lang/String;

    .line 771
    .line 772
    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 776
    .line 777
    .line 778
    new-instance v0, Ljava/io/File;

    .line 779
    .line 780
    new-instance v15, Ljava/lang/StringBuilder;

    .line 781
    .line 782
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 783
    .line 784
    .line 785
    iget-object v14, v14, Lcom/yunpan/appmanage/util/k;->z:Ljava/lang/String;

    .line 786
    .line 787
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v14

    .line 797
    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 801
    .line 802
    .line 803
    :catch_8
    :try_start_c
    new-instance v0, Ljava/io/File;

    .line 804
    .line 805
    new-instance v14, Ljava/lang/StringBuilder;

    .line 806
    .line 807
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 808
    .line 809
    .line 810
    sget-object v15, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 811
    .line 812
    sget-object v15, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 813
    .line 814
    iget-object v15, v15, Lcom/yunpan/appmanage/util/k;->z:Ljava/lang/String;

    .line 815
    .line 816
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v14

    .line 826
    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 830
    .line 831
    .line 832
    goto :goto_9

    .line 833
    :catch_9
    nop

    .line 834
    :goto_9
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 835
    .line 836
    .line 837
    move-result v0

    .line 838
    if-nez v0, :cond_16

    .line 839
    .line 840
    :try_start_d
    new-instance v0, Ljava/io/File;

    .line 841
    .line 842
    sget-object v14, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 843
    .line 844
    sget-object v14, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 845
    .line 846
    iget-object v15, v14, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 847
    .line 848
    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 860
    .line 861
    .line 862
    move-result-object v15

    .line 863
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v15

    .line 867
    iput-object v15, v14, Lcom/yunpan/appmanage/util/k;->P:Ljava/lang/String;

    .line 868
    .line 869
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 870
    .line 871
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    if-eqz v0, :cond_16

    .line 882
    .line 883
    array-length v0, v0

    .line 884
    if-lez v0, :cond_16

    .line 885
    .line 886
    iput-boolean v4, v14, Lcom/yunpan/appmanage/util/k;->K:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 887
    .line 888
    goto :goto_a

    .line 889
    :catch_a
    move-exception v0

    .line 890
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 891
    .line 892
    .line 893
    :cond_16
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 894
    .line 895
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    iget-object v14, v2, Lda/g;->A:Lda/g;

    .line 899
    .line 900
    invoke-virtual {v14}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 901
    .line 902
    .line 903
    move-result-object v14

    .line 904
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object v14

    .line 908
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    const-string v14, "\'"

    .line 912
    .line 913
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    new-array v15, v4, [Ljava/lang/String;

    .line 921
    .line 922
    aput-object v0, v15, v3

    .line 923
    .line 924
    invoke-static {v15}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 929
    .line 930
    .line 931
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 932
    .line 933
    .line 934
    move-result v0

    .line 935
    if-nez v0, :cond_19

    .line 936
    .line 937
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 938
    .line 939
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 940
    .line 941
    iget-object v15, v0, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 942
    .line 943
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 944
    .line 945
    .line 946
    move-result v15

    .line 947
    if-nez v15, :cond_17

    .line 948
    .line 949
    iget-object v15, v0, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 950
    .line 951
    invoke-static {v15}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 952
    .line 953
    .line 954
    move-result v15

    .line 955
    if-eqz v15, :cond_17

    .line 956
    .line 957
    new-instance v15, Ljava/lang/StringBuilder;

    .line 958
    .line 959
    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    iget-object v8, v0, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 963
    .line 964
    invoke-static {v8, v14, v15}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v8

    .line 968
    new-array v15, v4, [Ljava/lang/String;

    .line 969
    .line 970
    aput-object v8, v15, v3

    .line 971
    .line 972
    invoke-static {v15}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 973
    .line 974
    .line 975
    move-result-object v8

    .line 976
    invoke-virtual {v8}, Lv9/e;->l0()Landroidx/room/s;

    .line 977
    .line 978
    .line 979
    :cond_17
    iget-object v8, v0, Lcom/yunpan/appmanage/util/k;->r:Ljava/lang/String;

    .line 980
    .line 981
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 982
    .line 983
    .line 984
    move-result v8

    .line 985
    if-nez v8, :cond_18

    .line 986
    .line 987
    iget-object v8, v0, Lcom/yunpan/appmanage/util/k;->r:Ljava/lang/String;

    .line 988
    .line 989
    invoke-static {v8}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 990
    .line 991
    .line 992
    move-result v8

    .line 993
    if-eqz v8, :cond_18

    .line 994
    .line 995
    iget-object v8, v0, Lcom/yunpan/appmanage/util/k;->r:Ljava/lang/String;

    .line 996
    .line 997
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 998
    .line 999
    .line 1000
    move-result v8

    .line 1001
    if-nez v8, :cond_18

    .line 1002
    .line 1003
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1004
    .line 1005
    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1006
    .line 1007
    .line 1008
    iget-object v11, v0, Lcom/yunpan/appmanage/util/k;->r:Ljava/lang/String;

    .line 1009
    .line 1010
    invoke-static {v11, v14, v8}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v8

    .line 1014
    new-array v11, v4, [Ljava/lang/String;

    .line 1015
    .line 1016
    aput-object v8, v11, v3

    .line 1017
    .line 1018
    invoke-static {v11}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v8

    .line 1022
    invoke-virtual {v8}, Lv9/e;->l0()Landroidx/room/s;

    .line 1023
    .line 1024
    .line 1025
    :cond_18
    invoke-static {v13, v7, v12}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v8

    .line 1029
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 1030
    .line 1031
    const-string v11, "/cache\'"

    .line 1032
    .line 1033
    invoke-static {v0, v11, v8}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    new-array v8, v4, [Ljava/lang/String;

    .line 1038
    .line 1039
    aput-object v0, v8, v3

    .line 1040
    .line 1041
    invoke-static {v8}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 1046
    .line 1047
    .line 1048
    :cond_19
    :try_start_e
    new-instance v0, Ljava/io/File;

    .line 1049
    .line 1050
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1053
    .line 1054
    .line 1055
    iget-object v11, v2, Lda/g;->A:Lda/g;

    .line 1056
    .line 1057
    invoke-virtual {v11}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v11

    .line 1061
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v11

    .line 1065
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    const-string v11, "/apkico/"

    .line 1069
    .line 1070
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v8

    .line 1077
    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 1081
    .line 1082
    .line 1083
    :catch_b
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1084
    .line 1085
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1086
    .line 1087
    iget-object v8, v0, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 1088
    .line 1089
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 1090
    .line 1091
    .line 1092
    move-result v8

    .line 1093
    if-nez v8, :cond_1a

    .line 1094
    .line 1095
    :try_start_f
    new-instance v8, Ljava/io/File;

    .line 1096
    .line 1097
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1098
    .line 1099
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1100
    .line 1101
    .line 1102
    iget-object v12, v0, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 1103
    .line 1104
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v11

    .line 1114
    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 1118
    .line 1119
    .line 1120
    new-instance v8, Ljava/io/File;

    .line 1121
    .line 1122
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1123
    .line 1124
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1125
    .line 1126
    .line 1127
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->r:Ljava/lang/String;

    .line 1128
    .line 1129
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v0

    .line 1139
    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 1143
    .line 1144
    .line 1145
    :catch_c
    :cond_1a
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 1146
    .line 1147
    invoke-virtual {v0}, Lfa/h0;->e()V

    .line 1148
    .line 1149
    .line 1150
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityHome;->M:Lcom/yunpan/appmanage/carsdk/u;

    .line 1151
    .line 1152
    const/16 v8, 0x2710

    .line 1153
    .line 1154
    const-wide/16 v10, 0x3e8

    .line 1155
    .line 1156
    invoke-virtual {v0, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1157
    .line 1158
    .line 1159
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v0

    .line 1163
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getApkFileDao()Lcom/yunpan/appmanage/db/ApkFileDao;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v0

    .line 1167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1168
    .line 1169
    .line 1170
    move-result-wide v10

    .line 1171
    const-wide v17, 0x9a7ec800L

    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    sub-long v10, v10, v17

    .line 1177
    .line 1178
    invoke-interface {v0, v10, v11}, Lcom/yunpan/appmanage/db/ApkFileDao;->deleteInsertTime(J)V

    .line 1179
    .line 1180
    .line 1181
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v0

    .line 1185
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v0

    .line 1189
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/FileInfoDao;->deleteAll()V

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 1193
    .line 1194
    .line 1195
    move-result v0

    .line 1196
    if-nez v0, :cond_1b

    .line 1197
    .line 1198
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1199
    .line 1200
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->f0:Ljava/util/concurrent/ExecutorService;

    .line 1201
    .line 1202
    new-instance v8, Lcom/yunpan/appmanage/util/z;

    .line 1203
    .line 1204
    new-instance v10, Ljava/io/File;

    .line 1205
    .line 1206
    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1207
    .line 1208
    .line 1209
    invoke-direct {v8, v10}, Lcom/yunpan/appmanage/util/z;-><init>(Ljava/io/File;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1213
    .line 1214
    .line 1215
    :cond_1b
    invoke-virtual {v2}, Lcom/yunpan/appmanage/ui/ActivityHome;->B()V

    .line 1216
    .line 1217
    .line 1218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1219
    .line 1220
    .line 1221
    move-result-wide v7

    .line 1222
    new-instance v0, Ljava/io/File;

    .line 1223
    .line 1224
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1225
    .line 1226
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1227
    .line 1228
    .line 1229
    sget-object v11, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1230
    .line 1231
    sget-object v11, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1232
    .line 1233
    iget-object v11, v11, Lcom/yunpan/appmanage/util/k;->z:Ljava/lang/String;

    .line 1234
    .line 1235
    const-string v12, "thumbnail/"

    .line 1236
    .line 1237
    invoke-static {v11, v12, v10}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v10

    .line 1241
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1245
    .line 1246
    .line 1247
    move-result v10

    .line 1248
    if-eqz v10, :cond_1d

    .line 1249
    .line 1250
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v0

    .line 1254
    array-length v10, v0

    .line 1255
    const/4 v11, 0x0

    .line 1256
    :goto_b
    if-ge v11, v10, :cond_1d

    .line 1257
    .line 1258
    aget-object v12, v0, v11

    .line 1259
    .line 1260
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    .line 1261
    .line 1262
    .line 1263
    move-result-wide v19

    .line 1264
    sub-long v19, v7, v19

    .line 1265
    .line 1266
    cmp-long v15, v19, v17

    .line 1267
    .line 1268
    if-lez v15, :cond_1c

    .line 1269
    .line 1270
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 1271
    .line 1272
    .line 1273
    :cond_1c
    add-int/2addr v11, v4

    .line 1274
    goto :goto_b

    .line 1275
    :cond_1d
    sget-object v0, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 1276
    .line 1277
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/d0;->c()Ljava/util/ArrayList;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v0

    .line 1281
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v0

    .line 1285
    move-object v10, v9

    .line 1286
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1287
    .line 1288
    .line 1289
    move-result v11

    .line 1290
    if-eqz v11, :cond_1e

    .line 1291
    .line 1292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v11

    .line 1296
    check-cast v11, Lx9/n5;

    .line 1297
    .line 1298
    invoke-static {v10}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v10

    .line 1302
    iget-object v11, v11, Lx9/n5;->g:Ljava/lang/String;

    .line 1303
    .line 1304
    const-string v12, "|"

    .line 1305
    .line 1306
    invoke-static {v11, v12, v10}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v10

    .line 1310
    goto :goto_c

    .line 1311
    :cond_1e
    new-instance v0, Ljava/io/File;

    .line 1312
    .line 1313
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1314
    .line 1315
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1316
    .line 1317
    .line 1318
    sget-object v12, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1319
    .line 1320
    iget-object v12, v12, Lcom/yunpan/appmanage/util/k;->z:Ljava/lang/String;

    .line 1321
    .line 1322
    const-string v15, "wp_image_cache/"

    .line 1323
    .line 1324
    invoke-static {v12, v15, v11}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v11

    .line 1328
    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1329
    .line 1330
    .line 1331
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1332
    .line 1333
    .line 1334
    move-result v11

    .line 1335
    if-eqz v11, :cond_22

    .line 1336
    .line 1337
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v0

    .line 1341
    array-length v11, v0

    .line 1342
    const/4 v12, 0x0

    .line 1343
    :goto_d
    if-ge v12, v11, :cond_22

    .line 1344
    .line 1345
    aget-object v15, v0, v12

    .line 1346
    .line 1347
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    .line 1348
    .line 1349
    .line 1350
    move-result v19

    .line 1351
    if-eqz v19, :cond_1f

    .line 1352
    .line 1353
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v3

    .line 1357
    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1358
    .line 1359
    .line 1360
    move-result v3

    .line 1361
    if-nez v3, :cond_20

    .line 1362
    .line 1363
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1364
    .line 1365
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v15

    .line 1372
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    .line 1374
    .line 1375
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v3

    .line 1382
    new-array v15, v4, [Ljava/lang/String;

    .line 1383
    .line 1384
    const/16 v19, 0x0

    .line 1385
    .line 1386
    aput-object v3, v15, v19

    .line 1387
    .line 1388
    invoke-static {v15}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v3

    .line 1392
    invoke-virtual {v3}, Lv9/e;->l0()Landroidx/room/s;

    .line 1393
    .line 1394
    .line 1395
    :cond_1f
    const/16 v20, 0x1

    .line 1396
    .line 1397
    goto :goto_f

    .line 1398
    :cond_20
    invoke-virtual {v15}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v3

    .line 1402
    array-length v15, v3

    .line 1403
    const/4 v4, 0x0

    .line 1404
    :goto_e
    if-ge v4, v15, :cond_1f

    .line 1405
    .line 1406
    aget-object v21, v3, v4

    .line 1407
    .line 1408
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->lastModified()J

    .line 1409
    .line 1410
    .line 1411
    move-result-wide v22

    .line 1412
    sub-long v22, v7, v22

    .line 1413
    .line 1414
    cmp-long v24, v22, v17

    .line 1415
    .line 1416
    if-lez v24, :cond_21

    .line 1417
    .line 1418
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    .line 1419
    .line 1420
    .line 1421
    :cond_21
    const/16 v20, 0x1

    .line 1422
    .line 1423
    add-int/lit8 v4, v4, 0x1

    .line 1424
    .line 1425
    goto :goto_e

    .line 1426
    :goto_f
    add-int/lit8 v12, v12, 0x1

    .line 1427
    .line 1428
    const/4 v3, 0x0

    .line 1429
    const/4 v4, 0x1

    .line 1430
    goto :goto_d

    .line 1431
    :cond_22
    new-instance v0, Ljava/io/File;

    .line 1432
    .line 1433
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1434
    .line 1435
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1436
    .line 1437
    .line 1438
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1439
    .line 1440
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->z:Ljava/lang/String;

    .line 1441
    .line 1442
    invoke-static {v4, v6, v3}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v3

    .line 1446
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1447
    .line 1448
    .line 1449
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1450
    .line 1451
    .line 1452
    move-result v3

    .line 1453
    if-eqz v3, :cond_24

    .line 1454
    .line 1455
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v0

    .line 1459
    array-length v3, v0

    .line 1460
    const/4 v4, 0x0

    .line 1461
    :goto_10
    if-ge v4, v3, :cond_24

    .line 1462
    .line 1463
    aget-object v6, v0, v4

    .line 1464
    .line 1465
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    .line 1466
    .line 1467
    .line 1468
    move-result-wide v10

    .line 1469
    sub-long v10, v7, v10

    .line 1470
    .line 1471
    cmp-long v12, v10, v17

    .line 1472
    .line 1473
    if-lez v12, :cond_23

    .line 1474
    .line 1475
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1476
    .line 1477
    .line 1478
    :cond_23
    const/4 v6, 0x1

    .line 1479
    add-int/2addr v4, v6

    .line 1480
    goto :goto_10

    .line 1481
    :cond_24
    new-instance v0, Ljava/io/File;

    .line 1482
    .line 1483
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1484
    .line 1485
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1486
    .line 1487
    .line 1488
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1489
    .line 1490
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->z:Ljava/lang/String;

    .line 1491
    .line 1492
    invoke-static {v4, v5, v3}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v3

    .line 1496
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1497
    .line 1498
    .line 1499
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1500
    .line 1501
    .line 1502
    move-result v3

    .line 1503
    if-eqz v3, :cond_26

    .line 1504
    .line 1505
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v0

    .line 1509
    array-length v3, v0

    .line 1510
    const/4 v4, 0x0

    .line 1511
    :goto_11
    if-ge v4, v3, :cond_26

    .line 1512
    .line 1513
    aget-object v5, v0, v4

    .line 1514
    .line 1515
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    .line 1516
    .line 1517
    .line 1518
    move-result-wide v10

    .line 1519
    sub-long v10, v7, v10

    .line 1520
    .line 1521
    cmp-long v6, v10, v17

    .line 1522
    .line 1523
    if-lez v6, :cond_25

    .line 1524
    .line 1525
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1526
    .line 1527
    .line 1528
    :cond_25
    const/4 v5, 0x1

    .line 1529
    add-int/2addr v4, v5

    .line 1530
    goto :goto_11

    .line 1531
    :cond_26
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1532
    .line 1533
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1534
    .line 1535
    .line 1536
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpMdns;

    .line 1537
    .line 1538
    invoke-direct {v3}, Lcom/yunpan/appmanage/httpserver/HttpMdns;-><init>()V

    .line 1539
    .line 1540
    .line 1541
    iput-object v3, v0, Lcom/yunpan/appmanage/util/k;->r0:Lcom/yunpan/appmanage/httpserver/HttpMdns;

    .line 1542
    .line 1543
    invoke-virtual {v3}, Lcom/yunpan/appmanage/httpserver/HttpMdns;->start()V

    .line 1544
    .line 1545
    .line 1546
    const-string v0, "log-\u5f00\u673a\u65e5\u5fd7.txt"

    .line 1547
    .line 1548
    invoke-virtual {v2, v0}, Lcom/yunpan/appmanage/ui/ActivityHome;->A(Ljava/lang/String;)Z

    .line 1549
    .line 1550
    .line 1551
    move-result v0

    .line 1552
    const/4 v3, 0x2

    .line 1553
    if-nez v0, :cond_27

    .line 1554
    .line 1555
    const-string v0, "log-\u65e5\u5fd7\u6620\u5c04.txt"

    .line 1556
    .line 1557
    invoke-virtual {v2, v0}, Lcom/yunpan/appmanage/ui/ActivityHome;->A(Ljava/lang/String;)Z

    .line 1558
    .line 1559
    .line 1560
    move-result v0

    .line 1561
    if-nez v0, :cond_27

    .line 1562
    .line 1563
    const-string v0, "log-adb.txt"

    .line 1564
    .line 1565
    invoke-virtual {v2, v0}, Lcom/yunpan/appmanage/ui/ActivityHome;->A(Ljava/lang/String;)Z

    .line 1566
    .line 1567
    .line 1568
    move-result v0

    .line 1569
    if-eqz v0, :cond_2c

    .line 1570
    .line 1571
    :cond_27
    iget-object v0, v2, Lda/g;->A:Lda/g;

    .line 1572
    .line 1573
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v2

    .line 1577
    invoke-static {v0, v2}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 1578
    .line 1579
    .line 1580
    move-result v0

    .line 1581
    if-eqz v0, :cond_2b

    .line 1582
    .line 1583
    const/16 v0, 0x25f

    .line 1584
    .line 1585
    :try_start_10
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v2

    .line 1589
    invoke-static {v2}, Lv8/b;->c(Ljava/lang/String;)V

    .line 1590
    .line 1591
    .line 1592
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 1593
    .line 1594
    new-instance v4, Lv8/a;

    .line 1595
    .line 1596
    invoke-direct {v4, v2}, Lv8/a;-><init>(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 1597
    .line 1598
    .line 1599
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1600
    .line 1601
    .line 1602
    move-result-object v0

    .line 1603
    iput-object v0, v4, Lv8/a;->h:Ljava/lang/String;

    .line 1604
    .line 1605
    const v0, 0x7f0e0217

    .line 1606
    .line 1607
    .line 1608
    invoke-virtual {v4, v0}, Lv8/a;->j(I)V

    .line 1609
    .line 1610
    .line 1611
    const/16 v0, 0x100

    .line 1612
    .line 1613
    invoke-virtual {v4, v0}, Lv8/a;->a(I)V

    .line 1614
    .line 1615
    .line 1616
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1617
    .line 1618
    const/16 v2, 0x1c

    .line 1619
    .line 1620
    if-lt v0, v2, :cond_28

    .line 1621
    .line 1622
    const/4 v0, 0x1

    .line 1623
    goto :goto_12

    .line 1624
    :cond_28
    const/4 v0, 0x0

    .line 1625
    :goto_12
    invoke-virtual {v4, v0}, Lv8/a;->l(I)V

    .line 1626
    .line 1627
    .line 1628
    iget-object v0, v4, Lv8/a;->c:Lv8/h;

    .line 1629
    .line 1630
    const v2, 0x7f0b0522

    .line 1631
    .line 1632
    .line 1633
    if-nez v0, :cond_29

    .line 1634
    .line 1635
    const/4 v0, 0x0

    .line 1636
    goto :goto_13

    .line 1637
    :cond_29
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v0

    .line 1641
    :goto_13
    check-cast v0, Landroid/widget/TextView;

    .line 1642
    .line 1643
    if-eqz v0, :cond_2a

    .line 1644
    .line 1645
    const/high16 v5, 0x41800000    # 16.0f

    .line 1646
    .line 1647
    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1648
    .line 1649
    .line 1650
    :cond_2a
    const-string v0, "\u68c0\u6d4b\u5230\u4fdd\u5b58\u7684\u65e5\u5fd7\u8fc7\u591a\uff0c\u5df2\u6e05\u7406\n\u5982\u65e0\u5fc5\u8981\uff0c\u53bb\u3010\u5b9e\u9a8c\u5ba4\u3011\u7684\u3010\u5f00\u53d1\u8005\u65e5\u5fd7\u8c03\u8bd5\u3011\u4e2d\u5173\u95ed"

    .line 1651
    .line 1652
    invoke-virtual {v4, v2, v0}, Lv8/a;->o(ILjava/lang/String;)V

    .line 1653
    .line 1654
    .line 1655
    const/16 v0, 0xbb8

    .line 1656
    .line 1657
    invoke-virtual {v4, v0}, Lv8/a;->r(I)V

    .line 1658
    .line 1659
    .line 1660
    invoke-virtual {v4}, Lv8/a;->t()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    .line 1661
    .line 1662
    .line 1663
    goto :goto_14

    .line 1664
    :cond_2b
    const-string v0, "\u68c0\u6d4b\u5230\u65e5\u5fd7\u8fc7\u591a\uff0c\u5df2\u6e05\u7406\n\u5982\u65e0\u5fc5\u8981\uff0c\u53bb\u3010\u5b9e\u9a8c\u5ba4\u3011\u7684\u3010\u5f00\u53d1\u8005\u65e5\u5fd7\u8c03\u8bd5\u3011\u4e2d\u5173\u95ed"

    .line 1665
    .line 1666
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1667
    .line 1668
    .line 1669
    :catch_d
    :cond_2c
    :goto_14
    const-string v0, "https://"

    .line 1670
    .line 1671
    const/4 v2, 0x0

    .line 1672
    const/4 v4, 0x0

    .line 1673
    :cond_2d
    if-nez v2, :cond_2e

    .line 1674
    .line 1675
    const-string v5, "https://yun.123pan.cn/api/dydomain"

    .line 1676
    .line 1677
    move-object v6, v5

    .line 1678
    const/4 v5, 0x1

    .line 1679
    goto :goto_15

    .line 1680
    :cond_2e
    const/4 v5, 0x1

    .line 1681
    if-ne v2, v5, :cond_2f

    .line 1682
    .line 1683
    const-string v6, "https://www.123865.com/api/dydomain"

    .line 1684
    .line 1685
    goto :goto_15

    .line 1686
    :cond_2f
    if-ne v2, v3, :cond_30

    .line 1687
    .line 1688
    const-string v6, "https://www.123684.com/api/dydomain"

    .line 1689
    .line 1690
    goto :goto_15

    .line 1691
    :cond_30
    const-string v6, "https://www.123pan.cn/api/dydomain"

    .line 1692
    .line 1693
    :goto_15
    add-int/2addr v2, v5

    .line 1694
    const/4 v7, 0x0

    .line 1695
    :cond_31
    if-nez v7, :cond_32

    .line 1696
    .line 1697
    sget-object v4, Lcom/yunpan/appmanage/util/f0;->a:Lo9/a;

    .line 1698
    .line 1699
    const/4 v8, 0x0

    .line 1700
    iput-object v8, v4, Lo9/a;->b:Lokhttp3/HttpUrl;

    .line 1701
    .line 1702
    goto :goto_16

    .line 1703
    :cond_32
    const/4 v8, 0x0

    .line 1704
    const/4 v10, 0x3

    .line 1705
    if-gt v7, v10, :cond_35

    .line 1706
    .line 1707
    sget-object v4, Lcom/yunpan/appmanage/util/f0;->a:Lo9/a;

    .line 1708
    .line 1709
    add-int/lit8 v10, v7, -0x1

    .line 1710
    .line 1711
    invoke-static {v10}, Lcom/yunpan/appmanage/util/f0;->a(I)Ljava/lang/String;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v10

    .line 1715
    invoke-static {v10}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v10

    .line 1719
    iput-object v10, v4, Lo9/a;->b:Lokhttp3/HttpUrl;

    .line 1720
    .line 1721
    :goto_16
    add-int/2addr v7, v5

    .line 1722
    :try_start_11
    new-instance v4, Ll9/a;

    .line 1723
    .line 1724
    invoke-direct {v4, v6}, Ll9/a;-><init>(Ljava/lang/String;)V

    .line 1725
    .line 1726
    .line 1727
    iget-object v10, v4, Lm9/e;->i:Lk9/a;

    .line 1728
    .line 1729
    const-string v11, "User-Agent"

    .line 1730
    .line 1731
    sget-object v12, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1732
    .line 1733
    sget-object v12, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1734
    .line 1735
    const-string v12, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0"

    .line 1736
    .line 1737
    invoke-virtual {v10, v11, v12}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    .line 1739
    .line 1740
    const-string v11, "Referer"

    .line 1741
    .line 1742
    invoke-virtual {v10, v11, v6}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    .line 1744
    .line 1745
    invoke-virtual {v4}, Lm9/e;->a()Lokhttp3/Response;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v4

    .line 1749
    invoke-virtual {v4}, Lokhttp3/Response;->isSuccessful()Z

    .line 1750
    .line 1751
    .line 1752
    move-result v10

    .line 1753
    if-nez v10, :cond_33

    .line 1754
    .line 1755
    :goto_17
    move-object v4, v8

    .line 1756
    goto :goto_18

    .line 1757
    :cond_33
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v10

    .line 1761
    if-nez v10, :cond_34

    .line 1762
    .line 1763
    goto :goto_17

    .line 1764
    :cond_34
    invoke-virtual {v10}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v9
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    .line 1768
    goto :goto_18

    .line 1769
    :catch_e
    nop

    .line 1770
    goto :goto_17

    .line 1771
    :goto_18
    if-eqz v4, :cond_31

    .line 1772
    .line 1773
    :cond_35
    if-eqz v4, :cond_36

    .line 1774
    .line 1775
    const-string v6, "cppClientDomain"

    .line 1776
    .line 1777
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1778
    .line 1779
    .line 1780
    move-result v7

    .line 1781
    if-eqz v7, :cond_36

    .line 1782
    .line 1783
    :try_start_12
    invoke-static {v9}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v2

    .line 1787
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v2

    .line 1791
    const-string v3, "data"

    .line 1792
    .line 1793
    invoke-virtual {v2, v3}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v2

    .line 1797
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1798
    .line 1799
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1800
    .line 1801
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1802
    .line 1803
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1804
    .line 1805
    .line 1806
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    .line 1808
    .line 1809
    const-string v5, "domains"

    .line 1810
    .line 1811
    invoke-virtual {v2, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v5

    .line 1815
    const/4 v7, 0x0

    .line 1816
    invoke-virtual {v5, v7}, Lz7/o;->l(I)Lz7/p;

    .line 1817
    .line 1818
    .line 1819
    move-result-object v5

    .line 1820
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v5

    .line 1824
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    .line 1826
    .line 1827
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1828
    .line 1829
    .line 1830
    move-result-object v4

    .line 1831
    iput-object v4, v3, Lcom/yunpan/appmanage/util/k;->W:Ljava/lang/String;

    .line 1832
    .line 1833
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1834
    .line 1835
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1836
    .line 1837
    .line 1838
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1839
    .line 1840
    .line 1841
    invoke-virtual {v2, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v0

    .line 1845
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1846
    .line 1847
    .line 1848
    move-result-object v0

    .line 1849
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1850
    .line 1851
    .line 1852
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v0

    .line 1856
    iput-object v0, v3, Lcom/yunpan/appmanage/util/k;->X:Ljava/lang/String;

    .line 1857
    .line 1858
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1859
    .line 1860
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    .line 1861
    .line 1862
    .line 1863
    goto :goto_19

    .line 1864
    :cond_36
    const/4 v7, 0x0

    .line 1865
    const/4 v6, 0x4

    .line 1866
    if-lt v2, v6, :cond_2d

    .line 1867
    .line 1868
    :catch_f
    :goto_19
    return-void

    .line 1869
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
