.class public final Landroidx/emoji2/text/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/emoji2/text/j;->a:I

    iput-object p3, p0, Landroidx/emoji2/text/j;->c:Ljava/lang/Object;

    iput p1, p0, Landroidx/emoji2/text/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILm4/m;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/emoji2/text/j;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/emoji2/text/j;->b:I

    .line 4
    iput-object p2, p0, Landroidx/emoji2/text/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/Throwable;)V
    .locals 0

    const/4 p3, 0x0

    iput p3, p0, Landroidx/emoji2/text/j;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string p3, "initCallbacks cannot be null"

    invoke-static {p1, p3}, Ls1/g;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Landroidx/emoji2/text/j;->c:Ljava/lang/Object;

    .line 8
    iput p2, p0, Landroidx/emoji2/text/j;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Landroidx/emoji2/text/j;->b:I

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/emoji2/text/j;->c:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget v5, v1, Landroidx/emoji2/text/j;->a:I

    .line 9
    .line 10
    packed-switch v5, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const-string v5, "addSuppressed"

    .line 14
    .line 15
    const-class v6, Ljava/lang/Throwable;

    .line 16
    .line 17
    const-string v7, ""

    .line 18
    .line 19
    const-string v8, "https://api.ilanzou.com/unproved/file/redirect?"

    .line 20
    .line 21
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 22
    .line 23
    iget-object v9, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 24
    .line 25
    invoke-virtual {v9, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v9, v0

    .line 30
    check-cast v9, Lx9/u5;

    .line 31
    .line 32
    iget-boolean v0, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->h0:Z

    .line 33
    .line 34
    const-string v10, "\u5df2\u53d6\u6d88"

    .line 35
    .line 36
    if-nez v0, :cond_1a

    .line 37
    .line 38
    iget-boolean v0, v9, Lx9/u5;->i:Z

    .line 39
    .line 40
    iget-object v11, v9, Lx9/u5;->d:Lx9/b6;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    goto/16 :goto_16

    .line 45
    .line 46
    :cond_0
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    .line 47
    .line 48
    iput-object v0, v9, Lx9/u5;->c:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v2, v9}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Ljava/io/File;

    .line 54
    .line 55
    iget-object v12, v9, Lx9/u5;->f:Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    const/16 v13, 0x50

    .line 69
    .line 70
    if-le v12, v13, :cond_1

    .line 71
    .line 72
    new-instance v12, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v14

    .line 81
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v14, "/"

    .line 85
    .line 86
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v15

    .line 101
    sub-int/2addr v15, v13

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-virtual {v14, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, v9, Lx9/u5;->f:Ljava/lang/String;

    .line 122
    .line 123
    :cond_1
    :try_start_0
    iget-object v0, v11, Lx9/b6;->b:Landroidx/emoji2/text/q;

    .line 124
    .line 125
    if-eqz v0, :cond_2

    .line 126
    .line 127
    iget-object v8, v9, Lx9/u5;->g:Lba/r;

    .line 128
    .line 129
    iget-object v11, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->Y:Lx9/n5;

    .line 130
    .line 131
    invoke-static {v8, v0, v11}, Lqf/c;->w(Lba/r;Landroidx/emoji2/text/q;Lx9/n5;)Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v8, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrl:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrlReferer:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v8, v0}, Lcom/yunpan/appmanage/ui/ActivityDownload;->z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ResponseBody;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    :goto_0
    move-object/from16 v18, v5

    .line 144
    .line 145
    goto/16 :goto_1

    .line 146
    .line 147
    :catch_0
    move-exception v0

    .line 148
    goto/16 :goto_15

    .line 149
    .line 150
    :cond_2
    iget-object v0, v11, Lx9/b6;->c:Lba/j;

    .line 151
    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    iget-wide v11, v0, Lba/j;->a:J

    .line 155
    .line 156
    iget-object v0, v9, Lx9/u5;->g:Lba/r;

    .line 157
    .line 158
    iget-object v13, v0, Lba/r;->g:Ljava/lang/String;

    .line 159
    .line 160
    iget-object v0, v0, Lba/r;->f:Ljava/lang/String;

    .line 161
    .line 162
    invoke-static {v11, v12, v13, v0}, Lcom/bumptech/glide/d;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    if-nez v11, :cond_3

    .line 171
    .line 172
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {v0, v7}, Lcom/yunpan/appmanage/ui/ActivityDownload;->z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ResponseBody;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    goto :goto_0

    .line 181
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    .line 182
    .line 183
    const-string v3, "\u89e3\u6790\u5931\u8d25"

    .line 184
    .line 185
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :cond_4
    iget-object v0, v11, Lx9/b6;->a:Lba/i;

    .line 190
    .line 191
    if-eqz v0, :cond_6

    .line 192
    .line 193
    iget-object v0, v0, Lba/i;->d:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v0, Ljava/lang/String;

    .line 196
    .line 197
    const-string v8, "/file/"

    .line 198
    .line 199
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_5

    .line 204
    .line 205
    new-instance v0, Lba/r;

    .line 206
    .line 207
    iget-object v8, v11, Lx9/b6;->a:Lba/i;

    .line 208
    .line 209
    iget-object v8, v8, Lba/i;->d:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v8, Ljava/lang/String;

    .line 212
    .line 213
    iget-object v12, v9, Lx9/u5;->g:Lba/r;

    .line 214
    .line 215
    iget-object v13, v12, Lba/r;->d:Ljava/lang/String;

    .line 216
    .line 217
    iget-object v12, v12, Lba/r;->i:Ljava/lang/String;

    .line 218
    .line 219
    invoke-direct {v0, v8, v13, v12, v3}, Lba/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    invoke-static {v0}, Lcom/bumptech/glide/c;->R(Lba/r;)Ljava/util/ArrayList;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    iget-object v8, v11, Lx9/b6;->a:Lba/i;

    .line 227
    .line 228
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    check-cast v0, Lx9/b6;

    .line 233
    .line 234
    iget-object v0, v0, Lx9/b6;->a:Lba/i;

    .line 235
    .line 236
    iget-object v0, v0, Lba/i;->d:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v0, Ljava/lang/String;

    .line 239
    .line 240
    iput-object v0, v8, Lba/i;->d:Ljava/lang/Object;

    .line 241
    .line 242
    :cond_5
    iget-object v0, v11, Lx9/b6;->a:Lba/i;

    .line 243
    .line 244
    iget-object v8, v0, Lba/i;->d:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v8, Ljava/lang/String;

    .line 247
    .line 248
    iget-object v0, v0, Lba/i;->e:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v0, Ljava/lang/String;

    .line 251
    .line 252
    iget-object v11, v9, Lx9/u5;->g:Lba/r;

    .line 253
    .line 254
    iget-object v11, v11, Lba/r;->i:Ljava/lang/String;

    .line 255
    .line 256
    invoke-static {v8, v0, v11}, Lnh/b;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ResponseBody;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    goto :goto_0

    .line 261
    :cond_6
    iget-object v0, v11, Lx9/b6;->e:Lba/s;

    .line 262
    .line 263
    if-eqz v0, :cond_7

    .line 264
    .line 265
    iget-object v8, v9, Lx9/u5;->g:Lba/r;

    .line 266
    .line 267
    iget-object v11, v8, Lba/r;->c:Ljava/lang/String;

    .line 268
    .line 269
    iget-object v12, v8, Lba/r;->f:Ljava/lang/String;

    .line 270
    .line 271
    iget-object v13, v8, Lba/r;->g:Ljava/lang/String;

    .line 272
    .line 273
    iget-wide v14, v0, Lba/s;->d:J

    .line 274
    .line 275
    iget v0, v0, Lba/s;->e:I

    .line 276
    .line 277
    move-object/from16 v18, v5

    .line 278
    .line 279
    int-to-long v4, v0

    .line 280
    move-wide/from16 v16, v4

    .line 281
    .line 282
    invoke-static/range {v11 .. v17}, Ls1/g;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lokhttp3/ResponseBody;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    goto/16 :goto_1

    .line 287
    .line 288
    :cond_7
    move-object/from16 v18, v5

    .line 289
    .line 290
    iget-object v0, v11, Lx9/b6;->j:Lba/g;

    .line 291
    .line 292
    if-eqz v0, :cond_8

    .line 293
    .line 294
    iget-object v4, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->Z:Lx9/n5;

    .line 295
    .line 296
    iget-object v5, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 297
    .line 298
    invoke-virtual {v5, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    check-cast v5, Lba/r;

    .line 303
    .line 304
    iget-object v5, v5, Lba/r;->h:Ljava/lang/String;

    .line 305
    .line 306
    invoke-static {v4, v0, v5}, Ls1/g;->A(Lx9/n5;Lba/g;Ljava/lang/String;)Lokhttp3/ResponseBody;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    goto :goto_1

    .line 311
    :cond_8
    iget-object v0, v11, Lx9/b6;->f:Lba/l;

    .line 312
    .line 313
    if-eqz v0, :cond_9

    .line 314
    .line 315
    iget-object v4, v9, Lx9/u5;->g:Lba/r;

    .line 316
    .line 317
    invoke-static {v4, v0}, Lif/a;->J(Lba/r;Lba/l;)Lokhttp3/ResponseBody;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    goto :goto_1

    .line 322
    :cond_9
    iget-object v0, v11, Lx9/b6;->g:Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 323
    .line 324
    if-eqz v0, :cond_a

    .line 325
    .line 326
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/NameValueBean;->value:Ljava/lang/String;

    .line 327
    .line 328
    invoke-static {v0, v7}, Lcom/yunpan/appmanage/ui/ActivityDownload;->z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ResponseBody;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    goto :goto_1

    .line 333
    :cond_a
    iget-object v0, v11, Lx9/b6;->h:Lba/k;

    .line 334
    .line 335
    if-eqz v0, :cond_b

    .line 336
    .line 337
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 338
    .line 339
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    const/4 v5, 0x1

    .line 344
    sub-int/2addr v4, v5

    .line 345
    invoke-virtual {v0, v4}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    check-cast v0, Lba/r;

    .line 350
    .line 351
    iget-object v4, v11, Lx9/b6;->h:Lba/k;

    .line 352
    .line 353
    invoke-static {v0, v4}, Ld/b;->C(Lba/r;Lba/k;)Lokhttp3/ResponseBody;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    goto :goto_1

    .line 358
    :cond_b
    iget-object v0, v11, Lx9/b6;->i:Lba/n;

    .line 359
    .line 360
    if-eqz v0, :cond_c

    .line 361
    .line 362
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 363
    .line 364
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    const/4 v5, 0x1

    .line 369
    sub-int/2addr v4, v5

    .line 370
    invoke-virtual {v0, v4}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    check-cast v0, Lba/r;

    .line 375
    .line 376
    iget-object v4, v11, Lx9/b6;->i:Lba/n;

    .line 377
    .line 378
    invoke-static {v0, v4}, Lq4/a;->h(Lba/r;Lba/n;)Lokhttp3/ResponseBody;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    goto :goto_1

    .line 383
    :cond_c
    iget-object v0, v11, Lx9/b6;->d:Ljava/lang/String;

    .line 384
    .line 385
    if-eqz v0, :cond_d

    .line 386
    .line 387
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-nez v0, :cond_d

    .line 392
    .line 393
    iget-object v0, v11, Lx9/b6;->d:Ljava/lang/String;

    .line 394
    .line 395
    invoke-static {v0, v7}, Lcom/yunpan/appmanage/ui/ActivityDownload;->z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ResponseBody;

    .line 396
    .line 397
    .line 398
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    goto :goto_1

    .line 400
    :cond_d
    const/4 v0, 0x0

    .line 401
    :goto_1
    if-nez v0, :cond_e

    .line 402
    .line 403
    const-string v0, "body\u4e3a\u7a7a"

    .line 404
    .line 405
    iput-object v0, v9, Lx9/u5;->c:Ljava/lang/String;

    .line 406
    .line 407
    invoke-static {v2, v9}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 408
    .line 409
    .line 410
    goto/16 :goto_17

    .line 411
    .line 412
    :cond_e
    iget-object v4, v9, Lx9/u5;->f:Ljava/lang/String;

    .line 413
    .line 414
    invoke-static {v4}, Lif/a;->k0(Ljava/lang/String;)Z

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    if-eqz v4, :cond_f

    .line 419
    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .line 424
    .line 425
    iget-object v5, v9, Lx9/u5;->f:Ljava/lang/String;

    .line 426
    .line 427
    const-string v7, "."

    .line 428
    .line 429
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 430
    .line 431
    .line 432
    move-result v7

    .line 433
    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const-string v5, ".apk"

    .line 441
    .line 442
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    iput-object v4, v9, Lx9/u5;->f:Ljava/lang/String;

    .line 450
    .line 451
    :cond_f
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 452
    .line 453
    .line 454
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 455
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    .line 456
    .line 457
    iget-object v7, v9, Lx9/u5;->f:Ljava/lang/String;

    .line 458
    .line 459
    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    .line 460
    .line 461
    .line 462
    :try_start_3
    new-instance v7, Ljava/io/BufferedInputStream;

    .line 463
    .line 464
    invoke-direct {v7, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    .line 465
    .line 466
    .line 467
    :try_start_4
    new-instance v11, Ljava/io/BufferedOutputStream;

    .line 468
    .line 469
    invoke-direct {v11, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 470
    .line 471
    .line 472
    :try_start_5
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 473
    .line 474
    .line 475
    move-result-wide v12

    .line 476
    const/high16 v0, 0x100000

    .line 477
    .line 478
    new-array v0, v0, [B

    .line 479
    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 481
    .line 482
    .line 483
    move-result-wide v14

    .line 484
    const-wide/16 v16, 0x0

    .line 485
    .line 486
    :goto_2
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    .line 487
    .line 488
    .line 489
    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 490
    const/4 v3, -0x1

    .line 491
    if-eq v8, v3, :cond_12

    .line 492
    .line 493
    move-object/from16 v19, v4

    .line 494
    .line 495
    int-to-long v3, v8

    .line 496
    add-long v3, v16, v3

    .line 497
    .line 498
    const/4 v1, 0x0

    .line 499
    :try_start_6
    invoke-virtual {v11, v0, v1, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 500
    .line 501
    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 503
    .line 504
    .line 505
    move-result-wide v16

    .line 506
    sub-long v20, v16, v14

    .line 507
    .line 508
    const-wide/16 v22, 0x1f4

    .line 509
    .line 510
    cmp-long v1, v20, v22

    .line 511
    .line 512
    if-ltz v1, :cond_10

    .line 513
    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .line 518
    .line 519
    const-string v8, "\u4e0b\u8f7d\u4e2d\uff1a"

    .line 520
    .line 521
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 522
    .line 523
    .line 524
    long-to-double v14, v3

    .line 525
    move-wide/from16 v20, v3

    .line 526
    .line 527
    long-to-double v3, v12

    .line 528
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    .line 529
    .line 530
    .line 531
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 532
    .line 533
    .line 534
    div-double/2addr v14, v3

    .line 535
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 536
    .line 537
    mul-double v14, v14, v3

    .line 538
    .line 539
    :try_start_7
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    .line 540
    .line 541
    .line 542
    move-result-wide v3

    .line 543
    double-to-int v3, v3

    .line 544
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    const-string v3, "%"

    .line 548
    .line 549
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    iput-object v1, v9, Lx9/u5;->c:Ljava/lang/String;

    .line 557
    .line 558
    invoke-static {v2, v9}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 559
    .line 560
    .line 561
    move-wide/from16 v14, v16

    .line 562
    .line 563
    goto :goto_4

    .line 564
    :catchall_0
    move-exception v0

    .line 565
    :goto_3
    move-object v1, v0

    .line 566
    goto/16 :goto_7

    .line 567
    .line 568
    :cond_10
    move-wide/from16 v20, v3

    .line 569
    .line 570
    :goto_4
    iget-boolean v1, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->h0:Z

    .line 571
    .line 572
    if-nez v1, :cond_13

    .line 573
    .line 574
    iget-boolean v1, v9, Lx9/u5;->i:Z

    .line 575
    .line 576
    if-eqz v1, :cond_11

    .line 577
    .line 578
    goto :goto_5

    .line 579
    :cond_11
    move-object/from16 v1, p0

    .line 580
    .line 581
    move-object/from16 v4, v19

    .line 582
    .line 583
    move-wide/from16 v16, v20

    .line 584
    .line 585
    const/4 v3, 0x0

    .line 586
    goto :goto_2

    .line 587
    :cond_12
    move-object/from16 v19, v4

    .line 588
    .line 589
    :cond_13
    :goto_5
    invoke-static {v7}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 590
    .line 591
    .line 592
    invoke-static {v11}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 593
    .line 594
    .line 595
    invoke-static {v5}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 596
    .line 597
    .line 598
    invoke-static/range {v19 .. v19}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 599
    .line 600
    .line 601
    iget-boolean v0, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->h0:Z

    .line 602
    .line 603
    if-nez v0, :cond_17

    .line 604
    .line 605
    iget-boolean v0, v9, Lx9/u5;->i:Z

    .line 606
    .line 607
    if-eqz v0, :cond_14

    .line 608
    .line 609
    goto :goto_6

    .line 610
    :cond_14
    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 611
    .line 612
    iput-object v0, v9, Lx9/u5;->c:Ljava/lang/String;

    .line 613
    .line 614
    invoke-static {v2, v9}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 615
    .line 616
    .line 617
    iget-object v0, v9, Lx9/u5;->f:Ljava/lang/String;

    .line 618
    .line 619
    const-string v1, "/data/"

    .line 620
    .line 621
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 622
    .line 623
    .line 624
    move-result v0

    .line 625
    if-nez v0, :cond_15

    .line 626
    .line 627
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    iget-object v1, v9, Lx9/u5;->f:Ljava/lang/String;

    .line 632
    .line 633
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    :cond_15
    iget-boolean v0, v9, Lx9/u5;->e:Z

    .line 637
    .line 638
    if-eqz v0, :cond_16

    .line 639
    .line 640
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->M0:Ljava/util/concurrent/ExecutorService;

    .line 641
    .line 642
    new-instance v1, Ly7/b;

    .line 643
    .line 644
    const/16 v3, 0x18

    .line 645
    .line 646
    const/4 v4, 0x0

    .line 647
    invoke-direct {v1, v3, v2, v9, v4}, Ly7/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 648
    .line 649
    .line 650
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 651
    .line 652
    .line 653
    :cond_16
    :try_start_8
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 654
    .line 655
    .line 656
    :try_start_9
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 657
    .line 658
    .line 659
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 660
    .line 661
    .line 662
    if-eqz v19, :cond_19

    .line 663
    .line 664
    :try_start_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 665
    .line 666
    .line 667
    goto/16 :goto_14

    .line 668
    .line 669
    :catch_1
    move-exception v0

    .line 670
    goto/16 :goto_13

    .line 671
    .line 672
    :catchall_1
    move-exception v0

    .line 673
    move-object v1, v0

    .line 674
    move-object/from16 v11, v18

    .line 675
    .line 676
    goto/16 :goto_11

    .line 677
    .line 678
    :catchall_2
    move-exception v0

    .line 679
    move-object v1, v0

    .line 680
    move-object/from16 v11, v18

    .line 681
    .line 682
    goto/16 :goto_e

    .line 683
    .line 684
    :catchall_3
    move-exception v0

    .line 685
    move-object v1, v0

    .line 686
    move-object/from16 v11, v18

    .line 687
    .line 688
    goto :goto_b

    .line 689
    :cond_17
    :goto_6
    :try_start_c
    iput-object v10, v9, Lx9/u5;->c:Ljava/lang/String;

    .line 690
    .line 691
    invoke-static {v2, v9}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 692
    .line 693
    .line 694
    :try_start_d
    new-instance v0, Ljava/io/File;

    .line 695
    .line 696
    iget-object v1, v9, Lx9/u5;->f:Ljava/lang/String;

    .line 697
    .line 698
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 702
    .line 703
    .line 704
    :catch_2
    :try_start_e
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 705
    .line 706
    .line 707
    :try_start_f
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 708
    .line 709
    .line 710
    :try_start_10
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 711
    .line 712
    .line 713
    if-eqz v19, :cond_1b

    .line 714
    .line 715
    :try_start_11
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    .line 716
    .line 717
    .line 718
    goto/16 :goto_17

    .line 719
    .line 720
    :catchall_4
    move-exception v0

    .line 721
    move-object/from16 v19, v4

    .line 722
    .line 723
    goto/16 :goto_3

    .line 724
    .line 725
    :goto_7
    :try_start_12
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 726
    .line 727
    .line 728
    :catch_3
    move-object/from16 v11, v18

    .line 729
    .line 730
    goto :goto_9

    .line 731
    :catchall_5
    move-exception v0

    .line 732
    move-object v3, v0

    .line 733
    const/4 v4, 0x1

    .line 734
    :try_start_13
    new-array v0, v4, [Ljava/lang/Class;

    .line 735
    .line 736
    const/4 v10, 0x0

    .line 737
    aput-object v6, v0, v10
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 738
    .line 739
    move-object/from16 v11, v18

    .line 740
    .line 741
    :try_start_14
    invoke-virtual {v6, v11, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    new-array v12, v4, [Ljava/lang/Object;

    .line 746
    .line 747
    aput-object v3, v12, v10

    .line 748
    .line 749
    invoke-virtual {v0, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 750
    .line 751
    .line 752
    goto :goto_9

    .line 753
    :catchall_6
    move-exception v0

    .line 754
    goto :goto_a

    .line 755
    :goto_8
    move-object v1, v0

    .line 756
    goto :goto_b

    .line 757
    :catch_4
    :goto_9
    :try_start_15
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 758
    :catchall_7
    move-exception v0

    .line 759
    goto :goto_8

    .line 760
    :catchall_8
    move-exception v0

    .line 761
    move-object/from16 v19, v4

    .line 762
    .line 763
    :goto_a
    move-object/from16 v11, v18

    .line 764
    .line 765
    goto :goto_8

    .line 766
    :goto_b
    :try_start_16
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 767
    .line 768
    .line 769
    goto :goto_d

    .line 770
    :catchall_9
    move-exception v0

    .line 771
    move-object v3, v0

    .line 772
    const/4 v4, 0x1

    .line 773
    :try_start_17
    new-array v0, v4, [Ljava/lang/Class;

    .line 774
    .line 775
    const/4 v7, 0x0

    .line 776
    aput-object v6, v0, v7

    .line 777
    .line 778
    invoke-virtual {v6, v11, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    new-array v10, v4, [Ljava/lang/Object;

    .line 783
    .line 784
    aput-object v3, v10, v7

    .line 785
    .line 786
    invoke-virtual {v0, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 787
    .line 788
    .line 789
    goto :goto_d

    .line 790
    :goto_c
    move-object v1, v0

    .line 791
    goto :goto_e

    .line 792
    :catch_5
    :goto_d
    :try_start_18
    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .line 793
    :catchall_a
    move-exception v0

    .line 794
    goto :goto_c

    .line 795
    :catchall_b
    move-exception v0

    .line 796
    move-object/from16 v19, v4

    .line 797
    .line 798
    move-object/from16 v11, v18

    .line 799
    .line 800
    goto :goto_c

    .line 801
    :goto_e
    :try_start_19
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 802
    .line 803
    .line 804
    goto :goto_10

    .line 805
    :catchall_c
    move-exception v0

    .line 806
    move-object v3, v0

    .line 807
    const/4 v4, 0x1

    .line 808
    :try_start_1a
    new-array v0, v4, [Ljava/lang/Class;

    .line 809
    .line 810
    const/4 v5, 0x0

    .line 811
    aput-object v6, v0, v5

    .line 812
    .line 813
    invoke-virtual {v6, v11, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    new-array v7, v4, [Ljava/lang/Object;

    .line 818
    .line 819
    aput-object v3, v7, v5

    .line 820
    .line 821
    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    .line 822
    .line 823
    .line 824
    goto :goto_10

    .line 825
    :goto_f
    move-object v1, v0

    .line 826
    goto :goto_11

    .line 827
    :catch_6
    :goto_10
    :try_start_1b
    throw v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    .line 828
    :catchall_d
    move-exception v0

    .line 829
    goto :goto_f

    .line 830
    :catchall_e
    move-exception v0

    .line 831
    move-object/from16 v19, v4

    .line 832
    .line 833
    move-object/from16 v11, v18

    .line 834
    .line 835
    goto :goto_f

    .line 836
    :goto_11
    if-eqz v19, :cond_18

    .line 837
    .line 838
    :try_start_1c
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    .line 839
    .line 840
    .line 841
    goto :goto_12

    .line 842
    :catchall_f
    move-exception v0

    .line 843
    move-object v3, v0

    .line 844
    const/4 v4, 0x1

    .line 845
    :try_start_1d
    new-array v0, v4, [Ljava/lang/Class;

    .line 846
    .line 847
    const/4 v5, 0x0

    .line 848
    aput-object v6, v0, v5

    .line 849
    .line 850
    invoke-virtual {v6, v11, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    new-array v4, v4, [Ljava/lang/Object;

    .line 855
    .line 856
    aput-object v3, v4, v5

    .line 857
    .line 858
    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_7

    .line 859
    .line 860
    .line 861
    :catch_7
    :cond_18
    :goto_12
    :try_start_1e
    throw v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1

    .line 862
    :goto_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 863
    .line 864
    .line 865
    const-string v0, "\u51fa\u9519,\u9694\u6bb5\u65f6\u95f4\u518d\u4e0b\u6b64\u6587\u4ef6"

    .line 866
    .line 867
    iput-object v0, v9, Lx9/u5;->c:Ljava/lang/String;

    .line 868
    .line 869
    new-instance v0, Ljava/io/File;

    .line 870
    .line 871
    iget-object v1, v9, Lx9/u5;->f:Ljava/lang/String;

    .line 872
    .line 873
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 877
    .line 878
    .line 879
    move-result v0

    .line 880
    if-eqz v0, :cond_19

    .line 881
    .line 882
    new-instance v0, Ljava/io/File;

    .line 883
    .line 884
    iget-object v1, v9, Lx9/u5;->f:Ljava/lang/String;

    .line 885
    .line 886
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 890
    .line 891
    .line 892
    :cond_19
    :goto_14
    invoke-static {v2, v9}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 893
    .line 894
    .line 895
    goto :goto_17

    .line 896
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 897
    .line 898
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 899
    .line 900
    .line 901
    invoke-static {v0, v1, v7}, Lda/b;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    iput-object v0, v9, Lx9/u5;->c:Ljava/lang/String;

    .line 906
    .line 907
    invoke-static {v2, v9}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 908
    .line 909
    .line 910
    goto :goto_17

    .line 911
    :cond_1a
    :goto_16
    iput-object v10, v9, Lx9/u5;->c:Ljava/lang/String;

    .line 912
    .line 913
    invoke-static {v2, v9}, Lcom/yunpan/appmanage/ui/ActivityDownload;->y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V

    .line 914
    .line 915
    .line 916
    :cond_1b
    :goto_17
    return-void

    .line 917
    :pswitch_0
    check-cast v2, Ll5/y;

    .line 918
    .line 919
    iget-object v1, v2, Ll5/y;->b:Ljava/lang/Object;

    .line 920
    .line 921
    check-cast v1, Lo0/b;

    .line 922
    .line 923
    if-eqz v1, :cond_1c

    .line 924
    .line 925
    invoke-virtual {v1, v0}, Lo0/b;->h(I)V

    .line 926
    .line 927
    .line 928
    :cond_1c
    return-void

    .line 929
    :pswitch_1
    check-cast v2, Lm4/m;

    .line 930
    .line 931
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 932
    .line 933
    .line 934
    return-void

    .line 935
    :pswitch_2
    check-cast v2, Lcom/google/android/material/datepicker/k;

    .line 936
    .line 937
    iget-object v1, v2, Lcom/google/android/material/datepicker/k;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 938
    .line 939
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 940
    .line 941
    .line 942
    return-void

    .line 943
    :pswitch_3
    check-cast v2, Landroidx/leanback/widget/SearchBar;

    .line 944
    .line 945
    iget-object v1, v2, Landroidx/leanback/widget/SearchBar;->w:Landroid/util/SparseIntArray;

    .line 946
    .line 947
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 948
    .line 949
    .line 950
    move-result v4

    .line 951
    iget-object v3, v2, Landroidx/leanback/widget/SearchBar;->v:Landroid/media/SoundPool;

    .line 952
    .line 953
    const/high16 v6, 0x3f800000    # 1.0f

    .line 954
    .line 955
    const/4 v7, 0x1

    .line 956
    const/high16 v5, 0x3f800000    # 1.0f

    .line 957
    .line 958
    const/4 v8, 0x0

    .line 959
    const/high16 v9, 0x3f800000    # 1.0f

    .line 960
    .line 961
    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 962
    .line 963
    .line 964
    return-void

    .line 965
    :pswitch_4
    const/4 v5, 0x0

    .line 966
    check-cast v2, Ljava/util/ArrayList;

    .line 967
    .line 968
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 969
    .line 970
    .line 971
    move-result v1

    .line 972
    const/4 v3, 0x1

    .line 973
    if-eq v0, v3, :cond_1d

    .line 974
    .line 975
    :goto_18
    if-ge v5, v1, :cond_1e

    .line 976
    .line 977
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    check-cast v0, Landroidx/emoji2/text/i;

    .line 982
    .line 983
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 984
    .line 985
    .line 986
    add-int/2addr v5, v3

    .line 987
    goto :goto_18

    .line 988
    :cond_1d
    :goto_19
    if-ge v5, v1, :cond_1e

    .line 989
    .line 990
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    move-result-object v0

    .line 994
    check-cast v0, Landroidx/emoji2/text/i;

    .line 995
    .line 996
    invoke-virtual {v0}, Landroidx/emoji2/text/i;->a()V

    .line 997
    .line 998
    .line 999
    add-int/2addr v5, v3

    .line 1000
    goto :goto_19

    .line 1001
    :cond_1e
    return-void

    .line 1002
    nop

    .line 1003
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
