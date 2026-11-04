.class public Lcom/yunpan/appmanage/ui/ActivityGjDiy;
.super Lda/g;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final synthetic V:I


# instance fields
.field public C:Landroid/widget/ImageView;

.field public D:Landroid/widget/ImageView;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/widget/TextView;

.field public G:Landroid/widget/TextView;

.field public H:Landroid/widget/EditText;

.field public I:Landroid/widget/EditText;

.field public K:Landroid/widget/EditText;

.field public L:Lx9/w3;

.field public M:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public N:Ljava/lang/String;

.field public O:Lz7/s;

.field public P:Ljava/lang/String;

.field public R:Ljava/lang/String;

.field public S:Lha/u9;

.field public T:Z


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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->T:Z

    .line 9
    .line 10
    return-void
.end method

.method public static x(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v3, "\""

    .line 5
    .line 6
    const-string v4, "addSuppressed"

    .line 7
    .line 8
    const-class v5, Ljava/lang/Throwable;

    .line 9
    .line 10
    new-instance v6, Ljava/io/File;

    .line 11
    .line 12
    new-instance v7, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object v8, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 18
    .line 19
    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v8, "/gj_ico.png"

    .line 27
    .line 28
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v7, Ljava/io/File;

    .line 39
    .line 40
    new-instance v8, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    sget-object v9, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 46
    .line 47
    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v9, "/gj_banner.png"

    .line 55
    .line 56
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    const-string v9, "\u4e0d\u9700\u8981\u4fee\u6539"

    .line 71
    .line 72
    if-nez v8, :cond_1

    .line 73
    .line 74
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    .line 82
    .line 83
    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_1
    :goto_0
    new-instance v8, Lef/b;

    .line 88
    .line 89
    invoke-direct {v8, v0}, Lef/b;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :try_start_0
    invoke-virtual {v8}, Lef/b;->M()V

    .line 93
    .line 94
    .line 95
    iget-object v10, v8, Lef/b;->e:Lff/c;

    .line 96
    .line 97
    iget-object v10, v10, Lff/c;->a:Ljava/lang/String;

    .line 98
    .line 99
    sget-object v11, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 100
    .line 101
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    if-eqz v10, :cond_1b

    .line 110
    .line 111
    invoke-virtual {v8}, Lef/b;->M()V

    .line 112
    .line 113
    .line 114
    iget-object v9, v8, Lef/b;->d:Ljava/lang/String;

    .line 115
    .line 116
    const-string v10, "icon=\""

    .line 117
    .line 118
    invoke-static {v9, v10, v3, v1}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    const-string v11, "banner=\""

    .line 123
    .line 124
    invoke-static {v9, v11, v3, v1}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    if-eqz v9, :cond_2

    .line 133
    .line 134
    new-instance v9, Ljava/io/FileInputStream;

    .line 135
    .line 136
    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v9}, Lcom/yunpan/appmanage/util/a0;->A(Ljava/io/InputStream;)[B

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    goto :goto_1

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    move-object v1, v0

    .line 146
    goto/16 :goto_19

    .line 147
    .line 148
    :cond_2
    const/4 v6, 0x0

    .line 149
    :goto_1
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    if-eqz v9, :cond_3

    .line 154
    .line 155
    new-instance v9, Ljava/io/FileInputStream;

    .line 156
    .line 157
    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v9}, Lcom/yunpan/appmanage/util/a0;->A(Ljava/io/InputStream;)[B

    .line 161
    .line 162
    .line 163
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    goto :goto_2

    .line 165
    :cond_3
    const/4 v7, 0x0

    .line 166
    :goto_2
    invoke-virtual {v8}, Lef/b;->close()V

    .line 167
    .line 168
    .line 169
    const-string v8, "\u6b63\u5728\u4fee\u6539\u81ea\u5b9a\u4e49\u56fe\u6807"

    .line 170
    .line 171
    invoke-static {v8}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    new-instance v8, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    sget-object v9, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 180
    .line 181
    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v9, "/cache/"

    .line 189
    .line 190
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    sget-object v12, Lfa/g0;->a:Lfa/h0;

    .line 198
    .line 199
    invoke-virtual {v12}, Lfa/h0;->d()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 204
    .line 205
    .line 206
    move-result v13

    .line 207
    if-nez v13, :cond_4

    .line 208
    .line 209
    new-instance v8, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v12}, Lfa/h0;->d()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v12, "/."

    .line 222
    .line 223
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    sget-object v12, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 227
    .line 228
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v12

    .line 232
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    :cond_4
    new-instance v9, Ljava/io/File;

    .line 243
    .line 244
    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 248
    .line 249
    .line 250
    new-instance v9, Ljava/io/File;

    .line 251
    .line 252
    const-string v12, "/"

    .line 253
    .line 254
    invoke-static {v8, v12}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    move-result-object v13

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 259
    .line 260
    .line 261
    move-result-wide v14

    .line 262
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v13

    .line 269
    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    new-instance v13, Ljava/util/zip/ZipFile;

    .line 273
    .line 274
    new-instance v14, Ljava/io/File;

    .line 275
    .line 276
    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-direct {v13, v14}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 280
    .line 281
    .line 282
    :try_start_1
    new-instance v14, Ljava/util/zip/ZipOutputStream;

    .line 283
    .line 284
    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 285
    .line 286
    new-instance v15, Ljava/io/FileOutputStream;

    .line 287
    .line 288
    invoke-direct {v15, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 289
    .line 290
    .line 291
    invoke-direct {v0, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 292
    .line 293
    .line 294
    invoke-direct {v14, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 295
    .line 296
    .line 297
    :try_start_2
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 302
    .line 303
    .line 304
    move-result v15

    .line 305
    if-eqz v15, :cond_d

    .line 306
    .line 307
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v15

    .line 311
    check-cast v15, Ljava/util/zip/ZipEntry;

    .line 312
    .line 313
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    const-string v1, "META-INF/"

    .line 318
    .line 319
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-eqz v1, :cond_5

    .line 324
    .line 325
    :goto_4
    const/4 v1, 0x0

    .line 326
    goto :goto_3

    .line 327
    :cond_5
    new-instance v1, Ljava/util/zip/ZipEntry;

    .line 328
    .line 329
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-direct {v1, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getMethod()I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getMethod()I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-nez v2, :cond_8

    .line 348
    .line 349
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v2, :cond_6

    .line 358
    .line 359
    if-eqz v6, :cond_6

    .line 360
    .line 361
    array-length v2, v6

    .line 362
    move-object/from16 v16, v12

    .line 363
    .line 364
    int-to-long v11, v2

    .line 365
    invoke-virtual {v1, v11, v12}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 366
    .line 367
    .line 368
    array-length v2, v6

    .line 369
    int-to-long v11, v2

    .line 370
    invoke-virtual {v1, v11, v12}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 371
    .line 372
    .line 373
    new-instance v2, Ljava/util/zip/CRC32;

    .line 374
    .line 375
    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v2, v6}, Ljava/util/zip/CRC32;->update([B)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 382
    .line 383
    .line 384
    move-result-wide v11

    .line 385
    invoke-virtual {v1, v11, v12}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 386
    .line 387
    .line 388
    :goto_5
    const/4 v2, 0x0

    .line 389
    goto :goto_6

    .line 390
    :catchall_1
    move-exception v0

    .line 391
    move-object v1, v0

    .line 392
    goto/16 :goto_15

    .line 393
    .line 394
    :cond_6
    move-object/from16 v16, v12

    .line 395
    .line 396
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    if-eqz v2, :cond_7

    .line 405
    .line 406
    if-eqz v7, :cond_7

    .line 407
    .line 408
    array-length v2, v7

    .line 409
    int-to-long v11, v2

    .line 410
    invoke-virtual {v1, v11, v12}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 411
    .line 412
    .line 413
    array-length v2, v7

    .line 414
    int-to-long v11, v2

    .line 415
    invoke-virtual {v1, v11, v12}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 416
    .line 417
    .line 418
    new-instance v2, Ljava/util/zip/CRC32;

    .line 419
    .line 420
    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2, v7}, Ljava/util/zip/CRC32;->update([B)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 427
    .line 428
    .line 429
    move-result-wide v11

    .line 430
    invoke-virtual {v1, v11, v12}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 431
    .line 432
    .line 433
    goto :goto_5

    .line 434
    :cond_7
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 435
    .line 436
    .line 437
    move-result-wide v11

    .line 438
    invoke-virtual {v1, v11, v12}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 442
    .line 443
    .line 444
    move-result-wide v11

    .line 445
    invoke-virtual {v1, v11, v12}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 449
    .line 450
    .line 451
    move-result-wide v11

    .line 452
    invoke-virtual {v1, v11, v12}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 453
    .line 454
    .line 455
    goto :goto_5

    .line 456
    :cond_8
    move-object/from16 v16, v12

    .line 457
    .line 458
    goto :goto_5

    .line 459
    :goto_6
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v14, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    if-eqz v1, :cond_9

    .line 474
    .line 475
    if-eqz v6, :cond_9

    .line 476
    .line 477
    invoke-virtual {v14, v6}, Ljava/io/OutputStream;->write([B)V

    .line 478
    .line 479
    .line 480
    goto :goto_8

    .line 481
    :cond_9
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    if-eqz v1, :cond_a

    .line 490
    .line 491
    if-eqz v7, :cond_a

    .line 492
    .line 493
    invoke-virtual {v14, v7}, Ljava/io/OutputStream;->write([B)V

    .line 494
    .line 495
    .line 496
    goto :goto_8

    .line 497
    :cond_a
    invoke-virtual {v13, v15}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 498
    .line 499
    .line 500
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 501
    const/16 v11, 0x2000

    .line 502
    .line 503
    :try_start_3
    new-array v11, v11, [B

    .line 504
    .line 505
    :goto_7
    invoke-virtual {v1, v11}, Ljava/io/InputStream;->read([B)I

    .line 506
    .line 507
    .line 508
    move-result v12

    .line 509
    const/4 v15, -0x1

    .line 510
    if-eq v12, v15, :cond_b

    .line 511
    .line 512
    const/4 v15, 0x0

    .line 513
    invoke-virtual {v14, v11, v15, v12}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 514
    .line 515
    .line 516
    goto :goto_7

    .line 517
    :catchall_2
    move-exception v0

    .line 518
    move-object v2, v0

    .line 519
    goto :goto_9

    .line 520
    :cond_b
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 521
    .line 522
    .line 523
    :goto_8
    invoke-virtual {v14}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 524
    .line 525
    .line 526
    move-object/from16 v12, v16

    .line 527
    .line 528
    goto/16 :goto_4

    .line 529
    .line 530
    :goto_9
    if-eqz v1, :cond_c

    .line 531
    .line 532
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 533
    .line 534
    .line 535
    goto :goto_a

    .line 536
    :catchall_3
    move-exception v0

    .line 537
    move-object v1, v0

    .line 538
    const/4 v3, 0x1

    .line 539
    :try_start_6
    new-array v0, v3, [Ljava/lang/Class;

    .line 540
    .line 541
    const/4 v6, 0x0

    .line 542
    aput-object v5, v0, v6

    .line 543
    .line 544
    invoke-virtual {v5, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    new-array v7, v3, [Ljava/lang/Object;

    .line 549
    .line 550
    aput-object v1, v7, v6

    .line 551
    .line 552
    invoke-virtual {v0, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 553
    .line 554
    .line 555
    :catch_0
    :cond_c
    :goto_a
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 556
    :cond_d
    move-object/from16 v16, v12

    .line 557
    .line 558
    const/4 v2, 0x0

    .line 559
    :try_start_8
    invoke-virtual {v14}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    .line 560
    .line 561
    .line 562
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V

    .line 563
    .line 564
    .line 565
    new-instance v1, Ljava/io/File;

    .line 566
    .line 567
    move-object/from16 v3, v16

    .line 568
    .line 569
    invoke-static {v8, v3}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 574
    .line 575
    .line 576
    move-result-wide v6

    .line 577
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    new-instance v6, Ljava/io/RandomAccessFile;

    .line 588
    .line 589
    const-string v0, "r"

    .line 590
    .line 591
    invoke-direct {v6, v9, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    :try_start_9
    new-instance v7, Ljava/io/FileOutputStream;

    .line 595
    .line 596
    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 597
    .line 598
    .line 599
    :try_start_a
    invoke-static {v6, v7}, Landroid/support/v4/media/session/b;->a(Ljava/io/RandomAccessFile;Ljava/io/FileOutputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 600
    .line 601
    .line 602
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 603
    .line 604
    .line 605
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 606
    .line 607
    .line 608
    :try_start_c
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 609
    .line 610
    .line 611
    :catch_1
    new-instance v4, Ljava/io/File;

    .line 612
    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .line 617
    .line 618
    sget-object v5, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 619
    .line 620
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 621
    .line 622
    .line 623
    move-result-object v5

    .line 624
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    const-string v5, "/gj_sign"

    .line 628
    .line 629
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    if-eqz v0, :cond_e

    .line 644
    .line 645
    invoke-static {v4}, Lq4/a;->J(Ljava/io/File;)Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    move-object v5, v0

    .line 658
    goto :goto_b

    .line 659
    :cond_e
    move-object v5, v2

    .line 660
    :goto_b
    const-string v0, "ctmming"

    .line 661
    .line 662
    const-string v6, "mingkey"

    .line 663
    .line 664
    move-object v7, v0

    .line 665
    move-object v9, v6

    .line 666
    const/4 v10, 0x0

    .line 667
    move-object v6, v7

    .line 668
    :goto_c
    :try_start_d
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 669
    .line 670
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 671
    .line 672
    iget-object v11, v0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 673
    .line 674
    sget-object v12, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 675
    .line 676
    const v13, 0x7f13015d

    .line 677
    .line 678
    .line 679
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v12

    .line 683
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v12

    .line 687
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    move-result v11

    .line 691
    if-eqz v11, :cond_f

    .line 692
    .line 693
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 694
    .line 695
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    const v11, 0x7f120007

    .line 700
    .line 701
    .line 702
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    :goto_d
    move-object v11, v9

    .line 707
    move-object v9, v7

    .line 708
    move-object v7, v6

    .line 709
    move-object v6, v0

    .line 710
    goto/16 :goto_e

    .line 711
    .line 712
    :catchall_4
    move-exception v0

    .line 713
    move-object v11, v2

    .line 714
    goto/16 :goto_11

    .line 715
    .line 716
    :catch_2
    move-exception v0

    .line 717
    move-object v11, v9

    .line 718
    move-object v9, v7

    .line 719
    move-object v7, v6

    .line 720
    move-object v6, v2

    .line 721
    goto/16 :goto_10

    .line 722
    .line 723
    :cond_f
    iget-object v11, v0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 724
    .line 725
    sget-object v12, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 726
    .line 727
    const v13, 0x7f130160

    .line 728
    .line 729
    .line 730
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v12

    .line 734
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v12

    .line 738
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    move-result v11

    .line 742
    if-eqz v11, :cond_10

    .line 743
    .line 744
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 745
    .line 746
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    const v11, 0x7f120008

    .line 751
    .line 752
    .line 753
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    goto :goto_d

    .line 758
    :cond_10
    iget-object v11, v0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 759
    .line 760
    sget-object v12, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 761
    .line 762
    const v13, 0x7f13015e

    .line 763
    .line 764
    .line 765
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v12

    .line 769
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v12

    .line 773
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    move-result v11

    .line 777
    if-eqz v11, :cond_11

    .line 778
    .line 779
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 780
    .line 781
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    const v11, 0x7f12000a

    .line 786
    .line 787
    .line 788
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    goto :goto_d

    .line 793
    :cond_11
    iget-object v11, v0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 794
    .line 795
    sget-object v12, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 796
    .line 797
    const v13, 0x7f13015c

    .line 798
    .line 799
    .line 800
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v12

    .line 804
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v12

    .line 808
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    move-result v11

    .line 812
    if-eqz v11, :cond_12

    .line 813
    .line 814
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 815
    .line 816
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    const v11, 0x7f120009

    .line 821
    .line 822
    .line 823
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    goto :goto_d

    .line 828
    :cond_12
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 829
    .line 830
    sget-object v11, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 831
    .line 832
    const v12, 0x7f13015f

    .line 833
    .line 834
    .line 835
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v11

    .line 839
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v11

    .line 843
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    if-eqz v0, :cond_13

    .line 848
    .line 849
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 850
    .line 851
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    const v11, 0x7f12000b

    .line 856
    .line 857
    .line 858
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    goto/16 :goto_d

    .line 863
    .line 864
    :cond_13
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 865
    .line 866
    .line 867
    move-result v0

    .line 868
    if-eqz v0, :cond_17

    .line 869
    .line 870
    const-string v0, "sign_password"

    .line 871
    .line 872
    invoke-virtual {v5, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v6

    .line 880
    const-string v0, "sign_alias"

    .line 881
    .line 882
    invoke-virtual {v5, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v9

    .line 890
    const-string v0, "sign_alias_password"

    .line 891
    .line 892
    invoke-virtual {v5, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 893
    .line 894
    .line 895
    move-result-object v0

    .line 896
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v7

    .line 900
    new-instance v0, Ljava/io/FileInputStream;

    .line 901
    .line 902
    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 903
    .line 904
    .line 905
    goto/16 :goto_d

    .line 906
    .line 907
    :goto_e
    if-nez v10, :cond_14

    .line 908
    .line 909
    :try_start_e
    const-string v0, "PKCS12"

    .line 910
    .line 911
    new-instance v12, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 912
    .line 913
    invoke-direct {v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    .line 914
    .line 915
    .line 916
    invoke-static {v0, v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    goto :goto_f

    .line 921
    :catchall_5
    move-exception v0

    .line 922
    move-object v11, v6

    .line 923
    goto/16 :goto_11

    .line 924
    .line 925
    :catch_3
    move-exception v0

    .line 926
    goto/16 :goto_10

    .line 927
    .line 928
    :cond_14
    const/4 v12, 0x1

    .line 929
    if-ne v10, v12, :cond_15

    .line 930
    .line 931
    const-string v0, "BKS"

    .line 932
    .line 933
    new-instance v12, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 934
    .line 935
    invoke-direct {v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    .line 936
    .line 937
    .line 938
    invoke-static {v0, v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    goto :goto_f

    .line 943
    :cond_15
    const-string v0, "JKS"

    .line 944
    .line 945
    new-instance v12, Lc/a;

    .line 946
    .line 947
    const/4 v13, 0x1

    .line 948
    invoke-direct {v12, v13}, Lc/a;-><init>(I)V

    .line 949
    .line 950
    .line 951
    invoke-static {v0, v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    :goto_f
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    .line 956
    .line 957
    .line 958
    move-result-object v12

    .line 959
    invoke-virtual {v0, v6, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 960
    .line 961
    .line 962
    if-eqz v6, :cond_16

    .line 963
    .line 964
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 965
    .line 966
    .line 967
    :cond_16
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    .line 968
    .line 969
    .line 970
    move-result-object v2

    .line 971
    invoke-virtual {v0, v11, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 972
    .line 973
    .line 974
    move-result-object v2

    .line 975
    check-cast v2, Ljava/security/PrivateKey;

    .line 976
    .line 977
    invoke-virtual {v0, v11}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 982
    .line 983
    new-instance v4, Ljava/io/File;

    .line 984
    .line 985
    invoke-static {v8, v3}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    .line 987
    .line 988
    move-result-object v3

    .line 989
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 990
    .line 991
    .line 992
    move-result-wide v5

    .line 993
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 994
    .line 995
    .line 996
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v3

    .line 1000
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1001
    .line 1002
    .line 1003
    new-instance v3, Lcom/android/apksig/ApkSigner$SignerConfig$Builder;

    .line 1004
    .line 1005
    const-string v5, "CERT"

    .line 1006
    .line 1007
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v0

    .line 1011
    invoke-direct {v3, v5, v2, v0}, Lcom/android/apksig/ApkSigner$SignerConfig$Builder;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v3}, Lcom/android/apksig/ApkSigner$SignerConfig$Builder;->build()Lcom/android/apksig/ApkSigner$SignerConfig;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    new-instance v2, Lcom/android/apksig/ApkSigner$Builder;

    .line 1019
    .line 1020
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    invoke-direct {v2, v0}, Lcom/android/apksig/ApkSigner$Builder;-><init>(Ljava/util/List;)V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v2, v1}, Lcom/android/apksig/ApkSigner$Builder;->setInputApk(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v0

    .line 1031
    invoke-virtual {v0, v4}, Lcom/android/apksig/ApkSigner$Builder;->setOutputApk(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v0

    .line 1035
    const-string v2, "yygj"

    .line 1036
    .line 1037
    invoke-virtual {v0, v2}, Lcom/android/apksig/ApkSigner$Builder;->setCreatedBy(Ljava/lang/String;)Lcom/android/apksig/ApkSigner$Builder;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    const/4 v2, 0x1

    .line 1042
    invoke-virtual {v0, v2}, Lcom/android/apksig/ApkSigner$Builder;->setV1SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v0

    .line 1046
    invoke-virtual {v0, v2}, Lcom/android/apksig/ApkSigner$Builder;->setV2SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v0

    .line 1050
    const/4 v2, 0x0

    .line 1051
    invoke-virtual {v0, v2}, Lcom/android/apksig/ApkSigner$Builder;->setV3SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v0

    .line 1055
    invoke-virtual {v0, v2}, Lcom/android/apksig/ApkSigner$Builder;->setV4SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    invoke-virtual {v0}, Lcom/android/apksig/ApkSigner$Builder;->build()Lcom/android/apksig/ApkSigner;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    invoke-virtual {v0}, Lcom/android/apksig/ApkSigner;->sign()V

    .line 1064
    .line 1065
    .line 1066
    :try_start_f
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 1067
    .line 1068
    .line 1069
    :catch_4
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v0

    .line 1073
    return-object v0

    .line 1074
    :cond_17
    :try_start_10
    new-instance v0, Ljava/lang/Exception;

    .line 1075
    .line 1076
    const-string v11, "\u7b7e\u540d\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 1077
    .line 1078
    invoke-direct {v0, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1079
    .line 1080
    .line 1081
    throw v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1082
    :goto_10
    const/4 v12, 0x2

    .line 1083
    if-eq v10, v12, :cond_19

    .line 1084
    .line 1085
    if-eqz v6, :cond_18

    .line 1086
    .line 1087
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 1088
    .line 1089
    .line 1090
    :cond_18
    const/4 v6, 0x1

    .line 1091
    add-int/2addr v10, v6

    .line 1092
    move-object v6, v7

    .line 1093
    move-object v7, v9

    .line 1094
    move-object v9, v11

    .line 1095
    goto/16 :goto_c

    .line 1096
    .line 1097
    :cond_19
    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 1098
    :goto_11
    if-eqz v11, :cond_1a

    .line 1099
    .line 1100
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 1101
    .line 1102
    .line 1103
    :cond_1a
    throw v0

    .line 1104
    :catchall_6
    move-exception v0

    .line 1105
    move-object v1, v0

    .line 1106
    goto :goto_13

    .line 1107
    :catchall_7
    move-exception v0

    .line 1108
    move-object v1, v0

    .line 1109
    :try_start_12
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 1110
    .line 1111
    .line 1112
    goto :goto_12

    .line 1113
    :catchall_8
    move-exception v0

    .line 1114
    move-object v2, v0

    .line 1115
    const/4 v3, 0x1

    .line 1116
    :try_start_13
    new-array v0, v3, [Ljava/lang/Class;

    .line 1117
    .line 1118
    const/4 v7, 0x0

    .line 1119
    aput-object v5, v0, v7

    .line 1120
    .line 1121
    invoke-virtual {v5, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v0

    .line 1125
    new-array v8, v3, [Ljava/lang/Object;

    .line 1126
    .line 1127
    aput-object v2, v8, v7

    .line 1128
    .line 1129
    invoke-virtual {v0, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 1130
    .line 1131
    .line 1132
    :catch_5
    :goto_12
    :try_start_14
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 1133
    :goto_13
    :try_start_15
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 1134
    .line 1135
    .line 1136
    goto :goto_14

    .line 1137
    :catchall_9
    move-exception v0

    .line 1138
    move-object v2, v0

    .line 1139
    const/4 v3, 0x1

    .line 1140
    :try_start_16
    new-array v0, v3, [Ljava/lang/Class;

    .line 1141
    .line 1142
    const/4 v6, 0x0

    .line 1143
    aput-object v5, v0, v6

    .line 1144
    .line 1145
    invoke-virtual {v5, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v0

    .line 1149
    new-array v3, v3, [Ljava/lang/Object;

    .line 1150
    .line 1151
    aput-object v2, v3, v6

    .line 1152
    .line 1153
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    .line 1154
    .line 1155
    .line 1156
    :catch_6
    :goto_14
    throw v1

    .line 1157
    :catchall_a
    move-exception v0

    .line 1158
    move-object v1, v0

    .line 1159
    goto :goto_17

    .line 1160
    :goto_15
    :try_start_17
    invoke-virtual {v14}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 1161
    .line 1162
    .line 1163
    goto :goto_16

    .line 1164
    :catchall_b
    move-exception v0

    .line 1165
    move-object v2, v0

    .line 1166
    const/4 v3, 0x1

    .line 1167
    :try_start_18
    new-array v0, v3, [Ljava/lang/Class;

    .line 1168
    .line 1169
    const/4 v6, 0x0

    .line 1170
    aput-object v5, v0, v6

    .line 1171
    .line 1172
    invoke-virtual {v5, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v0

    .line 1176
    new-array v7, v3, [Ljava/lang/Object;

    .line 1177
    .line 1178
    aput-object v2, v7, v6

    .line 1179
    .line 1180
    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .line 1181
    .line 1182
    .line 1183
    :catch_7
    :goto_16
    :try_start_19
    throw v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 1184
    :goto_17
    :try_start_1a
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    .line 1185
    .line 1186
    .line 1187
    goto :goto_18

    .line 1188
    :catchall_c
    move-exception v0

    .line 1189
    move-object v2, v0

    .line 1190
    const/4 v3, 0x1

    .line 1191
    :try_start_1b
    new-array v0, v3, [Ljava/lang/Class;

    .line 1192
    .line 1193
    const/4 v6, 0x0

    .line 1194
    aput-object v5, v0, v6

    .line 1195
    .line 1196
    invoke-virtual {v5, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v0

    .line 1200
    new-array v3, v3, [Ljava/lang/Object;

    .line 1201
    .line 1202
    aput-object v2, v3, v6

    .line 1203
    .line 1204
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_8

    .line 1205
    .line 1206
    .line 1207
    :catch_8
    :goto_18
    throw v1

    .line 1208
    :cond_1b
    :try_start_1c
    new-instance v0, Ljava/lang/Exception;

    .line 1209
    .line 1210
    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1211
    .line 1212
    .line 1213
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 1214
    :goto_19
    :try_start_1d
    invoke-virtual {v8}, Lef/b;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    .line 1215
    .line 1216
    .line 1217
    goto :goto_1a

    .line 1218
    :catchall_d
    move-exception v0

    .line 1219
    move-object v2, v0

    .line 1220
    const/4 v3, 0x1

    .line 1221
    :try_start_1e
    new-array v0, v3, [Ljava/lang/Class;

    .line 1222
    .line 1223
    const/4 v6, 0x0

    .line 1224
    aput-object v5, v0, v6

    .line 1225
    .line 1226
    invoke-virtual {v5, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v0

    .line 1230
    new-array v3, v3, [Ljava/lang/Object;

    .line 1231
    .line 1232
    aput-object v2, v3, v6

    .line 1233
    .line 1234
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9

    .line 1235
    .line 1236
    .line 1237
    :catch_9
    :goto_1a
    goto :goto_1c

    .line 1238
    :goto_1b
    throw v1

    .line 1239
    :goto_1c
    goto :goto_1b
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0x7f0b04b8

    .line 8
    .line 9
    .line 10
    const-string v3, "\u9009\u62e9\u56fe\u6807(.png)"

    .line 11
    .line 12
    if-eq v1, v2, :cond_c

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const v2, 0x7f0b03b5

    .line 19
    .line 20
    .line 21
    if-eq v1, v2, :cond_c

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const v2, 0x7f0b032b

    .line 28
    .line 29
    .line 30
    if-eq v1, v2, :cond_c

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const v2, 0x7f0b03b6

    .line 37
    .line 38
    .line 39
    if-ne v1, v2, :cond_0

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const v2, 0x7f0b03ad

    .line 48
    .line 49
    .line 50
    if-ne v1, v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const v2, 0x7f0b03b7

    .line 62
    .line 63
    .line 64
    if-ne v1, v2, :cond_2

    .line 65
    .line 66
    new-instance p1, Lha/vb;

    .line 67
    .line 68
    invoke-direct {p1, p0, p0}, Lha/vb;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lua/z1;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lua/z1;-><init>(Lcom/yunpan/appmanage/ui/ActivityGjDiy;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v3, v0}, Lha/vb;->c(Ljava/lang/String;Lea/f;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const v2, 0x7f0b03a4

    .line 86
    .line 87
    .line 88
    const-string v3, ""

    .line 89
    .line 90
    if-ne v1, v2, :cond_4

    .line 91
    .line 92
    iput-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->P:Ljava/lang/String;

    .line 93
    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, "/gj_ico.png"

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_3

    .line 120
    .line 121
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->C:Landroid/widget/ImageView;

    .line 122
    .line 123
    const v0, 0x7f120004

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_2

    .line 130
    .line 131
    :cond_3
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->C:Landroid/widget/ImageView;

    .line 132
    .line 133
    const v0, 0x7f080134

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_2

    .line 140
    .line 141
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    const v2, 0x7f0b03a5

    .line 146
    .line 147
    .line 148
    if-ne v1, v2, :cond_6

    .line 149
    .line 150
    iput-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->R:Ljava/lang/String;

    .line 151
    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v0, "/gj_banner.png"

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_5

    .line 178
    .line 179
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->D:Landroid/widget/ImageView;

    .line 180
    .line 181
    const v0, 0x7f120003

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_2

    .line 188
    .line 189
    :cond_5
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->D:Landroid/widget/ImageView;

    .line 190
    .line 191
    const v0, 0x7f080133

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_2

    .line 198
    .line 199
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    const v1, 0x7f0b039b

    .line 204
    .line 205
    .line 206
    if-ne p1, v1, :cond_d

    .line 207
    .line 208
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    const/16 v1, 0x8

    .line 215
    .line 216
    const-string v2, "sign_file"

    .line 217
    .line 218
    if-eq p1, v1, :cond_b

    .line 219
    .line 220
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->L:Lx9/w3;

    .line 221
    .line 222
    if-nez p1, :cond_7

    .line 223
    .line 224
    const-string p1, "\u8bf7\u9009\u62e9jks\u7b7e\u540d\u6587\u4ef6"

    .line 225
    .line 226
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :cond_7
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 231
    .line 232
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-nez p1, :cond_8

    .line 237
    .line 238
    const-string p1, "jks\u7b7e\u540d\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 239
    .line 240
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_8
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 245
    .line 246
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->L:Lx9/w3;

    .line 247
    .line 248
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {p1, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 254
    .line 255
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->K:Landroid/widget/EditText;

    .line 256
    .line 257
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    const-string v3, "sign_password"

    .line 266
    .line 267
    invoke-virtual {p1, v3, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 271
    .line 272
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->I:Landroid/widget/EditText;

    .line 273
    .line 274
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    const-string v4, "sign_alias"

    .line 283
    .line 284
    invoke-virtual {p1, v4, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 288
    .line 289
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->H:Landroid/widget/EditText;

    .line 290
    .line 291
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    const-string v5, "sign_alias_password"

    .line 300
    .line 301
    invoke-virtual {p1, v5, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 305
    .line 306
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->L:Lx9/w3;

    .line 307
    .line 308
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 309
    .line 310
    const-string v6, "."

    .line 311
    .line 312
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    move-result v6

    .line 316
    add-int/lit8 v6, v6, 0x1

    .line 317
    .line 318
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    const-string v6, "sign_type"

    .line 327
    .line 328
    invoke-virtual {p1, v6, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 332
    .line 333
    invoke-virtual {p1, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    const-string v1, "P12"

    .line 342
    .line 343
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    if-eqz p1, :cond_9

    .line 348
    .line 349
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 350
    .line 351
    const-string v1, "PKCS12"

    .line 352
    .line 353
    invoke-virtual {p1, v6, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    :cond_9
    :try_start_0
    new-instance p1, Ljava/io/File;

    .line 357
    .line 358
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 359
    .line 360
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 372
    .line 373
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    iget-object v6, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 382
    .line 383
    invoke-virtual {v6, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 384
    .line 385
    .line 386
    move-result-object v6

    .line 387
    invoke-virtual {v6}, Lz7/p;->i()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    iget-object v7, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 392
    .line 393
    invoke-virtual {v7, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    invoke-static {p1, v1, v6, v5}, Lcom/yunpan/appmanage/util/h0;->c(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 402
    .line 403
    .line 404
    :try_start_1
    new-instance p1, Ljava/io/File;

    .line 405
    .line 406
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 407
    .line 408
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 409
    .line 410
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->e:Ljava/lang/String;

    .line 411
    .line 412
    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    new-instance v1, Ljava/io/File;

    .line 416
    .line 417
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 418
    .line 419
    invoke-virtual {v5, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 431
    .line 432
    invoke-virtual {v2, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 441
    .line 442
    invoke-virtual {v4, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    invoke-static {p1, v1, v2, v3}, Lcom/yunpan/appmanage/util/h0;->b(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    .line 451
    .line 452
    .line 453
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 454
    if-eqz p1, :cond_a

    .line 455
    .line 456
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->L:Lx9/w3;

    .line 457
    .line 458
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 459
    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .line 464
    .line 465
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    const-string v2, "/gj_sign"

    .line 473
    .line 474
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/util/a0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    .line 482
    .line 483
    .line 484
    goto :goto_0

    .line 485
    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/Exception;

    .line 486
    .line 487
    const-string v0, "\u7b7e\u540d\u4e0e\u5f53\u524dAPK\u7b7e\u540d\u4e0d\u5339\u914d"

    .line 488
    .line 489
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 493
    :catch_0
    move-exception p1

    .line 494
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 503
    .line 504
    .line 505
    return-void

    .line 506
    :catch_1
    const-string p1, "\u7b7e\u540d\u6587\u4ef6\u6216\u7b7e\u540d\u5bc6\u7801\u4e0d\u6b63\u786e"

    .line 507
    .line 508
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 509
    .line 510
    .line 511
    return-void

    .line 512
    :cond_b
    :try_start_3
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 513
    .line 514
    invoke-virtual {p1, v2}, Lz7/s;->r(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 515
    .line 516
    .line 517
    :catch_2
    :goto_0
    new-instance p1, Lua/z1;

    .line 518
    .line 519
    invoke-direct {p1, p0}, Lua/z1;-><init>(Lcom/yunpan/appmanage/ui/ActivityGjDiy;)V

    .line 520
    .line 521
    .line 522
    new-instance v1, Lmc/c;

    .line 523
    .line 524
    const/4 v2, 0x0

    .line 525
    invoke-direct {v1, v2, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 529
    .line 530
    invoke-virtual {v1, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 539
    .line 540
    .line 541
    move-result-object p1

    .line 542
    new-instance v1, Lka/c;

    .line 543
    .line 544
    invoke-direct {v1, v0, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {p1, v1}, Lec/b;->b(Lec/e;)V

    .line 548
    .line 549
    .line 550
    goto :goto_2

    .line 551
    :cond_c
    :goto_1
    new-instance v1, Lha/vb;

    .line 552
    .line 553
    invoke-direct {v1, p0, p0}, Lha/vb;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 554
    .line 555
    .line 556
    new-instance v2, Lma/b;

    .line 557
    .line 558
    invoke-direct {v2, p0, v0, p1}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v1, v3, v2}, Lha/vb;->c(Ljava/lang/String;Lea/f;)V

    .line 562
    .line 563
    .line 564
    :cond_d
    :goto_2
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lkh/e;->l(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->T:Z

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    if-eq p3, v1, :cond_1

    .line 17
    .line 18
    return v2

    .line 19
    :cond_1
    iget-boolean p3, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->T:Z

    .line 20
    .line 21
    if-nez p3, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iput-boolean v2, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->T:Z

    .line 25
    .line 26
    const/16 p3, 0x14

    .line 27
    .line 28
    const v0, 0x7f0b0445

    .line 29
    .line 30
    .line 31
    const v3, 0x7f0b042b

    .line 32
    .line 33
    .line 34
    const v4, 0x7f0b042c

    .line 35
    .line 36
    .line 37
    if-ne p2, p3, :cond_5

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-ne p2, v4, :cond_3

    .line 44
    .line 45
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->G:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-ne p2, v3, :cond_4

    .line 56
    .line 57
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->H:Landroid/widget/EditText;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-ne p1, v0, :cond_9

    .line 68
    .line 69
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->I:Landroid/widget/EditText;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    const/16 p3, 0x13

    .line 76
    .line 77
    if-ne p2, p3, :cond_9

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-ne p2, v4, :cond_6

    .line 84
    .line 85
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->I:Landroid/widget/EditText;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-ne p2, v3, :cond_7

    .line 96
    .line 97
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->K:Landroid/widget/EditText;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-ne p1, v0, :cond_8

    .line 108
    .line 109
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->F:Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 112
    .line 113
    .line 114
    :cond_8
    :goto_0
    return v1

    .line 115
    :cond_9
    :goto_1
    return v2
.end method

.method public onReceiveMsg(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lkh/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0036

    return v0
.end method

.method public final u()V
    .locals 5

    .line 1
    const-string v0, "sign_file"

    .line 2
    .line 3
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p0}, Lkh/e;->j(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0b04b8

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/widget/ImageView;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->C:Landroid/widget/ImageView;

    .line 20
    .line 21
    const v1, 0x7f0b032b

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/widget/ImageView;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->D:Landroid/widget/ImageView;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, "/gj_ico.png"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->C:Landroid/widget/ImageView;

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->C:Landroid/widget/ImageView;

    .line 89
    .line 90
    const v2, 0x7f080134

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v2, "/gj_banner.png"

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_1

    .line 122
    .line 123
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->D:Landroid/widget/ImageView;

    .line 124
    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->D:Landroid/widget/ImageView;

    .line 153
    .line 154
    const v2, 0x7f080133

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    .line 159
    .line 160
    :goto_1
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->C:Landroid/widget/ImageView;

    .line 161
    .line 162
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->D:Landroid/widget/ImageView;

    .line 166
    .line 167
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    const v1, 0x7f0b03b7

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Landroid/widget/TextView;

    .line 178
    .line 179
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->F:Landroid/widget/TextView;

    .line 180
    .line 181
    const v1, 0x7f0b03b5

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    const v2, 0x7f0b03b6

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->F:Landroid/widget/TextView;

    .line 202
    .line 203
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    const v2, 0x7f0b03a4

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    const v2, 0x7f0b03a5

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    .line 225
    .line 226
    const v2, 0x7f0b03ad

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    .line 235
    .line 236
    const v2, 0x7f0b039b

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    check-cast v2, Landroid/widget/TextView;

    .line 244
    .line 245
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->G:Landroid/widget/TextView;

    .line 246
    .line 247
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 255
    .line 256
    .line 257
    const v1, 0x7f0b04cd

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    check-cast v1, Landroid/widget/TextView;

    .line 265
    .line 266
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->E:Landroid/widget/TextView;

    .line 267
    .line 268
    const v1, 0x7f0b0445

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    check-cast v1, Landroid/widget/EditText;

    .line 276
    .line 277
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->K:Landroid/widget/EditText;

    .line 278
    .line 279
    const v1, 0x7f0b042b

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    check-cast v1, Landroid/widget/EditText;

    .line 287
    .line 288
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->I:Landroid/widget/EditText;

    .line 289
    .line 290
    const v1, 0x7f0b042c

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    check-cast v1, Landroid/widget/EditText;

    .line 298
    .line 299
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->H:Landroid/widget/EditText;

    .line 300
    .line 301
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->K:Landroid/widget/EditText;

    .line 302
    .line 303
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 304
    .line 305
    .line 306
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->I:Landroid/widget/EditText;

    .line 307
    .line 308
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 309
    .line 310
    .line 311
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->H:Landroid/widget/EditText;

    .line 312
    .line 313
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 314
    .line 315
    .line 316
    const v1, 0x7f0b04db

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 324
    .line 325
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 326
    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .line 331
    .line 332
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 333
    .line 334
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string v2, "/diy.json"

    .line 342
    .line 343
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->N:Ljava/lang/String;

    .line 351
    .line 352
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    if-eqz v1, :cond_2

    .line 357
    .line 358
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 359
    .line 360
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->N:Ljava/lang/String;

    .line 361
    .line 362
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-static {v1}, Lq4/a;->J(Ljava/io/File;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-static {v1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 378
    .line 379
    iget-object v1, v1, Lz7/s;->a:Lb8/n;

    .line 380
    .line 381
    invoke-virtual {v1, v0}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-eqz v1, :cond_2

    .line 386
    .line 387
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->E:Landroid/widget/TextView;

    .line 388
    .line 389
    new-instance v2, Ljava/io/File;

    .line 390
    .line 391
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 392
    .line 393
    invoke-virtual {v3, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    .line 410
    .line 411
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->K:Landroid/widget/EditText;

    .line 412
    .line 413
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 414
    .line 415
    const-string v2, "sign_password"

    .line 416
    .line 417
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    .line 427
    .line 428
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->I:Landroid/widget/EditText;

    .line 429
    .line 430
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 431
    .line 432
    const-string v2, "sign_alias"

    .line 433
    .line 434
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    .line 444
    .line 445
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->H:Landroid/widget/EditText;

    .line 446
    .line 447
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 448
    .line 449
    const-string v2, "sign_alias_password"

    .line 450
    .line 451
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .line 461
    .line 462
    goto :goto_2

    .line 463
    :catch_0
    nop

    .line 464
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 465
    .line 466
    if-nez v0, :cond_3

    .line 467
    .line 468
    new-instance v0, Lz7/s;

    .line 469
    .line 470
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 471
    .line 472
    .line 473
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 474
    .line 475
    :cond_3
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 476
    .line 477
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 478
    .line 479
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 480
    .line 481
    const v2, 0x7f130160

    .line 482
    .line 483
    .line 484
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    move-result v1

    .line 496
    if-nez v1, :cond_4

    .line 497
    .line 498
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 499
    .line 500
    const v2, 0x7f13015d

    .line 501
    .line 502
    .line 503
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    if-nez v1, :cond_4

    .line 516
    .line 517
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 518
    .line 519
    const v2, 0x7f13015e

    .line 520
    .line 521
    .line 522
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    if-nez v1, :cond_4

    .line 535
    .line 536
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 537
    .line 538
    const v2, 0x7f13015c

    .line 539
    .line 540
    .line 541
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v1

    .line 553
    if-nez v1, :cond_4

    .line 554
    .line 555
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 556
    .line 557
    const v1, 0x7f13015f

    .line 558
    .line 559
    .line 560
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    if-eqz v0, :cond_5

    .line 573
    .line 574
    :cond_4
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 575
    .line 576
    const/16 v1, 0x8

    .line 577
    .line 578
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 579
    .line 580
    .line 581
    :cond_5
    new-instance v0, Lha/u9;

    .line 582
    .line 583
    invoke-direct {v0, p0, p0}, Lha/u9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 584
    .line 585
    .line 586
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->S:Lha/u9;

    .line 587
    .line 588
    return-void
.end method
