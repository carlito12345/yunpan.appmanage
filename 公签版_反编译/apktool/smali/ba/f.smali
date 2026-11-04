.class public final synthetic Lba/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lx9/n5;


# direct methods
.method public synthetic constructor <init>(ILx9/n5;)V
    .locals 0

    .line 1
    iput p1, p0, Lba/f;->a:I

    iput-object p2, p0, Lba/f;->b:Lx9/n5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lx9/n5;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, Lba/f;->a:I

    iput-object p1, p0, Lba/f;->b:Lx9/n5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lx9/n5;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p4, p0, Lba/f;->a:I

    iput-object p1, p0, Lba/f;->b:Lx9/n5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 12

    .line 1
    iget v0, p0, Lba/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    const-wide/16 v2, 0x9

    .line 9
    .line 10
    iget-object v8, p0, Lba/f;->b:Lx9/n5;

    .line 11
    .line 12
    const-wide/16 v4, 0x9

    .line 13
    .line 14
    const-wide/16 v6, 0x9

    .line 15
    .line 16
    move-object v1, v8

    .line 17
    invoke-static/range {v1 .. v7}, Lqa/g;->f(Lx9/n5;JJJ)Lr9/a;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, v8, Lx9/n5;->c:Ljava/lang/String;

    .line 22
    .line 23
    const-string v3, "/"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v4, v8, Lx9/n5;->c:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v4, v3, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iput-object v2, v8, Lx9/n5;->c:Ljava/lang/String;

    .line 43
    .line 44
    :cond_0
    :try_start_0
    iget-object v2, v8, Lx9/n5;->c:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lr9/a;->c(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2, v0}, Lda/b;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    const-string v0, "\u8fde\u63a5\u5931\u8d25"

    .line 67
    .line 68
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    return-void

    .line 82
    :pswitch_0
    const-string v0, ""

    .line 83
    .line 84
    iget-object v1, p0, Lba/f;->b:Lx9/n5;

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    iput-boolean v2, v1, Lx9/n5;->u:Z

    .line 88
    .line 89
    iget v3, v1, Lx9/n5;->d:I

    .line 90
    .line 91
    if-nez v3, :cond_3

    .line 92
    .line 93
    const/16 v3, 0x1bd

    .line 94
    .line 95
    iput v3, v1, Lx9/n5;->d:I

    .line 96
    .line 97
    :cond_3
    invoke-static {}, Lcom/hierynomus/smbj/SmbConfig;->builder()Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    const/4 v4, 0x1

    .line 102
    invoke-virtual {v3, v4}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withMultiProtocolNegotiate(Z)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 107
    .line 108
    const-wide/16 v6, 0x14

    .line 109
    .line 110
    invoke-virtual {v3, v6, v7, v5}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v3, v6, v7, v5}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withSoTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3}, Lcom/hierynomus/smbj/SmbConfig$Builder;->build()Lcom/hierynomus/smbj/SmbConfig;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    new-instance v5, Lcom/hierynomus/smbj/SMBClient;

    .line 123
    .line 124
    invoke-direct {v5, v3}, Lcom/hierynomus/smbj/SMBClient;-><init>(Lcom/hierynomus/smbj/SmbConfig;)V

    .line 125
    .line 126
    .line 127
    const/4 v3, 0x0

    .line 128
    :try_start_1
    iget-object v6, v1, Lx9/n5;->c:Ljava/lang/String;

    .line 129
    .line 130
    iget v7, v1, Lx9/n5;->d:I

    .line 131
    .line 132
    invoke-virtual {v5, v6, v7}, Lcom/hierynomus/smbj/SMBClient;->connect(Ljava/lang/String;I)Lcom/hierynomus/smbj/connection/Connection;

    .line 133
    .line 134
    .line 135
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    :try_start_2
    iget-object v7, v1, Lx9/n5;->e:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    if-eqz v7, :cond_6

    .line 143
    .line 144
    :try_start_3
    invoke-static {}, Lcom/hierynomus/smbj/auth/AuthenticationContext;->guest()Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-virtual {v6, v7}, Lcom/hierynomus/smbj/connection/Connection;->authenticate(Lcom/hierynomus/smbj/auth/AuthenticationContext;)Lcom/hierynomus/smbj/session/Session;

    .line 149
    .line 150
    .line 151
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    goto :goto_3

    .line 153
    :catchall_0
    move-exception p1

    .line 154
    goto/16 :goto_b

    .line 155
    .line 156
    :catch_1
    :try_start_4
    new-instance v7, Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 157
    .line 158
    const-string v8, "guest"

    .line 159
    .line 160
    new-array v2, v2, [C

    .line 161
    .line 162
    invoke-direct {v7, v8, v2, v3}, Lcom/hierynomus/smbj/auth/AuthenticationContext;-><init>(Ljava/lang/String;[CLjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6, v7}, Lcom/hierynomus/smbj/connection/Connection;->authenticate(Lcom/hierynomus/smbj/auth/AuthenticationContext;)Lcom/hierynomus/smbj/session/Session;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    const-string v2, "\u8d26\u53f7\u8bf7\u8f93\u5165\uff1aguest"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 170
    .line 171
    if-eqz v3, :cond_4

    .line 172
    .line 173
    :try_start_5
    invoke-virtual {v3}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 174
    .line 175
    .line 176
    :catch_2
    :cond_4
    :try_start_6
    invoke-virtual {v6}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 177
    .line 178
    .line 179
    :catch_3
    :cond_5
    :goto_2
    :try_start_7
    invoke-virtual {v5}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 180
    .line 181
    .line 182
    goto :goto_8

    .line 183
    :catch_4
    nop

    .line 184
    goto :goto_8

    .line 185
    :catch_5
    move-exception v2

    .line 186
    goto :goto_6

    .line 187
    :cond_6
    :try_start_8
    new-instance v2, Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 188
    .line 189
    iget-object v7, v1, Lx9/n5;->e:Ljava/lang/String;

    .line 190
    .line 191
    iget-object v8, v1, Lx9/n5;->f:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    iget-object v9, v1, Lx9/n5;->v:Ljava/lang/String;

    .line 198
    .line 199
    invoke-direct {v2, v7, v8, v9}, Lcom/hierynomus/smbj/auth/AuthenticationContext;-><init>(Ljava/lang/String;[CLjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6, v2}, Lcom/hierynomus/smbj/connection/Connection;->authenticate(Lcom/hierynomus/smbj/auth/AuthenticationContext;)Lcom/hierynomus/smbj/session/Session;

    .line 203
    .line 204
    .line 205
    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 206
    :goto_3
    if-eqz v2, :cond_7

    .line 207
    .line 208
    :try_start_9
    invoke-virtual {v2}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :catch_6
    nop

    .line 213
    :cond_7
    :goto_4
    if-eqz v6, :cond_8

    .line 214
    .line 215
    :try_start_a
    invoke-virtual {v6}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 216
    .line 217
    .line 218
    :catch_7
    :cond_8
    :try_start_b
    invoke-virtual {v5}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :catch_8
    nop

    .line 223
    :goto_5
    move-object v2, v0

    .line 224
    goto :goto_8

    .line 225
    :catchall_1
    move-exception p1

    .line 226
    move-object v6, v3

    .line 227
    goto :goto_b

    .line 228
    :catch_9
    move-exception v2

    .line 229
    move-object v6, v3

    .line 230
    :goto_6
    :try_start_c
    invoke-static {v2}, Lqa/f;->i(Ljava/lang/Exception;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 234
    if-eqz v3, :cond_9

    .line 235
    .line 236
    :try_start_d
    invoke-virtual {v3}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 237
    .line 238
    .line 239
    goto :goto_7

    .line 240
    :catch_a
    nop

    .line 241
    :cond_9
    :goto_7
    if-eqz v6, :cond_5

    .line 242
    .line 243
    :try_start_e
    invoke-virtual {v6}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 244
    .line 245
    .line 246
    goto :goto_2

    .line 247
    :goto_8
    const-string v3, "\u534f\u8bae\u8bc6\u522b\u51fa\u9519"

    .line 248
    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-eqz v3, :cond_c

    .line 254
    .line 255
    iput-boolean v4, v1, Lx9/n5;->u:Z

    .line 256
    .line 257
    :try_start_f
    new-instance v2, Lce/t0;

    .line 258
    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Lx9/n5;->b()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v1, "/"

    .line 272
    .line 273
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-direct {v2, v1}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Lce/t0;->x()[Lce/t0;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 284
    .line 285
    .line 286
    goto :goto_9

    .line 287
    :catch_b
    move-exception v1

    .line 288
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 289
    .line 290
    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-static {v1, v2}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    const-string v1, "network name cannot be found"

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-eqz v1, :cond_a

    .line 307
    .line 308
    const-string v0, "\u627e\u4e0d\u5230\u6b64\u5171\u4eab\u540d"

    .line 309
    .line 310
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_b

    .line 315
    .line 316
    const-string v0, "\u8fde\u63a5\u5931\u8d25"

    .line 317
    .line 318
    :cond_b
    :goto_9
    move-object v2, v0

    .line 319
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-eqz v0, :cond_d

    .line 324
    .line 325
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 326
    .line 327
    .line 328
    goto :goto_a

    .line 329
    :cond_d
    invoke-static {v2, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 330
    .line 331
    .line 332
    :goto_a
    return-void

    .line 333
    :goto_b
    if-eqz v3, :cond_e

    .line 334
    .line 335
    :try_start_10
    invoke-virtual {v3}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 336
    .line 337
    .line 338
    goto :goto_c

    .line 339
    :catch_c
    nop

    .line 340
    :cond_e
    :goto_c
    if-eqz v6, :cond_f

    .line 341
    .line 342
    :try_start_11
    invoke-virtual {v6}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    .line 343
    .line 344
    .line 345
    :catch_d
    :cond_f
    :try_start_12
    invoke-virtual {v5}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    .line 346
    .line 347
    .line 348
    :catch_e
    throw p1

    .line 349
    :pswitch_1
    iget-object v0, p0, Lba/f;->b:Lx9/n5;

    .line 350
    .line 351
    const/4 v1, 0x0

    .line 352
    :try_start_13
    invoke-static {v0}, Lif/a;->S(Lx9/n5;)La9/f0;

    .line 353
    .line 354
    .line 355
    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 356
    :try_start_14
    invoke-virtual {v0}, La9/f0;->b()V

    .line 357
    .line 358
    .line 359
    throw v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 360
    :catch_f
    move-exception v1

    .line 361
    goto :goto_e

    .line 362
    :goto_d
    move-object v1, v0

    .line 363
    goto :goto_11

    .line 364
    :catchall_2
    move-exception p1

    .line 365
    goto :goto_11

    .line 366
    :catch_10
    move-exception v0

    .line 367
    move-object v11, v1

    .line 368
    move-object v1, v0

    .line 369
    move-object v0, v11

    .line 370
    :goto_e
    :try_start_15
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    if-eqz v1, :cond_10

    .line 375
    .line 376
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    if-eqz v2, :cond_11

    .line 381
    .line 382
    goto :goto_f

    .line 383
    :catchall_3
    move-exception p1

    .line 384
    goto :goto_d

    .line 385
    :cond_10
    :goto_f
    const-string v1, "\u79fb\u52a8\u5931\u8d25"

    .line 386
    .line 387
    :cond_11
    const-string v2, "already exists"

    .line 388
    .line 389
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    if-eqz v2, :cond_12

    .line 394
    .line 395
    const-string v1, "\u6b64\u76ee\u5f55\u4e0b\u5b58\u5728\u76f8\u540c\u6587\u4ef6\u540d"
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 396
    .line 397
    :cond_12
    if-eqz v0, :cond_13

    .line 398
    .line 399
    iget-boolean v2, v0, La9/f0;->h:Z

    .line 400
    .line 401
    if-eqz v2, :cond_13

    .line 402
    .line 403
    invoke-virtual {v0}, La9/f0;->c()V

    .line 404
    .line 405
    .line 406
    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-eqz v0, :cond_14

    .line 411
    .line 412
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 413
    .line 414
    .line 415
    goto :goto_10

    .line 416
    :cond_14
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 417
    .line 418
    .line 419
    :goto_10
    return-void

    .line 420
    :goto_11
    if-eqz v1, :cond_15

    .line 421
    .line 422
    iget-boolean v0, v1, La9/f0;->h:Z

    .line 423
    .line 424
    if-eqz v0, :cond_15

    .line 425
    .line 426
    invoke-virtual {v1}, La9/f0;->c()V

    .line 427
    .line 428
    .line 429
    :cond_15
    throw p1

    .line 430
    :pswitch_2
    iget-object v0, p0, Lba/f;->b:Lx9/n5;

    .line 431
    .line 432
    const/4 v1, 0x0

    .line 433
    :try_start_16
    invoke-static {v0}, Lif/a;->S(Lx9/n5;)La9/f0;

    .line 434
    .line 435
    .line 436
    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_12
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 437
    :try_start_17
    invoke-virtual {v0}, La9/f0;->b()V

    .line 438
    .line 439
    .line 440
    throw v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 441
    :catch_11
    move-exception v1

    .line 442
    goto :goto_13

    .line 443
    :goto_12
    move-object v1, v0

    .line 444
    goto :goto_16

    .line 445
    :catchall_4
    move-exception p1

    .line 446
    goto :goto_16

    .line 447
    :catch_12
    move-exception v0

    .line 448
    move-object v11, v1

    .line 449
    move-object v1, v0

    .line 450
    move-object v0, v11

    .line 451
    :goto_13
    :try_start_18
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    if-eqz v1, :cond_16

    .line 456
    .line 457
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    if-eqz v2, :cond_17

    .line 462
    .line 463
    goto :goto_14

    .line 464
    :catchall_5
    move-exception p1

    .line 465
    goto :goto_12

    .line 466
    :cond_16
    :goto_14
    const-string v1, "\u5220\u9664\u5931\u8d25"
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 467
    .line 468
    :cond_17
    if-eqz v0, :cond_18

    .line 469
    .line 470
    iget-boolean v2, v0, La9/f0;->h:Z

    .line 471
    .line 472
    if-eqz v2, :cond_18

    .line 473
    .line 474
    invoke-virtual {v0}, La9/f0;->c()V

    .line 475
    .line 476
    .line 477
    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    if-eqz v0, :cond_19

    .line 482
    .line 483
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 484
    .line 485
    .line 486
    goto :goto_15

    .line 487
    :cond_19
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 488
    .line 489
    .line 490
    :goto_15
    return-void

    .line 491
    :goto_16
    if-eqz v1, :cond_1a

    .line 492
    .line 493
    iget-boolean v0, v1, La9/f0;->h:Z

    .line 494
    .line 495
    if-eqz v0, :cond_1a

    .line 496
    .line 497
    invoke-virtual {v1}, La9/f0;->c()V

    .line 498
    .line 499
    .line 500
    :cond_1a
    throw p1

    .line 501
    :pswitch_3
    iget-object v0, p0, Lba/f;->b:Lx9/n5;

    .line 502
    .line 503
    const/4 v1, 0x0

    .line 504
    :try_start_19
    invoke-static {v0}, Lif/a;->S(Lx9/n5;)La9/f0;

    .line 505
    .line 506
    .line 507
    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_14
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 508
    :try_start_1a
    invoke-virtual {v0}, La9/f0;->b()V

    .line 509
    .line 510
    .line 511
    throw v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_13
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 512
    :catch_13
    move-exception v1

    .line 513
    goto :goto_18

    .line 514
    :goto_17
    move-object v1, v0

    .line 515
    goto :goto_1b

    .line 516
    :catchall_6
    move-exception p1

    .line 517
    goto :goto_1b

    .line 518
    :catch_14
    move-exception v0

    .line 519
    move-object v11, v1

    .line 520
    move-object v1, v0

    .line 521
    move-object v0, v11

    .line 522
    :goto_18
    :try_start_1b
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    if-eqz v1, :cond_1b

    .line 527
    .line 528
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 529
    .line 530
    .line 531
    move-result v2

    .line 532
    if-eqz v2, :cond_1c

    .line 533
    .line 534
    goto :goto_19

    .line 535
    :catchall_7
    move-exception p1

    .line 536
    goto :goto_17

    .line 537
    :cond_1b
    :goto_19
    const-string v1, "\u8fde\u63a5\u5931\u8d25"
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 538
    .line 539
    :cond_1c
    if-eqz v0, :cond_1d

    .line 540
    .line 541
    iget-boolean v2, v0, La9/f0;->h:Z

    .line 542
    .line 543
    if-eqz v2, :cond_1d

    .line 544
    .line 545
    invoke-virtual {v0}, La9/f0;->c()V

    .line 546
    .line 547
    .line 548
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    if-eqz v0, :cond_1e

    .line 553
    .line 554
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 555
    .line 556
    .line 557
    goto :goto_1a

    .line 558
    :cond_1e
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 559
    .line 560
    .line 561
    :goto_1a
    return-void

    .line 562
    :goto_1b
    if-eqz v1, :cond_1f

    .line 563
    .line 564
    iget-boolean v0, v1, La9/f0;->h:Z

    .line 565
    .line 566
    if-eqz v0, :cond_1f

    .line 567
    .line 568
    invoke-virtual {v1}, La9/f0;->c()V

    .line 569
    .line 570
    .line 571
    :cond_1f
    throw p1

    .line 572
    :pswitch_4
    iget-object v0, p0, Lba/f;->b:Lx9/n5;

    .line 573
    .line 574
    const/4 v1, 0x0

    .line 575
    :try_start_1c
    invoke-static {v0}, Lif/a;->S(Lx9/n5;)La9/f0;

    .line 576
    .line 577
    .line 578
    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_16
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 579
    :try_start_1d
    invoke-virtual {v0}, La9/f0;->b()V

    .line 580
    .line 581
    .line 582
    throw v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_15
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .line 583
    :catch_15
    move-exception v1

    .line 584
    goto :goto_1d

    .line 585
    :goto_1c
    move-object v1, v0

    .line 586
    goto :goto_20

    .line 587
    :catchall_8
    move-exception p1

    .line 588
    goto :goto_20

    .line 589
    :catch_16
    move-exception v0

    .line 590
    move-object v11, v1

    .line 591
    move-object v1, v0

    .line 592
    move-object v0, v11

    .line 593
    :goto_1d
    :try_start_1e
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    if-eqz v1, :cond_20

    .line 598
    .line 599
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 600
    .line 601
    .line 602
    move-result v2

    .line 603
    if-eqz v2, :cond_21

    .line 604
    .line 605
    goto :goto_1e

    .line 606
    :catchall_9
    move-exception p1

    .line 607
    goto :goto_1c

    .line 608
    :cond_20
    :goto_1e
    const-string v1, "\u5220\u9664\u5931\u8d25"
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    .line 609
    .line 610
    :cond_21
    if-eqz v0, :cond_22

    .line 611
    .line 612
    iget-boolean v2, v0, La9/f0;->h:Z

    .line 613
    .line 614
    if-eqz v2, :cond_22

    .line 615
    .line 616
    invoke-virtual {v0}, La9/f0;->c()V

    .line 617
    .line 618
    .line 619
    :cond_22
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    if-eqz v0, :cond_23

    .line 624
    .line 625
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 626
    .line 627
    .line 628
    goto :goto_1f

    .line 629
    :cond_23
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 630
    .line 631
    .line 632
    :goto_1f
    return-void

    .line 633
    :goto_20
    if-eqz v1, :cond_24

    .line 634
    .line 635
    iget-boolean v0, v1, La9/f0;->h:Z

    .line 636
    .line 637
    if-eqz v0, :cond_24

    .line 638
    .line 639
    invoke-virtual {v1}, La9/f0;->c()V

    .line 640
    .line 641
    .line 642
    :cond_24
    throw p1

    .line 643
    :pswitch_5
    iget-object v0, p0, Lba/f;->b:Lx9/n5;

    .line 644
    .line 645
    const/4 v1, 0x0

    .line 646
    :try_start_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 647
    .line 648
    .line 649
    invoke-static {v0}, Lif/a;->S(Lx9/n5;)La9/f0;

    .line 650
    .line 651
    .line 652
    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_18
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    .line 653
    :try_start_20
    invoke-virtual {v0}, La9/f0;->b()V

    .line 654
    .line 655
    .line 656
    throw v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_17
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    .line 657
    :catch_17
    move-exception v1

    .line 658
    goto :goto_22

    .line 659
    :goto_21
    move-object v1, v0

    .line 660
    goto :goto_24

    .line 661
    :catchall_a
    move-exception p1

    .line 662
    goto :goto_24

    .line 663
    :catch_18
    move-exception v0

    .line 664
    move-object v11, v1

    .line 665
    move-object v1, v0

    .line 666
    move-object v0, v11

    .line 667
    :goto_22
    :try_start_21
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    if-eqz v1, :cond_25

    .line 672
    .line 673
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 674
    .line 675
    .line 676
    move-result v2

    .line 677
    if-eqz v2, :cond_26

    .line 678
    .line 679
    goto :goto_23

    .line 680
    :catchall_b
    move-exception p1

    .line 681
    goto :goto_21

    .line 682
    :cond_25
    :goto_23
    const-string v1, "\u8fde\u63a5\u5931\u8d25"

    .line 683
    .line 684
    :cond_26
    new-instance v2, Ljava/lang/Exception;

    .line 685
    .line 686
    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {p1, v2}, Lmc/b;->d(Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    .line 690
    .line 691
    .line 692
    if-eqz v0, :cond_27

    .line 693
    .line 694
    iget-boolean p1, v0, La9/f0;->h:Z

    .line 695
    .line 696
    if-eqz p1, :cond_27

    .line 697
    .line 698
    invoke-virtual {v0}, La9/f0;->c()V

    .line 699
    .line 700
    .line 701
    :cond_27
    return-void

    .line 702
    :goto_24
    if-eqz v1, :cond_28

    .line 703
    .line 704
    iget-boolean v0, v1, La9/f0;->h:Z

    .line 705
    .line 706
    if-eqz v0, :cond_28

    .line 707
    .line 708
    invoke-virtual {v1}, La9/f0;->c()V

    .line 709
    .line 710
    .line 711
    :cond_28
    throw p1

    .line 712
    :pswitch_6
    iget-object v0, p0, Lba/f;->b:Lx9/n5;

    .line 713
    .line 714
    :try_start_22
    iget-object v1, v0, Lx9/n5;->A:Ldh/j;

    .line 715
    .line 716
    if-eqz v1, :cond_29

    .line 717
    .line 718
    invoke-virtual {v1}, Lch/d;->f()Z

    .line 719
    .line 720
    .line 721
    move-result v1

    .line 722
    if-eqz v1, :cond_29

    .line 723
    .line 724
    iget-object v1, v0, Lx9/n5;->A:Ldh/j;

    .line 725
    .line 726
    const-string v2, "/"

    .line 727
    .line 728
    invoke-virtual {v1, v2}, Ldh/e;->p(Ljava/lang/String;)Z

    .line 729
    .line 730
    .line 731
    iget-object v1, v0, Lx9/n5;->A:Ldh/j;

    .line 732
    .line 733
    const/4 v2, 0x0

    .line 734
    invoke-virtual {v1, v2}, Ldh/e;->s(Ljava/lang/String;)[Ldh/g;

    .line 735
    .line 736
    .line 737
    move-result-object v1

    .line 738
    if-eqz v1, :cond_29

    .line 739
    .line 740
    array-length v1, v1

    .line 741
    if-lez v1, :cond_29

    .line 742
    .line 743
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_19

    .line 744
    .line 745
    .line 746
    goto :goto_25

    .line 747
    :catch_19
    nop

    .line 748
    :cond_29
    invoke-static {v0}, Lcom/bumptech/glide/d;->j(Lx9/n5;)Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v1

    .line 752
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 753
    .line 754
    .line 755
    move-result v2

    .line 756
    if-eqz v2, :cond_2a

    .line 757
    .line 758
    iget-object v0, v0, Lx9/n5;->A:Ldh/j;

    .line 759
    .line 760
    if-eqz v0, :cond_2a

    .line 761
    .line 762
    invoke-virtual {v0}, Lch/d;->f()Z

    .line 763
    .line 764
    .line 765
    move-result v0

    .line 766
    if-eqz v0, :cond_2a

    .line 767
    .line 768
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 769
    .line 770
    .line 771
    goto :goto_25

    .line 772
    :cond_2a
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 773
    .line 774
    .line 775
    :goto_25
    return-void

    .line 776
    :pswitch_7
    iget-object v0, p0, Lba/f;->b:Lx9/n5;

    .line 777
    .line 778
    invoke-static {v0}, Lcom/bumptech/glide/d;->j(Lx9/n5;)Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 783
    .line 784
    .line 785
    move-result v2

    .line 786
    if-eqz v2, :cond_2b

    .line 787
    .line 788
    iget-object v0, v0, Lx9/n5;->A:Ldh/j;

    .line 789
    .line 790
    if-eqz v0, :cond_2b

    .line 791
    .line 792
    invoke-virtual {v0}, Lch/d;->f()Z

    .line 793
    .line 794
    .line 795
    move-result v0

    .line 796
    if-eqz v0, :cond_2b

    .line 797
    .line 798
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 799
    .line 800
    .line 801
    goto :goto_26

    .line 802
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 803
    .line 804
    .line 805
    move-result v0

    .line 806
    if-eqz v0, :cond_2c

    .line 807
    .line 808
    const-string v1, "\u5931\u8d25"

    .line 809
    .line 810
    :cond_2c
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 811
    .line 812
    .line 813
    :goto_26
    return-void

    .line 814
    :pswitch_8
    iget-object v0, p0, Lba/f;->b:Lx9/n5;

    .line 815
    .line 816
    invoke-static {v0}, Lcom/bumptech/glide/c;->m(Lx9/n5;)Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 821
    .line 822
    .line 823
    move-result v2

    .line 824
    if-eqz v2, :cond_2d

    .line 825
    .line 826
    iget-object v0, v0, Lx9/n5;->x:Ldh/e;

    .line 827
    .line 828
    if-eqz v0, :cond_2d

    .line 829
    .line 830
    invoke-virtual {v0}, Lch/d;->f()Z

    .line 831
    .line 832
    .line 833
    move-result v0

    .line 834
    if-eqz v0, :cond_2d

    .line 835
    .line 836
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 837
    .line 838
    .line 839
    goto :goto_27

    .line 840
    :cond_2d
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 841
    .line 842
    .line 843
    :goto_27
    return-void

    .line 844
    :pswitch_9
    iget-object v0, p0, Lba/f;->b:Lx9/n5;

    .line 845
    .line 846
    :try_start_23
    iget-object v1, v0, Lx9/n5;->x:Ldh/e;

    .line 847
    .line 848
    if-eqz v1, :cond_2e

    .line 849
    .line 850
    invoke-virtual {v1}, Lch/d;->f()Z

    .line 851
    .line 852
    .line 853
    move-result v1

    .line 854
    if-eqz v1, :cond_2e

    .line 855
    .line 856
    iget-object v1, v0, Lx9/n5;->x:Ldh/e;

    .line 857
    .line 858
    const-string v2, "/"

    .line 859
    .line 860
    invoke-virtual {v1, v2}, Ldh/e;->p(Ljava/lang/String;)Z

    .line 861
    .line 862
    .line 863
    iget-object v1, v0, Lx9/n5;->x:Ldh/e;

    .line 864
    .line 865
    const/4 v2, 0x0

    .line 866
    invoke-virtual {v1, v2}, Ldh/e;->s(Ljava/lang/String;)[Ldh/g;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    if-eqz v1, :cond_2e

    .line 871
    .line 872
    array-length v1, v1

    .line 873
    if-lez v1, :cond_2e

    .line 874
    .line 875
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1a

    .line 876
    .line 877
    .line 878
    goto :goto_28

    .line 879
    :catch_1a
    nop

    .line 880
    :cond_2e
    invoke-static {v0}, Lcom/bumptech/glide/c;->m(Lx9/n5;)Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v1

    .line 884
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 885
    .line 886
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 887
    .line 888
    .line 889
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 890
    .line 891
    .line 892
    move-result v2

    .line 893
    if-eqz v2, :cond_2f

    .line 894
    .line 895
    iget-object v0, v0, Lx9/n5;->x:Ldh/e;

    .line 896
    .line 897
    if-eqz v0, :cond_2f

    .line 898
    .line 899
    invoke-virtual {v0}, Lch/d;->f()Z

    .line 900
    .line 901
    .line 902
    move-result v0

    .line 903
    if-eqz v0, :cond_2f

    .line 904
    .line 905
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 906
    .line 907
    .line 908
    goto :goto_28

    .line 909
    :cond_2f
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 910
    .line 911
    .line 912
    :goto_28
    return-void

    .line 913
    :pswitch_a
    iget-object v0, p0, Lba/f;->b:Lx9/n5;

    .line 914
    .line 915
    :try_start_24
    invoke-static {v0}, Ls1/g;->K(Lx9/n5;)V

    .line 916
    .line 917
    .line 918
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1b

    .line 919
    .line 920
    .line 921
    goto :goto_29

    .line 922
    :catch_1b
    move-exception v0

    .line 923
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 924
    .line 925
    .line 926
    :goto_29
    return-void

    .line 927
    :pswitch_b
    iget-object v0, p0, Lba/f;->b:Lx9/n5;

    .line 928
    .line 929
    :try_start_25
    invoke-static {v0}, Ls1/g;->j0(Lx9/n5;)V

    .line 930
    .line 931
    .line 932
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1c

    .line 933
    .line 934
    .line 935
    goto :goto_2a

    .line 936
    :catch_1c
    const-string v1, ""

    .line 937
    .line 938
    iput-object v1, v0, Lx9/n5;->k:Ljava/lang/String;

    .line 939
    .line 940
    :try_start_26
    invoke-static {v0}, Ls1/g;->K(Lx9/n5;)V

    .line 941
    .line 942
    .line 943
    invoke-virtual {p1, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 944
    .line 945
    .line 946
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_1d

    .line 947
    .line 948
    .line 949
    goto :goto_2a

    .line 950
    :catch_1d
    move-exception v0

    .line 951
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 952
    .line 953
    .line 954
    :goto_2a
    return-void

    .line 955
    :pswitch_c
    iget-object v0, p0, Lba/f;->b:Lx9/n5;

    .line 956
    .line 957
    invoke-static {v0}, Lqf/c;->K(Lx9/n5;)Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v1

    .line 961
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 962
    .line 963
    .line 964
    move-result v2

    .line 965
    if-eqz v2, :cond_30

    .line 966
    .line 967
    iget-object v0, v0, Lx9/n5;->k:Ljava/lang/String;

    .line 968
    .line 969
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 970
    .line 971
    .line 972
    move-result v0

    .line 973
    if-nez v0, :cond_30

    .line 974
    .line 975
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 976
    .line 977
    .line 978
    goto :goto_2b

    .line 979
    :cond_30
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 980
    .line 981
    .line 982
    :goto_2b
    return-void

    .line 983
    :pswitch_d
    iget-object v0, p0, Lba/f;->b:Lx9/n5;

    .line 984
    .line 985
    invoke-static {v0}, Lqf/c;->j0(Lx9/n5;)Z

    .line 986
    .line 987
    .line 988
    move-result v1

    .line 989
    if-eqz v1, :cond_31

    .line 990
    .line 991
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 992
    .line 993
    .line 994
    goto :goto_2c

    .line 995
    :cond_31
    const-string v1, ""

    .line 996
    .line 997
    iput-object v1, v0, Lx9/n5;->k:Ljava/lang/String;

    .line 998
    .line 999
    invoke-static {v0}, Lqf/c;->K(Lx9/n5;)Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v1

    .line 1003
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 1004
    .line 1005
    .line 1006
    move-result v2

    .line 1007
    if-eqz v2, :cond_32

    .line 1008
    .line 1009
    iget-object v0, v0, Lx9/n5;->k:Ljava/lang/String;

    .line 1010
    .line 1011
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1012
    .line 1013
    .line 1014
    move-result v0

    .line 1015
    if-nez v0, :cond_32

    .line 1016
    .line 1017
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1018
    .line 1019
    .line 1020
    goto :goto_2c

    .line 1021
    :cond_32
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1022
    .line 1023
    .line 1024
    :goto_2c
    return-void

    .line 1025
    :pswitch_e
    iget-object v0, p0, Lba/f;->b:Lx9/n5;

    .line 1026
    .line 1027
    invoke-static {v0}, Lnh/b;->X(Lx9/n5;)Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v1

    .line 1031
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 1032
    .line 1033
    .line 1034
    move-result v2

    .line 1035
    if-eqz v2, :cond_33

    .line 1036
    .line 1037
    iget-object v0, v0, Lx9/n5;->i:Ljava/lang/String;

    .line 1038
    .line 1039
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1040
    .line 1041
    .line 1042
    move-result v0

    .line 1043
    if-nez v0, :cond_33

    .line 1044
    .line 1045
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1046
    .line 1047
    .line 1048
    goto :goto_2d

    .line 1049
    :cond_33
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1050
    .line 1051
    .line 1052
    :goto_2d
    return-void

    .line 1053
    :pswitch_f
    const-string v0, "\'"

    .line 1054
    .line 1055
    iget-object v1, p0, Lba/f;->b:Lx9/n5;

    .line 1056
    .line 1057
    iget-object v2, v1, Lx9/n5;->c:Ljava/lang/String;

    .line 1058
    .line 1059
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1060
    .line 1061
    .line 1062
    move-result v2

    .line 1063
    if-eqz v2, :cond_34

    .line 1064
    .line 1065
    const-string v2, "https://pc.woozooo.com"

    .line 1066
    .line 1067
    iput-object v2, v1, Lx9/n5;->c:Ljava/lang/String;

    .line 1068
    .line 1069
    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1072
    .line 1073
    .line 1074
    iget-object v3, v1, Lx9/n5;->c:Ljava/lang/String;

    .line 1075
    .line 1076
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    .line 1078
    .line 1079
    const-string v3, "/mydisk.php?item=files&action=index&u="

    .line 1080
    .line 1081
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    .line 1083
    .line 1084
    iget-object v3, v1, Lx9/n5;->h:Ljava/lang/String;

    .line 1085
    .line 1086
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v2

    .line 1093
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1094
    .line 1095
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1096
    .line 1097
    .line 1098
    iget-object v4, v1, Lx9/n5;->c:Ljava/lang/String;

    .line 1099
    .line 1100
    const-string v5, "/mydisk.php"

    .line 1101
    .line 1102
    invoke-static {v4, v5, v3}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v3

    .line 1106
    iget-object v4, v1, Lx9/n5;->i:Ljava/lang/String;

    .line 1107
    .line 1108
    const/4 v5, 0x0

    .line 1109
    :goto_2e
    const/4 v6, 0x1

    .line 1110
    add-int/2addr v5, v6

    .line 1111
    const-string v7, ""

    .line 1112
    .line 1113
    if-ne v5, v6, :cond_35

    .line 1114
    .line 1115
    sget-object v6, Lcom/yunpan/appmanage/util/f0;->a:Lo9/a;

    .line 1116
    .line 1117
    invoke-static {v5}, Lcom/yunpan/appmanage/util/f0;->a(I)Ljava/lang/String;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v8

    .line 1121
    invoke-static {v8}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v8

    .line 1125
    iput-object v8, v6, Lo9/a;->b:Lokhttp3/HttpUrl;

    .line 1126
    .line 1127
    goto :goto_2f

    .line 1128
    :cond_35
    const/4 v6, 0x2

    .line 1129
    if-ne v5, v6, :cond_38

    .line 1130
    .line 1131
    sget-object v6, Lcom/yunpan/appmanage/util/f0;->a:Lo9/a;

    .line 1132
    .line 1133
    const/4 v8, 0x0

    .line 1134
    iput-object v8, v6, Lo9/a;->b:Lokhttp3/HttpUrl;

    .line 1135
    .line 1136
    :goto_2f
    :try_start_27
    new-instance v6, Ll9/a;

    .line 1137
    .line 1138
    invoke-direct {v6, v2}, Ll9/a;-><init>(Ljava/lang/String;)V

    .line 1139
    .line 1140
    .line 1141
    const-string v8, "User-Agent"

    .line 1142
    .line 1143
    const-string v9, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76"

    .line 1144
    .line 1145
    iget-object v10, v6, Lm9/e;->i:Lk9/a;

    .line 1146
    .line 1147
    invoke-virtual {v10, v8, v9}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    .line 1149
    .line 1150
    const-string v8, "Referer"

    .line 1151
    .line 1152
    iget-object v9, v6, Lm9/e;->i:Lk9/a;

    .line 1153
    .line 1154
    invoke-virtual {v9, v8, v3}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    .line 1156
    .line 1157
    const-string v8, "Cookie"

    .line 1158
    .line 1159
    iget-object v9, v6, Lm9/e;->i:Lk9/a;

    .line 1160
    .line 1161
    invoke-virtual {v9, v8, v4}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v6}, Lm9/e;->a()Lokhttp3/Response;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v6

    .line 1168
    invoke-virtual {v6}, Lokhttp3/Response;->isSuccessful()Z

    .line 1169
    .line 1170
    .line 1171
    move-result v8

    .line 1172
    if-nez v8, :cond_36

    .line 1173
    .line 1174
    goto :goto_2e

    .line 1175
    :cond_36
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v6

    .line 1179
    if-nez v6, :cond_37

    .line 1180
    .line 1181
    goto :goto_2e

    .line 1182
    :cond_37
    invoke-virtual {v6}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v2
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1e

    .line 1186
    goto :goto_30

    .line 1187
    :catch_1e
    nop

    .line 1188
    goto :goto_2e

    .line 1189
    :cond_38
    move-object v2, v7

    .line 1190
    :goto_30
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1191
    .line 1192
    .line 1193
    move-result v3

    .line 1194
    if-eqz v3, :cond_39

    .line 1195
    .line 1196
    goto :goto_31

    .line 1197
    :cond_39
    :try_start_28
    const-string v3, "\'/doupload.php?uid="

    .line 1198
    .line 1199
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1200
    .line 1201
    .line 1202
    move-result v3

    .line 1203
    const/4 v4, -0x1

    .line 1204
    if-eq v3, v4, :cond_3b

    .line 1205
    .line 1206
    add-int/lit8 v3, v3, 0x13

    .line 1207
    .line 1208
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 1209
    .line 1210
    .line 1211
    move-result v5

    .line 1212
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v3

    .line 1216
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1217
    .line 1218
    .line 1219
    move-result v5

    .line 1220
    if-eqz v5, :cond_3a

    .line 1221
    .line 1222
    goto :goto_31

    .line 1223
    :cond_3a
    iput-object v3, v1, Lx9/n5;->h:Ljava/lang/String;

    .line 1224
    .line 1225
    const-string v3, "\'vei\':\'"

    .line 1226
    .line 1227
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1228
    .line 1229
    .line 1230
    move-result v3

    .line 1231
    if-eq v3, v4, :cond_3b

    .line 1232
    .line 1233
    add-int/lit8 v3, v3, 0x7

    .line 1234
    .line 1235
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 1236
    .line 1237
    .line 1238
    move-result v0

    .line 1239
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v0

    .line 1243
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1244
    .line 1245
    .line 1246
    move-result v2

    .line 1247
    if-nez v2, :cond_3b

    .line 1248
    .line 1249
    iput-object v0, v1, Lx9/n5;->j:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_1f

    .line 1250
    .line 1251
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1252
    .line 1253
    .line 1254
    goto :goto_32

    .line 1255
    :catch_1f
    nop

    .line 1256
    :cond_3b
    :goto_31
    iput-object v7, v1, Lx9/n5;->i:Ljava/lang/String;

    .line 1257
    .line 1258
    iput-object v7, v1, Lx9/n5;->j:Ljava/lang/String;

    .line 1259
    .line 1260
    invoke-static {v1}, Lnh/b;->X(Lx9/n5;)Ljava/lang/String;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v0

    .line 1264
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1265
    .line 1266
    .line 1267
    move-result v2

    .line 1268
    if-eqz v2, :cond_3c

    .line 1269
    .line 1270
    iget-object v1, v1, Lx9/n5;->i:Ljava/lang/String;

    .line 1271
    .line 1272
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 1273
    .line 1274
    .line 1275
    move-result v1

    .line 1276
    if-nez v1, :cond_3c

    .line 1277
    .line 1278
    invoke-virtual {p1, v7}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1279
    .line 1280
    .line 1281
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1282
    .line 1283
    .line 1284
    goto :goto_32

    .line 1285
    :cond_3c
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1286
    .line 1287
    .line 1288
    :goto_32
    return-void

    .line 1289
    :pswitch_10
    const-string v0, "access_token"

    .line 1290
    .line 1291
    const-string v1, "refresh_token"

    .line 1292
    .line 1293
    iget-object v2, p0, Lba/f;->b:Lx9/n5;

    .line 1294
    .line 1295
    invoke-static {v2}, Ls1/g;->k0(Lx9/n5;)Z

    .line 1296
    .line 1297
    .line 1298
    move-result v3

    .line 1299
    if-eqz v3, :cond_3d

    .line 1300
    .line 1301
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1302
    .line 1303
    .line 1304
    goto :goto_33

    .line 1305
    :cond_3d
    :try_start_29
    new-instance v3, Lz7/s;

    .line 1306
    .line 1307
    invoke-direct {v3}, Lz7/s;-><init>()V

    .line 1308
    .line 1309
    .line 1310
    const-string v4, "client_id"

    .line 1311
    .line 1312
    const-string v5, "aMe-8VSlkrbQXpUR"

    .line 1313
    .line 1314
    invoke-virtual {v3, v4, v5}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    .line 1316
    .line 1317
    const-string v4, "grant_type"

    .line 1318
    .line 1319
    invoke-virtual {v3, v4, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    .line 1321
    .line 1322
    iget-object v4, v2, Lx9/n5;->s:Ljava/lang/String;

    .line 1323
    .line 1324
    invoke-virtual {v3, v1, v4}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    .line 1326
    .line 1327
    const-string v4, "https://account.guangyapan.com/v1/auth/token"

    .line 1328
    .line 1329
    invoke-virtual {v3}, Lz7/p;->toString()Ljava/lang/String;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v3

    .line 1333
    invoke-static {v4, v3}, Ls1/g;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v3

    .line 1337
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1338
    .line 1339
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1343
    .line 1344
    .line 1345
    move-result v4

    .line 1346
    if-eqz v4, :cond_3e

    .line 1347
    .line 1348
    invoke-static {v3}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v3

    .line 1352
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v3

    .line 1356
    invoke-virtual {v3, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v0

    .line 1360
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v0

    .line 1364
    iput-object v0, v2, Lx9/n5;->r:Ljava/lang/String;

    .line 1365
    .line 1366
    invoke-virtual {v3, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v0

    .line 1370
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v0

    .line 1374
    iput-object v0, v2, Lx9/n5;->s:Ljava/lang/String;

    .line 1375
    .line 1376
    const-string v0, "sub"

    .line 1377
    .line 1378
    invoke-virtual {v3, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v0

    .line 1382
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v0

    .line 1386
    iput-object v0, v2, Lx9/n5;->t:Ljava/lang/String;

    .line 1387
    .line 1388
    const-string v0, ""

    .line 1389
    .line 1390
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1391
    .line 1392
    .line 1393
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1394
    .line 1395
    .line 1396
    goto :goto_33

    .line 1397
    :cond_3e
    new-instance v0, Ljava/lang/Exception;

    .line 1398
    .line 1399
    const-string v1, "\u8bf7\u6c42\u5931\u8d25"

    .line 1400
    .line 1401
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1402
    .line 1403
    .line 1404
    throw v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_20

    .line 1405
    :catch_20
    const-string v0, "\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    .line 1406
    .line 1407
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1408
    .line 1409
    .line 1410
    :goto_33
    return-void

    .line 1411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
