.class public final synthetic Lua/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityImage;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/g2;->a:I

    iput-object p1, p0, Lua/g2;->b:Lcom/yunpan/appmanage/ui/ActivityImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 12

    .line 1
    const-string v0, ".jpeg"

    .line 2
    .line 3
    const-string v1, ".jpg"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lua/g2;->b:Lcom/yunpan/appmanage/ui/ActivityImage;

    .line 7
    .line 8
    iget v4, p0, Lua/g2;->a:I

    .line 9
    .line 10
    packed-switch v4, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget v4, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 19
    .line 20
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 21
    .line 22
    iget-object v5, v4, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 23
    .line 24
    iget-object v6, v5, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 25
    .line 26
    iget v5, v5, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 27
    .line 28
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Lx9/w3;

    .line 33
    .line 34
    iget-object v5, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    iget-object v6, v4, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 41
    .line 42
    iget-object v7, v6, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 43
    .line 44
    iget v6, v6, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 45
    .line 46
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Lx9/w3;

    .line 51
    .line 52
    iget-object v6, v6, Lx9/w3;->b:Ljava/lang/String;

    .line 53
    .line 54
    const-string v7, "."

    .line 55
    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_1

    .line 69
    .line 70
    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const-string v0, ".png"

    .line 78
    .line 79
    invoke-static {v6, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    :goto_0
    invoke-static {v6, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v5, "\\cp -R \'"

    .line 91
    .line 92
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v3, v3, Lda/g;->A:Lda/g;

    .line 96
    .line 97
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v3, "/rotation.ming\' \'"

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v3, "\'"

    .line 113
    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    const/4 v3, 0x1

    .line 122
    new-array v3, v3, [Ljava/lang/String;

    .line 123
    .line 124
    aput-object v1, v3, v2

    .line 125
    .line 126
    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1}, Lv9/e;->l0()Landroidx/room/s;

    .line 131
    .line 132
    .line 133
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_3

    .line 138
    .line 139
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/db/MyDb;->addIfFile(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    iget-object v1, v4, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 147
    .line 148
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 149
    .line 150
    iget v1, v1, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 151
    .line 152
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Lx9/w3;

    .line 157
    .line 158
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_2

    .line 165
    .line 166
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    new-instance v2, Lja/e;

    .line 171
    .line 172
    invoke-direct {v2, v0}, Lja/e;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v2}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_2
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 180
    .line 181
    iget-object v2, v4, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 182
    .line 183
    iget-object v3, v2, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 184
    .line 185
    iget v2, v2, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 186
    .line 187
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    check-cast v2, Lx9/w3;

    .line 192
    .line 193
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    invoke-static {v2}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    iget-object v2, v4, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 210
    .line 211
    iget-object v3, v2, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 212
    .line 213
    iget v2, v2, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 214
    .line 215
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Lx9/w3;

    .line 220
    .line 221
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 222
    .line 223
    invoke-interface {v1, v2}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-instance v1, Lx9/w3;

    .line 227
    .line 228
    invoke-direct {v1, v0}, Lx9/w3;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    new-instance v2, Lja/e;

    .line 236
    .line 237
    iget-object v3, v4, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 238
    .line 239
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 240
    .line 241
    iget v3, v3, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 242
    .line 243
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    check-cast v3, Lx9/w3;

    .line 248
    .line 249
    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 250
    .line 251
    invoke-direct {v2, v3, v1}, Lja/e;-><init>(Ljava/lang/String;Lx9/w3;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v2}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    iget-object v0, v4, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 258
    .line 259
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 260
    .line 261
    iget v0, v0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 262
    .line 263
    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    :goto_2
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 267
    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_3
    new-instance v0, Ljava/lang/Throwable;

    .line 271
    .line 272
    const-string v1, "\u4fdd\u5b58\u5931\u8d25"

    .line 273
    .line 274
    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 278
    .line 279
    .line 280
    :goto_3
    return-void

    .line 281
    :pswitch_0
    sget v2, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 282
    .line 283
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 287
    .line 288
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 289
    .line 290
    iget-object v4, v2, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 291
    .line 292
    iget-object v5, v4, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 293
    .line 294
    iget v4, v4, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 295
    .line 296
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    check-cast v4, Lx9/w3;

    .line 301
    .line 302
    iget-object v4, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 303
    .line 304
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    new-instance v10, Landroid/graphics/Matrix;

    .line 309
    .line 310
    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 311
    .line 312
    .line 313
    iget v4, v3, Lcom/yunpan/appmanage/ui/ActivityImage;->X:F

    .line 314
    .line 315
    invoke-virtual {v10, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 319
    .line 320
    .line 321
    move-result v8

    .line 322
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 323
    .line 324
    .line 325
    move-result v9

    .line 326
    const/4 v11, 0x1

    .line 327
    const/4 v6, 0x0

    .line 328
    const/4 v7, 0x0

    .line 329
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    new-instance v5, Ljava/io/FileOutputStream;

    .line 334
    .line 335
    new-instance v6, Ljava/io/File;

    .line 336
    .line 337
    new-instance v7, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    iget-object v3, v3, Lda/g;->A:Lda/g;

    .line 343
    .line 344
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v3, "/rotation.ming"

    .line 352
    .line 353
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 364
    .line 365
    .line 366
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 367
    .line 368
    iget-object v3, v2, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 369
    .line 370
    iget v2, v2, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 371
    .line 372
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    check-cast v2, Lx9/w3;

    .line 377
    .line 378
    iget-object v2, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 379
    .line 380
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    const/16 v3, 0x64

    .line 389
    .line 390
    if-nez v1, :cond_5

    .line 391
    .line 392
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-eqz v0, :cond_4

    .line 397
    .line 398
    goto :goto_4

    .line 399
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 400
    .line 401
    invoke-virtual {v4, v0, v3, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 402
    .line 403
    .line 404
    goto :goto_5

    .line 405
    :cond_5
    :goto_4
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 406
    .line 407
    invoke-virtual {v4, v0, v3, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 408
    .line 409
    .line 410
    :goto_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 414
    .line 415
    .line 416
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 417
    .line 418
    .line 419
    return-void

    .line 420
    nop

    .line 421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
