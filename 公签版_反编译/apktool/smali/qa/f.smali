.class public abstract Lqa/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-boolean v3, v2, Lx9/n5;->u:Z

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    const/high16 v7, 0x80000

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x1

    .line 14
    const/4 v10, 0x0

    .line 15
    if-eqz v3, :cond_2

    .line 16
    .line 17
    :try_start_0
    new-instance v3, Lce/t0;

    .line 18
    .line 19
    new-instance v11, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p2 .. p2}, Lx9/n5;->b()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-direct {v3, v2}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lce/t0;->getInputStream()Ljava/io/InputStream;

    .line 44
    .line 45
    .line 46
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 47
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    .line 48
    .line 49
    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 50
    .line 51
    .line 52
    :try_start_2
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 55
    .line 56
    .line 57
    :try_start_3
    new-instance v11, Ljava/io/BufferedOutputStream;

    .line 58
    .line 59
    invoke-direct {v11, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    .line 61
    .line 62
    :try_start_4
    new-array v7, v7, [B

    .line 63
    .line 64
    const-wide/16 v5, 0x0

    .line 65
    .line 66
    :goto_0
    invoke-virtual {v1, v7}, Ljava/io/InputStream;->read([B)I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-eq v10, v4, :cond_0

    .line 71
    .line 72
    invoke-virtual {v11, v7, v8, v10}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    .line 76
    .line 77
    .line 78
    int-to-long v12, v10

    .line 79
    add-long/2addr v5, v12

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    :goto_1
    move-object v10, v1

    .line 83
    goto :goto_5

    .line 84
    :catch_0
    :goto_2
    move-object v10, v1

    .line 85
    goto :goto_6

    .line 86
    :cond_0
    iget-wide v12, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    .line 88
    cmp-long v0, v5, v12

    .line 89
    .line 90
    if-ltz v0, :cond_1

    .line 91
    .line 92
    invoke-static {v1, v11, v3, v2}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 93
    .line 94
    .line 95
    return v9

    .line 96
    :cond_1
    invoke-static {v1, v11, v3, v2}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_18

    .line 100
    .line 101
    :catchall_1
    move-exception v0

    .line 102
    move-object v11, v10

    .line 103
    goto :goto_1

    .line 104
    :catch_1
    move-object v11, v10

    .line 105
    goto :goto_2

    .line 106
    :catchall_2
    move-exception v0

    .line 107
    move-object v11, v10

    .line 108
    goto :goto_5

    .line 109
    :catch_2
    move-object v11, v10

    .line 110
    goto :goto_6

    .line 111
    :catchall_3
    move-exception v0

    .line 112
    move-object v3, v10

    .line 113
    :goto_3
    move-object v11, v3

    .line 114
    goto :goto_5

    .line 115
    :catch_3
    move-object v3, v10

    .line 116
    :goto_4
    move-object v11, v3

    .line 117
    goto :goto_6

    .line 118
    :catchall_4
    move-exception v0

    .line 119
    move-object v2, v10

    .line 120
    move-object v3, v2

    .line 121
    goto :goto_3

    .line 122
    :catch_4
    move-object v2, v10

    .line 123
    move-object v3, v2

    .line 124
    goto :goto_4

    .line 125
    :goto_5
    invoke-static {v10, v11, v3, v2}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :goto_6
    invoke-static {v10, v11, v3, v2}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_18

    .line 133
    .line 134
    :cond_2
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 135
    .line 136
    const-string v11, "/"

    .line 137
    .line 138
    invoke-virtual {v3, v11, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    iget-object v12, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v12, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v12

    .line 148
    iget-object v13, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 149
    .line 150
    add-int/2addr v3, v9

    .line 151
    invoke-virtual {v13, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    const-string v13, "//"

    .line 156
    .line 157
    invoke-virtual {v3, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    const-string v13, "\\"

    .line 162
    .line 163
    invoke-virtual {v3, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v15

    .line 167
    invoke-static {}, Lcom/hierynomus/smbj/SmbConfig;->builder()Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v3, v9}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withMultiProtocolNegotiate(Z)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 176
    .line 177
    const-wide/16 v13, 0x14

    .line 178
    .line 179
    invoke-virtual {v3, v13, v14, v11}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v3, v13, v14, v11}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withSoTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {v3}, Lcom/hierynomus/smbj/SmbConfig$Builder;->build()Lcom/hierynomus/smbj/SmbConfig;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    new-instance v11, Lcom/hierynomus/smbj/SMBClient;

    .line 192
    .line 193
    invoke-direct {v11, v3}, Lcom/hierynomus/smbj/SMBClient;-><init>(Lcom/hierynomus/smbj/SmbConfig;)V

    .line 194
    .line 195
    .line 196
    :try_start_5
    iget-object v3, v2, Lx9/n5;->c:Ljava/lang/String;

    .line 197
    .line 198
    iget v13, v2, Lx9/n5;->d:I

    .line 199
    .line 200
    invoke-virtual {v11, v3, v13}, Lcom/hierynomus/smbj/SMBClient;->connect(Ljava/lang/String;I)Lcom/hierynomus/smbj/connection/Connection;

    .line 201
    .line 202
    .line 203
    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_13
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    .line 204
    :try_start_6
    iget-object v13, v2, Lx9/n5;->e:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 207
    .line 208
    .line 209
    move-result v13

    .line 210
    if-eqz v13, :cond_3

    .line 211
    .line 212
    invoke-static {}, Lcom/hierynomus/smbj/auth/AuthenticationContext;->guest()Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    goto :goto_d

    .line 217
    :catchall_5
    move-exception v0

    .line 218
    move-object v2, v10

    .line 219
    move-object v5, v2

    .line 220
    :goto_7
    move-object v6, v5

    .line 221
    :goto_8
    move-object v12, v6

    .line 222
    :goto_9
    move-object v13, v12

    .line 223
    goto/16 :goto_12

    .line 224
    .line 225
    :catch_5
    nop

    .line 226
    move-object v2, v10

    .line 227
    move-object v5, v2

    .line 228
    :goto_a
    move-object v6, v5

    .line 229
    :goto_b
    move-object v12, v6

    .line 230
    :goto_c
    move-object v13, v12

    .line 231
    goto/16 :goto_15

    .line 232
    .line 233
    :cond_3
    new-instance v13, Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 234
    .line 235
    iget-object v14, v2, Lx9/n5;->e:Ljava/lang/String;

    .line 236
    .line 237
    iget-object v5, v2, Lx9/n5;->f:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    iget-object v2, v2, Lx9/n5;->v:Ljava/lang/String;

    .line 244
    .line 245
    invoke-direct {v13, v14, v5, v2}, Lcom/hierynomus/smbj/auth/AuthenticationContext;-><init>(Ljava/lang/String;[CLjava/lang/String;)V

    .line 246
    .line 247
    .line 248
    move-object v2, v13

    .line 249
    :goto_d
    invoke-virtual {v3, v2}, Lcom/hierynomus/smbj/connection/Connection;->authenticate(Lcom/hierynomus/smbj/auth/AuthenticationContext;)Lcom/hierynomus/smbj/session/Session;

    .line 250
    .line 251
    .line 252
    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 253
    :try_start_7
    invoke-virtual {v2, v12}, Lcom/hierynomus/smbj/session/Session;->connectShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/Share;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    check-cast v5, Lcom/hierynomus/smbj/share/DiskShare;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_12
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    .line 258
    .line 259
    :try_start_8
    new-instance v6, Ljava/util/HashSet;

    .line 260
    .line 261
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 262
    .line 263
    .line 264
    sget-object v12, Lcom/hierynomus/msdtyp/AccessMask;->GENERIC_READ:Lcom/hierynomus/msdtyp/AccessMask;

    .line 265
    .line 266
    invoke-virtual {v6, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    new-instance v12, Ljava/util/HashSet;

    .line 270
    .line 271
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 272
    .line 273
    .line 274
    sget-object v13, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->FILE_SHARE_READ:Lcom/hierynomus/mssmb2/SMB2ShareAccess;

    .line 275
    .line 276
    invoke-virtual {v12, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    sget-object v19, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 280
    .line 281
    const/16 v20, 0x0

    .line 282
    .line 283
    const/16 v17, 0x0

    .line 284
    .line 285
    move-object v14, v5

    .line 286
    move-object/from16 v16, v6

    .line 287
    .line 288
    move-object/from16 v18, v12

    .line 289
    .line 290
    invoke-virtual/range {v14 .. v20}, Lcom/hierynomus/smbj/share/DiskShare;->openFile(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/File;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    invoke-virtual {v6}, Lcom/hierynomus/smbj/share/File;->getInputStream()Ljava/io/InputStream;

    .line 295
    .line 296
    .line 297
    move-result-object v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    .line 298
    :try_start_9
    new-instance v12, Ljava/io/FileOutputStream;

    .line 299
    .line 300
    invoke-direct {v12, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_10
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 301
    .line 302
    .line 303
    :try_start_a
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 304
    .line 305
    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 306
    .line 307
    .line 308
    :try_start_b
    new-instance v13, Ljava/io/BufferedOutputStream;

    .line 309
    .line 310
    invoke-direct {v13, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 311
    .line 312
    .line 313
    :try_start_c
    new-array v7, v7, [B

    .line 314
    .line 315
    const-wide/16 v21, 0x0

    .line 316
    .line 317
    :goto_e
    invoke-virtual {v1, v7}, Ljava/io/InputStream;->read([B)I

    .line 318
    .line 319
    .line 320
    move-result v10

    .line 321
    if-eq v10, v4, :cond_4

    .line 322
    .line 323
    invoke-virtual {v13, v7, v8, v10}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V

    .line 327
    .line 328
    .line 329
    int-to-long v14, v10

    .line 330
    add-long v21, v21, v14

    .line 331
    .line 332
    goto :goto_e

    .line 333
    :catchall_6
    move-exception v0

    .line 334
    :goto_f
    move-object v10, v1

    .line 335
    goto/16 :goto_12

    .line 336
    .line 337
    :catch_6
    nop

    .line 338
    :goto_10
    move-object v10, v1

    .line 339
    goto/16 :goto_15

    .line 340
    .line 341
    :cond_4
    iget-wide v14, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 342
    .line 343
    cmp-long v0, v21, v14

    .line 344
    .line 345
    if-ltz v0, :cond_5

    .line 346
    .line 347
    invoke-static {v1, v13, v12, v6}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 348
    .line 349
    .line 350
    :try_start_d
    invoke-virtual {v5}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 351
    .line 352
    .line 353
    :catch_7
    :try_start_e
    invoke-virtual {v2}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 354
    .line 355
    .line 356
    :catch_8
    :try_start_f
    invoke-virtual {v3}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    .line 357
    .line 358
    .line 359
    :catch_9
    :try_start_10
    invoke-virtual {v11}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    .line 360
    .line 361
    .line 362
    :catch_a
    return v9

    .line 363
    :cond_5
    invoke-static {v1, v13, v12, v6}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 364
    .line 365
    .line 366
    :try_start_11
    invoke-virtual {v5}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    .line 367
    .line 368
    .line 369
    :catch_b
    :try_start_12
    invoke-virtual {v2}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    .line 370
    .line 371
    .line 372
    :catch_c
    :goto_11
    :try_start_13
    invoke-virtual {v3}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    .line 373
    .line 374
    .line 375
    :catch_d
    :cond_6
    :try_start_14
    invoke-virtual {v11}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1a

    .line 376
    .line 377
    .line 378
    goto/16 :goto_18

    .line 379
    .line 380
    :catchall_7
    move-exception v0

    .line 381
    move-object v13, v10

    .line 382
    goto :goto_f

    .line 383
    :catch_e
    nop

    .line 384
    move-object v13, v10

    .line 385
    goto :goto_10

    .line 386
    :catchall_8
    move-exception v0

    .line 387
    move-object v13, v10

    .line 388
    goto :goto_12

    .line 389
    :catch_f
    nop

    .line 390
    move-object v13, v10

    .line 391
    goto :goto_15

    .line 392
    :catchall_9
    move-exception v0

    .line 393
    move-object v12, v10

    .line 394
    goto/16 :goto_9

    .line 395
    .line 396
    :catch_10
    nop

    .line 397
    move-object v12, v10

    .line 398
    goto/16 :goto_c

    .line 399
    .line 400
    :catchall_a
    move-exception v0

    .line 401
    move-object v6, v10

    .line 402
    goto/16 :goto_8

    .line 403
    .line 404
    :catch_11
    nop

    .line 405
    move-object v6, v10

    .line 406
    goto/16 :goto_b

    .line 407
    .line 408
    :catchall_b
    move-exception v0

    .line 409
    move-object v5, v10

    .line 410
    goto/16 :goto_7

    .line 411
    .line 412
    :catch_12
    nop

    .line 413
    move-object v5, v10

    .line 414
    goto/16 :goto_a

    .line 415
    .line 416
    :catchall_c
    move-exception v0

    .line 417
    move-object v2, v10

    .line 418
    move-object v3, v2

    .line 419
    move-object v5, v3

    .line 420
    goto/16 :goto_7

    .line 421
    .line 422
    :catch_13
    nop

    .line 423
    move-object v2, v10

    .line 424
    move-object v3, v2

    .line 425
    move-object v5, v3

    .line 426
    goto/16 :goto_a

    .line 427
    .line 428
    :goto_12
    invoke-static {v10, v13, v12, v6}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 429
    .line 430
    .line 431
    if-eqz v5, :cond_7

    .line 432
    .line 433
    :try_start_15
    invoke-virtual {v5}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_14

    .line 434
    .line 435
    .line 436
    goto :goto_13

    .line 437
    :catch_14
    nop

    .line 438
    :cond_7
    :goto_13
    if-eqz v2, :cond_8

    .line 439
    .line 440
    :try_start_16
    invoke-virtual {v2}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_15

    .line 441
    .line 442
    .line 443
    goto :goto_14

    .line 444
    :catch_15
    nop

    .line 445
    :cond_8
    :goto_14
    if-eqz v3, :cond_9

    .line 446
    .line 447
    :try_start_17
    invoke-virtual {v3}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_16

    .line 448
    .line 449
    .line 450
    :catch_16
    :cond_9
    :try_start_18
    invoke-virtual {v11}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_17

    .line 451
    .line 452
    .line 453
    :catch_17
    throw v0

    .line 454
    :goto_15
    invoke-static {v10, v13, v12, v6}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 455
    .line 456
    .line 457
    if-eqz v5, :cond_a

    .line 458
    .line 459
    :try_start_19
    invoke-virtual {v5}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_18

    .line 460
    .line 461
    .line 462
    goto :goto_16

    .line 463
    :catch_18
    nop

    .line 464
    :cond_a
    :goto_16
    if-eqz v2, :cond_b

    .line 465
    .line 466
    :try_start_1a
    invoke-virtual {v2}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_19

    .line 467
    .line 468
    .line 469
    goto :goto_17

    .line 470
    :catch_19
    nop

    .line 471
    :cond_b
    :goto_17
    if-eqz v3, :cond_6

    .line 472
    .line 473
    goto :goto_11

    .line 474
    :catch_1a
    :goto_18
    return v8
.end method

.method public static b(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Lcom/yunpan/appmanage/bean/WpPathBean;
    .locals 8

    .line 1
    iget-boolean v0, p2, Lx9/n5;->u:Z

    .line 2
    .line 3
    const-string v1, "/"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    new-instance v0, Lce/t0;

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lx9/n5;->b()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-direct {v0, p2}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lce/t0;->y()V

    .line 36
    .line 37
    .line 38
    new-instance p2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-direct {p2, p1, p0}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object p0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 64
    .line 65
    sget-object p0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/yunpan/appmanage/util/k;->b0:Ljava/text/SimpleDateFormat;

    .line 68
    .line 69
    new-instance p1, Ljava/util/Date;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iput-object p0, p2, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    return-object p2

    .line 81
    :catch_0
    move-exception p0

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p0, ""

    .line 95
    .line 96
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const-string p1, "system cannot find the file"

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    return-object v2

    .line 109
    :cond_0
    invoke-static {}, Lcom/hierynomus/smbj/SmbConfig;->builder()Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const/4 v3, 0x1

    .line 114
    invoke-virtual {v0, v3}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withMultiProtocolNegotiate(Z)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 119
    .line 120
    const-wide/16 v5, 0x12

    .line 121
    .line 122
    invoke-virtual {v0, v5, v6, v4}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, v5, v6, v4}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withSoTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/hierynomus/smbj/SmbConfig$Builder;->build()Lcom/hierynomus/smbj/SmbConfig;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    new-instance v4, Lcom/hierynomus/smbj/SMBClient;

    .line 135
    .line 136
    invoke-direct {v4, v0}, Lcom/hierynomus/smbj/SMBClient;-><init>(Lcom/hierynomus/smbj/SmbConfig;)V

    .line 137
    .line 138
    .line 139
    :try_start_1
    iget-object v0, p2, Lx9/n5;->c:Ljava/lang/String;

    .line 140
    .line 141
    iget v5, p2, Lx9/n5;->d:I

    .line 142
    .line 143
    invoke-virtual {v4, v0, v5}, Lcom/hierynomus/smbj/SMBClient;->connect(Ljava/lang/String;I)Lcom/hierynomus/smbj/connection/Connection;

    .line 144
    .line 145
    .line 146
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 147
    :try_start_2
    iget-object v5, p2, Lx9/n5;->e:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_1

    .line 154
    .line 155
    invoke-static {}, Lcom/hierynomus/smbj/auth/AuthenticationContext;->guest()Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    goto :goto_0

    .line 160
    :catchall_0
    move-exception p0

    .line 161
    move-object p2, v2

    .line 162
    goto/16 :goto_4

    .line 163
    .line 164
    :catch_1
    move-exception p0

    .line 165
    move-object p2, v2

    .line 166
    move-object v3, p2

    .line 167
    goto/16 :goto_1

    .line 168
    .line 169
    :cond_1
    new-instance v5, Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 170
    .line 171
    iget-object v6, p2, Lx9/n5;->e:Ljava/lang/String;

    .line 172
    .line 173
    iget-object v7, p2, Lx9/n5;->f:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    iget-object p2, p2, Lx9/n5;->v:Ljava/lang/String;

    .line 180
    .line 181
    invoke-direct {v5, v6, v7, p2}, Lcom/hierynomus/smbj/auth/AuthenticationContext;-><init>(Ljava/lang/String;[CLjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    move-object p2, v5

    .line 185
    :goto_0
    invoke-virtual {v0, p2}, Lcom/hierynomus/smbj/connection/Connection;->authenticate(Lcom/hierynomus/smbj/auth/AuthenticationContext;)Lcom/hierynomus/smbj/session/Session;

    .line 186
    .line 187
    .line 188
    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    :try_start_3
    iget-object v5, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v5, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    const/4 v6, -0x1

    .line 196
    if-eq v5, v6, :cond_2

    .line 197
    .line 198
    iget-object v6, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v6, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    iget-object v6, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {p2, v3}, Lcom/hierynomus/smbj/session/Session;->connectShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/Share;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    check-cast v3, Lcom/hierynomus/smbj/share/DiskShare;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 215
    .line 216
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {v3, v5}, Lcom/hierynomus/smbj/share/DiskShare;->mkdir(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    new-instance v5, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 235
    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    iget-object p0, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-direct {v5, p1, p0}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    sget-object p0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 260
    .line 261
    sget-object p0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 262
    .line 263
    iget-object p0, p0, Lcom/yunpan/appmanage/util/k;->b0:Ljava/text/SimpleDateFormat;

    .line 264
    .line 265
    new-instance p1, Ljava/util/Date;

    .line 266
    .line 267
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    iput-object p0, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 275
    .line 276
    :try_start_5
    invoke-virtual {v3}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 277
    .line 278
    .line 279
    :catch_2
    :try_start_6
    invoke-virtual {p2}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 280
    .line 281
    .line 282
    :catch_3
    :try_start_7
    invoke-virtual {v0}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 283
    .line 284
    .line 285
    :catch_4
    :try_start_8
    invoke-virtual {v4}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 286
    .line 287
    .line 288
    :catch_5
    return-object v5

    .line 289
    :catchall_1
    move-exception p0

    .line 290
    move-object v2, v3

    .line 291
    goto :goto_4

    .line 292
    :catch_6
    move-exception p0

    .line 293
    goto :goto_1

    .line 294
    :catchall_2
    move-exception p0

    .line 295
    goto :goto_4

    .line 296
    :catch_7
    move-exception p0

    .line 297
    move-object v3, v2

    .line 298
    goto :goto_1

    .line 299
    :cond_2
    :try_start_9
    new-instance p0, Ljava/lang/Exception;

    .line 300
    .line 301
    const-string p1, "\u5171\u4eab\u540d\u9519\u8bef"

    .line 302
    .line 303
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 307
    :catchall_3
    move-exception p0

    .line 308
    move-object p2, v2

    .line 309
    move-object v0, p2

    .line 310
    goto :goto_4

    .line 311
    :catch_8
    move-exception p0

    .line 312
    move-object p2, v2

    .line 313
    move-object v0, p2

    .line 314
    move-object v3, v0

    .line 315
    :goto_1
    :try_start_a
    invoke-static {p0}, Lqa/f;->i(Ljava/lang/Exception;)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 316
    .line 317
    .line 318
    if-eqz v3, :cond_3

    .line 319
    .line 320
    :try_start_b
    invoke-virtual {v3}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 321
    .line 322
    .line 323
    goto :goto_2

    .line 324
    :catch_9
    nop

    .line 325
    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 326
    .line 327
    :try_start_c
    invoke-virtual {p2}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 328
    .line 329
    .line 330
    goto :goto_3

    .line 331
    :catch_a
    nop

    .line 332
    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 333
    .line 334
    :try_start_d
    invoke-virtual {v0}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    .line 335
    .line 336
    .line 337
    :catch_b
    :cond_5
    :try_start_e
    invoke-virtual {v4}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 338
    .line 339
    .line 340
    :catch_c
    return-object v2

    .line 341
    :goto_4
    if-eqz v2, :cond_6

    .line 342
    .line 343
    :try_start_f
    invoke-virtual {v2}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 344
    .line 345
    .line 346
    goto :goto_5

    .line 347
    :catch_d
    nop

    .line 348
    :cond_6
    :goto_5
    if-eqz p2, :cond_7

    .line 349
    .line 350
    :try_start_10
    invoke-virtual {p2}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    .line 351
    .line 352
    .line 353
    goto :goto_6

    .line 354
    :catch_e
    nop

    .line 355
    :cond_7
    :goto_6
    if-eqz v0, :cond_8

    .line 356
    .line 357
    :try_start_11
    invoke-virtual {v0}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    .line 358
    .line 359
    .line 360
    :catch_f
    :cond_8
    :try_start_12
    invoke-virtual {v4}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    .line 361
    .line 362
    .line 363
    :catch_10
    throw p0
.end method

.method public static c(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    const-string v0, "\u5df2\u4e3b\u52a8\u505c\u6b62\u4e0b\u8f7d"

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 15
    .line 16
    iget-boolean v3, v3, Lx9/n5;->u:Z

    .line 17
    .line 18
    const-string v4, "\u4e3b\u52a8\u505c\u6b62\u4efb\u52a1"

    .line 19
    .line 20
    const/4 v5, -0x1

    .line 21
    const/high16 v6, 0x80000

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    const-string v9, ""

    .line 26
    .line 27
    if-eqz v3, :cond_a

    .line 28
    .line 29
    :try_start_0
    new-instance v3, Lce/t0;

    .line 30
    .line 31
    new-instance v10, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v11, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 37
    .line 38
    invoke-virtual {v11}, Lx9/n5;->b()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v3, v1}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Lce/t0;->getInputStream()Ljava/io/InputStream;

    .line 56
    .line 57
    .line 58
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 59
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    .line 60
    .line 61
    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 62
    .line 63
    .line 64
    :try_start_2
    new-instance v10, Ljava/io/BufferedInputStream;

    .line 65
    .line 66
    invoke-direct {v10, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 67
    .line 68
    .line 69
    :try_start_3
    new-instance v11, Ljava/io/BufferedOutputStream;

    .line 70
    .line 71
    invoke-direct {v11, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    .line 73
    .line 74
    :try_start_4
    new-array v6, v6, [B

    .line 75
    .line 76
    :cond_1
    invoke-virtual {v10, v6}, Ljava/io/InputStream;->read([B)I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-eq v8, v5, :cond_2

    .line 81
    .line 82
    invoke-virtual {v11, v6, v7, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    .line 86
    .line 87
    .line 88
    iget-object v12, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->size_success:Ljava/util/concurrent/atomic/AtomicLong;

    .line 89
    .line 90
    int-to-long v13, v8

    .line 91
    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 92
    .line 93
    .line 94
    iget-boolean v8, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    .line 96
    if-eqz v8, :cond_1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    :goto_0
    move-object v8, v10

    .line 101
    goto/16 :goto_a

    .line 102
    .line 103
    :catch_0
    move-exception v0

    .line 104
    :goto_1
    move-object v8, v10

    .line 105
    goto :goto_6

    .line 106
    :cond_2
    move-object v4, v9

    .line 107
    :goto_2
    :try_start_5
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 108
    .line 109
    .line 110
    :catch_1
    :try_start_6
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 111
    .line 112
    .line 113
    :catch_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 114
    .line 115
    .line 116
    :catch_3
    :goto_3
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 117
    .line 118
    .line 119
    goto/16 :goto_24

    .line 120
    .line 121
    :catch_4
    nop

    .line 122
    goto/16 :goto_24

    .line 123
    .line 124
    :catchall_1
    move-exception v0

    .line 125
    move-object v11, v8

    .line 126
    goto :goto_0

    .line 127
    :catch_5
    move-exception v0

    .line 128
    move-object v11, v8

    .line 129
    goto :goto_1

    .line 130
    :catchall_2
    move-exception v0

    .line 131
    move-object v11, v8

    .line 132
    goto :goto_a

    .line 133
    :catch_6
    move-exception v0

    .line 134
    move-object v11, v8

    .line 135
    goto :goto_6

    .line 136
    :catchall_3
    move-exception v0

    .line 137
    move-object v3, v8

    .line 138
    :goto_4
    move-object v11, v3

    .line 139
    goto :goto_a

    .line 140
    :catch_7
    move-exception v0

    .line 141
    move-object v3, v8

    .line 142
    :goto_5
    move-object v11, v3

    .line 143
    goto :goto_6

    .line 144
    :catchall_4
    move-exception v0

    .line 145
    move-object v1, v8

    .line 146
    move-object v3, v1

    .line 147
    goto :goto_4

    .line 148
    :catch_8
    move-exception v0

    .line 149
    move-object v1, v8

    .line 150
    move-object v3, v1

    .line 151
    goto :goto_5

    .line 152
    :goto_6
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    .line 154
    .line 155
    const-string v4, "\u4e0b\u8f7d\u5931\u8d25"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 156
    .line 157
    if-eqz v8, :cond_3

    .line 158
    .line 159
    :try_start_a
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 160
    .line 161
    .line 162
    goto :goto_7

    .line 163
    :catch_9
    nop

    .line 164
    :cond_3
    :goto_7
    if-eqz v11, :cond_4

    .line 165
    .line 166
    :try_start_b
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 167
    .line 168
    .line 169
    goto :goto_8

    .line 170
    :catch_a
    nop

    .line 171
    :cond_4
    :goto_8
    if-eqz v1, :cond_5

    .line 172
    .line 173
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 174
    .line 175
    .line 176
    goto :goto_9

    .line 177
    :catch_b
    nop

    .line 178
    :cond_5
    :goto_9
    if-eqz v3, :cond_16

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :catchall_5
    move-exception v0

    .line 182
    :goto_a
    if-eqz v8, :cond_6

    .line 183
    .line 184
    :try_start_d
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 185
    .line 186
    .line 187
    goto :goto_b

    .line 188
    :catch_c
    nop

    .line 189
    :cond_6
    :goto_b
    if-eqz v11, :cond_7

    .line 190
    .line 191
    :try_start_e
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    .line 192
    .line 193
    .line 194
    goto :goto_c

    .line 195
    :catch_d
    nop

    .line 196
    :cond_7
    :goto_c
    if-eqz v1, :cond_8

    .line 197
    .line 198
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    .line 199
    .line 200
    .line 201
    goto :goto_d

    .line 202
    :catch_e
    nop

    .line 203
    :cond_8
    :goto_d
    if-eqz v3, :cond_9

    .line 204
    .line 205
    :try_start_10
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    .line 206
    .line 207
    .line 208
    :catch_f
    :cond_9
    throw v0

    .line 209
    :cond_a
    const-string v3, "/"

    .line 210
    .line 211
    const/4 v10, 0x1

    .line 212
    invoke-virtual {v1, v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 213
    .line 214
    .line 215
    move-result v11

    .line 216
    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    add-int/2addr v11, v10

    .line 221
    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    const-string v11, "//"

    .line 226
    .line 227
    invoke-virtual {v1, v11, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    const-string v11, "\\"

    .line 232
    .line 233
    invoke-virtual {v1, v3, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v14

    .line 237
    invoke-static {}, Lcom/hierynomus/smbj/SmbConfig;->builder()Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v1, v10}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withMultiProtocolNegotiate(Z)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 246
    .line 247
    const-wide/16 v10, 0x0

    .line 248
    .line 249
    invoke-virtual {v1, v10, v11, v3}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v1, v10, v11, v3}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withSoTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v1, v7}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withEncryptData(Z)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    new-instance v3, Lcom/hierynomus/smbj/transport/tcp/async/AsyncDirectTcpTransportFactory;

    .line 262
    .line 263
    invoke-direct {v3}, Lcom/hierynomus/smbj/transport/tcp/async/AsyncDirectTcpTransportFactory;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v3}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withTransportLayerFactory(Lcom/hierynomus/smbj/transport/TransportLayerFactory;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v1}, Lcom/hierynomus/smbj/SmbConfig$Builder;->build()Lcom/hierynomus/smbj/SmbConfig;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    new-instance v3, Lcom/hierynomus/smbj/SMBClient;

    .line 275
    .line 276
    invoke-direct {v3, v1}, Lcom/hierynomus/smbj/SMBClient;-><init>(Lcom/hierynomus/smbj/SmbConfig;)V

    .line 277
    .line 278
    .line 279
    :try_start_11
    iget-object v1, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 280
    .line 281
    iget-object v10, v1, Lx9/n5;->c:Ljava/lang/String;

    .line 282
    .line 283
    iget v1, v1, Lx9/n5;->d:I

    .line 284
    .line 285
    invoke-virtual {v3, v10, v1}, Lcom/hierynomus/smbj/SMBClient;->connect(Ljava/lang/String;I)Lcom/hierynomus/smbj/connection/Connection;

    .line 286
    .line 287
    .line 288
    move-result-object v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1e
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    .line 289
    :try_start_12
    iget-object v10, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 290
    .line 291
    iget-object v10, v10, Lx9/n5;->e:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 294
    .line 295
    .line 296
    move-result v10

    .line 297
    if-eqz v10, :cond_b

    .line 298
    .line 299
    invoke-static {}, Lcom/hierynomus/smbj/auth/AuthenticationContext;->guest()Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 300
    .line 301
    .line 302
    move-result-object v10

    .line 303
    goto :goto_16

    .line 304
    :catchall_6
    move-exception v0

    .line 305
    move-object v10, v8

    .line 306
    :goto_e
    move-object v11, v10

    .line 307
    :goto_f
    move-object v12, v11

    .line 308
    :goto_10
    move-object v13, v12

    .line 309
    :goto_11
    move-object v15, v13

    .line 310
    goto/16 :goto_25

    .line 311
    .line 312
    :catch_10
    move-exception v0

    .line 313
    move-object v10, v8

    .line 314
    :goto_12
    move-object v11, v10

    .line 315
    :goto_13
    move-object v12, v11

    .line 316
    :goto_14
    move-object v13, v12

    .line 317
    :goto_15
    move-object v15, v13

    .line 318
    goto/16 :goto_1d

    .line 319
    .line 320
    :cond_b
    new-instance v10, Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 321
    .line 322
    iget-object v11, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 323
    .line 324
    iget-object v13, v11, Lx9/n5;->e:Ljava/lang/String;

    .line 325
    .line 326
    iget-object v11, v11, Lx9/n5;->f:Ljava/lang/String;

    .line 327
    .line 328
    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    .line 329
    .line 330
    .line 331
    move-result-object v11

    .line 332
    iget-object v15, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 333
    .line 334
    iget-object v15, v15, Lx9/n5;->v:Ljava/lang/String;

    .line 335
    .line 336
    invoke-direct {v10, v13, v11, v15}, Lcom/hierynomus/smbj/auth/AuthenticationContext;-><init>(Ljava/lang/String;[CLjava/lang/String;)V

    .line 337
    .line 338
    .line 339
    :goto_16
    invoke-virtual {v1, v10}, Lcom/hierynomus/smbj/connection/Connection;->authenticate(Lcom/hierynomus/smbj/auth/AuthenticationContext;)Lcom/hierynomus/smbj/session/Session;

    .line 340
    .line 341
    .line 342
    move-result-object v10
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 343
    :try_start_13
    invoke-virtual {v10, v12}, Lcom/hierynomus/smbj/session/Session;->connectShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/Share;

    .line 344
    .line 345
    .line 346
    move-result-object v11

    .line 347
    check-cast v11, Lcom/hierynomus/smbj/share/DiskShare;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1d
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    .line 348
    .line 349
    :try_start_14
    new-instance v15, Ljava/util/HashSet;

    .line 350
    .line 351
    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 352
    .line 353
    .line 354
    sget-object v12, Lcom/hierynomus/msdtyp/AccessMask;->GENERIC_READ:Lcom/hierynomus/msdtyp/AccessMask;

    .line 355
    .line 356
    invoke-virtual {v15, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    new-instance v12, Ljava/util/HashSet;

    .line 360
    .line 361
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 362
    .line 363
    .line 364
    sget-object v13, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->FILE_SHARE_READ:Lcom/hierynomus/mssmb2/SMB2ShareAccess;

    .line 365
    .line 366
    invoke-virtual {v12, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    sget-object v18, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 370
    .line 371
    const/16 v19, 0x0

    .line 372
    .line 373
    const/16 v16, 0x0

    .line 374
    .line 375
    move-object v13, v11

    .line 376
    move-object/from16 v17, v12

    .line 377
    .line 378
    invoke-virtual/range {v13 .. v19}, Lcom/hierynomus/smbj/share/DiskShare;->openFile(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/File;

    .line 379
    .line 380
    .line 381
    move-result-object v12

    .line 382
    invoke-virtual {v12}, Lcom/hierynomus/smbj/share/File;->getInputStream()Ljava/io/InputStream;

    .line 383
    .line 384
    .line 385
    move-result-object v12
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1c
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    .line 386
    :try_start_15
    new-instance v13, Ljava/io/FileOutputStream;

    .line 387
    .line 388
    invoke-direct {v13, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1b
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 389
    .line 390
    .line 391
    :try_start_16
    new-instance v14, Ljava/io/BufferedInputStream;

    .line 392
    .line 393
    invoke-direct {v14, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1a
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 394
    .line 395
    .line 396
    :try_start_17
    new-instance v15, Ljava/io/BufferedOutputStream;

    .line 397
    .line 398
    invoke-direct {v15, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_19
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 399
    .line 400
    .line 401
    :try_start_18
    new-array v6, v6, [B

    .line 402
    .line 403
    :goto_17
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    .line 404
    .line 405
    .line 406
    move-result v8

    .line 407
    if-eq v8, v5, :cond_d

    .line 408
    .line 409
    invoke-virtual {v15, v6, v7, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->flush()V

    .line 413
    .line 414
    .line 415
    iget-object v5, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->size_success:Ljava/util/concurrent/atomic/AtomicLong;

    .line 416
    .line 417
    int-to-long v7, v8

    .line 418
    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 419
    .line 420
    .line 421
    iget-boolean v5, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_11
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 422
    .line 423
    if-eqz v5, :cond_c

    .line 424
    .line 425
    goto :goto_1a

    .line 426
    :cond_c
    const/4 v5, -0x1

    .line 427
    const/4 v7, 0x0

    .line 428
    goto :goto_17

    .line 429
    :catchall_7
    move-exception v0

    .line 430
    :goto_18
    move-object v8, v14

    .line 431
    goto/16 :goto_25

    .line 432
    .line 433
    :catch_11
    move-exception v0

    .line 434
    :goto_19
    move-object v8, v14

    .line 435
    goto/16 :goto_1d

    .line 436
    .line 437
    :cond_d
    move-object v4, v9

    .line 438
    :goto_1a
    :try_start_19
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_12

    .line 439
    .line 440
    .line 441
    :catch_12
    :try_start_1a
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_13

    .line 442
    .line 443
    .line 444
    goto :goto_1b

    .line 445
    :catch_13
    nop

    .line 446
    :goto_1b
    if-eqz v12, :cond_e

    .line 447
    .line 448
    :try_start_1b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_14

    .line 449
    .line 450
    .line 451
    :catch_14
    :cond_e
    :try_start_1c
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_15

    .line 452
    .line 453
    .line 454
    :catch_15
    :try_start_1d
    invoke-virtual {v11}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_16

    .line 455
    .line 456
    .line 457
    :catch_16
    :try_start_1e
    invoke-virtual {v10}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_17

    .line 458
    .line 459
    .line 460
    :catch_17
    :try_start_1f
    invoke-virtual {v1}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_18

    .line 461
    .line 462
    .line 463
    :catch_18
    :cond_f
    :goto_1c
    :try_start_20
    invoke-virtual {v3}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_4

    .line 464
    .line 465
    .line 466
    goto/16 :goto_24

    .line 467
    .line 468
    :catchall_8
    move-exception v0

    .line 469
    move-object v15, v8

    .line 470
    goto :goto_18

    .line 471
    :catch_19
    move-exception v0

    .line 472
    move-object v15, v8

    .line 473
    goto :goto_19

    .line 474
    :catchall_9
    move-exception v0

    .line 475
    move-object v15, v8

    .line 476
    goto/16 :goto_25

    .line 477
    .line 478
    :catch_1a
    move-exception v0

    .line 479
    move-object v15, v8

    .line 480
    goto :goto_1d

    .line 481
    :catchall_a
    move-exception v0

    .line 482
    move-object v13, v8

    .line 483
    goto/16 :goto_11

    .line 484
    .line 485
    :catch_1b
    move-exception v0

    .line 486
    move-object v13, v8

    .line 487
    goto/16 :goto_15

    .line 488
    .line 489
    :catchall_b
    move-exception v0

    .line 490
    move-object v12, v8

    .line 491
    goto/16 :goto_10

    .line 492
    .line 493
    :catch_1c
    move-exception v0

    .line 494
    move-object v12, v8

    .line 495
    goto/16 :goto_14

    .line 496
    .line 497
    :catchall_c
    move-exception v0

    .line 498
    move-object v11, v8

    .line 499
    goto/16 :goto_f

    .line 500
    .line 501
    :catch_1d
    move-exception v0

    .line 502
    move-object v11, v8

    .line 503
    goto/16 :goto_13

    .line 504
    .line 505
    :catchall_d
    move-exception v0

    .line 506
    move-object v1, v8

    .line 507
    move-object v10, v1

    .line 508
    goto/16 :goto_e

    .line 509
    .line 510
    :catch_1e
    move-exception v0

    .line 511
    move-object v1, v8

    .line 512
    move-object v10, v1

    .line 513
    goto/16 :goto_12

    .line 514
    .line 515
    :goto_1d
    :try_start_21
    invoke-static {v0}, Lqa/f;->i(Ljava/lang/Exception;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v4
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_e

    .line 519
    if-eqz v8, :cond_10

    .line 520
    .line 521
    :try_start_22
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1f

    .line 522
    .line 523
    .line 524
    goto :goto_1e

    .line 525
    :catch_1f
    nop

    .line 526
    :cond_10
    :goto_1e
    if-eqz v15, :cond_11

    .line 527
    .line 528
    :try_start_23
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_20

    .line 529
    .line 530
    .line 531
    goto :goto_1f

    .line 532
    :catch_20
    nop

    .line 533
    :cond_11
    :goto_1f
    if-eqz v12, :cond_12

    .line 534
    .line 535
    :try_start_24
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_21

    .line 536
    .line 537
    .line 538
    goto :goto_20

    .line 539
    :catch_21
    nop

    .line 540
    :cond_12
    :goto_20
    if-eqz v13, :cond_13

    .line 541
    .line 542
    :try_start_25
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_22

    .line 543
    .line 544
    .line 545
    goto :goto_21

    .line 546
    :catch_22
    nop

    .line 547
    :cond_13
    :goto_21
    if-eqz v11, :cond_14

    .line 548
    .line 549
    :try_start_26
    invoke-virtual {v11}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_23

    .line 550
    .line 551
    .line 552
    goto :goto_22

    .line 553
    :catch_23
    nop

    .line 554
    :cond_14
    :goto_22
    if-eqz v10, :cond_15

    .line 555
    .line 556
    :try_start_27
    invoke-virtual {v10}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_24

    .line 557
    .line 558
    .line 559
    goto :goto_23

    .line 560
    :catch_24
    nop

    .line 561
    :cond_15
    :goto_23
    if-eqz v1, :cond_f

    .line 562
    .line 563
    :try_start_28
    invoke-virtual {v1}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_18

    .line 564
    .line 565
    .line 566
    goto :goto_1c

    .line 567
    :cond_16
    :goto_24
    new-instance v0, Ljava/io/File;

    .line 568
    .line 569
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 573
    .line 574
    .line 575
    move-result v0

    .line 576
    if-eqz v0, :cond_17

    .line 577
    .line 578
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    invoke-virtual {v0, v2}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    :cond_17
    return-object v4

    .line 586
    :catchall_e
    move-exception v0

    .line 587
    :goto_25
    if-eqz v8, :cond_18

    .line 588
    .line 589
    :try_start_29
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_25

    .line 590
    .line 591
    .line 592
    goto :goto_26

    .line 593
    :catch_25
    nop

    .line 594
    :cond_18
    :goto_26
    if-eqz v15, :cond_19

    .line 595
    .line 596
    :try_start_2a
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_26

    .line 597
    .line 598
    .line 599
    goto :goto_27

    .line 600
    :catch_26
    nop

    .line 601
    :cond_19
    :goto_27
    if-eqz v12, :cond_1a

    .line 602
    .line 603
    :try_start_2b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_27

    .line 604
    .line 605
    .line 606
    goto :goto_28

    .line 607
    :catch_27
    nop

    .line 608
    :cond_1a
    :goto_28
    if-eqz v13, :cond_1b

    .line 609
    .line 610
    :try_start_2c
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_28

    .line 611
    .line 612
    .line 613
    goto :goto_29

    .line 614
    :catch_28
    nop

    .line 615
    :cond_1b
    :goto_29
    if-eqz v11, :cond_1c

    .line 616
    .line 617
    :try_start_2d
    invoke-virtual {v11}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_29

    .line 618
    .line 619
    .line 620
    goto :goto_2a

    .line 621
    :catch_29
    nop

    .line 622
    :cond_1c
    :goto_2a
    if-eqz v10, :cond_1d

    .line 623
    .line 624
    :try_start_2e
    invoke-virtual {v10}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_2a

    .line 625
    .line 626
    .line 627
    goto :goto_2b

    .line 628
    :catch_2a
    nop

    .line 629
    :cond_1d
    :goto_2b
    if-eqz v1, :cond_1e

    .line 630
    .line 631
    :try_start_2f
    invoke-virtual {v1}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_2b

    .line 632
    .line 633
    .line 634
    :catch_2b
    :cond_1e
    :try_start_30
    invoke-virtual {v3}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_2c

    .line 635
    .line 636
    .line 637
    :catch_2c
    goto :goto_2d

    .line 638
    :goto_2c
    throw v0

    .line 639
    :goto_2d
    goto :goto_2c
.end method

.method public static d(Lcom/hierynomus/smbj/share/DiskShare;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0, v9}, Lcom/hierynomus/smbj/share/DiskShare;->mkdir(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    new-instance v10, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->GENERIC_ALL:Lcom/hierynomus/msdtyp/AccessMask;

    .line 16
    .line 17
    invoke-virtual {v10, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    new-instance v11, Ljava/util/HashSet;

    .line 21
    .line 22
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_RANDOM_ACCESS:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 26
    .line 27
    invoke-virtual {v11, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    const-string v12, "//"

    .line 31
    .line 32
    const-string v13, "/"

    .line 33
    .line 34
    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v14, "\\"

    .line 39
    .line 40
    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/hierynomus/smbj/share/DiskShare;->list(Ljava/lang/String;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v15

    .line 52
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/hierynomus/msfscc/fileinformation/FileIdBothDirectoryInformation;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/hierynomus/msfscc/fileinformation/FileDirectoryQueryableInformation;->getFileName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v3, "."

    .line 69
    .line 70
    const-string v4, ""

    .line 71
    .line 72
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_0

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v8, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v9, v2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {v1}, Lcom/hierynomus/msfscc/fileinformation/FileIdBothDirectoryInformation;->getFileAttributes()J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    sget-object v4, Lcom/hierynomus/msfscc/FileAttributes;->FILE_ATTRIBUTE_DIRECTORY:Lcom/hierynomus/msfscc/FileAttributes;

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/hierynomus/msfscc/FileAttributes;->getValue()J

    .line 98
    .line 99
    .line 100
    move-result-wide v4

    .line 101
    and-long/2addr v1, v4

    .line 102
    const-wide/16 v4, 0x0

    .line 103
    .line 104
    cmp-long v6, v1, v4

    .line 105
    .line 106
    if-eqz v6, :cond_1

    .line 107
    .line 108
    invoke-static {v3, v13}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-static {v0, v1, v2}, Lqa/f;->d(Lcom/hierynomus/smbj/share/DiskShare;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const/4 v6, 0x1

    .line 140
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    sget-object v16, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->ALL:Ljava/util/Set;

    .line 145
    .line 146
    sget-object v17, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 147
    .line 148
    const/16 v18, 0x0

    .line 149
    .line 150
    const/4 v4, 0x0

    .line 151
    move-object/from16 v1, p0

    .line 152
    .line 153
    move-object v3, v10

    .line 154
    move-object/from16 v5, v16

    .line 155
    .line 156
    move-object/from16 v6, v17

    .line 157
    .line 158
    move-object v0, v7

    .line 159
    move-object/from16 v7, v18

    .line 160
    .line 161
    invoke-virtual/range {v1 .. v7}, Lcom/hierynomus/smbj/share/DiskShare;->openFile(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/File;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const/4 v1, 0x1

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    sget-object v6, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OVERWRITE_IF:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 179
    .line 180
    move-object/from16 v1, p0

    .line 181
    .line 182
    move-object v8, v7

    .line 183
    move-object v7, v11

    .line 184
    invoke-virtual/range {v1 .. v7}, Lcom/hierynomus/smbj/share/DiskShare;->openFile(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/File;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    :try_start_1
    invoke-virtual {v8, v1}, Lcom/hierynomus/smbj/share/File;->remoteCopyTo(Lcom/hierynomus/smbj/share/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    .line 190
    .line 191
    :catch_1
    invoke-virtual {v8}, Lcom/hierynomus/smbj/share/Open;->close()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/hierynomus/smbj/share/Open;->close()V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :catchall_0
    move-exception v0

    .line 199
    move-object v2, v0

    .line 200
    invoke-virtual {v8}, Lcom/hierynomus/smbj/share/Open;->close()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Lcom/hierynomus/smbj/share/Open;->close()V

    .line 204
    .line 205
    .line 206
    throw v2

    .line 207
    :goto_1
    move-object/from16 v0, p0

    .line 208
    .line 209
    move-object/from16 v8, p1

    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_2
    return-void
.end method

.method public static e(Lx9/n5;Ljava/lang/String;)Lcom/yunpan/appmanage/bean/JcifsBean;
    .locals 13

    .line 1
    new-instance v0, Lcom/yunpan/appmanage/bean/JcifsBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yunpan/appmanage/bean/JcifsBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/yunpan/appmanage/bean/JcifsBean;->url:Ljava/lang/String;

    .line 7
    .line 8
    iget-boolean v1, p0, Lx9/n5;->u:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    :try_start_0
    new-instance v1, Lce/t0;

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lx9/n5;->b()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v1, p0}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lce/t0;->getInputStream()Ljava/io/InputStream;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    iput-object p0, v0, Lcom/yunpan/appmanage/bean/JcifsBean;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    iget-object p0, v0, Lcom/yunpan/appmanage/bean/JcifsBean;->in:Ljava/io/InputStream;

    .line 50
    .line 51
    invoke-static {p0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 52
    .line 53
    .line 54
    return-object v2

    .line 55
    :cond_0
    const-string v1, "/"

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    add-int/2addr v4, v3

    .line 67
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v4, "\\"

    .line 72
    .line 73
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/hierynomus/smbj/SmbConfig;->builder()Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, v3}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withMultiProtocolNegotiate(Z)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 91
    .line 92
    const-wide/16 v3, 0x0

    .line 93
    .line 94
    invoke-virtual {p1, v3, v4, v1}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1, v3, v4, v1}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withSoTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1, v3, v4, v1}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withReadTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/hierynomus/smbj/SmbConfig$Builder;->build()Lcom/hierynomus/smbj/SmbConfig;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :try_start_1
    new-instance v1, Lcom/hierynomus/smbj/SMBClient;

    .line 111
    .line 112
    invoke-direct {v1, p1}, Lcom/hierynomus/smbj/SMBClient;-><init>(Lcom/hierynomus/smbj/SmbConfig;)V

    .line 113
    .line 114
    .line 115
    iput-object v1, v0, Lcom/yunpan/appmanage/bean/JcifsBean;->client:Lcom/hierynomus/smbj/SMBClient;

    .line 116
    .line 117
    iget-object p1, p0, Lx9/n5;->c:Ljava/lang/String;

    .line 118
    .line 119
    iget v3, p0, Lx9/n5;->d:I

    .line 120
    .line 121
    invoke-virtual {v1, p1, v3}, Lcom/hierynomus/smbj/SMBClient;->connect(Ljava/lang/String;I)Lcom/hierynomus/smbj/connection/Connection;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iput-object p1, v0, Lcom/yunpan/appmanage/bean/JcifsBean;->connection:Lcom/hierynomus/smbj/connection/Connection;

    .line 126
    .line 127
    iget-object p1, p0, Lx9/n5;->e:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_1

    .line 134
    .line 135
    invoke-static {}, Lcom/hierynomus/smbj/auth/AuthenticationContext;->guest()Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    goto :goto_0

    .line 140
    :catch_1
    nop

    .line 141
    goto :goto_2

    .line 142
    :cond_1
    new-instance p1, Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 143
    .line 144
    iget-object v1, p0, Lx9/n5;->e:Ljava/lang/String;

    .line 145
    .line 146
    iget-object v3, p0, Lx9/n5;->f:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    iget-object p0, p0, Lx9/n5;->v:Ljava/lang/String;

    .line 153
    .line 154
    invoke-direct {p1, v1, v3, p0}, Lcom/hierynomus/smbj/auth/AuthenticationContext;-><init>(Ljava/lang/String;[CLjava/lang/String;)V

    .line 155
    .line 156
    .line 157
    move-object p0, p1

    .line 158
    :goto_0
    iget-object p1, v0, Lcom/yunpan/appmanage/bean/JcifsBean;->connection:Lcom/hierynomus/smbj/connection/Connection;

    .line 159
    .line 160
    invoke-virtual {p1, p0}, Lcom/hierynomus/smbj/connection/Connection;->authenticate(Lcom/hierynomus/smbj/auth/AuthenticationContext;)Lcom/hierynomus/smbj/session/Session;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    iput-object p0, v0, Lcom/yunpan/appmanage/bean/JcifsBean;->session:Lcom/hierynomus/smbj/session/Session;

    .line 165
    .line 166
    invoke-virtual {p0, v5}, Lcom/hierynomus/smbj/session/Session;->connectShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/Share;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    check-cast p0, Lcom/hierynomus/smbj/share/DiskShare;

    .line 171
    .line 172
    iput-object p0, v0, Lcom/yunpan/appmanage/bean/JcifsBean;->share:Lcom/hierynomus/smbj/share/DiskShare;

    .line 173
    .line 174
    new-instance v8, Ljava/util/HashSet;

    .line 175
    .line 176
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 177
    .line 178
    .line 179
    sget-object p0, Lcom/hierynomus/msdtyp/AccessMask;->GENERIC_READ:Lcom/hierynomus/msdtyp/AccessMask;

    .line 180
    .line 181
    invoke-virtual {v8, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    new-instance v10, Ljava/util/HashSet;

    .line 185
    .line 186
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 187
    .line 188
    .line 189
    sget-object p0, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->FILE_SHARE_READ:Lcom/hierynomus/mssmb2/SMB2ShareAccess;

    .line 190
    .line 191
    invoke-virtual {v10, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    iget-object v6, v0, Lcom/yunpan/appmanage/bean/JcifsBean;->share:Lcom/hierynomus/smbj/share/DiskShare;

    .line 195
    .line 196
    sget-object v11, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 197
    .line 198
    const/4 v12, 0x0

    .line 199
    const/4 v9, 0x0

    .line 200
    invoke-virtual/range {v6 .. v12}, Lcom/hierynomus/smbj/share/DiskShare;->openFile(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/File;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {p0}, Lcom/hierynomus/smbj/share/File;->getInputStream()Ljava/io/InputStream;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    iput-object p0, v0, Lcom/yunpan/appmanage/bean/JcifsBean;->in:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    .line 210
    :goto_1
    return-object v0

    .line 211
    :goto_2
    iget-object p0, v0, Lcom/yunpan/appmanage/bean/JcifsBean;->share:Lcom/hierynomus/smbj/share/DiskShare;

    .line 212
    .line 213
    if-eqz p0, :cond_2

    .line 214
    .line 215
    :try_start_2
    invoke-virtual {p0}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 216
    .line 217
    .line 218
    :catch_2
    iput-object v2, v0, Lcom/yunpan/appmanage/bean/JcifsBean;->share:Lcom/hierynomus/smbj/share/DiskShare;

    .line 219
    .line 220
    :cond_2
    iget-object p0, v0, Lcom/yunpan/appmanage/bean/JcifsBean;->session:Lcom/hierynomus/smbj/session/Session;

    .line 221
    .line 222
    if-eqz p0, :cond_3

    .line 223
    .line 224
    :try_start_3
    invoke-virtual {p0}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 225
    .line 226
    .line 227
    :catch_3
    iput-object v2, v0, Lcom/yunpan/appmanage/bean/JcifsBean;->session:Lcom/hierynomus/smbj/session/Session;

    .line 228
    .line 229
    :cond_3
    iget-object p0, v0, Lcom/yunpan/appmanage/bean/JcifsBean;->connection:Lcom/hierynomus/smbj/connection/Connection;

    .line 230
    .line 231
    if-eqz p0, :cond_4

    .line 232
    .line 233
    :try_start_4
    invoke-virtual {p0}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 234
    .line 235
    .line 236
    :catch_4
    iput-object v2, v0, Lcom/yunpan/appmanage/bean/JcifsBean;->connection:Lcom/hierynomus/smbj/connection/Connection;

    .line 237
    .line 238
    :cond_4
    iget-object p0, v0, Lcom/yunpan/appmanage/bean/JcifsBean;->client:Lcom/hierynomus/smbj/SMBClient;

    .line 239
    .line 240
    if-eqz p0, :cond_5

    .line 241
    .line 242
    :try_start_5
    invoke-virtual {p0}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 243
    .line 244
    .line 245
    :catch_5
    iput-object v2, v0, Lcom/yunpan/appmanage/bean/JcifsBean;->client:Lcom/hierynomus/smbj/SMBClient;

    .line 246
    .line 247
    :cond_5
    return-object v2
.end method

.method public static f(Lx9/n5;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lx9/n5;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lce/t0;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lx9/n5;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v0, p0}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lce/t0;->getInputStream()Ljava/io/InputStream;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/util/Properties;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lx9/n5;->v:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    const-string v1, "jcifs.smb.client.domain"

    .line 48
    .line 49
    iget-object v2, p0, Lx9/n5;->v:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_1
    const-string v1, "jcifs.smb.client.username"

    .line 55
    .line 56
    iget-object v2, p0, Lx9/n5;->e:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    const-string v1, "jcifs.smb.client.password"

    .line 62
    .line 63
    iget-object v2, p0, Lx9/n5;->f:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    new-instance v1, Lwc/a;

    .line 69
    .line 70
    invoke-direct {v1, v0}, Lwc/a;-><init>(Ljava/util/Properties;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lxc/a;

    .line 74
    .line 75
    invoke-direct {v0, v1}, Lxc/a;-><init>(Lwc/a;)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lvd/s;

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v3, "smb://"

    .line 83
    .line 84
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v3, p0, Lx9/n5;->c:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v3, ":"

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget p0, p0, Lx9/n5;->d:I

    .line 98
    .line 99
    invoke-static {v2, p0, p1}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-direct {v1, p0, v0}, Lvd/s;-><init>(Ljava/lang/String;Lxc/a;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lvd/s;->getInputStream()Ljava/io/InputStream;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    :goto_0
    return-object p0
.end method

.method public static g(Lx9/n5;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lx9/n5;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lce/t0;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lx9/n5;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v0, p0}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance p0, Lce/x0;

    .line 30
    .line 31
    invoke-direct {p0, v0}, Lce/x0;-><init>(Lce/t0;)V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_0
    new-instance v0, Ljava/util/Properties;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lx9/n5;->v:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    const-string v1, "jcifs.smb.client.domain"

    .line 49
    .line 50
    iget-object v2, p0, Lx9/n5;->v:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_1
    const-string v1, "jcifs.smb.client.username"

    .line 56
    .line 57
    iget-object v2, p0, Lx9/n5;->e:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    const-string v1, "jcifs.smb.client.password"

    .line 63
    .line 64
    iget-object v2, p0, Lx9/n5;->f:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    new-instance v1, Lwc/a;

    .line 70
    .line 71
    invoke-direct {v1, v0}, Lwc/a;-><init>(Ljava/util/Properties;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lxc/a;

    .line 75
    .line 76
    invoke-direct {v0, v1}, Lxc/a;-><init>(Lwc/a;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Lvd/s;

    .line 80
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v3, "smb://"

    .line 84
    .line 85
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lx9/n5;->c:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v3, ":"

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget p0, p0, Lx9/n5;->d:I

    .line 99
    .line 100
    invoke-static {v2, p0, p1}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-direct {v1, p0, v0}, Lvd/s;-><init>(Ljava/lang/String;Lxc/a;)V

    .line 105
    .line 106
    .line 107
    new-instance p0, Lvd/x;

    .line 108
    .line 109
    invoke-direct {p0, v1}, Lvd/x;-><init>(Lvd/s;)V

    .line 110
    .line 111
    .line 112
    return-object p0
.end method

.method public static h(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "/"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v2, "//"

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance v2, Ljava/io/File;

    .line 52
    .line 53
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 57
    .line 58
    .line 59
    new-instance v2, Ljava/io/File;

    .line 60
    .line 61
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2, v0}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    :try_start_0
    new-instance v0, Lce/t0;

    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 85
    .line 86
    invoke-virtual {v3}, Lx9/n5;->b()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v3, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-direct {v0, v2}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lce/t0;->x()[Lce/t0;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    array-length v2, v0

    .line 110
    const/4 v3, 0x0

    .line 111
    const/4 v4, 0x0

    .line 112
    :goto_0
    if-ge v4, v2, :cond_5

    .line 113
    .line 114
    aget-object v5, v0, v4

    .line 115
    .line 116
    new-instance v6, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 117
    .line 118
    invoke-direct {v6}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Lce/t0;->p()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    iput-object v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 126
    .line 127
    sget-object v8, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 128
    .line 129
    iget-boolean v8, v8, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 130
    .line 131
    if-nez v8, :cond_2

    .line 132
    .line 133
    const-string v8, "."

    .line 134
    .line 135
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eqz v7, :cond_2

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    sget-object v7, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 143
    .line 144
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 145
    .line 146
    iget-object v7, v7, Lcom/yunpan/appmanage/util/k;->b0:Ljava/text/SimpleDateFormat;

    .line 147
    .line 148
    invoke-virtual {v5}, Lce/t0;->getLastModified()J

    .line 149
    .line 150
    .line 151
    move-result-wide v8

    .line 152
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-virtual {v7, v8}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    iput-object v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v5}, Lce/t0;->u()Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    iput-boolean v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 167
    .line 168
    if-eqz v7, :cond_4

    .line 169
    .line 170
    iget-object v5, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_3

    .line 177
    .line 178
    iget-object v5, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    add-int/lit8 v7, v7, -0x1

    .line 185
    .line 186
    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    iput-object v5, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 191
    .line 192
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    iget-object v7, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget-object v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    iput-object v5, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {p0, v6}, Lqa/f;->h(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;)V

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    iget-object v8, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    iget-object v8, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    iput-object v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v5}, Lce/t0;->w()J

    .line 245
    .line 246
    .line 247
    move-result-wide v7

    .line 248
    iput-wide v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 249
    .line 250
    long-to-double v7, v7

    .line 251
    invoke-static {v7, v8}, Lif/a;->D0(D)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    iput-object v5, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->size_txt:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v5, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 258
    .line 259
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .line 261
    .line 262
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :catch_0
    :cond_5
    return-void
.end method

.method public static i(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "com.hierynomus.smbj"

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "SMBv1 is not supported by SMBJ"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const-string p0, "\u534f\u8bae\u8bc6\u522b\u51fa\u9519"

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const-string v0, "Authentication failed"

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_7

    .line 46
    .line 47
    const-string v0, "STATUS_ACCOUNT_DISABLED"

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-string v0, "STATUS_BAD_NETWORK_NAME"

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    const-string p0, "\u8bf7\u786e\u4fdd\u5206\u4eab\u76ee\u5f55\u6b63\u786e"

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const-string v0, "STATUS_INVALID_PARAMETER"

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    const-string p0, "\u65e0\u6548\u7684\u53c2\u6570"

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const-string v0, "STATUS_OBJECT_NAME_COLLISION"

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    const-string p0, "\u76ee\u5f55\u5df2\u5b58\u5728"

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    const-string v0, "STATUS_OBJECT_NAME_NOT_FOUND"

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    const-string p0, "\u4e0d\u5b58\u5728"

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    const-string v0, "STATUS_ACCESS_DENIED"

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    const-string p0, "\u65e0\u6743\u9650"

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    const-string v0, "Timeout expired"

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_8

    .line 118
    .line 119
    const-string p0, "\u8fde\u63a5\u8d85\u65f6"

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_7
    :goto_0
    const-string p0, "\u7528\u6237\u540d\u6216\u5bc6\u7801\u9519\u8bef"

    .line 123
    .line 124
    :cond_8
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_9

    .line 129
    .line 130
    const-string p0, "\u8fde\u63a5\u5931\u8d25"

    .line 131
    .line 132
    :cond_9
    return-object p0
.end method

.method public static j(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/hierynomus/smbj/share/DiskShare;Lcom/yunpan/appmanage/bean/WpPathBean;)V
    .locals 11

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "/"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v3, p2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v3, "//"

    .line 43
    .line 44
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-instance v3, Ljava/io/File;

    .line 49
    .line 50
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 54
    .line 55
    .line 56
    new-instance v3, Ljava/io/File;

    .line 57
    .line 58
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3, v1}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :try_start_0
    iget-object v1, p2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 75
    .line 76
    const/4 v3, 0x1

    .line 77
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    iget-object v4, p2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 82
    .line 83
    add-int/2addr v1, v3

    .line 84
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v4, "\\"

    .line 89
    .line 90
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p1, v1}, Lcom/hierynomus/smbj/share/DiskShare;->list(Ljava/lang/String;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_5

    .line 107
    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    check-cast v4, Lcom/hierynomus/msfscc/fileinformation/FileIdBothDirectoryInformation;

    .line 113
    .line 114
    new-instance v5, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/hierynomus/msfscc/fileinformation/FileDirectoryQueryableInformation;->getFileName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    iget-object v8, p2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Lcom/hierynomus/msfscc/fileinformation/FileDirectoryQueryableInformation;->getFileName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-direct {v5, v6, v7}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 145
    .line 146
    const-string v7, ""

    .line 147
    .line 148
    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-eqz v6, :cond_2

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_2
    sget-object v6, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 160
    .line 161
    iget-boolean v6, v6, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 162
    .line 163
    if-nez v6, :cond_3

    .line 164
    .line 165
    iget-object v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    if-eqz v6, :cond_3

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {v4}, Lcom/hierynomus/msfscc/fileinformation/FileIdBothDirectoryInformation;->getLastWriteTime()Lcom/hierynomus/msdtyp/FileTime;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {v6}, Lcom/hierynomus/msdtyp/FileTime;->toDate()Ljava/util/Date;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    sget-object v7, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 183
    .line 184
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 185
    .line 186
    iget-object v7, v7, Lcom/yunpan/appmanage/util/k;->b0:Ljava/text/SimpleDateFormat;

    .line 187
    .line 188
    invoke-virtual {v7, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    iput-object v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v4}, Lcom/hierynomus/msfscc/fileinformation/FileIdBothDirectoryInformation;->getFileAttributes()J

    .line 195
    .line 196
    .line 197
    move-result-wide v6

    .line 198
    sget-object v8, Lcom/hierynomus/msfscc/FileAttributes;->FILE_ATTRIBUTE_DIRECTORY:Lcom/hierynomus/msfscc/FileAttributes;

    .line 199
    .line 200
    invoke-virtual {v8}, Lcom/hierynomus/msfscc/FileAttributes;->getValue()J

    .line 201
    .line 202
    .line 203
    move-result-wide v8

    .line 204
    and-long/2addr v6, v8

    .line 205
    const-wide/16 v8, 0x0

    .line 206
    .line 207
    cmp-long v10, v6, v8

    .line 208
    .line 209
    if-eqz v10, :cond_4

    .line 210
    .line 211
    iput-boolean v3, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 212
    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    iget-object v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    iput-object v4, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 231
    .line 232
    invoke-static {p0, p1, v5}, Lqa/f;->j(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/hierynomus/smbj/share/DiskShare;Lcom/yunpan/appmanage/bean/WpPathBean;)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :cond_4
    const/4 v6, 0x0

    .line 238
    iput-boolean v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 239
    .line 240
    invoke-virtual {v4}, Lcom/hierynomus/msfscc/fileinformation/FileIdBothDirectoryInformation;->getEndOfFile()J

    .line 241
    .line 242
    .line 243
    move-result-wide v6

    .line 244
    iput-wide v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 245
    .line 246
    long-to-double v6, v6

    .line 247
    invoke-static {v6, v7}, Lif/a;->D0(D)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    iput-object v4, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->size_txt:Ljava/lang/String;

    .line 252
    .line 253
    iget-object v4, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 254
    .line 255
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :catch_0
    :cond_5
    return-void
.end method
