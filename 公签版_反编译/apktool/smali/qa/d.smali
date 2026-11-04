.class public final synthetic Lqa/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;I)V
    .locals 0

    .line 1
    iput p2, p0, Lqa/d;->a:I

    iput-object p1, p0, Lqa/d;->b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 13

    .line 1
    iget v0, p0, Lqa/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lqa/d;->b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 10
    .line 11
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->paths:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_3

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 28
    .line 29
    iget-boolean v4, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 30
    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    invoke-static {v0, v3}, Lqa/g;->d(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    const-string v0, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25"

    .line 40
    .line 41
    :cond_1
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :cond_2
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iput v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_count:I

    .line 59
    .line 60
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 77
    .line 78
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->size_count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 79
    .line 80
    iget-wide v5, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 81
    .line 82
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    iget v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_count:I

    .line 87
    .line 88
    if-nez v2, :cond_5

    .line 89
    .line 90
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_4

    .line 94
    .line 95
    :cond_5
    const/4 v3, 0x1

    .line 96
    if-ne v2, v3, :cond_6

    .line 97
    .line 98
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 101
    .line 102
    .line 103
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 110
    .line 111
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 112
    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v3, "/"

    .line 124
    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 129
    .line 130
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 135
    .line 136
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v5, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    const-string v4, "//"

    .line 156
    .line 157
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 168
    .line 169
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v0, v1, v2}, Lqa/g;->c(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_1

    .line 180
    .line 181
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_6
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 186
    .line 187
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 188
    .line 189
    .line 190
    const/4 v1, 0x3

    .line 191
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 196
    .line 197
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_7

    .line 206
    .line 207
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 212
    .line 213
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 214
    .line 215
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 216
    .line 217
    .line 218
    new-instance v4, Lqa/c;

    .line 219
    .line 220
    invoke-direct {v4, v0, v3}, Lqa/c;-><init>(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 224
    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_7
    :goto_3
    iget-object v1, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-lez v1, :cond_8

    .line 234
    .line 235
    const-wide/16 v1, 0x64

    .line 236
    .line 237
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 238
    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_8
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 242
    .line 243
    .line 244
    :goto_4
    return-void

    .line 245
    :pswitch_0
    iget-object v0, p0, Lqa/d;->b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 246
    .line 247
    const/4 v1, 0x0

    .line 248
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 249
    .line 250
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 251
    .line 252
    iget-boolean v2, v2, Lx9/n5;->u:Z

    .line 253
    .line 254
    const/4 v3, 0x1

    .line 255
    const-string v4, "/"

    .line 256
    .line 257
    if-eqz v2, :cond_a

    .line 258
    .line 259
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->paths:Ljava/util/List;

    .line 260
    .line 261
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    if-eqz v5, :cond_12

    .line 270
    .line 271
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    check-cast v5, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 276
    .line 277
    iget-boolean v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 278
    .line 279
    if-eqz v6, :cond_9

    .line 280
    .line 281
    invoke-static {v0, v5}, Lqa/f;->h(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;)V

    .line 282
    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_9
    iget-object v6, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 286
    .line 287
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_a
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->paths:Ljava/util/List;

    .line 292
    .line 293
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    check-cast v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 298
    .line 299
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    iget-object v5, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->paths:Ljava/util/List;

    .line 306
    .line 307
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    check-cast v5, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 312
    .line 313
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-static {}, Lcom/hierynomus/smbj/SmbConfig;->builder()Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    invoke-virtual {v5, v3}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withMultiProtocolNegotiate(Z)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 328
    .line 329
    const-wide/16 v7, 0x10

    .line 330
    .line 331
    invoke-virtual {v5, v7, v8, v6}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    invoke-virtual {v5, v7, v8, v6}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withSoTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    invoke-virtual {v5}, Lcom/hierynomus/smbj/SmbConfig$Builder;->build()Lcom/hierynomus/smbj/SmbConfig;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    new-instance v6, Lcom/hierynomus/smbj/SMBClient;

    .line 344
    .line 345
    invoke-direct {v6, v5}, Lcom/hierynomus/smbj/SMBClient;-><init>(Lcom/hierynomus/smbj/SmbConfig;)V

    .line 346
    .line 347
    .line 348
    const/4 v5, 0x0

    .line 349
    :try_start_0
    iget-object v7, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 350
    .line 351
    iget-object v8, v7, Lx9/n5;->c:Ljava/lang/String;

    .line 352
    .line 353
    iget v7, v7, Lx9/n5;->d:I

    .line 354
    .line 355
    invoke-virtual {v6, v8, v7}, Lcom/hierynomus/smbj/SMBClient;->connect(Ljava/lang/String;I)Lcom/hierynomus/smbj/connection/Connection;

    .line 356
    .line 357
    .line 358
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 359
    :try_start_1
    iget-object v8, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 360
    .line 361
    iget-object v8, v8, Lx9/n5;->e:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 364
    .line 365
    .line 366
    move-result v8

    .line 367
    if-eqz v8, :cond_b

    .line 368
    .line 369
    invoke-static {}, Lcom/hierynomus/smbj/auth/AuthenticationContext;->guest()Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 370
    .line 371
    .line 372
    move-result-object v8

    .line 373
    goto :goto_6

    .line 374
    :catchall_0
    move-exception p1

    .line 375
    move-object v8, v5

    .line 376
    goto/16 :goto_11

    .line 377
    .line 378
    :catch_0
    move-exception v2

    .line 379
    move-object v8, v5

    .line 380
    goto/16 :goto_9

    .line 381
    .line 382
    :cond_b
    new-instance v8, Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 383
    .line 384
    iget-object v9, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 385
    .line 386
    iget-object v10, v9, Lx9/n5;->e:Ljava/lang/String;

    .line 387
    .line 388
    iget-object v9, v9, Lx9/n5;->f:Ljava/lang/String;

    .line 389
    .line 390
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    .line 391
    .line 392
    .line 393
    move-result-object v9

    .line 394
    iget-object v11, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 395
    .line 396
    iget-object v11, v11, Lx9/n5;->v:Ljava/lang/String;

    .line 397
    .line 398
    invoke-direct {v8, v10, v9, v11}, Lcom/hierynomus/smbj/auth/AuthenticationContext;-><init>(Ljava/lang/String;[CLjava/lang/String;)V

    .line 399
    .line 400
    .line 401
    :goto_6
    invoke-virtual {v7, v8}, Lcom/hierynomus/smbj/connection/Connection;->authenticate(Lcom/hierynomus/smbj/auth/AuthenticationContext;)Lcom/hierynomus/smbj/session/Session;

    .line 402
    .line 403
    .line 404
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    :try_start_2
    invoke-virtual {v8, v2}, Lcom/hierynomus/smbj/session/Session;->connectShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/Share;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    check-cast v2, Lcom/hierynomus/smbj/share/DiskShare;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 410
    .line 411
    :try_start_3
    iget-object v5, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->paths:Ljava/util/List;

    .line 412
    .line 413
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 418
    .line 419
    .line 420
    move-result v9

    .line 421
    if-eqz v9, :cond_d

    .line 422
    .line 423
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v9

    .line 427
    check-cast v9, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 428
    .line 429
    iget-boolean v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 430
    .line 431
    if-eqz v10, :cond_c

    .line 432
    .line 433
    invoke-static {v0, v2, v9}, Lqa/f;->j(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/hierynomus/smbj/share/DiskShare;Lcom/yunpan/appmanage/bean/WpPathBean;)V

    .line 434
    .line 435
    .line 436
    goto :goto_7

    .line 437
    :catchall_1
    move-exception p1

    .line 438
    move-object v5, v2

    .line 439
    goto/16 :goto_11

    .line 440
    .line 441
    :catch_1
    move-exception v5

    .line 442
    move-object v12, v5

    .line 443
    move-object v5, v2

    .line 444
    move-object v2, v12

    .line 445
    goto :goto_9

    .line 446
    :cond_c
    iget-object v10, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 447
    .line 448
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 449
    .line 450
    .line 451
    goto :goto_7

    .line 452
    :cond_d
    if-eqz v2, :cond_e

    .line 453
    .line 454
    :try_start_4
    invoke-virtual {v2}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 455
    .line 456
    .line 457
    :catch_2
    :cond_e
    :try_start_5
    invoke-virtual {v8}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 458
    .line 459
    .line 460
    :catch_3
    :try_start_6
    invoke-virtual {v7}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 461
    .line 462
    .line 463
    :catch_4
    :cond_f
    :goto_8
    :try_start_7
    invoke-virtual {v6}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 464
    .line 465
    .line 466
    goto :goto_c

    .line 467
    :catch_5
    nop

    .line 468
    goto :goto_c

    .line 469
    :catchall_2
    move-exception p1

    .line 470
    goto/16 :goto_11

    .line 471
    .line 472
    :catch_6
    move-exception v2

    .line 473
    goto :goto_9

    .line 474
    :catchall_3
    move-exception p1

    .line 475
    move-object v7, v5

    .line 476
    move-object v8, v7

    .line 477
    goto/16 :goto_11

    .line 478
    .line 479
    :catch_7
    move-exception v2

    .line 480
    move-object v7, v5

    .line 481
    move-object v8, v7

    .line 482
    :goto_9
    :try_start_8
    invoke-static {v2}, Lqa/f;->i(Ljava/lang/Exception;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 483
    .line 484
    .line 485
    if-eqz v5, :cond_10

    .line 486
    .line 487
    :try_start_9
    invoke-virtual {v5}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 488
    .line 489
    .line 490
    goto :goto_a

    .line 491
    :catch_8
    nop

    .line 492
    :cond_10
    :goto_a
    if-eqz v8, :cond_11

    .line 493
    .line 494
    :try_start_a
    invoke-virtual {v8}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 495
    .line 496
    .line 497
    goto :goto_b

    .line 498
    :catch_9
    nop

    .line 499
    :cond_11
    :goto_b
    if-eqz v7, :cond_f

    .line 500
    .line 501
    :try_start_b
    invoke-virtual {v7}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 502
    .line 503
    .line 504
    goto :goto_8

    .line 505
    :cond_12
    :goto_c
    iget-boolean v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 506
    .line 507
    if-eqz v2, :cond_14

    .line 508
    .line 509
    const-string v0, "\u5df2\u4e3b\u52a8\u505c\u6b62\u4e0b\u8f7d"

    .line 510
    .line 511
    :cond_13
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 512
    .line 513
    .line 514
    goto/16 :goto_10

    .line 515
    .line 516
    :cond_14
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 517
    .line 518
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    iput v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_count:I

    .line 523
    .line 524
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 525
    .line 526
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 531
    .line 532
    .line 533
    move-result v5

    .line 534
    if-eqz v5, :cond_15

    .line 535
    .line 536
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v5

    .line 540
    check-cast v5, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 541
    .line 542
    iget-object v6, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->size_count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 543
    .line 544
    iget-wide v7, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 545
    .line 546
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 547
    .line 548
    .line 549
    goto :goto_d

    .line 550
    :cond_15
    iget v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_count:I

    .line 551
    .line 552
    if-nez v2, :cond_16

    .line 553
    .line 554
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 555
    .line 556
    .line 557
    goto/16 :goto_10

    .line 558
    .line 559
    :cond_16
    if-ne v2, v3, :cond_17

    .line 560
    .line 561
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 562
    .line 563
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 564
    .line 565
    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    .line 567
    .line 568
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .line 570
    .line 571
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 572
    .line 573
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 580
    .line 581
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v3

    .line 585
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 586
    .line 587
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 588
    .line 589
    iget-object v5, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 590
    .line 591
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 592
    .line 593
    .line 594
    move-result v5

    .line 595
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v3

    .line 599
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    const-string v3, "//"

    .line 607
    .line 608
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 613
    .line 614
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    check-cast v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 619
    .line 620
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 621
    .line 622
    invoke-static {v0, v1, v2}, Lqa/f;->c(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 627
    .line 628
    .line 629
    move-result v1

    .line 630
    if-eqz v1, :cond_13

    .line 631
    .line 632
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 633
    .line 634
    .line 635
    goto :goto_10

    .line 636
    :cond_17
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 637
    .line 638
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 639
    .line 640
    .line 641
    const/4 v1, 0x4

    .line 642
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 647
    .line 648
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 649
    .line 650
    .line 651
    move-result-object v2

    .line 652
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 653
    .line 654
    .line 655
    move-result v3

    .line 656
    if-eqz v3, :cond_18

    .line 657
    .line 658
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 663
    .line 664
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 665
    .line 666
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 667
    .line 668
    .line 669
    new-instance v4, Lqa/c;

    .line 670
    .line 671
    const/4 v5, 0x4

    .line 672
    invoke-direct {v4, v0, v3, v5}, Lqa/c;-><init>(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 673
    .line 674
    .line 675
    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 676
    .line 677
    .line 678
    goto :goto_e

    .line 679
    :cond_18
    :goto_f
    iget-object v1, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 680
    .line 681
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 682
    .line 683
    .line 684
    move-result v1

    .line 685
    if-lez v1, :cond_19

    .line 686
    .line 687
    const-wide/16 v1, 0x64

    .line 688
    .line 689
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 690
    .line 691
    .line 692
    goto :goto_f

    .line 693
    :cond_19
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 694
    .line 695
    .line 696
    :goto_10
    return-void

    .line 697
    :goto_11
    if-eqz v5, :cond_1a

    .line 698
    .line 699
    :try_start_c
    invoke-virtual {v5}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 700
    .line 701
    .line 702
    goto :goto_12

    .line 703
    :catch_a
    nop

    .line 704
    :cond_1a
    :goto_12
    if-eqz v8, :cond_1b

    .line 705
    .line 706
    :try_start_d
    invoke-virtual {v8}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    .line 707
    .line 708
    .line 709
    goto :goto_13

    .line 710
    :catch_b
    nop

    .line 711
    :cond_1b
    :goto_13
    if-eqz v7, :cond_1c

    .line 712
    .line 713
    :try_start_e
    invoke-virtual {v7}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 714
    .line 715
    .line 716
    :catch_c
    :cond_1c
    :try_start_f
    invoke-virtual {v6}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 717
    .line 718
    .line 719
    :catch_d
    throw p1

    .line 720
    :pswitch_1
    iget-object v0, p0, Lqa/d;->b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 721
    .line 722
    const/4 v1, 0x0

    .line 723
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 724
    .line 725
    const/4 v1, 0x0

    .line 726
    :try_start_10
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 727
    .line 728
    invoke-static {v0}, Lif/a;->S(Lx9/n5;)La9/f0;

    .line 729
    .line 730
    .line 731
    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 732
    :try_start_11
    invoke-virtual {v0}, La9/f0;->b()V

    .line 733
    .line 734
    .line 735
    throw v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 736
    :catch_e
    move-exception v1

    .line 737
    goto :goto_15

    .line 738
    :goto_14
    move-object v1, v0

    .line 739
    goto :goto_16

    .line 740
    :catchall_4
    move-exception p1

    .line 741
    goto :goto_16

    .line 742
    :catch_f
    move-exception v0

    .line 743
    move-object v12, v1

    .line 744
    move-object v1, v0

    .line 745
    move-object v0, v12

    .line 746
    :goto_15
    :try_start_12
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 747
    .line 748
    .line 749
    new-instance v1, Ljava/lang/Exception;

    .line 750
    .line 751
    const-string v2, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25"

    .line 752
    .line 753
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {p1, v1}, Lmc/b;->d(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 757
    .line 758
    .line 759
    if-eqz v0, :cond_1d

    .line 760
    .line 761
    iget-boolean p1, v0, La9/f0;->h:Z

    .line 762
    .line 763
    if-eqz p1, :cond_1d

    .line 764
    .line 765
    invoke-virtual {v0}, La9/f0;->c()V

    .line 766
    .line 767
    .line 768
    :cond_1d
    return-void

    .line 769
    :catchall_5
    move-exception p1

    .line 770
    goto :goto_14

    .line 771
    :goto_16
    if-eqz v1, :cond_1e

    .line 772
    .line 773
    iget-boolean v0, v1, La9/f0;->h:Z

    .line 774
    .line 775
    if-eqz v0, :cond_1e

    .line 776
    .line 777
    invoke-virtual {v1}, La9/f0;->c()V

    .line 778
    .line 779
    .line 780
    :cond_1e
    throw p1

    .line 781
    :pswitch_2
    iget-object v0, p0, Lqa/d;->b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 782
    .line 783
    const/4 v1, 0x0

    .line 784
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 785
    .line 786
    const/4 v1, 0x0

    .line 787
    :try_start_13
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 788
    .line 789
    invoke-static {v0}, Lif/a;->S(Lx9/n5;)La9/f0;

    .line 790
    .line 791
    .line 792
    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 793
    :try_start_14
    invoke-virtual {v0}, La9/f0;->b()V

    .line 794
    .line 795
    .line 796
    throw v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 797
    :catch_10
    move-exception v1

    .line 798
    goto :goto_18

    .line 799
    :goto_17
    move-object v1, v0

    .line 800
    goto :goto_19

    .line 801
    :catchall_6
    move-exception p1

    .line 802
    goto :goto_19

    .line 803
    :catch_11
    move-exception v0

    .line 804
    move-object v12, v1

    .line 805
    move-object v1, v0

    .line 806
    move-object v0, v12

    .line 807
    :goto_18
    :try_start_15
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 808
    .line 809
    .line 810
    new-instance v1, Ljava/lang/Exception;

    .line 811
    .line 812
    const-string v2, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25"

    .line 813
    .line 814
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {p1, v1}, Lmc/b;->d(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 818
    .line 819
    .line 820
    if-eqz v0, :cond_1f

    .line 821
    .line 822
    iget-boolean p1, v0, La9/f0;->h:Z

    .line 823
    .line 824
    if-eqz p1, :cond_1f

    .line 825
    .line 826
    invoke-virtual {v0}, La9/f0;->c()V

    .line 827
    .line 828
    .line 829
    :cond_1f
    return-void

    .line 830
    :catchall_7
    move-exception p1

    .line 831
    goto :goto_17

    .line 832
    :goto_19
    if-eqz v1, :cond_20

    .line 833
    .line 834
    iget-boolean v0, v1, La9/f0;->h:Z

    .line 835
    .line 836
    if-eqz v0, :cond_20

    .line 837
    .line 838
    invoke-virtual {v1}, La9/f0;->c()V

    .line 839
    .line 840
    .line 841
    :cond_20
    throw p1

    .line 842
    :pswitch_3
    iget-object v0, p0, Lqa/d;->b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 843
    .line 844
    const/4 v1, 0x0

    .line 845
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 846
    .line 847
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->paths:Ljava/util/List;

    .line 848
    .line 849
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 850
    .line 851
    .line 852
    move-result-object v2

    .line 853
    :cond_21
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 854
    .line 855
    .line 856
    move-result v3

    .line 857
    if-eqz v3, :cond_24

    .line 858
    .line 859
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v3

    .line 863
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 864
    .line 865
    iget-boolean v4, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 866
    .line 867
    if-eqz v4, :cond_23

    .line 868
    .line 869
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->q(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;)Z

    .line 870
    .line 871
    .line 872
    move-result v3

    .line 873
    if-nez v3, :cond_21

    .line 874
    .line 875
    const-string v0, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25"

    .line 876
    .line 877
    :cond_22
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 878
    .line 879
    .line 880
    goto/16 :goto_1f

    .line 881
    .line 882
    :cond_23
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 883
    .line 884
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    .line 886
    .line 887
    goto :goto_1a

    .line 888
    :cond_24
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 889
    .line 890
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 891
    .line 892
    .line 893
    move-result v2

    .line 894
    iput v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_count:I

    .line 895
    .line 896
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 897
    .line 898
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 899
    .line 900
    .line 901
    move-result-object v2

    .line 902
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 903
    .line 904
    .line 905
    move-result v3

    .line 906
    if-eqz v3, :cond_25

    .line 907
    .line 908
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    move-result-object v3

    .line 912
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 913
    .line 914
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->size_count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 915
    .line 916
    iget-wide v5, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 917
    .line 918
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 919
    .line 920
    .line 921
    goto :goto_1b

    .line 922
    :cond_25
    iget v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_count:I

    .line 923
    .line 924
    if-nez v2, :cond_26

    .line 925
    .line 926
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 927
    .line 928
    .line 929
    goto/16 :goto_1f

    .line 930
    .line 931
    :cond_26
    const/4 v3, 0x1

    .line 932
    if-ne v2, v3, :cond_28

    .line 933
    .line 934
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 935
    .line 936
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 937
    .line 938
    .line 939
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 940
    .line 941
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 942
    .line 943
    .line 944
    move-result v2

    .line 945
    if-ne v2, v3, :cond_27

    .line 946
    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    .line 948
    .line 949
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    .line 951
    .line 952
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 953
    .line 954
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    .line 957
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 958
    .line 959
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v3

    .line 963
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 964
    .line 965
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 966
    .line 967
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    .line 969
    .line 970
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v2

    .line 974
    goto :goto_1c

    .line 975
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 976
    .line 977
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 978
    .line 979
    .line 980
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 981
    .line 982
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    .line 984
    .line 985
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 986
    .line 987
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 988
    .line 989
    .line 990
    move-result-object v3

    .line 991
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 992
    .line 993
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 994
    .line 995
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 996
    .line 997
    invoke-static {v4, v3, v2}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v2

    .line 1001
    :goto_1c
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1002
    .line 1003
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v1

    .line 1007
    check-cast v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1008
    .line 1009
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1010
    .line 1011
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/d;->k(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v0

    .line 1015
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1016
    .line 1017
    .line 1018
    move-result v1

    .line 1019
    if-eqz v1, :cond_22

    .line 1020
    .line 1021
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1022
    .line 1023
    .line 1024
    goto :goto_1f

    .line 1025
    :cond_28
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1026
    .line 1027
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1028
    .line 1029
    .line 1030
    const/4 v1, 0x3

    .line 1031
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v1

    .line 1035
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1036
    .line 1037
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v2

    .line 1041
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1042
    .line 1043
    .line 1044
    move-result v3

    .line 1045
    if-eqz v3, :cond_29

    .line 1046
    .line 1047
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v3

    .line 1051
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1052
    .line 1053
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1054
    .line 1055
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1056
    .line 1057
    .line 1058
    new-instance v4, Lqa/c;

    .line 1059
    .line 1060
    const/4 v5, 0x3

    .line 1061
    invoke-direct {v4, v0, v3, p1, v5}, Lqa/c;-><init>(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;Lmc/b;I)V

    .line 1062
    .line 1063
    .line 1064
    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1065
    .line 1066
    .line 1067
    goto :goto_1d

    .line 1068
    :cond_29
    :goto_1e
    iget-object v1, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1069
    .line 1070
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1071
    .line 1072
    .line 1073
    move-result v1

    .line 1074
    if-lez v1, :cond_2a

    .line 1075
    .line 1076
    const-wide/16 v1, 0x64

    .line 1077
    .line 1078
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1079
    .line 1080
    .line 1081
    goto :goto_1e

    .line 1082
    :cond_2a
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1083
    .line 1084
    .line 1085
    :goto_1f
    return-void

    .line 1086
    :pswitch_4
    iget-object v0, p0, Lqa/d;->b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 1087
    .line 1088
    const/4 v1, 0x0

    .line 1089
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 1090
    .line 1091
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->paths:Ljava/util/List;

    .line 1092
    .line 1093
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v2

    .line 1097
    :cond_2b
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1098
    .line 1099
    .line 1100
    move-result v3

    .line 1101
    if-eqz v3, :cond_2e

    .line 1102
    .line 1103
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v3

    .line 1107
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1108
    .line 1109
    iget-boolean v4, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 1110
    .line 1111
    if-eqz v4, :cond_2d

    .line 1112
    .line 1113
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->p(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;)Z

    .line 1114
    .line 1115
    .line 1116
    move-result v3

    .line 1117
    if-nez v3, :cond_2b

    .line 1118
    .line 1119
    const-string v0, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25"

    .line 1120
    .line 1121
    :cond_2c
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1122
    .line 1123
    .line 1124
    goto/16 :goto_25

    .line 1125
    .line 1126
    :cond_2d
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1127
    .line 1128
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1129
    .line 1130
    .line 1131
    goto :goto_20

    .line 1132
    :cond_2e
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1133
    .line 1134
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1135
    .line 1136
    .line 1137
    move-result v2

    .line 1138
    iput v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_count:I

    .line 1139
    .line 1140
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1141
    .line 1142
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v2

    .line 1146
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1147
    .line 1148
    .line 1149
    move-result v3

    .line 1150
    if-eqz v3, :cond_2f

    .line 1151
    .line 1152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v3

    .line 1156
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1157
    .line 1158
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->size_count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1159
    .line 1160
    iget-wide v5, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 1161
    .line 1162
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1163
    .line 1164
    .line 1165
    goto :goto_21

    .line 1166
    :cond_2f
    iget v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_count:I

    .line 1167
    .line 1168
    if-nez v2, :cond_30

    .line 1169
    .line 1170
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1171
    .line 1172
    .line 1173
    goto/16 :goto_25

    .line 1174
    .line 1175
    :cond_30
    const/4 v3, 0x1

    .line 1176
    if-ne v2, v3, :cond_32

    .line 1177
    .line 1178
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1179
    .line 1180
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1181
    .line 1182
    .line 1183
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 1184
    .line 1185
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1186
    .line 1187
    .line 1188
    move-result v2

    .line 1189
    if-ne v2, v3, :cond_31

    .line 1190
    .line 1191
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1192
    .line 1193
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1194
    .line 1195
    .line 1196
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 1197
    .line 1198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    .line 1200
    .line 1201
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1202
    .line 1203
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v3

    .line 1207
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1208
    .line 1209
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1210
    .line 1211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v2

    .line 1218
    goto :goto_22

    .line 1219
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1220
    .line 1221
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1222
    .line 1223
    .line 1224
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 1225
    .line 1226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    .line 1229
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1230
    .line 1231
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v3

    .line 1235
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1236
    .line 1237
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1238
    .line 1239
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 1240
    .line 1241
    invoke-static {v4, v3, v2}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v2

    .line 1245
    :goto_22
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1246
    .line 1247
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v1

    .line 1251
    check-cast v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1252
    .line 1253
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1254
    .line 1255
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/d;->n(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v0

    .line 1259
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1260
    .line 1261
    .line 1262
    move-result v1

    .line 1263
    if-eqz v1, :cond_2c

    .line 1264
    .line 1265
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1266
    .line 1267
    .line 1268
    goto :goto_25

    .line 1269
    :cond_32
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1270
    .line 1271
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1272
    .line 1273
    .line 1274
    const/4 v1, 0x3

    .line 1275
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v1

    .line 1279
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1280
    .line 1281
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v2

    .line 1285
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1286
    .line 1287
    .line 1288
    move-result v3

    .line 1289
    if-eqz v3, :cond_33

    .line 1290
    .line 1291
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v3

    .line 1295
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1296
    .line 1297
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1298
    .line 1299
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1300
    .line 1301
    .line 1302
    new-instance v4, Lqa/c;

    .line 1303
    .line 1304
    const/4 v5, 0x2

    .line 1305
    invoke-direct {v4, v0, v3, p1, v5}, Lqa/c;-><init>(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;Lmc/b;I)V

    .line 1306
    .line 1307
    .line 1308
    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1309
    .line 1310
    .line 1311
    goto :goto_23

    .line 1312
    :cond_33
    :goto_24
    iget-object v1, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1313
    .line 1314
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1315
    .line 1316
    .line 1317
    move-result v1

    .line 1318
    if-lez v1, :cond_34

    .line 1319
    .line 1320
    const-wide/16 v1, 0x64

    .line 1321
    .line 1322
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1323
    .line 1324
    .line 1325
    goto :goto_24

    .line 1326
    :cond_34
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1327
    .line 1328
    .line 1329
    :goto_25
    return-void

    .line 1330
    :pswitch_5
    iget-object v0, p0, Lqa/d;->b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 1331
    .line 1332
    const/4 v1, 0x0

    .line 1333
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 1334
    .line 1335
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->paths:Ljava/util/List;

    .line 1336
    .line 1337
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v2

    .line 1341
    :cond_35
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1342
    .line 1343
    .line 1344
    move-result v3

    .line 1345
    if-eqz v3, :cond_38

    .line 1346
    .line 1347
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v3

    .line 1351
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1352
    .line 1353
    iget-boolean v4, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 1354
    .line 1355
    if-eqz v4, :cond_37

    .line 1356
    .line 1357
    invoke-static {v0, v3}, Lcom/bumptech/glide/c;->u(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;)Z

    .line 1358
    .line 1359
    .line 1360
    move-result v3

    .line 1361
    if-nez v3, :cond_35

    .line 1362
    .line 1363
    const-string v0, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25"

    .line 1364
    .line 1365
    :cond_36
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1366
    .line 1367
    .line 1368
    goto/16 :goto_2b

    .line 1369
    .line 1370
    :cond_37
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1371
    .line 1372
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1373
    .line 1374
    .line 1375
    goto :goto_26

    .line 1376
    :cond_38
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1377
    .line 1378
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1379
    .line 1380
    .line 1381
    move-result v2

    .line 1382
    iput v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_count:I

    .line 1383
    .line 1384
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1385
    .line 1386
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v2

    .line 1390
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1391
    .line 1392
    .line 1393
    move-result v3

    .line 1394
    if-eqz v3, :cond_39

    .line 1395
    .line 1396
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v3

    .line 1400
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1401
    .line 1402
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->size_count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1403
    .line 1404
    iget-wide v5, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 1405
    .line 1406
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1407
    .line 1408
    .line 1409
    goto :goto_27

    .line 1410
    :cond_39
    iget v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_count:I

    .line 1411
    .line 1412
    if-nez v2, :cond_3a

    .line 1413
    .line 1414
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1415
    .line 1416
    .line 1417
    goto/16 :goto_2b

    .line 1418
    .line 1419
    :cond_3a
    const/4 v3, 0x1

    .line 1420
    if-ne v2, v3, :cond_3c

    .line 1421
    .line 1422
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1423
    .line 1424
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1425
    .line 1426
    .line 1427
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 1428
    .line 1429
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1430
    .line 1431
    .line 1432
    move-result v2

    .line 1433
    if-ne v2, v3, :cond_3b

    .line 1434
    .line 1435
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1436
    .line 1437
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1438
    .line 1439
    .line 1440
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 1441
    .line 1442
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    .line 1444
    .line 1445
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1446
    .line 1447
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v3

    .line 1451
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1452
    .line 1453
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1454
    .line 1455
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    .line 1457
    .line 1458
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v2

    .line 1462
    goto :goto_28

    .line 1463
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1464
    .line 1465
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1466
    .line 1467
    .line 1468
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 1469
    .line 1470
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    .line 1472
    .line 1473
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1474
    .line 1475
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v3

    .line 1479
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1480
    .line 1481
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1482
    .line 1483
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 1484
    .line 1485
    invoke-static {v4, v3, v2}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v2

    .line 1489
    :goto_28
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1490
    .line 1491
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v1

    .line 1495
    check-cast v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1496
    .line 1497
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1498
    .line 1499
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/c;->n(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v0

    .line 1503
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1504
    .line 1505
    .line 1506
    move-result v1

    .line 1507
    if-eqz v1, :cond_36

    .line 1508
    .line 1509
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1510
    .line 1511
    .line 1512
    goto :goto_2b

    .line 1513
    :cond_3c
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1514
    .line 1515
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1516
    .line 1517
    .line 1518
    const/4 v1, 0x3

    .line 1519
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v1

    .line 1523
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1524
    .line 1525
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v2

    .line 1529
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1530
    .line 1531
    .line 1532
    move-result v3

    .line 1533
    if-eqz v3, :cond_3d

    .line 1534
    .line 1535
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v3

    .line 1539
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1540
    .line 1541
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1542
    .line 1543
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1544
    .line 1545
    .line 1546
    new-instance v4, Lqa/c;

    .line 1547
    .line 1548
    const/4 v5, 0x1

    .line 1549
    invoke-direct {v4, v0, v3, v5}, Lqa/c;-><init>(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 1550
    .line 1551
    .line 1552
    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1553
    .line 1554
    .line 1555
    goto :goto_29

    .line 1556
    :cond_3d
    :goto_2a
    iget-object v1, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1557
    .line 1558
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1559
    .line 1560
    .line 1561
    move-result v1

    .line 1562
    if-lez v1, :cond_3e

    .line 1563
    .line 1564
    const-wide/16 v1, 0x64

    .line 1565
    .line 1566
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1567
    .line 1568
    .line 1569
    goto :goto_2a

    .line 1570
    :cond_3e
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1571
    .line 1572
    .line 1573
    :goto_2b
    return-void

    .line 1574
    :pswitch_6
    iget-object v0, p0, Lqa/d;->b:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 1575
    .line 1576
    const/4 v1, 0x0

    .line 1577
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 1578
    .line 1579
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->paths:Ljava/util/List;

    .line 1580
    .line 1581
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v2

    .line 1585
    :cond_3f
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1586
    .line 1587
    .line 1588
    move-result v3

    .line 1589
    if-eqz v3, :cond_42

    .line 1590
    .line 1591
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v3

    .line 1595
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1596
    .line 1597
    iget-boolean v4, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 1598
    .line 1599
    if-eqz v4, :cond_41

    .line 1600
    .line 1601
    invoke-static {v0, v3}, Lcom/bumptech/glide/c;->t(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;)Z

    .line 1602
    .line 1603
    .line 1604
    move-result v3

    .line 1605
    if-nez v3, :cond_3f

    .line 1606
    .line 1607
    const-string v0, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25"

    .line 1608
    .line 1609
    :cond_40
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1610
    .line 1611
    .line 1612
    goto/16 :goto_31

    .line 1613
    .line 1614
    :cond_41
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1615
    .line 1616
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1617
    .line 1618
    .line 1619
    goto :goto_2c

    .line 1620
    :cond_42
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1621
    .line 1622
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1623
    .line 1624
    .line 1625
    move-result v2

    .line 1626
    iput v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_count:I

    .line 1627
    .line 1628
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1629
    .line 1630
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v2

    .line 1634
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1635
    .line 1636
    .line 1637
    move-result v3

    .line 1638
    if-eqz v3, :cond_43

    .line 1639
    .line 1640
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v3

    .line 1644
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1645
    .line 1646
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->size_count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1647
    .line 1648
    iget-wide v5, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 1649
    .line 1650
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1651
    .line 1652
    .line 1653
    goto :goto_2d

    .line 1654
    :cond_43
    iget v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_count:I

    .line 1655
    .line 1656
    if-nez v2, :cond_44

    .line 1657
    .line 1658
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1659
    .line 1660
    .line 1661
    goto/16 :goto_31

    .line 1662
    .line 1663
    :cond_44
    const/4 v3, 0x1

    .line 1664
    if-ne v2, v3, :cond_46

    .line 1665
    .line 1666
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1667
    .line 1668
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1669
    .line 1670
    .line 1671
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 1672
    .line 1673
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1674
    .line 1675
    .line 1676
    move-result v2

    .line 1677
    if-ne v2, v3, :cond_45

    .line 1678
    .line 1679
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1680
    .line 1681
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1682
    .line 1683
    .line 1684
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 1685
    .line 1686
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1687
    .line 1688
    .line 1689
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1690
    .line 1691
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v3

    .line 1695
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1696
    .line 1697
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1698
    .line 1699
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    .line 1701
    .line 1702
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v2

    .line 1706
    goto :goto_2e

    .line 1707
    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1708
    .line 1709
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1710
    .line 1711
    .line 1712
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 1713
    .line 1714
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    .line 1716
    .line 1717
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1718
    .line 1719
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v3

    .line 1723
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1724
    .line 1725
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1726
    .line 1727
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 1728
    .line 1729
    invoke-static {v4, v3, v2}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1730
    .line 1731
    .line 1732
    move-result-object v2

    .line 1733
    :goto_2e
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1734
    .line 1735
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1736
    .line 1737
    .line 1738
    move-result-object v1

    .line 1739
    check-cast v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1740
    .line 1741
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1742
    .line 1743
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/c;->q(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v0

    .line 1747
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1748
    .line 1749
    .line 1750
    move-result v1

    .line 1751
    if-eqz v1, :cond_40

    .line 1752
    .line 1753
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1754
    .line 1755
    .line 1756
    goto :goto_31

    .line 1757
    :cond_46
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1758
    .line 1759
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1760
    .line 1761
    .line 1762
    const/4 v1, 0x3

    .line 1763
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v1

    .line 1767
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 1768
    .line 1769
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v2

    .line 1773
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1774
    .line 1775
    .line 1776
    move-result v3

    .line 1777
    if-eqz v3, :cond_47

    .line 1778
    .line 1779
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v3

    .line 1783
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1784
    .line 1785
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1786
    .line 1787
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1788
    .line 1789
    .line 1790
    new-instance v4, Lqa/c;

    .line 1791
    .line 1792
    const/4 v5, 0x0

    .line 1793
    invoke-direct {v4, v0, v3, v5}, Lqa/c;-><init>(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 1794
    .line 1795
    .line 1796
    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1797
    .line 1798
    .line 1799
    goto :goto_2f

    .line 1800
    :cond_47
    :goto_30
    iget-object v1, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1801
    .line 1802
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1803
    .line 1804
    .line 1805
    move-result v1

    .line 1806
    if-lez v1, :cond_48

    .line 1807
    .line 1808
    const-wide/16 v1, 0x64

    .line 1809
    .line 1810
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1811
    .line 1812
    .line 1813
    goto :goto_30

    .line 1814
    :cond_48
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1815
    .line 1816
    .line 1817
    :goto_31
    return-void

    .line 1818
    nop

    .line 1819
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
