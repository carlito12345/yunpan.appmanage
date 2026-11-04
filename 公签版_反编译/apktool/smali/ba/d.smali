.class public final synthetic Lba/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lx9/n5;

.field public final synthetic c:Lcom/yunpan/appmanage/bean/WpPathBean;

.field public final synthetic d:Lcom/yunpan/appmanage/bean/WpPathBean;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;)V
    .locals 1

    .line 1
    const/16 v0, 0x9

    iput v0, p0, Lba/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lba/d;->c:Lcom/yunpan/appmanage/bean/WpPathBean;

    iput-object p2, p0, Lba/d;->d:Lcom/yunpan/appmanage/bean/WpPathBean;

    iput-object p3, p0, Lba/d;->b:Lx9/n5;

    return-void
.end method

.method public synthetic constructor <init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;I)V
    .locals 0

    .line 2
    iput p4, p0, Lba/d;->a:I

    iput-object p1, p0, Lba/d;->b:Lx9/n5;

    iput-object p2, p0, Lba/d;->c:Lcom/yunpan/appmanage/bean/WpPathBean;

    iput-object p3, p0, Lba/d;->d:Lcom/yunpan/appmanage/bean/WpPathBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lmc/b;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "\\"

    .line 4
    .line 5
    const-string v2, "//"

    .line 6
    .line 7
    const-string v3, "/"

    .line 8
    .line 9
    iget-object v4, v1, Lba/d;->b:Lx9/n5;

    .line 10
    .line 11
    iget-boolean v5, v4, Lx9/n5;->u:Z

    .line 12
    .line 13
    iget-object v6, v1, Lba/d;->c:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 14
    .line 15
    iget-object v7, v1, Lba/d;->d:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 16
    .line 17
    const-string v8, ""

    .line 18
    .line 19
    if-eqz v5, :cond_3

    .line 20
    .line 21
    :try_start_0
    new-instance v0, Lce/t0;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Lx9/n5;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v3, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-direct {v0, v2}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lce/t0;

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Lx9/n5;->b()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v4, v7, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v4, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-direct {v2, v3}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Lce/t0;->d(Lce/t0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto/16 :goto_7

    .line 82
    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v2, v8}, Lda/b;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v2, "system cannot find the file"

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_0

    .line 100
    .line 101
    const-string v0, "\u65e0\u6743\u9650\u67e5\u770b\u6b64\u76ee\u5f55"

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    const-string v2, "The parameter is incorrect"

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_1

    .line 111
    .line 112
    const-string v0, "\u5df2\u5b58\u5728\u76f8\u540c\u540d\u79f0"

    .line 113
    .line 114
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_2

    .line 119
    .line 120
    const-string v0, "\u8fde\u63a5\u5931\u8d25"

    .line 121
    .line 122
    :cond_2
    move-object v8, v0

    .line 123
    goto/16 :goto_7

    .line 124
    .line 125
    :cond_3
    invoke-static {}, Lcom/hierynomus/smbj/SmbConfig;->builder()Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    const/4 v9, 0x1

    .line 130
    invoke-virtual {v5, v9}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withMultiProtocolNegotiate(Z)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 135
    .line 136
    const-wide/16 v11, 0x12c

    .line 137
    .line 138
    invoke-virtual {v5, v11, v12, v10}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    const-wide/16 v11, 0x0

    .line 143
    .line 144
    invoke-virtual {v5, v11, v12, v10}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withSoTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    new-instance v10, Lcom/hierynomus/smbj/transport/tcp/async/AsyncDirectTcpTransportFactory;

    .line 149
    .line 150
    invoke-direct {v10}, Lcom/hierynomus/smbj/transport/tcp/async/AsyncDirectTcpTransportFactory;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5, v10}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withTransportLayerFactory(Lcom/hierynomus/smbj/transport/TransportLayerFactory;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {v5}, Lcom/hierynomus/smbj/SmbConfig$Builder;->build()Lcom/hierynomus/smbj/SmbConfig;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    new-instance v10, Lcom/hierynomus/smbj/SMBClient;

    .line 162
    .line 163
    invoke-direct {v10, v5}, Lcom/hierynomus/smbj/SMBClient;-><init>(Lcom/hierynomus/smbj/SmbConfig;)V

    .line 164
    .line 165
    .line 166
    const/4 v5, 0x0

    .line 167
    :try_start_1
    iget-object v11, v4, Lx9/n5;->c:Ljava/lang/String;

    .line 168
    .line 169
    iget v12, v4, Lx9/n5;->d:I

    .line 170
    .line 171
    invoke-virtual {v10, v11, v12}, Lcom/hierynomus/smbj/SMBClient;->connect(Ljava/lang/String;I)Lcom/hierynomus/smbj/connection/Connection;

    .line 172
    .line 173
    .line 174
    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 175
    :try_start_2
    iget-object v12, v4, Lx9/n5;->e:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v12

    .line 181
    if-eqz v12, :cond_4

    .line 182
    .line 183
    invoke-static {}, Lcom/hierynomus/smbj/auth/AuthenticationContext;->guest()Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    goto :goto_1

    .line 188
    :catchall_0
    move-exception v0

    .line 189
    move-object v4, v5

    .line 190
    goto/16 :goto_9

    .line 191
    .line 192
    :catch_1
    move-exception v0

    .line 193
    move-object v4, v5

    .line 194
    goto/16 :goto_4

    .line 195
    .line 196
    :cond_4
    new-instance v12, Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 197
    .line 198
    iget-object v13, v4, Lx9/n5;->e:Ljava/lang/String;

    .line 199
    .line 200
    iget-object v14, v4, Lx9/n5;->f:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    .line 203
    .line 204
    .line 205
    move-result-object v14

    .line 206
    iget-object v4, v4, Lx9/n5;->v:Ljava/lang/String;

    .line 207
    .line 208
    invoke-direct {v12, v13, v14, v4}, Lcom/hierynomus/smbj/auth/AuthenticationContext;-><init>(Ljava/lang/String;[CLjava/lang/String;)V

    .line 209
    .line 210
    .line 211
    move-object v4, v12

    .line 212
    :goto_1
    invoke-virtual {v11, v4}, Lcom/hierynomus/smbj/connection/Connection;->authenticate(Lcom/hierynomus/smbj/auth/AuthenticationContext;)Lcom/hierynomus/smbj/session/Session;

    .line 213
    .line 214
    .line 215
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    :try_start_3
    iget-object v12, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v12, v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    iget-object v13, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v13, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v13

    .line 228
    iget-object v14, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v14, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v12

    .line 234
    iget-object v14, v7, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v14, v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 237
    .line 238
    .line 239
    move-result v14

    .line 240
    iget-object v15, v7, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v15, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v15

    .line 246
    iget-object v7, v7, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v14

    .line 256
    if-eqz v14, :cond_8

    .line 257
    .line 258
    new-instance v14, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    iget-object v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    invoke-virtual {v4, v13}, Lcom/hierynomus/smbj/session/Session;->connectShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/Share;

    .line 276
    .line 277
    .line 278
    move-result-object v13

    .line 279
    check-cast v13, Lcom/hierynomus/smbj/share/DiskShare;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 280
    .line 281
    :try_start_4
    new-instance v5, Ljava/util/HashSet;

    .line 282
    .line 283
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 284
    .line 285
    .line 286
    sget-object v14, Lcom/hierynomus/msdtyp/AccessMask;->GENERIC_ALL:Lcom/hierynomus/msdtyp/AccessMask;

    .line 287
    .line 288
    invoke-virtual {v5, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    new-instance v15, Ljava/util/HashSet;

    .line 292
    .line 293
    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 294
    .line 295
    .line 296
    sget-object v14, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_RANDOM_ACCESS:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 297
    .line 298
    invoke-virtual {v15, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    iget-boolean v6, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 302
    .line 303
    if-eqz v6, :cond_5

    .line 304
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-static {v13, v12, v0}, Lqa/f;->d(Lcom/hierynomus/smbj/share/DiskShare;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    goto :goto_2

    .line 324
    :catchall_1
    move-exception v0

    .line 325
    move-object v5, v13

    .line 326
    goto/16 :goto_9

    .line 327
    .line 328
    :catch_2
    move-exception v0

    .line 329
    move-object v5, v13

    .line 330
    goto/16 :goto_4

    .line 331
    .line 332
    :cond_5
    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    invoke-virtual {v6, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    sget-object v12, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->ALL:Ljava/util/Set;

    .line 345
    .line 346
    sget-object v19, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 347
    .line 348
    const/16 v20, 0x0

    .line 349
    .line 350
    const/16 v17, 0x0

    .line 351
    .line 352
    move-object v14, v13

    .line 353
    move-object/from16 v21, v15

    .line 354
    .line 355
    move-object v15, v6

    .line 356
    move-object/from16 v16, v5

    .line 357
    .line 358
    move-object/from16 v18, v12

    .line 359
    .line 360
    invoke-virtual/range {v14 .. v20}, Lcom/hierynomus/smbj/share/DiskShare;->openFile(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/File;

    .line 361
    .line 362
    .line 363
    move-result-object v6

    .line 364
    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v15

    .line 376
    sget-object v19, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OVERWRITE_IF:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 377
    .line 378
    const/16 v17, 0x0

    .line 379
    .line 380
    move-object v14, v13

    .line 381
    move-object/from16 v16, v5

    .line 382
    .line 383
    move-object/from16 v18, v12

    .line 384
    .line 385
    move-object/from16 v20, v21

    .line 386
    .line 387
    invoke-virtual/range {v14 .. v20}, Lcom/hierynomus/smbj/share/DiskShare;->openFile(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/File;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-virtual {v6, v0}, Lcom/hierynomus/smbj/share/File;->remoteCopyTo(Lcom/hierynomus/smbj/share/File;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v6}, Lcom/hierynomus/smbj/share/Open;->close()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 398
    .line 399
    .line 400
    :goto_2
    if-eqz v13, :cond_6

    .line 401
    .line 402
    :try_start_5
    invoke-virtual {v13}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 403
    .line 404
    .line 405
    :catch_3
    :cond_6
    :try_start_6
    invoke-virtual {v4}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 406
    .line 407
    .line 408
    :catch_4
    :try_start_7
    invoke-virtual {v11}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 409
    .line 410
    .line 411
    :catch_5
    :cond_7
    :goto_3
    :try_start_8
    invoke-virtual {v10}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 412
    .line 413
    .line 414
    goto :goto_7

    .line 415
    :catch_6
    nop

    .line 416
    goto :goto_7

    .line 417
    :catchall_2
    move-exception v0

    .line 418
    goto :goto_9

    .line 419
    :catch_7
    move-exception v0

    .line 420
    goto :goto_4

    .line 421
    :cond_8
    :try_start_9
    new-instance v0, Ljava/lang/Exception;

    .line 422
    .line 423
    const-string v2, "\u6682\u4e0d\u652f\u6301\u590d\u5236\u5230\u4e0d\u540c\u7684\u5171\u4eab\u540d"

    .line 424
    .line 425
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 429
    :catchall_3
    move-exception v0

    .line 430
    move-object v4, v5

    .line 431
    move-object v11, v4

    .line 432
    goto :goto_9

    .line 433
    :catch_8
    move-exception v0

    .line 434
    move-object v4, v5

    .line 435
    move-object v11, v4

    .line 436
    :goto_4
    :try_start_a
    invoke-static {v0}, Lqa/f;->i(Ljava/lang/Exception;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 440
    if-eqz v5, :cond_9

    .line 441
    .line 442
    :try_start_b
    invoke-virtual {v5}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 443
    .line 444
    .line 445
    goto :goto_5

    .line 446
    :catch_9
    nop

    .line 447
    :cond_9
    :goto_5
    if-eqz v4, :cond_a

    .line 448
    .line 449
    :try_start_c
    invoke-virtual {v4}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 450
    .line 451
    .line 452
    goto :goto_6

    .line 453
    :catch_a
    nop

    .line 454
    :cond_a
    :goto_6
    if-eqz v11, :cond_7

    .line 455
    .line 456
    :try_start_d
    invoke-virtual {v11}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 457
    .line 458
    .line 459
    goto :goto_3

    .line 460
    :goto_7
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    if-eqz v0, :cond_b

    .line 465
    .line 466
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 467
    .line 468
    .line 469
    goto :goto_8

    .line 470
    :cond_b
    move-object/from16 v2, p1

    .line 471
    .line 472
    invoke-static {v8, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 473
    .line 474
    .line 475
    :goto_8
    return-void

    .line 476
    :goto_9
    if-eqz v5, :cond_c

    .line 477
    .line 478
    :try_start_e
    invoke-virtual {v5}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 479
    .line 480
    .line 481
    goto :goto_a

    .line 482
    :catch_b
    nop

    .line 483
    :cond_c
    :goto_a
    if-eqz v4, :cond_d

    .line 484
    .line 485
    :try_start_f
    invoke-virtual {v4}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 486
    .line 487
    .line 488
    goto :goto_b

    .line 489
    :catch_c
    nop

    .line 490
    :cond_d
    :goto_b
    if-eqz v11, :cond_e

    .line 491
    .line 492
    :try_start_10
    invoke-virtual {v11}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    .line 493
    .line 494
    .line 495
    :catch_d
    :cond_e
    :try_start_11
    invoke-virtual {v10}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    .line 496
    .line 497
    .line 498
    :catch_e
    goto :goto_d

    .line 499
    :goto_c
    throw v0

    .line 500
    :goto_d
    goto :goto_c
.end method

.method private final b(Lmc/b;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lba/d;->b:Lx9/n5;

    .line 2
    .line 3
    iget-object v7, p0, Lba/d;->c:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 4
    .line 5
    iget-object v8, p0, Lba/d;->d:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 6
    .line 7
    const-string v9, ""

    .line 8
    .line 9
    const-wide/16 v3, 0x10

    .line 10
    .line 11
    const-wide/16 v5, 0x10

    .line 12
    .line 13
    const-wide/16 v1, 0x3c

    .line 14
    .line 15
    :try_start_0
    invoke-static/range {v0 .. v6}, Lqa/g;->f(Lx9/n5;JJJ)Lr9/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, v7, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v2, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-boolean v2, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, "/"

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object v2, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v2, v1}, Lr9/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    const-string v0, "Internal Server Error"

    .line 83
    .line 84
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    .line 90
    const-string v9, "WebDAV\u6682\u65f6\u4e0d\u652f\u6301\u6587\u4ef6\u5939\u590d\u5236"

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    const-string v9, "\u590d\u5236\u5931\u8d25"

    .line 100
    .line 101
    :cond_2
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    invoke-static {v9, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 112
    .line 113
    .line 114
    :goto_3
    return-void
.end method

.method private final c(Lmc/b;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lba/d;->c:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 2
    .line 3
    iget-object v1, p0, Lba/d;->d:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 4
    .line 5
    iget-object v2, p0, Lba/d;->b:Lx9/n5;

    .line 6
    .line 7
    const-wide/16 v7, 0x10

    .line 8
    .line 9
    const-wide/16 v3, 0x14

    .line 10
    .line 11
    const-wide/16 v5, 0x10

    .line 12
    .line 13
    invoke-static/range {v2 .. v8}, Lqa/g;->f(Lx9/n5;JJJ)Lr9/a;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, ""

    .line 18
    .line 19
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v5, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v5, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    new-instance v5, Lokhttp3/Request$Builder;

    .line 39
    .line 40
    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {v4}, Lr9/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "MKCOL"

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iget-object v2, v2, Lr9/a;->a:Lokhttp3/OkHttpClient;

    .line 63
    .line 64
    invoke-virtual {v2, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, Lif/a;->M0(Lokhttp3/Response;)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v0, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, "/"

    .line 91
    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 100
    .line 101
    const/4 v0, 0x1

    .line 102
    iput-boolean v0, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 103
    .line 104
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 105
    .line 106
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 107
    .line 108
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b0:Ljava/text/SimpleDateFormat;

    .line 109
    .line 110
    new-instance v2, Ljava/util/Date;

    .line 111
    .line 112
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v2}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    .line 138
    const-string v3, "\u65b0\u5efa\u5931\u8d25"

    .line 139
    .line 140
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_1

    .line 145
    .line 146
    iget-object v0, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_1

    .line 153
    .line 154
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_1
    invoke-static {v3, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 159
    .line 160
    .line 161
    :goto_1
    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "null"

    .line 6
    .line 7
    const-string v3, "info"

    .line 8
    .line 9
    const-string v4, "text"

    .line 10
    .line 11
    const-string v5, "zt"

    .line 12
    .line 13
    const-string v6, "\u8bf7\u6c42\u51fa\u9519"

    .line 14
    .line 15
    const-string v7, "/mydisk.php?item=files&action=index&u="

    .line 16
    .line 17
    const-string v8, "/doupload.php"

    .line 18
    .line 19
    const-string v9, "https://pc.woozooo.com"

    .line 20
    .line 21
    const-string v10, "\u51fa\u9519"

    .line 22
    .line 23
    const-string v11, "\u521b\u5efa\u5931\u8d25"

    .line 24
    .line 25
    const-string v12, "\u5171\u4eab\u540d\u9519\u8bef"

    .line 26
    .line 27
    const-string v15, "\u8fde\u63a5\u5931\u8d25"

    .line 28
    .line 29
    const-string v16, "\u65e0\u6743\u9650\u67e5\u770b\u6b64\u76ee\u5f55"

    .line 30
    .line 31
    const-string v14, "system cannot find the file"

    .line 32
    .line 33
    const-string v13, "/"

    .line 34
    .line 35
    move-object/from16 v17, v6

    .line 36
    .line 37
    const-string v6, ""

    .line 38
    .line 39
    move-object/from16 v18, v10

    .line 40
    .line 41
    iget-object v10, v1, Lba/d;->b:Lx9/n5;

    .line 42
    .line 43
    move-object/from16 v19, v11

    .line 44
    .line 45
    iget-object v11, v1, Lba/d;->d:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 46
    .line 47
    move-object/from16 v20, v15

    .line 48
    .line 49
    iget-object v15, v1, Lba/d;->c:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 50
    .line 51
    move-object/from16 v21, v0

    .line 52
    .line 53
    iget v0, v1, Lba/d;->a:I

    .line 54
    .line 55
    packed-switch v0, :pswitch_data_0

    .line 56
    .line 57
    .line 58
    iget-object v0, v1, Lba/d;->b:Lx9/n5;

    .line 59
    .line 60
    const-wide/16 v25, 0x10

    .line 61
    .line 62
    const-wide/16 v27, 0x10

    .line 63
    .line 64
    const-wide/16 v23, 0x3c

    .line 65
    .line 66
    move-object/from16 v22, v0

    .line 67
    .line 68
    :try_start_0
    invoke-static/range {v22 .. v28}, Lqa/g;->f(Lx9/n5;JJJ)Lr9/a;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v4, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v4, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    iget-object v4, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v4, v3}, Lr9/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v3}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    .line 113
    const-string v6, "\u79fb\u52a8\u5931\u8d25"

    .line 114
    .line 115
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_1

    .line 120
    .line 121
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    invoke-static {v6, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 126
    .line 127
    .line 128
    :goto_1
    return-void

    .line 129
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lba/d;->c(Lmc/b;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lba/d;->b(Lmc/b;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    iget-object v3, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v3, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iput-object v0, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 157
    .line 158
    iget-boolean v0, v10, Lx9/n5;->u:Z

    .line 159
    .line 160
    if-eqz v0, :cond_4

    .line 161
    .line 162
    :try_start_1
    new-instance v0, Lce/t0;

    .line 163
    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10}, Lx9/n5;->b()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget-object v4, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-direct {v0, v3}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lce/t0;->y()V

    .line 189
    .line 190
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    iget-object v3, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iput-object v0, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 209
    .line 210
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 211
    .line 212
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 213
    .line 214
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b0:Ljava/text/SimpleDateFormat;

    .line 215
    .line 216
    new-instance v3, Ljava/util/Date;

    .line 217
    .line 218
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iput-object v0, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 228
    .line 229
    .line 230
    goto/16 :goto_f

    .line 231
    .line 232
    :catch_1
    move-exception v0

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-static {v0, v3, v6}, Lda/b;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_2

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_2
    move-object/from16 v16, v0

    .line 250
    .line 251
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_3

    .line 256
    .line 257
    move-object/from16 v15, v20

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_3
    move-object/from16 v15, v16

    .line 261
    .line 262
    :goto_3
    new-instance v0, Ljava/lang/Throwable;

    .line 263
    .line 264
    invoke-direct {v0, v15}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_f

    .line 271
    .line 272
    :cond_4
    invoke-static {}, Lcom/hierynomus/smbj/SmbConfig;->builder()Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    const/4 v3, 0x1

    .line 277
    invoke-virtual {v0, v3}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withMultiProtocolNegotiate(Z)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 282
    .line 283
    const-wide/16 v4, 0x12

    .line 284
    .line 285
    invoke-virtual {v0, v4, v5, v3}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v0, v4, v5, v3}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withSoTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/hierynomus/smbj/SmbConfig$Builder;->build()Lcom/hierynomus/smbj/SmbConfig;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    new-instance v3, Lcom/hierynomus/smbj/SMBClient;

    .line 298
    .line 299
    invoke-direct {v3, v0}, Lcom/hierynomus/smbj/SMBClient;-><init>(Lcom/hierynomus/smbj/SmbConfig;)V

    .line 300
    .line 301
    .line 302
    :try_start_2
    iget-object v0, v10, Lx9/n5;->c:Ljava/lang/String;

    .line 303
    .line 304
    iget v4, v10, Lx9/n5;->d:I

    .line 305
    .line 306
    invoke-virtual {v3, v0, v4}, Lcom/hierynomus/smbj/SMBClient;->connect(Ljava/lang/String;I)Lcom/hierynomus/smbj/connection/Connection;

    .line 307
    .line 308
    .line 309
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 310
    :try_start_3
    iget-object v0, v10, Lx9/n5;->e:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-eqz v0, :cond_5

    .line 317
    .line 318
    invoke-static {}, Lcom/hierynomus/smbj/auth/AuthenticationContext;->guest()Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    goto :goto_8

    .line 323
    :catchall_0
    move-exception v0

    .line 324
    :goto_4
    const/4 v5, 0x0

    .line 325
    :goto_5
    const/4 v14, 0x0

    .line 326
    goto/16 :goto_10

    .line 327
    .line 328
    :catch_2
    move-exception v0

    .line 329
    :goto_6
    const/4 v5, 0x0

    .line 330
    :goto_7
    const/4 v14, 0x0

    .line 331
    goto/16 :goto_c

    .line 332
    .line 333
    :cond_5
    new-instance v0, Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 334
    .line 335
    iget-object v5, v10, Lx9/n5;->e:Ljava/lang/String;

    .line 336
    .line 337
    iget-object v6, v10, Lx9/n5;->f:Ljava/lang/String;

    .line 338
    .line 339
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    iget-object v7, v10, Lx9/n5;->v:Ljava/lang/String;

    .line 344
    .line 345
    invoke-direct {v0, v5, v6, v7}, Lcom/hierynomus/smbj/auth/AuthenticationContext;-><init>(Ljava/lang/String;[CLjava/lang/String;)V

    .line 346
    .line 347
    .line 348
    :goto_8
    invoke-virtual {v4, v0}, Lcom/hierynomus/smbj/connection/Connection;->authenticate(Lcom/hierynomus/smbj/auth/AuthenticationContext;)Lcom/hierynomus/smbj/session/Session;

    .line 349
    .line 350
    .line 351
    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 352
    :try_start_4
    iget-object v0, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 353
    .line 354
    const/4 v6, 0x1

    .line 355
    invoke-virtual {v0, v13, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    const/4 v7, -0x1

    .line 360
    if-eq v0, v7, :cond_7

    .line 361
    .line 362
    iget-object v7, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {v7, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    iget-object v7, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 369
    .line 370
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v5, v6}, Lcom/hierynomus/smbj/session/Session;->connectShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/Share;

    .line 375
    .line 376
    .line 377
    move-result-object v6

    .line 378
    check-cast v6, Lcom/hierynomus/smbj/share/DiskShare;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 379
    .line 380
    :try_start_5
    invoke-virtual {v6, v0}, Lcom/hierynomus/smbj/share/DiskShare;->mkdir(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    .line 388
    iget-object v7, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 389
    .line 390
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    iput-object v0, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 401
    .line 402
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 403
    .line 404
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 405
    .line 406
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b0:Ljava/text/SimpleDateFormat;

    .line 407
    .line 408
    new-instance v7, Ljava/util/Date;

    .line 409
    .line 410
    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    iput-object v0, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 418
    .line 419
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 420
    .line 421
    .line 422
    :try_start_6
    invoke-virtual {v6}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 423
    .line 424
    .line 425
    :catch_3
    :try_start_7
    invoke-virtual {v5}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 426
    .line 427
    .line 428
    :catch_4
    :goto_9
    :try_start_8
    invoke-virtual {v4}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 429
    .line 430
    .line 431
    :catch_5
    :cond_6
    :try_start_9
    invoke-virtual {v3}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    .line 432
    .line 433
    .line 434
    goto :goto_f

    .line 435
    :goto_a
    move-object v14, v6

    .line 436
    goto :goto_10

    .line 437
    :goto_b
    move-object v14, v6

    .line 438
    goto :goto_c

    .line 439
    :catchall_1
    move-exception v0

    .line 440
    goto :goto_a

    .line 441
    :catch_6
    move-exception v0

    .line 442
    goto :goto_b

    .line 443
    :catchall_2
    move-exception v0

    .line 444
    goto :goto_5

    .line 445
    :catch_7
    move-exception v0

    .line 446
    goto :goto_7

    .line 447
    :cond_7
    :try_start_a
    new-instance v0, Ljava/lang/Exception;

    .line 448
    .line 449
    invoke-direct {v0, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 453
    :catchall_3
    move-exception v0

    .line 454
    const/4 v4, 0x0

    .line 455
    goto/16 :goto_4

    .line 456
    .line 457
    :catch_8
    move-exception v0

    .line 458
    const/4 v4, 0x0

    .line 459
    goto/16 :goto_6

    .line 460
    .line 461
    :goto_c
    :try_start_b
    new-instance v6, Ljava/lang/Throwable;

    .line 462
    .line 463
    invoke-static {v0}, Lqa/f;->i(Ljava/lang/Exception;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-direct {v6, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2, v6}, Lmc/b;->d(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 471
    .line 472
    .line 473
    if-eqz v14, :cond_8

    .line 474
    .line 475
    :try_start_c
    invoke-virtual {v14}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 476
    .line 477
    .line 478
    goto :goto_d

    .line 479
    :catch_9
    nop

    .line 480
    :cond_8
    :goto_d
    if-eqz v5, :cond_9

    .line 481
    .line 482
    :try_start_d
    invoke-virtual {v5}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 483
    .line 484
    .line 485
    goto :goto_e

    .line 486
    :catch_a
    nop

    .line 487
    :cond_9
    :goto_e
    if-eqz v4, :cond_6

    .line 488
    .line 489
    goto :goto_9

    .line 490
    :catch_b
    :goto_f
    return-void

    .line 491
    :catchall_4
    move-exception v0

    .line 492
    :goto_10
    if-eqz v14, :cond_a

    .line 493
    .line 494
    :try_start_e
    invoke-virtual {v14}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 495
    .line 496
    .line 497
    goto :goto_11

    .line 498
    :catch_c
    nop

    .line 499
    :cond_a
    :goto_11
    if-eqz v5, :cond_b

    .line 500
    .line 501
    :try_start_f
    invoke-virtual {v5}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 502
    .line 503
    .line 504
    goto :goto_12

    .line 505
    :catch_d
    nop

    .line 506
    :cond_b
    :goto_12
    if-eqz v4, :cond_c

    .line 507
    .line 508
    :try_start_10
    invoke-virtual {v4}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    .line 509
    .line 510
    .line 511
    :catch_e
    :cond_c
    :try_start_11
    invoke-virtual {v3}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    .line 512
    .line 513
    .line 514
    :catch_f
    throw v0

    .line 515
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lba/d;->a(Lmc/b;)V

    .line 516
    .line 517
    .line 518
    return-void

    .line 519
    :pswitch_4
    const-string v0, "\\"

    .line 520
    .line 521
    iget-boolean v3, v10, Lx9/n5;->u:Z

    .line 522
    .line 523
    if-eqz v3, :cond_10

    .line 524
    .line 525
    :try_start_12
    new-instance v0, Lce/t0;

    .line 526
    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v10}, Lx9/n5;->b()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    iget-object v4, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 540
    .line 541
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    invoke-direct {v0, v3}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    new-instance v3, Lce/t0;

    .line 552
    .line 553
    new-instance v4, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v10}, Lx9/n5;->b()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v5

    .line 562
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    iget-object v5, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 566
    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    iget-object v5, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 571
    .line 572
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v4

    .line 579
    invoke-direct {v3, v4}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0, v3}, Lce/t0;->D(Lce/t0;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    .line 583
    .line 584
    .line 585
    goto/16 :goto_1e

    .line 586
    .line 587
    :catch_10
    move-exception v0

    .line 588
    new-instance v3, Ljava/lang/StringBuilder;

    .line 589
    .line 590
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 591
    .line 592
    .line 593
    invoke-static {v0, v3, v6}, Lda/b;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 598
    .line 599
    .line 600
    move-result v3

    .line 601
    if-eqz v3, :cond_d

    .line 602
    .line 603
    goto :goto_13

    .line 604
    :cond_d
    const-string v3, "The parameter is incorrect"

    .line 605
    .line 606
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 607
    .line 608
    .line 609
    move-result v3

    .line 610
    if-eqz v3, :cond_e

    .line 611
    .line 612
    const-string v16, "\u5df2\u5b58\u5728\u76f8\u540c\u540d\u79f0"

    .line 613
    .line 614
    goto :goto_13

    .line 615
    :cond_e
    move-object/from16 v16, v0

    .line 616
    .line 617
    :goto_13
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    .line 618
    .line 619
    .line 620
    move-result v0

    .line 621
    if-eqz v0, :cond_f

    .line 622
    .line 623
    move-object/from16 v15, v20

    .line 624
    .line 625
    goto :goto_14

    .line 626
    :cond_f
    move-object/from16 v15, v16

    .line 627
    .line 628
    :goto_14
    move-object v6, v15

    .line 629
    goto/16 :goto_1e

    .line 630
    .line 631
    :cond_10
    invoke-static {}, Lcom/hierynomus/smbj/SmbConfig;->builder()Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    const/4 v4, 0x1

    .line 636
    invoke-virtual {v3, v4}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withMultiProtocolNegotiate(Z)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 641
    .line 642
    const-wide/16 v7, 0x12c

    .line 643
    .line 644
    invoke-virtual {v3, v7, v8, v4}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 645
    .line 646
    .line 647
    move-result-object v3

    .line 648
    const-wide/16 v7, 0x0

    .line 649
    .line 650
    invoke-virtual {v3, v7, v8, v4}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withSoTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 651
    .line 652
    .line 653
    move-result-object v3

    .line 654
    invoke-virtual {v3}, Lcom/hierynomus/smbj/SmbConfig$Builder;->build()Lcom/hierynomus/smbj/SmbConfig;

    .line 655
    .line 656
    .line 657
    move-result-object v3

    .line 658
    new-instance v4, Lcom/hierynomus/smbj/SMBClient;

    .line 659
    .line 660
    invoke-direct {v4, v3}, Lcom/hierynomus/smbj/SMBClient;-><init>(Lcom/hierynomus/smbj/SmbConfig;)V

    .line 661
    .line 662
    .line 663
    :try_start_13
    iget-object v3, v10, Lx9/n5;->c:Ljava/lang/String;

    .line 664
    .line 665
    iget v5, v10, Lx9/n5;->d:I

    .line 666
    .line 667
    invoke-virtual {v4, v3, v5}, Lcom/hierynomus/smbj/SMBClient;->connect(Ljava/lang/String;I)Lcom/hierynomus/smbj/connection/Connection;

    .line 668
    .line 669
    .line 670
    move-result-object v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_18
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 671
    :try_start_14
    iget-object v5, v10, Lx9/n5;->e:Ljava/lang/String;

    .line 672
    .line 673
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 674
    .line 675
    .line 676
    move-result v5

    .line 677
    if-eqz v5, :cond_11

    .line 678
    .line 679
    invoke-static {}, Lcom/hierynomus/smbj/auth/AuthenticationContext;->guest()Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 680
    .line 681
    .line 682
    move-result-object v5

    .line 683
    goto :goto_19

    .line 684
    :catchall_5
    move-exception v0

    .line 685
    :goto_15
    const/4 v5, 0x0

    .line 686
    :goto_16
    const/4 v14, 0x0

    .line 687
    goto/16 :goto_20

    .line 688
    .line 689
    :catch_11
    move-exception v0

    .line 690
    :goto_17
    const/4 v5, 0x0

    .line 691
    :goto_18
    const/4 v14, 0x0

    .line 692
    goto/16 :goto_1b

    .line 693
    .line 694
    :cond_11
    new-instance v5, Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 695
    .line 696
    iget-object v7, v10, Lx9/n5;->e:Ljava/lang/String;

    .line 697
    .line 698
    iget-object v8, v10, Lx9/n5;->f:Ljava/lang/String;

    .line 699
    .line 700
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    .line 701
    .line 702
    .line 703
    move-result-object v8

    .line 704
    iget-object v9, v10, Lx9/n5;->v:Ljava/lang/String;

    .line 705
    .line 706
    invoke-direct {v5, v7, v8, v9}, Lcom/hierynomus/smbj/auth/AuthenticationContext;-><init>(Ljava/lang/String;[CLjava/lang/String;)V

    .line 707
    .line 708
    .line 709
    :goto_19
    invoke-virtual {v3, v5}, Lcom/hierynomus/smbj/connection/Connection;->authenticate(Lcom/hierynomus/smbj/auth/AuthenticationContext;)Lcom/hierynomus/smbj/session/Session;

    .line 710
    .line 711
    .line 712
    move-result-object v5
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 713
    :try_start_15
    iget-object v7, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 714
    .line 715
    const/4 v8, 0x1

    .line 716
    invoke-virtual {v7, v13, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 717
    .line 718
    .line 719
    move-result v7

    .line 720
    const/4 v9, -0x1

    .line 721
    if-eq v7, v9, :cond_15

    .line 722
    .line 723
    iget-object v9, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 724
    .line 725
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v9

    .line 729
    iget-object v10, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 730
    .line 731
    invoke-virtual {v10, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v7

    .line 735
    iget-object v10, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 736
    .line 737
    invoke-virtual {v10, v13, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 738
    .line 739
    .line 740
    move-result v10

    .line 741
    const/4 v14, -0x1

    .line 742
    if-eq v10, v14, :cond_14

    .line 743
    .line 744
    iget-object v12, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 745
    .line 746
    invoke-virtual {v12, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v12

    .line 750
    new-instance v8, Ljava/lang/StringBuilder;

    .line 751
    .line 752
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 753
    .line 754
    .line 755
    iget-object v11, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 756
    .line 757
    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v10

    .line 761
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    iget-object v10, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 765
    .line 766
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v8

    .line 773
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    move-result v10

    .line 777
    if-eqz v10, :cond_13

    .line 778
    .line 779
    invoke-virtual {v5, v9}, Lcom/hierynomus/smbj/session/Session;->connectShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/Share;

    .line 780
    .line 781
    .line 782
    move-result-object v9

    .line 783
    check-cast v9, Lcom/hierynomus/smbj/share/DiskShare;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_17
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 784
    .line 785
    :try_start_16
    new-instance v10, Ljava/util/HashSet;

    .line 786
    .line 787
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 788
    .line 789
    .line 790
    sget-object v11, Lcom/hierynomus/msdtyp/AccessMask;->GENERIC_ALL:Lcom/hierynomus/msdtyp/AccessMask;

    .line 791
    .line 792
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 793
    .line 794
    .line 795
    new-instance v11, Ljava/util/HashSet;

    .line 796
    .line 797
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 798
    .line 799
    .line 800
    sget-object v12, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_RANDOM_ACCESS:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 801
    .line 802
    invoke-virtual {v11, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 803
    .line 804
    .line 805
    const/4 v11, 0x1

    .line 806
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v7

    .line 810
    invoke-virtual {v7, v13, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v18

    .line 814
    sget-object v21, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->ALL:Ljava/util/Set;

    .line 815
    .line 816
    sget-object v22, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 817
    .line 818
    const/16 v23, 0x0

    .line 819
    .line 820
    const/16 v20, 0x0

    .line 821
    .line 822
    move-object/from16 v17, v9

    .line 823
    .line 824
    move-object/from16 v19, v10

    .line 825
    .line 826
    invoke-virtual/range {v17 .. v23}, Lcom/hierynomus/smbj/share/DiskShare;->open(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/DiskEntry;

    .line 827
    .line 828
    .line 829
    move-result-object v7

    .line 830
    const/4 v10, 0x1

    .line 831
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v8

    .line 835
    invoke-virtual {v8, v13, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    invoke-virtual {v7, v0}, Lcom/hierynomus/smbj/share/DiskEntry;->rename(Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v7}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 843
    .line 844
    .line 845
    :try_start_17
    invoke-virtual {v9}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_12

    .line 846
    .line 847
    .line 848
    :catch_12
    :try_start_18
    invoke-virtual {v5}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_13

    .line 849
    .line 850
    .line 851
    :catch_13
    :try_start_19
    invoke-virtual {v3}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_14

    .line 852
    .line 853
    .line 854
    :catch_14
    :cond_12
    :goto_1a
    :try_start_1a
    invoke-virtual {v4}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_15

    .line 855
    .line 856
    .line 857
    goto :goto_1e

    .line 858
    :catch_15
    nop

    .line 859
    goto :goto_1e

    .line 860
    :catchall_6
    move-exception v0

    .line 861
    move-object v14, v9

    .line 862
    goto :goto_20

    .line 863
    :catch_16
    move-exception v0

    .line 864
    move-object v14, v9

    .line 865
    goto :goto_1b

    .line 866
    :catchall_7
    move-exception v0

    .line 867
    goto/16 :goto_16

    .line 868
    .line 869
    :catch_17
    move-exception v0

    .line 870
    goto/16 :goto_18

    .line 871
    .line 872
    :cond_13
    :try_start_1b
    new-instance v0, Ljava/lang/Exception;

    .line 873
    .line 874
    const-string v6, "\u4e0d\u652f\u6301\u79fb\u52a8\u5230\u4e0d\u540c\u7684\u5171\u4eab\u540d"

    .line 875
    .line 876
    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    throw v0

    .line 880
    :cond_14
    new-instance v0, Ljava/lang/Exception;

    .line 881
    .line 882
    invoke-direct {v0, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    throw v0

    .line 886
    :cond_15
    new-instance v0, Ljava/lang/Exception;

    .line 887
    .line 888
    invoke-direct {v0, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    throw v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_17
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 892
    :catchall_8
    move-exception v0

    .line 893
    const/4 v3, 0x0

    .line 894
    goto/16 :goto_15

    .line 895
    .line 896
    :catch_18
    move-exception v0

    .line 897
    const/4 v3, 0x0

    .line 898
    goto/16 :goto_17

    .line 899
    .line 900
    :goto_1b
    :try_start_1c
    invoke-static {v0}, Lqa/f;->i(Ljava/lang/Exception;)Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v6
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 904
    if-eqz v14, :cond_16

    .line 905
    .line 906
    :try_start_1d
    invoke-virtual {v14}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_19

    .line 907
    .line 908
    .line 909
    goto :goto_1c

    .line 910
    :catch_19
    nop

    .line 911
    :cond_16
    :goto_1c
    if-eqz v5, :cond_17

    .line 912
    .line 913
    :try_start_1e
    invoke-virtual {v5}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1a

    .line 914
    .line 915
    .line 916
    goto :goto_1d

    .line 917
    :catch_1a
    nop

    .line 918
    :cond_17
    :goto_1d
    if-eqz v3, :cond_12

    .line 919
    .line 920
    :try_start_1f
    invoke-virtual {v3}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_14

    .line 921
    .line 922
    .line 923
    goto :goto_1a

    .line 924
    :goto_1e
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 925
    .line 926
    .line 927
    move-result v0

    .line 928
    if-eqz v0, :cond_18

    .line 929
    .line 930
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 931
    .line 932
    .line 933
    goto :goto_1f

    .line 934
    :cond_18
    invoke-static {v6, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 935
    .line 936
    .line 937
    :goto_1f
    return-void

    .line 938
    :catchall_9
    move-exception v0

    .line 939
    :goto_20
    if-eqz v14, :cond_19

    .line 940
    .line 941
    :try_start_20
    invoke-virtual {v14}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1b

    .line 942
    .line 943
    .line 944
    goto :goto_21

    .line 945
    :catch_1b
    nop

    .line 946
    :cond_19
    :goto_21
    if-eqz v5, :cond_1a

    .line 947
    .line 948
    :try_start_21
    invoke-virtual {v5}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1c

    .line 949
    .line 950
    .line 951
    goto :goto_22

    .line 952
    :catch_1c
    nop

    .line 953
    :cond_1a
    :goto_22
    if-eqz v3, :cond_1b

    .line 954
    .line 955
    :try_start_22
    invoke-virtual {v3}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1d

    .line 956
    .line 957
    .line 958
    :catch_1d
    :cond_1b
    :try_start_23
    invoke-virtual {v4}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1e

    .line 959
    .line 960
    .line 961
    :catch_1e
    throw v0

    .line 962
    :pswitch_5
    :try_start_24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 963
    .line 964
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 965
    .line 966
    .line 967
    iget-object v3, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 968
    .line 969
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    iget-object v3, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 973
    .line 974
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    .line 976
    .line 977
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    iget-object v3, v10, Lx9/n5;->A:Ldh/j;

    .line 982
    .line 983
    invoke-virtual {v3, v0}, Ldh/e;->u(Ljava/lang/String;)Z

    .line 984
    .line 985
    .line 986
    move-result v3

    .line 987
    if-eqz v3, :cond_1c

    .line 988
    .line 989
    new-instance v3, Ljava/lang/StringBuilder;

    .line 990
    .line 991
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 992
    .line 993
    .line 994
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    iput-object v0, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1005
    .line 1006
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1007
    .line 1008
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1009
    .line 1010
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b0:Ljava/text/SimpleDateFormat;

    .line 1011
    .line 1012
    new-instance v3, Ljava/util/Date;

    .line 1013
    .line 1014
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v0

    .line 1021
    iput-object v0, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1f

    .line 1022
    .line 1023
    move-object v0, v6

    .line 1024
    goto :goto_25

    .line 1025
    :catch_1f
    move-exception v0

    .line 1026
    goto :goto_24

    .line 1027
    :cond_1c
    :goto_23
    move-object/from16 v0, v19

    .line 1028
    .line 1029
    goto :goto_25

    .line 1030
    :goto_24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1031
    .line 1032
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1033
    .line 1034
    .line 1035
    invoke-static {v0, v3}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v0

    .line 1039
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1040
    .line 1041
    .line 1042
    move-result v3

    .line 1043
    if-eqz v3, :cond_1d

    .line 1044
    .line 1045
    goto :goto_23

    .line 1046
    :cond_1d
    :goto_25
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1047
    .line 1048
    .line 1049
    move-result v3

    .line 1050
    if-eqz v3, :cond_1e

    .line 1051
    .line 1052
    iget-object v3, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1053
    .line 1054
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1055
    .line 1056
    .line 1057
    move-result v3

    .line 1058
    if-nez v3, :cond_1e

    .line 1059
    .line 1060
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1061
    .line 1062
    .line 1063
    goto :goto_26

    .line 1064
    :cond_1e
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1065
    .line 1066
    .line 1067
    :goto_26
    return-void

    .line 1068
    :pswitch_6
    :try_start_25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1071
    .line 1072
    .line 1073
    iget-object v3, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1074
    .line 1075
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    .line 1077
    .line 1078
    iget-object v3, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 1079
    .line 1080
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    iget-object v3, v10, Lx9/n5;->x:Ldh/e;

    .line 1088
    .line 1089
    invoke-virtual {v3, v0}, Ldh/e;->u(Ljava/lang/String;)Z

    .line 1090
    .line 1091
    .line 1092
    move-result v3

    .line 1093
    if-eqz v3, :cond_1f

    .line 1094
    .line 1095
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v0

    .line 1110
    iput-object v0, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1111
    .line 1112
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1113
    .line 1114
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1115
    .line 1116
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b0:Ljava/text/SimpleDateFormat;

    .line 1117
    .line 1118
    new-instance v3, Ljava/util/Date;

    .line 1119
    .line 1120
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v0

    .line 1127
    iput-object v0, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_20

    .line 1128
    .line 1129
    move-object v0, v6

    .line 1130
    goto :goto_29

    .line 1131
    :catch_20
    move-exception v0

    .line 1132
    goto :goto_28

    .line 1133
    :cond_1f
    :goto_27
    move-object/from16 v0, v19

    .line 1134
    .line 1135
    goto :goto_29

    .line 1136
    :goto_28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1137
    .line 1138
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1139
    .line 1140
    .line 1141
    invoke-static {v0, v3}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v0

    .line 1145
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1146
    .line 1147
    .line 1148
    move-result v3

    .line 1149
    if-eqz v3, :cond_20

    .line 1150
    .line 1151
    goto :goto_27

    .line 1152
    :cond_20
    :goto_29
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1153
    .line 1154
    .line 1155
    move-result v3

    .line 1156
    if-eqz v3, :cond_21

    .line 1157
    .line 1158
    iget-object v3, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1159
    .line 1160
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1161
    .line 1162
    .line 1163
    move-result v3

    .line 1164
    if-nez v3, :cond_21

    .line 1165
    .line 1166
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1167
    .line 1168
    .line 1169
    goto :goto_2a

    .line 1170
    :cond_21
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1171
    .line 1172
    .line 1173
    :goto_2a
    return-void

    .line 1174
    :pswitch_7
    :try_start_26
    invoke-static {v15, v11, v10}, Ls1/g;->d(Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;)V

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_21

    .line 1178
    .line 1179
    .line 1180
    goto :goto_2b

    .line 1181
    :catch_21
    move-exception v0

    .line 1182
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1183
    .line 1184
    .line 1185
    :goto_2b
    return-void

    .line 1186
    :pswitch_8
    :try_start_27
    invoke-static {v15, v11, v10}, Lqf/c;->c(Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;)V

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_22

    .line 1190
    .line 1191
    .line 1192
    goto :goto_2c

    .line 1193
    :catch_22
    move-exception v0

    .line 1194
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1195
    .line 1196
    .line 1197
    :goto_2c
    return-void

    .line 1198
    :pswitch_9
    iget-object v0, v10, Lx9/n5;->c:Ljava/lang/String;

    .line 1199
    .line 1200
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1201
    .line 1202
    .line 1203
    move-result v0

    .line 1204
    if-eqz v0, :cond_22

    .line 1205
    .line 1206
    iput-object v9, v10, Lx9/n5;->c:Ljava/lang/String;

    .line 1207
    .line 1208
    :cond_22
    iget-object v0, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 1209
    .line 1210
    :try_start_28
    const-string v9, "UTF-8"

    .line 1211
    .line 1212
    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_23

    .line 1216
    goto :goto_2d

    .line 1217
    :catch_23
    nop

    .line 1218
    :goto_2d
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1219
    .line 1220
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1221
    .line 1222
    .line 1223
    iget-object v12, v10, Lx9/n5;->c:Ljava/lang/String;

    .line 1224
    .line 1225
    invoke-static {v12, v8, v9}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v8

    .line 1229
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1230
    .line 1231
    const-string v12, "task=2&parent_id="

    .line 1232
    .line 1233
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1234
    .line 1235
    .line 1236
    iget-object v12, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1237
    .line 1238
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    .line 1240
    .line 1241
    const-string v12, "&folder_name="

    .line 1242
    .line 1243
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    .line 1248
    .line 1249
    const-string v0, "&folder_description="

    .line 1250
    .line 1251
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v0

    .line 1258
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1259
    .line 1260
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1261
    .line 1262
    .line 1263
    iget-object v12, v10, Lx9/n5;->c:Ljava/lang/String;

    .line 1264
    .line 1265
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    .line 1267
    .line 1268
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    .line 1270
    .line 1271
    iget-object v7, v10, Lx9/n5;->h:Ljava/lang/String;

    .line 1272
    .line 1273
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v7

    .line 1280
    iget-object v9, v10, Lx9/n5;->i:Ljava/lang/String;

    .line 1281
    .line 1282
    invoke-static {v9, v8, v0, v7}, Lnh/b;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v0

    .line 1286
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1287
    .line 1288
    .line 1289
    move-result v7

    .line 1290
    if-eqz v7, :cond_23

    .line 1291
    .line 1292
    move-object/from16 v6, v17

    .line 1293
    .line 1294
    goto :goto_30

    .line 1295
    :cond_23
    :try_start_29
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v0

    .line 1299
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v0

    .line 1303
    invoke-virtual {v0, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v5

    .line 1307
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 1308
    .line 1309
    .line 1310
    move-result v5

    .line 1311
    const/4 v7, 0x1

    .line 1312
    if-ne v5, v7, :cond_24

    .line 1313
    .line 1314
    invoke-virtual {v0, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v0

    .line 1318
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v0

    .line 1322
    iput-object v0, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1323
    .line 1324
    iput-boolean v7, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_24

    .line 1325
    .line 1326
    goto :goto_30

    .line 1327
    :catch_24
    nop

    .line 1328
    goto :goto_2f

    .line 1329
    :cond_24
    :try_start_2a
    invoke-virtual {v0, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v3

    .line 1333
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v6
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_25

    .line 1337
    goto :goto_2e

    .line 1338
    :catch_25
    :try_start_2b
    invoke-virtual {v0, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v0

    .line 1342
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v6
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_26

    .line 1346
    goto :goto_2e

    .line 1347
    :catch_26
    nop

    .line 1348
    :goto_2e
    if-eqz v6, :cond_25

    .line 1349
    .line 1350
    :try_start_2c
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 1351
    .line 1352
    .line 1353
    move-result v0

    .line 1354
    if-nez v0, :cond_25

    .line 1355
    .line 1356
    move-object/from16 v0, v21

    .line 1357
    .line 1358
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1359
    .line 1360
    .line 1361
    move-result v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_24

    .line 1362
    if-eqz v0, :cond_26

    .line 1363
    .line 1364
    :cond_25
    :goto_2f
    move-object/from16 v6, v18

    .line 1365
    .line 1366
    :cond_26
    :goto_30
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 1367
    .line 1368
    .line 1369
    move-result v0

    .line 1370
    if-eqz v0, :cond_27

    .line 1371
    .line 1372
    iget-object v0, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1373
    .line 1374
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1375
    .line 1376
    .line 1377
    move-result v0

    .line 1378
    if-nez v0, :cond_27

    .line 1379
    .line 1380
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1381
    .line 1382
    .line 1383
    goto :goto_31

    .line 1384
    :cond_27
    invoke-static {v6, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1385
    .line 1386
    .line 1387
    :goto_31
    return-void

    .line 1388
    :pswitch_a
    move-object/from16 v0, v21

    .line 1389
    .line 1390
    iget-object v12, v10, Lx9/n5;->c:Ljava/lang/String;

    .line 1391
    .line 1392
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 1393
    .line 1394
    .line 1395
    move-result v12

    .line 1396
    if-eqz v12, :cond_28

    .line 1397
    .line 1398
    iput-object v9, v10, Lx9/n5;->c:Ljava/lang/String;

    .line 1399
    .line 1400
    :cond_28
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1401
    .line 1402
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1403
    .line 1404
    .line 1405
    iget-object v12, v10, Lx9/n5;->c:Ljava/lang/String;

    .line 1406
    .line 1407
    invoke-static {v12, v8, v9}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v8

    .line 1411
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1412
    .line 1413
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1414
    .line 1415
    .line 1416
    iget-object v12, v10, Lx9/n5;->c:Ljava/lang/String;

    .line 1417
    .line 1418
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    .line 1420
    .line 1421
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    .line 1423
    .line 1424
    iget-object v7, v10, Lx9/n5;->h:Ljava/lang/String;

    .line 1425
    .line 1426
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1427
    .line 1428
    .line 1429
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v7

    .line 1433
    iget-boolean v9, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 1434
    .line 1435
    if-eqz v9, :cond_29

    .line 1436
    .line 1437
    const-string v6, "\u84dd\u594f\u4e91\u4e0d\u652f\u6301\u79fb\u52a8\u6587\u4ef6\u5939"

    .line 1438
    .line 1439
    goto :goto_33

    .line 1440
    :cond_29
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1441
    .line 1442
    const-string v12, "task=20&folder_id="

    .line 1443
    .line 1444
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1445
    .line 1446
    .line 1447
    iget-object v12, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1448
    .line 1449
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    .line 1451
    .line 1452
    const-string v12, "&file_id="

    .line 1453
    .line 1454
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    .line 1456
    .line 1457
    iget-object v12, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1458
    .line 1459
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    .line 1461
    .line 1462
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v9

    .line 1466
    iget-object v10, v10, Lx9/n5;->i:Ljava/lang/String;

    .line 1467
    .line 1468
    invoke-static {v10, v8, v9, v7}, Lnh/b;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v7

    .line 1472
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 1473
    .line 1474
    .line 1475
    move-result v8

    .line 1476
    if-eqz v8, :cond_2a

    .line 1477
    .line 1478
    move-object/from16 v6, v17

    .line 1479
    .line 1480
    goto :goto_33

    .line 1481
    :cond_2a
    :try_start_2d
    invoke-static {v7}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v7

    .line 1485
    invoke-virtual {v7}, Lz7/p;->g()Lz7/s;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v7

    .line 1489
    invoke-virtual {v7, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v5

    .line 1493
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 1494
    .line 1495
    .line 1496
    move-result v5
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_29

    .line 1497
    const/4 v8, 0x1

    .line 1498
    if-ne v5, v8, :cond_2b

    .line 1499
    .line 1500
    goto :goto_33

    .line 1501
    :cond_2b
    :try_start_2e
    invoke-virtual {v7, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v3

    .line 1505
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v6
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_27

    .line 1509
    goto :goto_32

    .line 1510
    :catch_27
    :try_start_2f
    invoke-virtual {v7, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v3

    .line 1514
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v6
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_28

    .line 1518
    goto :goto_32

    .line 1519
    :catch_28
    nop

    .line 1520
    :goto_32
    if-eqz v6, :cond_2c

    .line 1521
    .line 1522
    :try_start_30
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 1523
    .line 1524
    .line 1525
    move-result v3

    .line 1526
    if-nez v3, :cond_2c

    .line 1527
    .line 1528
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1529
    .line 1530
    .line 1531
    move-result v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_29

    .line 1532
    if-eqz v0, :cond_2d

    .line 1533
    .line 1534
    :cond_2c
    move-object/from16 v6, v18

    .line 1535
    .line 1536
    goto :goto_33

    .line 1537
    :catch_29
    const-string v6, "\u4fee\u6539\u51fa\u9519"

    .line 1538
    .line 1539
    :cond_2d
    :goto_33
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 1540
    .line 1541
    .line 1542
    move-result v0

    .line 1543
    if-eqz v0, :cond_2e

    .line 1544
    .line 1545
    iget-object v0, v11, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1546
    .line 1547
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1548
    .line 1549
    .line 1550
    move-result v0

    .line 1551
    if-nez v0, :cond_2e

    .line 1552
    .line 1553
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1554
    .line 1555
    .line 1556
    goto :goto_34

    .line 1557
    :cond_2e
    invoke-static {v6, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1558
    .line 1559
    .line 1560
    :goto_34
    return-void

    .line 1561
    :pswitch_b
    :try_start_31
    invoke-static {v15, v11, v10}, Ls1/g;->c(Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;)V

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_2a

    .line 1565
    .line 1566
    .line 1567
    goto :goto_35

    .line 1568
    :catch_2a
    move-exception v0

    .line 1569
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1570
    .line 1571
    .line 1572
    :goto_35
    return-void

    .line 1573
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
