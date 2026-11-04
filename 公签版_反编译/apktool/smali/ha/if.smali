.class public final synthetic Lha/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lv8/a;


# direct methods
.method public synthetic constructor <init>(Lv8/a;I)V
    .locals 0

    .line 1
    const/4 p2, 0x5

    iput p2, p0, Lha/if;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/if;->b:Lv8/a;

    return-void
.end method

.method public synthetic constructor <init>(Lv8/a;IB)V
    .locals 0

    .line 2
    iput p2, p0, Lha/if;->a:I

    iput-object p1, p0, Lha/if;->b:Lv8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    iget-object v0, v1, Lha/if;->b:Lv8/a;

    .line 5
    .line 6
    iget v4, v1, Lha/if;->a:I

    .line 7
    .line 8
    packed-switch v4, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    invoke-virtual {v0}, Lv8/a;->g()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_1
    invoke-virtual {v0}, Lv8/a;->u()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_2
    invoke-virtual {v0}, Lv8/a;->b()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_3
    invoke-virtual {v0}, Lv8/a;->t()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_4
    const-string v4, "addSuppressed"

    .line 32
    .line 33
    const-class v5, Ljava/lang/Throwable;

    .line 34
    .line 35
    const-string v6, "/key/"

    .line 36
    .line 37
    const-string v7, "/."

    .line 38
    .line 39
    :try_start_0
    new-instance v8, Lha/jd;

    .line 40
    .line 41
    const/16 v9, 0x8

    .line 42
    .line 43
    invoke-direct {v8, v9}, Lha/jd;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-static {v8}, Ly9/c;->a(Ly9/a;)Ly9/c;

    .line 47
    .line 48
    .line 49
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    const/4 v8, 0x0

    .line 52
    :goto_0
    if-nez v8, :cond_0

    .line 53
    .line 54
    const-string v0, "\u751f\u6210\u5bc6\u94a5\u5931\u8d25"

    .line 55
    .line 56
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_7

    .line 60
    .line 61
    :cond_0
    :try_start_1
    new-instance v9, Ljava/net/Socket;

    .line 62
    .line 63
    const-string v10, ""

    .line 64
    .line 65
    sget-object v11, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 66
    .line 67
    iget v11, v11, Lcom/yunpan/appmanage/util/w;->k:I

    .line 68
    .line 69
    invoke-direct {v9, v10, v11}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .line 71
    .line 72
    :try_start_2
    invoke-static {v9, v8}, Ly9/b;->A(Ljava/net/Socket;Ly9/c;)Ly9/b;

    .line 73
    .line 74
    .line 75
    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    :try_start_3
    invoke-virtual {v10}, Ly9/b;->r()V

    .line 77
    .line 78
    .line 79
    new-instance v11, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    sget-object v12, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 85
    .line 86
    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    new-instance v12, Ljava/io/File;

    .line 105
    .line 106
    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    if-nez v12, :cond_1

    .line 114
    .line 115
    new-instance v12, Ljava/io/File;

    .line 116
    .line 117
    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    move-object v2, v0

    .line 126
    goto/16 :goto_2

    .line 127
    .line 128
    :cond_1
    :goto_1
    new-instance v12, Ljava/io/File;

    .line 129
    .line 130
    new-instance v13, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v14, "privateKey"

    .line 139
    .line 140
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    new-instance v13, Ljava/io/File;

    .line 151
    .line 152
    new-instance v14, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v11, "publicKey"

    .line 161
    .line 162
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v11

    .line 169
    invoke-direct {v13, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    sget-object v11, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 173
    .line 174
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    invoke-virtual {v8, v12, v13}, Ly9/c;->d(Ljava/io/File;Ljava/io/File;)V

    .line 179
    .line 180
    .line 181
    sget-object v8, Lfa/g0;->a:Lfa/h0;

    .line 182
    .line 183
    invoke-virtual {v8}, Lfa/h0;->d()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v14

    .line 187
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 188
    .line 189
    .line 190
    move-result v14

    .line 191
    if-nez v14, :cond_2

    .line 192
    .line 193
    new-instance v14, Ljava/io/File;

    .line 194
    .line 195
    new-instance v15, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8}, Lfa/h0;->d()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 224
    .line 225
    .line 226
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v8}, Lfa/h0;->d()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v12, "/key/privateKey"

    .line 249
    .line 250
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    invoke-static {v2, v6}, Lcom/yunpan/appmanage/util/a0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    new-instance v6, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v8}, Lfa/h0;->d()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v7, "/key/publicKey"

    .line 283
    .line 284
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    invoke-static {v2, v6}, Lcom/yunpan/appmanage/util/a0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    :cond_2
    const-string v2, "\u6388\u6743\u6210\u529f"

    .line 295
    .line 296
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-wide/16 v6, 0x1

    .line 300
    .line 301
    invoke-virtual {v0, v6, v7}, Lv8/a;->c(J)V

    .line 302
    .line 303
    .line 304
    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 305
    .line 306
    .line 307
    :try_start_4
    invoke-virtual {v10}, Ly9/b;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 308
    .line 309
    .line 310
    :try_start_5
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 311
    .line 312
    .line 313
    goto :goto_7

    .line 314
    :catch_1
    move-exception v0

    .line 315
    goto :goto_6

    .line 316
    :catchall_1
    move-exception v0

    .line 317
    move-object v2, v0

    .line 318
    goto :goto_4

    .line 319
    :goto_2
    :try_start_6
    invoke-virtual {v10}, Ly9/b;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 320
    .line 321
    .line 322
    goto :goto_3

    .line 323
    :catchall_2
    move-exception v0

    .line 324
    move-object v6, v0

    .line 325
    const/4 v7, 0x1

    .line 326
    :try_start_7
    new-array v0, v7, [Ljava/lang/Class;

    .line 327
    .line 328
    aput-object v5, v0, v3

    .line 329
    .line 330
    invoke-virtual {v5, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    new-array v8, v7, [Ljava/lang/Object;

    .line 335
    .line 336
    aput-object v6, v8, v3

    .line 337
    .line 338
    invoke-virtual {v0, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 339
    .line 340
    .line 341
    :catch_2
    :goto_3
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 342
    :goto_4
    :try_start_9
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 343
    .line 344
    .line 345
    goto :goto_5

    .line 346
    :catchall_3
    move-exception v0

    .line 347
    move-object v6, v0

    .line 348
    const/4 v7, 0x1

    .line 349
    :try_start_a
    new-array v0, v7, [Ljava/lang/Class;

    .line 350
    .line 351
    aput-object v5, v0, v3

    .line 352
    .line 353
    invoke-virtual {v5, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    new-array v4, v7, [Ljava/lang/Object;

    .line 358
    .line 359
    aput-object v6, v4, v3

    .line 360
    .line 361
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 362
    .line 363
    .line 364
    :catch_3
    :goto_5
    :try_start_b
    throw v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 365
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 366
    .line 367
    .line 368
    :goto_7
    return-void

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
