.class public final Lcom/yunpan/appmanage/util/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/yunpan/appmanage/util/p;->a:I

    iput-object p1, p0, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/yunpan/appmanage/util/p;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/yunpan/appmanage/util/p;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/yunpan/appmanage/util/p;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lba/i;

    .line 6
    .line 7
    iget-object v2, v0, Lba/i;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lja/b;

    .line 10
    .line 11
    iget-boolean v2, v2, Lja/b;->l:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lba/i;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :try_start_0
    sget-object v0, Lfa/a;->a:Lfa/b;

    .line 25
    .line 26
    iget-object v0, v0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 27
    .line 28
    iget-object v3, v1, Lcom/yunpan/appmanage/util/p;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Ljava/io/File;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v0, v3}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->openFileRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 37
    .line 38
    .line 39
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :goto_0
    move-object v3, v0

    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    move-object v4, v2

    .line 44
    move-object v5, v4

    .line 45
    move-object v6, v5

    .line 46
    move-object v8, v6

    .line 47
    move-object/from16 v19, v8

    .line 48
    .line 49
    goto/16 :goto_10

    .line 50
    .line 51
    :catch_0
    :try_start_1
    sget-object v0, Lfa/a;->a:Lfa/b;

    .line 52
    .line 53
    iget-object v0, v0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 54
    .line 55
    iget-object v3, v1, Lcom/yunpan/appmanage/util/p;->b:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v3, Ljava/io/File;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-interface {v0, v3}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->openFileRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 64
    .line 65
    .line 66
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    goto :goto_0

    .line 68
    :goto_1
    :try_start_2
    sget-object v0, Lfa/a;->a:Lfa/b;

    .line 69
    .line 70
    iget-object v0, v0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 71
    .line 72
    iget-object v4, v1, Lcom/yunpan/appmanage/util/p;->c:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v4, Ljava/io/File;

    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-interface {v0, v4}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->openFileWrite(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 81
    .line 82
    .line 83
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    :goto_2
    move-object v4, v0

    .line 85
    goto :goto_3

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    move-object v4, v2

    .line 88
    move-object v5, v4

    .line 89
    move-object v6, v5

    .line 90
    move-object v8, v6

    .line 91
    move-object/from16 v19, v3

    .line 92
    .line 93
    goto/16 :goto_10

    .line 94
    .line 95
    :catch_1
    :try_start_3
    sget-object v0, Lfa/a;->a:Lfa/b;

    .line 96
    .line 97
    iget-object v0, v0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 98
    .line 99
    iget-object v4, v1, Lcom/yunpan/appmanage/util/p;->c:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v4, Ljava/io/File;

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-interface {v0, v4}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->openFileWrite(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 108
    .line 109
    .line 110
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    .line 111
    goto :goto_2

    .line 112
    :goto_3
    :try_start_4
    new-instance v5, Ljava/io/FileInputStream;

    .line 113
    .line 114
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 119
    .line 120
    .line 121
    :try_start_5
    new-instance v6, Ljava/io/FileOutputStream;

    .line 122
    .line 123
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 128
    .line 129
    .line 130
    :try_start_6
    new-instance v7, Ljava/io/BufferedInputStream;

    .line 131
    .line 132
    invoke-direct {v7, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 133
    .line 134
    .line 135
    :try_start_7
    new-instance v8, Ljava/io/BufferedOutputStream;

    .line 136
    .line 137
    invoke-direct {v8, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 138
    .line 139
    .line 140
    const/high16 v0, 0x100000

    .line 141
    .line 142
    :try_start_8
    new-array v0, v0, [B

    .line 143
    .line 144
    :goto_4
    const/4 v2, 0x0

    .line 145
    const/4 v9, 0x0

    .line 146
    :cond_1
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    const/4 v11, -0x1

    .line 151
    if-eq v10, v11, :cond_3

    .line 152
    .line 153
    iget-object v11, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v11, Lba/i;

    .line 156
    .line 157
    iget-object v11, v11, Lba/i;->e:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v11, Lja/b;

    .line 160
    .line 161
    iget-boolean v11, v11, Lja/b;->l:Z

    .line 162
    .line 163
    if-nez v11, :cond_2

    .line 164
    .line 165
    invoke-virtual {v8, v0, v2, v10}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 166
    .line 167
    .line 168
    iget-object v11, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v11, Lba/i;

    .line 171
    .line 172
    iget-object v11, v11, Lba/i;->e:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v11, Lja/b;

    .line 175
    .line 176
    iget-object v11, v11, Lja/b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 177
    .line 178
    int-to-long v12, v10

    .line 179
    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 180
    .line 181
    .line 182
    add-int/lit8 v9, v9, 0x1

    .line 183
    .line 184
    const/16 v10, 0x32

    .line 185
    .line 186
    if-le v9, v10, :cond_1

    .line 187
    .line 188
    iget-object v9, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v9, Lba/i;

    .line 191
    .line 192
    iget-object v9, v9, Lba/i;->e:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v9, Lja/b;

    .line 195
    .line 196
    monitor-enter v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 197
    :try_start_9
    iget-object v10, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v10, Lba/i;

    .line 200
    .line 201
    iget-object v10, v10, Lba/i;->e:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v10, Lja/b;

    .line 204
    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 206
    .line 207
    .line 208
    move-result-wide v11

    .line 209
    iget-object v13, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v13, Lba/i;

    .line 212
    .line 213
    iget-object v13, v13, Lba/i;->e:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v13, Lja/b;

    .line 216
    .line 217
    iget-wide v13, v13, Lja/b;->j:J

    .line 218
    .line 219
    sub-long/2addr v11, v13

    .line 220
    invoke-static {v11, v12}, Lha/v9;->b(J)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v11

    .line 224
    iput-object v11, v10, Lja/b;->k:Ljava/lang/String;

    .line 225
    .line 226
    iget-object v10, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v10, Lba/i;

    .line 229
    .line 230
    iget-object v10, v10, Lba/i;->e:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v10, Lja/b;

    .line 233
    .line 234
    sget-object v11, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 235
    .line 236
    sget-object v11, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 237
    .line 238
    sget-object v11, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 239
    .line 240
    iget-object v12, v10, Lja/b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 241
    .line 242
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 243
    .line 244
    .line 245
    move-result-wide v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 246
    long-to-double v12, v12

    .line 247
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    .line 248
    .line 249
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    .line 250
    .line 251
    .line 252
    mul-double v12, v12, v14

    .line 253
    .line 254
    :try_start_a
    iget-object v14, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v14, Lba/i;

    .line 257
    .line 258
    iget-object v14, v14, Lba/i;->e:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v14, Lja/b;

    .line 261
    .line 262
    iget-object v14, v14, Lja/b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 263
    .line 264
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 265
    .line 266
    .line 267
    move-result-wide v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 268
    long-to-double v14, v14

    .line 269
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    .line 270
    .line 271
    .line 272
    div-double/2addr v12, v14

    .line 273
    :try_start_b
    invoke-virtual {v11, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v11

    .line 277
    iput-object v11, v10, Lja/b;->e:Ljava/lang/String;

    .line 278
    .line 279
    iget-object v10, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v10, Lba/i;

    .line 282
    .line 283
    iget-object v10, v10, Lba/i;->e:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v10, Lja/b;

    .line 286
    .line 287
    new-instance v11, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    const-string v12, "\u5747\u901f:"

    .line 293
    .line 294
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    iget-object v12, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v12, Lba/i;

    .line 300
    .line 301
    iget-object v12, v12, Lba/i;->e:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v12, Lja/b;

    .line 304
    .line 305
    iget-object v12, v12, Lja/b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 306
    .line 307
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 308
    .line 309
    .line 310
    move-result-wide v15

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 312
    .line 313
    .line 314
    move-result-wide v12

    .line 315
    iget-object v14, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v14, Lba/i;

    .line 318
    .line 319
    iget-object v14, v14, Lba/i;->e:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v14, Lja/b;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 322
    .line 323
    move-object/from16 v19, v3

    .line 324
    .line 325
    :try_start_c
    iget-wide v2, v14, Lja/b;->j:J

    .line 326
    .line 327
    sub-long v17, v12, v2

    .line 328
    .line 329
    const-wide/16 v13, 0x0

    .line 330
    .line 331
    invoke-static/range {v13 .. v18}, Lha/v9;->a(JJJ)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v2, " MB/s"

    .line 339
    .line 340
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    iput-object v2, v10, Lja/b;->d:Ljava/lang/String;

    .line 348
    .line 349
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 350
    :try_start_d
    iget-object v2, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v2, Lba/i;

    .line 353
    .line 354
    iget-object v2, v2, Lba/i;->f:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v2, Lcom/yunpan/appmanage/carsdk/u;

    .line 357
    .line 358
    const/16 v3, 0x12d

    .line 359
    .line 360
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 361
    .line 362
    .line 363
    move-object/from16 v3, v19

    .line 364
    .line 365
    goto/16 :goto_4

    .line 366
    .line 367
    :catchall_2
    move-exception v0

    .line 368
    :goto_5
    move-object v2, v7

    .line 369
    goto/16 :goto_10

    .line 370
    .line 371
    :catch_2
    move-exception v0

    .line 372
    :goto_6
    move-object v2, v7

    .line 373
    goto/16 :goto_d

    .line 374
    .line 375
    :catchall_3
    move-exception v0

    .line 376
    goto :goto_7

    .line 377
    :catchall_4
    move-exception v0

    .line 378
    move-object/from16 v19, v3

    .line 379
    .line 380
    :goto_7
    :try_start_e
    monitor-exit v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 381
    :try_start_f
    throw v0

    .line 382
    :catchall_5
    move-exception v0

    .line 383
    move-object/from16 v19, v3

    .line 384
    .line 385
    goto :goto_5

    .line 386
    :catch_3
    move-exception v0

    .line 387
    move-object/from16 v19, v3

    .line 388
    .line 389
    goto :goto_6

    .line 390
    :cond_2
    move-object/from16 v19, v3

    .line 391
    .line 392
    new-instance v0, Ljava/lang/Exception;

    .line 393
    .line 394
    const-string v2, "\u505c\u6b62\u62f7\u8d1d"

    .line 395
    .line 396
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    throw v0

    .line 400
    :cond_3
    move-object/from16 v19, v3

    .line 401
    .line 402
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 403
    .line 404
    .line 405
    invoke-static {v7}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 406
    .line 407
    .line 408
    :goto_8
    invoke-static {v8}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 409
    .line 410
    .line 411
    invoke-static {v6}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 412
    .line 413
    .line 414
    invoke-static {v5}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 415
    .line 416
    .line 417
    invoke-static/range {v19 .. v19}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 418
    .line 419
    .line 420
    invoke-static {v4}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 421
    .line 422
    .line 423
    goto/16 :goto_f

    .line 424
    .line 425
    :catchall_6
    move-exception v0

    .line 426
    move-object/from16 v19, v3

    .line 427
    .line 428
    move-object v8, v2

    .line 429
    goto :goto_5

    .line 430
    :catch_4
    move-exception v0

    .line 431
    move-object/from16 v19, v3

    .line 432
    .line 433
    move-object v8, v2

    .line 434
    goto :goto_6

    .line 435
    :catchall_7
    move-exception v0

    .line 436
    move-object/from16 v19, v3

    .line 437
    .line 438
    move-object v8, v2

    .line 439
    goto/16 :goto_10

    .line 440
    .line 441
    :catch_5
    move-exception v0

    .line 442
    move-object/from16 v19, v3

    .line 443
    .line 444
    move-object v8, v2

    .line 445
    goto :goto_d

    .line 446
    :catchall_8
    move-exception v0

    .line 447
    move-object/from16 v19, v3

    .line 448
    .line 449
    move-object v6, v2

    .line 450
    :goto_9
    move-object v8, v6

    .line 451
    goto/16 :goto_10

    .line 452
    .line 453
    :catch_6
    move-exception v0

    .line 454
    move-object/from16 v19, v3

    .line 455
    .line 456
    move-object v6, v2

    .line 457
    :goto_a
    move-object v8, v6

    .line 458
    goto :goto_d

    .line 459
    :catchall_9
    move-exception v0

    .line 460
    move-object/from16 v19, v3

    .line 461
    .line 462
    move-object v5, v2

    .line 463
    :goto_b
    move-object v6, v5

    .line 464
    goto :goto_9

    .line 465
    :catch_7
    move-exception v0

    .line 466
    move-object/from16 v19, v3

    .line 467
    .line 468
    move-object v5, v2

    .line 469
    :goto_c
    move-object v6, v5

    .line 470
    goto :goto_a

    .line 471
    :catchall_a
    move-exception v0

    .line 472
    move-object/from16 v19, v3

    .line 473
    .line 474
    move-object v4, v2

    .line 475
    move-object v5, v4

    .line 476
    goto :goto_b

    .line 477
    :catch_8
    move-exception v0

    .line 478
    move-object/from16 v19, v3

    .line 479
    .line 480
    move-object v4, v2

    .line 481
    move-object v5, v4

    .line 482
    goto :goto_c

    .line 483
    :catch_9
    move-exception v0

    .line 484
    move-object v4, v2

    .line 485
    move-object v5, v4

    .line 486
    move-object v6, v5

    .line 487
    move-object v8, v6

    .line 488
    move-object/from16 v19, v8

    .line 489
    .line 490
    :goto_d
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    const-string v3, "File name too long"

    .line 498
    .line 499
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 500
    .line 501
    .line 502
    move-result v3

    .line 503
    if-eqz v3, :cond_4

    .line 504
    .line 505
    const-string v0, "\u6587\u4ef6\u540d\u592a\u957f"

    .line 506
    .line 507
    goto :goto_e

    .line 508
    :catchall_b
    move-exception v0

    .line 509
    goto :goto_10

    .line 510
    :cond_4
    const-string v3, "Permission denied"

    .line 511
    .line 512
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 513
    .line 514
    .line 515
    move-result v3

    .line 516
    if-eqz v3, :cond_5

    .line 517
    .line 518
    const-string v0, "\u65e0\u6743\u9650"

    .line 519
    .line 520
    :cond_5
    :goto_e
    iget-object v3, v1, Lcom/yunpan/appmanage/util/p;->d:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v3, Lcom/yunpan/appmanage/util/r;

    .line 523
    .line 524
    monitor-enter v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    .line 525
    :try_start_11
    iget-object v7, v1, Lcom/yunpan/appmanage/util/p;->d:Ljava/lang/Object;

    .line 526
    .line 527
    check-cast v7, Lcom/yunpan/appmanage/util/r;

    .line 528
    .line 529
    iget-object v7, v7, Lcom/yunpan/appmanage/util/r;->a:Ljava/util/ArrayList;

    .line 530
    .line 531
    new-instance v9, Lx9/w3;

    .line 532
    .line 533
    iget-object v10, v1, Lcom/yunpan/appmanage/util/p;->b:Ljava/lang/Object;

    .line 534
    .line 535
    check-cast v10, Ljava/io/File;

    .line 536
    .line 537
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v10

    .line 541
    iget-object v11, v1, Lcom/yunpan/appmanage/util/p;->b:Ljava/lang/Object;

    .line 542
    .line 543
    check-cast v11, Ljava/io/File;

    .line 544
    .line 545
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v11

    .line 549
    invoke-direct {v9, v10, v11, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    .line 556
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 557
    .line 558
    .line 559
    goto/16 :goto_8

    .line 560
    .line 561
    :goto_f
    iget-object v0, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v0, Lba/i;

    .line 564
    .line 565
    const-wide/16 v2, 0x0

    .line 566
    .line 567
    invoke-virtual {v0, v2, v3}, Lba/i;->c(J)V

    .line 568
    .line 569
    .line 570
    iget-object v0, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 571
    .line 572
    check-cast v0, Lba/i;

    .line 573
    .line 574
    iget-object v0, v0, Lba/i;->d:Ljava/lang/Object;

    .line 575
    .line 576
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 577
    .line 578
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 579
    .line 580
    .line 581
    return-void

    .line 582
    :catchall_c
    move-exception v0

    .line 583
    :try_start_12
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    .line 584
    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 585
    :goto_10
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 586
    .line 587
    .line 588
    invoke-static {v8}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 589
    .line 590
    .line 591
    invoke-static {v6}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 592
    .line 593
    .line 594
    invoke-static {v5}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 595
    .line 596
    .line 597
    invoke-static/range {v19 .. v19}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 598
    .line 599
    .line 600
    invoke-static {v4}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 601
    .line 602
    .line 603
    goto :goto_12

    .line 604
    :goto_11
    throw v0

    .line 605
    :goto_12
    goto :goto_11
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    iget v4, v1, Lcom/yunpan/appmanage/util/p;->a:I

    .line 7
    .line 8
    packed-switch v4, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v4, v1, Lcom/yunpan/appmanage/util/p;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v4, Lv/d;

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    iget-object v5, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v5, Lua/i1;

    .line 20
    .line 21
    iget-object v6, v5, Lua/i1;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v6, Lv/e;

    .line 24
    .line 25
    iput-boolean v3, v6, Lv/e;->B:Z

    .line 26
    .line 27
    iget-object v3, v4, Lv/d;->b:Lv/k;

    .line 28
    .line 29
    invoke-virtual {v3, v0}, Lv/k;->c(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v3, v5, Lua/i1;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Lv/e;

    .line 35
    .line 36
    iput-boolean v0, v3, Lv/e;->B:Z

    .line 37
    .line 38
    :cond_0
    iget-object v0, v1, Lcom/yunpan/appmanage/util/p;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lv/m;

    .line 41
    .line 42
    invoke-virtual {v0}, Lv/m;->isEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Lv/m;->hasSubMenu()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    iget-object v3, v1, Lcom/yunpan/appmanage/util/p;->d:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Lv/k;

    .line 57
    .line 58
    const/4 v4, 0x4

    .line 59
    invoke-virtual {v3, v0, v2, v4}, Lv/k;->q(Landroid/view/MenuItem;Lv/x;I)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void

    .line 63
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/yunpan/appmanage/util/p;->a()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_1
    iget-object v4, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v4, Lw/r3;

    .line 70
    .line 71
    iget-object v5, v4, Lw/r3;->f:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v5, Lja/b;

    .line 74
    .line 75
    iget-boolean v5, v5, Lja/b;->l:Z

    .line 76
    .line 77
    if-eqz v5, :cond_2

    .line 78
    .line 79
    iget-object v0, v4, Lw/r3;->e:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 84
    .line 85
    .line 86
    goto/16 :goto_b

    .line 87
    .line 88
    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 89
    .line 90
    iget-object v5, v1, Lcom/yunpan/appmanage/util/p;->b:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v5, Ljava/io/File;

    .line 93
    .line 94
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    .line 96
    .line 97
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    .line 98
    .line 99
    iget-object v6, v1, Lcom/yunpan/appmanage/util/p;->c:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v6, Ljava/io/File;

    .line 102
    .line 103
    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    move-object v5, v2

    .line 109
    move-object v7, v5

    .line 110
    move-object/from16 v18, v4

    .line 111
    .line 112
    goto/16 :goto_c

    .line 113
    .line 114
    :catch_0
    nop

    .line 115
    goto :goto_0

    .line 116
    :catchall_1
    move-exception v0

    .line 117
    move-object v5, v2

    .line 118
    move-object v7, v5

    .line 119
    move-object/from16 v18, v7

    .line 120
    .line 121
    goto/16 :goto_c

    .line 122
    .line 123
    :catch_1
    nop

    .line 124
    move-object v4, v2

    .line 125
    :goto_0
    if-eqz v4, :cond_3

    .line 126
    .line 127
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    .line 128
    .line 129
    iget-object v6, v1, Lcom/yunpan/appmanage/util/p;->b:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v6, Ljava/io/File;

    .line 132
    .line 133
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .line 135
    .line 136
    move-object v4, v5

    .line 137
    goto :goto_1

    .line 138
    :catch_2
    move-exception v0

    .line 139
    move-object v5, v2

    .line 140
    move-object v7, v5

    .line 141
    move-object/from16 v18, v4

    .line 142
    .line 143
    goto/16 :goto_8

    .line 144
    .line 145
    :cond_3
    :goto_1
    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    .line 146
    .line 147
    iget-object v6, v1, Lcom/yunpan/appmanage/util/p;->c:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v6, Ljava/io/File;

    .line 150
    .line 151
    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    .line 153
    .line 154
    :goto_2
    :try_start_4
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 155
    .line 156
    iget-object v7, v1, Lcom/yunpan/appmanage/util/p;->b:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v7, Ljava/io/File;

    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    iget-object v7, v1, Lcom/yunpan/appmanage/util/p;->c:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v7, Ljava/io/File;

    .line 166
    .line 167
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    new-instance v6, Ljava/io/BufferedInputStream;

    .line 174
    .line 175
    invoke-direct {v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 176
    .line 177
    .line 178
    :try_start_5
    new-instance v7, Ljava/io/BufferedOutputStream;

    .line 179
    .line 180
    invoke-direct {v7, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 181
    .line 182
    .line 183
    const/high16 v2, 0x100000

    .line 184
    .line 185
    :try_start_6
    new-array v2, v2, [B

    .line 186
    .line 187
    :goto_3
    const/4 v8, 0x0

    .line 188
    :cond_4
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    const/4 v10, -0x1

    .line 193
    if-eq v9, v10, :cond_6

    .line 194
    .line 195
    iget-object v10, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v10, Lw/r3;

    .line 198
    .line 199
    iget-object v10, v10, Lw/r3;->f:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v10, Lja/b;

    .line 202
    .line 203
    iget-boolean v10, v10, Lja/b;->l:Z

    .line 204
    .line 205
    if-nez v10, :cond_5

    .line 206
    .line 207
    invoke-virtual {v7, v2, v0, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 208
    .line 209
    .line 210
    iget-object v10, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v10, Lw/r3;

    .line 213
    .line 214
    iget-object v10, v10, Lw/r3;->f:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v10, Lja/b;

    .line 217
    .line 218
    iget-object v10, v10, Lja/b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 219
    .line 220
    int-to-long v11, v9

    .line 221
    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 222
    .line 223
    .line 224
    add-int/2addr v8, v3

    .line 225
    const/16 v9, 0x32

    .line 226
    .line 227
    if-le v8, v9, :cond_4

    .line 228
    .line 229
    iget-object v8, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v8, Lw/r3;

    .line 232
    .line 233
    iget-object v8, v8, Lw/r3;->f:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v8, Lja/b;

    .line 236
    .line 237
    monitor-enter v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 238
    :try_start_7
    iget-object v9, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v9, Lw/r3;

    .line 241
    .line 242
    iget-object v9, v9, Lw/r3;->f:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v9, Lja/b;

    .line 245
    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 247
    .line 248
    .line 249
    move-result-wide v10

    .line 250
    iget-object v12, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v12, Lw/r3;

    .line 253
    .line 254
    iget-object v12, v12, Lw/r3;->f:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v12, Lja/b;

    .line 257
    .line 258
    iget-wide v12, v12, Lja/b;->j:J

    .line 259
    .line 260
    sub-long/2addr v10, v12

    .line 261
    invoke-static {v10, v11}, Lha/v9;->b(J)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v10

    .line 265
    iput-object v10, v9, Lja/b;->k:Ljava/lang/String;

    .line 266
    .line 267
    iget-object v9, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v9, Lw/r3;

    .line 270
    .line 271
    iget-object v9, v9, Lw/r3;->f:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v9, Lja/b;

    .line 274
    .line 275
    sget-object v10, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 276
    .line 277
    sget-object v10, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 278
    .line 279
    sget-object v10, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 280
    .line 281
    iget-object v11, v9, Lja/b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 282
    .line 283
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 284
    .line 285
    .line 286
    move-result-wide v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 287
    long-to-double v11, v11

    .line 288
    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    .line 289
    .line 290
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    .line 291
    .line 292
    .line 293
    mul-double v11, v11, v13

    .line 294
    .line 295
    :try_start_8
    iget-object v13, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast v13, Lw/r3;

    .line 298
    .line 299
    iget-object v13, v13, Lw/r3;->f:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v13, Lja/b;

    .line 302
    .line 303
    iget-object v13, v13, Lja/b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 304
    .line 305
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 306
    .line 307
    .line 308
    move-result-wide v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 309
    long-to-double v13, v13

    .line 310
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    .line 311
    .line 312
    .line 313
    div-double/2addr v11, v13

    .line 314
    :try_start_9
    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v10

    .line 318
    iput-object v10, v9, Lja/b;->e:Ljava/lang/String;

    .line 319
    .line 320
    iget-object v9, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast v9, Lw/r3;

    .line 323
    .line 324
    iget-object v9, v9, Lw/r3;->f:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v9, Lja/b;

    .line 327
    .line 328
    new-instance v10, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    const-string v11, "\u5747\u901f:"

    .line 334
    .line 335
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    iget-object v11, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast v11, Lw/r3;

    .line 341
    .line 342
    iget-object v11, v11, Lw/r3;->f:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v11, Lja/b;

    .line 345
    .line 346
    iget-object v11, v11, Lja/b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 347
    .line 348
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 349
    .line 350
    .line 351
    move-result-wide v14

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 353
    .line 354
    .line 355
    move-result-wide v11

    .line 356
    iget-object v13, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v13, Lw/r3;

    .line 359
    .line 360
    iget-object v13, v13, Lw/r3;->f:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v13, Lja/b;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 363
    .line 364
    move-object/from16 v18, v4

    .line 365
    .line 366
    :try_start_a
    iget-wide v3, v13, Lja/b;->j:J

    .line 367
    .line 368
    sub-long v16, v11, v3

    .line 369
    .line 370
    const-wide/16 v12, 0x0

    .line 371
    .line 372
    invoke-static/range {v12 .. v17}, Lha/v9;->a(JJJ)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string v3, " MB/s"

    .line 380
    .line 381
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    iput-object v3, v9, Lja/b;->d:Ljava/lang/String;

    .line 389
    .line 390
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 391
    :try_start_b
    iget-object v3, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v3, Lw/r3;

    .line 394
    .line 395
    iget-object v3, v3, Lw/r3;->g:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v3, Lcom/yunpan/appmanage/carsdk/u;

    .line 398
    .line 399
    const/16 v4, 0x12d

    .line 400
    .line 401
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 402
    .line 403
    .line 404
    move-object/from16 v4, v18

    .line 405
    .line 406
    const/4 v3, 0x1

    .line 407
    goto/16 :goto_3

    .line 408
    .line 409
    :catchall_2
    move-exception v0

    .line 410
    :goto_4
    move-object v2, v6

    .line 411
    goto/16 :goto_c

    .line 412
    .line 413
    :catch_3
    move-exception v0

    .line 414
    :goto_5
    move-object v2, v6

    .line 415
    goto :goto_8

    .line 416
    :catchall_3
    move-exception v0

    .line 417
    goto :goto_6

    .line 418
    :catchall_4
    move-exception v0

    .line 419
    move-object/from16 v18, v4

    .line 420
    .line 421
    :goto_6
    :try_start_c
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 422
    :try_start_d
    throw v0

    .line 423
    :catchall_5
    move-exception v0

    .line 424
    move-object/from16 v18, v4

    .line 425
    .line 426
    goto :goto_4

    .line 427
    :catch_4
    move-exception v0

    .line 428
    move-object/from16 v18, v4

    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_5
    move-object/from16 v18, v4

    .line 432
    .line 433
    new-instance v0, Ljava/lang/Exception;

    .line 434
    .line 435
    const-string v2, "\u505c\u6b62\u62f7\u8d1d"

    .line 436
    .line 437
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    throw v0

    .line 441
    :cond_6
    move-object/from16 v18, v4

    .line 442
    .line 443
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 444
    .line 445
    .line 446
    invoke-static {v6}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 447
    .line 448
    .line 449
    :goto_7
    invoke-static {v7}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 450
    .line 451
    .line 452
    invoke-static {v5}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 453
    .line 454
    .line 455
    invoke-static/range {v18 .. v18}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 456
    .line 457
    .line 458
    goto/16 :goto_a

    .line 459
    .line 460
    :catchall_6
    move-exception v0

    .line 461
    move-object/from16 v18, v4

    .line 462
    .line 463
    move-object v7, v2

    .line 464
    goto :goto_4

    .line 465
    :catch_5
    move-exception v0

    .line 466
    move-object/from16 v18, v4

    .line 467
    .line 468
    move-object v7, v2

    .line 469
    goto :goto_5

    .line 470
    :catchall_7
    move-exception v0

    .line 471
    move-object/from16 v18, v4

    .line 472
    .line 473
    move-object v7, v2

    .line 474
    goto/16 :goto_c

    .line 475
    .line 476
    :catch_6
    move-exception v0

    .line 477
    move-object/from16 v18, v4

    .line 478
    .line 479
    move-object v7, v2

    .line 480
    goto :goto_8

    .line 481
    :catch_7
    :try_start_e
    new-instance v0, Ljava/lang/Exception;

    .line 482
    .line 483
    const-string v3, "\u6587\u4ef6\u88ab\u5360\u7528\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 484
    .line 485
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 489
    :goto_8
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    const-string v3, "File name too long"

    .line 497
    .line 498
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 499
    .line 500
    .line 501
    move-result v3

    .line 502
    if-eqz v3, :cond_7

    .line 503
    .line 504
    const-string v0, "\u6587\u4ef6\u540d\u592a\u957f"

    .line 505
    .line 506
    goto :goto_9

    .line 507
    :catchall_8
    move-exception v0

    .line 508
    goto :goto_c

    .line 509
    :cond_7
    const-string v3, "Permission denied"

    .line 510
    .line 511
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 512
    .line 513
    .line 514
    move-result v3

    .line 515
    if-eqz v3, :cond_8

    .line 516
    .line 517
    const-string v0, "\u65e0\u6743\u9650"

    .line 518
    .line 519
    goto :goto_9

    .line 520
    :cond_8
    const-string v3, "dfshfgjghjkhjkl"

    .line 521
    .line 522
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 523
    .line 524
    .line 525
    move-result v3

    .line 526
    if-eqz v3, :cond_9

    .line 527
    .line 528
    iget-object v3, v1, Lcom/yunpan/appmanage/util/p;->c:Ljava/lang/Object;

    .line 529
    .line 530
    check-cast v3, Ljava/io/File;

    .line 531
    .line 532
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 533
    .line 534
    .line 535
    move-result v3

    .line 536
    if-eqz v3, :cond_9

    .line 537
    .line 538
    const-string v0, "\u6587\u4ef6\u88ab\u5360\u7528"

    .line 539
    .line 540
    goto :goto_9

    .line 541
    :cond_9
    const-string v3, "No such file or directory"

    .line 542
    .line 543
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    if-eqz v3, :cond_a

    .line 548
    .line 549
    const-string v0, "No such file or directory"

    .line 550
    .line 551
    :cond_a
    :goto_9
    iget-object v3, v1, Lcom/yunpan/appmanage/util/p;->d:Ljava/lang/Object;

    .line 552
    .line 553
    check-cast v3, Lcom/yunpan/appmanage/util/q;

    .line 554
    .line 555
    monitor-enter v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 556
    :try_start_10
    iget-object v4, v1, Lcom/yunpan/appmanage/util/p;->d:Ljava/lang/Object;

    .line 557
    .line 558
    check-cast v4, Lcom/yunpan/appmanage/util/q;

    .line 559
    .line 560
    iget-object v4, v4, Lcom/yunpan/appmanage/util/q;->a:Ljava/util/ArrayList;

    .line 561
    .line 562
    new-instance v6, Lx9/w3;

    .line 563
    .line 564
    iget-object v8, v1, Lcom/yunpan/appmanage/util/p;->b:Ljava/lang/Object;

    .line 565
    .line 566
    check-cast v8, Ljava/io/File;

    .line 567
    .line 568
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v8

    .line 572
    iget-object v9, v1, Lcom/yunpan/appmanage/util/p;->b:Ljava/lang/Object;

    .line 573
    .line 574
    check-cast v9, Ljava/io/File;

    .line 575
    .line 576
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v9

    .line 580
    invoke-direct {v6, v8, v9, v0}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 587
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 588
    .line 589
    .line 590
    goto/16 :goto_7

    .line 591
    .line 592
    :goto_a
    iget-object v0, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 593
    .line 594
    check-cast v0, Lw/r3;

    .line 595
    .line 596
    const-wide/16 v2, 0x0

    .line 597
    .line 598
    invoke-virtual {v0, v2, v3}, Lw/r3;->a(J)V

    .line 599
    .line 600
    .line 601
    iget-object v0, v1, Lcom/yunpan/appmanage/util/p;->e:Ljava/lang/Object;

    .line 602
    .line 603
    check-cast v0, Lw/r3;

    .line 604
    .line 605
    iget-object v0, v0, Lw/r3;->e:Ljava/lang/Object;

    .line 606
    .line 607
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 608
    .line 609
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 610
    .line 611
    .line 612
    :goto_b
    return-void

    .line 613
    :catchall_9
    move-exception v0

    .line 614
    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 615
    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 616
    :goto_c
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 617
    .line 618
    .line 619
    invoke-static {v7}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 620
    .line 621
    .line 622
    invoke-static {v5}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 623
    .line 624
    .line 625
    invoke-static/range {v18 .. v18}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 626
    .line 627
    .line 628
    goto :goto_e

    .line 629
    :goto_d
    throw v0

    .line 630
    :goto_e
    goto :goto_d

    .line 631
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
