.class public final synthetic La2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La2/h;->a:I

    iput-object p2, p0, La2/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 7

    .line 1
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld2/i;

    .line 4
    .line 5
    iget-object v1, v0, Ld2/i;->a:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v2, v0, Ld2/i;->m:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    monitor-exit v1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-wide v2, v0, Ld2/i;->l:J

    .line 17
    .line 18
    const-wide/16 v4, 0x1

    .line 19
    .line 20
    sub-long/2addr v2, v4

    .line 21
    iput-wide v2, v0, Ld2/i;->l:J

    .line 22
    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    cmp-long v6, v2, v4

    .line 26
    .line 27
    if-lez v6, :cond_1

    .line 28
    .line 29
    monitor-exit v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    cmp-long v6, v2, v4

    .line 32
    .line 33
    if-gez v6, :cond_2

    .line 34
    .line 35
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ld2/i;->c(Ljava/lang/IllegalStateException;)V

    .line 41
    .line 42
    .line 43
    monitor-exit v1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v0}, Ld2/i;->a()V

    .line 46
    .line 47
    .line 48
    monitor-exit v1

    .line 49
    :goto_0
    return-void

    .line 50
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x7d0

    .line 3
    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    iget v6, p0, La2/h;->a:I

    .line 8
    .line 9
    packed-switch v6, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lha/ja;

    .line 15
    .line 16
    iget-object v1, v0, Lha/ja;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v0, v0, Lha/ja;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :pswitch_0
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lha/ha;

    .line 37
    .line 38
    iget-object v1, v0, Lha/ha;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    .line 40
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v0, v0, Lha/ha;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    .line 48
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void

    .line 56
    :pswitch_1
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lha/fa;

    .line 59
    .line 60
    iget-object v1, v0, Lha/fa;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    .line 62
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    iget-object v0, v0, Lha/fa;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    .line 70
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void

    .line 78
    :pswitch_2
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Lha/j6;

    .line 81
    .line 82
    iget v1, v0, Lha/j6;->m:I

    .line 83
    .line 84
    sub-int/2addr v1, v4

    .line 85
    iput v1, v0, Lha/j6;->m:I

    .line 86
    .line 87
    if-gtz v1, :cond_3

    .line 88
    .line 89
    iget-object v1, v0, Lha/a4;->b:Landroid/content/Context;

    .line 90
    .line 91
    invoke-static {v1, v5}, Lta/m;->b(Landroid/content/Context;Z)V

    .line 92
    .line 93
    .line 94
    iget-object v0, v0, Lha/j6;->j:Landroid/widget/TextView;

    .line 95
    .line 96
    const-string v1, "\u5f00\u59cb\u76d1\u542c\u6309\u952e"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    iget-object v1, v0, Lha/j6;->j:Landroid/widget/TextView;

    .line 103
    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v3, "\u76d1\u542c\u6309\u952e\u4e2d("

    .line 107
    .line 108
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget v3, v0, Lha/j6;->m:I

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v3, "s)"

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lha/j6;->g:Landroid/os/Handler;

    .line 129
    .line 130
    new-instance v2, La2/h;

    .line 131
    .line 132
    const/16 v3, 0x1a

    .line 133
    .line 134
    invoke-direct {v2, v3, v0}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    const-wide/16 v3, 0x3e8

    .line 138
    .line 139
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    .line 141
    .line 142
    :goto_0
    return-void

    .line 143
    :pswitch_3
    const/4 v0, 0x0

    .line 144
    :goto_1
    iget-object v1, p0, La2/h;->b:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v1, Lha/y5;

    .line 147
    .line 148
    iget-object v2, v1, Lha/y5;->k:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-ge v0, v6, :cond_d

    .line 155
    .line 156
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Lx9/w3;

    .line 161
    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    iget-object v7, v1, Lha/y5;->h:Ljava/lang/String;

    .line 168
    .line 169
    const-string v8, "\u4e2d"

    .line 170
    .line 171
    invoke-static {v7, v8, v6}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    iput-object v6, v2, Lx9/w3;->j:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    new-instance v8, Lha/x5;

    .line 182
    .line 183
    invoke-direct {v8}, Lha/x5;-><init>()V

    .line 184
    .line 185
    .line 186
    iput v0, v8, Lha/x5;->a:I

    .line 187
    .line 188
    iput-object v2, v8, Lha/x5;->b:Lx9/w3;

    .line 189
    .line 190
    iput v5, v6, Landroid/os/Message;->what:I

    .line 191
    .line 192
    iput-object v8, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 193
    .line 194
    iget-object v8, v1, Lha/y5;->p:Lcom/yunpan/appmanage/carsdk/u;

    .line 195
    .line 196
    invoke-virtual {v8, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 197
    .line 198
    .line 199
    const-string v6, "\u5b89\u88c5"

    .line 200
    .line 201
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-eqz v6, :cond_c

    .line 206
    .line 207
    iget-object v6, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    const-string v7, ".gj"

    .line 214
    .line 215
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-eqz v6, :cond_5

    .line 220
    .line 221
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 222
    .line 223
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 224
    .line 225
    iget-boolean v6, v6, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 226
    .line 227
    if-nez v6, :cond_4

    .line 228
    .line 229
    const-string v6, "\u5b89\u88c5\u6b64\u7c7b\u6587\u4ef6\uff0c\u9700\u8981\u7cfb\u7edf\u5199\u5165\u6743"

    .line 230
    .line 231
    iput-object v6, v2, Lx9/w3;->j:Ljava/lang/String;

    .line 232
    .line 233
    goto/16 :goto_4

    .line 234
    .line 235
    :cond_4
    :try_start_0
    new-instance v6, Ljava/io/File;

    .line 236
    .line 237
    iget-object v7, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 238
    .line 239
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-static {v6}, La9/o;->R(Ljava/io/File;)V

    .line 243
    .line 244
    .line 245
    const-string v6, "\u5b89\u88c5\u6210\u529f\uff0c\u9700\u91cd\u542f"

    .line 246
    .line 247
    iput-object v6, v2, Lx9/w3;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .line 249
    goto/16 :goto_4

    .line 250
    .line 251
    :catch_0
    move-exception v6

    .line 252
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    iput-object v6, v2, Lx9/w3;->j:Ljava/lang/String;

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_5
    sget-object v6, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 260
    .line 261
    iget v7, v6, Lcom/yunpan/appmanage/util/w;->T:I

    .line 262
    .line 263
    const-string v8, "\u5b89\u88c5\u6210\u529f"

    .line 264
    .line 265
    if-eq v7, v3, :cond_a

    .line 266
    .line 267
    const/4 v9, 0x3

    .line 268
    if-ne v7, v9, :cond_6

    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_6
    iget-boolean v7, v6, Lcom/yunpan/appmanage/util/w;->y:Z

    .line 272
    .line 273
    if-nez v7, :cond_7

    .line 274
    .line 275
    sget-object v7, Lfa/b0;->a:La2/w0;

    .line 276
    .line 277
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    invoke-static {}, La2/w0;->Q()Z

    .line 281
    .line 282
    .line 283
    move-result v7

    .line 284
    if-eqz v7, :cond_7

    .line 285
    .line 286
    iget-object v6, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 287
    .line 288
    sget-object v7, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 289
    .line 290
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 291
    .line 292
    iget v7, v7, Lcom/yunpan/appmanage/util/k;->n:I

    .line 293
    .line 294
    invoke-static {v7, v6}, La2/w0;->Y(ILjava/lang/String;)Lfa/x;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    iget-object v6, v6, Lfa/x;->c:Ljava/lang/String;

    .line 299
    .line 300
    iput-object v6, v2, Lx9/w3;->j:Ljava/lang/String;

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_7
    iget v6, v6, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 304
    .line 305
    if-nez v6, :cond_9

    .line 306
    .line 307
    sget-object v6, Lma/h;->a:Lma/i;

    .line 308
    .line 309
    iget-object v7, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v6, v7}, Lma/i;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v6

    .line 315
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 316
    .line 317
    .line 318
    move-result v7

    .line 319
    if-eqz v7, :cond_8

    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_8
    move-object v8, v6

    .line 323
    :goto_2
    iput-object v8, v2, Lx9/w3;->j:Ljava/lang/String;

    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_9
    const-string v6, "\u8bf7\u624b\u52a8\u786e\u8ba4"

    .line 327
    .line 328
    iput-object v6, v2, Lx9/w3;->j:Ljava/lang/String;

    .line 329
    .line 330
    iget-object v6, v1, Lha/a4;->b:Landroid/content/Context;

    .line 331
    .line 332
    iget-object v7, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 333
    .line 334
    invoke-static {v6, v7}, Lcom/bumptech/glide/c;->I(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    goto :goto_4

    .line 338
    :cond_a
    :goto_3
    iget-object v6, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 339
    .line 340
    new-instance v7, Lha/l2;

    .line 341
    .line 342
    invoke-direct {v7, v3}, Lha/l2;-><init>(I)V

    .line 343
    .line 344
    .line 345
    invoke-static {v6, v7}, Lcom/bumptech/glide/d;->G(Ljava/lang/String;Lma/k;)Lma/l;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    invoke-virtual {v6}, Lma/l;->a()Z

    .line 350
    .line 351
    .line 352
    move-result v7

    .line 353
    if-eqz v7, :cond_b

    .line 354
    .line 355
    iput-object v8, v2, Lx9/w3;->j:Ljava/lang/String;

    .line 356
    .line 357
    goto :goto_4

    .line 358
    :cond_b
    iget-object v6, v6, Lma/l;->c:Ljava/lang/String;

    .line 359
    .line 360
    iput-object v6, v2, Lx9/w3;->j:Ljava/lang/String;

    .line 361
    .line 362
    :goto_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    new-instance v7, Lha/x5;

    .line 367
    .line 368
    invoke-direct {v7}, Lha/x5;-><init>()V

    .line 369
    .line 370
    .line 371
    iput v0, v7, Lha/x5;->a:I

    .line 372
    .line 373
    iput-object v2, v7, Lha/x5;->b:Lx9/w3;

    .line 374
    .line 375
    iput v5, v6, Landroid/os/Message;->what:I

    .line 376
    .line 377
    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 378
    .line 379
    iget-object v1, v1, Lha/y5;->p:Lcom/yunpan/appmanage/carsdk/u;

    .line 380
    .line 381
    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    .line 383
    .line 384
    :cond_c
    add-int/2addr v0, v4

    .line 385
    goto/16 :goto_1

    .line 386
    .line 387
    :cond_d
    iget-object v0, v1, Lha/y5;->p:Lcom/yunpan/appmanage/carsdk/u;

    .line 388
    .line 389
    const/16 v1, 0x64

    .line 390
    .line 391
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 392
    .line 393
    .line 394
    return-void

    .line 395
    :pswitch_4
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v0, Lha/m4;

    .line 398
    .line 399
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 403
    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    const-string v5, "dumpsys deviceidle whitelist +"

    .line 407
    .line 408
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 412
    .line 413
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    invoke-static {v1, v2, v0}, La2/w0;->o(JLjava/lang/String;)Lfa/a0;

    .line 428
    .line 429
    .line 430
    return-void

    .line 431
    :pswitch_5
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v0, Lha/v3;

    .line 434
    .line 435
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 439
    .line 440
    new-instance v4, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    const-string v5, "dumpsys deviceidle whitelist +"

    .line 443
    .line 444
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 448
    .line 449
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 461
    .line 462
    .line 463
    invoke-static {v1, v2, v0}, La2/w0;->o(JLjava/lang/String;)Lfa/a0;

    .line 464
    .line 465
    .line 466
    return-void

    .line 467
    :pswitch_6
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast v0, Lha/i0;

    .line 470
    .line 471
    iget-object v0, v0, Lha/i0;->p:Landroidx/core/widget/NestedScrollView;

    .line 472
    .line 473
    const/16 v1, 0x82

    .line 474
    .line 475
    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->l(I)Z

    .line 476
    .line 477
    .line 478
    return-void

    .line 479
    :pswitch_7
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 480
    .line 481
    check-cast v0, Lh2/n;

    .line 482
    .line 483
    invoke-virtual {v0}, Lh2/n;->l()V

    .line 484
    .line 485
    .line 486
    return-void

    .line 487
    :pswitch_8
    iget-object v1, p0, La2/h;->b:Ljava/lang/Object;

    .line 488
    .line 489
    check-cast v1, Landroid/view/View;

    .line 490
    .line 491
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 496
    .line 497
    const-class v5, Landroid/view/inputmethod/InputMethodManager;

    .line 498
    .line 499
    const/16 v6, 0x17

    .line 500
    .line 501
    if-lt v3, v6, :cond_e

    .line 502
    .line 503
    invoke-static {v2, v5}, Ln0/d;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    goto :goto_6

    .line 508
    :cond_e
    if-lt v3, v6, :cond_f

    .line 509
    .line 510
    invoke-static {v2, v5}, Ln0/d;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    goto :goto_5

    .line 515
    :cond_f
    sget-object v3, Ln0/f;->a:Ljava/util/HashMap;

    .line 516
    .line 517
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v3

    .line 521
    check-cast v3, Ljava/lang/String;

    .line 522
    .line 523
    :goto_5
    if-eqz v3, :cond_10

    .line 524
    .line 525
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    :cond_10
    :goto_6
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 530
    .line 531
    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 532
    .line 533
    .line 534
    return-void

    .line 535
    :pswitch_9
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast v0, Lfa/h0;

    .line 538
    .line 539
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    .line 541
    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 543
    .line 544
    .line 545
    move-result-wide v3

    .line 546
    iget-wide v5, v0, Lfa/h0;->f:J

    .line 547
    .line 548
    sub-long/2addr v3, v5

    .line 549
    cmp-long v5, v3, v1

    .line 550
    .line 551
    if-lez v5, :cond_11

    .line 552
    .line 553
    :try_start_1
    iget-object v0, v0, Lfa/h0;->e:Lgh/a;

    .line 554
    .line 555
    invoke-virtual {v0}, Lgh/a;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 556
    .line 557
    .line 558
    :catch_1
    :cond_11
    return-void

    .line 559
    :pswitch_a
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 560
    .line 561
    check-cast v0, Lfa/r;

    .line 562
    .line 563
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    new-instance v1, Ljava/io/BufferedReader;

    .line 567
    .line 568
    new-instance v2, Ljava/io/InputStreamReader;

    .line 569
    .line 570
    iget-object v3, v0, Lfa/r;->b:Lio/github/muntashirakon/adb/AdbStream;

    .line 571
    .line 572
    invoke-virtual {v3}, Lio/github/muntashirakon/adb/AdbStream;->openInputStream()Lio/github/muntashirakon/adb/AdbInputStream;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 577
    .line 578
    .line 579
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 580
    .line 581
    .line 582
    :goto_7
    iget-object v2, v0, Lfa/r;->b:Lio/github/muntashirakon/adb/AdbStream;

    .line 583
    .line 584
    if-eqz v2, :cond_13

    .line 585
    .line 586
    invoke-virtual {v2}, Lio/github/muntashirakon/adb/AdbStream;->isClosed()Z

    .line 587
    .line 588
    .line 589
    move-result v2

    .line 590
    if-nez v2, :cond_13

    .line 591
    .line 592
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 596
    if-nez v2, :cond_12

    .line 597
    .line 598
    goto :goto_8

    .line 599
    :cond_12
    iget-object v3, v0, Lfa/r;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 600
    .line 601
    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 602
    .line 603
    .line 604
    goto :goto_7

    .line 605
    :catch_2
    move-exception v0

    .line 606
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 607
    .line 608
    .line 609
    :cond_13
    :goto_8
    return-void

    .line 610
    :pswitch_b
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 611
    .line 612
    check-cast v0, Lfa/m;

    .line 613
    .line 614
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 615
    .line 616
    .line 617
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    .line 618
    .line 619
    new-instance v2, Ljava/io/InputStreamReader;

    .line 620
    .line 621
    iget-object v3, v0, Lfa/m;->b:Lio/github/muntashirakon/adb/AdbStream;

    .line 622
    .line 623
    invoke-virtual {v3}, Lio/github/muntashirakon/adb/AdbStream;->openInputStream()Lio/github/muntashirakon/adb/AdbInputStream;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 628
    .line 629
    .line 630
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 631
    .line 632
    .line 633
    :goto_9
    iget-object v2, v0, Lfa/m;->b:Lio/github/muntashirakon/adb/AdbStream;

    .line 634
    .line 635
    if-eqz v2, :cond_15

    .line 636
    .line 637
    invoke-virtual {v2}, Lio/github/muntashirakon/adb/AdbStream;->isClosed()Z

    .line 638
    .line 639
    .line 640
    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 641
    if-nez v2, :cond_15

    .line 642
    .line 643
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 647
    if-nez v2, :cond_14

    .line 648
    .line 649
    goto :goto_a

    .line 650
    :cond_14
    :try_start_5
    iget-object v3, v0, Lfa/m;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 651
    .line 652
    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    goto :goto_9

    .line 656
    :catch_3
    move-exception v0

    .line 657
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 658
    .line 659
    .line 660
    :catch_4
    :cond_15
    :goto_a
    return-void

    .line 661
    :pswitch_c
    invoke-direct {p0}, La2/h;->a()V

    .line 662
    .line 663
    .line 664
    return-void

    .line 665
    :pswitch_d
    iget-object v1, p0, La2/h;->b:Ljava/lang/Object;

    .line 666
    .line 667
    check-cast v1, Lcom/yunpan/appmanage/carsdk/k0;

    .line 668
    .line 669
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 670
    .line 671
    .line 672
    :try_start_6
    iget-object v2, v1, Lcom/yunpan/appmanage/carsdk/k0;->b:Ljava/lang/Object;

    .line 673
    .line 674
    if-eqz v2, :cond_16

    .line 675
    .line 676
    const-string v3, "disconnect"

    .line 677
    .line 678
    new-array v4, v5, [Ljava/lang/Object;

    .line 679
    .line 680
    invoke-static {v2, v3, v4}, Lcom/yunpan/appmanage/carsdk/k0;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 681
    .line 682
    .line 683
    goto :goto_b

    .line 684
    :catchall_0
    nop

    .line 685
    :cond_16
    :goto_b
    iput-object v0, v1, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 686
    .line 687
    iput-object v0, v1, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 688
    .line 689
    iput-object v0, v1, Lcom/yunpan/appmanage/carsdk/k0;->b:Ljava/lang/Object;

    .line 690
    .line 691
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 692
    .line 693
    const/16 v2, 0x12

    .line 694
    .line 695
    if-lt v0, v2, :cond_17

    .line 696
    .line 697
    iget-object v0, v1, Lcom/yunpan/appmanage/carsdk/k0;->f:Ljava/lang/Object;

    .line 698
    .line 699
    check-cast v0, Landroid/os/HandlerThread;

    .line 700
    .line 701
    invoke-static {v0}, Lb1/o;->l(Landroid/os/HandlerThread;)V

    .line 702
    .line 703
    .line 704
    :cond_17
    return-void

    .line 705
    :pswitch_e
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 706
    .line 707
    check-cast v0, Lcom/hjq/permissions/core/PermissionRequestMainLogic;

    .line 708
    .line 709
    invoke-static {v0}, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->c(Lcom/hjq/permissions/core/PermissionRequestMainLogic;)V

    .line 710
    .line 711
    .line 712
    return-void

    .line 713
    :pswitch_f
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 714
    .line 715
    check-cast v0, Lcom/hjq/permissions/core/PermissionChannelImplByStartActivity;

    .line 716
    .line 717
    invoke-static {v0}, Lcom/hjq/permissions/core/PermissionChannelImplByStartActivity;->a(Lcom/hjq/permissions/core/PermissionChannelImplByStartActivity;)V

    .line 718
    .line 719
    .line 720
    return-void

    .line 721
    :pswitch_10
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 722
    .line 723
    check-cast v0, Lcom/hjq/permissions/core/PermissionChannelImplByRequestPermissions;

    .line 724
    .line 725
    invoke-virtual {v0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->handlerPermissionCallback()V

    .line 726
    .line 727
    .line 728
    return-void

    .line 729
    :pswitch_11
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 730
    .line 731
    check-cast v0, Lcom/hjq/permissions/core/PermissionChannelImpl;

    .line 732
    .line 733
    invoke-virtual {v0}, Lcom/hjq/permissions/core/PermissionChannelImpl;->handlerPermissionCallback()V

    .line 734
    .line 735
    .line 736
    return-void

    .line 737
    :pswitch_12
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 738
    .line 739
    check-cast v0, Lcom/google/android/material/timepicker/e;

    .line 740
    .line 741
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/e;->k()V

    .line 742
    .line 743
    .line 744
    return-void

    .line 745
    :pswitch_13
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 746
    .line 747
    check-cast v0, Lcom/gj/server/GjService;

    .line 748
    .line 749
    invoke-static {v0}, Lcom/gj/server/GjService;->a(Lcom/gj/server/GjService;)V

    .line 750
    .line 751
    .line 752
    return-void

    .line 753
    :pswitch_14
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 754
    .line 755
    check-cast v0, Landroidx/lifecycle/f0;

    .line 756
    .line 757
    const-string v1, "this$0"

    .line 758
    .line 759
    invoke-static {v0, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    iget v1, v0, Landroidx/lifecycle/f0;->b:I

    .line 763
    .line 764
    iget-object v2, v0, Landroidx/lifecycle/f0;->f:Landroidx/lifecycle/v;

    .line 765
    .line 766
    if-nez v1, :cond_18

    .line 767
    .line 768
    iput-boolean v4, v0, Landroidx/lifecycle/f0;->c:Z

    .line 769
    .line 770
    sget-object v1, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    .line 771
    .line 772
    invoke-virtual {v2, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 773
    .line 774
    .line 775
    :cond_18
    iget v1, v0, Landroidx/lifecycle/f0;->a:I

    .line 776
    .line 777
    if-nez v1, :cond_19

    .line 778
    .line 779
    iget-boolean v1, v0, Landroidx/lifecycle/f0;->c:Z

    .line 780
    .line 781
    if-eqz v1, :cond_19

    .line 782
    .line 783
    sget-object v1, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 784
    .line 785
    invoke-virtual {v2, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 786
    .line 787
    .line 788
    iput-boolean v4, v0, Landroidx/lifecycle/f0;->d:Z

    .line 789
    .line 790
    :cond_19
    return-void

    .line 791
    :pswitch_15
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 792
    .line 793
    check-cast v0, Landroidx/emoji2/text/r;

    .line 794
    .line 795
    const-string v1, "fetchFonts result is not OK. ("

    .line 796
    .line 797
    iget-object v2, v0, Landroidx/emoji2/text/r;->d:Ljava/lang/Object;

    .line 798
    .line 799
    monitor-enter v2

    .line 800
    :try_start_7
    iget-object v6, v0, Landroidx/emoji2/text/r;->h:La9/o;

    .line 801
    .line 802
    if-nez v6, :cond_1a

    .line 803
    .line 804
    monitor-exit v2

    .line 805
    goto/16 :goto_11

    .line 806
    .line 807
    :catchall_1
    move-exception v0

    .line 808
    goto/16 :goto_13

    .line 809
    .line 810
    :cond_1a
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 811
    :try_start_8
    invoke-virtual {v0}, Landroidx/emoji2/text/r;->d()Lu0/g;

    .line 812
    .line 813
    .line 814
    move-result-object v2

    .line 815
    iget v6, v2, Lu0/g;->e:I

    .line 816
    .line 817
    if-ne v6, v3, :cond_1b

    .line 818
    .line 819
    iget-object v3, v0, Landroidx/emoji2/text/r;->d:Ljava/lang/Object;

    .line 820
    .line 821
    monitor-enter v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 822
    :try_start_9
    monitor-exit v3

    .line 823
    goto :goto_c

    .line 824
    :catchall_2
    move-exception v1

    .line 825
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 826
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 827
    :catchall_3
    move-exception v1

    .line 828
    goto/16 :goto_f

    .line 829
    .line 830
    :cond_1b
    :goto_c
    if-nez v6, :cond_1e

    .line 831
    .line 832
    :try_start_b
    const-string v1, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    .line 833
    .line 834
    invoke-static {v1}, Lt0/o;->a(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    iget-object v1, v0, Landroidx/emoji2/text/r;->c:Lgf/g;

    .line 838
    .line 839
    iget-object v3, v0, Landroidx/emoji2/text/r;->a:Landroid/content/Context;

    .line 840
    .line 841
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 842
    .line 843
    .line 844
    new-array v1, v4, [Lu0/g;

    .line 845
    .line 846
    aput-object v2, v1, v5

    .line 847
    .line 848
    sget-object v4, Lp0/g;->a:Ll5/y;

    .line 849
    .line 850
    invoke-virtual {v4, v3, v1, v5}, Ll5/y;->v(Landroid/content/Context;[Lu0/g;I)Landroid/graphics/Typeface;

    .line 851
    .line 852
    .line 853
    move-result-object v1

    .line 854
    iget-object v3, v0, Landroidx/emoji2/text/r;->a:Landroid/content/Context;

    .line 855
    .line 856
    iget-object v2, v2, Lu0/g;->a:Landroid/net/Uri;

    .line 857
    .line 858
    invoke-static {v3, v2}, Lnh/b;->Z(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 859
    .line 860
    .line 861
    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 862
    if-eqz v2, :cond_1d

    .line 863
    .line 864
    if-eqz v1, :cond_1d

    .line 865
    .line 866
    :try_start_c
    const-string v3, "EmojiCompat.MetadataRepo.create"

    .line 867
    .line 868
    invoke-static {v3}, Lt0/o;->a(Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    new-instance v3, La2/w0;

    .line 872
    .line 873
    invoke-static {v2}, Landroid/support/v4/media/session/b;->B(Ljava/nio/MappedByteBuffer;)Lh1/b;

    .line 874
    .line 875
    .line 876
    move-result-object v2

    .line 877
    invoke-direct {v3, v1, v2}, La2/w0;-><init>(Landroid/graphics/Typeface;Lh1/b;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 878
    .line 879
    .line 880
    :try_start_d
    invoke-static {}, Lt0/o;->b()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 881
    .line 882
    .line 883
    :try_start_e
    invoke-static {}, Lt0/o;->b()V

    .line 884
    .line 885
    .line 886
    iget-object v1, v0, Landroidx/emoji2/text/r;->d:Ljava/lang/Object;

    .line 887
    .line 888
    monitor-enter v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 889
    :try_start_f
    iget-object v2, v0, Landroidx/emoji2/text/r;->h:La9/o;

    .line 890
    .line 891
    if-eqz v2, :cond_1c

    .line 892
    .line 893
    invoke-virtual {v2, v3}, La9/o;->T(La2/w0;)V

    .line 894
    .line 895
    .line 896
    goto :goto_d

    .line 897
    :catchall_4
    move-exception v2

    .line 898
    goto :goto_e

    .line 899
    :cond_1c
    :goto_d
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 900
    :try_start_10
    invoke-virtual {v0}, Landroidx/emoji2/text/r;->b()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 901
    .line 902
    .line 903
    goto :goto_11

    .line 904
    :goto_e
    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 905
    :try_start_12
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 906
    :catchall_5
    move-exception v1

    .line 907
    :try_start_13
    invoke-static {}, Lt0/o;->b()V

    .line 908
    .line 909
    .line 910
    throw v1

    .line 911
    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 912
    .line 913
    const-string v2, "Unable to open file."

    .line 914
    .line 915
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 919
    :catchall_6
    move-exception v1

    .line 920
    :try_start_14
    invoke-static {}, Lt0/o;->b()V

    .line 921
    .line 922
    .line 923
    throw v1

    .line 924
    :cond_1e
    new-instance v2, Ljava/lang/RuntimeException;

    .line 925
    .line 926
    new-instance v3, Ljava/lang/StringBuilder;

    .line 927
    .line 928
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    .line 934
    const-string v1, ")"

    .line 935
    .line 936
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v1

    .line 943
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 947
    :goto_f
    iget-object v3, v0, Landroidx/emoji2/text/r;->d:Ljava/lang/Object;

    .line 948
    .line 949
    monitor-enter v3

    .line 950
    :try_start_15
    iget-object v2, v0, Landroidx/emoji2/text/r;->h:La9/o;

    .line 951
    .line 952
    if-eqz v2, :cond_1f

    .line 953
    .line 954
    invoke-virtual {v2, v1}, La9/o;->S(Ljava/lang/Throwable;)V

    .line 955
    .line 956
    .line 957
    goto :goto_10

    .line 958
    :catchall_7
    move-exception v0

    .line 959
    goto :goto_12

    .line 960
    :cond_1f
    :goto_10
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 961
    invoke-virtual {v0}, Landroidx/emoji2/text/r;->b()V

    .line 962
    .line 963
    .line 964
    :goto_11
    return-void

    .line 965
    :goto_12
    :try_start_16
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 966
    throw v0

    .line 967
    :goto_13
    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 968
    throw v0

    .line 969
    :pswitch_16
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 970
    .line 971
    check-cast v0, Landroidx/activity/n;

    .line 972
    .line 973
    invoke-static {v0}, Landroidx/activity/n;->b(Landroidx/activity/n;)V

    .line 974
    .line 975
    .line 976
    return-void

    .line 977
    :pswitch_17
    iget-object v1, p0, La2/h;->b:Ljava/lang/Object;

    .line 978
    .line 979
    check-cast v1, Landroidx/activity/l;

    .line 980
    .line 981
    iget-object v2, v1, Landroidx/activity/l;->b:Ljava/lang/Runnable;

    .line 982
    .line 983
    if-eqz v2, :cond_20

    .line 984
    .line 985
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 986
    .line 987
    .line 988
    iput-object v0, v1, Landroidx/activity/l;->b:Ljava/lang/Runnable;

    .line 989
    .line 990
    :cond_20
    return-void

    .line 991
    :pswitch_18
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 992
    .line 993
    check-cast v0, Landroidx/fragment/app/j0;

    .line 994
    .line 995
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 996
    .line 997
    .line 998
    return-void

    .line 999
    :pswitch_19
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 1000
    .line 1001
    check-cast v0, La7/d;

    .line 1002
    .line 1003
    iget-object v0, v0, La7/d;->m:Landroid/graphics/drawable/Drawable;

    .line 1004
    .line 1005
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1006
    .line 1007
    .line 1008
    return-void

    .line 1009
    :pswitch_1a
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 1010
    .line 1011
    check-cast v0, La2/n1;

    .line 1012
    .line 1013
    iget-wide v1, v0, La2/n1;->a0:J

    .line 1014
    .line 1015
    const-wide/32 v5, 0x493e0

    .line 1016
    .line 1017
    .line 1018
    cmp-long v3, v1, v5

    .line 1019
    .line 1020
    if-ltz v3, :cond_21

    .line 1021
    .line 1022
    iget-object v1, v0, La2/n1;->n:La1/i;

    .line 1023
    .line 1024
    iget-object v1, v1, La1/i;->b:Ljava/lang/Object;

    .line 1025
    .line 1026
    check-cast v1, La2/q1;

    .line 1027
    .line 1028
    iput-boolean v4, v1, La2/q1;->L1:Z

    .line 1029
    .line 1030
    const-wide/16 v1, 0x0

    .line 1031
    .line 1032
    iput-wide v1, v0, La2/n1;->a0:J

    .line 1033
    .line 1034
    :cond_21
    return-void

    .line 1035
    :pswitch_1b
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 1036
    .line 1037
    check-cast v0, Lu1/m;

    .line 1038
    .line 1039
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1040
    .line 1041
    .line 1042
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v1

    .line 1046
    iget-object v2, v0, Lu1/m;->a:Ljava/lang/Thread;

    .line 1047
    .line 1048
    if-ne v1, v2, :cond_22

    .line 1049
    .line 1050
    new-instance v1, La2/u0;

    .line 1051
    .line 1052
    invoke-direct {v1, v4}, La2/u0;-><init>(I)V

    .line 1053
    .line 1054
    .line 1055
    const/4 v2, -0x1

    .line 1056
    invoke-virtual {v0, v2, v1}, Lu1/m;->e(ILu1/j;)V

    .line 1057
    .line 1058
    .line 1059
    :cond_22
    return-void

    .line 1060
    :pswitch_1c
    iget-object v0, p0, La2/h;->b:Ljava/lang/Object;

    .line 1061
    .line 1062
    check-cast v0, La2/l;

    .line 1063
    .line 1064
    invoke-virtual {v0}, La2/l;->c()V

    .line 1065
    .line 1066
    .line 1067
    return-void

    .line 1068
    nop

    .line 1069
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
