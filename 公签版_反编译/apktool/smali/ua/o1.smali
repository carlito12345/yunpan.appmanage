.class public final synthetic Lua/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lba/r;


# direct methods
.method public synthetic constructor <init>(Lba/r;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/o1;->a:I

    iput-object p1, p0, Lua/o1;->b:Lba/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x9

    .line 4
    .line 5
    const/4 v3, 0x7

    .line 6
    const/4 v4, 0x5

    .line 7
    const/4 v5, 0x4

    .line 8
    const/4 v6, 0x3

    .line 9
    const/4 v7, 0x2

    .line 10
    iget-object v8, p0, Lua/o1;->b:Lba/r;

    .line 11
    .line 12
    const/4 v9, 0x1

    .line 13
    iget v10, p0, Lua/o1;->a:I

    .line 14
    .line 15
    packed-switch v10, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    sget v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->P0:I

    .line 19
    .line 20
    iput v9, v8, Lba/r;->n:I

    .line 21
    .line 22
    :try_start_0
    iget v0, v8, Lba/r;->a:I

    .line 23
    .line 24
    if-ne v0, v9, :cond_0

    .line 25
    .line 26
    invoke-static {v8}, Lqf/c;->v(Lba/r;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    if-ne v0, v7, :cond_1

    .line 34
    .line 35
    invoke-static {v8}, Lcom/bumptech/glide/c;->R(Lba/r;)Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    if-ne v0, v6, :cond_2

    .line 41
    .line 42
    invoke-static {v8}, Lcom/bumptech/glide/d;->Q(Lba/r;)Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    if-ne v0, v5, :cond_3

    .line 48
    .line 49
    invoke-static {v8}, Ls1/g;->y(Lba/r;)Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    if-ne v0, v4, :cond_4

    .line 55
    .line 56
    invoke-static {v8}, Lif/a;->I(Lba/r;)Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_0

    .line 61
    :cond_4
    if-ne v0, v3, :cond_5

    .line 62
    .line 63
    invoke-static {v8}, Ld/b;->B(Lba/r;)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    goto :goto_0

    .line 68
    :cond_5
    const/16 v3, 0x8

    .line 69
    .line 70
    if-ne v0, v3, :cond_6

    .line 71
    .line 72
    const-string v0, ""

    .line 73
    .line 74
    invoke-static {v8, v0}, Lq4/a;->m(Lba/r;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_0

    .line 79
    :cond_6
    if-ne v0, v2, :cond_7

    .line 80
    .line 81
    invoke-static {v8}, Ls1/g;->x(Lba/r;)Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_7
    :goto_0
    if-nez v1, :cond_8

    .line 86
    .line 87
    const-string v0, "\u8bfb\u53d6\u76ee\u5f55\u5931\u8d25"

    .line 88
    .line 89
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_8
    invoke-virtual {p1, v8}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :goto_1
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :goto_2
    return-void

    .line 107
    :pswitch_0
    sget v10, Lcom/yunpan/appmanage/ui/ActivityDownload;->P0:I

    .line 108
    .line 109
    iget v10, v8, Lba/r;->n:I

    .line 110
    .line 111
    add-int/2addr v10, v9

    .line 112
    iput v10, v8, Lba/r;->n:I

    .line 113
    .line 114
    iget v10, v8, Lba/r;->a:I

    .line 115
    .line 116
    if-ne v10, v9, :cond_9

    .line 117
    .line 118
    invoke-static {v8}, Lqf/c;->v(Lba/r;)Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    goto/16 :goto_5

    .line 123
    .line 124
    :cond_9
    if-ne v10, v7, :cond_11

    .line 125
    .line 126
    const-string v1, "\u83b7\u53d6\u5217\u8868\u51fa\u9519"

    .line 127
    .line 128
    const-string v2, "pg="

    .line 129
    .line 130
    :try_start_1
    iget-object v3, v8, Lba/r;->k:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v4, v8, Lba/r;->c:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v10, v8, Lba/r;->l:Ljava/lang/String;

    .line 135
    .line 136
    const-string v11, "pg=1"

    .line 137
    .line 138
    new-instance v12, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget v2, v8, Lba/r;->n:I

    .line 144
    .line 145
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v10, v11, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    iget-object v10, v8, Lba/r;->i:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v3, v4, v2, v10, v9}, Lcom/bumptech/glide/c;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 162
    const-string v3, "\"zt\""

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_10

    .line 169
    .line 170
    new-instance v3, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-static {v2}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    const-string v4, "zt"

    .line 184
    .line 185
    invoke-virtual {v2, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v4}, Lz7/p;->e()I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-ne v4, v9, :cond_c

    .line 194
    .line 195
    const-string v1, "text"

    .line 196
    .line 197
    invoke-virtual {v2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lz7/p;->f()Lz7/o;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    iget-object v2, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    const/4 v4, 0x0

    .line 212
    :goto_3
    if-ge v4, v2, :cond_a

    .line 213
    .line 214
    new-instance v5, Lba/i;

    .line 215
    .line 216
    invoke-direct {v5, v0}, Lba/i;-><init>(I)V

    .line 217
    .line 218
    .line 219
    const-string v6, "name_all"

    .line 220
    .line 221
    invoke-static {v1, v4, v6}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    iput-object v6, v5, Lba/i;->a:Ljava/lang/Object;

    .line 226
    .line 227
    const-string v6, "time"

    .line 228
    .line 229
    invoke-static {v1, v4, v6}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    iput-object v6, v5, Lba/i;->c:Ljava/lang/Object;

    .line 234
    .line 235
    const-string v6, "size"

    .line 236
    .line 237
    invoke-static {v1, v4, v6}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    iput-object v6, v5, Lba/i;->b:Ljava/lang/Object;

    .line 242
    .line 243
    new-instance v6, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    iget-object v7, v8, Lba/r;->b:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v7, "/"

    .line 254
    .line 255
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v4}, Lz7/o;->l(I)Lz7/p;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    invoke-virtual {v7}, Lz7/p;->g()Lz7/s;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    const-string v10, "id"

    .line 267
    .line 268
    invoke-virtual {v7, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    invoke-virtual {v7}, Lz7/p;->i()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    iput-object v6, v5, Lba/i;->d:Ljava/lang/Object;

    .line 284
    .line 285
    new-instance v6, Lx9/b6;

    .line 286
    .line 287
    invoke-direct {v6, v5}, Lx9/b6;-><init>(Lba/i;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    add-int/2addr v4, v9

    .line 294
    goto :goto_3

    .line 295
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 296
    .line 297
    .line 298
    const/16 v1, 0x32

    .line 299
    .line 300
    if-lt v2, v1, :cond_b

    .line 301
    .line 302
    iput-boolean v9, v8, Lba/r;->o:Z

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_b
    iput-boolean v0, v8, Lba/r;->o:Z

    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_c
    if-ne v4, v7, :cond_d

    .line 309
    .line 310
    iput-boolean v0, v8, Lba/r;->o:Z

    .line 311
    .line 312
    :goto_4
    move-object v1, v3

    .line 313
    goto :goto_5

    .line 314
    :cond_d
    if-eq v4, v6, :cond_f

    .line 315
    .line 316
    if-ne v4, v5, :cond_e

    .line 317
    .line 318
    new-instance p1, Ljava/lang/Exception;

    .line 319
    .line 320
    const-string v0, "\u5237\u592a\u5feb\uff0c\u8bf7\u91cd\u8bd5\uff01\u6216\u8005\u6253\u5f00\u94fe\u63a5\u592a\u4e45\u4e86\uff0c\u9875\u9762\u5931\u6548\u4e86\uff0c\u8bf7\u91cd\u65b0\u6253\u5f00\u8fde\u63a5\uff01"

    .line 321
    .line 322
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw p1

    .line 326
    :cond_e
    :try_start_2
    const-string p1, "info"

    .line 327
    .line 328
    invoke-virtual {v2, p1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 336
    :catch_1
    new-instance p1, Ljava/lang/Exception;

    .line 337
    .line 338
    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw p1

    .line 342
    :cond_f
    new-instance p1, Ljava/lang/Exception;

    .line 343
    .line 344
    const-string v0, "\u63d0\u53d6\u7801\u9519\u8bef"

    .line 345
    .line 346
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw p1

    .line 350
    :cond_10
    new-instance p1, Ljava/lang/Exception;

    .line 351
    .line 352
    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw p1

    .line 356
    :catch_2
    new-instance p1, Ljava/lang/Exception;

    .line 357
    .line 358
    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw p1

    .line 362
    :cond_11
    if-ne v10, v6, :cond_12

    .line 363
    .line 364
    invoke-static {v8}, Lcom/bumptech/glide/d;->W(Lba/r;)Ljava/util/ArrayList;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    goto :goto_5

    .line 369
    :cond_12
    if-ne v10, v5, :cond_13

    .line 370
    .line 371
    invoke-static {v8}, Ls1/g;->y(Lba/r;)Ljava/util/ArrayList;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    goto :goto_5

    .line 376
    :cond_13
    if-ne v10, v4, :cond_14

    .line 377
    .line 378
    invoke-static {v8}, Lif/a;->I(Lba/r;)Ljava/util/ArrayList;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    goto :goto_5

    .line 383
    :cond_14
    if-ne v10, v3, :cond_15

    .line 384
    .line 385
    invoke-static {v8}, Ld/b;->B(Lba/r;)Ljava/util/ArrayList;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    goto :goto_5

    .line 390
    :cond_15
    if-ne v10, v2, :cond_16

    .line 391
    .line 392
    invoke-static {v8}, Ls1/g;->x(Lba/r;)Ljava/util/ArrayList;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    :cond_16
    :goto_5
    invoke-virtual {p1, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
