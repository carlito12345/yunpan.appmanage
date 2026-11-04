.class public final synthetic Lua/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/f;
.implements Lec/d;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityGjDiy;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityGjDiy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/z1;->a:Lcom/yunpan/appmanage/ui/ActivityGjDiy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx9/w3;)V
    .locals 3

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->V:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/z1;->a:Lcom/yunpan/appmanage/ui/ActivityGjDiy;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, ".jks"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, ".bks"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    const-string v1, "\u8bf7\u9009\u62e9jks\u683c\u5f0f\u7684\u7b7e\u540d\u6587\u4ef6"

    .line 37
    .line 38
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->E:Landroid/widget/TextView;

    .line 42
    .line 43
    iget-object v2, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->L:Lx9/w3;

    .line 49
    .line 50
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 18

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    sget v0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->V:I

    .line 5
    .line 6
    move-object/from16 v4, p0

    .line 7
    .line 8
    iget-object v5, v4, Lua/z1;->a:Lcom/yunpan/appmanage/ui/ActivityGjDiy;

    .line 9
    .line 10
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v0, "/cache/"

    .line 14
    .line 15
    const-string v6, "\""

    .line 16
    .line 17
    const-string v7, "/"

    .line 18
    .line 19
    :try_start_0
    new-instance v8, Ljava/io/File;

    .line 20
    .line 21
    iget-object v9, v5, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->N:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v9, v5, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 27
    .line 28
    invoke-static {v8, v9}, Lq4/a;->N(Ljava/io/File;Lz7/s;)Z

    .line 29
    .line 30
    .line 31
    iget-object v8, v5, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->P:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    .line 33
    const-string v9, "/gj_ico.png"

    .line 34
    .line 35
    if-eqz v8, :cond_0

    .line 36
    .line 37
    :try_start_1
    new-instance v8, Ljava/io/File;

    .line 38
    .line 39
    new-instance v10, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .line 63
    .line 64
    :catch_0
    :try_start_2
    iget-object v8, v5, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->P:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-nez v8, :cond_0

    .line 71
    .line 72
    iget-object v8, v5, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->P:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v10, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    invoke-static {v8, v10}, Lcom/yunpan/appmanage/util/a0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_1
    move-exception v0

    .line 98
    goto/16 :goto_1a

    .line 99
    .line 100
    :cond_0
    :goto_0
    iget-object v8, v5, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->R:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 101
    .line 102
    const-string v10, "/gj_banner.png"

    .line 103
    .line 104
    if-eqz v8, :cond_1

    .line 105
    .line 106
    :try_start_3
    new-instance v8, Ljava/io/File;

    .line 107
    .line 108
    new-instance v11, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 131
    .line 132
    .line 133
    :catch_2
    :try_start_4
    iget-object v8, v5, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->R:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    if-nez v8, :cond_1

    .line 140
    .line 141
    iget-object v8, v5, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->R:Ljava/lang/String;

    .line 142
    .line 143
    new-instance v11, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    invoke-static {v8, v11}, Lcom/yunpan/appmanage/util/a0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    :cond_1
    const-string v8, "\u67e5\u627e\u56fe\u6807\u4e2d"

    .line 166
    .line 167
    invoke-virtual {v1, v8}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    new-instance v8, Lef/b;

    .line 171
    .line 172
    sget-object v11, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 173
    .line 174
    sget-object v11, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 175
    .line 176
    iget-object v11, v11, Lcom/yunpan/appmanage/util/k;->e:Ljava/lang/String;

    .line 177
    .line 178
    invoke-direct {v8, v11}, Lef/b;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 179
    .line 180
    .line 181
    :try_start_5
    invoke-virtual {v8}, Lef/b;->M()V

    .line 182
    .line 183
    .line 184
    iget-object v11, v8, Lef/b;->d:Ljava/lang/String;

    .line 185
    .line 186
    const-string v12, "icon=\""

    .line 187
    .line 188
    invoke-static {v11, v12, v6, v2}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    const-string v13, "banner=\""

    .line 193
    .line 194
    invoke-static {v11, v13, v6, v2}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    new-instance v11, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 204
    .line 205
    .line 206
    move-result-object v13

    .line 207
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    invoke-static {v11}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v11

    .line 221
    if-eqz v11, :cond_2

    .line 222
    .line 223
    new-instance v11, Ljava/io/FileInputStream;

    .line 224
    .line 225
    new-instance v13, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 231
    .line 232
    .line 233
    move-result-object v14

    .line 234
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-static {v11}, Lcom/yunpan/appmanage/util/a0;->A(Ljava/io/InputStream;)[B

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    goto :goto_1

    .line 252
    :catchall_0
    move-exception v0

    .line 253
    move-object v1, v0

    .line 254
    goto/16 :goto_18

    .line 255
    .line 256
    :cond_2
    iget-object v9, v5, Lda/g;->A:Lda/g;

    .line 257
    .line 258
    invoke-virtual {v9}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    const v11, 0x7f120004

    .line 263
    .line 264
    .line 265
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    invoke-static {v9}, Lcom/yunpan/appmanage/util/a0;->A(Ljava/io/InputStream;)[B

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 279
    .line 280
    .line 281
    move-result-object v13

    .line 282
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v11

    .line 292
    invoke-static {v11}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v11

    .line 296
    if-eqz v11, :cond_3

    .line 297
    .line 298
    new-instance v11, Ljava/io/FileInputStream;

    .line 299
    .line 300
    new-instance v13, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 306
    .line 307
    .line 308
    move-result-object v14

    .line 309
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v10

    .line 319
    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-static {v11}, Lcom/yunpan/appmanage/util/a0;->A(Ljava/io/InputStream;)[B

    .line 323
    .line 324
    .line 325
    move-result-object v10

    .line 326
    goto :goto_2

    .line 327
    :cond_3
    iget-object v10, v5, Lda/g;->A:Lda/g;

    .line 328
    .line 329
    invoke-virtual {v10}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 330
    .line 331
    .line 332
    move-result-object v10

    .line 333
    const v11, 0x7f120003

    .line 334
    .line 335
    .line 336
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 337
    .line 338
    .line 339
    move-result-object v10

    .line 340
    invoke-static {v10}, Lcom/yunpan/appmanage/util/a0;->A(Ljava/io/InputStream;)[B

    .line 341
    .line 342
    .line 343
    move-result-object v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 344
    :goto_2
    :try_start_6
    invoke-virtual {v8}, Lef/b;->close()V

    .line 345
    .line 346
    .line 347
    const-string v8, "\u66ff\u6362\u56fe\u6807\u4e2d"

    .line 348
    .line 349
    invoke-virtual {v1, v8}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    new-instance v8, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 358
    .line 359
    .line 360
    move-result-object v11

    .line 361
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v8

    .line 371
    sget-object v11, Lfa/g0;->a:Lfa/h0;

    .line 372
    .line 373
    invoke-virtual {v11}, Lfa/h0;->d()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v11

    .line 377
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 378
    .line 379
    .line 380
    move-result v11

    .line 381
    if-nez v11, :cond_4

    .line 382
    .line 383
    new-instance v8, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    .line 388
    sget-object v11, Lfa/g0;->a:Lfa/h0;

    .line 389
    .line 390
    invoke-virtual {v11}, Lfa/h0;->d()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v11

    .line 394
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    const-string v11, "/."

    .line 398
    .line 399
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    sget-object v11, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 403
    .line 404
    iget-object v11, v11, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v8

    .line 416
    :cond_4
    new-instance v0, Ljava/io/File;

    .line 417
    .line 418
    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 422
    .line 423
    .line 424
    new-instance v0, Ljava/io/File;

    .line 425
    .line 426
    new-instance v11, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 438
    .line 439
    .line 440
    move-result-wide v13

    .line 441
    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v11

    .line 448
    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    new-instance v11, Ljava/util/zip/ZipFile;

    .line 452
    .line 453
    new-instance v13, Ljava/io/File;

    .line 454
    .line 455
    sget-object v14, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 456
    .line 457
    iget-object v14, v14, Lcom/yunpan/appmanage/util/k;->e:Ljava/lang/String;

    .line 458
    .line 459
    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-direct {v11, v13}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 463
    .line 464
    .line 465
    :try_start_7
    new-instance v13, Ljava/util/zip/ZipOutputStream;

    .line 466
    .line 467
    new-instance v14, Ljava/io/BufferedOutputStream;

    .line 468
    .line 469
    new-instance v15, Ljava/io/FileOutputStream;

    .line 470
    .line 471
    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 472
    .line 473
    .line 474
    invoke-direct {v14, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 475
    .line 476
    .line 477
    invoke-direct {v13, v14}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    .line 478
    .line 479
    .line 480
    :try_start_8
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 481
    .line 482
    .line 483
    move-result-object v14

    .line 484
    :goto_3
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 485
    .line 486
    .line 487
    move-result v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 488
    const-string v3, "addSuppressed"

    .line 489
    .line 490
    const-class v2, Ljava/lang/Throwable;

    .line 491
    .line 492
    if-eqz v15, :cond_d

    .line 493
    .line 494
    :try_start_9
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v15

    .line 498
    check-cast v15, Ljava/util/zip/ZipEntry;

    .line 499
    .line 500
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v4

    .line 504
    move-object/from16 v16, v14

    .line 505
    .line 506
    const-string v14, "META-INF/"

    .line 507
    .line 508
    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 509
    .line 510
    .line 511
    move-result v4

    .line 512
    if-eqz v4, :cond_5

    .line 513
    .line 514
    move-object/from16 v4, p0

    .line 515
    .line 516
    move-object/from16 v14, v16

    .line 517
    .line 518
    :goto_4
    const/4 v2, 0x0

    .line 519
    goto :goto_3

    .line 520
    :cond_5
    new-instance v4, Ljava/util/zip/ZipEntry;

    .line 521
    .line 522
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v14

    .line 526
    invoke-direct {v4, v14}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getMethod()I

    .line 530
    .line 531
    .line 532
    move-result v14

    .line 533
    invoke-virtual {v4, v14}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getMethod()I

    .line 537
    .line 538
    .line 539
    move-result v14

    .line 540
    if-nez v14, :cond_8

    .line 541
    .line 542
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v14

    .line 546
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v14

    .line 550
    if-eqz v14, :cond_6

    .line 551
    .line 552
    array-length v14, v9

    .line 553
    move-object/from16 v17, v0

    .line 554
    .line 555
    int-to-long v0, v14

    .line 556
    invoke-virtual {v4, v0, v1}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 557
    .line 558
    .line 559
    array-length v0, v9

    .line 560
    int-to-long v0, v0

    .line 561
    invoke-virtual {v4, v0, v1}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 562
    .line 563
    .line 564
    new-instance v0, Ljava/util/zip/CRC32;

    .line 565
    .line 566
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v0, v9}, Ljava/util/zip/CRC32;->update([B)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    .line 573
    .line 574
    .line 575
    move-result-wide v0

    .line 576
    invoke-virtual {v4, v0, v1}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 577
    .line 578
    .line 579
    :goto_5
    const/4 v1, 0x0

    .line 580
    goto :goto_6

    .line 581
    :catchall_1
    move-exception v0

    .line 582
    move-object v1, v0

    .line 583
    goto/16 :goto_14

    .line 584
    .line 585
    :cond_6
    move-object/from16 v17, v0

    .line 586
    .line 587
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    if-eqz v0, :cond_7

    .line 596
    .line 597
    array-length v0, v10

    .line 598
    int-to-long v0, v0

    .line 599
    invoke-virtual {v4, v0, v1}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 600
    .line 601
    .line 602
    array-length v0, v10

    .line 603
    int-to-long v0, v0

    .line 604
    invoke-virtual {v4, v0, v1}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 605
    .line 606
    .line 607
    new-instance v0, Ljava/util/zip/CRC32;

    .line 608
    .line 609
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v0, v10}, Ljava/util/zip/CRC32;->update([B)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    .line 616
    .line 617
    .line 618
    move-result-wide v0

    .line 619
    invoke-virtual {v4, v0, v1}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 620
    .line 621
    .line 622
    goto :goto_5

    .line 623
    :cond_7
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 624
    .line 625
    .line 626
    move-result-wide v0

    .line 627
    invoke-virtual {v4, v0, v1}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 631
    .line 632
    .line 633
    move-result-wide v0

    .line 634
    invoke-virtual {v4, v0, v1}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 638
    .line 639
    .line 640
    move-result-wide v0

    .line 641
    invoke-virtual {v4, v0, v1}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 642
    .line 643
    .line 644
    goto :goto_5

    .line 645
    :cond_8
    move-object/from16 v17, v0

    .line 646
    .line 647
    goto :goto_5

    .line 648
    :goto_6
    invoke-virtual {v4, v1}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v13, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    if-eqz v0, :cond_9

    .line 663
    .line 664
    invoke-virtual {v13, v9}, Ljava/io/OutputStream;->write([B)V

    .line 665
    .line 666
    .line 667
    goto :goto_8

    .line 668
    :cond_9
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    move-result v0

    .line 676
    if-eqz v0, :cond_a

    .line 677
    .line 678
    invoke-virtual {v13, v10}, Ljava/io/OutputStream;->write([B)V

    .line 679
    .line 680
    .line 681
    goto :goto_8

    .line 682
    :cond_a
    invoke-virtual {v11, v15}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 683
    .line 684
    .line 685
    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 686
    const/16 v0, 0x2000

    .line 687
    .line 688
    :try_start_a
    new-array v0, v0, [B

    .line 689
    .line 690
    :goto_7
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 691
    .line 692
    .line 693
    move-result v4

    .line 694
    const/4 v14, -0x1

    .line 695
    if-eq v4, v14, :cond_b

    .line 696
    .line 697
    const/4 v14, 0x0

    .line 698
    invoke-virtual {v13, v0, v14, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 699
    .line 700
    .line 701
    goto :goto_7

    .line 702
    :catchall_2
    move-exception v0

    .line 703
    move-object v4, v0

    .line 704
    goto :goto_9

    .line 705
    :cond_b
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 706
    .line 707
    .line 708
    :goto_8
    invoke-virtual {v13}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 709
    .line 710
    .line 711
    move-object/from16 v4, p0

    .line 712
    .line 713
    move-object/from16 v1, p1

    .line 714
    .line 715
    move-object/from16 v14, v16

    .line 716
    .line 717
    move-object/from16 v0, v17

    .line 718
    .line 719
    goto/16 :goto_4

    .line 720
    .line 721
    :goto_9
    if-eqz v1, :cond_c

    .line 722
    .line 723
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 724
    .line 725
    .line 726
    goto :goto_a

    .line 727
    :catchall_3
    move-exception v0

    .line 728
    move-object v1, v0

    .line 729
    const/4 v5, 0x1

    .line 730
    :try_start_d
    new-array v0, v5, [Ljava/lang/Class;

    .line 731
    .line 732
    const/4 v6, 0x0

    .line 733
    aput-object v2, v0, v6

    .line 734
    .line 735
    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    new-array v2, v5, [Ljava/lang/Object;

    .line 740
    .line 741
    aput-object v1, v2, v6

    .line 742
    .line 743
    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 744
    .line 745
    .line 746
    :catch_3
    :cond_c
    :goto_a
    :try_start_e
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 747
    :cond_d
    move-object/from16 v17, v0

    .line 748
    .line 749
    const/4 v1, 0x0

    .line 750
    :try_start_f
    invoke-virtual {v13}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 751
    .line 752
    .line 753
    :try_start_10
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V

    .line 754
    .line 755
    .line 756
    new-instance v4, Ljava/io/File;

    .line 757
    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    .line 759
    .line 760
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 770
    .line 771
    .line 772
    move-result-wide v9

    .line 773
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    new-instance v6, Ljava/io/RandomAccessFile;

    .line 784
    .line 785
    const-string v0, "r"

    .line 786
    .line 787
    move-object/from16 v9, v17

    .line 788
    .line 789
    invoke-direct {v6, v9, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    .line 790
    .line 791
    .line 792
    :try_start_11
    new-instance v10, Ljava/io/FileOutputStream;

    .line 793
    .line 794
    invoke-direct {v10, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 795
    .line 796
    .line 797
    :try_start_12
    invoke-static {v6, v10}, Landroid/support/v4/media/session/b;->a(Ljava/io/RandomAccessFile;Ljava/io/FileOutputStream;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 798
    .line 799
    .line 800
    :try_start_13
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 801
    .line 802
    .line 803
    :try_start_14
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    .line 804
    .line 805
    .line 806
    :try_start_15
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    .line 807
    .line 808
    .line 809
    :catch_4
    :try_start_16
    const-string v0, "mingkey"
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    .line 810
    .line 811
    const-string v2, "ctmming"

    .line 812
    .line 813
    move-object v3, v2

    .line 814
    move-object v6, v3

    .line 815
    const/4 v9, 0x0

    .line 816
    move-object v2, v0

    .line 817
    :goto_b
    const/4 v10, 0x2

    .line 818
    :try_start_17
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 819
    .line 820
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 821
    .line 822
    iget-object v11, v5, Lda/g;->A:Lda/g;

    .line 823
    .line 824
    const v12, 0x7f13015d

    .line 825
    .line 826
    .line 827
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v11

    .line 831
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v11

    .line 835
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 836
    .line 837
    .line 838
    move-result v0

    .line 839
    if-eqz v0, :cond_e

    .line 840
    .line 841
    iget-object v0, v5, Lda/g;->A:Lda/g;

    .line 842
    .line 843
    invoke-virtual {v0}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    const v11, 0x7f120007

    .line 848
    .line 849
    .line 850
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    :goto_c
    move-object v11, v0

    .line 855
    goto/16 :goto_d

    .line 856
    .line 857
    :catchall_4
    move-exception v0

    .line 858
    move-object v4, v1

    .line 859
    goto/16 :goto_10

    .line 860
    .line 861
    :catch_5
    move-exception v0

    .line 862
    move-object v11, v1

    .line 863
    goto/16 :goto_f

    .line 864
    .line 865
    :cond_e
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 866
    .line 867
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 868
    .line 869
    iget-object v11, v5, Lda/g;->A:Lda/g;

    .line 870
    .line 871
    const v12, 0x7f130160

    .line 872
    .line 873
    .line 874
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v11

    .line 878
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v11

    .line 882
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 883
    .line 884
    .line 885
    move-result v0

    .line 886
    if-eqz v0, :cond_f

    .line 887
    .line 888
    iget-object v0, v5, Lda/g;->A:Lda/g;

    .line 889
    .line 890
    invoke-virtual {v0}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 891
    .line 892
    .line 893
    move-result-object v0

    .line 894
    const v11, 0x7f120008

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    goto :goto_c

    .line 902
    :cond_f
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 903
    .line 904
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 905
    .line 906
    iget-object v11, v5, Lda/g;->A:Lda/g;

    .line 907
    .line 908
    const v12, 0x7f13015e

    .line 909
    .line 910
    .line 911
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v11

    .line 915
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v11

    .line 919
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 920
    .line 921
    .line 922
    move-result v0

    .line 923
    if-eqz v0, :cond_10

    .line 924
    .line 925
    iget-object v0, v5, Lda/g;->A:Lda/g;

    .line 926
    .line 927
    invoke-virtual {v0}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    const v11, 0x7f12000a

    .line 932
    .line 933
    .line 934
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 935
    .line 936
    .line 937
    move-result-object v0

    .line 938
    goto :goto_c

    .line 939
    :cond_10
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 940
    .line 941
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 942
    .line 943
    iget-object v11, v5, Lda/g;->A:Lda/g;

    .line 944
    .line 945
    const v12, 0x7f13015c

    .line 946
    .line 947
    .line 948
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v11

    .line 952
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 953
    .line 954
    .line 955
    move-result-object v11

    .line 956
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 957
    .line 958
    .line 959
    move-result v0

    .line 960
    if-eqz v0, :cond_11

    .line 961
    .line 962
    iget-object v0, v5, Lda/g;->A:Lda/g;

    .line 963
    .line 964
    invoke-virtual {v0}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 965
    .line 966
    .line 967
    move-result-object v0

    .line 968
    const v11, 0x7f120009

    .line 969
    .line 970
    .line 971
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 972
    .line 973
    .line 974
    move-result-object v0

    .line 975
    goto :goto_c

    .line 976
    :cond_11
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 977
    .line 978
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 979
    .line 980
    iget-object v11, v5, Lda/g;->A:Lda/g;

    .line 981
    .line 982
    const v12, 0x7f13015f

    .line 983
    .line 984
    .line 985
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v11

    .line 989
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v11

    .line 993
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 994
    .line 995
    .line 996
    move-result v0

    .line 997
    if-eqz v0, :cond_12

    .line 998
    .line 999
    iget-object v0, v5, Lda/g;->A:Lda/g;

    .line 1000
    .line 1001
    invoke-virtual {v0}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v0

    .line 1005
    const v11, 0x7f12000b

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    goto/16 :goto_c

    .line 1013
    .line 1014
    :cond_12
    new-instance v0, Ljava/io/File;

    .line 1015
    .line 1016
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1017
    .line 1018
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v12

    .line 1025
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1026
    .line 1027
    .line 1028
    const-string v12, "/gj_sign"

    .line 1029
    .line 1030
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v11

    .line 1037
    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1041
    .line 1042
    .line 1043
    move-result v11

    .line 1044
    if-eqz v11, :cond_16

    .line 1045
    .line 1046
    iget-object v11, v5, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 1047
    .line 1048
    const-string v12, "sign_password"

    .line 1049
    .line 1050
    invoke-virtual {v11, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v11

    .line 1054
    invoke-virtual {v11}, Lz7/p;->i()Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v3

    .line 1058
    iget-object v11, v5, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 1059
    .line 1060
    const-string v12, "sign_alias"

    .line 1061
    .line 1062
    invoke-virtual {v11, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v11

    .line 1066
    invoke-virtual {v11}, Lz7/p;->i()Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v2

    .line 1070
    iget-object v11, v5, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->O:Lz7/s;

    .line 1071
    .line 1072
    const-string v12, "sign_alias_password"

    .line 1073
    .line 1074
    invoke-virtual {v11, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v11

    .line 1078
    invoke-virtual {v11}, Lz7/p;->i()Ljava/lang/String;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v6

    .line 1082
    new-instance v11, Ljava/io/FileInputStream;

    .line 1083
    .line 1084
    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 1085
    .line 1086
    .line 1087
    :goto_d
    if-nez v9, :cond_13

    .line 1088
    .line 1089
    :try_start_18
    const-string v0, "PKCS12"

    .line 1090
    .line 1091
    new-instance v12, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 1092
    .line 1093
    invoke-direct {v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    .line 1094
    .line 1095
    .line 1096
    invoke-static {v0, v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v0

    .line 1100
    goto :goto_e

    .line 1101
    :catchall_5
    move-exception v0

    .line 1102
    move-object v4, v11

    .line 1103
    goto/16 :goto_10

    .line 1104
    .line 1105
    :catch_6
    move-exception v0

    .line 1106
    goto/16 :goto_f

    .line 1107
    .line 1108
    :cond_13
    const/4 v12, 0x1

    .line 1109
    if-ne v9, v12, :cond_14

    .line 1110
    .line 1111
    const-string v0, "BKS"

    .line 1112
    .line 1113
    new-instance v12, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 1114
    .line 1115
    invoke-direct {v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    .line 1116
    .line 1117
    .line 1118
    invoke-static {v0, v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v0

    .line 1122
    goto :goto_e

    .line 1123
    :cond_14
    const-string v0, "JKS"

    .line 1124
    .line 1125
    new-instance v12, Lc/a;

    .line 1126
    .line 1127
    const/4 v13, 0x1

    .line 1128
    invoke-direct {v12, v13}, Lc/a;-><init>(I)V

    .line 1129
    .line 1130
    .line 1131
    invoke-static {v0, v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v0

    .line 1135
    :goto_e
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    .line 1136
    .line 1137
    .line 1138
    move-result-object v12

    .line 1139
    invoke-virtual {v0, v11, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 1140
    .line 1141
    .line 1142
    if-eqz v11, :cond_15

    .line 1143
    .line 1144
    :try_start_19
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 1145
    .line 1146
    .line 1147
    :cond_15
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    .line 1148
    .line 1149
    .line 1150
    move-result-object v1

    .line 1151
    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v1

    .line 1155
    check-cast v1, Ljava/security/PrivateKey;

    .line 1156
    .line 1157
    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v0

    .line 1161
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1162
    .line 1163
    new-instance v2, Ljava/io/File;

    .line 1164
    .line 1165
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1166
    .line 1167
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    .line 1175
    .line 1176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1177
    .line 1178
    .line 1179
    move-result-wide v6

    .line 1180
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v3

    .line 1187
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1188
    .line 1189
    .line 1190
    new-instance v3, Lcom/android/apksig/ApkSigner$SignerConfig$Builder;

    .line 1191
    .line 1192
    const-string v6, "CERT"

    .line 1193
    .line 1194
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v0

    .line 1198
    invoke-direct {v3, v6, v1, v0}, Lcom/android/apksig/ApkSigner$SignerConfig$Builder;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;)V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v3}, Lcom/android/apksig/ApkSigner$SignerConfig$Builder;->build()Lcom/android/apksig/ApkSigner$SignerConfig;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v0

    .line 1205
    new-instance v1, Lcom/android/apksig/ApkSigner$Builder;

    .line 1206
    .line 1207
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v0

    .line 1211
    invoke-direct {v1, v0}, Lcom/android/apksig/ApkSigner$Builder;-><init>(Ljava/util/List;)V

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v1, v4}, Lcom/android/apksig/ApkSigner$Builder;->setInputApk(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v0

    .line 1218
    invoke-virtual {v0, v2}, Lcom/android/apksig/ApkSigner$Builder;->setOutputApk(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v0

    .line 1222
    iget-object v1, v5, Lda/g;->A:Lda/g;

    .line 1223
    .line 1224
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v1

    .line 1228
    invoke-virtual {v0, v1}, Lcom/android/apksig/ApkSigner$Builder;->setCreatedBy(Ljava/lang/String;)Lcom/android/apksig/ApkSigner$Builder;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v0

    .line 1232
    const/4 v1, 0x1

    .line 1233
    invoke-virtual {v0, v1}, Lcom/android/apksig/ApkSigner$Builder;->setV1SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v0

    .line 1237
    invoke-virtual {v0, v1}, Lcom/android/apksig/ApkSigner$Builder;->setV2SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v0

    .line 1241
    const/4 v1, 0x0

    .line 1242
    invoke-virtual {v0, v1}, Lcom/android/apksig/ApkSigner$Builder;->setV3SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v0

    .line 1246
    invoke-virtual {v0, v1}, Lcom/android/apksig/ApkSigner$Builder;->setV4SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v0

    .line 1250
    invoke-virtual {v0}, Lcom/android/apksig/ApkSigner$Builder;->build()Lcom/android/apksig/ApkSigner;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v0

    .line 1254
    invoke-virtual {v0}, Lcom/android/apksig/ApkSigner;->sign()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1

    .line 1255
    .line 1256
    .line 1257
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7

    .line 1258
    .line 1259
    .line 1260
    :catch_7
    :try_start_1b
    const-string v0, "\u5b89\u88c5\u4e2d"

    .line 1261
    .line 1262
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 1263
    .line 1264
    .line 1265
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v0

    .line 1269
    new-instance v1, Lja/a;

    .line 1270
    .line 1271
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v2

    .line 1275
    invoke-direct {v1, v10, v2}, Lja/a;-><init>(ILjava/lang/Object;)V

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v0, v1}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 1279
    .line 1280
    .line 1281
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1

    .line 1282
    .line 1283
    .line 1284
    goto/16 :goto_1b

    .line 1285
    .line 1286
    :cond_16
    :try_start_1c
    new-instance v0, Ljava/lang/Exception;

    .line 1287
    .line 1288
    const-string v11, "\u7b7e\u540d\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 1289
    .line 1290
    invoke-direct {v0, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1291
    .line 1292
    .line 1293
    throw v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 1294
    :goto_f
    if-eq v9, v10, :cond_18

    .line 1295
    .line 1296
    if-eqz v11, :cond_17

    .line 1297
    .line 1298
    :try_start_1d
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1

    .line 1299
    .line 1300
    .line 1301
    :cond_17
    const/4 v10, 0x1

    .line 1302
    add-int/2addr v9, v10

    .line 1303
    goto/16 :goto_b

    .line 1304
    .line 1305
    :cond_18
    :try_start_1e
    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    .line 1306
    :goto_10
    if-eqz v4, :cond_19

    .line 1307
    .line 1308
    :try_start_1f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1309
    .line 1310
    .line 1311
    :cond_19
    throw v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1

    .line 1312
    :catchall_6
    move-exception v0

    .line 1313
    move-object v1, v0

    .line 1314
    goto :goto_12

    .line 1315
    :catchall_7
    move-exception v0

    .line 1316
    move-object v1, v0

    .line 1317
    :try_start_20
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    .line 1318
    .line 1319
    .line 1320
    goto :goto_11

    .line 1321
    :catchall_8
    move-exception v0

    .line 1322
    move-object v4, v0

    .line 1323
    const/4 v5, 0x1

    .line 1324
    :try_start_21
    new-array v0, v5, [Ljava/lang/Class;

    .line 1325
    .line 1326
    const/4 v7, 0x0

    .line 1327
    aput-object v2, v0, v7

    .line 1328
    .line 1329
    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v0

    .line 1333
    new-array v8, v5, [Ljava/lang/Object;

    .line 1334
    .line 1335
    aput-object v4, v8, v7

    .line 1336
    .line 1337
    invoke-virtual {v0, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_8
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    .line 1338
    .line 1339
    .line 1340
    :catch_8
    :goto_11
    :try_start_22
    throw v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    .line 1341
    :goto_12
    :try_start_23
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    .line 1342
    .line 1343
    .line 1344
    goto :goto_13

    .line 1345
    :catchall_9
    move-exception v0

    .line 1346
    move-object v4, v0

    .line 1347
    const/4 v5, 0x1

    .line 1348
    :try_start_24
    new-array v0, v5, [Ljava/lang/Class;

    .line 1349
    .line 1350
    const/4 v6, 0x0

    .line 1351
    aput-object v2, v0, v6

    .line 1352
    .line 1353
    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v0

    .line 1357
    new-array v2, v5, [Ljava/lang/Object;

    .line 1358
    .line 1359
    aput-object v4, v2, v6

    .line 1360
    .line 1361
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_9

    .line 1362
    .line 1363
    .line 1364
    :catch_9
    :goto_13
    :try_start_25
    throw v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1

    .line 1365
    :catchall_a
    move-exception v0

    .line 1366
    move-object v1, v0

    .line 1367
    goto :goto_16

    .line 1368
    :goto_14
    :try_start_26
    invoke-virtual {v13}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    .line 1369
    .line 1370
    .line 1371
    goto :goto_15

    .line 1372
    :catchall_b
    move-exception v0

    .line 1373
    move-object v2, v0

    .line 1374
    :try_start_27
    invoke-static {v1, v2}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 1375
    .line 1376
    .line 1377
    :goto_15
    throw v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    .line 1378
    :goto_16
    :try_start_28
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    .line 1379
    .line 1380
    .line 1381
    goto :goto_17

    .line 1382
    :catchall_c
    move-exception v0

    .line 1383
    move-object v2, v0

    .line 1384
    :try_start_29
    invoke-static {v1, v2}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 1385
    .line 1386
    .line 1387
    :goto_17
    throw v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_1

    .line 1388
    :goto_18
    :try_start_2a
    invoke-virtual {v8}, Lef/b;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_d

    .line 1389
    .line 1390
    .line 1391
    goto :goto_19

    .line 1392
    :catchall_d
    move-exception v0

    .line 1393
    move-object v2, v0

    .line 1394
    :try_start_2b
    invoke-static {v1, v2}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 1395
    .line 1396
    .line 1397
    :goto_19
    throw v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_1

    .line 1398
    :goto_1a
    const-wide/16 v1, 0x29a

    .line 1399
    .line 1400
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1401
    .line 1402
    .line 1403
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1404
    .line 1405
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1409
    .line 1410
    .line 1411
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v1

    .line 1415
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v1

    .line 1419
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1420
    .line 1421
    .line 1422
    move-object/from16 v1, p1

    .line 1423
    .line 1424
    invoke-virtual {v1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1425
    .line 1426
    .line 1427
    :goto_1b
    return-void
.end method
