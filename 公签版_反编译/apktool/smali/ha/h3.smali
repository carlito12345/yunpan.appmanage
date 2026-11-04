.class public final Lha/h3;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lha/h3;->b:I

    iput-object p1, p0, Lha/h3;->d:Ljava/lang/Object;

    iput-object p3, p0, Lha/h3;->c:Ljava/lang/Object;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lha/h3;->b:I

    .line 2
    iput-object p1, p0, Lha/h3;->c:Ljava/lang/Object;

    iput-object p2, p0, Lha/h3;->d:Ljava/lang/Object;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    iget v0, p0, Lha/h3;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    return-void

    .line 7
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_2
    iget-object p1, p0, Lha/h3;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Lua/i9;

    .line 32
    .line 33
    iget-object v0, p1, Lua/i9;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lha/h3;->c:Ljava/lang/Object;

    .line 41
    .line 42
    move-object v4, v0

    .line 43
    check-cast v4, Lx9/n5;

    .line 44
    .line 45
    iget v0, v4, Lx9/n5;->a:I

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    const-string v2, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    .line 49
    .line 50
    if-eq v0, v1, :cond_7

    .line 51
    .line 52
    const/16 v1, 0x14

    .line 53
    .line 54
    if-ne v0, v1, :cond_0

    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_0
    const/4 v1, 0x2

    .line 59
    if-ne v0, v1, :cond_1

    .line 60
    .line 61
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lha/bf;

    .line 65
    .line 66
    iget-object v2, p1, Lda/h;->f:Landroid/app/Activity;

    .line 67
    .line 68
    iget-object v3, p1, Lda/h;->e:Landroid/content/Context;

    .line 69
    .line 70
    new-instance v5, Lua/h9;

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    invoke-direct {v5, p0, v4, p1}, Lua/h9;-><init>(Lha/h3;Lx9/n5;I)V

    .line 74
    .line 75
    .line 76
    const/4 v6, 0x1

    .line 77
    move-object v1, v0

    .line 78
    invoke-direct/range {v1 .. v6}, Lha/bf;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :cond_1
    const/16 v1, 0x15

    .line 87
    .line 88
    if-ne v0, v1, :cond_2

    .line 89
    .line 90
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Lha/bf;

    .line 94
    .line 95
    iget-object v2, p1, Lda/h;->f:Landroid/app/Activity;

    .line 96
    .line 97
    iget-object v3, p1, Lda/h;->e:Landroid/content/Context;

    .line 98
    .line 99
    new-instance v5, Lua/h9;

    .line 100
    .line 101
    const/4 p1, 0x2

    .line 102
    invoke-direct {v5, p0, v4, p1}, Lua/h9;-><init>(Lha/h3;Lx9/n5;I)V

    .line 103
    .line 104
    .line 105
    const/4 v6, 0x0

    .line 106
    move-object v1, v0

    .line 107
    invoke-direct/range {v1 .. v6}, Lha/bf;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Ljava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_2

    .line 114
    .line 115
    :cond_2
    const/4 v1, 0x4

    .line 116
    const-string v2, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8fde\u63a5"

    .line 117
    .line 118
    if-eq v0, v1, :cond_6

    .line 119
    .line 120
    const/4 v1, 0x5

    .line 121
    if-ne v0, v1, :cond_3

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    const/4 v1, 0x6

    .line 125
    if-ne v0, v1, :cond_4

    .line 126
    .line 127
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Lha/w;

    .line 131
    .line 132
    iget-object v1, p1, Lda/h;->f:Landroid/app/Activity;

    .line 133
    .line 134
    iget-object p1, p1, Lda/h;->e:Landroid/content/Context;

    .line 135
    .line 136
    new-instance v2, Lua/h9;

    .line 137
    .line 138
    const/4 v3, 0x4

    .line 139
    invoke-direct {v2, p0, v4, v3}, Lua/h9;-><init>(Lha/h3;Lx9/n5;I)V

    .line 140
    .line 141
    .line 142
    invoke-direct {v0, v1, p1, v4, v2}, Lha/w;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/ic;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_4
    const/4 v1, 0x3

    .line 150
    if-ne v0, v1, :cond_5

    .line 151
    .line 152
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    new-instance v0, Lha/s5;

    .line 156
    .line 157
    iget-object v1, p1, Lda/h;->f:Landroid/app/Activity;

    .line 158
    .line 159
    iget-object p1, p1, Lda/h;->e:Landroid/content/Context;

    .line 160
    .line 161
    new-instance v2, Lua/h9;

    .line 162
    .line 163
    const/4 v3, 0x5

    .line 164
    invoke-direct {v2, p0, v4, v3}, Lua/h9;-><init>(Lha/h3;Lx9/n5;I)V

    .line 165
    .line 166
    .line 167
    invoke-direct {v0, v1, p1, v4, v2}, Lha/s5;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/oc;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_5
    const/4 v1, 0x7

    .line 175
    if-ne v0, v1, :cond_8

    .line 176
    .line 177
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    new-instance v0, Lha/se;

    .line 181
    .line 182
    iget-object v1, p1, Lda/h;->f:Landroid/app/Activity;

    .line 183
    .line 184
    iget-object p1, p1, Lda/h;->e:Landroid/content/Context;

    .line 185
    .line 186
    new-instance v2, Lua/h9;

    .line 187
    .line 188
    const/4 v3, 0x6

    .line 189
    invoke-direct {v2, p0, v4, v3}, Lua/h9;-><init>(Lha/h3;Lx9/n5;I)V

    .line 190
    .line 191
    .line 192
    invoke-direct {v0, v1, p1, v4, v2}, Lha/se;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/re;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_6
    :goto_0
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    new-instance v0, Lha/s5;

    .line 203
    .line 204
    iget-object v1, p1, Lda/h;->f:Landroid/app/Activity;

    .line 205
    .line 206
    iget-object p1, p1, Lda/h;->e:Landroid/content/Context;

    .line 207
    .line 208
    new-instance v2, Lua/h9;

    .line 209
    .line 210
    const/4 v3, 0x3

    .line 211
    invoke-direct {v2, p0, v4, v3}, Lua/h9;-><init>(Lha/h3;Lx9/n5;I)V

    .line 212
    .line 213
    .line 214
    invoke-direct {v0, v1, p1, v4, v2}, Lha/s5;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/i6;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_7
    :goto_1
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    new-instance v0, Lha/ye;

    .line 225
    .line 226
    iget-object v1, p1, Lda/h;->f:Landroid/app/Activity;

    .line 227
    .line 228
    iget-object p1, p1, Lda/h;->e:Landroid/content/Context;

    .line 229
    .line 230
    new-instance v2, Lua/h9;

    .line 231
    .line 232
    const/4 v3, 0x0

    .line 233
    invoke-direct {v2, p0, v4, v3}, Lua/h9;-><init>(Lha/h3;Lx9/n5;I)V

    .line 234
    .line 235
    .line 236
    invoke-direct {v0, v1, p1, v4, v2}, Lha/ye;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/xe;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 240
    .line 241
    .line 242
    :cond_8
    :goto_2
    return-void

    .line 243
    :pswitch_3
    iget-object v0, p0, Lha/h3;->d:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v0, Lua/i9;

    .line 246
    .line 247
    iget-object v0, v0, Lua/i9;->h:Lha/u9;

    .line 248
    .line 249
    const-string v1, ""

    .line 250
    .line 251
    invoke-static {v0, v1}, Ll2/z;->r(Lha/u9;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    const/4 v0, 0x0

    .line 267
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :pswitch_4
    iget-object v0, p0, Lha/h3;->d:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v0, Lua/q8;

    .line 274
    .line 275
    iget-object v0, v0, Lua/q8;->g:Lha/u9;

    .line 276
    .line 277
    const-string v1, ""

    .line 278
    .line 279
    invoke-static {v0, v1}, Ll2/z;->r(Lha/u9;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    const/4 v0, 0x0

    .line 295
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :pswitch_5
    iget-object v0, p0, Lha/h3;->d:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v0, Lua/q8;

    .line 302
    .line 303
    iget-object v1, v0, Lua/q8;->g:Lha/u9;

    .line 304
    .line 305
    const-string v2, ""

    .line 306
    .line 307
    invoke-static {v1, v2}, Ll2/z;->r(Lha/u9;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    const-string v1, "\u9700\u8981\u5bc6\u7801"

    .line 323
    .line 324
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    const-string v2, "\u5bc6\u7801\u9519\u8bef"

    .line 329
    .line 330
    if-nez v1, :cond_a

    .line 331
    .line 332
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-eqz v1, :cond_9

    .line 337
    .line 338
    goto :goto_3

    .line 339
    :cond_9
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    goto :goto_4

    .line 343
    :cond_a
    :goto_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    if-eqz p1, :cond_b

    .line 348
    .line 349
    const-string p1, "\u5bc6\u7801\u9519\u8bef\u8bf7\u91cd\u65b0\u8f93\u5165"

    .line 350
    .line 351
    const/4 v1, 0x0

    .line 352
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 353
    .line 354
    .line 355
    :cond_b
    new-instance p1, Lha/o1;

    .line 356
    .line 357
    iget-object v0, v0, Lda/h;->e:Landroid/content/Context;

    .line 358
    .line 359
    new-instance v1, Lua/i1;

    .line 360
    .line 361
    const/16 v2, 0x18

    .line 362
    .line 363
    invoke-direct {v1, v2, p0}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    invoke-direct {p1, v0, v1}, Lha/o1;-><init>(Landroid/content/Context;Lua/i1;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 370
    .line 371
    .line 372
    :goto_4
    return-void

    .line 373
    :pswitch_6
    const-string p1, "\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u786e\u4fdd\u662f\u6b27\u5c1a\u8f66\u673a"

    .line 374
    .line 375
    const/4 v0, 0x0

    .line 376
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    :pswitch_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    const/4 v0, 0x0

    .line 389
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 390
    .line 391
    .line 392
    return-void

    .line 393
    :pswitch_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    const/4 v0, 0x0

    .line 402
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 403
    .line 404
    .line 405
    return-void

    .line 406
    :pswitch_9
    const-string p1, "\u65e0\u6cd5\u83b7\u53d6json\u6587\u4ef6"

    .line 407
    .line 408
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    return-void

    .line 412
    :pswitch_a
    iget-object v0, p0, Lha/h3;->d:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 415
    .line 416
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 417
    .line 418
    const/16 v2, 0x8

    .line 419
    .line 420
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 421
    .line 422
    .line 423
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 424
    .line 425
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->finishLoadMore()V

    .line 426
    .line 427
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .line 432
    .line 433
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const-string p1, ""

    .line 441
    .line 442
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    iget-object p1, p0, Lha/h3;->c:Ljava/lang/Object;

    .line 453
    .line 454
    check-cast p1, Lba/r;

    .line 455
    .line 456
    iget v0, p1, Lba/r;->n:I

    .line 457
    .line 458
    add-int/lit8 v0, v0, -0x1

    .line 459
    .line 460
    iput v0, p1, Lba/r;->n:I

    .line 461
    .line 462
    return-void

    .line 463
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    const-string v1, ""

    .line 466
    .line 467
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    return-void

    .line 485
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    const-string v1, "\u6267\u884c\u62a5\u9519\uff1a"

    .line 488
    .line 489
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-string p1, "\n"

    .line 500
    .line 501
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    iget-object v0, p0, Lha/h3;->c:Ljava/lang/Object;

    .line 509
    .line 510
    check-cast v0, Ljava/lang/StringBuffer;

    .line 511
    .line 512
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    .line 514
    .line 515
    iget-object p1, p0, Lha/h3;->d:Ljava/lang/Object;

    .line 516
    .line 517
    check-cast p1, Lha/d2;

    .line 518
    .line 519
    iget-object v1, p1, Lha/d2;->i:Ljava/lang/Object;

    .line 520
    .line 521
    check-cast v1, Landroid/widget/EditText;

    .line 522
    .line 523
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    .line 529
    .line 530
    iget-object p1, p1, Lha/d2;->h:Ljava/lang/Object;

    .line 531
    .line 532
    check-cast p1, Landroid/widget/TextView;

    .line 533
    .line 534
    const-string v0, "\u6267\u884c"

    .line 535
    .line 536
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    .line 538
    .line 539
    return-void

    .line 540
    :pswitch_d
    const-string p1, "\u65e0\u6cd5\u83b7\u53d6\u672c\u673aapk\u6587\u4ef6"

    .line 541
    .line 542
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    return-void

    .line 546
    :pswitch_e
    const-string p1, "\u65e0\u6cd5\u83b7\u53d6\u672c\u673a\u97f3\u9891\u6587\u4ef6"

    .line 547
    .line 548
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    return-void

    .line 552
    :pswitch_f
    const-string p1, "\u65e0\u6cd5\u83b7\u53d6\u672c\u673a\u97f3\u9891\u6587\u4ef6"

    .line 553
    .line 554
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    return-void

    .line 558
    nop

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 12

    .line 1
    const-string v0, "\u65e5\u5fd7\u6570\u91cf\uff1a"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    iget-object v2, p0, Lha/h3;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lha/h3;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iget v4, p0, Lha/h3;->b:I

    .line 10
    .line 11
    packed-switch v4, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    :pswitch_0
    return-void

    .line 15
    :pswitch_1
    sget-object p1, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 16
    .line 17
    check-cast v3, Lua/i9;

    .line 18
    .line 19
    iget v0, v3, Lua/i9;->T:I

    .line 20
    .line 21
    check-cast v2, Lx9/n5;

    .line 22
    .line 23
    invoke-virtual {p1, v0, v2}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_2
    instance-of v0, p1, Lza/a;

    .line 28
    .line 29
    check-cast v3, Lua/i9;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    check-cast p1, Lza/a;

    .line 34
    .line 35
    iget-object v0, v3, Lua/i9;->h:Lha/u9;

    .line 36
    .line 37
    iget-object p1, p1, Lza/a;->c:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lha/u9;->b(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, v3, Lua/i9;->h:Lha/u9;

    .line 44
    .line 45
    check-cast p1, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lha/u9;->b(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :pswitch_3
    instance-of v0, p1, Lza/a;

    .line 52
    .line 53
    check-cast v3, Lua/q8;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    check-cast p1, Lza/a;

    .line 58
    .line 59
    iget-object v0, v3, Lua/q8;->g:Lha/u9;

    .line 60
    .line 61
    iget-object p1, p1, Lza/a;->c:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lha/u9;->b(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    iget-object v0, v3, Lua/q8;->g:Lha/u9;

    .line 68
    .line 69
    check-cast p1, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lha/u9;->b(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    return-void

    .line 75
    :pswitch_4
    instance-of v0, p1, Lza/a;

    .line 76
    .line 77
    check-cast v3, Lua/q8;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    check-cast p1, Lza/a;

    .line 82
    .line 83
    iget-object v0, v3, Lua/q8;->g:Lha/u9;

    .line 84
    .line 85
    iget-object p1, p1, Lza/a;->c:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Lha/u9;->b(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    iget-object v0, v3, Lua/q8;->g:Lha/u9;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v0, p1}, Lha/u9;->b(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_2
    return-void

    .line 105
    :pswitch_5
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 106
    .line 107
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityDownload;->S:Lx9/p5;

    .line 108
    .line 109
    check-cast p1, Ljava/util/List;

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Lc6/g;->r(Ljava/util/Collection;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :pswitch_6
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 116
    .line 117
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 118
    .line 119
    iget-boolean v2, v0, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 120
    .line 121
    if-eqz v2, :cond_4

    .line 122
    .line 123
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 124
    .line 125
    if-nez v0, :cond_4

    .line 126
    .line 127
    const-string v1, "\u5982\u679c\u65e0\u6548\uff0c\u5efa\u8bae\u5b89\u88c5\uff1a\u516c\u7b7eUID\u7248\uff0c\u6765\u5c1d\u8bd5"

    .line 128
    .line 129
    :cond_4
    move-object v8, v1

    .line 130
    new-instance v0, Lha/z6;

    .line 131
    .line 132
    sget v1, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 133
    .line 134
    move-object v5, v3

    .line 135
    check-cast v5, Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 136
    .line 137
    iget-object v6, v5, Lda/g;->A:Lda/g;

    .line 138
    .line 139
    check-cast p1, Ljava/lang/Boolean;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_5

    .line 146
    .line 147
    const-string p1, "\u5df2\u5f00\u542f"

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_5
    const-string p1, "\u5df2\u5173\u95ed"

    .line 151
    .line 152
    :goto_3
    const-string v1, "\u5f53\u524d\u72b6\u6001\uff1a"

    .line 153
    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    new-instance v11, Ll5/y;

    .line 159
    .line 160
    const/16 p1, 0x17

    .line 161
    .line 162
    invoke-direct {v11, p1, p0}, Ll5/y;-><init>(ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    const-string v9, "\u5f00\u542f\u65e0\u7ebfadb"

    .line 166
    .line 167
    const-string v10, "\u5173\u95ed\u65e0\u7ebfadb"

    .line 168
    .line 169
    move-object v4, v0

    .line 170
    invoke-direct/range {v4 .. v11}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_7
    instance-of v1, p1, Lcom/yunpan/appmanage/bean/LogcatBean;

    .line 178
    .line 179
    if-eqz v1, :cond_6

    .line 180
    .line 181
    check-cast v3, Lha/ba;

    .line 182
    .line 183
    iget-object v1, v3, Lha/ba;->n:Ljava/util/ArrayList;

    .line 184
    .line 185
    check-cast p1, Lcom/yunpan/appmanage/bean/LogcatBean;

    .line 186
    .line 187
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, v3, Lha/ba;->n:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast v2, Landroid/widget/TextView;

    .line 209
    .line 210
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    :cond_6
    return-void

    .line 214
    :pswitch_8
    check-cast v3, Lcom/yunpan/appmanage/carsdk/u;

    .line 215
    .line 216
    iget-object p1, v3, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast p1, Lha/ba;

    .line 219
    .line 220
    iget-object p1, p1, Lha/ba;->k:Landroid/widget/TextView;

    .line 221
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    iget-object v2, v3, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v2, Lha/ba;

    .line 230
    .line 231
    iget-object v3, v2, Lha/ba;->n:Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    iget-object p1, v2, Lha/ba;->i:Lx9/t0;

    .line 251
    .line 252
    iget-object v0, v2, Lha/ba;->n:Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 255
    .line 256
    .line 257
    iget-object p1, v2, Lha/ba;->n:Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    if-nez p1, :cond_7

    .line 264
    .line 265
    iget-object p1, v2, Lha/ba;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 266
    .line 267
    const/4 v0, 0x0

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->setScrollY(I)V

    .line 269
    .line 270
    .line 271
    :cond_7
    return-void

    .line 272
    :pswitch_9
    instance-of v1, p1, Ljava/lang/String;

    .line 273
    .line 274
    if-eqz v1, :cond_8

    .line 275
    .line 276
    check-cast p1, Ljava/lang/String;

    .line 277
    .line 278
    check-cast v2, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    check-cast v3, Landroid/widget/TextView;

    .line 300
    .line 301
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    .line 303
    .line 304
    :cond_8
    return-void

    .line 305
    :pswitch_a
    check-cast p1, Ljava/lang/String;

    .line 306
    .line 307
    check-cast v3, Lha/v5;

    .line 308
    .line 309
    invoke-virtual {v3, p1}, Lha/v5;->a(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 313
    .line 314
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 315
    .line 316
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 317
    .line 318
    new-instance v1, La2/e0;

    .line 319
    .line 320
    check-cast v2, Lcom/yunpan/appmanage/db/ApkFileBean;

    .line 321
    .line 322
    const/16 v3, 0x9

    .line 323
    .line 324
    invoke-direct {v1, p0, v2, p1, v3}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 325
    .line 326
    .line 327
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b(Lgc/b;)V
    .locals 2

    .line 1
    iget p1, p0, Lha/h3;->b:I

    .line 2
    .line 3
    sparse-switch p1, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :sswitch_0
    iget-object p1, p0, Lha/h3;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lua/q8;

    .line 10
    .line 11
    iget-object p1, p1, Lua/q8;->g:Lha/u9;

    .line 12
    .line 13
    const-string v0, "\u89e3\u538b\u4e2d"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :sswitch_1
    iget-object p1, p0, Lha/h3;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lha/d2;

    .line 22
    .line 23
    iget-object v0, p1, Lha/d2;->h:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Landroid/widget/TextView;

    .line 26
    .line 27
    const-string v1, "\u7b49\u5f85"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "\u6267\u884c\u4e2d...\n"

    .line 33
    .line 34
    iget-object v1, p0, Lha/h3;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Ljava/lang/StringBuffer;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    iget-object p1, p1, Lha/d2;->i:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Landroid/widget/EditText;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public onComplete()V
    .locals 11

    .line 1
    const-string v0, "\u6ca1\u6709\u97f3\u9891\u6587\u4ef6"

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const-string v2, "\u538b\u7f29\u6253\u5305\u5b8c\u6210"

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const-string v4, "\u65b0\u5efa\u6210\u529f"

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const-string v6, ""

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    iget-object v8, p0, Lha/h3;->c:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v9, p0, Lha/h3;->d:Ljava/lang/Object;

    .line 17
    .line 18
    iget v10, p0, Lha/h3;->b:I

    .line 19
    .line 20
    packed-switch v10, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    :pswitch_0
    return-void

    .line 24
    :pswitch_1
    check-cast v9, Lua/i9;

    .line 25
    .line 26
    invoke-virtual {v9, v6, v7, v7}, Lua/i9;->u(Ljava/lang/String;IZ)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v1, v9, Lua/i9;->q:Lx9/y5;

    .line 31
    .line 32
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    move-object v2, v8

    .line 37
    check-cast v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 38
    .line 39
    if-ge v0, v1, :cond_1

    .line 40
    .line 41
    iget-object v1, v9, Lua/i9;->q:Lx9/y5;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 48
    .line 49
    iget-boolean v3, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 50
    .line 51
    iget-boolean v6, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 52
    .line 53
    if-ne v3, v6, :cond_0

    .line 54
    .line 55
    iget-object v3, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v6, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    iget-object v1, v9, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelectionWithSmooth(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v9, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, v9, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 88
    .line 89
    .line 90
    const-string v0, "\u76ee\u5f55\u5df2\u5b58\u5728"

    .line 91
    .line 92
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_0
    add-int/2addr v0, v5

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-static {v4}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, v9, Lua/i9;->q:Lx9/y5;

    .line 102
    .line 103
    invoke-virtual {v0, v7, v2}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, v9, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 107
    .line 108
    invoke-virtual {v0, v7}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelectionWithSmooth(I)V

    .line 109
    .line 110
    .line 111
    iget-object v0, v9, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 112
    .line 113
    invoke-virtual {v0, v7}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 114
    .line 115
    .line 116
    iget-object v0, v9, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 119
    .line 120
    .line 121
    :goto_1
    return-void

    .line 122
    :pswitch_2
    sget-object v0, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 123
    .line 124
    check-cast v9, Lua/i9;

    .line 125
    .line 126
    iget v1, v9, Lua/i9;->T:I

    .line 127
    .line 128
    check-cast v8, Lx9/n5;

    .line 129
    .line 130
    invoke-virtual {v0, v1, v8}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 131
    .line 132
    .line 133
    iget v0, v8, Lx9/n5;->a:I

    .line 134
    .line 135
    if-ne v0, v5, :cond_2

    .line 136
    .line 137
    iget-object v0, v9, Lua/i9;->n:Lx9/a6;

    .line 138
    .line 139
    new-instance v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 140
    .line 141
    iget-object v2, v8, Lx9/n5;->b:Ljava/lang/String;

    .line 142
    .line 143
    const-string v3, "-1"

    .line 144
    .line 145
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_3

    .line 152
    .line 153
    :cond_2
    const/4 v1, 0x2

    .line 154
    const-string v2, "0"

    .line 155
    .line 156
    if-ne v0, v1, :cond_3

    .line 157
    .line 158
    iget-object v0, v9, Lua/i9;->n:Lx9/a6;

    .line 159
    .line 160
    new-instance v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 161
    .line 162
    iget-object v3, v8, Lx9/n5;->b:Ljava/lang/String;

    .line 163
    .line 164
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_3
    if-ne v0, v3, :cond_4

    .line 172
    .line 173
    iget-object v0, v9, Lua/i9;->n:Lx9/a6;

    .line 174
    .line 175
    new-instance v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 176
    .line 177
    iget-object v2, v8, Lx9/n5;->b:Ljava/lang/String;

    .line 178
    .line 179
    invoke-direct {v1, v2, v6}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_4
    const/4 v1, 0x4

    .line 187
    const-string v3, "/"

    .line 188
    .line 189
    if-eq v0, v1, :cond_9

    .line 190
    .line 191
    const/4 v1, 0x5

    .line 192
    if-ne v0, v1, :cond_5

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_5
    const/4 v1, 0x6

    .line 196
    if-ne v0, v1, :cond_6

    .line 197
    .line 198
    iget-object v0, v9, Lua/i9;->n:Lx9/a6;

    .line 199
    .line 200
    new-instance v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 201
    .line 202
    iget-object v2, v8, Lx9/n5;->b:Ljava/lang/String;

    .line 203
    .line 204
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_6
    const/4 v1, 0x7

    .line 212
    if-ne v0, v1, :cond_7

    .line 213
    .line 214
    iget-object v0, v9, Lua/i9;->n:Lx9/a6;

    .line 215
    .line 216
    new-instance v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 217
    .line 218
    iget-object v2, v8, Lx9/n5;->b:Ljava/lang/String;

    .line 219
    .line 220
    iget-object v3, v8, Lx9/n5;->c:Ljava/lang/String;

    .line 221
    .line 222
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_7
    const/16 v1, 0x14

    .line 230
    .line 231
    if-ne v0, v1, :cond_8

    .line 232
    .line 233
    iget-object v0, v9, Lua/i9;->n:Lx9/a6;

    .line 234
    .line 235
    new-instance v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 236
    .line 237
    iget-object v3, v8, Lx9/n5;->b:Ljava/lang/String;

    .line 238
    .line 239
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_8
    const/16 v1, 0x15

    .line 247
    .line 248
    if-ne v0, v1, :cond_a

    .line 249
    .line 250
    iget-object v0, v9, Lua/i9;->n:Lx9/a6;

    .line 251
    .line 252
    new-instance v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 253
    .line 254
    iget-object v2, v8, Lx9/n5;->b:Ljava/lang/String;

    .line 255
    .line 256
    invoke-direct {v1, v2, v6}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_9
    :goto_2
    iget-object v0, v9, Lua/i9;->n:Lx9/a6;

    .line 264
    .line 265
    new-instance v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 266
    .line 267
    iget-object v2, v8, Lx9/n5;->b:Ljava/lang/String;

    .line 268
    .line 269
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    :cond_a
    :goto_3
    invoke-virtual {v9, v7}, Lua/i9;->z(Z)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :pswitch_3
    check-cast v9, Lua/i9;

    .line 280
    .line 281
    iget-object v0, v9, Lua/i9;->h:Lha/u9;

    .line 282
    .line 283
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 284
    .line 285
    .line 286
    invoke-static {v2, v7}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 287
    .line 288
    .line 289
    iget-object v0, v9, Lua/i9;->z:Lx9/f0;

    .line 290
    .line 291
    new-instance v1, Lx9/w3;

    .line 292
    .line 293
    check-cast v8, Ljava/io/File;

    .line 294
    .line 295
    invoke-direct {v1, v8}, Lx9/w3;-><init>(Ljava/io/File;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v7, v1}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    iget-object v0, v9, Lua/i9;->y:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 302
    .line 303
    invoke-virtual {v0, v7}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :pswitch_4
    check-cast v9, Lua/q8;

    .line 308
    .line 309
    iget-object v0, v9, Lua/q8;->g:Lha/u9;

    .line 310
    .line 311
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 312
    .line 313
    .line 314
    invoke-static {v2, v7}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 315
    .line 316
    .line 317
    iget-object v0, v9, Lua/q8;->n:Lx9/n;

    .line 318
    .line 319
    new-instance v1, Lx9/w3;

    .line 320
    .line 321
    check-cast v8, Ljava/io/File;

    .line 322
    .line 323
    invoke-direct {v1, v8}, Lx9/w3;-><init>(Ljava/io/File;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v7, v1}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    iget-object v0, v9, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 330
    .line 331
    invoke-virtual {v0, v7}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 332
    .line 333
    .line 334
    return-void

    .line 335
    :pswitch_5
    check-cast v9, Lua/q8;

    .line 336
    .line 337
    iget-object v0, v9, Lua/q8;->g:Lha/u9;

    .line 338
    .line 339
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 340
    .line 341
    .line 342
    const-string v0, "\u89e3\u538b\u5b8c\u6210"

    .line 343
    .line 344
    invoke-static {v0, v5}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 345
    .line 346
    .line 347
    iget-object v0, v9, Lua/q8;->n:Lx9/n;

    .line 348
    .line 349
    new-instance v1, Lx9/w3;

    .line 350
    .line 351
    check-cast v8, Ljava/lang/String;

    .line 352
    .line 353
    invoke-direct {v1, v8}, Lx9/w3;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v7, v1}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    iget-object v0, v9, Lua/q8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 360
    .line 361
    invoke-virtual {v0, v7}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 362
    .line 363
    .line 364
    invoke-static {v8}, Lua/q8;->w(Ljava/lang/String;)Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-eqz v0, :cond_b

    .line 369
    .line 370
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 371
    .line 372
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 373
    .line 374
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->f0:Ljava/util/concurrent/ExecutorService;

    .line 375
    .line 376
    new-instance v1, Lcom/yunpan/appmanage/util/z;

    .line 377
    .line 378
    new-instance v2, Ljava/io/File;

    .line 379
    .line 380
    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-direct {v1, v2}, Lcom/yunpan/appmanage/util/z;-><init>(Ljava/io/File;)V

    .line 384
    .line 385
    .line 386
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 387
    .line 388
    .line 389
    :cond_b
    return-void

    .line 390
    :pswitch_6
    new-instance v0, Lha/lc;

    .line 391
    .line 392
    sget v1, Lcom/yunpan/appmanage/ui/ActivityShell;->M:I

    .line 393
    .line 394
    check-cast v9, Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 395
    .line 396
    iget-object v1, v9, Lda/g;->A:Lda/g;

    .line 397
    .line 398
    new-instance v2, Lua/g5;

    .line 399
    .line 400
    invoke-direct {v2, v3, p0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    check-cast v8, Ljava/util/ArrayList;

    .line 404
    .line 405
    invoke-direct {v0, v1, v1, v8, v2}, Lha/lc;-><init>(Landroid/app/Activity;Lda/g;Ljava/util/ArrayList;Lua/g5;)V

    .line 406
    .line 407
    .line 408
    iput-object v0, v9, Lcom/yunpan/appmanage/ui/ActivityShell;->H:Lha/lc;

    .line 409
    .line 410
    return-void

    .line 411
    :pswitch_7
    check-cast v9, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;

    .line 412
    .line 413
    iget-object v0, v9, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->E:Lx9/v3;

    .line 414
    .line 415
    check-cast v8, Ljava/util/ArrayList;

    .line 416
    .line 417
    invoke-virtual {v0, v8}, Lc6/g;->E(Ljava/util/List;)V

    .line 418
    .line 419
    .line 420
    return-void

    .line 421
    :pswitch_8
    check-cast v9, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBarNoRoot;

    .line 422
    .line 423
    iget-object v0, v9, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBarNoRoot;->D:Lx9/m2;

    .line 424
    .line 425
    check-cast v8, Ljava/util/ArrayList;

    .line 426
    .line 427
    invoke-virtual {v0, v8}, Lc6/g;->E(Ljava/util/List;)V

    .line 428
    .line 429
    .line 430
    return-void

    .line 431
    :pswitch_9
    check-cast v9, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBar;

    .line 432
    .line 433
    iget-object v0, v9, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBar;->D:Lx9/m2;

    .line 434
    .line 435
    check-cast v8, Ljava/util/ArrayList;

    .line 436
    .line 437
    invoke-virtual {v0, v8}, Lc6/g;->E(Ljava/util/List;)V

    .line 438
    .line 439
    .line 440
    return-void

    .line 441
    :pswitch_a
    new-instance v0, Lha/b6;

    .line 442
    .line 443
    new-instance v1, Lph/j;

    .line 444
    .line 445
    const/16 v2, 0x17

    .line 446
    .line 447
    invoke-direct {v1, v2, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    check-cast v8, Ljava/util/ArrayList;

    .line 451
    .line 452
    check-cast v9, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    .line 453
    .line 454
    invoke-direct {v0, v9, v9, v8, v1}, Lha/b6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/a6;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 458
    .line 459
    .line 460
    return-void

    .line 461
    :pswitch_b
    check-cast v9, Lx9/p2;

    .line 462
    .line 463
    check-cast v8, Ljava/util/ArrayList;

    .line 464
    .line 465
    invoke-virtual {v9, v8}, Lc6/g;->E(Ljava/util/List;)V

    .line 466
    .line 467
    .line 468
    return-void

    .line 469
    :pswitch_c
    check-cast v9, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 470
    .line 471
    iget-object v0, v9, Lcom/yunpan/appmanage/ui/ActivityDownload;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 472
    .line 473
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 474
    .line 475
    .line 476
    iget-object v0, v9, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 477
    .line 478
    check-cast v8, Lba/r;

    .line 479
    .line 480
    iget-boolean v1, v8, Lba/r;->o:Z

    .line 481
    .line 482
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setHasMoreData(Z)V

    .line 483
    .line 484
    .line 485
    iget-boolean v0, v8, Lba/r;->o:Z

    .line 486
    .line 487
    if-eqz v0, :cond_c

    .line 488
    .line 489
    iget-object v0, v9, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 490
    .line 491
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->finishLoadMore()V

    .line 492
    .line 493
    .line 494
    goto :goto_4

    .line 495
    :cond_c
    iget-object v0, v9, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 496
    .line 497
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->finishLoadMoreWithNoMore()V

    .line 498
    .line 499
    .line 500
    :goto_4
    return-void

    .line 501
    :pswitch_d
    check-cast v9, Lha/ff;

    .line 502
    .line 503
    invoke-virtual {v9, v6, v7, v7}, Lha/ff;->b(Ljava/lang/String;IZ)V

    .line 504
    .line 505
    .line 506
    invoke-static {v4}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 507
    .line 508
    .line 509
    iget-object v0, v9, Lha/ff;->k:Lx9/q5;

    .line 510
    .line 511
    check-cast v8, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 512
    .line 513
    invoke-virtual {v0, v7, v8}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    iget-object v0, v9, Lha/ff;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 517
    .line 518
    invoke-virtual {v0, v7}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelectionWithSmooth(I)V

    .line 519
    .line 520
    .line 521
    iget-object v0, v9, Lha/ff;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 522
    .line 523
    invoke-virtual {v0, v7}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 524
    .line 525
    .line 526
    iget-object v0, v9, Lha/ff;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 527
    .line 528
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 529
    .line 530
    .line 531
    return-void

    .line 532
    :pswitch_e
    check-cast v9, Lha/d2;

    .line 533
    .line 534
    iget-object v0, v9, Lha/d2;->i:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast v0, Landroid/widget/EditText;

    .line 537
    .line 538
    check-cast v8, Ljava/lang/StringBuffer;

    .line 539
    .line 540
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    .line 546
    .line 547
    iget-object v0, v9, Lha/d2;->h:Ljava/lang/Object;

    .line 548
    .line 549
    check-cast v0, Landroid/widget/TextView;

    .line 550
    .line 551
    const-string v1, "\u6267\u884c"

    .line 552
    .line 553
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    .line 555
    .line 556
    return-void

    .line 557
    :pswitch_f
    new-instance v0, Lha/b6;

    .line 558
    .line 559
    check-cast v9, Lha/sa;

    .line 560
    .line 561
    iget-object v2, v9, Lha/a4;->a:Landroid/app/Activity;

    .line 562
    .line 563
    iget-object v3, v9, Lha/a4;->b:Landroid/content/Context;

    .line 564
    .line 565
    new-instance v4, Lha/p7;

    .line 566
    .line 567
    invoke-direct {v4, v1, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    check-cast v8, Ljava/util/ArrayList;

    .line 571
    .line 572
    invoke-direct {v0, v2, v3, v8, v4}, Lha/b6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/a6;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 576
    .line 577
    .line 578
    return-void

    .line 579
    :pswitch_10
    check-cast v9, Lcom/yunpan/appmanage/carsdk/u;

    .line 580
    .line 581
    iget-object v0, v9, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 582
    .line 583
    check-cast v0, Lha/ba;

    .line 584
    .line 585
    iget-object v0, v0, Lha/ba;->k:Landroid/widget/TextView;

    .line 586
    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    .line 588
    .line 589
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    .line 591
    .line 592
    check-cast v8, Ljava/util/ArrayList;

    .line 593
    .line 594
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 595
    .line 596
    .line 597
    move-result v2

    .line 598
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    .line 610
    .line 611
    iget-object v0, v9, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 612
    .line 613
    check-cast v0, Lha/ba;

    .line 614
    .line 615
    iget-object v1, v0, Lha/ba;->i:Lx9/t0;

    .line 616
    .line 617
    invoke-virtual {v1, v8}, Lc6/g;->E(Ljava/util/List;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 621
    .line 622
    .line 623
    move-result v1

    .line 624
    if-nez v1, :cond_d

    .line 625
    .line 626
    iget-object v0, v0, Lha/ba;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 627
    .line 628
    invoke-virtual {v0, v7}, Landroid/view/View;->setScrollY(I)V

    .line 629
    .line 630
    .line 631
    :cond_d
    return-void

    .line 632
    :pswitch_11
    check-cast v8, Ljava/util/ArrayList;

    .line 633
    .line 634
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    if-eqz v1, :cond_e

    .line 639
    .line 640
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    goto :goto_5

    .line 644
    :cond_e
    new-instance v0, Lha/b6;

    .line 645
    .line 646
    check-cast v9, Lha/r3;

    .line 647
    .line 648
    iget-object v1, v9, Lha/a4;->b:Landroid/content/Context;

    .line 649
    .line 650
    move-object v2, v1

    .line 651
    check-cast v2, Landroid/app/Activity;

    .line 652
    .line 653
    new-instance v3, La1/d;

    .line 654
    .line 655
    const/16 v4, 0xe

    .line 656
    .line 657
    invoke-direct {v3, v4, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    invoke-direct {v0, v2, v1, v8, v3}, Lha/b6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/a6;)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 664
    .line 665
    .line 666
    :goto_5
    return-void

    .line 667
    :pswitch_12
    check-cast v8, Ljava/util/ArrayList;

    .line 668
    .line 669
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    if-eqz v1, :cond_f

    .line 674
    .line 675
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    goto :goto_6

    .line 679
    :cond_f
    new-instance v0, Lha/b6;

    .line 680
    .line 681
    check-cast v9, Lha/j3;

    .line 682
    .line 683
    iget-object v1, v9, Lha/a4;->b:Landroid/content/Context;

    .line 684
    .line 685
    move-object v2, v1

    .line 686
    check-cast v2, Landroid/app/Activity;

    .line 687
    .line 688
    new-instance v3, La1/d;

    .line 689
    .line 690
    const/16 v4, 0xd

    .line 691
    .line 692
    invoke-direct {v3, v4, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 693
    .line 694
    .line 695
    invoke-direct {v0, v2, v1, v8, v3}, Lha/b6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/a6;)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 699
    .line 700
    .line 701
    :goto_6
    return-void

    .line 702
    nop

    .line 703
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
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
    .end packed-switch
.end method
