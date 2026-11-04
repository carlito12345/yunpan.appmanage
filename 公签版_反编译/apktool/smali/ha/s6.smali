.class public final synthetic Lha/s6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lha/a4;Ljava/util/ArrayList;Landroid/widget/EditText;I)V
    .locals 0

    .line 1
    iput p4, p0, Lha/s6;->a:I

    iput-object p1, p0, Lha/s6;->b:Ljava/lang/Object;

    iput-object p2, p0, Lha/s6;->d:Ljava/lang/Object;

    iput-object p3, p0, Lha/s6;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/widget/TextView;I)V
    .locals 0

    .line 2
    iput p4, p0, Lha/s6;->a:I

    iput-object p1, p0, Lha/s6;->b:Ljava/lang/Object;

    iput-object p2, p0, Lha/s6;->c:Ljava/lang/Object;

    iput-object p3, p0, Lha/s6;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lha/s6;->d:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v0, p0, Lha/s6;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lha/s6;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iget v2, p0, Lha/s6;->a:I

    .line 8
    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->H:I

    .line 13
    .line 14
    move-object v5, v1

    .line 15
    check-cast v5, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;

    .line 16
    .line 17
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v1, Lha/ha;

    .line 21
    .line 22
    new-instance v8, Lha/t1;

    .line 23
    .line 24
    move-object v7, v0

    .line 25
    check-cast v7, Ljava/util/ArrayList;

    .line 26
    .line 27
    check-cast p1, Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-direct {v8, v7, p1}, Lha/t1;-><init>(Ljava/util/ArrayList;Landroid/widget/TextView;)V

    .line 30
    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    move-object v3, v1

    .line 34
    move-object v4, v5

    .line 35
    invoke-direct/range {v3 .. v8}, Lha/ha;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    check-cast v1, Lha/vc;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance v8, Lha/fa;

    .line 48
    .line 49
    new-instance v7, Ld2/w;

    .line 50
    .line 51
    check-cast p1, Landroid/widget/TextView;

    .line 52
    .line 53
    const/16 v2, 0x1d

    .line 54
    .line 55
    invoke-direct {v7, v1, v2, p1}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v4, v1, Lha/a4;->b:Landroid/content/Context;

    .line 59
    .line 60
    iget-object v3, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 61
    .line 62
    move-object v6, v0

    .line 63
    check-cast v6, Ljava/util/ArrayList;

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    move-object v2, v8

    .line 67
    invoke-direct/range {v2 .. v7}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8}, Lha/a4;->show()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_1
    check-cast v1, Lha/vc;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    check-cast v0, Landroid/widget/EditText;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_0

    .line 98
    .line 99
    const-string p1, "\u6807\u7b7e\u4e0d\u80fd\u4e3a\u7a7a"

    .line 100
    .line 101
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    iget-object v2, v1, Lha/vc;->i:Ljava/lang/String;

    .line 106
    .line 107
    check-cast p1, Landroid/widget/EditText;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object v3, v1, Lha/vc;->h:Lha/h8;

    .line 118
    .line 119
    iget v4, v3, Lha/h8;->b:I

    .line 120
    .line 121
    iget v5, v3, Lha/h8;->c:I

    .line 122
    .line 123
    iget-object v6, v3, Lha/h8;->d:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v3, v3, Lha/h8;->e:Lea/e;

    .line 126
    .line 127
    const-string v7, "  "

    .line 128
    .line 129
    :try_start_0
    new-instance v8, Lz7/s;

    .line 130
    .line 131
    invoke-direct {v8}, Lz7/s;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v9, "keyType"

    .line 135
    .line 136
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v8, v9, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 141
    .line 142
    .line 143
    const-string v4, "gnType"

    .line 144
    .line 145
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-virtual {v8, v4, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 150
    .line 151
    .line 152
    const-string v4, "name"

    .line 153
    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v6, "\uff1a"

    .line 163
    .line 164
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-virtual {v8, v4, v5}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v4, "level"

    .line 190
    .line 191
    invoke-virtual {v8, v4, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const-string v2, "tag"

    .line 195
    .line 196
    invoke-virtual {v8, v2, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const-string v0, "message"

    .line 200
    .line 201
    invoke-virtual {v8, v0, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-interface {v3, v8}, Lea/e;->k(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .line 206
    .line 207
    :catch_0
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 208
    .line 209
    .line 210
    :goto_0
    return-void

    .line 211
    :pswitch_2
    check-cast v1, Lha/ke;

    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    check-cast v0, Landroid/widget/EditText;

    .line 217
    .line 218
    invoke-static {v0}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_1

    .line 227
    .line 228
    const-string p1, "\u6587\u4ef6\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    .line 229
    .line 230
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_1
    invoke-static {v0}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-object v2, v1, Lha/ke;->i:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    new-instance v2, Ljava/io/File;

    .line 248
    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    new-instance v4, Ljava/io/File;

    .line 255
    .line 256
    iget-object v5, v1, Lha/ke;->h:Ljava/lang/String;

    .line 257
    .line 258
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v4, "/"

    .line 269
    .line 270
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-eqz v2, :cond_2

    .line 288
    .line 289
    const-string p1, "\u540d\u79f0\u91cd\u590d\uff1a\u76ee\u5f55\u5185\u5b58\u5728\u76f8\u540c\u540d\u79f0"

    .line 290
    .line 291
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    goto :goto_1

    .line 295
    :cond_2
    check-cast p1, Landroid/widget/EditText;

    .line 296
    .line 297
    invoke-static {p1}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    iget-object v2, v1, Lha/ke;->g:Lha/je;

    .line 302
    .line 303
    invoke-interface {v2, v0, p1}, Lha/je;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 307
    .line 308
    .line 309
    :goto_1
    return-void

    .line 310
    :pswitch_3
    check-cast v1, Lha/ad;

    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    check-cast v0, Landroid/widget/EditText;

    .line 316
    .line 317
    invoke-static {v0}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    if-eqz v3, :cond_3

    .line 326
    .line 327
    const-string p1, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    .line 328
    .line 329
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto :goto_2

    .line 333
    :cond_3
    check-cast p1, Landroid/widget/EditText;

    .line 334
    .line 335
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    if-nez v3, :cond_4

    .line 352
    .line 353
    const-string v1, "\u5bc6\u7801\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    .line 354
    .line 355
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const-string v1, ""

    .line 359
    .line 360
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    .line 365
    .line 366
    goto :goto_2

    .line 367
    :cond_4
    const-string p1, "\u8bbe\u7f6e\u6210\u529f"

    .line 368
    .line 369
    const/4 v0, 0x1

    .line 370
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 371
    .line 372
    .line 373
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 374
    .line 375
    invoke-virtual {p1, v2}, Lcom/yunpan/appmanage/util/w;->B(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1}, Lha/ad;->a()V

    .line 379
    .line 380
    .line 381
    :goto_2
    return-void

    .line 382
    :pswitch_4
    check-cast v1, Lha/o1;

    .line 383
    .line 384
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    new-instance v8, Lha/fa;

    .line 388
    .line 389
    new-instance v7, Ld2/w;

    .line 390
    .line 391
    check-cast v0, Landroid/widget/EditText;

    .line 392
    .line 393
    move-object v6, p1

    .line 394
    check-cast v6, Ljava/util/ArrayList;

    .line 395
    .line 396
    const/16 p1, 0xe

    .line 397
    .line 398
    invoke-direct {v7, v0, p1, v6}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    iget-object v4, v1, Lha/a4;->b:Landroid/content/Context;

    .line 402
    .line 403
    const/4 v5, 0x0

    .line 404
    iget-object v3, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 405
    .line 406
    move-object v2, v8

    .line 407
    invoke-direct/range {v2 .. v7}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v8}, Lha/a4;->show()V

    .line 411
    .line 412
    .line 413
    return-void

    .line 414
    :pswitch_5
    check-cast v1, Lha/o1;

    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    new-instance v8, Lha/fa;

    .line 420
    .line 421
    new-instance v7, La2/g1;

    .line 422
    .line 423
    check-cast v0, Landroid/widget/EditText;

    .line 424
    .line 425
    move-object v6, p1

    .line 426
    check-cast v6, Ljava/util/ArrayList;

    .line 427
    .line 428
    const/16 p1, 0x14

    .line 429
    .line 430
    invoke-direct {v7, v0, p1, v6}, La2/g1;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    iget-object v4, v1, Lha/a4;->b:Landroid/content/Context;

    .line 434
    .line 435
    const/4 v5, 0x0

    .line 436
    iget-object v3, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 437
    .line 438
    move-object v2, v8

    .line 439
    invoke-direct/range {v2 .. v7}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v8}, Lha/a4;->show()V

    .line 443
    .line 444
    .line 445
    return-void

    .line 446
    :pswitch_6
    check-cast v1, Lha/i;

    .line 447
    .line 448
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    .line 450
    .line 451
    new-instance v2, Lha/ie;

    .line 452
    .line 453
    new-instance v3, Lcom/hjq/permissions/b;

    .line 454
    .line 455
    check-cast v0, Ljava/util/ArrayList;

    .line 456
    .line 457
    check-cast p1, Landroid/widget/TextView;

    .line 458
    .line 459
    const/4 v4, 0x3

    .line 460
    invoke-direct {v3, v1, v0, p1, v4}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 461
    .line 462
    .line 463
    iget-object p1, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 464
    .line 465
    iget-object v1, v1, Lha/a4;->b:Landroid/content/Context;

    .line 466
    .line 467
    invoke-direct {v2, p1, v1, v0, v3}, Lha/ie;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/he;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 471
    .line 472
    .line 473
    return-void

    .line 474
    :pswitch_7
    check-cast v1, Lha/w6;

    .line 475
    .line 476
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    .line 478
    .line 479
    check-cast v0, Landroid/widget/EditText;

    .line 480
    .line 481
    invoke-static {v0}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    check-cast p1, Landroid/widget/EditText;

    .line 486
    .line 487
    invoke-static {p1}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    if-nez v2, :cond_6

    .line 496
    .line 497
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    if-eqz v2, :cond_5

    .line 502
    .line 503
    goto :goto_3

    .line 504
    :cond_5
    :try_start_1
    iget-object v2, v1, Lha/w6;->g:Lha/v6;

    .line 505
    .line 506
    iget-object v3, v1, Lha/w6;->k:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 507
    .line 508
    iget-object v4, v1, Lha/w6;->j:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 509
    .line 510
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 515
    .line 516
    .line 517
    move-result p1

    .line 518
    invoke-interface {v2, v3, v4, v0, p1}, Lha/v6;->b(Lcom/yunpan/appmanage/bean/KeyMapSelectBean;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;II)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 522
    .line 523
    .line 524
    goto :goto_4

    .line 525
    :catch_1
    const-string p1, "\u8bf7\u8f93\u5165\u5c4f\u5e55\u5750\u6807"

    .line 526
    .line 527
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 528
    .line 529
    .line 530
    goto :goto_4

    .line 531
    :cond_6
    :goto_3
    const-string p1, "\u4e0d\u80fd\u4e3a\u7a7a"

    .line 532
    .line 533
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 534
    .line 535
    .line 536
    :goto_4
    return-void

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
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
