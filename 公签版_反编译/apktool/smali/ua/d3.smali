.class public final synthetic Lua/d3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityJiliE01;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityJiliE01;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/d3;->a:I

    iput-object p1, p0, Lua/d3;->b:Lcom/yunpan/appmanage/ui/ActivityJiliE01;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "\u5199\u5165su\u5931\u8d25"

    .line 6
    .line 7
    const-string v0, "rm -rf "

    .line 8
    .line 9
    const-string v4, "mv \'"

    .line 10
    .line 11
    const-string v5, "dd if=\'"

    .line 12
    .line 13
    const-string v9, "mount -o remount,rw -t ext4 /system"

    .line 14
    .line 15
    const-string v10, "touch /system/app/111222"

    .line 16
    .line 17
    const-string v11, "rm -rf /system/app/111222"

    .line 18
    .line 19
    const-string v12, "touch /system/bin/111222"

    .line 20
    .line 21
    const-string v13, "rm -rf /system/bin/111222"

    .line 22
    .line 23
    const-class v14, Ljava/lang/Throwable;

    .line 24
    .line 25
    const-string v15, "addSuppressed"

    .line 26
    .line 27
    iget-object v6, v1, Lua/d3;->b:Lcom/yunpan/appmanage/ui/ActivityJiliE01;

    .line 28
    .line 29
    iget v8, v1, Lua/d3;->a:I

    .line 30
    .line 31
    packed-switch v8, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    sget v8, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->F:I

    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const-string v8, "/su_xingrui"

    .line 40
    .line 41
    sget-object v16, Lfa/b0;->a:La2/w0;

    .line 42
    .line 43
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const-string v16, "id"

    .line 47
    .line 48
    invoke-static/range {v16 .. v16}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 49
    .line 50
    .line 51
    move-result-object v17

    .line 52
    invoke-virtual/range {v17 .. v17}, Lfa/a0;->a()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    const-string v1, "uid=0(root)"

    .line 57
    .line 58
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    move-object/from16 v17, v3

    .line 63
    .line 64
    const-string v3, "\u63d0\u6743\u5931\u8d25\uff0c\u4e0d\u9002\u5408\u6b64\u7cfb\u7edf"

    .line 65
    .line 66
    if-eqz v7, :cond_2

    .line 67
    .line 68
    invoke-static {v9}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 69
    .line 70
    .line 71
    invoke-static {v10}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    iget v7, v7, Lfa/a0;->a:I

    .line 76
    .line 77
    if-eqz v7, :cond_0

    .line 78
    .line 79
    sget-object v7, Lfa/g0;->a:Lfa/h0;

    .line 80
    .line 81
    invoke-virtual {v7}, Lfa/h0;->f()Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_2

    .line 86
    .line 87
    :goto_0
    invoke-static {v3, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_9

    .line 91
    .line 92
    :cond_0
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 93
    .line 94
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    iput-boolean v1, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 98
    .line 99
    invoke-static {v11}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 100
    .line 101
    .line 102
    invoke-static {v12}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iget v3, v3, Lfa/a0;->a:I

    .line 107
    .line 108
    if-nez v3, :cond_1

    .line 109
    .line 110
    iput-boolean v1, v0, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 111
    .line 112
    invoke-static {v13}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 113
    .line 114
    .line 115
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_9

    .line 119
    .line 120
    :cond_2
    sget-object v7, Lfa/g0;->a:Lfa/h0;

    .line 121
    .line 122
    invoke-virtual {v7}, Lfa/h0;->d()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v18

    .line 126
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v18

    .line 130
    if-eqz v18, :cond_3

    .line 131
    .line 132
    const-string v0, "\u4e0d\u662f\u661f\u745e\u8f66\u673a"

    .line 133
    .line 134
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_9

    .line 138
    .line 139
    :cond_3
    :try_start_0
    iget-object v6, v6, Lda/g;->A:Lda/g;

    .line 140
    .line 141
    invoke-virtual {v6}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    move-object/from16 v18, v15

    .line 146
    .line 147
    const v15, 0x7f120025

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 151
    .line 152
    .line 153
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :try_start_1
    new-instance v15, Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 155
    .line 156
    move-object/from16 v19, v14

    .line 157
    .line 158
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7}, Lfa/h0;->d()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-direct {v15, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 178
    .line 179
    .line 180
    const/high16 v7, 0x100000

    .line 181
    .line 182
    :try_start_3
    new-array v7, v7, [B

    .line 183
    .line 184
    :goto_1
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    .line 185
    .line 186
    .line 187
    move-result v14

    .line 188
    move-object/from16 v20, v13

    .line 189
    .line 190
    const/4 v13, -0x1

    .line 191
    if-eq v14, v13, :cond_4

    .line 192
    .line 193
    const/4 v13, 0x0

    .line 194
    invoke-virtual {v15, v7, v13, v14}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    .line 196
    .line 197
    move-object/from16 v13, v20

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :catchall_0
    move-exception v0

    .line 201
    move-object v1, v0

    .line 202
    goto/16 :goto_3

    .line 203
    .line 204
    :cond_4
    :try_start_4
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 205
    .line 206
    .line 207
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 208
    .line 209
    .line 210
    sget-object v6, Lfa/b0;->a:La2/w0;

    .line 211
    .line 212
    new-instance v7, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    sget-object v5, Lfa/g0;->a:Lfa/h0;

    .line 218
    .line 219
    invoke-virtual {v5}, Lfa/h0;->d()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v13

    .line 223
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v13, "/su_xingrui\' of=\'/data/local/tmp/su_xingrui\'"

    .line 227
    .line 228
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    invoke-static {v7}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 239
    .line 240
    .line 241
    new-instance v6, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5}, Lfa/h0;->d()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v4, "/su_xingrui\' \'/data/local/tmp/\'"

    .line 254
    .line 255
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-static {v4}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 263
    .line 264
    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v5}, Lfa/h0;->d()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 285
    .line 286
    .line 287
    const-string v0, "chmod 777 \'/data/local/tmp/su_xingrui\'"

    .line 288
    .line 289
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 290
    .line 291
    .line 292
    const-string v0, "/data/local/tmp/su_xingrui"

    .line 293
    .line 294
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    iget v0, v0, Lfa/a0;->a:I

    .line 299
    .line 300
    const-string v4, "\u63d0\u6743\u5931\u8d25"

    .line 301
    .line 302
    if-eqz v0, :cond_5

    .line 303
    .line 304
    :goto_2
    invoke-static {v4, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_9

    .line 308
    .line 309
    :cond_5
    invoke-static/range {v16 .. v16}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-nez v0, :cond_6

    .line 322
    .line 323
    goto :goto_2

    .line 324
    :cond_6
    invoke-static {v9}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 325
    .line 326
    .line 327
    invoke-static {v10}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    iget v0, v0, Lfa/a0;->a:I

    .line 332
    .line 333
    if-eqz v0, :cond_7

    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :cond_7
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 338
    .line 339
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 340
    .line 341
    const/4 v1, 0x1

    .line 342
    iput-boolean v1, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 343
    .line 344
    invoke-static {v11}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 345
    .line 346
    .line 347
    invoke-static {v12}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    iget v3, v3, Lfa/a0;->a:I

    .line 352
    .line 353
    if-nez v3, :cond_8

    .line 354
    .line 355
    iput-boolean v1, v0, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 356
    .line 357
    invoke-static/range {v20 .. v20}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 358
    .line 359
    .line 360
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_9

    .line 364
    .line 365
    :catch_0
    move-object/from16 v1, v17

    .line 366
    .line 367
    goto :goto_8

    .line 368
    :catchall_1
    move-exception v0

    .line 369
    move-object v1, v0

    .line 370
    move-object/from16 v7, v18

    .line 371
    .line 372
    move-object/from16 v8, v19

    .line 373
    .line 374
    goto :goto_6

    .line 375
    :goto_3
    :try_start_6
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 376
    .line 377
    .line 378
    :catch_1
    move-object/from16 v7, v18

    .line 379
    .line 380
    move-object/from16 v8, v19

    .line 381
    .line 382
    goto :goto_5

    .line 383
    :catchall_2
    move-exception v0

    .line 384
    move-object v3, v0

    .line 385
    const/4 v4, 0x1

    .line 386
    :try_start_7
    new-array v0, v4, [Ljava/lang/Class;

    .line 387
    .line 388
    const/4 v5, 0x0

    .line 389
    aput-object v19, v0, v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 390
    .line 391
    move-object/from16 v7, v18

    .line 392
    .line 393
    move-object/from16 v8, v19

    .line 394
    .line 395
    :try_start_8
    invoke-virtual {v8, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    new-array v9, v4, [Ljava/lang/Object;

    .line 400
    .line 401
    aput-object v3, v9, v5

    .line 402
    .line 403
    invoke-virtual {v0, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 404
    .line 405
    .line 406
    goto :goto_5

    .line 407
    :goto_4
    move-object v1, v0

    .line 408
    goto :goto_6

    .line 409
    :catch_2
    :goto_5
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 410
    :catchall_3
    move-exception v0

    .line 411
    goto :goto_4

    .line 412
    :catchall_4
    move-exception v0

    .line 413
    move-object/from16 v7, v18

    .line 414
    .line 415
    move-object/from16 v8, v19

    .line 416
    .line 417
    goto :goto_4

    .line 418
    :catchall_5
    move-exception v0

    .line 419
    move-object v8, v14

    .line 420
    move-object/from16 v7, v18

    .line 421
    .line 422
    goto :goto_4

    .line 423
    :goto_6
    if-eqz v6, :cond_9

    .line 424
    .line 425
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 426
    .line 427
    .line 428
    goto :goto_7

    .line 429
    :catchall_6
    move-exception v0

    .line 430
    move-object v3, v0

    .line 431
    const/4 v4, 0x1

    .line 432
    :try_start_b
    new-array v0, v4, [Ljava/lang/Class;

    .line 433
    .line 434
    const/4 v5, 0x0

    .line 435
    aput-object v8, v0, v5

    .line 436
    .line 437
    invoke-virtual {v8, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    new-array v4, v4, [Ljava/lang/Object;

    .line 442
    .line 443
    aput-object v3, v4, v5

    .line 444
    .line 445
    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 446
    .line 447
    .line 448
    :catch_3
    :cond_9
    :goto_7
    :try_start_c
    throw v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 449
    :goto_8
    invoke-static {v1, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 450
    .line 451
    .line 452
    :goto_9
    return-void

    .line 453
    :pswitch_0
    move-object v1, v3

    .line 454
    move-object/from16 v20, v13

    .line 455
    .line 456
    move-object v8, v14

    .line 457
    move-object v7, v15

    .line 458
    sget v3, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->F:I

    .line 459
    .line 460
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 461
    .line 462
    .line 463
    const-string v3, "/su1"

    .line 464
    .line 465
    :try_start_d
    iget-object v6, v6, Lda/g;->A:Lda/g;

    .line 466
    .line 467
    invoke-virtual {v6}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 468
    .line 469
    .line 470
    move-result-object v6

    .line 471
    const v13, 0x7f120025

    .line 472
    .line 473
    .line 474
    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 475
    .line 476
    .line 477
    move-result-object v6
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 478
    :try_start_e
    new-instance v13, Ljava/io/FileOutputStream;

    .line 479
    .line 480
    new-instance v14, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .line 484
    .line 485
    sget-object v15, Lfa/g0;->a:Lfa/h0;

    .line 486
    .line 487
    invoke-virtual {v15}, Lfa/h0;->d()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v15

    .line 491
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v14

    .line 501
    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 502
    .line 503
    .line 504
    const/high16 v14, 0x100000

    .line 505
    .line 506
    :try_start_f
    new-array v14, v14, [B

    .line 507
    .line 508
    :goto_a
    invoke-virtual {v6, v14}, Ljava/io/InputStream;->read([B)I

    .line 509
    .line 510
    .line 511
    move-result v15
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 512
    move-object/from16 v17, v1

    .line 513
    .line 514
    const/4 v1, -0x1

    .line 515
    if-eq v15, v1, :cond_a

    .line 516
    .line 517
    const/4 v1, 0x0

    .line 518
    :try_start_10
    invoke-virtual {v13, v14, v1, v15}, Ljava/io/OutputStream;->write([BII)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 519
    .line 520
    .line 521
    move-object/from16 v1, v17

    .line 522
    .line 523
    goto :goto_a

    .line 524
    :catchall_7
    move-exception v0

    .line 525
    :goto_b
    move-object v1, v0

    .line 526
    goto/16 :goto_e

    .line 527
    .line 528
    :cond_a
    :try_start_11
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 529
    .line 530
    .line 531
    :try_start_12
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    .line 532
    .line 533
    .line 534
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 535
    .line 536
    new-instance v6, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    sget-object v5, Lfa/g0;->a:Lfa/h0;

    .line 542
    .line 543
    invoke-virtual {v5}, Lfa/h0;->d()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v7

    .line 547
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    const-string v7, "/su1\' of=\'/system/bin/su\'"

    .line 551
    .line 552
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v6

    .line 559
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 560
    .line 561
    .line 562
    invoke-static {v6}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 563
    .line 564
    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    .line 566
    .line 567
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v5}, Lfa/h0;->d()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v4

    .line 574
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    const-string v4, "/su1\' \'/system/bin/\'"

    .line 578
    .line 579
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 587
    .line 588
    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v5}, Lfa/h0;->d()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 609
    .line 610
    .line 611
    const-string v0, "chmod 755 \'/system/bin/su\'"

    .line 612
    .line 613
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    iget v0, v0, Lfa/a0;->a:I

    .line 618
    .line 619
    const-string v1, "root\u5931\u8d25"

    .line 620
    .line 621
    if-eqz v0, :cond_b

    .line 622
    .line 623
    :catch_4
    :goto_c
    invoke-static {v1, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 624
    .line 625
    .line 626
    goto/16 :goto_12

    .line 627
    .line 628
    :cond_b
    const/4 v3, 0x1

    .line 629
    new-array v0, v3, [Ljava/lang/String;

    .line 630
    .line 631
    const-string v4, "su"

    .line 632
    .line 633
    const/4 v5, 0x0

    .line 634
    aput-object v4, v0, v5

    .line 635
    .line 636
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    iget v0, v0, Landroidx/room/s;->b:I

    .line 645
    .line 646
    if-eqz v0, :cond_c

    .line 647
    .line 648
    goto :goto_c

    .line 649
    :cond_c
    new-array v0, v3, [Ljava/lang/String;

    .line 650
    .line 651
    aput-object v9, v0, v5

    .line 652
    .line 653
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 658
    .line 659
    .line 660
    new-array v0, v3, [Ljava/lang/String;

    .line 661
    .line 662
    aput-object v10, v0, v5

    .line 663
    .line 664
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    iget v0, v0, Landroidx/room/s;->b:I

    .line 673
    .line 674
    if-nez v0, :cond_d

    .line 675
    .line 676
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 677
    .line 678
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 679
    .line 680
    const/4 v1, 0x1

    .line 681
    iput-boolean v1, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 682
    .line 683
    new-array v3, v1, [Ljava/lang/String;

    .line 684
    .line 685
    const/4 v4, 0x0

    .line 686
    aput-object v11, v3, v4

    .line 687
    .line 688
    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 689
    .line 690
    .line 691
    move-result-object v3

    .line 692
    invoke-virtual {v3}, Lv9/e;->l0()Landroidx/room/s;

    .line 693
    .line 694
    .line 695
    new-array v3, v1, [Ljava/lang/String;

    .line 696
    .line 697
    aput-object v12, v3, v4

    .line 698
    .line 699
    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 700
    .line 701
    .line 702
    move-result-object v3

    .line 703
    invoke-virtual {v3}, Lv9/e;->l0()Landroidx/room/s;

    .line 704
    .line 705
    .line 706
    move-result-object v3

    .line 707
    iget v3, v3, Landroidx/room/s;->b:I

    .line 708
    .line 709
    if-nez v3, :cond_d

    .line 710
    .line 711
    iput-boolean v1, v0, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 712
    .line 713
    new-array v0, v1, [Ljava/lang/String;

    .line 714
    .line 715
    aput-object v20, v0, v4

    .line 716
    .line 717
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 722
    .line 723
    .line 724
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 725
    .line 726
    .line 727
    goto :goto_12

    .line 728
    :catch_5
    move-object/from16 v1, v17

    .line 729
    .line 730
    goto :goto_c

    .line 731
    :catchall_8
    move-exception v0

    .line 732
    :goto_d
    move-object v1, v0

    .line 733
    goto :goto_10

    .line 734
    :catchall_9
    move-exception v0

    .line 735
    move-object/from16 v17, v1

    .line 736
    .line 737
    goto/16 :goto_b

    .line 738
    .line 739
    :goto_e
    :try_start_13
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    .line 740
    .line 741
    .line 742
    goto :goto_f

    .line 743
    :catchall_a
    move-exception v0

    .line 744
    move-object v3, v0

    .line 745
    const/4 v4, 0x1

    .line 746
    :try_start_14
    new-array v0, v4, [Ljava/lang/Class;

    .line 747
    .line 748
    const/4 v5, 0x0

    .line 749
    aput-object v8, v0, v5

    .line 750
    .line 751
    invoke-virtual {v8, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    new-array v9, v4, [Ljava/lang/Object;

    .line 756
    .line 757
    aput-object v3, v9, v5

    .line 758
    .line 759
    invoke-virtual {v0, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 760
    .line 761
    .line 762
    :catch_6
    :goto_f
    :try_start_15
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 763
    :catchall_b
    move-exception v0

    .line 764
    move-object/from16 v17, v1

    .line 765
    .line 766
    goto :goto_d

    .line 767
    :goto_10
    if-eqz v6, :cond_e

    .line 768
    .line 769
    :try_start_16
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    .line 770
    .line 771
    .line 772
    goto :goto_11

    .line 773
    :catchall_c
    move-exception v0

    .line 774
    move-object v3, v0

    .line 775
    const/4 v4, 0x1

    .line 776
    :try_start_17
    new-array v0, v4, [Ljava/lang/Class;

    .line 777
    .line 778
    const/4 v5, 0x0

    .line 779
    aput-object v8, v0, v5

    .line 780
    .line 781
    invoke-virtual {v8, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    new-array v4, v4, [Ljava/lang/Object;

    .line 786
    .line 787
    aput-object v3, v4, v5

    .line 788
    .line 789
    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7

    .line 790
    .line 791
    .line 792
    :catch_7
    :cond_e
    :goto_11
    :try_start_18
    throw v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_5

    .line 793
    :goto_12
    return-void

    .line 794
    nop

    .line 795
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 8

    .line 1
    const/4 p1, 0x4

    .line 2
    const/4 p2, 0x5

    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    sget v4, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->F:I

    .line 8
    .line 9
    iget-object v4, p0, Lua/d3;->b:Lcom/yunpan/appmanage/ui/ActivityJiliE01;

    .line 10
    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v5, "\u8bf7\u5148\u8fde\u63a5adb"

    .line 15
    .line 16
    if-nez p3, :cond_2

    .line 17
    .line 18
    sget-object p1, Lfa/g0;->a:Lfa/h0;

    .line 19
    .line 20
    invoke-virtual {p1}, Lfa/h0;->f()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object p1, Lfa/h;->a:Lfa/j;

    .line 28
    .line 29
    invoke-virtual {p1}, Lfa/j;->i()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    sget-object p1, Lfa/l;->a:Lfa/m;

    .line 36
    .line 37
    invoke-virtual {p1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    invoke-static {v5}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :cond_1
    :goto_0
    new-instance p1, Lua/d3;

    .line 49
    .line 50
    invoke-direct {p1, v4, v2}, Lua/d3;-><init>(Lcom/yunpan/appmanage/ui/ActivityJiliE01;I)V

    .line 51
    .line 52
    .line 53
    new-instance p2, Lmc/c;

    .line 54
    .line 55
    invoke-direct {p2, v3, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance p2, Lua/f3;

    .line 73
    .line 74
    invoke-direct {p2, v4, v1}, Lua/f3;-><init>(Lcom/yunpan/appmanage/ui/ActivityJiliE01;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :cond_2
    const-string v6, "\u6b64\u529f\u80fd\u6682\u672a\u5f00\u653e"

    .line 83
    .line 84
    if-ne p3, v1, :cond_3

    .line 85
    .line 86
    invoke-static {v6}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :cond_3
    const-string v7, "\u8bf7\u5148\u63d0\u6743"

    .line 92
    .line 93
    if-ne p3, v2, :cond_7

    .line 94
    .line 95
    sget-object p1, Lfa/g0;->a:Lfa/h0;

    .line 96
    .line 97
    invoke-virtual {p1}, Lfa/h0;->f()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    const-string p1, "\u60a8\u4e0d\u662f\u5df2root\u4e86\u5417\uff1f"

    .line 104
    .line 105
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :cond_4
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {}, La2/w0;->P()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_5

    .line 120
    .line 121
    invoke-static {v5}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_1

    .line 125
    .line 126
    :cond_5
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 127
    .line 128
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 129
    .line 130
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 131
    .line 132
    if-nez p1, :cond_6

    .line 133
    .line 134
    invoke-static {v7}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :cond_6
    new-instance p1, Lua/d3;

    .line 140
    .line 141
    invoke-direct {p1, v4, v1}, Lua/d3;-><init>(Lcom/yunpan/appmanage/ui/ActivityJiliE01;I)V

    .line 142
    .line 143
    .line 144
    new-instance p2, Lmc/c;

    .line 145
    .line 146
    invoke-direct {p2, v3, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 150
    .line 151
    invoke-virtual {p2, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {p1, p2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    new-instance p2, Lua/f3;

    .line 164
    .line 165
    invoke-direct {p2, v4, v2}, Lua/f3;-><init>(Lcom/yunpan/appmanage/ui/ActivityJiliE01;I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_1

    .line 172
    .line 173
    :cond_7
    if-ne p3, v0, :cond_a

    .line 174
    .line 175
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-static {}, La2/w0;->P()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-nez p1, :cond_8

    .line 185
    .line 186
    invoke-static {v5}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :cond_8
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 192
    .line 193
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 194
    .line 195
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 196
    .line 197
    if-nez p1, :cond_9

    .line 198
    .line 199
    invoke-static {v7}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_9
    new-instance p1, Lua/v0;

    .line 205
    .line 206
    const/16 p3, 0x8

    .line 207
    .line 208
    invoke-direct {p1, p3}, Lua/v0;-><init>(I)V

    .line 209
    .line 210
    .line 211
    new-instance p3, Lmc/c;

    .line 212
    .line 213
    invoke-direct {p3, v3, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 217
    .line 218
    invoke-virtual {p3, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 223
    .line 224
    .line 225
    move-result-object p3

    .line 226
    invoke-virtual {p1, p3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    new-instance p3, Lua/f3;

    .line 231
    .line 232
    invoke-direct {p3, v4, p2}, Lua/f3;-><init>(Lcom/yunpan/appmanage/ui/ActivityJiliE01;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, p3}, Lec/b;->b(Lec/e;)V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_1

    .line 239
    .line 240
    :cond_a
    if-ne p3, p1, :cond_c

    .line 241
    .line 242
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 243
    .line 244
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 245
    .line 246
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 247
    .line 248
    if-nez p1, :cond_b

    .line 249
    .line 250
    invoke-static {v7}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 251
    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_b
    new-instance p1, Lua/v0;

    .line 255
    .line 256
    const/16 p2, 0xa

    .line 257
    .line 258
    invoke-direct {p1, p2}, Lua/v0;-><init>(I)V

    .line 259
    .line 260
    .line 261
    new-instance p2, Lmc/c;

    .line 262
    .line 263
    invoke-direct {p2, v3, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 267
    .line 268
    invoke-virtual {p2, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 273
    .line 274
    .line 275
    move-result-object p2

    .line 276
    invoke-virtual {p1, p2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    new-instance p2, Lua/f3;

    .line 281
    .line 282
    invoke-direct {p2, v4, v0}, Lua/f3;-><init>(Lcom/yunpan/appmanage/ui/ActivityJiliE01;I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 286
    .line 287
    .line 288
    goto :goto_1

    .line 289
    :cond_c
    if-ne p3, p2, :cond_e

    .line 290
    .line 291
    sget-object p2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 292
    .line 293
    sget-object p2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 294
    .line 295
    iget-boolean p2, p2, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 296
    .line 297
    if-nez p2, :cond_d

    .line 298
    .line 299
    invoke-static {v7}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 300
    .line 301
    .line 302
    goto :goto_1

    .line 303
    :cond_d
    new-instance p2, Lua/v0;

    .line 304
    .line 305
    const/16 p3, 0x9

    .line 306
    .line 307
    invoke-direct {p2, p3}, Lua/v0;-><init>(I)V

    .line 308
    .line 309
    .line 310
    new-instance p3, Lmc/c;

    .line 311
    .line 312
    invoke-direct {p3, v3, p2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 316
    .line 317
    invoke-virtual {p3, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 322
    .line 323
    .line 324
    move-result-object p3

    .line 325
    invoke-virtual {p2, p3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 326
    .line 327
    .line 328
    move-result-object p2

    .line 329
    new-instance p3, Lua/f3;

    .line 330
    .line 331
    invoke-direct {p3, v4, p1}, Lua/f3;-><init>(Lcom/yunpan/appmanage/ui/ActivityJiliE01;I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p2, p3}, Lec/b;->b(Lec/e;)V

    .line 335
    .line 336
    .line 337
    goto :goto_1

    .line 338
    :cond_e
    const/4 p1, 0x6

    .line 339
    if-ne p3, p1, :cond_f

    .line 340
    .line 341
    invoke-virtual {v4, v1}, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->y(Z)V

    .line 342
    .line 343
    .line 344
    goto :goto_1

    .line 345
    :cond_f
    const/4 p1, 0x7

    .line 346
    if-ne p3, p1, :cond_10

    .line 347
    .line 348
    invoke-virtual {v4, v3}, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->y(Z)V

    .line 349
    .line 350
    .line 351
    goto :goto_1

    .line 352
    :cond_10
    invoke-static {v6}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 353
    .line 354
    .line 355
    :goto_1
    return-void
.end method
