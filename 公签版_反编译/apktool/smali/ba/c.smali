.class public final synthetic Lba/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lx9/n5;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lx9/n5;I)V
    .locals 0

    .line 1
    iput p3, p0, Lba/c;->a:I

    iput-object p1, p0, Lba/c;->c:Ljava/util/ArrayList;

    iput-object p2, p0, Lba/c;->b:Lx9/n5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lx9/n5;Ljava/util/ArrayList;I)V
    .locals 0

    .line 2
    iput p3, p0, Lba/c;->a:I

    iput-object p1, p0, Lba/c;->b:Lx9/n5;

    iput-object p2, p0, Lba/c;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 13

    .line 1
    iget v0, p0, Lba/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lba/c;->b:Lx9/n5;

    .line 7
    .line 8
    const-wide/16 v6, 0x10

    .line 9
    .line 10
    const-wide/16 v2, 0x3c

    .line 11
    .line 12
    const-wide/16 v4, 0x10

    .line 13
    .line 14
    invoke-static/range {v1 .. v7}, Lqa/g;->f(Lx9/n5;JJJ)Lr9/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lba/c;->c:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, ""

    .line 25
    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 37
    .line 38
    :try_start_0
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v4, Lokhttp3/Request$Builder;

    .line 41
    .line 42
    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Lr9/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iget-object v4, v0, Lr9/a;->a:Lokhttp3/OkHttpClient;

    .line 62
    .line 63
    invoke-virtual {v4, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v3}, Lif/a;->M0(Lokhttp3/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    const-string v2, "\u5220\u9664\u5931\u8d25"

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-static {v2, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lba/c;->b:Lx9/n5;

    .line 93
    .line 94
    iget-boolean v1, v0, Lx9/n5;->u:Z

    .line 95
    .line 96
    iget-object v2, p0, Lba/c;->c:Ljava/util/ArrayList;

    .line 97
    .line 98
    const-string v3, "/"

    .line 99
    .line 100
    const-string v4, ""

    .line 101
    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_e

    .line 113
    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 119
    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lx9/n5;->b()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v6, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    iget-boolean v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 142
    .line 143
    if-eqz v2, :cond_2

    .line 144
    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    goto :goto_3

    .line 161
    :catch_1
    move-exception v0

    .line 162
    goto :goto_4

    .line 163
    :cond_2
    :goto_3
    new-instance v2, Lce/t0;

    .line 164
    .line 165
    invoke-direct {v2, v5}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Lce/t0;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-static {v0, v1, v4}, Lda/b;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const-string v1, "system cannot find the file"

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_3

    .line 188
    .line 189
    const-string v0, "\u65e0\u6743\u9650\u67e5\u770b\u6b64\u76ee\u5f55"

    .line 190
    .line 191
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_4

    .line 196
    .line 197
    const-string v0, "\u8fde\u63a5\u5931\u8d25"

    .line 198
    .line 199
    :cond_4
    move-object v4, v0

    .line 200
    goto/16 :goto_d

    .line 201
    .line 202
    :cond_5
    invoke-static {}, Lcom/hierynomus/smbj/SmbConfig;->builder()Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    const/4 v5, 0x1

    .line 207
    invoke-virtual {v1, v5}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withMultiProtocolNegotiate(Z)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 212
    .line 213
    const-wide/16 v7, 0x12c

    .line 214
    .line 215
    invoke-virtual {v1, v7, v8, v6}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    const-wide/16 v7, 0x0

    .line 220
    .line 221
    invoke-virtual {v1, v7, v8, v6}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withSoTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    new-instance v6, Lcom/hierynomus/smbj/transport/tcp/async/AsyncDirectTcpTransportFactory;

    .line 226
    .line 227
    invoke-direct {v6}, Lcom/hierynomus/smbj/transport/tcp/async/AsyncDirectTcpTransportFactory;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v6}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withTransportLayerFactory(Lcom/hierynomus/smbj/transport/TransportLayerFactory;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v1}, Lcom/hierynomus/smbj/SmbConfig$Builder;->build()Lcom/hierynomus/smbj/SmbConfig;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    new-instance v6, Lcom/hierynomus/smbj/SMBClient;

    .line 239
    .line 240
    invoke-direct {v6, v1}, Lcom/hierynomus/smbj/SMBClient;-><init>(Lcom/hierynomus/smbj/SmbConfig;)V

    .line 241
    .line 242
    .line 243
    const/4 v1, 0x0

    .line 244
    :try_start_2
    iget-object v7, v0, Lx9/n5;->c:Ljava/lang/String;

    .line 245
    .line 246
    iget v8, v0, Lx9/n5;->d:I

    .line 247
    .line 248
    invoke-virtual {v6, v7, v8}, Lcom/hierynomus/smbj/SMBClient;->connect(Ljava/lang/String;I)Lcom/hierynomus/smbj/connection/Connection;

    .line 249
    .line 250
    .line 251
    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 252
    :try_start_3
    iget-object v8, v0, Lx9/n5;->e:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    if-eqz v8, :cond_6

    .line 259
    .line 260
    invoke-static {}, Lcom/hierynomus/smbj/auth/AuthenticationContext;->guest()Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    goto :goto_5

    .line 265
    :catchall_0
    move-exception p1

    .line 266
    move-object v0, v1

    .line 267
    goto/16 :goto_f

    .line 268
    .line 269
    :catch_2
    move-exception v0

    .line 270
    move-object v2, v1

    .line 271
    goto/16 :goto_a

    .line 272
    .line 273
    :cond_6
    new-instance v8, Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 274
    .line 275
    iget-object v9, v0, Lx9/n5;->e:Ljava/lang/String;

    .line 276
    .line 277
    iget-object v10, v0, Lx9/n5;->f:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    .line 280
    .line 281
    .line 282
    move-result-object v10

    .line 283
    iget-object v0, v0, Lx9/n5;->v:Ljava/lang/String;

    .line 284
    .line 285
    invoke-direct {v8, v9, v10, v0}, Lcom/hierynomus/smbj/auth/AuthenticationContext;-><init>(Ljava/lang/String;[CLjava/lang/String;)V

    .line 286
    .line 287
    .line 288
    move-object v0, v8

    .line 289
    :goto_5
    invoke-virtual {v7, v0}, Lcom/hierynomus/smbj/connection/Connection;->authenticate(Lcom/hierynomus/smbj/auth/AuthenticationContext;)Lcom/hierynomus/smbj/session/Session;

    .line 290
    .line 291
    .line 292
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 293
    :try_start_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result v8

    .line 301
    if-eqz v8, :cond_8

    .line 302
    .line 303
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    check-cast v8, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 308
    .line 309
    iget-object v9, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v9, v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 312
    .line 313
    .line 314
    move-result v9

    .line 315
    iget-object v10, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {v10, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v10

    .line 321
    iget-object v11, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 322
    .line 323
    add-int/lit8 v9, v9, 0x1

    .line 324
    .line 325
    invoke-virtual {v11, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v9

    .line 329
    invoke-virtual {v0, v10}, Lcom/hierynomus/smbj/session/Session;->connectShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/Share;

    .line 330
    .line 331
    .line 332
    move-result-object v10

    .line 333
    check-cast v10, Lcom/hierynomus/smbj/share/DiskShare;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 334
    .line 335
    :try_start_5
    iget-boolean v1, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 336
    .line 337
    if-eqz v1, :cond_7

    .line 338
    .line 339
    invoke-virtual {v10, v9, v5}, Lcom/hierynomus/smbj/share/DiskShare;->rmdir(Ljava/lang/String;Z)V

    .line 340
    .line 341
    .line 342
    goto :goto_7

    .line 343
    :catchall_1
    move-exception p1

    .line 344
    move-object v1, v10

    .line 345
    goto/16 :goto_f

    .line 346
    .line 347
    :catch_3
    move-exception v1

    .line 348
    move-object v2, v0

    .line 349
    move-object v0, v1

    .line 350
    move-object v1, v10

    .line 351
    goto :goto_a

    .line 352
    :cond_7
    invoke-virtual {v10, v9}, Lcom/hierynomus/smbj/share/DiskShare;->rm(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 353
    .line 354
    .line 355
    :goto_7
    move-object v1, v10

    .line 356
    goto :goto_6

    .line 357
    :catchall_2
    move-exception p1

    .line 358
    goto :goto_f

    .line 359
    :catch_4
    move-exception v2

    .line 360
    move-object v12, v2

    .line 361
    move-object v2, v0

    .line 362
    move-object v0, v12

    .line 363
    goto :goto_a

    .line 364
    :cond_8
    if-eqz v1, :cond_9

    .line 365
    .line 366
    :try_start_6
    invoke-virtual {v1}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 367
    .line 368
    .line 369
    goto :goto_8

    .line 370
    :catch_5
    nop

    .line 371
    :cond_9
    :goto_8
    if-eqz v0, :cond_a

    .line 372
    .line 373
    :try_start_7
    invoke-virtual {v0}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 374
    .line 375
    .line 376
    :catch_6
    :cond_a
    :try_start_8
    invoke-virtual {v7}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 377
    .line 378
    .line 379
    :catch_7
    :cond_b
    :goto_9
    :try_start_9
    invoke-virtual {v6}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 380
    .line 381
    .line 382
    goto :goto_d

    .line 383
    :catch_8
    nop

    .line 384
    goto :goto_d

    .line 385
    :catchall_3
    move-exception p1

    .line 386
    move-object v0, v1

    .line 387
    move-object v7, v0

    .line 388
    goto :goto_f

    .line 389
    :catch_9
    move-exception v0

    .line 390
    move-object v2, v1

    .line 391
    move-object v7, v2

    .line 392
    :goto_a
    :try_start_a
    invoke-static {v0}, Lqa/f;->i(Ljava/lang/Exception;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 396
    if-eqz v1, :cond_c

    .line 397
    .line 398
    :try_start_b
    invoke-virtual {v1}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 399
    .line 400
    .line 401
    goto :goto_b

    .line 402
    :catch_a
    nop

    .line 403
    :cond_c
    :goto_b
    if-eqz v2, :cond_d

    .line 404
    .line 405
    :try_start_c
    invoke-virtual {v2}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 406
    .line 407
    .line 408
    goto :goto_c

    .line 409
    :catch_b
    nop

    .line 410
    :cond_d
    :goto_c
    if-eqz v7, :cond_b

    .line 411
    .line 412
    :try_start_d
    invoke-virtual {v7}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 413
    .line 414
    .line 415
    goto :goto_9

    .line 416
    :cond_e
    :goto_d
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    if-eqz v0, :cond_f

    .line 421
    .line 422
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 423
    .line 424
    .line 425
    goto :goto_e

    .line 426
    :cond_f
    invoke-static {v4, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 427
    .line 428
    .line 429
    :goto_e
    return-void

    .line 430
    :catchall_4
    move-exception p1

    .line 431
    move-object v0, v2

    .line 432
    :goto_f
    if-eqz v1, :cond_10

    .line 433
    .line 434
    :try_start_e
    invoke-virtual {v1}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 435
    .line 436
    .line 437
    goto :goto_10

    .line 438
    :catch_c
    nop

    .line 439
    :cond_10
    :goto_10
    if-eqz v0, :cond_11

    .line 440
    .line 441
    :try_start_f
    invoke-virtual {v0}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 442
    .line 443
    .line 444
    goto :goto_11

    .line 445
    :catch_d
    nop

    .line 446
    :cond_11
    :goto_11
    if-eqz v7, :cond_12

    .line 447
    .line 448
    :try_start_10
    invoke-virtual {v7}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    .line 449
    .line 450
    .line 451
    :catch_e
    :cond_12
    :try_start_11
    invoke-virtual {v6}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    .line 452
    .line 453
    .line 454
    :catch_f
    throw p1

    .line 455
    :pswitch_1
    iget-object v0, p0, Lba/c;->c:Ljava/util/ArrayList;

    .line 456
    .line 457
    const-string v1, "\u5220\u9664\u5931\u8d25"

    .line 458
    .line 459
    const-string v2, ""

    .line 460
    .line 461
    :try_start_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    move-object v3, v2

    .line 466
    :cond_13
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    if-eqz v4, :cond_17

    .line 471
    .line 472
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    check-cast v4, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 477
    .line 478
    iget-boolean v5, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    .line 479
    .line 480
    iget-object v6, p0, Lba/c;->b:Lx9/n5;

    .line 481
    .line 482
    if-eqz v5, :cond_14

    .line 483
    .line 484
    :try_start_13
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 485
    .line 486
    invoke-static {v6, v4}, Lcom/bumptech/glide/d;->l(Lx9/n5;Ljava/lang/String;)Z

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    if-nez v4, :cond_13

    .line 491
    .line 492
    :goto_13
    move-object v3, v1

    .line 493
    goto :goto_12

    .line 494
    :catch_10
    move-exception v0

    .line 495
    goto :goto_14

    .line 496
    :cond_14
    iget-object v5, v6, Lx9/n5;->A:Ldh/j;

    .line 497
    .line 498
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 499
    .line 500
    const-string v6, "DELE"

    .line 501
    .line 502
    invoke-virtual {v5, v6, v4}, Ldh/j;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .line 504
    .line 505
    move-result v4

    .line 506
    invoke-static {v4}, Lcom/bumptech/glide/c;->L(I)Z

    .line 507
    .line 508
    .line 509
    move-result v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10

    .line 510
    if-nez v4, :cond_13

    .line 511
    .line 512
    goto :goto_13

    .line 513
    :goto_14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-static {v0, v3}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    if-eqz v2, :cond_15

    .line 527
    .line 528
    goto :goto_15

    .line 529
    :cond_15
    move-object v1, v0

    .line 530
    :goto_15
    const-string v0, "Connection reset"

    .line 531
    .line 532
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    if-eqz v0, :cond_16

    .line 537
    .line 538
    const-string v3, "\u8fde\u63a5\u4e2d\u65ad,\u8bf7\u91cd\u65b0\u9009\u4e2d\u7f51\u76d8"

    .line 539
    .line 540
    goto :goto_16

    .line 541
    :cond_16
    move-object v3, v1

    .line 542
    :cond_17
    :goto_16
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    if-eqz v0, :cond_18

    .line 547
    .line 548
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 549
    .line 550
    .line 551
    goto :goto_17

    .line 552
    :cond_18
    invoke-static {v3, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 553
    .line 554
    .line 555
    :goto_17
    return-void

    .line 556
    :pswitch_2
    iget-object v0, p0, Lba/c;->c:Ljava/util/ArrayList;

    .line 557
    .line 558
    const-string v1, "\u5220\u9664\u5931\u8d25"

    .line 559
    .line 560
    const-string v2, ""

    .line 561
    .line 562
    :try_start_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    move-object v3, v2

    .line 567
    :cond_19
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 568
    .line 569
    .line 570
    move-result v4

    .line 571
    if-eqz v4, :cond_1d

    .line 572
    .line 573
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v4

    .line 577
    check-cast v4, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 578
    .line 579
    iget-boolean v5, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11

    .line 580
    .line 581
    iget-object v6, p0, Lba/c;->b:Lx9/n5;

    .line 582
    .line 583
    if-eqz v5, :cond_1a

    .line 584
    .line 585
    :try_start_15
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 586
    .line 587
    invoke-static {v6, v4}, Lcom/bumptech/glide/c;->p(Lx9/n5;Ljava/lang/String;)Z

    .line 588
    .line 589
    .line 590
    move-result v4

    .line 591
    if-nez v4, :cond_19

    .line 592
    .line 593
    :goto_19
    move-object v3, v1

    .line 594
    goto :goto_18

    .line 595
    :catch_11
    move-exception v0

    .line 596
    goto :goto_1a

    .line 597
    :cond_1a
    iget-object v5, v6, Lx9/n5;->x:Ldh/e;

    .line 598
    .line 599
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 600
    .line 601
    const-string v6, "DELE"

    .line 602
    .line 603
    invoke-virtual {v5, v6, v4}, Ldh/c;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    .line 605
    .line 606
    move-result v4

    .line 607
    invoke-static {v4}, Lcom/bumptech/glide/c;->L(I)Z

    .line 608
    .line 609
    .line 610
    move-result v4
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11

    .line 611
    if-nez v4, :cond_19

    .line 612
    .line 613
    goto :goto_19

    .line 614
    :goto_1a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    invoke-static {v0, v3}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 624
    .line 625
    .line 626
    move-result v2

    .line 627
    if-eqz v2, :cond_1b

    .line 628
    .line 629
    goto :goto_1b

    .line 630
    :cond_1b
    move-object v1, v0

    .line 631
    :goto_1b
    const-string v0, "Connection reset"

    .line 632
    .line 633
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    if-eqz v0, :cond_1c

    .line 638
    .line 639
    const-string v3, "\u8fde\u63a5\u4e2d\u65ad,\u8bf7\u91cd\u65b0\u9009\u4e2d\u7f51\u76d8"

    .line 640
    .line 641
    goto :goto_1c

    .line 642
    :cond_1c
    move-object v3, v1

    .line 643
    :cond_1d
    :goto_1c
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 644
    .line 645
    .line 646
    move-result v0

    .line 647
    if-eqz v0, :cond_1e

    .line 648
    .line 649
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 650
    .line 651
    .line 652
    goto :goto_1d

    .line 653
    :cond_1e
    invoke-static {v3, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 654
    .line 655
    .line 656
    :goto_1d
    return-void

    .line 657
    :pswitch_3
    iget-object v0, p0, Lba/c;->b:Lx9/n5;

    .line 658
    .line 659
    iget-object v1, p0, Lba/c;->c:Ljava/util/ArrayList;

    .line 660
    .line 661
    const-string v2, "uuid="

    .line 662
    .line 663
    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 664
    .line 665
    .line 666
    move-result-wide v3

    .line 667
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v3

    .line 671
    invoke-static {v3}, Ls1/g;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    new-instance v4, Ljava/lang/StringBuilder;

    .line 676
    .line 677
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    iget-object v2, v0, Lx9/n5;->l:Ljava/lang/String;

    .line 681
    .line 682
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    const-string v2, "&devType=6&devCode="

    .line 686
    .line 687
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    iget-object v2, v0, Lx9/n5;->l:Ljava/lang/String;

    .line 691
    .line 692
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    const-string v2, "&devModel=chrome&devVersion=140&appVersion=&timestamp="

    .line 696
    .line 697
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    const-string v2, "&appToken="

    .line 704
    .line 705
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    iget-object v0, v0, Lx9/n5;->k:Ljava/lang/String;

    .line 709
    .line 710
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    const-string v0, "&extra=2"

    .line 714
    .line 715
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 723
    .line 724
    .line 725
    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_12

    .line 726
    const-string v2, ""

    .line 727
    .line 728
    move-object v3, v2

    .line 729
    :goto_1e
    :try_start_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 730
    .line 731
    .line 732
    move-result v4

    .line 733
    if-eqz v4, :cond_20

    .line 734
    .line 735
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v4

    .line 739
    check-cast v4, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 740
    .line 741
    iget-boolean v5, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_12

    .line 742
    .line 743
    const-string v6, ","

    .line 744
    .line 745
    if-eqz v5, :cond_1f

    .line 746
    .line 747
    :try_start_18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 748
    .line 749
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    iget-object v3, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 756
    .line 757
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v3

    .line 767
    goto :goto_1e

    .line 768
    :catch_12
    move-exception v0

    .line 769
    goto/16 :goto_1f

    .line 770
    .line 771
    :cond_1f
    new-instance v5, Ljava/lang/StringBuilder;

    .line 772
    .line 773
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    .line 778
    .line 779
    iget-object v2, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 780
    .line 781
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    .line 783
    .line 784
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v2

    .line 791
    goto :goto_1e

    .line 792
    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 793
    .line 794
    .line 795
    move-result v1

    .line 796
    const/4 v4, 0x0

    .line 797
    if-nez v1, :cond_21

    .line 798
    .line 799
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 800
    .line 801
    .line 802
    move-result v1

    .line 803
    add-int/lit8 v1, v1, -0x1

    .line 804
    .line 805
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    :cond_21
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 810
    .line 811
    .line 812
    move-result v1

    .line 813
    if-nez v1, :cond_22

    .line 814
    .line 815
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 816
    .line 817
    .line 818
    move-result v1

    .line 819
    add-int/lit8 v1, v1, -0x1

    .line 820
    .line 821
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v3

    .line 825
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 826
    .line 827
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 828
    .line 829
    .line 830
    const-string v4, "https://api.feejii.com/app/file/delete?"

    .line 831
    .line 832
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    new-instance v1, Ljava/lang/StringBuilder;

    .line 843
    .line 844
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    .line 846
    .line 847
    const-string v4, "{\"fileIds\":\""

    .line 848
    .line 849
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    const-string v2, "\",\"folderIds\":\""

    .line 856
    .line 857
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    const-string v2, "\",\"status\":0}"

    .line 864
    .line 865
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v1

    .line 872
    invoke-static {v0, v1}, Ls1/g;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    const-string v1, "code"

    .line 885
    .line 886
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 887
    .line 888
    .line 889
    move-result-object v1

    .line 890
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 891
    .line 892
    .line 893
    move-result v1

    .line 894
    const/16 v2, 0xc8

    .line 895
    .line 896
    if-ne v1, v2, :cond_23

    .line 897
    .line 898
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 899
    .line 900
    .line 901
    goto :goto_20

    .line 902
    :cond_23
    new-instance v1, Ljava/lang/Exception;

    .line 903
    .line 904
    const-string v2, "msg"

    .line 905
    .line 906
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    throw v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_12

    .line 918
    :goto_1f
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 919
    .line 920
    .line 921
    :goto_20
    return-void

    .line 922
    :pswitch_4
    iget-object v0, p0, Lba/c;->b:Lx9/n5;

    .line 923
    .line 924
    iget-object v1, p0, Lba/c;->c:Ljava/util/ArrayList;

    .line 925
    .line 926
    invoke-static {v0, v1}, Lqf/c;->l(Lx9/n5;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v0

    .line 930
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 931
    .line 932
    .line 933
    move-result v1

    .line 934
    if-eqz v1, :cond_24

    .line 935
    .line 936
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 937
    .line 938
    .line 939
    goto :goto_21

    .line 940
    :cond_24
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 941
    .line 942
    .line 943
    :goto_21
    return-void

    .line 944
    :pswitch_5
    iget-object v0, p0, Lba/c;->c:Ljava/util/ArrayList;

    .line 945
    .line 946
    iget-object v1, p0, Lba/c;->b:Lx9/n5;

    .line 947
    .line 948
    const-string v2, "msg"

    .line 949
    .line 950
    :try_start_19
    new-instance v3, Lz7/s;

    .line 951
    .line 952
    invoke-direct {v3}, Lz7/s;-><init>()V

    .line 953
    .line 954
    .line 955
    new-instance v4, Lz7/o;

    .line 956
    .line 957
    invoke-direct {v4}, Lz7/o;-><init>()V

    .line 958
    .line 959
    .line 960
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 961
    .line 962
    .line 963
    move-result-object v0

    .line 964
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 965
    .line 966
    .line 967
    move-result v5

    .line 968
    if-eqz v5, :cond_25

    .line 969
    .line 970
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 971
    .line 972
    .line 973
    move-result-object v5

    .line 974
    check-cast v5, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 975
    .line 976
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 977
    .line 978
    invoke-virtual {v4, v5}, Lz7/o;->j(Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    goto :goto_22

    .line 982
    :catch_13
    move-exception v0

    .line 983
    goto :goto_23

    .line 984
    :cond_25
    const-string v0, "fileIds"

    .line 985
    .line 986
    invoke-virtual {v3, v0, v4}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 987
    .line 988
    .line 989
    const-string v0, "https://api.guangyapan.com/userres/v1/file/delete_file"

    .line 990
    .line 991
    invoke-virtual {v3}, Lz7/p;->toString()Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v3

    .line 995
    invoke-static {v1, v0, v3}, Ls1/g;->H(Lx9/n5;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v0

    .line 999
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v0

    .line 1003
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v1

    .line 1011
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v1

    .line 1015
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v1

    .line 1019
    const-string v3, "success"

    .line 1020
    .line 1021
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1022
    .line 1023
    .line 1024
    move-result v1

    .line 1025
    if-eqz v1, :cond_26

    .line 1026
    .line 1027
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1028
    .line 1029
    .line 1030
    goto :goto_24

    .line 1031
    :cond_26
    new-instance v1, Ljava/lang/Exception;

    .line 1032
    .line 1033
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1042
    .line 1043
    .line 1044
    throw v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_13

    .line 1045
    :goto_23
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1046
    .line 1047
    .line 1048
    :goto_24
    return-void

    .line 1049
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
