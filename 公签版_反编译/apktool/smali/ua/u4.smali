.class public final synthetic Lua/u4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityNissan;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNissan;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/u4;->a:I

    iput-object p1, p0, Lua/u4;->b:Lcom/yunpan/appmanage/ui/ActivityNissan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 14

    .line 1
    const-wide/16 v0, 0xfa0

    .line 2
    .line 3
    const-string v2, "setprop ctl.restart adbd"

    .line 4
    .line 5
    const-string v3, "setprop service.adb.tcp.port 5555"

    .line 6
    .line 7
    const-string v4, "adb_enabled"

    .line 8
    .line 9
    const-string v5, "\u4fee\u6539\u5931\u8d25"

    .line 10
    .line 11
    const/4 v6, -0x1

    .line 12
    iget-object v7, p0, Lua/u4;->b:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    const/4 v9, 0x0

    .line 16
    iget v10, p0, Lua/u4;->a:I

    .line 17
    .line 18
    packed-switch v10, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    sget v0, Lcom/yunpan/appmanage/ui/ActivityNissan;->I:I

    .line 22
    .line 23
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const-string v0, "addSuppressed"

    .line 27
    .line 28
    const-class v1, Ljava/lang/Throwable;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "com.yunpan.appmanage"

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    nop

    .line 43
    move-object v3, v2

    .line 44
    :goto_0
    if-nez v3, :cond_0

    .line 45
    .line 46
    const-string v0, "\u672a\u5b89\u88c5\u5e94\u7528\u7ba1\u5bb6(com.yunpan.appmanage)"

    .line 47
    .line 48
    invoke-static {v0, v9}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_d

    .line 55
    .line 56
    :cond_0
    const-string v3, "com.hsae.voice.adapter"

    .line 57
    .line 58
    invoke-static {v3}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-nez v3, :cond_1

    .line 63
    .line 64
    const-string v0, "\u68c0\u6d4b\u5230\u4f60\u7cfb\u7edf\u6ca1\u6709\u5b89\u88c5\u8bed\u97f3\u9002\u914d\uff0c\u786e\u5b9a\u662f\u65e5\u4ea7\u8f66\u673a\u5417\uff1f"

    .line 65
    .line 66
    invoke-static {v0, v9}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_d

    .line 73
    .line 74
    :cond_1
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 75
    .line 76
    const-string v4, "_P"

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-ne v4, v6, :cond_2

    .line 83
    .line 84
    const-string v0, "\u65e0\u6cd5\u5206\u8fa8\u60a8\u7684\u7cfb\u7edf\u7248\u672c"

    .line 85
    .line 86
    invoke-static {v0, v9}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_d

    .line 93
    .line 94
    :cond_2
    add-int/lit8 v4, v4, 0x2

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const-string v4, "_"

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eq v4, v6, :cond_3

    .line 107
    .line 108
    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    const/16 v4, 0x29e

    .line 121
    .line 122
    if-le v3, v4, :cond_4

    .line 123
    .line 124
    const-string v0, "\u6682\u672a\u9002\u914d\u7684\u4f60\u7684\u7cfb\u7edf\uff0c\u8bf7\u53cd\u9988"

    .line 125
    .line 126
    invoke-static {v0, v9}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_d

    .line 133
    .line 134
    :cond_4
    const/16 v4, 0x1fe

    .line 135
    .line 136
    if-le v3, v4, :cond_5

    .line 137
    .line 138
    const-string v3, "https://yunupdata-1318501551.cos.ap-guangzhou.myqcloud.com/VoiceAdapter/VoiceAdapter_660.apk"

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_5
    const/16 v4, 0x1c2

    .line 142
    .line 143
    if-lt v3, v4, :cond_6

    .line 144
    .line 145
    const-string v3, "https://yunupdata-1318501551.cos.ap-guangzhou.myqcloud.com/VoiceAdapter/VoiceAdapter_510.apk"

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_6
    const/16 v4, 0xf0

    .line 149
    .line 150
    if-lt v3, v4, :cond_7

    .line 151
    .line 152
    const-string v3, "https://yunupdata-1318501551.cos.ap-guangzhou.myqcloud.com/VoiceAdapter/VoiceAdapter_280.apk"

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_7
    const-string v3, "https://yunupdata-1318501551.cos.ap-guangzhou.myqcloud.com/VoiceAdapter/VoiceAdapter_170.apk"

    .line 156
    .line 157
    :goto_1
    :try_start_1
    new-instance v4, Ll9/a;

    .line 158
    .line 159
    invoke-direct {v4, v3}, Ll9/a;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const-string v3, "User-Agent"

    .line 163
    .line 164
    const-string v5, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76"

    .line 165
    .line 166
    iget-object v10, v4, Lm9/e;->i:Lk9/a;

    .line 167
    .line 168
    invoke-virtual {v10, v3, v5}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Lm9/e;->a()Lokhttp3/Response;

    .line 172
    .line 173
    .line 174
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    goto :goto_2

    .line 176
    :catch_1
    nop

    .line 177
    :goto_2
    const-string v3, "\u4e0b\u8f7d\u5347\u7ea7\u5305\u5931\u8d25"

    .line 178
    .line 179
    if-nez v2, :cond_8

    .line 180
    .line 181
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_d

    .line 188
    .line 189
    :cond_8
    new-instance v4, Ljava/io/File;

    .line 190
    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    sget-object v10, Lfa/g0;->a:Lfa/h0;

    .line 197
    .line 198
    invoke-virtual {v10}, Lfa/h0;->d()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v10, "/."

    .line 206
    .line 207
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    sget-object v10, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 211
    .line 212
    sget-object v10, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 213
    .line 214
    iget-object v10, v10, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 215
    .line 216
    const-string v11, "/cache/VoiceAdapter.apk"

    .line 217
    .line 218
    invoke-static {v10, v11, v5}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 230
    .line 231
    .line 232
    :try_start_2
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    if-eqz v2, :cond_10

    .line 237
    .line 238
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 239
    .line 240
    .line 241
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 242
    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    .line 243
    .line 244
    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 245
    .line 246
    .line 247
    :try_start_4
    new-instance v10, Ljava/io/BufferedInputStream;

    .line 248
    .line 249
    invoke-direct {v10, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 250
    .line 251
    .line 252
    :try_start_5
    new-instance v11, Ljava/io/BufferedOutputStream;

    .line 253
    .line 254
    invoke-direct {v11, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 255
    .line 256
    .line 257
    const/high16 v12, 0x100000

    .line 258
    .line 259
    :try_start_6
    new-array v12, v12, [B

    .line 260
    .line 261
    :goto_3
    invoke-virtual {v10, v12}, Ljava/io/InputStream;->read([B)I

    .line 262
    .line 263
    .line 264
    move-result v13

    .line 265
    if-eq v13, v6, :cond_9

    .line 266
    .line 267
    invoke-virtual {v11, v12, v9, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :catchall_0
    move-exception v4

    .line 275
    goto/16 :goto_5

    .line 276
    .line 277
    :cond_9
    :try_start_7
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 278
    .line 279
    .line 280
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 281
    .line 282
    .line 283
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 284
    .line 285
    .line 286
    if-eqz v2, :cond_a

    .line 287
    .line 288
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 289
    .line 290
    .line 291
    :cond_a
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    invoke-static {}, La2/w0;->Q()Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    const-string v1, "\u5347\u7ea7\u5931\u8d25\uff1a"

    .line 301
    .line 302
    const-string v2, "\u5347\u7ea7\u5b8c\u6210"

    .line 303
    .line 304
    if-eqz v0, :cond_c

    .line 305
    .line 306
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 311
    .line 312
    iget v3, v3, Lcom/yunpan/appmanage/util/k;->n:I

    .line 313
    .line 314
    invoke-static {v3, v0}, La2/w0;->Y(ILjava/lang/String;)Lfa/x;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    iget-boolean v3, v0, Lfa/x;->a:Z

    .line 319
    .line 320
    if-eqz v3, :cond_b

    .line 321
    .line 322
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-object v0, v0, Lfa/x;->c:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v0, v9}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 341
    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_c
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 345
    .line 346
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 347
    .line 348
    if-nez v0, :cond_e

    .line 349
    .line 350
    sget-object v0, Lma/h;->a:Lma/i;

    .line 351
    .line 352
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    invoke-virtual {v0, v3}, Lma/i;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    if-eqz v3, :cond_d

    .line 365
    .line 366
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    goto :goto_4

    .line 370
    :cond_d
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-static {v0, v9}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 375
    .line 376
    .line 377
    goto :goto_4

    .line 378
    :cond_e
    iget-object v0, v7, Lda/g;->A:Lda/g;

    .line 379
    .line 380
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->I(Landroid/content/Context;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    :goto_4
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 388
    .line 389
    .line 390
    goto :goto_d

    .line 391
    :catchall_1
    move-exception v4

    .line 392
    goto :goto_b

    .line 393
    :catchall_2
    move-exception v4

    .line 394
    goto :goto_9

    .line 395
    :catchall_3
    move-exception v4

    .line 396
    goto :goto_7

    .line 397
    :goto_5
    :try_start_b
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 398
    .line 399
    .line 400
    goto :goto_6

    .line 401
    :catchall_4
    move-exception v6

    .line 402
    :try_start_c
    new-array v7, v8, [Ljava/lang/Class;

    .line 403
    .line 404
    aput-object v1, v7, v9

    .line 405
    .line 406
    invoke-virtual {v1, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    new-array v11, v8, [Ljava/lang/Object;

    .line 411
    .line 412
    aput-object v6, v11, v9

    .line 413
    .line 414
    invoke-virtual {v7, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 415
    .line 416
    .line 417
    :catch_2
    :goto_6
    :try_start_d
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 418
    :goto_7
    :try_start_e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 419
    .line 420
    .line 421
    goto :goto_8

    .line 422
    :catchall_5
    move-exception v6

    .line 423
    :try_start_f
    new-array v7, v8, [Ljava/lang/Class;

    .line 424
    .line 425
    aput-object v1, v7, v9

    .line 426
    .line 427
    invoke-virtual {v1, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 428
    .line 429
    .line 430
    move-result-object v7

    .line 431
    new-array v10, v8, [Ljava/lang/Object;

    .line 432
    .line 433
    aput-object v6, v10, v9

    .line 434
    .line 435
    invoke-virtual {v7, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 436
    .line 437
    .line 438
    :catch_3
    :goto_8
    :try_start_10
    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 439
    :goto_9
    :try_start_11
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 440
    .line 441
    .line 442
    goto :goto_a

    .line 443
    :catchall_6
    move-exception v5

    .line 444
    :try_start_12
    new-array v6, v8, [Ljava/lang/Class;

    .line 445
    .line 446
    aput-object v1, v6, v9

    .line 447
    .line 448
    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 449
    .line 450
    .line 451
    move-result-object v6

    .line 452
    new-array v7, v8, [Ljava/lang/Object;

    .line 453
    .line 454
    aput-object v5, v7, v9

    .line 455
    .line 456
    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 457
    .line 458
    .line 459
    :catch_4
    :goto_a
    :try_start_13
    throw v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 460
    :goto_b
    if-eqz v2, :cond_f

    .line 461
    .line 462
    :try_start_14
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 463
    .line 464
    .line 465
    goto :goto_c

    .line 466
    :catchall_7
    move-exception v2

    .line 467
    :try_start_15
    new-array v5, v8, [Ljava/lang/Class;

    .line 468
    .line 469
    aput-object v1, v5, v9

    .line 470
    .line 471
    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    new-array v1, v8, [Ljava/lang/Object;

    .line 476
    .line 477
    aput-object v2, v1, v9

    .line 478
    .line 479
    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5

    .line 480
    .line 481
    .line 482
    :catch_5
    :cond_f
    :goto_c
    :try_start_16
    throw v4

    .line 483
    :cond_10
    new-instance v0, Ljava/lang/Exception;

    .line 484
    .line 485
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 486
    .line 487
    .line 488
    throw v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    .line 489
    :catch_6
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 493
    .line 494
    .line 495
    :goto_d
    return-void

    .line 496
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityNissan;->I:I

    .line 497
    .line 498
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 499
    .line 500
    .line 501
    const-string v0, "screen_off_timeout"

    .line 502
    .line 503
    :try_start_17
    iget-object v1, v7, Lda/g;->A:Lda/g;

    .line 504
    .line 505
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-static {v1, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 510
    .line 511
    .line 512
    move-result v9
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7

    .line 513
    goto :goto_e

    .line 514
    :catch_7
    nop

    .line 515
    :goto_e
    if-nez v9, :cond_11

    .line 516
    .line 517
    :try_start_18
    iget-object v1, v7, Lda/g;->A:Lda/g;

    .line 518
    .line 519
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    const v2, 0x7fffffff

    .line 524
    .line 525
    .line 526
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 527
    .line 528
    .line 529
    move-result v9
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8

    .line 530
    :catch_8
    :cond_11
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 531
    .line 532
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    .line 534
    .line 535
    const-string v0, "settings put system screen_off_timeout 2147483647"

    .line 536
    .line 537
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    if-nez v9, :cond_12

    .line 542
    .line 543
    iget v0, v0, Lfa/a0;->a:I

    .line 544
    .line 545
    if-eqz v0, :cond_12

    .line 546
    .line 547
    invoke-static {v5, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 548
    .line 549
    .line 550
    goto :goto_f

    .line 551
    :cond_12
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 552
    .line 553
    .line 554
    :goto_f
    return-void

    .line 555
    :pswitch_1
    sget v6, Lcom/yunpan/appmanage/ui/ActivityNissan;->I:I

    .line 556
    .line 557
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    :try_start_19
    iget-object v6, v7, Lcom/yunpan/appmanage/ui/ActivityNissan;->E:Landroid/content/ContentResolver;

    .line 561
    .line 562
    invoke-static {v6, v4, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9

    .line 563
    .line 564
    .line 565
    goto :goto_10

    .line 566
    :catch_9
    move-exception v4

    .line 567
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 568
    .line 569
    .line 570
    :goto_10
    new-array v4, v8, [Ljava/lang/String;

    .line 571
    .line 572
    aput-object v3, v4, v9

    .line 573
    .line 574
    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 575
    .line 576
    .line 577
    move-result-object v3

    .line 578
    invoke-virtual {v3}, Lv9/e;->l0()Landroidx/room/s;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    new-array v4, v8, [Ljava/lang/String;

    .line 583
    .line 584
    const-string v6, "setprop persist.adb.tcp.port 5555"

    .line 585
    .line 586
    aput-object v6, v4, v9

    .line 587
    .line 588
    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 589
    .line 590
    .line 591
    move-result-object v4

    .line 592
    invoke-virtual {v4}, Lv9/e;->l0()Landroidx/room/s;

    .line 593
    .line 594
    .line 595
    iget v3, v3, Landroidx/room/s;->b:I

    .line 596
    .line 597
    if-eqz v3, :cond_13

    .line 598
    .line 599
    invoke-static {v5, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 600
    .line 601
    .line 602
    goto :goto_11

    .line 603
    :cond_13
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 604
    .line 605
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    .line 607
    .line 608
    invoke-static {}, La2/w0;->P()Z

    .line 609
    .line 610
    .line 611
    move-result v3

    .line 612
    if-nez v3, :cond_14

    .line 613
    .line 614
    const-wide/16 v3, 0x16e

    .line 615
    .line 616
    :try_start_1a
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_a

    .line 617
    .line 618
    .line 619
    :catch_a
    new-array v3, v8, [Ljava/lang/String;

    .line 620
    .line 621
    aput-object v2, v3, v9

    .line 622
    .line 623
    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 628
    .line 629
    .line 630
    const-string v2, "\u6b63\u5728\u91cd\u542fadb\u670d\u52a1"

    .line 631
    .line 632
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    :try_start_1b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_b

    .line 636
    .line 637
    .line 638
    :catch_b
    :cond_14
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 639
    .line 640
    .line 641
    :goto_11
    return-void

    .line 642
    :pswitch_2
    sget v5, Lcom/yunpan/appmanage/ui/ActivityNissan;->I:I

    .line 643
    .line 644
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 645
    .line 646
    .line 647
    :try_start_1c
    iget-object v5, v7, Lcom/yunpan/appmanage/ui/ActivityNissan;->E:Landroid/content/ContentResolver;

    .line 648
    .line 649
    invoke-static {v5, v4, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 650
    .line 651
    .line 652
    move-result v4
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_c

    .line 653
    goto :goto_12

    .line 654
    :catch_c
    nop

    .line 655
    const/4 v4, 0x0

    .line 656
    :goto_12
    if-nez v4, :cond_15

    .line 657
    .line 658
    new-array v4, v8, [Ljava/lang/String;

    .line 659
    .line 660
    const-string v5, "settings put global adb_enabled 1"

    .line 661
    .line 662
    aput-object v5, v4, v9

    .line 663
    .line 664
    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 665
    .line 666
    .line 667
    move-result-object v4

    .line 668
    invoke-virtual {v4}, Lv9/e;->l0()Landroidx/room/s;

    .line 669
    .line 670
    .line 671
    :cond_15
    new-array v4, v8, [Ljava/lang/String;

    .line 672
    .line 673
    aput-object v3, v4, v9

    .line 674
    .line 675
    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 676
    .line 677
    .line 678
    move-result-object v3

    .line 679
    invoke-virtual {v3}, Lv9/e;->l0()Landroidx/room/s;

    .line 680
    .line 681
    .line 682
    move-result-object v3

    .line 683
    iget v3, v3, Landroidx/room/s;->b:I

    .line 684
    .line 685
    if-eqz v3, :cond_17

    .line 686
    .line 687
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 688
    .line 689
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 690
    .line 691
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 692
    .line 693
    if-eqz v0, :cond_16

    .line 694
    .line 695
    const-string v0, "\u4fee\u6539\u5931\u8d25\uff0c\u4e0d\u9002\u5408\u60a8\u7684\u7cfb\u7edf"

    .line 696
    .line 697
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 698
    .line 699
    .line 700
    goto :goto_13

    .line 701
    :cond_16
    new-instance v0, Ljava/lang/Exception;

    .line 702
    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    .line 704
    .line 705
    const-string v2, "\u5931\u8d25\uff0c\u65e5\u4ea7\u8f66\u673a\u8bf7\u4f7f\u7528 "

    .line 706
    .line 707
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    iget-object v2, v7, Lda/g;->A:Lda/g;

    .line 711
    .line 712
    invoke-virtual {v2}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 713
    .line 714
    .line 715
    move-result-object v2

    .line 716
    const v3, 0x7f13002f

    .line 717
    .line 718
    .line 719
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v2

    .line 723
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    const-string v2, "-\u516c\u7b7e\u7248(\u98de\u601d\u5361\u5c14)"

    .line 727
    .line 728
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 739
    .line 740
    .line 741
    goto :goto_13

    .line 742
    :cond_17
    new-array v3, v8, [Ljava/lang/String;

    .line 743
    .line 744
    aput-object v2, v3, v9

    .line 745
    .line 746
    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 751
    .line 752
    .line 753
    :try_start_1d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_d

    .line 754
    .line 755
    .line 756
    :catch_d
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 757
    .line 758
    .line 759
    :goto_13
    return-void

    .line 760
    nop

    .line 761
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 16

    .line 1
    move/from16 v0, p3

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x1

    .line 9
    const/4 v6, 0x0

    .line 10
    sget v7, Lcom/yunpan/appmanage/ui/ActivityNissan;->I:I

    .line 11
    .line 12
    move-object/from16 v7, p0

    .line 13
    .line 14
    iget-object v9, v7, Lua/u4;->b:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 15
    .line 16
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 22
    .line 23
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string v0, "\u7cfb\u7edf\u672c\u8eab\u5df2root\uff0c\u65e0\u9700\u591a\u6b64\u4e00\u4e3e"

    .line 30
    .line 31
    invoke-static {v0, v6}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_0
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, La2/w0;->P()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    const-string v0, "\u672c\u8eab\u5df2\u8fde\u63a5adb\uff0c\u65e0\u9700\u591a\u6b64\u4e00\u4e3e"

    .line 48
    .line 49
    invoke-static {v0, v6}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_1
    new-instance v0, Lua/u4;

    .line 55
    .line 56
    invoke-direct {v0, v9, v5}, Lua/u4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissan;I)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lmc/c;

    .line 60
    .line 61
    invoke-direct {v1, v6, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Lua/v4;

    .line 79
    .line 80
    invoke-direct {v1, v9, v6}, Lua/v4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissan;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :cond_2
    if-ne v0, v5, :cond_3

    .line 89
    .line 90
    new-instance v0, Lua/u4;

    .line 91
    .line 92
    invoke-direct {v0, v9, v4}, Lua/u4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissan;I)V

    .line 93
    .line 94
    .line 95
    new-instance v1, Lmc/c;

    .line 96
    .line 97
    invoke-direct {v1, v6, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v1, Lua/v4;

    .line 115
    .line 116
    invoke-direct {v1, v9, v4}, Lua/v4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissan;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :cond_3
    if-ne v0, v4, :cond_4

    .line 125
    .line 126
    new-instance v0, Lha/z6;

    .line 127
    .line 128
    iget-object v10, v9, Lda/g;->A:Lda/g;

    .line 129
    .line 130
    new-instance v15, Lua/w4;

    .line 131
    .line 132
    invoke-direct {v15, v9, v6}, Lua/w4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissan;I)V

    .line 133
    .line 134
    .line 135
    const-string v11, "\u5e38\u8bc6\uff1a\u5f00\u542fUSB\u8c03\u8bd5\u540e\uff0c\u8f66\u673a\u5c06\u4e0d\u80fd\u8bfb\u53d6U\u76d8\n\n\u6bcf\u6b21\u5f00\u673a\u540e\u8f66\u673a\u90fd\u4f1a\u5173\u95edusb\u8c03\u8bd5\nUSB\u8c03\u8bd5\u4ec5\u5728\u9700\u8981usb\u8fde\u63a5adb\u65f6\u9700\u8981\uff0c\u65e0\u7ebfadb\u5219\u4e0d\u9700\u8981\u5f00"

    .line 136
    .line 137
    const-string v12, ""

    .line 138
    .line 139
    const-string v13, "\u786e\u5b9a"

    .line 140
    .line 141
    const-string v14, "\u53d6\u6d88"

    .line 142
    .line 143
    move-object v8, v0

    .line 144
    invoke-direct/range {v8 .. v15}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_4
    if-ne v0, v3, :cond_5

    .line 153
    .line 154
    new-instance v0, Lua/v0;

    .line 155
    .line 156
    const/16 v1, 0x18

    .line 157
    .line 158
    invoke-direct {v0, v1}, Lua/v0;-><init>(I)V

    .line 159
    .line 160
    .line 161
    new-instance v1, Lmc/c;

    .line 162
    .line 163
    invoke-direct {v1, v6, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 167
    .line 168
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    new-instance v1, Lua/v4;

    .line 181
    .line 182
    invoke-direct {v1, v9, v5}, Lua/v4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissan;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_5
    const/4 v8, 0x4

    .line 191
    if-ne v0, v8, :cond_9

    .line 192
    .line 193
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 194
    .line 195
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_6

    .line 200
    .line 201
    const-string v0, "\u60a8\u5df2\u662froot\u6743\u9650\uff0c\u65e0\u9700\u63d0\u6743"

    .line 202
    .line 203
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :cond_6
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    invoke-static {}, La2/w0;->P()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-nez v0, :cond_7

    .line 218
    .line 219
    const-string v0, "\u8bf7\u5148\u8fde\u63a5adb"

    .line 220
    .line 221
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :cond_7
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 227
    .line 228
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 229
    .line 230
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 231
    .line 232
    if-eqz v0, :cond_8

    .line 233
    .line 234
    const-string v0, "\u5df2\u62e5\u6709\u7cfb\u7edf\u5199\u5165\u6743\uff0c\u65e0\u9700\u518d\u63d0\u6743"

    .line 235
    .line 236
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :cond_8
    sget v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 242
    .line 243
    new-instance v0, Lha/qa;

    .line 244
    .line 245
    invoke-direct {v0, v2, v6}, Lha/qa;-><init>(IZ)V

    .line 246
    .line 247
    .line 248
    new-instance v1, Lmc/c;

    .line 249
    .line 250
    invoke-direct {v1, v6, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 254
    .line 255
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    new-instance v1, Lua/v4;

    .line 268
    .line 269
    invoke-direct {v1, v9, v3}, Lua/v4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissan;I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_9
    if-ne v0, v2, :cond_a

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_a
    const/4 v2, 0x6

    .line 282
    if-ne v0, v2, :cond_b

    .line 283
    .line 284
    new-instance v0, Lha/z6;

    .line 285
    .line 286
    iget-object v10, v9, Lda/g;->A:Lda/g;

    .line 287
    .line 288
    new-instance v15, Lua/w4;

    .line 289
    .line 290
    invoke-direct {v15, v9, v5}, Lua/w4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissan;I)V

    .line 291
    .line 292
    .line 293
    const-string v13, "\u53d6\u6d88"

    .line 294
    .line 295
    const-string v14, "\u6211\u9700\u8981\u4fee\u590d"

    .line 296
    .line 297
    const-string v11, "\u5982\u679c\u60a8\u7684\u65b9\u5411\u76d8\u80fd\u6b63\u5e38\u63a7\u5236\u5bfc\u822a\u97f3\u91cf(\u9ad8\u5fb7)\uff0c\u5219\u4e0d\u9700\u8981\u70b9\u4fee\u590d"

    .line 298
    .line 299
    const-string v12, "\u6ce8\uff1a\u5982\u679c\u65e0\u6548\uff0c\u8bf7\u8003\u8651\u6362\u4e00\u4e2a\u9ad8\u5fb7\u5b98\u65b9\u7248\u672c\u770b\u770b"

    .line 300
    .line 301
    move-object v8, v0

    .line 302
    invoke-direct/range {v8 .. v15}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :cond_b
    const/4 v2, 0x7

    .line 311
    if-ne v0, v2, :cond_c

    .line 312
    .line 313
    new-instance v0, Lha/z6;

    .line 314
    .line 315
    iget-object v10, v9, Lda/g;->A:Lda/g;

    .line 316
    .line 317
    new-instance v15, Lua/w4;

    .line 318
    .line 319
    invoke-direct {v15, v9, v4}, Lua/w4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissan;I)V

    .line 320
    .line 321
    .line 322
    const-string v13, "\u53d6\u6d88"

    .line 323
    .line 324
    const-string v14, "\u6211\u9700\u8981\u4fee\u590d"

    .line 325
    .line 326
    const-string v11, "\u4e00\u822c\u7528\u7b2c\u4e00\u79cd\u65b9\u6cd5\u5373\u53ef\u4fee\u590d\uff0c\u5982\u679c\u4e0d\u884c\u624d\u7528\u7b2c\u4e8c\u79cd\u65b9\u6cd5\uff01"

    .line 327
    .line 328
    const-string v12, "\u8b66\u544a\uff1a\u7b2c\u4e00\u79cd\u65b9\u6cd5\u6709\u6548\u7684\u8bdd\uff0c\u5207\u52ff\u518d\u70b9\u7b2c\u4e8c\u79cd\u65b9\u6cd5\uff01\n\u6ce8\uff1a\u5982\u679c\u65e0\u6548\uff0c\u8bf7\u8003\u8651\u6362\u4e00\u4e2a\u9ad8\u5fb7\u5b98\u65b9\u7248\u672c\u770b\u770b"

    .line 329
    .line 330
    move-object v8, v0

    .line 331
    invoke-direct/range {v8 .. v15}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 335
    .line 336
    .line 337
    goto/16 :goto_0

    .line 338
    .line 339
    :cond_c
    const/16 v2, 0x8

    .line 340
    .line 341
    if-ne v0, v2, :cond_f

    .line 342
    .line 343
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    invoke-static {}, La2/w0;->M()Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-nez v0, :cond_d

    .line 353
    .line 354
    new-instance v0, Lha/z6;

    .line 355
    .line 356
    iget-object v10, v9, Lda/g;->A:Lda/g;

    .line 357
    .line 358
    new-instance v15, Ls9/a;

    .line 359
    .line 360
    invoke-direct {v15, v1, v6}, Ls9/a;-><init>(IZ)V

    .line 361
    .line 362
    .line 363
    const-string v11, "\u8bf7\u5148\u8fde\u63a5adb \u6216\u8005 \u65e5\u4ea7\u8f66\u673a\u8bf7\u5b89\u88c5\u516c\u7b7e\u7248(\u98de\u601d\u5361\u5c14)"

    .line 364
    .line 365
    const-string v12, ""

    .line 366
    .line 367
    const-string v13, "\u597d\u7684"

    .line 368
    .line 369
    const-string v14, ""

    .line 370
    .line 371
    move-object v8, v0

    .line 372
    invoke-direct/range {v8 .. v15}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 376
    .line 377
    .line 378
    goto/16 :goto_0

    .line 379
    .line 380
    :cond_d
    :try_start_0
    iget-object v0, v9, Lda/g;->A:Lda/g;

    .line 381
    .line 382
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    const-string v1, "screen_off_timeout"

    .line 387
    .line 388
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    const/4 v1, -0x1

    .line 393
    if-ne v0, v1, :cond_e

    .line 394
    .line 395
    const-string v0, "\u60a8\u7684\u7cfb\u7edf\u6ca1\u6709\u95ee\u9898"

    .line 396
    .line 397
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .line 399
    .line 400
    goto/16 :goto_0

    .line 401
    .line 402
    :catch_0
    :cond_e
    new-instance v0, Lua/u4;

    .line 403
    .line 404
    invoke-direct {v0, v9, v3}, Lua/u4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissan;I)V

    .line 405
    .line 406
    .line 407
    new-instance v1, Lmc/c;

    .line 408
    .line 409
    invoke-direct {v1, v6, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 413
    .line 414
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    new-instance v1, Lha/m6;

    .line 427
    .line 428
    const/16 v2, 0xe

    .line 429
    .line 430
    invoke-direct {v1, v2}, Lha/m6;-><init>(I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 434
    .line 435
    .line 436
    goto/16 :goto_0

    .line 437
    .line 438
    :cond_f
    const/16 v2, 0x9

    .line 439
    .line 440
    if-ne v0, v2, :cond_10

    .line 441
    .line 442
    new-instance v0, Lha/z6;

    .line 443
    .line 444
    iget-object v10, v9, Lda/g;->A:Lda/g;

    .line 445
    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    const-string v2, "\u8fd9\u4e2a\u6709\u4f55\u7528\uff1f \u6bd4\u5982\uff1a\u5f53\u4f60\u8bef\u5220\u7cfb\u7edf\u6587\u4ef6\uff0c\u6216\u8005\u7981\u7528\u7cfb\u7edf\u684c\u9762\u7b49\u60c5\u51b5\u5bfc\u81f4\u5f00\u673a\u8fdb\u4e0d\u4e86\u7cfb\u7edf\u7684\u65f6\u5019\uff0c\u7528\u8bed\u97f3\u6253\u5f00"

    .line 449
    .line 450
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    iget-object v2, v9, Lda/g;->A:Lda/g;

    .line 454
    .line 455
    const v4, 0x7f13002f

    .line 456
    .line 457
    .line 458
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    const-string v2, "\uff0c\u8fd9\u79cd\u6551\u6025\u9884\u6848\u5c31\u663e\u5f97\u5c24\u4e3a\u91cd\u8981"

    .line 466
    .line 467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v11

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    .line 475
    .line 476
    const-string v2, "\u4ec5\u589e\u52a0\u4e86\u8bed\u97f3\uff1a\u6253\u5f00"

    .line 477
    .line 478
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    iget-object v2, v9, Lda/g;->A:Lda/g;

    .line 482
    .line 483
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    const-string v2, "\n\n\u73b0\u5728\u6709\u6620\u5c04\u529f\u80fd\u4e86\uff0c\u53ef\u4ee5\u6620\u5c04\u5c4f\u5e55\u67d0\u4e2a\u6309\u952e\u4e3a\u6253\u5f00"

    .line 491
    .line 492
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    iget-object v2, v9, Lda/g;->A:Lda/g;

    .line 496
    .line 497
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    const-string v2, "\uff0c\u8fd9\u6837\u5c31\u65e0\u9700\u5347\u7ea7\u8bed\u97f3"

    .line 505
    .line 506
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v12

    .line 513
    new-instance v15, Lua/w4;

    .line 514
    .line 515
    invoke-direct {v15, v9, v3}, Lua/w4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissan;I)V

    .line 516
    .line 517
    .line 518
    const-string v13, "\u5347\u7ea7\u8bed\u97f3"

    .line 519
    .line 520
    const-string v14, "\u53d6\u6d88"

    .line 521
    .line 522
    move-object v8, v0

    .line 523
    invoke-direct/range {v8 .. v15}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 527
    .line 528
    .line 529
    goto/16 :goto_0

    .line 530
    .line 531
    :cond_10
    const-string v2, "\u4e0d\u9002\u5408\u65e7\u7248\u7cfb\u7edf"

    .line 532
    .line 533
    const/16 v3, 0x12c

    .line 534
    .line 535
    if-ne v0, v1, :cond_12

    .line 536
    .line 537
    invoke-static {}, Lcom/yunpan/appmanage/ui/ActivityNissan;->y()I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-ge v0, v3, :cond_11

    .line 542
    .line 543
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 544
    .line 545
    .line 546
    goto :goto_0

    .line 547
    :cond_11
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;

    .line 548
    .line 549
    invoke-virtual {v9, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 550
    .line 551
    .line 552
    goto :goto_0

    .line 553
    :cond_12
    const/16 v1, 0xb

    .line 554
    .line 555
    if-ne v0, v1, :cond_14

    .line 556
    .line 557
    invoke-static {}, Lcom/yunpan/appmanage/ui/ActivityNissan;->y()I

    .line 558
    .line 559
    .line 560
    move-result v0

    .line 561
    if-ge v0, v3, :cond_13

    .line 562
    .line 563
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 564
    .line 565
    .line 566
    goto :goto_0

    .line 567
    :cond_13
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 568
    .line 569
    invoke-virtual {v9, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 570
    .line 571
    .line 572
    goto :goto_0

    .line 573
    :cond_14
    const/16 v1, 0xc

    .line 574
    .line 575
    if-ne v0, v1, :cond_16

    .line 576
    .line 577
    invoke-static {}, Lcom/yunpan/appmanage/ui/ActivityNissan;->y()I

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    if-ge v0, v3, :cond_15

    .line 582
    .line 583
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 584
    .line 585
    .line 586
    goto :goto_0

    .line 587
    :cond_15
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 588
    .line 589
    invoke-virtual {v9, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 590
    .line 591
    .line 592
    goto :goto_0

    .line 593
    :cond_16
    const/16 v1, 0xd

    .line 594
    .line 595
    if-ne v0, v1, :cond_17

    .line 596
    .line 597
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    .line 598
    .line 599
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 600
    .line 601
    .line 602
    const-string v1, "com.szlanyou.otaupdate"

    .line 603
    .line 604
    const-string v2, "com.szlanyou.otaupdate.service.AppStoreUpdateService"

    .line 605
    .line 606
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    .line 608
    .line 609
    iget-object v1, v9, Lda/g;->A:Lda/g;

    .line 610
    .line 611
    iget-object v2, v9, Lcom/yunpan/appmanage/ui/ActivityNissan;->G:Lcom/yunpan/appmanage/carsdk/f;

    .line 612
    .line 613
    invoke-virtual {v1, v0, v2, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 614
    .line 615
    .line 616
    move-result v0

    .line 617
    if-nez v0, :cond_18

    .line 618
    .line 619
    const-string v0, "\u7ed1\u5b9a\u670d\u52a1\u5931\u8d25"

    .line 620
    .line 621
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 622
    .line 623
    .line 624
    goto :goto_0

    .line 625
    :catch_1
    const-string v0, "\u4e0d\u9002\u5408\u60a8\u7684\u8bbe\u5907"

    .line 626
    .line 627
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 628
    .line 629
    .line 630
    goto :goto_0

    .line 631
    :cond_17
    const-string v0, "\u6b64\u529f\u80fd\u6682\u672a\u5f00\u653e"

    .line 632
    .line 633
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 634
    .line 635
    .line 636
    :cond_18
    :goto_0
    return-void
.end method
