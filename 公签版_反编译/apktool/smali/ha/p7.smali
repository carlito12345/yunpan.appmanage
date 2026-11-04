.class public final synthetic Lha/p7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lha/a6;
.implements Lfa/w;
.implements Lea/f;
.implements Lec/d;
.implements Lu1/f;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lha/p7;->a:I

    iput-object p2, p0, Lha/p7;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Lc6/g;Landroid/view/View;I)V
    .locals 25

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x5

    .line 6
    const/4 v5, 0x1

    .line 7
    const/4 v6, 0x0

    .line 8
    move-object/from16 v7, p0

    .line 9
    .line 10
    iget-object v8, v7, Lha/p7;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v8, Lha/ve;

    .line 13
    .line 14
    iget-object v9, v8, Lha/ve;->h:Lx9/z5;

    .line 15
    .line 16
    move/from16 v10, p3

    .line 17
    .line 18
    invoke-virtual {v9, v10}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    check-cast v9, Ljava/lang/String;

    .line 23
    .line 24
    const-string v10, "\u64ad\u653e"

    .line 25
    .line 26
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v10

    .line 30
    const/4 v11, 0x7

    .line 31
    const-string v12, ""

    .line 32
    .line 33
    if-eqz v10, :cond_6

    .line 34
    .line 35
    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 36
    .line 37
    .line 38
    iget-object v5, v8, Lha/ve;->j:Lx9/n5;

    .line 39
    .line 40
    iget v9, v5, Lx9/n5;->a:I

    .line 41
    .line 42
    const-string v10, "@"

    .line 43
    .line 44
    const-string v13, ":"

    .line 45
    .line 46
    if-ne v9, v11, :cond_0

    .line 47
    .line 48
    iget-object v0, v8, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 51
    .line 52
    const-string v2, "//"

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/2addr v0, v1

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v2, v8, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 65
    .line 66
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 76
    .line 77
    iget-object v2, v2, Lx9/n5;->e:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 86
    .line 87
    iget-object v2, v2, Lx9/n5;->f:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v2, v8, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 96
    .line 97
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v2, v0, v1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    goto/16 :goto_2

    .line 104
    .line 105
    :cond_0
    const-string v1, "\\"

    .line 106
    .line 107
    const-string v6, "/"

    .line 108
    .line 109
    if-ne v9, v3, :cond_2

    .line 110
    .line 111
    iget-object v0, v5, Lx9/n5;->v:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    const-string v2, "smb://"

    .line 118
    .line 119
    if-eqz v0, :cond_1

    .line 120
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 127
    .line 128
    iget-object v2, v2, Lx9/n5;->e:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 137
    .line 138
    iget-object v2, v2, Lx9/n5;->f:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 147
    .line 148
    iget-object v2, v2, Lx9/n5;->c:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 157
    .line 158
    iget v2, v2, Lx9/n5;->d:I

    .line 159
    .line 160
    :goto_0
    invoke-static {v0, v2, v6}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 172
    .line 173
    iget-object v2, v2, Lx9/n5;->v:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 182
    .line 183
    iget-object v2, v2, Lx9/n5;->e:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 192
    .line 193
    iget-object v2, v2, Lx9/n5;->f:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 202
    .line 203
    iget-object v2, v2, Lx9/n5;->c:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 212
    .line 213
    iget v2, v2, Lx9/n5;->d:I

    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_2
    if-ne v9, v2, :cond_3

    .line 217
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string v2, "ftp://"

    .line 221
    .line 222
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 226
    .line 227
    iget-object v2, v2, Lx9/n5;->e:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 236
    .line 237
    iget-object v2, v2, Lx9/n5;->f:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 246
    .line 247
    iget-object v2, v2, Lx9/n5;->c:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 256
    .line 257
    iget v2, v2, Lx9/n5;->d:I

    .line 258
    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v12

    .line 266
    goto :goto_1

    .line 267
    :cond_3
    if-ne v9, v4, :cond_4

    .line 268
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string v2, "ftps://"

    .line 272
    .line 273
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 277
    .line 278
    iget-object v2, v2, Lx9/n5;->e:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 287
    .line 288
    iget-object v2, v2, Lx9/n5;->f:Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 297
    .line 298
    iget-object v2, v2, Lx9/n5;->c:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 307
    .line 308
    iget v2, v2, Lx9/n5;->d:I

    .line 309
    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v12

    .line 317
    goto :goto_1

    .line 318
    :cond_4
    if-ne v9, v0, :cond_5

    .line 319
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    const-string v2, "sftp://"

    .line 323
    .line 324
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 328
    .line 329
    iget-object v2, v2, Lx9/n5;->e:Ljava/lang/String;

    .line 330
    .line 331
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 338
    .line 339
    iget-object v2, v2, Lx9/n5;->f:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 348
    .line 349
    iget-object v2, v2, Lx9/n5;->c:Ljava/lang/String;

    .line 350
    .line 351
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    iget-object v2, v8, Lha/ve;->j:Lx9/n5;

    .line 358
    .line 359
    iget v2, v2, Lx9/n5;->d:I

    .line 360
    .line 361
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v12

    .line 368
    :cond_5
    :goto_1
    invoke-static {v12}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    iget-object v2, v8, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 373
    .line 374
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 375
    .line 376
    invoke-virtual {v2, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    :goto_2
    new-instance v1, Lha/gf;

    .line 388
    .line 389
    iget-object v2, v8, Lha/a4;->a:Landroid/app/Activity;

    .line 390
    .line 391
    iget-object v3, v8, Lha/a4;->b:Landroid/content/Context;

    .line 392
    .line 393
    invoke-direct {v1, v2, v3}, Lha/gf;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v1, v0}, Lha/gf;->a(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    goto/16 :goto_8

    .line 400
    .line 401
    :cond_6
    iget-object v10, v8, Lha/ve;->i:Lua/t8;

    .line 402
    .line 403
    iget-object v13, v10, Lua/t8;->b:Lua/i9;

    .line 404
    .line 405
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    const-string v14, "\u4e0b\u8f7d"

    .line 409
    .line 410
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v14

    .line 414
    iget v10, v10, Lua/t8;->c:I

    .line 415
    .line 416
    if-eqz v14, :cond_7

    .line 417
    .line 418
    invoke-virtual {v13, v10, v6}, Lua/i9;->q(IZ)V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_7

    .line 422
    .line 423
    :cond_7
    const-string v14, "\u5b89\u88c5"

    .line 424
    .line 425
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v14

    .line 429
    if-eqz v14, :cond_8

    .line 430
    .line 431
    invoke-virtual {v13, v10, v5}, Lua/i9;->q(IZ)V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_7

    .line 435
    .line 436
    :cond_8
    const-string v14, "\u770b\u56fe"

    .line 437
    .line 438
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v14

    .line 442
    if-eqz v14, :cond_b

    .line 443
    .line 444
    new-instance v0, Ljava/util/ArrayList;

    .line 445
    .line 446
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .line 448
    .line 449
    const/4 v1, 0x0

    .line 450
    :goto_3
    iget-object v2, v13, Lua/i9;->q:Lx9/y5;

    .line 451
    .line 452
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    if-ge v6, v2, :cond_a

    .line 457
    .line 458
    iget-object v2, v13, Lua/i9;->q:Lx9/y5;

    .line 459
    .line 460
    invoke-virtual {v2, v6}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    check-cast v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 465
    .line 466
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 467
    .line 468
    invoke-static {v2}, Lif/a;->c0(Ljava/lang/String;)Z

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    if-eqz v2, :cond_9

    .line 473
    .line 474
    iget-object v2, v13, Lua/i9;->q:Lx9/y5;

    .line 475
    .line 476
    invoke-virtual {v2, v6}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    check-cast v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 481
    .line 482
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    if-ne v6, v10, :cond_9

    .line 486
    .line 487
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    sub-int/2addr v1, v5

    .line 492
    :cond_9
    add-int/2addr v6, v5

    .line 493
    goto :goto_3

    .line 494
    :cond_a
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 495
    .line 496
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 497
    .line 498
    new-instance v3, Lcom/yunpan/appmanage/bean/ImageData;

    .line 499
    .line 500
    iget-object v4, v13, Lua/i9;->j:Lx9/o5;

    .line 501
    .line 502
    iget v5, v13, Lua/i9;->T:I

    .line 503
    .line 504
    invoke-virtual {v4, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    check-cast v4, Lx9/n5;

    .line 509
    .line 510
    invoke-direct {v3, v1, v4, v0}, Lcom/yunpan/appmanage/bean/ImageData;-><init>(ILx9/n5;Ljava/util/List;)V

    .line 511
    .line 512
    .line 513
    iput-object v3, v2, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 514
    .line 515
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityImage2;

    .line 516
    .line 517
    invoke-virtual {v13, v0}, Lda/h;->l(Ljava/lang/Class;)V

    .line 518
    .line 519
    .line 520
    goto/16 :goto_7

    .line 521
    .line 522
    :cond_b
    const-string v14, "\u5220\u9664"

    .line 523
    .line 524
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v14

    .line 528
    const/16 v15, 0x15

    .line 529
    .line 530
    const/16 v11, 0x14

    .line 531
    .line 532
    if-eqz v14, :cond_14

    .line 533
    .line 534
    iget-object v9, v13, Lua/i9;->j:Lx9/o5;

    .line 535
    .line 536
    iget v12, v13, Lua/i9;->T:I

    .line 537
    .line 538
    invoke-virtual {v9, v12}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v9

    .line 542
    check-cast v9, Lx9/n5;

    .line 543
    .line 544
    iget-object v12, v13, Lua/i9;->q:Lx9/y5;

    .line 545
    .line 546
    invoke-virtual {v12, v10}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v12

    .line 550
    check-cast v12, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 551
    .line 552
    iget v14, v9, Lx9/n5;->a:I

    .line 553
    .line 554
    if-ne v14, v5, :cond_c

    .line 555
    .line 556
    new-instance v0, Lba/b;

    .line 557
    .line 558
    invoke-direct {v0, v9, v12, v3}, Lba/b;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 559
    .line 560
    .line 561
    new-instance v1, Lmc/c;

    .line 562
    .line 563
    invoke-direct {v1, v6, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 567
    .line 568
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    goto/16 :goto_4

    .line 581
    .line 582
    :cond_c
    new-instance v14, Ljava/util/ArrayList;

    .line 583
    .line 584
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    iget v12, v9, Lx9/n5;->a:I

    .line 591
    .line 592
    if-ne v12, v11, :cond_d

    .line 593
    .line 594
    new-instance v0, Lba/c;

    .line 595
    .line 596
    invoke-direct {v0, v9, v14, v1}, Lba/c;-><init>(Lx9/n5;Ljava/util/ArrayList;I)V

    .line 597
    .line 598
    .line 599
    new-instance v1, Lmc/c;

    .line 600
    .line 601
    invoke-direct {v1, v6, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 605
    .line 606
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    goto/16 :goto_4

    .line 619
    .line 620
    :cond_d
    if-ne v12, v15, :cond_e

    .line 621
    .line 622
    new-instance v0, Lba/c;

    .line 623
    .line 624
    invoke-direct {v0, v14, v9, v6}, Lba/c;-><init>(Ljava/util/ArrayList;Lx9/n5;I)V

    .line 625
    .line 626
    .line 627
    new-instance v1, Lmc/c;

    .line 628
    .line 629
    invoke-direct {v1, v6, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 630
    .line 631
    .line 632
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 633
    .line 634
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    goto/16 :goto_4

    .line 647
    .line 648
    :cond_e
    if-ne v12, v1, :cond_f

    .line 649
    .line 650
    new-instance v0, Lba/c;

    .line 651
    .line 652
    invoke-direct {v0, v9, v14, v5}, Lba/c;-><init>(Lx9/n5;Ljava/util/ArrayList;I)V

    .line 653
    .line 654
    .line 655
    new-instance v1, Lmc/c;

    .line 656
    .line 657
    invoke-direct {v1, v6, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 661
    .line 662
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    goto/16 :goto_4

    .line 675
    .line 676
    :cond_f
    if-ne v12, v3, :cond_10

    .line 677
    .line 678
    new-instance v0, Lba/c;

    .line 679
    .line 680
    invoke-direct {v0, v9, v14, v4}, Lba/c;-><init>(Lx9/n5;Ljava/util/ArrayList;I)V

    .line 681
    .line 682
    .line 683
    new-instance v1, Lmc/c;

    .line 684
    .line 685
    invoke-direct {v1, v6, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 686
    .line 687
    .line 688
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 689
    .line 690
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    goto :goto_4

    .line 703
    :cond_10
    if-ne v12, v2, :cond_11

    .line 704
    .line 705
    new-instance v0, Lba/c;

    .line 706
    .line 707
    invoke-direct {v0, v14, v9, v3}, Lba/c;-><init>(Ljava/util/ArrayList;Lx9/n5;I)V

    .line 708
    .line 709
    .line 710
    new-instance v1, Lmc/c;

    .line 711
    .line 712
    invoke-direct {v1, v6, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 713
    .line 714
    .line 715
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 716
    .line 717
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    goto :goto_4

    .line 730
    :cond_11
    if-ne v12, v4, :cond_12

    .line 731
    .line 732
    new-instance v0, Lba/c;

    .line 733
    .line 734
    invoke-direct {v0, v14, v9, v2}, Lba/c;-><init>(Ljava/util/ArrayList;Lx9/n5;I)V

    .line 735
    .line 736
    .line 737
    new-instance v1, Lmc/c;

    .line 738
    .line 739
    invoke-direct {v1, v6, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 740
    .line 741
    .line 742
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 743
    .line 744
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 749
    .line 750
    .line 751
    move-result-object v1

    .line 752
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    goto :goto_4

    .line 757
    :cond_12
    if-ne v12, v0, :cond_13

    .line 758
    .line 759
    new-instance v0, Lba/f;

    .line 760
    .line 761
    const/16 v1, 0xc

    .line 762
    .line 763
    invoke-direct {v0, v9, v14, v1}, Lba/f;-><init>(Lx9/n5;Ljava/lang/Object;I)V

    .line 764
    .line 765
    .line 766
    new-instance v1, Lmc/c;

    .line 767
    .line 768
    invoke-direct {v1, v6, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 769
    .line 770
    .line 771
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 772
    .line 773
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    goto :goto_4

    .line 786
    :cond_13
    const/4 v1, 0x7

    .line 787
    if-ne v12, v1, :cond_1f

    .line 788
    .line 789
    new-instance v1, Lba/c;

    .line 790
    .line 791
    invoke-direct {v1, v9, v14, v0}, Lba/c;-><init>(Lx9/n5;Ljava/util/ArrayList;I)V

    .line 792
    .line 793
    .line 794
    new-instance v0, Lmc/c;

    .line 795
    .line 796
    invoke-direct {v0, v6, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 797
    .line 798
    .line 799
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 800
    .line 801
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 806
    .line 807
    .line 808
    move-result-object v1

    .line 809
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    :goto_4
    new-instance v1, Lua/z8;

    .line 814
    .line 815
    invoke-direct {v1, v13, v10, v6}, Lua/z8;-><init>(Lua/i9;II)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 819
    .line 820
    .line 821
    goto/16 :goto_7

    .line 822
    .line 823
    :cond_14
    const-string v0, "\u79fb\u52a8"

    .line 824
    .line 825
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 826
    .line 827
    .line 828
    move-result v0

    .line 829
    if-eqz v0, :cond_15

    .line 830
    .line 831
    new-instance v0, Lha/ff;

    .line 832
    .line 833
    iget-object v1, v13, Lda/h;->f:Landroid/app/Activity;

    .line 834
    .line 835
    iget-object v2, v13, Lda/h;->e:Landroid/content/Context;

    .line 836
    .line 837
    invoke-direct {v0, v1, v2}, Lha/ff;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 838
    .line 839
    .line 840
    iget-object v1, v13, Lua/i9;->j:Lx9/o5;

    .line 841
    .line 842
    iget v2, v13, Lua/i9;->T:I

    .line 843
    .line 844
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-result-object v1

    .line 848
    check-cast v1, Lx9/n5;

    .line 849
    .line 850
    iget-object v2, v13, Lua/i9;->n:Lx9/a6;

    .line 851
    .line 852
    invoke-virtual {v2, v6}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v2

    .line 856
    check-cast v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 857
    .line 858
    new-instance v4, Lua/t8;

    .line 859
    .line 860
    invoke-direct {v4, v13, v10, v3}, Lua/t8;-><init>(Lua/i9;II)V

    .line 861
    .line 862
    .line 863
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 864
    .line 865
    .line 866
    iput-object v4, v0, Lha/ff;->t:Lua/t8;

    .line 867
    .line 868
    iput-object v1, v0, Lha/ff;->s:Lx9/n5;

    .line 869
    .line 870
    iget-object v1, v0, Lha/ff;->g:Landroid/widget/TextView;

    .line 871
    .line 872
    const-string v3, "\u79fb\u52a8\u5230"

    .line 873
    .line 874
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    .line 876
    .line 877
    iget-object v1, v0, Lha/ff;->i:Lx9/a6;

    .line 878
    .line 879
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v0}, Lha/ff;->a()V

    .line 883
    .line 884
    .line 885
    goto/16 :goto_7

    .line 886
    .line 887
    :cond_15
    const-string v0, "\u6539\u540d"

    .line 888
    .line 889
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 890
    .line 891
    .line 892
    move-result v0

    .line 893
    if-eqz v0, :cond_16

    .line 894
    .line 895
    new-instance v0, Lha/z6;

    .line 896
    .line 897
    iget-object v2, v13, Lda/h;->f:Landroid/app/Activity;

    .line 898
    .line 899
    iget-object v3, v13, Lda/h;->e:Landroid/content/Context;

    .line 900
    .line 901
    iget-object v4, v13, Lua/i9;->q:Lx9/y5;

    .line 902
    .line 903
    invoke-virtual {v4, v10}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 904
    .line 905
    .line 906
    move-result-object v4

    .line 907
    check-cast v4, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 908
    .line 909
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 910
    .line 911
    new-instance v5, Lua/t8;

    .line 912
    .line 913
    invoke-direct {v5, v13, v10, v1}, Lua/t8;-><init>(Lua/i9;II)V

    .line 914
    .line 915
    .line 916
    const-string v22, "\u786e\u5b9a"

    .line 917
    .line 918
    const/16 v23, 0x0

    .line 919
    .line 920
    const-string v19, "\u4fee\u6539\u540d\u79f0"

    .line 921
    .line 922
    const-string v21, "\u8bf7\u8f93\u5165\u540d\u79f0"

    .line 923
    .line 924
    move-object/from16 v16, v0

    .line 925
    .line 926
    move-object/from16 v17, v2

    .line 927
    .line 928
    move-object/from16 v18, v3

    .line 929
    .line 930
    move-object/from16 v20, v4

    .line 931
    .line 932
    move-object/from16 v24, v5

    .line 933
    .line 934
    invoke-direct/range {v16 .. v24}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 938
    .line 939
    .line 940
    goto/16 :goto_7

    .line 941
    .line 942
    :cond_16
    const-string v0, "\u5206\u4eab"

    .line 943
    .line 944
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 945
    .line 946
    .line 947
    move-result v0

    .line 948
    if-eqz v0, :cond_1b

    .line 949
    .line 950
    iget-object v0, v13, Lua/i9;->j:Lx9/o5;

    .line 951
    .line 952
    iget v3, v13, Lua/i9;->T:I

    .line 953
    .line 954
    invoke-virtual {v0, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    check-cast v0, Lx9/n5;

    .line 959
    .line 960
    iget-object v3, v13, Lua/i9;->q:Lx9/y5;

    .line 961
    .line 962
    invoke-virtual {v3, v10}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v3

    .line 966
    check-cast v3, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 967
    .line 968
    iget v4, v0, Lx9/n5;->a:I

    .line 969
    .line 970
    if-eq v4, v5, :cond_17

    .line 971
    .line 972
    if-eq v4, v1, :cond_17

    .line 973
    .line 974
    if-eq v4, v11, :cond_17

    .line 975
    .line 976
    if-ne v4, v15, :cond_1f

    .line 977
    .line 978
    :cond_17
    if-ne v4, v5, :cond_18

    .line 979
    .line 980
    new-instance v1, Lba/b;

    .line 981
    .line 982
    invoke-direct {v1, v0, v3, v2}, Lba/b;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 983
    .line 984
    .line 985
    new-instance v0, Lmc/c;

    .line 986
    .line 987
    invoke-direct {v0, v6, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 988
    .line 989
    .line 990
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 991
    .line 992
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 997
    .line 998
    .line 999
    move-result-object v1

    .line 1000
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    goto :goto_5

    .line 1005
    :cond_18
    if-ne v4, v1, :cond_19

    .line 1006
    .line 1007
    new-instance v1, Lba/b;

    .line 1008
    .line 1009
    const/16 v2, 0x8

    .line 1010
    .line 1011
    invoke-direct {v1, v3, v0, v2}, Lba/b;-><init>(Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;I)V

    .line 1012
    .line 1013
    .line 1014
    new-instance v0, Lmc/c;

    .line 1015
    .line 1016
    invoke-direct {v0, v6, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 1017
    .line 1018
    .line 1019
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 1020
    .line 1021
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v0

    .line 1025
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v1

    .line 1029
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v0

    .line 1033
    goto :goto_5

    .line 1034
    :cond_19
    if-ne v4, v15, :cond_1a

    .line 1035
    .line 1036
    new-instance v1, Lba/b;

    .line 1037
    .line 1038
    invoke-direct {v1, v3, v0, v5}, Lba/b;-><init>(Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;I)V

    .line 1039
    .line 1040
    .line 1041
    new-instance v0, Lmc/c;

    .line 1042
    .line 1043
    invoke-direct {v0, v6, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 1044
    .line 1045
    .line 1046
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 1047
    .line 1048
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v1

    .line 1056
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v0

    .line 1060
    goto :goto_5

    .line 1061
    :cond_1a
    new-instance v1, Lba/b;

    .line 1062
    .line 1063
    const/16 v2, 0xa

    .line 1064
    .line 1065
    invoke-direct {v1, v0, v3, v2}, Lba/b;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 1066
    .line 1067
    .line 1068
    new-instance v0, Lmc/c;

    .line 1069
    .line 1070
    invoke-direct {v0, v6, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 1071
    .line 1072
    .line 1073
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 1074
    .line 1075
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v0

    .line 1079
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v1

    .line 1083
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    :goto_5
    new-instance v1, Lha/m6;

    .line 1088
    .line 1089
    const/16 v2, 0x1a

    .line 1090
    .line 1091
    invoke-direct {v1, v2}, Lha/m6;-><init>(I)V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 1095
    .line 1096
    .line 1097
    goto/16 :goto_7

    .line 1098
    .line 1099
    :cond_1b
    const-string v0, "\u590d\u5236"

    .line 1100
    .line 1101
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1102
    .line 1103
    .line 1104
    move-result v0

    .line 1105
    if-eqz v0, :cond_1c

    .line 1106
    .line 1107
    new-instance v0, Lha/ff;

    .line 1108
    .line 1109
    iget-object v1, v13, Lda/h;->f:Landroid/app/Activity;

    .line 1110
    .line 1111
    iget-object v2, v13, Lda/h;->e:Landroid/content/Context;

    .line 1112
    .line 1113
    invoke-direct {v0, v1, v2}, Lha/ff;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 1114
    .line 1115
    .line 1116
    iget-object v1, v13, Lua/i9;->j:Lx9/o5;

    .line 1117
    .line 1118
    iget v2, v13, Lua/i9;->T:I

    .line 1119
    .line 1120
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v1

    .line 1124
    check-cast v1, Lx9/n5;

    .line 1125
    .line 1126
    iget-object v2, v13, Lua/i9;->n:Lx9/a6;

    .line 1127
    .line 1128
    invoke-virtual {v2, v6}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v2

    .line 1132
    check-cast v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1133
    .line 1134
    new-instance v3, Lua/t8;

    .line 1135
    .line 1136
    invoke-direct {v3, v13, v10, v5}, Lua/t8;-><init>(Lua/i9;II)V

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 1140
    .line 1141
    .line 1142
    iput-object v3, v0, Lha/ff;->t:Lua/t8;

    .line 1143
    .line 1144
    iput-object v1, v0, Lha/ff;->s:Lx9/n5;

    .line 1145
    .line 1146
    iget-object v1, v0, Lha/ff;->g:Landroid/widget/TextView;

    .line 1147
    .line 1148
    const-string v3, "\u590d\u5236\u5230"

    .line 1149
    .line 1150
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    .line 1152
    .line 1153
    iget-object v1, v0, Lha/ff;->i:Lx9/a6;

    .line 1154
    .line 1155
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v0}, Lha/ff;->a()V

    .line 1159
    .line 1160
    .line 1161
    goto/16 :goto_7

    .line 1162
    .line 1163
    :cond_1c
    const-string v0, "\u63cf\u8ff0"

    .line 1164
    .line 1165
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1166
    .line 1167
    .line 1168
    move-result v0

    .line 1169
    if-eqz v0, :cond_1f

    .line 1170
    .line 1171
    iget-object v0, v13, Lua/i9;->j:Lx9/o5;

    .line 1172
    .line 1173
    iget v1, v13, Lua/i9;->T:I

    .line 1174
    .line 1175
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v0

    .line 1179
    check-cast v0, Lx9/n5;

    .line 1180
    .line 1181
    iget-object v1, v13, Lua/i9;->q:Lx9/y5;

    .line 1182
    .line 1183
    invoke-virtual {v1, v10}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v1

    .line 1187
    check-cast v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1188
    .line 1189
    iget v2, v0, Lx9/n5;->a:I

    .line 1190
    .line 1191
    if-ne v2, v5, :cond_1d

    .line 1192
    .line 1193
    new-instance v2, Lba/b;

    .line 1194
    .line 1195
    invoke-direct {v2, v0, v1, v4}, Lba/b;-><init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;I)V

    .line 1196
    .line 1197
    .line 1198
    new-instance v3, Lmc/c;

    .line 1199
    .line 1200
    invoke-direct {v3, v6, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 1201
    .line 1202
    .line 1203
    sget-object v2, Lrc/f;->b:Lec/j;

    .line 1204
    .line 1205
    invoke-virtual {v3, v2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v2

    .line 1209
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v3

    .line 1213
    invoke-virtual {v2, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v2

    .line 1217
    new-instance v3, Lha/ze;

    .line 1218
    .line 1219
    invoke-direct {v3, v13, v0, v1, v4}, Lha/ze;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v2, v3}, Lec/b;->b(Lec/e;)V

    .line 1223
    .line 1224
    .line 1225
    goto :goto_7

    .line 1226
    :cond_1d
    if-ne v2, v11, :cond_1f

    .line 1227
    .line 1228
    :try_start_0
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 1229
    .line 1230
    iget-boolean v3, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 1231
    .line 1232
    if-eqz v3, :cond_1e

    .line 1233
    .line 1234
    const-string v3, "folderDesc"

    .line 1235
    .line 1236
    goto :goto_6

    .line 1237
    :cond_1e
    const-string v3, "fileDesc"

    .line 1238
    .line 1239
    :goto_6
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v2

    .line 1243
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    :catch_0
    new-instance v2, Lha/f7;

    .line 1248
    .line 1249
    iget-object v3, v13, Lda/h;->f:Landroid/app/Activity;

    .line 1250
    .line 1251
    iget-object v4, v13, Lda/h;->e:Landroid/content/Context;

    .line 1252
    .line 1253
    invoke-direct {v2, v3, v4}, Lha/f7;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 1254
    .line 1255
    .line 1256
    new-instance v3, Lcom/hjq/permissions/b;

    .line 1257
    .line 1258
    const/16 v4, 0x10

    .line 1259
    .line 1260
    invoke-direct {v3, v13, v0, v1, v4}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1261
    .line 1262
    .line 1263
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 1264
    .line 1265
    .line 1266
    iput-object v3, v2, Lha/f7;->k:Ljava/lang/Object;

    .line 1267
    .line 1268
    iget-object v0, v2, Lha/f7;->i:Landroid/widget/TextView;

    .line 1269
    .line 1270
    const-string v1, "\u4fee\u6539\u63cf\u8ff0"

    .line 1271
    .line 1272
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1273
    .line 1274
    .line 1275
    iget-object v0, v2, Lha/f7;->h:Landroid/widget/EditText;

    .line 1276
    .line 1277
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1278
    .line 1279
    .line 1280
    iget-object v0, v2, Lha/f7;->h:Landroid/widget/EditText;

    .line 1281
    .line 1282
    const-string v1, "\u63cf\u8ff0(\u53ef\u7559\u7a7a\uff0c\u5efa\u8bae200\u5b57\u6570\u4ee5\u5185)"

    .line 1283
    .line 1284
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1285
    .line 1286
    .line 1287
    :cond_1f
    :goto_7
    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 1288
    .line 1289
    .line 1290
    :goto_8
    return-void
.end method


# virtual methods
.method public a(Lx9/w3;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lha/p7;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lh5/m;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-wide v1, p1, Lx9/w3;->d:J

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    cmp-long v5, v1, v3

    .line 15
    .line 16
    if-lez v5, :cond_1

    .line 17
    .line 18
    const-wide/32 v3, 0x100000

    .line 19
    .line 20
    .line 21
    cmp-long v5, v1, v3

    .line 22
    .line 23
    if-lez v5, :cond_0

    .line 24
    .line 25
    const-string p1, "\u80cc\u666f\u56fe\u6587\u4ef6\u8fc7\u5927\uff0c\u7981\u6b62\u8bbe\u7f6e \n \u5efa\u8bae\u56fe\u7247\u5728500kb\u4ee5\u5185"

    .line 26
    .line 27
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lh5/m;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lha/fc;

    .line 41
    .line 42
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, "/bj.png"

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Ld2/w;

    .line 72
    .line 73
    const/16 v2, 0x18

    .line 74
    .line 75
    invoke-direct {v0, v1, v2, p1}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Lmc/c;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-direct {p1, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance v0, Lha/m6;

    .line 99
    .line 100
    const/4 v1, 0x4

    .line 101
    invoke-direct {v0, v1}, Lha/m6;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 105
    .line 106
    .line 107
    :cond_1
    :goto_0
    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lha/p7;->b:Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lha/p7;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Li3/a;

    .line 9
    .line 10
    check-cast v0, Lu7/d0;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lu7/a0;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    .line 17
    .line 18
    check-cast v0, Lha/v9;

    .line 19
    .line 20
    iget-object p1, v0, Lha/v9;->i:Landroid/widget/TextView;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "\u6765\u81ea\uff1a"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Lha/v9;->q:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, "  ("

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Lha/v9;->q:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, ")\u4e2a\u6587\u4ef6"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, v0, Lha/v9;->j:Landroid/widget/TextView;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v2, "\u76ee\u7684\uff1a"

    .line 69
    .line 70
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v2, v0, Lha/v9;->q:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 74
    .line 75
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 88
    .line 89
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 90
    .line 91
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 92
    .line 93
    iget-object v1, v0, Lha/v9;->q:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 94
    .line 95
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->size_success:Ljava/util/concurrent/atomic/AtomicLong;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 98
    .line 99
    .line 100
    move-result-wide v1

    .line 101
    long-to-double v1, v1

    .line 102
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 103
    .line 104
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 105
    .line 106
    .line 107
    mul-double v1, v1, v3

    .line 108
    .line 109
    iget-object v3, v0, Lha/v9;->q:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 110
    .line 111
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->size_count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 114
    .line 115
    .line 116
    move-result-wide v3

    .line 117
    long-to-double v3, v3

    .line 118
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 119
    .line 120
    .line 121
    div-double/2addr v1, v3

    .line 122
    invoke-virtual {p1, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iput-object p1, v0, Lha/v9;->v:Ljava/lang/String;

    .line 127
    .line 128
    iget-object p1, v0, Lha/v9;->h:Landroid/widget/TextView;

    .line 129
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object v2, v0, Lha/v9;->v:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v2, "%"

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    iget-object p1, v0, Lha/v9;->m:Lcom/yunpan/appmanage/view/MyProgressViewTest;

    .line 153
    .line 154
    iget-object v1, v0, Lha/v9;->v:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    invoke-virtual {p1, v1}, Lcom/yunpan/appmanage/view/MyProgressViewTest;->setCurrentCount(F)V

    .line 165
    .line 166
    .line 167
    iget-object p1, v0, Lha/v9;->k:Landroid/widget/TextView;

    .line 168
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    iget-object v2, v0, Lha/v9;->q:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 175
    .line 176
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->size_success:Ljava/util/concurrent/atomic/AtomicLong;

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 179
    .line 180
    .line 181
    move-result-wide v2

    .line 182
    long-to-double v2, v2

    .line 183
    invoke-static {v2, v3}, Lif/a;->D0(D)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v2, "/"

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    iget-object v3, v0, Lha/v9;->q:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 196
    .line 197
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->size_count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 198
    .line 199
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 200
    .line 201
    .line 202
    move-result-wide v3

    .line 203
    long-to-double v3, v3

    .line 204
    invoke-static {v3, v4}, Lif/a;->D0(D)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    iget-object p1, v0, Lha/v9;->n:Landroid/widget/TextView;

    .line 219
    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    iget-object v3, v0, Lha/v9;->q:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 226
    .line 227
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_success:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 228
    .line 229
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    iget-object v2, v0, Lha/v9;->q:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 236
    .line 237
    iget v2, v2, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_count:I

    .line 238
    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 250
    .line 251
    .line 252
    move-result-wide v1

    .line 253
    iget-object p1, v0, Lha/v9;->p:Landroid/widget/TextView;

    .line 254
    .line 255
    iget-wide v3, v0, Lha/v9;->t:J

    .line 256
    .line 257
    sub-long v9, v1, v3

    .line 258
    .line 259
    invoke-static {v9, v10}, Lha/v9;->b(J)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    iget-object p1, v0, Lha/v9;->q:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 267
    .line 268
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->size_success:Ljava/util/concurrent/atomic/AtomicLong;

    .line 269
    .line 270
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 271
    .line 272
    .line 273
    move-result-wide v11

    .line 274
    iget-object p1, v0, Lha/v9;->l:Landroid/widget/TextView;

    .line 275
    .line 276
    new-instance v13, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    const-string v3, "\u5747\u901f:"

    .line 279
    .line 280
    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    const-wide/16 v5, 0x0

    .line 284
    .line 285
    move-wide v7, v11

    .line 286
    invoke-static/range {v5 .. v10}, Lha/v9;->a(JJJ)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string v3, " MB/s   \u5b9e\u65f6:"

    .line 294
    .line 295
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    iget-wide v3, v0, Lha/v9;->r:J

    .line 299
    .line 300
    iget-wide v5, v0, Lha/v9;->s:J

    .line 301
    .line 302
    sub-long v7, v1, v5

    .line 303
    .line 304
    move-wide v5, v11

    .line 305
    invoke-static/range {v3 .. v8}, Lha/v9;->a(JJJ)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v3, " MB/s"

    .line 313
    .line 314
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    .line 323
    .line 324
    iput-wide v1, v0, Lha/v9;->s:J

    .line 325
    .line 326
    iput-wide v11, v0, Lha/v9;->r:J

    .line 327
    .line 328
    return-void

    .line 329
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/p7;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lha/hb;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const-string p1, "\u65b0\u5efa\u6210\u529f"

    .line 12
    .line 13
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 14
    .line 15
    .line 16
    iget-object p1, v0, Lha/hb;->h:Lha/gb;

    .line 17
    .line 18
    iget-object p2, v0, Lha/hb;->g:Lx9/w3;

    .line 19
    .line 20
    invoke-interface {p1, p2}, Lha/gb;->a(Lx9/w3;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public f(Lx9/w3;)V
    .locals 3

    .line 1
    iget v0, p0, Lha/p7;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/p7;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lha/pd;

    .line 9
    .line 10
    iget-object v0, v0, Lha/pd;->c:Lha/qd;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v1, Ld2/w;

    .line 16
    .line 17
    const/16 v2, 0x1a

    .line 18
    .line 19
    invoke-direct {v1, v0, v2, p1}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lmc/c;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {p1, v2, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v1, Lha/pd;

    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    invoke-direct {v1, v0, v2}, Lha/pd;-><init>(Lha/qd;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lec/b;->b(Lec/e;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lha/p7;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lha/h3;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v0, v0, Lha/h3;->d:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lha/sa;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    sget-object v1, Lfa/a;->b:Lfa/e0;

    .line 69
    .line 70
    invoke-virtual {v1}, Lfa/e0;->c()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_0

    .line 75
    .line 76
    const-string p1, "OTG\u5df2\u65ad\u5f00\uff0c\u8bf7\u91cd\u65b0\u8fde\u63a5"

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_1

    .line 91
    .line 92
    const-string p1, "apk\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 93
    .line 94
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    new-instance v1, Lb8/a;

    .line 99
    .line 100
    const/4 v2, 0x5

    .line 101
    invoke-direct {v1, p1, v2}, Lb8/a;-><init>(Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    new-instance p1, Lmc/c;

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    invoke-direct {p1, v2, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-instance v1, Lha/ra;

    .line 125
    .line 126
    const/4 v2, 0x0

    .line 127
    invoke-direct {v1, v0, v2}, Lha/ra;-><init>(Lha/sa;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v1}, Lec/b;->b(Lec/e;)V

    .line 131
    .line 132
    .line 133
    :goto_0
    return-void

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lmc/b;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "\u767b\u5f55\u5931\u8d25"

    .line 6
    .line 7
    const-string v3, "\u5df2\u5173\u95ed\u767b\u5f55"

    .line 8
    .line 9
    const-string v4, "\"}"

    .line 10
    .line 11
    iget-object v5, v1, Lha/p7;->b:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    iget v8, v1, Lha/p7;->a:I

    .line 15
    .line 16
    sparse-switch v8, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    const-string v6, "code"

    .line 20
    .line 21
    check-cast v5, Lha/bf;

    .line 22
    .line 23
    iget-object v8, v5, Lha/bf;->h:Lx9/n5;

    .line 24
    .line 25
    :try_start_0
    invoke-static {v8}, Lqf/c;->L(Lx9/n5;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    invoke-virtual {v2, v9}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-boolean v9, v5, Lha/bf;->i:Z

    .line 33
    .line 34
    if-nez v9, :cond_7

    .line 35
    .line 36
    new-instance v9, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v10, "https://login.123pan.com/api/user/qr-code/result?uniID="

    .line 42
    .line 43
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v10, v8, Lx9/n5;->m:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-static {v8, v9}, Lqf/c;->M(Lx9/n5;Ljava/lang/String;)Lz7/s;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 60
    .line 61
    invoke-virtual {v9}, Lz7/p;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    invoke-virtual {v10}, Lz7/p;->e()I

    .line 72
    .line 73
    .line 74
    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const-string v11, "token"

    .line 76
    .line 77
    const/16 v12, 0xc8

    .line 78
    .line 79
    const-string v13, "data"

    .line 80
    .line 81
    if-ne v10, v12, :cond_0

    .line 82
    .line 83
    :try_start_1
    invoke-virtual {v9, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, v8, Lx9/n5;->k:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :catch_0
    move-exception v0

    .line 107
    goto/16 :goto_2

    .line 108
    .line 109
    :cond_0
    if-nez v10, :cond_6

    .line 110
    .line 111
    invoke-virtual {v9, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-virtual {v10}, Lz7/p;->g()Lz7/s;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    const-string v14, "loginStatus"

    .line 120
    .line 121
    invoke-virtual {v10, v14}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    invoke-virtual {v10}, Lz7/p;->e()I

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    invoke-virtual {v9, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-virtual {v9}, Lz7/p;->g()Lz7/s;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    const-string v14, "scanPlatform"

    .line 138
    .line 139
    invoke-virtual {v9, v14}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    invoke-virtual {v9}, Lz7/p;->e()I

    .line 144
    .line 145
    .line 146
    if-ne v10, v7, :cond_1

    .line 147
    .line 148
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    invoke-virtual {v2, v9}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :cond_1
    const/4 v9, 0x3

    .line 158
    if-ne v10, v9, :cond_5

    .line 159
    .line 160
    const-string v9, "https://login.123pan.com/api/user/qr-code/wx_code"

    .line 161
    .line 162
    new-instance v10, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v14, "{\"uniID\":\""

    .line 168
    .line 169
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-object v14, v8, Lx9/n5;->m:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    invoke-static {v8, v9, v10}, Lqf/c;->N(Lx9/n5;Ljava/lang/String;Ljava/lang/String;)Lz7/s;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    invoke-virtual {v9, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    invoke-virtual {v10}, Lz7/p;->e()I

    .line 193
    .line 194
    .line 195
    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    const-string v14, "message"

    .line 197
    .line 198
    const-string v15, "\u767b\u5f55\u5931\u8d25\uff1a"

    .line 199
    .line 200
    if-nez v10, :cond_4

    .line 201
    .line 202
    :try_start_2
    invoke-virtual {v9, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    invoke-virtual {v9}, Lz7/p;->g()Lz7/s;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    const-string v10, "wxCode"

    .line 211
    .line 212
    invoke-virtual {v9, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    invoke-virtual {v9}, Lz7/p;->i()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    const-string v10, "https://login.123pan.com/api/user/sign_in"

    .line 221
    .line 222
    new-instance v7, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    const-string v12, "{\"from\":\"web\",\"wechat_code\":\""

    .line 228
    .line 229
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v9, "\",\"type\":4,\"remember\":true,\"gray\":true}"

    .line 236
    .line 237
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    invoke-static {v8, v10, v7}, Lqf/c;->N(Lx9/n5;Ljava/lang/String;Ljava/lang/String;)Lz7/s;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    invoke-virtual {v7, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    invoke-virtual {v9}, Lz7/p;->e()I

    .line 253
    .line 254
    .line 255
    move-result v9

    .line 256
    const/16 v10, 0xc8

    .line 257
    .line 258
    if-ne v9, v10, :cond_3

    .line 259
    .line 260
    invoke-virtual {v7, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    const-string v3, "bind"

    .line 269
    .line 270
    invoke-virtual {v0, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-nez v0, :cond_2

    .line 279
    .line 280
    new-instance v0, Ljava/lang/Exception;

    .line 281
    .line 282
    const-string v3, "\u6b64\u5fae\u4fe1\u53f7\u672a\u7ed1\u5b9a123\u4e91\u76d8\u8d26\u53f7"

    .line 283
    .line 284
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_3

    .line 291
    .line 292
    :cond_2
    invoke-virtual {v7, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v0, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    iput-object v0, v8, Lx9/n5;->k:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_3

    .line 314
    .line 315
    :cond_3
    new-instance v9, Ljava/lang/Exception;

    .line 316
    .line 317
    new-instance v10, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v7, v14}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    invoke-virtual {v7}, Lz7/p;->i()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v7

    .line 340
    invoke-direct {v9, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v9}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 344
    .line 345
    .line 346
    goto :goto_1

    .line 347
    :cond_4
    new-instance v7, Ljava/lang/Exception;

    .line 348
    .line 349
    new-instance v10, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v9, v14}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 358
    .line 359
    .line 360
    move-result-object v9

    .line 361
    invoke-virtual {v9}, Lz7/p;->i()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v9

    .line 365
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v9

    .line 372
    invoke-direct {v7, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v7}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 376
    .line 377
    .line 378
    goto :goto_1

    .line 379
    :cond_5
    const/4 v7, 0x4

    .line 380
    if-ne v10, v7, :cond_6

    .line 381
    .line 382
    invoke-static {v8}, Lqf/c;->L(Lx9/n5;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v7

    .line 386
    invoke-virtual {v2, v7}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    invoke-virtual {v2, v7}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    const-string v7, "\u4e8c\u7ef4\u7801\u5df2\u5237\u65b0"

    .line 397
    .line 398
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    :cond_6
    :goto_1
    const-wide/16 v9, 0x1f4

    .line 402
    .line 403
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 404
    .line 405
    .line 406
    const/4 v7, 0x1

    .line 407
    goto/16 :goto_0

    .line 408
    .line 409
    :cond_7
    if-eqz v9, :cond_8

    .line 410
    .line 411
    new-instance v0, Ljava/lang/Exception;

    .line 412
    .line 413
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 417
    .line 418
    .line 419
    goto :goto_3

    .line 420
    :cond_8
    new-instance v3, Ljava/lang/Exception;

    .line 421
    .line 422
    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v2, v3}, Lmc/b;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 426
    .line 427
    .line 428
    goto :goto_3

    .line 429
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 433
    .line 434
    .line 435
    :goto_3
    return-void

    .line 436
    :sswitch_0
    const-string v6, "error_code"

    .line 437
    .line 438
    const-string v7, "access_token"

    .line 439
    .line 440
    check-cast v5, Lha/bf;

    .line 441
    .line 442
    iget-object v8, v5, Lha/bf;->h:Lx9/n5;

    .line 443
    .line 444
    :try_start_3
    invoke-static {v8}, Ls1/g;->L(Lx9/n5;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v9

    .line 448
    invoke-virtual {v2, v9}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    :cond_9
    :goto_4
    iget-boolean v9, v5, Lha/bf;->i:Z

    .line 452
    .line 453
    if-nez v9, :cond_c

    .line 454
    .line 455
    const-wide/16 v9, 0x3e8

    .line 456
    .line 457
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 458
    .line 459
    .line 460
    new-instance v9, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .line 464
    .line 465
    const-string v10, "{\"grant_type\":\"urn:ietf:params:oauth:grant-type:device_code\",\"device_code\":\""

    .line 466
    .line 467
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    iget-object v10, v8, Lx9/n5;->p:Ljava/lang/String;

    .line 471
    .line 472
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    const-string v10, "\",\"client_id\":\""

    .line 476
    .line 477
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    const-string v10, "aMe-8VSlkrbQXpUR"

    .line 481
    .line 482
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v9

    .line 492
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 493
    .line 494
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    .line 496
    .line 497
    const-string v10, "https://account.guangyapan.com/v1/auth/token"

    .line 498
    .line 499
    invoke-static {v10, v9}, Ls1/g;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v9

    .line 503
    invoke-static {v9}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 504
    .line 505
    .line 506
    move-result-object v9

    .line 507
    invoke-virtual {v9}, Lz7/p;->g()Lz7/s;

    .line 508
    .line 509
    .line 510
    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 511
    iget-object v10, v9, Lz7/s;->a:Lb8/n;

    .line 512
    .line 513
    :try_start_4
    invoke-virtual {v10, v7}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result v11

    .line 517
    if-eqz v11, :cond_a

    .line 518
    .line 519
    invoke-virtual {v9, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    iput-object v0, v8, Lx9/n5;->r:Ljava/lang/String;

    .line 528
    .line 529
    const-string v0, "refresh_token"

    .line 530
    .line 531
    invoke-virtual {v9, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    iput-object v0, v8, Lx9/n5;->s:Ljava/lang/String;

    .line 540
    .line 541
    const-string v0, "sub"

    .line 542
    .line 543
    invoke-virtual {v9, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    iput-object v0, v8, Lx9/n5;->t:Ljava/lang/String;

    .line 552
    .line 553
    invoke-static {v8}, Ls1/g;->k0(Lx9/n5;)Z

    .line 554
    .line 555
    .line 556
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 557
    .line 558
    .line 559
    goto :goto_6

    .line 560
    :catch_1
    move-exception v0

    .line 561
    goto :goto_5

    .line 562
    :cond_a
    invoke-virtual {v10, v6}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result v10

    .line 566
    if-nez v10, :cond_b

    .line 567
    .line 568
    new-instance v0, Ljava/lang/Exception;

    .line 569
    .line 570
    const-string v3, "\u51fa\u9519\uff1a\u8bf7\u91cd\u65b0\u5c1d\u8bd5"

    .line 571
    .line 572
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 576
    .line 577
    .line 578
    goto :goto_6

    .line 579
    :cond_b
    invoke-virtual {v9, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 580
    .line 581
    .line 582
    move-result-object v9

    .line 583
    invoke-virtual {v9}, Lz7/p;->e()I

    .line 584
    .line 585
    .line 586
    move-result v9

    .line 587
    const/16 v10, 0xfd4

    .line 588
    .line 589
    if-ne v9, v10, :cond_9

    .line 590
    .line 591
    invoke-static {v8}, Ls1/g;->L(Lx9/n5;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v9

    .line 595
    invoke-virtual {v2, v9}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 596
    .line 597
    .line 598
    goto/16 :goto_4

    .line 599
    .line 600
    :cond_c
    if-eqz v9, :cond_d

    .line 601
    .line 602
    new-instance v0, Ljava/lang/Exception;

    .line 603
    .line 604
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 608
    .line 609
    .line 610
    goto :goto_6

    .line 611
    :cond_d
    new-instance v3, Ljava/lang/Exception;

    .line 612
    .line 613
    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v2, v3}, Lmc/b;->d(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 617
    .line 618
    .line 619
    goto :goto_6

    .line 620
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 624
    .line 625
    .line 626
    :goto_6
    return-void

    .line 627
    :sswitch_1
    const-string v3, "addSuppressed"

    .line 628
    .line 629
    const-class v4, Ljava/lang/Throwable;

    .line 630
    .line 631
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 632
    .line 633
    check-cast v5, Lha/z6;

    .line 634
    .line 635
    iget-object v7, v5, Lha/z6;->m:Ljava/lang/Object;

    .line 636
    .line 637
    check-cast v7, Lba/o;

    .line 638
    .line 639
    iget-object v8, v7, Lba/o;->f:Ljava/lang/String;

    .line 640
    .line 641
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    iget-object v10, v7, Lba/o;->g:Ljava/lang/String;

    .line 645
    .line 646
    iget-object v11, v7, Lba/o;->h:Ljava/lang/String;

    .line 647
    .line 648
    iget-wide v12, v7, Lba/o;->i:J

    .line 649
    .line 650
    iget-wide v14, v7, Lba/o;->j:J

    .line 651
    .line 652
    :try_start_5
    iget-object v9, v7, Lba/o;->f:Ljava/lang/String;

    .line 653
    .line 654
    invoke-static/range {v9 .. v15}, Ls1/g;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lokhttp3/ResponseBody;

    .line 655
    .line 656
    .line 657
    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 658
    :try_start_6
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 659
    .line 660
    .line 661
    move-result-object v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_12

    .line 662
    :try_start_7
    new-instance v9, Ljava/io/FileOutputStream;

    .line 663
    .line 664
    iget-object v0, v5, Lha/z6;->h:Ljava/lang/String;

    .line 665
    .line 666
    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_f

    .line 667
    .line 668
    .line 669
    :try_start_8
    new-instance v10, Ljava/io/BufferedInputStream;

    .line 670
    .line 671
    invoke-direct {v10, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    .line 672
    .line 673
    .line 674
    :try_start_9
    new-instance v11, Ljava/io/BufferedOutputStream;

    .line 675
    .line 676
    invoke-direct {v11, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 677
    .line 678
    .line 679
    :try_start_a
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->contentLength()J

    .line 680
    .line 681
    .line 682
    move-result-wide v12

    .line 683
    const/high16 v0, 0x100000

    .line 684
    .line 685
    new-array v0, v0, [B

    .line 686
    .line 687
    const-wide/16 v14, 0x0

    .line 688
    .line 689
    :goto_7
    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    .line 690
    .line 691
    .line 692
    move-result v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 693
    const/4 v1, -0x1

    .line 694
    if-eq v6, v1, :cond_e

    .line 695
    .line 696
    move-object v1, v3

    .line 697
    move-object/from16 v16, v4

    .line 698
    .line 699
    int-to-long v3, v6

    .line 700
    add-long/2addr v14, v3

    .line 701
    const/4 v3, 0x0

    .line 702
    :try_start_b
    invoke-virtual {v11, v0, v3, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 706
    .line 707
    .line 708
    long-to-double v3, v14

    .line 709
    move-wide/from16 v17, v14

    .line 710
    .line 711
    long-to-double v14, v12

    .line 712
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 713
    .line 714
    .line 715
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    .line 716
    .line 717
    .line 718
    div-double/2addr v3, v14

    .line 719
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    .line 720
    .line 721
    mul-double v3, v3, v14

    .line 722
    .line 723
    :try_start_c
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 724
    .line 725
    .line 726
    move-result-wide v3

    .line 727
    double-to-int v3, v3

    .line 728
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    invoke-virtual {v2, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 733
    .line 734
    .line 735
    move-object v3, v1

    .line 736
    move-object/from16 v4, v16

    .line 737
    .line 738
    move-wide/from16 v14, v17

    .line 739
    .line 740
    move-object/from16 v1, p0

    .line 741
    .line 742
    goto :goto_7

    .line 743
    :goto_8
    move-object v3, v0

    .line 744
    goto/16 :goto_b

    .line 745
    .line 746
    :catchall_0
    move-exception v0

    .line 747
    goto :goto_8

    .line 748
    :cond_e
    move-object v1, v3

    .line 749
    move-object/from16 v16, v4

    .line 750
    .line 751
    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 752
    .line 753
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 754
    .line 755
    .line 756
    :try_start_d
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 757
    .line 758
    .line 759
    :try_start_e
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 760
    .line 761
    .line 762
    :try_start_f
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 763
    .line 764
    .line 765
    if-eqz v8, :cond_f

    .line 766
    .line 767
    :try_start_10
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 768
    .line 769
    .line 770
    goto :goto_9

    .line 771
    :catchall_1
    move-exception v0

    .line 772
    move-object v3, v0

    .line 773
    move-object/from16 v11, v16

    .line 774
    .line 775
    goto/16 :goto_17

    .line 776
    .line 777
    :cond_f
    :goto_9
    :try_start_11
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    .line 778
    .line 779
    .line 780
    :try_start_12
    iget-object v0, v5, Lha/z6;->h:Ljava/lang/String;

    .line 781
    .line 782
    invoke-static {v0}, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    new-instance v1, Ljava/io/File;

    .line 787
    .line 788
    iget-object v3, v5, Lha/z6;->h:Ljava/lang/String;

    .line 789
    .line 790
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    .line 794
    .line 795
    .line 796
    :try_start_13
    new-instance v1, Ljava/io/File;

    .line 797
    .line 798
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    new-instance v3, Ljava/io/File;

    .line 802
    .line 803
    iget-object v4, v5, Lha/z6;->h:Ljava/lang/String;

    .line 804
    .line 805
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 809
    .line 810
    .line 811
    move-result v1

    .line 812
    if-eqz v1, :cond_10

    .line 813
    .line 814
    goto :goto_a

    .line 815
    :cond_10
    new-instance v1, Ljava/lang/Exception;

    .line 816
    .line 817
    const-string v3, "\u5931\u8d25"

    .line 818
    .line 819
    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    throw v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    .line 823
    :catch_2
    :try_start_14
    iget-object v1, v5, Lha/z6;->h:Ljava/lang/String;

    .line 824
    .line 825
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->e(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    .line 826
    .line 827
    .line 828
    :catch_3
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 829
    .line 830
    .line 831
    goto/16 :goto_1a

    .line 832
    .line 833
    :catch_4
    move-exception v0

    .line 834
    goto/16 :goto_19

    .line 835
    .line 836
    :catchall_2
    move-exception v0

    .line 837
    move-object v3, v0

    .line 838
    move-object/from16 v11, v16

    .line 839
    .line 840
    goto/16 :goto_14

    .line 841
    .line 842
    :catchall_3
    move-exception v0

    .line 843
    move-object v3, v0

    .line 844
    move-object/from16 v11, v16

    .line 845
    .line 846
    goto/16 :goto_11

    .line 847
    .line 848
    :catchall_4
    move-exception v0

    .line 849
    move-object v3, v0

    .line 850
    move-object/from16 v11, v16

    .line 851
    .line 852
    goto :goto_e

    .line 853
    :catchall_5
    move-exception v0

    .line 854
    move-object v1, v3

    .line 855
    move-object/from16 v16, v4

    .line 856
    .line 857
    goto :goto_8

    .line 858
    :goto_b
    :try_start_15
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 859
    .line 860
    .line 861
    :catch_5
    move-object/from16 v11, v16

    .line 862
    .line 863
    goto :goto_d

    .line 864
    :catchall_6
    move-exception v0

    .line 865
    move-object v4, v0

    .line 866
    const/4 v5, 0x1

    .line 867
    :try_start_16
    new-array v0, v5, [Ljava/lang/Class;

    .line 868
    .line 869
    const/4 v6, 0x0

    .line 870
    aput-object v16, v0, v6
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 871
    .line 872
    move-object/from16 v11, v16

    .line 873
    .line 874
    :try_start_17
    invoke-virtual {v11, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    new-array v12, v5, [Ljava/lang/Object;

    .line 879
    .line 880
    aput-object v4, v12, v6

    .line 881
    .line 882
    invoke-virtual {v0, v3, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 883
    .line 884
    .line 885
    goto :goto_d

    .line 886
    :catchall_7
    move-exception v0

    .line 887
    move-object/from16 v11, v16

    .line 888
    .line 889
    :goto_c
    move-object v3, v0

    .line 890
    goto :goto_e

    .line 891
    :catch_6
    :goto_d
    :try_start_18
    throw v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 892
    :catchall_8
    move-exception v0

    .line 893
    goto :goto_c

    .line 894
    :catchall_9
    move-exception v0

    .line 895
    move-object v1, v3

    .line 896
    move-object v11, v4

    .line 897
    goto :goto_c

    .line 898
    :goto_e
    :try_start_19
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 899
    .line 900
    .line 901
    goto :goto_10

    .line 902
    :catchall_a
    move-exception v0

    .line 903
    move-object v4, v0

    .line 904
    const/4 v5, 0x1

    .line 905
    :try_start_1a
    new-array v0, v5, [Ljava/lang/Class;

    .line 906
    .line 907
    const/4 v6, 0x0

    .line 908
    aput-object v11, v0, v6

    .line 909
    .line 910
    invoke-virtual {v11, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    new-array v10, v5, [Ljava/lang/Object;

    .line 915
    .line 916
    aput-object v4, v10, v6

    .line 917
    .line 918
    invoke-virtual {v0, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    .line 919
    .line 920
    .line 921
    goto :goto_10

    .line 922
    :goto_f
    move-object v3, v0

    .line 923
    goto :goto_11

    .line 924
    :catch_7
    :goto_10
    :try_start_1b
    throw v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    .line 925
    :catchall_b
    move-exception v0

    .line 926
    goto :goto_f

    .line 927
    :catchall_c
    move-exception v0

    .line 928
    move-object v1, v3

    .line 929
    move-object v11, v4

    .line 930
    goto :goto_f

    .line 931
    :goto_11
    :try_start_1c
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    .line 932
    .line 933
    .line 934
    goto :goto_13

    .line 935
    :catchall_d
    move-exception v0

    .line 936
    move-object v4, v0

    .line 937
    const/4 v5, 0x1

    .line 938
    :try_start_1d
    new-array v0, v5, [Ljava/lang/Class;

    .line 939
    .line 940
    const/4 v6, 0x0

    .line 941
    aput-object v11, v0, v6

    .line 942
    .line 943
    invoke-virtual {v11, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    new-array v9, v5, [Ljava/lang/Object;

    .line 948
    .line 949
    aput-object v4, v9, v6

    .line 950
    .line 951
    invoke-virtual {v0, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    .line 952
    .line 953
    .line 954
    goto :goto_13

    .line 955
    :goto_12
    move-object v3, v0

    .line 956
    goto :goto_14

    .line 957
    :catch_8
    :goto_13
    :try_start_1e
    throw v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    .line 958
    :catchall_e
    move-exception v0

    .line 959
    goto :goto_12

    .line 960
    :catchall_f
    move-exception v0

    .line 961
    move-object v1, v3

    .line 962
    move-object v11, v4

    .line 963
    goto :goto_12

    .line 964
    :goto_14
    if-eqz v8, :cond_11

    .line 965
    .line 966
    :try_start_1f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    .line 967
    .line 968
    .line 969
    goto :goto_16

    .line 970
    :catchall_10
    move-exception v0

    .line 971
    move-object v4, v0

    .line 972
    const/4 v5, 0x1

    .line 973
    :try_start_20
    new-array v0, v5, [Ljava/lang/Class;

    .line 974
    .line 975
    const/4 v6, 0x0

    .line 976
    aput-object v11, v0, v6

    .line 977
    .line 978
    invoke-virtual {v11, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 979
    .line 980
    .line 981
    move-result-object v0

    .line 982
    new-array v8, v5, [Ljava/lang/Object;

    .line 983
    .line 984
    aput-object v4, v8, v6

    .line 985
    .line 986
    invoke-virtual {v0, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    .line 987
    .line 988
    .line 989
    goto :goto_16

    .line 990
    :goto_15
    move-object v3, v0

    .line 991
    goto :goto_17

    .line 992
    :catch_9
    :cond_11
    :goto_16
    :try_start_21
    throw v3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    .line 993
    :catchall_11
    move-exception v0

    .line 994
    goto :goto_15

    .line 995
    :catchall_12
    move-exception v0

    .line 996
    move-object v1, v3

    .line 997
    move-object v11, v4

    .line 998
    goto :goto_15

    .line 999
    :goto_17
    :try_start_22
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_13

    .line 1000
    .line 1001
    .line 1002
    goto :goto_18

    .line 1003
    :catchall_13
    move-exception v0

    .line 1004
    move-object v4, v0

    .line 1005
    const/4 v5, 0x1

    .line 1006
    :try_start_23
    new-array v0, v5, [Ljava/lang/Class;

    .line 1007
    .line 1008
    const/4 v6, 0x0

    .line 1009
    aput-object v11, v0, v6

    .line 1010
    .line 1011
    invoke-virtual {v11, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v0

    .line 1015
    new-array v1, v5, [Ljava/lang/Object;

    .line 1016
    .line 1017
    aput-object v4, v1, v6

    .line 1018
    .line 1019
    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_a

    .line 1020
    .line 1021
    .line 1022
    :catch_a
    :goto_18
    :try_start_24
    throw v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_4

    .line 1023
    :goto_19
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1024
    .line 1025
    .line 1026
    :goto_1a
    return-void

    .line 1027
    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const/4 v4, 0x7

    .line 8
    const/16 v5, 0x15

    .line 9
    .line 10
    const/16 v6, 0x14

    .line 11
    .line 12
    const/16 v7, 0x1c

    .line 13
    .line 14
    const/4 v8, 0x6

    .line 15
    const/4 v9, 0x5

    .line 16
    const/4 v10, 0x4

    .line 17
    const/4 v11, 0x3

    .line 18
    const/4 v12, 0x2

    .line 19
    const/4 v13, 0x0

    .line 20
    const/4 v14, 0x1

    .line 21
    iget-object v15, v0, Lha/p7;->b:Ljava/lang/Object;

    .line 22
    .line 23
    iget v3, v0, Lha/p7;->a:I

    .line 24
    .line 25
    packed-switch v3, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    :pswitch_0
    check-cast v15, Lha/gf;

    .line 29
    .line 30
    iget-object v1, v15, Lha/gf;->h:Lx9/s3;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lx9/t3;

    .line 37
    .line 38
    iget-object v2, v1, Lx9/t3;->c:Ljava/lang/String;

    .line 39
    .line 40
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 41
    .line 42
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 43
    .line 44
    iget-boolean v4, v3, Lcom/yunpan/appmanage/util/k;->F:Z

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    iget-object v4, v3, Lcom/yunpan/appmanage/util/k;->E:Lcom/yunpan/appmanage/httpserver/RemoteServer;

    .line 50
    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->stop()V

    .line 54
    .line 55
    .line 56
    iput-object v5, v3, Lcom/yunpan/appmanage/util/k;->E:Lcom/yunpan/appmanage/httpserver/RemoteServer;

    .line 57
    .line 58
    :cond_0
    iget-object v4, v3, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 59
    .line 60
    new-instance v6, Landroid/content/Intent;

    .line 61
    .line 62
    iget-object v7, v3, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 63
    .line 64
    const-class v8, Lcom/yunpan/appmanage/service/HttpService;

    .line 65
    .line 66
    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 70
    .line 71
    .line 72
    iput-boolean v14, v3, Lcom/yunpan/appmanage/util/k;->F:Z

    .line 73
    .line 74
    :cond_1
    invoke-virtual {v15}, Landroid/app/Dialog;->dismiss()V

    .line 75
    .line 76
    .line 77
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    iget-object v4, v3, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->randomFile_smb1:Lce/x0;

    .line 82
    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    :try_start_0
    iget-object v3, v4, Lce/x0;->a:Lce/t0;

    .line 86
    .line 87
    invoke-virtual {v3}, Lce/t0;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    :catch_0
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 91
    .line 92
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 93
    .line 94
    iput-object v5, v3, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->randomFile_smb1:Lce/x0;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->randomFile_smb2:Lvd/x;

    .line 98
    .line 99
    if-eqz v3, :cond_3

    .line 100
    .line 101
    :try_start_1
    invoke-virtual {v3}, Lvd/x;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    .line 103
    .line 104
    :catch_1
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 105
    .line 106
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 107
    .line 108
    iput-object v5, v3, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->randomFile_smb2:Lvd/x;

    .line 109
    .line 110
    :try_start_2
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->file_smb2:Lvd/s;

    .line 111
    .line 112
    invoke-virtual {v3}, Lvd/s;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 113
    .line 114
    .line 115
    :catch_2
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 116
    .line 117
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 118
    .line 119
    iput-object v5, v3, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->file_smb2:Lvd/s;

    .line 120
    .line 121
    :cond_3
    :goto_0
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 122
    .line 123
    iput-object v5, v3, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 124
    .line 125
    :cond_4
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 126
    .line 127
    iget-object v4, v3, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 128
    .line 129
    iget v5, v4, Lx9/n5;->a:I

    .line 130
    .line 131
    iget-object v1, v1, Lx9/t3;->d:Ljava/lang/String;

    .line 132
    .line 133
    if-ne v5, v11, :cond_5

    .line 134
    .line 135
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->H:Ljava/lang/String;

    .line 136
    .line 137
    new-instance v5, Lma/b;

    .line 138
    .line 139
    invoke-direct {v5, v4, v12, v3}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    new-instance v3, Lmc/c;

    .line 143
    .line 144
    invoke-direct {v3, v13, v5}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    sget-object v4, Lrc/f;->b:Lec/j;

    .line 148
    .line 149
    invoke-virtual {v3, v4}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v3, v4}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    new-instance v4, Lha/ze;

    .line 162
    .line 163
    invoke-direct {v4, v15, v2, v1, v12}, Lha/ze;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v4}, Lec/b;->b(Lec/e;)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_5
    :try_start_3
    new-instance v3, Landroid/content/Intent;

    .line 171
    .line 172
    const-string v4, "android.intent.action.VIEW"

    .line 173
    .line 174
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string v4, "android.intent.category.DEFAULT"

    .line 178
    .line 179
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    const/high16 v4, 0x4000000

    .line 183
    .line 184
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    .line 186
    .line 187
    iget-object v4, v15, Lha/gf;->i:Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    iget-object v5, v15, Lha/gf;->j:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    new-instance v4, Landroid/content/ComponentName;

    .line 199
    .line 200
    invoke-direct {v4, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 204
    .line 205
    .line 206
    iget-object v1, v15, Lha/a4;->b:Landroid/content/Context;

    .line 207
    .line 208
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :catch_3
    const-string v1, "\u65e0\u6cd5\u8c03\u7528\u7b2c\u4e09\u65b9\u6253\u5f00"

    .line 213
    .line 214
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 215
    .line 216
    .line 217
    :goto_1
    return-void

    .line 218
    :pswitch_1
    invoke-direct/range {p0 .. p3}, Lha/p7;->b(Lc6/g;Landroid/view/View;I)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :pswitch_2
    check-cast v15, Lha/te;

    .line 223
    .line 224
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v15, Lha/te;->h:Lx9/o5;

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    check-cast v1, Lx9/n5;

    .line 237
    .line 238
    iget v2, v1, Lx9/n5;->a:I

    .line 239
    .line 240
    if-ne v2, v8, :cond_6

    .line 241
    .line 242
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 243
    .line 244
    if-ge v2, v7, :cond_6

    .line 245
    .line 246
    const-string v1, "\u62b1\u6b49\uff0c\u6b64\u534f\u8bae\u6682\u65f6\u53ea\u652f\u6301android9.0\u4ee5\u4e0a\u8bbe\u5907"

    .line 247
    .line 248
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_4

    .line 252
    .line 253
    :cond_6
    invoke-virtual {v15}, Landroid/app/Dialog;->dismiss()V

    .line 254
    .line 255
    .line 256
    iget-object v2, v15, Lha/te;->i:Lua/r8;

    .line 257
    .line 258
    if-eqz v2, :cond_f

    .line 259
    .line 260
    iget-object v2, v2, Lua/r8;->b:Lua/i9;

    .line 261
    .line 262
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    iget v3, v1, Lx9/n5;->a:I

    .line 266
    .line 267
    if-eq v3, v14, :cond_e

    .line 268
    .line 269
    if-ne v3, v6, :cond_7

    .line 270
    .line 271
    goto/16 :goto_3

    .line 272
    .line 273
    :cond_7
    if-ne v3, v12, :cond_8

    .line 274
    .line 275
    new-instance v3, Lha/bf;

    .line 276
    .line 277
    iget-object v4, v2, Lda/h;->f:Landroid/app/Activity;

    .line 278
    .line 279
    iget-object v5, v2, Lda/h;->e:Landroid/content/Context;

    .line 280
    .line 281
    new-instance v6, Lua/x8;

    .line 282
    .line 283
    invoke-direct {v6, v2, v1, v14}, Lua/x8;-><init>(Lua/i9;Lx9/n5;I)V

    .line 284
    .line 285
    .line 286
    const/16 v21, 0x1

    .line 287
    .line 288
    move-object/from16 v16, v3

    .line 289
    .line 290
    move-object/from16 v17, v4

    .line 291
    .line 292
    move-object/from16 v18, v5

    .line 293
    .line 294
    move-object/from16 v19, v1

    .line 295
    .line 296
    move-object/from16 v20, v6

    .line 297
    .line 298
    invoke-direct/range {v16 .. v21}, Lha/bf;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Ljava/lang/Object;I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3}, Lha/a4;->show()V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_4

    .line 305
    .line 306
    :cond_8
    if-ne v3, v5, :cond_9

    .line 307
    .line 308
    new-instance v3, Lha/bf;

    .line 309
    .line 310
    iget-object v4, v2, Lda/h;->f:Landroid/app/Activity;

    .line 311
    .line 312
    iget-object v5, v2, Lda/h;->e:Landroid/content/Context;

    .line 313
    .line 314
    new-instance v6, Lua/x8;

    .line 315
    .line 316
    invoke-direct {v6, v2, v1, v12}, Lua/x8;-><init>(Lua/i9;Lx9/n5;I)V

    .line 317
    .line 318
    .line 319
    const/16 v21, 0x0

    .line 320
    .line 321
    move-object/from16 v16, v3

    .line 322
    .line 323
    move-object/from16 v17, v4

    .line 324
    .line 325
    move-object/from16 v18, v5

    .line 326
    .line 327
    move-object/from16 v19, v1

    .line 328
    .line 329
    move-object/from16 v20, v6

    .line 330
    .line 331
    invoke-direct/range {v16 .. v21}, Lha/bf;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Ljava/lang/Object;I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3}, Lha/a4;->show()V

    .line 335
    .line 336
    .line 337
    goto :goto_4

    .line 338
    :cond_9
    if-eq v3, v10, :cond_d

    .line 339
    .line 340
    if-ne v3, v9, :cond_a

    .line 341
    .line 342
    goto :goto_2

    .line 343
    :cond_a
    if-ne v3, v8, :cond_b

    .line 344
    .line 345
    new-instance v3, Lha/w;

    .line 346
    .line 347
    iget-object v4, v2, Lda/h;->f:Landroid/app/Activity;

    .line 348
    .line 349
    iget-object v5, v2, Lda/h;->e:Landroid/content/Context;

    .line 350
    .line 351
    new-instance v6, Lua/x8;

    .line 352
    .line 353
    invoke-direct {v6, v2, v1, v10}, Lua/x8;-><init>(Lua/i9;Lx9/n5;I)V

    .line 354
    .line 355
    .line 356
    invoke-direct {v3, v4, v5, v1, v6}, Lha/w;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/ic;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v3}, Lha/a4;->show()V

    .line 360
    .line 361
    .line 362
    goto :goto_4

    .line 363
    :cond_b
    if-ne v3, v11, :cond_c

    .line 364
    .line 365
    new-instance v3, Lha/s5;

    .line 366
    .line 367
    iget-object v4, v2, Lda/h;->f:Landroid/app/Activity;

    .line 368
    .line 369
    iget-object v5, v2, Lda/h;->e:Landroid/content/Context;

    .line 370
    .line 371
    new-instance v6, Lua/x8;

    .line 372
    .line 373
    invoke-direct {v6, v2, v1, v9}, Lua/x8;-><init>(Lua/i9;Lx9/n5;I)V

    .line 374
    .line 375
    .line 376
    invoke-direct {v3, v4, v5, v1, v6}, Lha/s5;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/oc;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3}, Lha/a4;->show()V

    .line 380
    .line 381
    .line 382
    goto :goto_4

    .line 383
    :cond_c
    if-ne v3, v4, :cond_f

    .line 384
    .line 385
    new-instance v3, Lha/se;

    .line 386
    .line 387
    iget-object v4, v2, Lda/h;->f:Landroid/app/Activity;

    .line 388
    .line 389
    iget-object v5, v2, Lda/h;->e:Landroid/content/Context;

    .line 390
    .line 391
    new-instance v6, Lua/x8;

    .line 392
    .line 393
    invoke-direct {v6, v2, v1, v8}, Lua/x8;-><init>(Lua/i9;Lx9/n5;I)V

    .line 394
    .line 395
    .line 396
    invoke-direct {v3, v4, v5, v1, v6}, Lha/se;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/re;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3}, Lha/a4;->show()V

    .line 400
    .line 401
    .line 402
    goto :goto_4

    .line 403
    :cond_d
    :goto_2
    new-instance v3, Lha/s5;

    .line 404
    .line 405
    iget-object v4, v2, Lda/h;->f:Landroid/app/Activity;

    .line 406
    .line 407
    iget-object v5, v2, Lda/h;->e:Landroid/content/Context;

    .line 408
    .line 409
    new-instance v6, Lua/x8;

    .line 410
    .line 411
    invoke-direct {v6, v2, v1, v11}, Lua/x8;-><init>(Lua/i9;Lx9/n5;I)V

    .line 412
    .line 413
    .line 414
    invoke-direct {v3, v4, v5, v1, v6}, Lha/s5;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/i6;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v3}, Lha/a4;->show()V

    .line 418
    .line 419
    .line 420
    goto :goto_4

    .line 421
    :cond_e
    :goto_3
    new-instance v3, Lha/ye;

    .line 422
    .line 423
    iget-object v4, v2, Lda/h;->f:Landroid/app/Activity;

    .line 424
    .line 425
    iget-object v5, v2, Lda/h;->e:Landroid/content/Context;

    .line 426
    .line 427
    new-instance v6, Lua/x8;

    .line 428
    .line 429
    invoke-direct {v6, v2, v1, v13}, Lua/x8;-><init>(Lua/i9;Lx9/n5;I)V

    .line 430
    .line 431
    .line 432
    invoke-direct {v3, v4, v5, v1, v6}, Lha/ye;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/xe;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v3}, Lha/a4;->show()V

    .line 436
    .line 437
    .line 438
    :cond_f
    :goto_4
    return-void

    .line 439
    :pswitch_3
    check-cast v15, Lha/ie;

    .line 440
    .line 441
    iget-object v1, v15, Lha/ie;->k:Lha/he;

    .line 442
    .line 443
    invoke-interface {v1, v2}, Lha/he;->b(I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v15}, Landroid/app/Dialog;->dismiss()V

    .line 447
    .line 448
    .line 449
    return-void

    .line 450
    :pswitch_4
    check-cast v15, Lha/id;

    .line 451
    .line 452
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    .line 454
    .line 455
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 456
    .line 457
    .line 458
    invoke-static/range {p2 .. p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 459
    .line 460
    .line 461
    iget-object v1, v15, Lha/id;->h:Lx9/b1;

    .line 462
    .line 463
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    check-cast v3, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 468
    .line 469
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/CmdBean;->name:Ljava/lang/String;

    .line 470
    .line 471
    const-string v4, "\u9009\u62e9\u9ed8\u8ba4\u684c\u9762"

    .line 472
    .line 473
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v4

    .line 477
    iget-object v6, v15, Lha/a4;->b:Landroid/content/Context;

    .line 478
    .line 479
    if-eqz v4, :cond_12

    .line 480
    .line 481
    invoke-static {v6}, Lqf/c;->r(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    if-ge v1, v12, :cond_10

    .line 490
    .line 491
    const-string v1, "\u53ea\u6709\u4e00\u4e2a\u684c\u9762\u5e94\u7528\uff0c\u65e0\u9700\u8bbe\u7f6e"

    .line 492
    .line 493
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 494
    .line 495
    .line 496
    goto/16 :goto_8

    .line 497
    .line 498
    :cond_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 499
    .line 500
    if-ge v1, v5, :cond_11

    .line 501
    .line 502
    invoke-static {v6}, Lqf/c;->Z(Landroid/content/Context;)V

    .line 503
    .line 504
    .line 505
    goto/16 :goto_8

    .line 506
    .line 507
    :cond_11
    new-instance v1, Lha/z6;

    .line 508
    .line 509
    new-instance v2, Lha/gd;

    .line 510
    .line 511
    invoke-direct {v2, v15, v13}, Lha/gd;-><init>(Lha/id;I)V

    .line 512
    .line 513
    .line 514
    iget-object v3, v15, Lha/a4;->a:Landroid/app/Activity;

    .line 515
    .line 516
    iget-object v4, v15, Lha/a4;->b:Landroid/content/Context;

    .line 517
    .line 518
    const-string v21, "\u660e\u767d"

    .line 519
    .line 520
    const-string v22, "\u7b97\u4e86"

    .line 521
    .line 522
    const-string v19, "\u5f39\u51fa\u9ed8\u8ba4\u684c\u9762\u9009\u62e9\u5668\uff0c\u8bf7\u9009\u4e2d\u4f60\u9700\u8981\u7684\u684c\u9762\u5e94\u7528 \n\n\u7136\u540e\u7b2c\u4e8c\u6b21\u70b9\u51fb\u6b64\u6309\u94ae\uff0c\u70b9\u51fb\u3010\u59cb\u7ec8\u3011\u5373\u53ef\u8bbe\u7f6e\u4e3a\u9ed8\u8ba4\u684c\u9762\uff01"

    .line 523
    .line 524
    const-string v20, ""

    .line 525
    .line 526
    move-object/from16 v16, v1

    .line 527
    .line 528
    move-object/from16 v17, v3

    .line 529
    .line 530
    move-object/from16 v18, v4

    .line 531
    .line 532
    move-object/from16 v23, v2

    .line 533
    .line 534
    invoke-direct/range {v16 .. v23}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 538
    .line 539
    .line 540
    goto/16 :goto_8

    .line 541
    .line 542
    :cond_12
    const-string v4, "\u70ed\u70b9\u5f00\u5173"

    .line 543
    .line 544
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    if-eqz v4, :cond_14

    .line 549
    .line 550
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 551
    .line 552
    const/16 v2, 0x24

    .line 553
    .line 554
    if-lt v1, v2, :cond_13

    .line 555
    .line 556
    const-string v1, "\u6b64\u529f\u80fd\u4e0d\u652f\u6301\u5b89\u535316\u53ca\u4ee5\u4e0a\u65b0\u7cfb\u7edf"

    .line 557
    .line 558
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 559
    .line 560
    .line 561
    goto/16 :goto_8

    .line 562
    .line 563
    :cond_13
    new-instance v1, Lha/z6;

    .line 564
    .line 565
    new-instance v9, Lha/gd;

    .line 566
    .line 567
    invoke-direct {v9, v15, v14}, Lha/gd;-><init>(Lha/id;I)V

    .line 568
    .line 569
    .line 570
    iget-object v3, v15, Lha/a4;->a:Landroid/app/Activity;

    .line 571
    .line 572
    iget-object v4, v15, Lha/a4;->b:Landroid/content/Context;

    .line 573
    .line 574
    const-string v7, "\u5f00"

    .line 575
    .line 576
    const-string v8, "\u5173"

    .line 577
    .line 578
    const-string v5, "\u70ed\u70b9\u5f00\u5173"

    .line 579
    .line 580
    const-string v6, ""

    .line 581
    .line 582
    move-object v2, v1

    .line 583
    invoke-direct/range {v2 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 587
    .line 588
    .line 589
    goto/16 :goto_8

    .line 590
    .line 591
    :cond_14
    const-string v4, "wifi\u5f00\u5173"

    .line 592
    .line 593
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 594
    .line 595
    .line 596
    move-result v4

    .line 597
    if-eqz v4, :cond_15

    .line 598
    .line 599
    new-instance v1, Lha/z6;

    .line 600
    .line 601
    new-instance v2, Lha/gd;

    .line 602
    .line 603
    invoke-direct {v2, v15, v12}, Lha/gd;-><init>(Lha/id;I)V

    .line 604
    .line 605
    .line 606
    iget-object v3, v15, Lha/a4;->a:Landroid/app/Activity;

    .line 607
    .line 608
    iget-object v4, v15, Lha/a4;->b:Landroid/content/Context;

    .line 609
    .line 610
    const-string v22, "\u5f00"

    .line 611
    .line 612
    const-string v23, "\u5173"

    .line 613
    .line 614
    const-string v20, "wifi\u5f00\u5173"

    .line 615
    .line 616
    const-string v21, ""

    .line 617
    .line 618
    move-object/from16 v17, v1

    .line 619
    .line 620
    move-object/from16 v18, v3

    .line 621
    .line 622
    move-object/from16 v19, v4

    .line 623
    .line 624
    move-object/from16 v24, v2

    .line 625
    .line 626
    invoke-direct/range {v17 .. v24}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 630
    .line 631
    .line 632
    goto/16 :goto_8

    .line 633
    .line 634
    :cond_15
    const-string v4, "\u84dd\u7259\u5f00\u5173"

    .line 635
    .line 636
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 637
    .line 638
    .line 639
    move-result v3

    .line 640
    if-eqz v3, :cond_1c

    .line 641
    .line 642
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 643
    .line 644
    const/16 v2, 0x1f

    .line 645
    .line 646
    if-lt v1, v2, :cond_16

    .line 647
    .line 648
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getBluetoothConnectPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 649
    .line 650
    .line 651
    move-result-object v2

    .line 652
    invoke-static {v6, v2}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 653
    .line 654
    .line 655
    move-result v2

    .line 656
    if-nez v2, :cond_16

    .line 657
    .line 658
    invoke-static {v6}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getBluetoothConnectPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 663
    .line 664
    .line 665
    move-result-object v2

    .line 666
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    new-instance v2, Lg2/c;

    .line 671
    .line 672
    const/16 v3, 0x1d

    .line 673
    .line 674
    invoke-direct {v2, v3}, Lg2/c;-><init>(I)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 678
    .line 679
    .line 680
    goto/16 :goto_8

    .line 681
    .line 682
    :cond_16
    const-string v2, "\u84dd\u7259\u4e0d\u53ef\u7528\uff0c\u65e0\u84dd\u7259\u529f\u80fd"

    .line 683
    .line 684
    const/16 v3, 0x12

    .line 685
    .line 686
    if-lt v1, v3, :cond_18

    .line 687
    .line 688
    const-string v1, "bluetooth"

    .line 689
    .line 690
    invoke-virtual {v6, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    invoke-static {v1}, Lb1/o;->d(Ljava/lang/Object;)Landroid/bluetooth/BluetoothManager;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    if-nez v1, :cond_17

    .line 699
    .line 700
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    goto/16 :goto_8

    .line 704
    .line 705
    :cond_17
    invoke-static {v1}, Lb1/o;->c(Landroid/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothAdapter;

    .line 706
    .line 707
    .line 708
    move-result-object v1

    .line 709
    goto :goto_5

    .line 710
    :cond_18
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    :goto_5
    if-nez v1, :cond_19

    .line 715
    .line 716
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    goto/16 :goto_8

    .line 720
    .line 721
    :cond_19
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 722
    .line 723
    .line 724
    move-result v2

    .line 725
    if-eqz v2, :cond_1a

    .line 726
    .line 727
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 728
    .line 729
    .line 730
    const-string v1, "\u5df2\u5173\u95ed\u84dd\u7259"

    .line 731
    .line 732
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    goto/16 :goto_8

    .line 736
    .line 737
    :cond_1a
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 738
    .line 739
    .line 740
    move-result v1

    .line 741
    if-eqz v1, :cond_1b

    .line 742
    .line 743
    const-string v1, "\u5df2\u5f00\u542f\u84dd\u7259"

    .line 744
    .line 745
    goto :goto_6

    .line 746
    :cond_1b
    const-string v1, "\u65e0\u6cd5\u5f00\u542f\u84dd\u7259"

    .line 747
    .line 748
    :goto_6
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    goto/16 :goto_8

    .line 752
    .line 753
    :cond_1c
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    move-result-object v3

    .line 757
    check-cast v3, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 758
    .line 759
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/CmdBean;->str1:Ljava/lang/String;

    .line 760
    .line 761
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 762
    .line 763
    .line 764
    move-result v3

    .line 765
    if-nez v3, :cond_21

    .line 766
    .line 767
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v3

    .line 771
    check-cast v3, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 772
    .line 773
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/CmdBean;->str1:Ljava/lang/String;

    .line 774
    .line 775
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    check-cast v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 780
    .line 781
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/CmdBean;->str2:Ljava/lang/String;

    .line 782
    .line 783
    const-string v2, "\u8bf7\u9009\u62e9"

    .line 784
    .line 785
    const/high16 v4, 0x10000000

    .line 786
    .line 787
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 788
    .line 789
    .line 790
    move-result v5

    .line 791
    if-eqz v5, :cond_1e

    .line 792
    .line 793
    new-instance v5, Landroid/content/Intent;

    .line 794
    .line 795
    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 802
    .line 803
    .line 804
    move-result-object v3

    .line 805
    invoke-virtual {v3, v5, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 806
    .line 807
    .line 808
    move-result-object v3

    .line 809
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 810
    .line 811
    .line 812
    move-result v3

    .line 813
    if-le v3, v14, :cond_1d

    .line 814
    .line 815
    invoke-static {v5, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 816
    .line 817
    .line 818
    move-result-object v3

    .line 819
    invoke-static {v14, v6, v3}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 820
    .line 821
    .line 822
    goto :goto_8

    .line 823
    :catch_4
    nop

    .line 824
    goto :goto_7

    .line 825
    :cond_1d
    invoke-static {v14, v6, v5}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 826
    .line 827
    .line 828
    goto :goto_8

    .line 829
    :cond_1e
    new-instance v5, Landroid/content/Intent;

    .line 830
    .line 831
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 832
    .line 833
    .line 834
    new-instance v7, Landroid/content/ComponentName;

    .line 835
    .line 836
    invoke-direct {v7, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 843
    .line 844
    .line 845
    invoke-static {v14, v6, v5}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 846
    .line 847
    .line 848
    goto :goto_8

    .line 849
    :goto_7
    const-string v3, "com.android.settings.Settings"

    .line 850
    .line 851
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 852
    .line 853
    .line 854
    move-result v1

    .line 855
    if-eqz v1, :cond_20

    .line 856
    .line 857
    :try_start_5
    new-instance v1, Landroid/content/Intent;

    .line 858
    .line 859
    const-string v3, "android.settings.SETTINGS"

    .line 860
    .line 861
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 865
    .line 866
    .line 867
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 868
    .line 869
    .line 870
    move-result-object v3

    .line 871
    invoke-virtual {v3, v1, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 872
    .line 873
    .line 874
    move-result-object v3

    .line 875
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 876
    .line 877
    .line 878
    move-result v3

    .line 879
    if-le v3, v14, :cond_1f

    .line 880
    .line 881
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    invoke-static {v14, v6, v1}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 886
    .line 887
    .line 888
    goto :goto_8

    .line 889
    :cond_1f
    invoke-static {v14, v6, v1}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 890
    .line 891
    .line 892
    goto :goto_8

    .line 893
    :catch_5
    :cond_20
    const-string v1, "\u4e0d\u5b58\u5728\uff0c\u65e0\u6cd5\u8c03\u7528\u6b64\u529f\u80fd\uff01"

    .line 894
    .line 895
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 896
    .line 897
    .line 898
    :cond_21
    :goto_8
    return-void

    .line 899
    :pswitch_5
    check-cast v15, Lha/qc;

    .line 900
    .line 901
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 902
    .line 903
    .line 904
    invoke-static/range {p2 .. p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 905
    .line 906
    .line 907
    invoke-virtual {v15}, Lha/qc;->dismiss()V

    .line 908
    .line 909
    .line 910
    iget-object v1, v15, Lha/qc;->i:Lx9/r2;

    .line 911
    .line 912
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v1

    .line 916
    check-cast v1, Lcom/yunpan/appmanage/util/d;

    .line 917
    .line 918
    iget-object v2, v15, Lha/qc;->g:Lha/p7;

    .line 919
    .line 920
    iget-object v2, v2, Lha/p7;->b:Ljava/lang/Object;

    .line 921
    .line 922
    check-cast v2, Lha/s5;

    .line 923
    .line 924
    iget-object v3, v2, Lha/s5;->l:Landroid/widget/TextView;

    .line 925
    .line 926
    check-cast v3, Landroid/widget/EditText;

    .line 927
    .line 928
    iget-object v4, v1, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 929
    .line 930
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    .line 932
    .line 933
    iget-object v2, v2, Lha/s5;->m:Landroid/widget/TextView;

    .line 934
    .line 935
    check-cast v2, Landroid/widget/EditText;

    .line 936
    .line 937
    iget v1, v1, Lcom/yunpan/appmanage/util/d;->c:I

    .line 938
    .line 939
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v1

    .line 943
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 944
    .line 945
    .line 946
    return-void

    .line 947
    :pswitch_6
    check-cast v15, Lha/lc;

    .line 948
    .line 949
    iget-object v1, v15, Lha/lc;->g:Ljava/util/ArrayList;

    .line 950
    .line 951
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    move-result-object v1

    .line 955
    check-cast v1, Lcom/yunpan/appmanage/bean/ShortcutCmdBean;

    .line 956
    .line 957
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/ShortcutCmdBean;->cmd:Ljava/lang/String;

    .line 958
    .line 959
    const-string v2, "[\u526a\u5207\u677f]"

    .line 960
    .line 961
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 962
    .line 963
    .line 964
    move-result v3

    .line 965
    if-eqz v3, :cond_26

    .line 966
    .line 967
    iget-object v3, v15, Lha/a4;->b:Landroid/content/Context;

    .line 968
    .line 969
    const-string v4, "clipboard"

    .line 970
    .line 971
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    move-result-object v3

    .line 975
    check-cast v3, Landroid/content/ClipboardManager;

    .line 976
    .line 977
    if-nez v3, :cond_22

    .line 978
    .line 979
    const-string v1, "\u65e0\u6cd5\u83b7\u53d6\u526a\u5207\u677f\u5bf9\u8c61"

    .line 980
    .line 981
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    goto/16 :goto_a

    .line 985
    .line 986
    :cond_22
    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 987
    .line 988
    .line 989
    move-result v4

    .line 990
    if-eqz v4, :cond_23

    .line 991
    .line 992
    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 993
    .line 994
    .line 995
    move-result-object v3

    .line 996
    if-eqz v3, :cond_23

    .line 997
    .line 998
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    .line 999
    .line 1000
    .line 1001
    move-result v4

    .line 1002
    if-lez v4, :cond_23

    .line 1003
    .line 1004
    invoke-virtual {v3, v13}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v3

    .line 1008
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v3

    .line 1012
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v3

    .line 1016
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v3

    .line 1020
    goto :goto_9

    .line 1021
    :cond_23
    const-string v3, ""

    .line 1022
    .line 1023
    :goto_9
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1024
    .line 1025
    .line 1026
    move-result v4

    .line 1027
    if-eqz v4, :cond_24

    .line 1028
    .line 1029
    const-string v1, "\u526a\u5207\u677f\u6ca1\u6709\u5185\u5bb9"

    .line 1030
    .line 1031
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 1032
    .line 1033
    .line 1034
    goto :goto_a

    .line 1035
    :cond_24
    const-string v4, "\n"

    .line 1036
    .line 1037
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1038
    .line 1039
    .line 1040
    move-result v4

    .line 1041
    if-eqz v4, :cond_25

    .line 1042
    .line 1043
    const-string v1, "\u526a\u5207\u677f\u5185\u5bb9\u6709\u6362\u884c\u7b26"

    .line 1044
    .line 1045
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 1046
    .line 1047
    .line 1048
    goto :goto_a

    .line 1049
    :cond_25
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v1

    .line 1053
    :cond_26
    invoke-virtual {v15}, Landroid/app/Dialog;->dismiss()V

    .line 1054
    .line 1055
    .line 1056
    iget-object v2, v15, Lha/lc;->h:Lua/g5;

    .line 1057
    .line 1058
    iget-object v2, v2, Lua/g5;->b:Ljava/lang/Object;

    .line 1059
    .line 1060
    check-cast v2, Lha/h3;

    .line 1061
    .line 1062
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1063
    .line 1064
    .line 1065
    const-string v3, "[\u5305\u540d]"

    .line 1066
    .line 1067
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1068
    .line 1069
    .line 1070
    move-result v3

    .line 1071
    iget-object v4, v2, Lha/h3;->d:Ljava/lang/Object;

    .line 1072
    .line 1073
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 1074
    .line 1075
    if-eqz v3, :cond_27

    .line 1076
    .line 1077
    new-instance v3, Lha/q2;

    .line 1078
    .line 1079
    sget v5, Lcom/yunpan/appmanage/ui/ActivityShell;->M:I

    .line 1080
    .line 1081
    iget-object v4, v4, Lda/g;->A:Lda/g;

    .line 1082
    .line 1083
    new-instance v5, Lua/k6;

    .line 1084
    .line 1085
    invoke-direct {v5, v2, v1, v13}, Lua/k6;-><init>(Lha/h3;Ljava/lang/String;I)V

    .line 1086
    .line 1087
    .line 1088
    invoke-direct {v3, v4, v4, v13, v5}, Lha/q2;-><init>(Landroid/app/Activity;Landroid/content/Context;ILha/p2;)V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v3}, Lha/a4;->show()V

    .line 1092
    .line 1093
    .line 1094
    goto :goto_a

    .line 1095
    :cond_27
    const-string v3, "[\u4e3b\u6d3b\u52a8]"

    .line 1096
    .line 1097
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1098
    .line 1099
    .line 1100
    move-result v3

    .line 1101
    if-eqz v3, :cond_28

    .line 1102
    .line 1103
    new-instance v3, Lha/q2;

    .line 1104
    .line 1105
    sget v5, Lcom/yunpan/appmanage/ui/ActivityShell;->M:I

    .line 1106
    .line 1107
    iget-object v4, v4, Lda/g;->A:Lda/g;

    .line 1108
    .line 1109
    new-instance v5, Lua/k6;

    .line 1110
    .line 1111
    invoke-direct {v5, v2, v1, v14}, Lua/k6;-><init>(Lha/h3;Ljava/lang/String;I)V

    .line 1112
    .line 1113
    .line 1114
    invoke-direct {v3, v4, v4, v11, v5}, Lha/q2;-><init>(Landroid/app/Activity;Landroid/content/Context;ILha/p2;)V

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v3}, Lha/a4;->show()V

    .line 1118
    .line 1119
    .line 1120
    goto :goto_a

    .line 1121
    :cond_28
    const-string v3, "[\u952e\u7801]"

    .line 1122
    .line 1123
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v3

    .line 1127
    if-eqz v3, :cond_29

    .line 1128
    .line 1129
    new-instance v3, Lha/yb;

    .line 1130
    .line 1131
    new-instance v5, Lua/k6;

    .line 1132
    .line 1133
    invoke-direct {v5, v2, v1, v12}, Lua/k6;-><init>(Lha/h3;Ljava/lang/String;I)V

    .line 1134
    .line 1135
    .line 1136
    invoke-direct {v3, v4, v4, v5}, Lha/yb;-><init>(Landroid/app/Activity;Landroid/content/Context;Lha/xb;)V

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v3}, Lha/a4;->show()V

    .line 1140
    .line 1141
    .line 1142
    goto :goto_a

    .line 1143
    :cond_29
    invoke-static {v4, v1}, Lcom/yunpan/appmanage/ui/ActivityShell;->x(Lcom/yunpan/appmanage/ui/ActivityShell;Ljava/lang/String;)V

    .line 1144
    .line 1145
    .line 1146
    :goto_a
    return-void

    .line 1147
    :pswitch_7
    check-cast v15, Lha/yb;

    .line 1148
    .line 1149
    iget-object v1, v15, Lha/yb;->h:Lx9/s4;

    .line 1150
    .line 1151
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v1

    .line 1155
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 1156
    .line 1157
    iget-object v2, v15, Lha/yb;->i:Lha/xb;

    .line 1158
    .line 1159
    invoke-interface {v2, v1}, Lha/xb;->a(Lcom/yunpan/appmanage/bean/KeyCodeBean;)V

    .line 1160
    .line 1161
    .line 1162
    invoke-virtual {v15}, Landroid/app/Dialog;->dismiss()V

    .line 1163
    .line 1164
    .line 1165
    return-void

    .line 1166
    :pswitch_8
    check-cast v15, Lha/wb;

    .line 1167
    .line 1168
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1169
    .line 1170
    .line 1171
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 1172
    .line 1173
    .line 1174
    invoke-static/range {p2 .. p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 1175
    .line 1176
    .line 1177
    iget-object v1, v15, Lha/wb;->h:Lx9/q2;

    .line 1178
    .line 1179
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v1

    .line 1183
    check-cast v1, Lcom/yunpan/appmanage/bean/InstallerBean;

    .line 1184
    .line 1185
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 1186
    .line 1187
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1188
    .line 1189
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1190
    .line 1191
    .line 1192
    iget-object v4, v1, Lcom/yunpan/appmanage/bean/InstallerBean;->str_pack:Ljava/lang/String;

    .line 1193
    .line 1194
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    .line 1196
    .line 1197
    const-string v4, "/"

    .line 1198
    .line 1199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    .line 1201
    .line 1202
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/InstallerBean;->str_class:Ljava/lang/String;

    .line 1203
    .line 1204
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v1

    .line 1211
    iput-object v1, v2, Lcom/yunpan/appmanage/util/w;->d0:Ljava/lang/String;

    .line 1212
    .line 1213
    const-string v3, "InstallerClass"

    .line 1214
    .line 1215
    :try_start_6
    iget-object v4, v2, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1216
    .line 1217
    invoke-virtual {v4, v3, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1218
    .line 1219
    .line 1220
    :catch_6
    invoke-virtual {v2}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v15}, Landroid/app/Dialog;->dismiss()V

    .line 1224
    .line 1225
    .line 1226
    return-void

    .line 1227
    :pswitch_9
    check-cast v15, Lha/tb;

    .line 1228
    .line 1229
    iget-object v1, v15, Lha/tb;->j:Landroidx/leanback/widget/i;

    .line 1230
    .line 1231
    if-nez v1, :cond_2a

    .line 1232
    .line 1233
    goto :goto_b

    .line 1234
    :cond_2a
    iget-object v1, v15, Lha/tb;->h:Lx9/a1;

    .line 1235
    .line 1236
    if-eqz v1, :cond_2d

    .line 1237
    .line 1238
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 1239
    .line 1240
    .line 1241
    move-result v1

    .line 1242
    if-lt v2, v1, :cond_2b

    .line 1243
    .line 1244
    goto :goto_b

    .line 1245
    :cond_2b
    iget-object v1, v15, Lha/tb;->h:Lx9/a1;

    .line 1246
    .line 1247
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v1

    .line 1251
    check-cast v1, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;

    .line 1252
    .line 1253
    iget-boolean v3, v1, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->isSelected:Z

    .line 1254
    .line 1255
    xor-int/2addr v3, v14

    .line 1256
    iput-boolean v3, v1, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->isSelected:Z

    .line 1257
    .line 1258
    iget-object v3, v15, Lha/tb;->h:Lx9/a1;

    .line 1259
    .line 1260
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 1261
    .line 1262
    .line 1263
    iget-boolean v2, v1, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->isSelected:Z

    .line 1264
    .line 1265
    iget-object v3, v15, Lha/tb;->k:Ljava/util/Set;

    .line 1266
    .line 1267
    if-eqz v2, :cond_2c

    .line 1268
    .line 1269
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->pack:Ljava/lang/String;

    .line 1270
    .line 1271
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1272
    .line 1273
    .line 1274
    goto :goto_b

    .line 1275
    :cond_2c
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->pack:Ljava/lang/String;

    .line 1276
    .line 1277
    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1278
    .line 1279
    .line 1280
    :cond_2d
    :goto_b
    return-void

    .line 1281
    :pswitch_a
    check-cast v15, Lha/cb;

    .line 1282
    .line 1283
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1284
    .line 1285
    .line 1286
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 1287
    .line 1288
    .line 1289
    invoke-static/range {p2 .. p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 1290
    .line 1291
    .line 1292
    if-eq v2, v10, :cond_31

    .line 1293
    .line 1294
    if-ne v2, v9, :cond_2e

    .line 1295
    .line 1296
    goto :goto_c

    .line 1297
    :cond_2e
    if-ne v2, v8, :cond_2f

    .line 1298
    .line 1299
    new-instance v1, Lha/z6;

    .line 1300
    .line 1301
    new-instance v3, Lha/ab;

    .line 1302
    .line 1303
    invoke-direct {v3, v15, v2, v14}, Lha/ab;-><init>(Lha/cb;II)V

    .line 1304
    .line 1305
    .line 1306
    iget-object v2, v15, Lha/a4;->a:Landroid/app/Activity;

    .line 1307
    .line 1308
    iget-object v4, v15, Lha/a4;->b:Landroid/content/Context;

    .line 1309
    .line 1310
    const-string v21, "\u53d6\u6d88\u6267\u884c"

    .line 1311
    .line 1312
    const-string v22, "\u6211\u60f3\u8bd5\u8bd5"

    .line 1313
    .line 1314
    const-string v19, "\u8fd9\u662f\u91cd\u542f\u540e\u8fdb\u5165\u6062\u590d\u6a21\u5f0f\uff0c\u4e0d\u61c2\u6216\u4e0d\u4e86\u89e3\u8bf7\u4e0d\u8981\u6267\u884c\u8fd9\u6761\u547d\u4ee4"

    .line 1315
    .line 1316
    const-string v20, ""

    .line 1317
    .line 1318
    move-object/from16 v16, v1

    .line 1319
    .line 1320
    move-object/from16 v17, v2

    .line 1321
    .line 1322
    move-object/from16 v18, v4

    .line 1323
    .line 1324
    move-object/from16 v23, v3

    .line 1325
    .line 1326
    invoke-direct/range {v16 .. v23}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 1327
    .line 1328
    .line 1329
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 1330
    .line 1331
    .line 1332
    goto :goto_d

    .line 1333
    :cond_2f
    if-ne v2, v4, :cond_30

    .line 1334
    .line 1335
    new-instance v1, Lha/z6;

    .line 1336
    .line 1337
    new-instance v3, Lha/ab;

    .line 1338
    .line 1339
    invoke-direct {v3, v15, v2, v12}, Lha/ab;-><init>(Lha/cb;II)V

    .line 1340
    .line 1341
    .line 1342
    iget-object v6, v15, Lha/a4;->a:Landroid/app/Activity;

    .line 1343
    .line 1344
    iget-object v7, v15, Lha/a4;->b:Landroid/content/Context;

    .line 1345
    .line 1346
    const-string v10, "\u53d6\u6d88\u6267\u884c"

    .line 1347
    .line 1348
    const-string v11, "\u6211\u60f3\u8bd5\u8bd5"

    .line 1349
    .line 1350
    const-string v8, "\u8fd9\u662f\u91cd\u542f\u8fdb\u5165bootloader\u6a21\u5f0f\uff0c\u4e0d\u4e86\u89e3bootloader\u8bf7\u4e0d\u8981\u6267\u884c\u8fd9\u6761\u547d\u4ee4"

    .line 1351
    .line 1352
    const-string v9, ""

    .line 1353
    .line 1354
    move-object v5, v1

    .line 1355
    move-object v12, v3

    .line 1356
    invoke-direct/range {v5 .. v12}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 1360
    .line 1361
    .line 1362
    goto :goto_d

    .line 1363
    :cond_30
    invoke-virtual {v15, v2}, Lha/cb;->a(I)V

    .line 1364
    .line 1365
    .line 1366
    goto :goto_d

    .line 1367
    :cond_31
    :goto_c
    new-instance v1, Lha/z6;

    .line 1368
    .line 1369
    new-instance v3, Lha/ab;

    .line 1370
    .line 1371
    invoke-direct {v3, v15, v2, v13}, Lha/ab;-><init>(Lha/cb;II)V

    .line 1372
    .line 1373
    .line 1374
    iget-object v13, v15, Lha/a4;->a:Landroid/app/Activity;

    .line 1375
    .line 1376
    iget-object v14, v15, Lha/a4;->b:Landroid/content/Context;

    .line 1377
    .line 1378
    const-string v17, "\u53d6\u6d88\u6267\u884c"

    .line 1379
    .line 1380
    const-string v18, "\u6211\u60f3\u8bd5\u8bd5"

    .line 1381
    .line 1382
    const-string v15, "\u4e00\u822c\u7528\u4e0a\u9762\u7684\u547d\u4ee4\u5373\u53ef\u91cd\u542f/\u5173\u673a\uff0c\u6ca1\u5fc5\u8981\u7528\u8fd9\u6761\u547d\u4ee4\u54e6\uff0c\u5982\u679c\u4e0a\u9762\u90fd\u4e0d\u884c\uff0c\u90a3\u5c31\u7528\u8fd9\u6761"

    .line 1383
    .line 1384
    const-string v16, ""

    .line 1385
    .line 1386
    move-object v12, v1

    .line 1387
    move-object/from16 v19, v3

    .line 1388
    .line 1389
    invoke-direct/range {v12 .. v19}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 1393
    .line 1394
    .line 1395
    :goto_d
    return-void

    .line 1396
    :pswitch_b
    check-cast v15, Lha/ta;

    .line 1397
    .line 1398
    invoke-virtual {v15}, Landroid/app/Dialog;->dismiss()V

    .line 1399
    .line 1400
    .line 1401
    iget-object v1, v15, Lha/ta;->h:Landroidx/fragment/app/f;

    .line 1402
    .line 1403
    iget-object v3, v1, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    .line 1404
    .line 1405
    check-cast v3, Lua/x7;

    .line 1406
    .line 1407
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1408
    .line 1409
    .line 1410
    iget-object v4, v1, Landroidx/fragment/app/f;->d:Ljava/lang/Object;

    .line 1411
    .line 1412
    check-cast v4, Ljava/util/ArrayList;

    .line 1413
    .line 1414
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v4

    .line 1418
    check-cast v4, Landroid/hardware/usb/UsbDevice;

    .line 1419
    .line 1420
    iget-object v5, v1, Landroidx/fragment/app/f;->e:Ljava/lang/Object;

    .line 1421
    .line 1422
    check-cast v5, Ljava/util/ArrayList;

    .line 1423
    .line 1424
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v2

    .line 1428
    check-cast v2, Landroid/hardware/usb/UsbInterface;

    .line 1429
    .line 1430
    iget-object v1, v1, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    .line 1431
    .line 1432
    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 1433
    .line 1434
    invoke-virtual {v3, v1, v4, v2, v14}, Lua/x7;->n(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Z)V

    .line 1435
    .line 1436
    .line 1437
    return-void

    .line 1438
    :pswitch_c
    check-cast v15, Lha/ja;

    .line 1439
    .line 1440
    iget-object v1, v15, Lha/ja;->l:Lha/ia;

    .line 1441
    .line 1442
    invoke-interface {v1, v2}, Lha/ia;->b(I)V

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual {v15}, Landroid/app/Dialog;->dismiss()V

    .line 1446
    .line 1447
    .line 1448
    return-void

    .line 1449
    :pswitch_d
    check-cast v15, Lha/ha;

    .line 1450
    .line 1451
    iget-object v1, v15, Lha/ha;->j:Lha/ga;

    .line 1452
    .line 1453
    invoke-interface {v1, v2}, Lha/ga;->b(I)V

    .line 1454
    .line 1455
    .line 1456
    invoke-virtual {v15}, Landroid/app/Dialog;->dismiss()V

    .line 1457
    .line 1458
    .line 1459
    return-void

    .line 1460
    :pswitch_e
    check-cast v15, Lha/fa;

    .line 1461
    .line 1462
    iget-object v1, v15, Lha/fa;->j:Lha/ea;

    .line 1463
    .line 1464
    invoke-interface {v1, v2}, Lha/ea;->b(I)V

    .line 1465
    .line 1466
    .line 1467
    invoke-virtual {v15}, Landroid/app/Dialog;->dismiss()V

    .line 1468
    .line 1469
    .line 1470
    return-void

    .line 1471
    :pswitch_f
    check-cast v15, Lha/t9;

    .line 1472
    .line 1473
    iget-object v1, v15, Lha/t9;->i:Lx9/t0;

    .line 1474
    .line 1475
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v1

    .line 1479
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 1480
    .line 1481
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 1482
    .line 1483
    const/4 v3, -0x1

    .line 1484
    if-ne v1, v3, :cond_32

    .line 1485
    .line 1486
    goto/16 :goto_17

    .line 1487
    .line 1488
    :cond_32
    const/4 v3, -0x2

    .line 1489
    if-ne v1, v3, :cond_33

    .line 1490
    .line 1491
    iget-object v1, v15, Lha/t9;->i:Lx9/t0;

    .line 1492
    .line 1493
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v1

    .line 1497
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 1498
    .line 1499
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->ico:I

    .line 1500
    .line 1501
    const v2, 0x7f0801d0

    .line 1502
    .line 1503
    .line 1504
    if-ne v1, v2, :cond_5c

    .line 1505
    .line 1506
    invoke-virtual {v15}, Landroid/app/Dialog;->dismiss()V

    .line 1507
    .line 1508
    .line 1509
    goto/16 :goto_17

    .line 1510
    .line 1511
    :cond_33
    const/16 v3, -0xa

    .line 1512
    .line 1513
    if-ne v1, v3, :cond_34

    .line 1514
    .line 1515
    const-string v1, "\u6b64\u529f\u80fd\u5c1a\u672a\u5b8c\u6210\uff0c\u656c\u8bf7\u671f\u5f85"

    .line 1516
    .line 1517
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1518
    .line 1519
    .line 1520
    goto/16 :goto_17

    .line 1521
    .line 1522
    :cond_34
    if-ne v1, v11, :cond_35

    .line 1523
    .line 1524
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isFocused()Z

    .line 1525
    .line 1526
    .line 1527
    move-result v3

    .line 1528
    if-eqz v3, :cond_35

    .line 1529
    .line 1530
    const-string v1, "\u6b64\u529f\u80fd\u4e0d\u9002\u5408\u9065\u63a7\u5668\u64cd\u4f5c"

    .line 1531
    .line 1532
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1533
    .line 1534
    .line 1535
    goto/16 :goto_17

    .line 1536
    .line 1537
    :cond_35
    const/16 v3, 0xfa1

    .line 1538
    .line 1539
    if-ne v1, v3, :cond_36

    .line 1540
    .line 1541
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isFocused()Z

    .line 1542
    .line 1543
    .line 1544
    move-result v4

    .line 1545
    if-nez v4, :cond_36

    .line 1546
    .line 1547
    const-string v1, "\u6b64\u529f\u80fd\u4ec5\u9002\u5408\u9065\u63a7\u5668\u64cd\u4f5c"

    .line 1548
    .line 1549
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1550
    .line 1551
    .line 1552
    goto/16 :goto_17

    .line 1553
    .line 1554
    :cond_36
    iget-object v4, v15, Lha/a4;->b:Landroid/content/Context;

    .line 1555
    .line 1556
    const/16 v5, 0x1a1

    .line 1557
    .line 1558
    if-ne v1, v5, :cond_38

    .line 1559
    .line 1560
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getRecordAudioPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v5

    .line 1564
    invoke-static {v4, v5}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 1565
    .line 1566
    .line 1567
    move-result v5

    .line 1568
    if-nez v5, :cond_38

    .line 1569
    .line 1570
    sget-object v5, Lfa/b0;->a:La2/w0;

    .line 1571
    .line 1572
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1573
    .line 1574
    .line 1575
    invoke-static {}, La2/w0;->O()Z

    .line 1576
    .line 1577
    .line 1578
    move-result v5

    .line 1579
    if-eqz v5, :cond_37

    .line 1580
    .line 1581
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1582
    .line 1583
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1584
    .line 1585
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 1586
    .line 1587
    new-instance v8, Lha/r9;

    .line 1588
    .line 1589
    invoke-direct {v8, v15, v13}, Lha/r9;-><init>(Lha/t9;I)V

    .line 1590
    .line 1591
    .line 1592
    invoke-interface {v5, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1593
    .line 1594
    .line 1595
    goto :goto_e

    .line 1596
    :cond_37
    invoke-static {v4}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v1

    .line 1600
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getBluetoothConnectPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v2

    .line 1604
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v1

    .line 1608
    new-instance v2, Lg2/c;

    .line 1609
    .line 1610
    const/16 v3, 0xd

    .line 1611
    .line 1612
    invoke-direct {v2, v3}, Lg2/c;-><init>(I)V

    .line 1613
    .line 1614
    .line 1615
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 1616
    .line 1617
    .line 1618
    goto/16 :goto_17

    .line 1619
    .line 1620
    :cond_38
    :goto_e
    const/16 v5, 0x19f

    .line 1621
    .line 1622
    const/16 v8, 0x19e

    .line 1623
    .line 1624
    if-ne v1, v5, :cond_39

    .line 1625
    .line 1626
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v5

    .line 1630
    const-string v11, "android.permission.MODIFY_DAY_NIGHT_MODE"

    .line 1631
    .line 1632
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v12

    .line 1636
    invoke-virtual {v5, v11, v12}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    .line 1638
    .line 1639
    move-result v5

    .line 1640
    if-eqz v5, :cond_3b

    .line 1641
    .line 1642
    const-string v5, "\u6b64\u529f\u80fd\u4ec5\u9002\u5408\u516c\u7b7e\u7cfb\u7edf"

    .line 1643
    .line 1644
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1645
    .line 1646
    .line 1647
    goto :goto_f

    .line 1648
    :cond_39
    if-ne v1, v8, :cond_3a

    .line 1649
    .line 1650
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1651
    .line 1652
    if-ge v5, v7, :cond_3b

    .line 1653
    .line 1654
    const-string v5, "\u6b64\u529f\u80fd\u53ef\u80fd\u4e0d\u9002\u5408\u60a8\u7684\u7cfb\u7edf"

    .line 1655
    .line 1656
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1657
    .line 1658
    .line 1659
    goto :goto_f

    .line 1660
    :cond_3a
    const/16 v5, 0x1388

    .line 1661
    .line 1662
    if-lt v1, v5, :cond_3b

    .line 1663
    .line 1664
    const/16 v5, 0x157c

    .line 1665
    .line 1666
    if-ge v1, v5, :cond_3b

    .line 1667
    .line 1668
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1669
    .line 1670
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1671
    .line 1672
    iget-boolean v5, v5, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 1673
    .line 1674
    if-nez v5, :cond_3b

    .line 1675
    .line 1676
    const-string v1, "\u6b64\u529f\u80fd\u662f\u57c3\u5b89Y\u8f66\u673a\u4e13\u7528(\u5e7f\u6c7d\u76f8\u540c\u7cfb\u7edf\u4e5f\u53ef\u4ee5)\n\n\u9700\u5b89\u88c5\uff1a\u516c\u7b7eUID\u7248(\u539f\u751f)"

    .line 1677
    .line 1678
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 1679
    .line 1680
    .line 1681
    goto/16 :goto_17

    .line 1682
    .line 1683
    :cond_3b
    :goto_f
    const/16 v5, 0x196

    .line 1684
    .line 1685
    if-eq v1, v5, :cond_5a

    .line 1686
    .line 1687
    const/16 v11, 0x197

    .line 1688
    .line 1689
    if-ne v1, v11, :cond_3c

    .line 1690
    .line 1691
    goto/16 :goto_15

    .line 1692
    .line 1693
    :cond_3c
    const/16 v5, 0x281

    .line 1694
    .line 1695
    if-ne v1, v5, :cond_3e

    .line 1696
    .line 1697
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v5

    .line 1701
    const-string v10, "enable_freeform_support"

    .line 1702
    .line 1703
    invoke-static {v5, v10, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1704
    .line 1705
    .line 1706
    move-result v5

    .line 1707
    if-ne v5, v14, :cond_3d

    .line 1708
    .line 1709
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v5

    .line 1713
    const-string v10, "force_resizable_activities"

    .line 1714
    .line 1715
    invoke-static {v5, v10, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1716
    .line 1717
    .line 1718
    move-result v5

    .line 1719
    if-eq v5, v14, :cond_3e

    .line 1720
    .line 1721
    :cond_3d
    new-instance v1, Lha/z6;

    .line 1722
    .line 1723
    new-instance v2, Lh5/m;

    .line 1724
    .line 1725
    const/16 v3, 0xb

    .line 1726
    .line 1727
    invoke-direct {v2, v3, v15}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 1728
    .line 1729
    .line 1730
    iget-object v3, v15, Lha/a4;->a:Landroid/app/Activity;

    .line 1731
    .line 1732
    iget-object v4, v15, Lha/a4;->b:Landroid/content/Context;

    .line 1733
    .line 1734
    const-string v22, "\u5f00\u542f"

    .line 1735
    .line 1736
    const-string v23, "\u53d6\u6d88"

    .line 1737
    .line 1738
    const-string v20, "\u68c0\u6d4b\u5230\u4f60\u7cfb\u7edf\u6ca1\u6709\u5f00\u542f\u591a\u7a97\u53e3\u6a21\u5f0f"

    .line 1739
    .line 1740
    const-string v21, "\u662f\u5426\u9700\u8981\u5e2e\u4f60\u5f00\u542f\u591a\u7a97\u6a21\u5f0f\u5462\uff1f"

    .line 1741
    .line 1742
    move-object/from16 v17, v1

    .line 1743
    .line 1744
    move-object/from16 v18, v3

    .line 1745
    .line 1746
    move-object/from16 v19, v4

    .line 1747
    .line 1748
    move-object/from16 v24, v2

    .line 1749
    .line 1750
    invoke-direct/range {v17 .. v24}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 1751
    .line 1752
    .line 1753
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 1754
    .line 1755
    .line 1756
    goto/16 :goto_17

    .line 1757
    .line 1758
    :cond_3e
    const/16 v5, 0x140

    .line 1759
    .line 1760
    if-ne v1, v5, :cond_40

    .line 1761
    .line 1762
    invoke-static {v4}, Lif/a;->b0(Landroid/content/Context;)Z

    .line 1763
    .line 1764
    .line 1765
    move-result v1

    .line 1766
    if-nez v1, :cond_3f

    .line 1767
    .line 1768
    const-string v1, "\u65e0\u6743\u9650"

    .line 1769
    .line 1770
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1771
    .line 1772
    .line 1773
    goto/16 :goto_17

    .line 1774
    .line 1775
    :cond_3f
    new-instance v1, Lha/z6;

    .line 1776
    .line 1777
    new-instance v9, Lha/s9;

    .line 1778
    .line 1779
    invoke-direct {v9, v15, v2, v13}, Lha/s9;-><init>(Lha/t9;II)V

    .line 1780
    .line 1781
    .line 1782
    iget-object v3, v15, Lha/a4;->a:Landroid/app/Activity;

    .line 1783
    .line 1784
    iget-object v4, v15, Lha/a4;->b:Landroid/content/Context;

    .line 1785
    .line 1786
    const-string v7, "\u786e\u5b9a"

    .line 1787
    .line 1788
    const-string v8, "\u53d6\u6d88"

    .line 1789
    .line 1790
    const-string v5, "\u5168\u5c4f\u6c89\u6d78\u5207\u6362\uff1a\u6b64\u529f\u80fd\u548c[\u529f\u80fd\u9762\u677f]\u4e2d\u7684[\u8f66\u673a\u5e94\u7528\u6c89\u6d78]\u529f\u80fd\u539f\u7406\u662f\u4e00\u6837\u7684\uff0c\u5982\u679c\u4f60\u7528[\u8f66\u673a\u5e94\u7528\u6c89\u6d78]\u529f\u80fd\u65e0\u6548\u7684\u8bdd\uff0c\u90a3\u4e48\u5c31\u4e0d\u8981\u7528\u8fd9\u529f\u80fd\uff0c\u4e0d\u9002\u5408\uff01"

    .line 1791
    .line 1792
    const-string v6, ""

    .line 1793
    .line 1794
    move-object v2, v1

    .line 1795
    invoke-direct/range {v2 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 1796
    .line 1797
    .line 1798
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 1799
    .line 1800
    .line 1801
    goto/16 :goto_17

    .line 1802
    .line 1803
    :cond_40
    const/16 v5, 0x2bc

    .line 1804
    .line 1805
    if-eq v1, v5, :cond_59

    .line 1806
    .line 1807
    const/16 v5, 0x2be

    .line 1808
    .line 1809
    if-ne v1, v5, :cond_41

    .line 1810
    .line 1811
    goto/16 :goto_14

    .line 1812
    .line 1813
    :cond_41
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1814
    .line 1815
    const/16 v10, 0x21

    .line 1816
    .line 1817
    if-lt v5, v10, :cond_43

    .line 1818
    .line 1819
    const/16 v10, 0x200

    .line 1820
    .line 1821
    if-eq v1, v10, :cond_42

    .line 1822
    .line 1823
    const/16 v10, 0x1ff

    .line 1824
    .line 1825
    if-eq v1, v10, :cond_42

    .line 1826
    .line 1827
    const/16 v10, 0x1fe

    .line 1828
    .line 1829
    if-ne v1, v10, :cond_43

    .line 1830
    .line 1831
    :cond_42
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getBluetoothConnectPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v10

    .line 1835
    invoke-static {v4, v10}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 1836
    .line 1837
    .line 1838
    move-result v10

    .line 1839
    if-nez v10, :cond_43

    .line 1840
    .line 1841
    invoke-static {v4}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v1

    .line 1845
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getBluetoothConnectPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1846
    .line 1847
    .line 1848
    move-result-object v2

    .line 1849
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 1850
    .line 1851
    .line 1852
    move-result-object v1

    .line 1853
    new-instance v2, Lg2/c;

    .line 1854
    .line 1855
    const/16 v3, 0xe

    .line 1856
    .line 1857
    invoke-direct {v2, v3}, Lg2/c;-><init>(I)V

    .line 1858
    .line 1859
    .line 1860
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 1861
    .line 1862
    .line 1863
    goto/16 :goto_17

    .line 1864
    .line 1865
    :cond_43
    const/16 v10, 0x17

    .line 1866
    .line 1867
    if-lt v5, v10, :cond_45

    .line 1868
    .line 1869
    const/16 v10, 0x26e

    .line 1870
    .line 1871
    if-eq v1, v10, :cond_44

    .line 1872
    .line 1873
    const/16 v10, 0x26c

    .line 1874
    .line 1875
    if-eq v1, v10, :cond_44

    .line 1876
    .line 1877
    const/16 v10, 0x26d

    .line 1878
    .line 1879
    if-ne v1, v10, :cond_45

    .line 1880
    .line 1881
    :cond_44
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getWriteSettingsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1882
    .line 1883
    .line 1884
    move-result-object v10

    .line 1885
    invoke-static {v4, v10}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 1886
    .line 1887
    .line 1888
    move-result v10

    .line 1889
    if-nez v10, :cond_45

    .line 1890
    .line 1891
    invoke-static {v4}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 1892
    .line 1893
    .line 1894
    move-result-object v1

    .line 1895
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getWriteSettingsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v2

    .line 1899
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 1900
    .line 1901
    .line 1902
    move-result-object v1

    .line 1903
    new-instance v2, Lg2/c;

    .line 1904
    .line 1905
    const/16 v3, 0xf

    .line 1906
    .line 1907
    invoke-direct {v2, v3}, Lg2/c;-><init>(I)V

    .line 1908
    .line 1909
    .line 1910
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 1911
    .line 1912
    .line 1913
    goto/16 :goto_17

    .line 1914
    .line 1915
    :cond_45
    if-ne v1, v8, :cond_46

    .line 1916
    .line 1917
    invoke-static {v4}, Lif/a;->b0(Landroid/content/Context;)Z

    .line 1918
    .line 1919
    .line 1920
    move-result v8

    .line 1921
    if-nez v8, :cond_46

    .line 1922
    .line 1923
    const-string v1, "\u8bf7\u5148\u6388\u4e88\u3010\u4fee\u6539\u7cfb\u7edf\u5b89\u5168\u8bbe\u7f6e\u3011\u6743\u9650"

    .line 1924
    .line 1925
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1926
    .line 1927
    .line 1928
    goto/16 :goto_17

    .line 1929
    .line 1930
    :cond_46
    const/16 v8, 0x2c2

    .line 1931
    .line 1932
    if-eq v1, v8, :cond_47

    .line 1933
    .line 1934
    const/16 v8, 0x25f

    .line 1935
    .line 1936
    if-eq v1, v8, :cond_47

    .line 1937
    .line 1938
    const/16 v8, 0x2bd

    .line 1939
    .line 1940
    if-eq v1, v8, :cond_47

    .line 1941
    .line 1942
    const/16 v8, 0x2c1

    .line 1943
    .line 1944
    if-eq v1, v8, :cond_47

    .line 1945
    .line 1946
    const/16 v8, 0xfa0

    .line 1947
    .line 1948
    if-eq v1, v8, :cond_47

    .line 1949
    .line 1950
    if-ne v1, v3, :cond_49

    .line 1951
    .line 1952
    :cond_47
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1953
    .line 1954
    .line 1955
    move-result-object v3

    .line 1956
    invoke-static {v4, v3}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 1957
    .line 1958
    .line 1959
    move-result v3

    .line 1960
    if-nez v3, :cond_49

    .line 1961
    .line 1962
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 1963
    .line 1964
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1965
    .line 1966
    .line 1967
    invoke-static {}, La2/w0;->O()Z

    .line 1968
    .line 1969
    .line 1970
    move-result v1

    .line 1971
    if-eqz v1, :cond_48

    .line 1972
    .line 1973
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1974
    .line 1975
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1976
    .line 1977
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 1978
    .line 1979
    new-instance v2, Lha/r9;

    .line 1980
    .line 1981
    invoke-direct {v2, v15, v14}, Lha/r9;-><init>(Lha/t9;I)V

    .line 1982
    .line 1983
    .line 1984
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1985
    .line 1986
    .line 1987
    :cond_48
    invoke-static {v4}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 1988
    .line 1989
    .line 1990
    move-result-object v1

    .line 1991
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1992
    .line 1993
    .line 1994
    move-result-object v2

    .line 1995
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v1

    .line 1999
    new-instance v2, Lg2/c;

    .line 2000
    .line 2001
    const/16 v3, 0x10

    .line 2002
    .line 2003
    invoke-direct {v2, v3}, Lg2/c;-><init>(I)V

    .line 2004
    .line 2005
    .line 2006
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 2007
    .line 2008
    .line 2009
    goto/16 :goto_17

    .line 2010
    .line 2011
    :cond_49
    const/16 v3, 0x2b

    .line 2012
    .line 2013
    const/16 v8, 0x2a

    .line 2014
    .line 2015
    if-eq v1, v8, :cond_4a

    .line 2016
    .line 2017
    if-ne v1, v3, :cond_4b

    .line 2018
    .line 2019
    :cond_4a
    if-lt v5, v7, :cond_4b

    .line 2020
    .line 2021
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAnswerPhoneCallsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 2022
    .line 2023
    .line 2024
    move-result-object v7

    .line 2025
    invoke-static {v4, v7}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 2026
    .line 2027
    .line 2028
    move-result v7

    .line 2029
    if-nez v7, :cond_4b

    .line 2030
    .line 2031
    invoke-static {v4}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 2032
    .line 2033
    .line 2034
    move-result-object v1

    .line 2035
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAnswerPhoneCallsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 2036
    .line 2037
    .line 2038
    move-result-object v2

    .line 2039
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 2040
    .line 2041
    .line 2042
    move-result-object v1

    .line 2043
    new-instance v2, Lha/l2;

    .line 2044
    .line 2045
    invoke-direct {v2, v9}, Lha/l2;-><init>(I)V

    .line 2046
    .line 2047
    .line 2048
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 2049
    .line 2050
    .line 2051
    goto/16 :goto_17

    .line 2052
    .line 2053
    :cond_4b
    const/16 v7, 0x384

    .line 2054
    .line 2055
    if-lt v1, v7, :cond_4f

    .line 2056
    .line 2057
    const/16 v7, 0x3e8

    .line 2058
    .line 2059
    if-ge v1, v7, :cond_4f

    .line 2060
    .line 2061
    sget-object v7, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 2062
    .line 2063
    iget-boolean v7, v7, Lcom/yunpan/appmanage/util/w;->p:Z

    .line 2064
    .line 2065
    if-eqz v7, :cond_4c

    .line 2066
    .line 2067
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2068
    .line 2069
    const-string v2, "\u4f60\u5df2\u5728\u3010"

    .line 2070
    .line 2071
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2072
    .line 2073
    .line 2074
    const v2, 0x7f13016f

    .line 2075
    .line 2076
    .line 2077
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v2

    .line 2081
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    .line 2083
    .line 2084
    const-string v2, "\u8bbe\u7f6e\u3011\u91cc\u52fe\u9009\u3010\u4e0d\u662fshizuku\u3011"

    .line 2085
    .line 2086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2087
    .line 2088
    .line 2089
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2090
    .line 2091
    .line 2092
    move-result-object v1

    .line 2093
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 2094
    .line 2095
    .line 2096
    goto/16 :goto_17

    .line 2097
    .line 2098
    :cond_4c
    sget-object v7, Lfa/n0;->a:Lfa/o0;

    .line 2099
    .line 2100
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2101
    .line 2102
    .line 2103
    invoke-static {}, Lfa/o0;->f()Z

    .line 2104
    .line 2105
    .line 2106
    move-result v9

    .line 2107
    if-nez v9, :cond_4d

    .line 2108
    .line 2109
    const-string v1, "\u8bf7\u5148\u5b89\u88c5 Shizuku"

    .line 2110
    .line 2111
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 2112
    .line 2113
    .line 2114
    goto/16 :goto_17

    .line 2115
    .line 2116
    :cond_4d
    iget-boolean v9, v7, Lfa/o0;->a:Z

    .line 2117
    .line 2118
    if-nez v9, :cond_4e

    .line 2119
    .line 2120
    const-string v1, "\u8bf7\u5148\u6fc0\u6d3b Shizuku"

    .line 2121
    .line 2122
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 2123
    .line 2124
    .line 2125
    goto/16 :goto_17

    .line 2126
    .line 2127
    :cond_4e
    iget-object v7, v7, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 2128
    .line 2129
    if-nez v7, :cond_4f

    .line 2130
    .line 2131
    const-string v1, "\u8bf7\u5148\u6fc0\u6d3b Shizuku \u5e76 \u6388\u6743\u4e8e\u6211"

    .line 2132
    .line 2133
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 2134
    .line 2135
    .line 2136
    goto/16 :goto_17

    .line 2137
    .line 2138
    :cond_4f
    if-lt v1, v6, :cond_51

    .line 2139
    .line 2140
    const/16 v6, 0x19

    .line 2141
    .line 2142
    if-le v1, v6, :cond_50

    .line 2143
    .line 2144
    goto :goto_11

    .line 2145
    :cond_50
    :goto_10
    const/16 v6, 0x12

    .line 2146
    .line 2147
    goto :goto_12

    .line 2148
    :cond_51
    :goto_11
    const/16 v6, 0x192

    .line 2149
    .line 2150
    if-eq v1, v6, :cond_50

    .line 2151
    .line 2152
    const/16 v6, 0x193

    .line 2153
    .line 2154
    if-eq v1, v6, :cond_50

    .line 2155
    .line 2156
    const/16 v6, 0x195

    .line 2157
    .line 2158
    if-ne v1, v6, :cond_52

    .line 2159
    .line 2160
    goto :goto_10

    .line 2161
    :goto_12
    if-lt v5, v6, :cond_52

    .line 2162
    .line 2163
    const-class v5, Lcom/yunpan/appmanage/service/StartService;

    .line 2164
    .line 2165
    invoke-static {v5}, Lcom/hjq/permissions/permission/PermissionLists;->getBindNotificationListenerServicePermission(Ljava/lang/Class;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 2166
    .line 2167
    .line 2168
    move-result-object v5

    .line 2169
    invoke-static {v4, v5}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 2170
    .line 2171
    .line 2172
    move-result v5

    .line 2173
    if-nez v5, :cond_52

    .line 2174
    .line 2175
    const-string v1, "\u8bf7\u5148\u6388\u4e88\u3010\u901a\u77e5\u4f7f\u7528\u6743\u3011\u6743\u9650"

    .line 2176
    .line 2177
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 2178
    .line 2179
    .line 2180
    goto/16 :goto_17

    .line 2181
    .line 2182
    :cond_52
    if-eq v1, v8, :cond_53

    .line 2183
    .line 2184
    if-ne v1, v3, :cond_54

    .line 2185
    .line 2186
    :cond_53
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAnswerPhoneCallsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 2187
    .line 2188
    .line 2189
    move-result-object v3

    .line 2190
    invoke-static {v4, v3}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 2191
    .line 2192
    .line 2193
    move-result v3

    .line 2194
    if-nez v3, :cond_54

    .line 2195
    .line 2196
    invoke-static {v4}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 2197
    .line 2198
    .line 2199
    move-result-object v1

    .line 2200
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAnswerPhoneCallsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 2201
    .line 2202
    .line 2203
    move-result-object v2

    .line 2204
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 2205
    .line 2206
    .line 2207
    move-result-object v1

    .line 2208
    new-instance v2, Lg2/c;

    .line 2209
    .line 2210
    const/16 v3, 0x11

    .line 2211
    .line 2212
    invoke-direct {v2, v3}, Lg2/c;-><init>(I)V

    .line 2213
    .line 2214
    .line 2215
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 2216
    .line 2217
    .line 2218
    goto/16 :goto_17

    .line 2219
    .line 2220
    :cond_54
    const/16 v3, 0x7d0

    .line 2221
    .line 2222
    if-lt v1, v3, :cond_58

    .line 2223
    .line 2224
    const/16 v3, 0xbb8

    .line 2225
    .line 2226
    if-ge v1, v3, :cond_58

    .line 2227
    .line 2228
    const/16 v3, 0x7d5

    .line 2229
    .line 2230
    if-ne v1, v3, :cond_55

    .line 2231
    .line 2232
    const-string v1, "\u667a\u80fd\uff1a\u68c0\u6d4b\u5230\u6ca1\u6709\u8fde\u84dd\u7259\u65f6\u4f1a\u91cd\u542f\u84dd\u7259\u6a21\u5757"

    .line 2233
    .line 2234
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 2235
    .line 2236
    .line 2237
    goto :goto_13

    .line 2238
    :cond_55
    const/16 v3, 0x7d6

    .line 2239
    .line 2240
    if-ne v1, v3, :cond_56

    .line 2241
    .line 2242
    const-string v1, "\u667a\u80fd\uff1a\u68c0\u6d4b\u6ca1\u6709\u8fdewifi\u65f6\u4f1a\u91cd\u542fwifi\u6a21\u5757"

    .line 2243
    .line 2244
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 2245
    .line 2246
    .line 2247
    goto :goto_13

    .line 2248
    :cond_56
    const/16 v3, 0x7db

    .line 2249
    .line 2250
    if-ne v1, v3, :cond_57

    .line 2251
    .line 2252
    const-string v1, "\u5982\u679c\u6ca1\u8fde\u84dd\u7259\u65f6\uff0c\u4f1a\u91cd\u65b0\u626b\u63cf\u84dd\u7259\n\u5982\u679c\u6ca1\u8fdewifi\u65f6\uff0c\u4f1a\u91cd\u65b0\u626b\u63cfWIFI"

    .line 2253
    .line 2254
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 2255
    .line 2256
    .line 2257
    goto :goto_13

    .line 2258
    :cond_57
    const/16 v3, 0x7da

    .line 2259
    .line 2260
    if-ne v1, v3, :cond_58

    .line 2261
    .line 2262
    const-string v1, "\u5982\u679c\u6ca1\u8fde\u84dd\u7259\u65f6\uff0c\u4f1a\u91cd\u542f\u84dd\u7259\u6a21\u5f0f\n\u5982\u679c\u6ca1\u8fdewifi\u65f6\uff0c\u4f1a\u91cd\u542fWIFI\u6a21\u5757"

    .line 2263
    .line 2264
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 2265
    .line 2266
    .line 2267
    :cond_58
    :goto_13
    iget-object v1, v15, Lha/t9;->i:Lx9/t0;

    .line 2268
    .line 2269
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 2270
    .line 2271
    .line 2272
    move-result-object v1

    .line 2273
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 2274
    .line 2275
    iget-object v2, v15, Lha/t9;->k:Lf2/e0;

    .line 2276
    .line 2277
    invoke-virtual {v2, v1}, Lf2/e0;->a(Lcom/yunpan/appmanage/bean/KeyMapSelectBean;)V

    .line 2278
    .line 2279
    .line 2280
    invoke-virtual {v15}, Landroid/app/Dialog;->dismiss()V

    .line 2281
    .line 2282
    .line 2283
    goto :goto_17

    .line 2284
    :cond_59
    :goto_14
    new-instance v1, Lha/z6;

    .line 2285
    .line 2286
    new-instance v10, Lha/s9;

    .line 2287
    .line 2288
    invoke-direct {v10, v15, v2, v14}, Lha/s9;-><init>(Lha/t9;II)V

    .line 2289
    .line 2290
    .line 2291
    iget-object v4, v15, Lha/a4;->a:Landroid/app/Activity;

    .line 2292
    .line 2293
    iget-object v5, v15, Lha/a4;->b:Landroid/content/Context;

    .line 2294
    .line 2295
    const-string v8, "\u77e5\u9053\u4e86"

    .line 2296
    .line 2297
    const-string v9, ""

    .line 2298
    .line 2299
    const-string v6, "\u83b7\u53d6\u7cfb\u7edf\u5f53\u524d\u663e\u793a\u7a97\u53e3\u7684\u5e03\u5c40\u5c5e\u6027\n\n\u4f1a\u628a\u5185\u5bb9\u4fdd\u5b58\u5728\uff1a\u5185\u90e8\u5b58\u50a8/1\u7a97\u53e3\u5e03\u5c40  \u8fd9\u4e2a\u6587\u4ef6\u5939\u91cc"

    .line 2300
    .line 2301
    const-string v7, ""

    .line 2302
    .line 2303
    move-object v3, v1

    .line 2304
    invoke-direct/range {v3 .. v10}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 2305
    .line 2306
    .line 2307
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 2308
    .line 2309
    .line 2310
    goto :goto_17

    .line 2311
    :cond_5a
    :goto_15
    new-instance v2, Lha/tb;

    .line 2312
    .line 2313
    if-ne v1, v5, :cond_5b

    .line 2314
    .line 2315
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 2316
    .line 2317
    iget-object v3, v3, Lwa/u;->x:Ljava/util/Set;

    .line 2318
    .line 2319
    goto :goto_16

    .line 2320
    :cond_5b
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 2321
    .line 2322
    iget-object v3, v3, Lwa/u;->y:Ljava/util/Set;

    .line 2323
    .line 2324
    :goto_16
    new-instance v4, Landroidx/leanback/widget/i;

    .line 2325
    .line 2326
    invoke-direct {v4, v1, v10}, Landroidx/leanback/widget/i;-><init>(II)V

    .line 2327
    .line 2328
    .line 2329
    iget-object v1, v15, Lha/a4;->a:Landroid/app/Activity;

    .line 2330
    .line 2331
    iget-object v5, v15, Lha/a4;->b:Landroid/content/Context;

    .line 2332
    .line 2333
    invoke-direct {v2, v1, v5, v3, v4}, Lha/tb;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/Set;Landroidx/leanback/widget/i;)V

    .line 2334
    .line 2335
    .line 2336
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 2337
    .line 2338
    .line 2339
    invoke-virtual {v15}, Landroid/app/Dialog;->dismiss()V

    .line 2340
    .line 2341
    .line 2342
    :cond_5c
    :goto_17
    return-void

    .line 2343
    :pswitch_10
    check-cast v15, Lha/n9;

    .line 2344
    .line 2345
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2346
    .line 2347
    .line 2348
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 2349
    .line 2350
    .line 2351
    move-result-object v3

    .line 2352
    check-cast v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 2353
    .line 2354
    if-nez v2, :cond_5d

    .line 2355
    .line 2356
    iget-boolean v4, v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 2357
    .line 2358
    xor-int/2addr v4, v14

    .line 2359
    iput-boolean v4, v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 2360
    .line 2361
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 2362
    .line 2363
    .line 2364
    iget-object v1, v15, Lha/n9;->i:Lz7/s;

    .line 2365
    .line 2366
    iget-boolean v2, v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 2367
    .line 2368
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2369
    .line 2370
    .line 2371
    move-result-object v2

    .line 2372
    const-string v3, "auto_parking"

    .line 2373
    .line 2374
    invoke-virtual {v1, v3, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2375
    .line 2376
    .line 2377
    iget-object v1, v15, Lha/n9;->i:Lz7/s;

    .line 2378
    .line 2379
    iget-object v2, v15, Lha/a4;->b:Landroid/content/Context;

    .line 2380
    .line 2381
    invoke-static {v2, v1}, Lq4/a;->R(Landroid/content/Context;Lz7/s;)V

    .line 2382
    .line 2383
    .line 2384
    const-string v1, "UP_INIT_AIONY"

    .line 2385
    .line 2386
    invoke-static {v2, v1}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 2387
    .line 2388
    .line 2389
    :cond_5d
    return-void

    .line 2390
    :pswitch_11
    check-cast v15, Lha/z7;

    .line 2391
    .line 2392
    iget-object v1, v15, Lha/z7;->g:Lea/c;

    .line 2393
    .line 2394
    iget-object v3, v15, Lha/z7;->i:Lx9/i2;

    .line 2395
    .line 2396
    invoke-virtual {v3, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 2397
    .line 2398
    .line 2399
    move-result-object v2

    .line 2400
    check-cast v2, Lcom/yunpan/appmanage/bean/IntIntBean;

    .line 2401
    .line 2402
    iget v2, v2, Lcom/yunpan/appmanage/bean/IntIntBean;->int1:I

    .line 2403
    .line 2404
    invoke-interface {v1, v2}, Lea/c;->e(I)V

    .line 2405
    .line 2406
    .line 2407
    invoke-virtual {v15}, Lha/z7;->dismiss()V

    .line 2408
    .line 2409
    .line 2410
    return-void

    .line 2411
    :pswitch_12
    check-cast v15, Lha/r7;

    .line 2412
    .line 2413
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2414
    .line 2415
    .line 2416
    invoke-static/range {p2 .. p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 2417
    .line 2418
    .line 2419
    invoke-virtual {v15}, Lha/r7;->dismiss()V

    .line 2420
    .line 2421
    .line 2422
    iget-object v1, v15, Lha/r7;->i:Lx9/r2;

    .line 2423
    .line 2424
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 2425
    .line 2426
    .line 2427
    move-result-object v1

    .line 2428
    check-cast v1, Lcom/yunpan/appmanage/util/d;

    .line 2429
    .line 2430
    iget-object v1, v1, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 2431
    .line 2432
    iget-object v2, v15, Lha/r7;->g:Lua/d8;

    .line 2433
    .line 2434
    iget v3, v2, Lua/d8;->a:I

    .line 2435
    .line 2436
    packed-switch v3, :pswitch_data_1

    .line 2437
    .line 2438
    .line 2439
    iget-object v2, v2, Lua/d8;->b:Lua/q8;

    .line 2440
    .line 2441
    invoke-virtual {v2, v1}, Lua/q8;->z(Ljava/lang/String;)V

    .line 2442
    .line 2443
    .line 2444
    goto :goto_18

    .line 2445
    :pswitch_13
    iget-object v2, v2, Lua/d8;->b:Lua/q8;

    .line 2446
    .line 2447
    invoke-virtual {v2, v1}, Lua/q8;->E(Ljava/lang/String;)V

    .line 2448
    .line 2449
    .line 2450
    :goto_18
    return-void

    .line 2451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 2452
    .line 2453
    .line 2454
    .line 2455
    .line 2456
    .line 2457
    .line 2458
    .line 2459
    .line 2460
    .line 2461
    .line 2462
    .line 2463
    .line 2464
    .line 2465
    .line 2466
    .line 2467
    .line 2468
    .line 2469
    .line 2470
    .line 2471
    .line 2472
    .line 2473
    .line 2474
    .line 2475
    .line 2476
    .line 2477
    .line 2478
    .line 2479
    .line 2480
    .line 2481
    .line 2482
    .line 2483
    .line 2484
    .line 2485
    .line 2486
    .line 2487
    .line 2488
    .line 2489
    .line 2490
    .line 2491
    .line 2492
    .line 2493
    .line 2494
    .line 2495
    .line 2496
    .line 2497
    .line 2498
    .line 2499
    .line 2500
    .line 2501
    .line 2502
    .line 2503
    .line 2504
    .line 2505
    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_13
    .end packed-switch
.end method
