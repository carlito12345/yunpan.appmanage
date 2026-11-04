.class public final synthetic Lua/q4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/q4;->a:I

    iput-object p1, p0, Lua/q4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "\'"

    .line 3
    .line 4
    const-string v2, "\' \'"

    .line 5
    .line 6
    const-string v3, "\\cp -R \'"

    .line 7
    .line 8
    const-string v4, "application"

    .line 9
    .line 10
    iget-object v5, p0, Lua/q4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;

    .line 11
    .line 12
    iget v6, p0, Lua/q4;->a:I

    .line 13
    .line 14
    packed-switch v6, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    sget v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->N:I

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v6, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'yes\' ?><map><string name=\"all_app\">"

    .line 22
    .line 23
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v6, v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->H:Lz7/s;

    .line 27
    .line 28
    iget-object v7, v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->I:Lz7/o;

    .line 29
    .line 30
    invoke-virtual {v6, v4, v7}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 31
    .line 32
    .line 33
    iget-object v4, v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->H:Lz7/s;

    .line 34
    .line 35
    invoke-virtual {v4}, Lz7/p;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, "</string></map>"

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v4, v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->M:Ljava/io/File;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v4, v0}, Lq4/a;->M(Ljava/io/File;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v3, v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->M:Ljava/io/File;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v2, v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->L:Ljava/io/File;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget v0, v0, Lfa/a0;->a:I

    .line 99
    .line 100
    if-eqz v0, :cond_0

    .line 101
    .line 102
    const-string v0, "\u5931\u8d25\uff1a\u5199\u5165\u6587\u4ef6\u51fa\u9519"

    .line 103
    .line 104
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    const-string v0, "kill -9 $(pidof com.android.systemui)"

    .line 109
    .line 110
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 111
    .line 112
    .line 113
    const-string v0, "kill -9 $(pidof com.hozonauto.netahome)"

    .line 114
    .line 115
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 119
    .line 120
    .line 121
    :goto_0
    return-void

    .line 122
    :pswitch_0
    sget v6, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->N:I

    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    sget-object v6, Lfa/b0;->a:La2/w0;

    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    const-string v6, "id"

    .line 133
    .line 134
    invoke-static {v6}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    iget v7, v6, Lfa/a0;->a:I

    .line 139
    .line 140
    if-eqz v7, :cond_1

    .line 141
    .line 142
    const-string v0, "\u51fa\u9519\uff1a\u83b7\u53d6\u914d\u7f6e\u5931\u8d25"

    .line 143
    .line 144
    :goto_1
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_5

    .line 148
    .line 149
    :cond_1
    invoke-virtual {v6}, Lfa/a0;->a()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    const-string v7, "uid=0("

    .line 154
    .line 155
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-nez v6, :cond_2

    .line 160
    .line 161
    const-string v0, "\u65e0\u6743\u9650\uff0c\u8bf7\u5148\u63d0\u6743"

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v7, "ls -ls \""

    .line 167
    .line 168
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v7, v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->L:Ljava/io/File;

    .line 172
    .line 173
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v7, "\""

    .line 181
    .line 182
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-static {v6}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    iget v6, v6, Lfa/a0;->a:I

    .line 194
    .line 195
    if-eqz v6, :cond_3

    .line 196
    .line 197
    new-instance v0, Ljava/lang/Exception;

    .line 198
    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v2, "\u65e0\u6cd5\u67e5\u770b\u76ee\u5f55\uff1a"

    .line 202
    .line 203
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v2, v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->L:Ljava/io/File;

    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_5

    .line 226
    .line 227
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v3, v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->L:Ljava/io/File;

    .line 233
    .line 234
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    iget-object v2, v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->M:Ljava/io/File;

    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    iget v1, v1, Lfa/a0;->a:I

    .line 265
    .line 266
    if-eqz v1, :cond_4

    .line 267
    .line 268
    const-string v0, "\u8bfb\u53d6\u6587\u4ef6\u51fa\u95191\uff0c\u8bf7\u91cd\u8bd5"

    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_4
    const-string v1, ""

    .line 272
    .line 273
    const/4 v2, 0x0

    .line 274
    :try_start_0
    iget-object v3, v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->M:Ljava/io/File;

    .line 275
    .line 276
    invoke-static {v3}, Lq4/a;->J(Ljava/io/File;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    const-string v3, "<string name=\"all_app\">"

    .line 281
    .line 282
    const-string v6, "</string>"

    .line 283
    .line 284
    invoke-static {v1, v3, v6, v2}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 289
    .line 290
    const/16 v6, 0x18

    .line 291
    .line 292
    if-lt v3, v6, :cond_5

    .line 293
    .line 294
    invoke-static {v1}, Lq/t;->g(Ljava/lang/String;)Landroid/text/Spanned;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    goto :goto_2

    .line 303
    :catch_0
    move-exception v3

    .line 304
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 305
    .line 306
    .line 307
    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    if-eqz v3, :cond_6

    .line 312
    .line 313
    const-string v0, "\u8bfb\u53d6\u6587\u4ef6\u51fa\u95192\uff0c\u8bf7\u91cd\u8bd5"

    .line 314
    .line 315
    goto/16 :goto_1

    .line 316
    .line 317
    :cond_6
    :try_start_1
    invoke-static {v1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    iput-object v1, v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->H:Lz7/s;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 326
    .line 327
    invoke-virtual {v1, v4}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    iput-object v1, v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->I:Lz7/o;

    .line 332
    .line 333
    const/4 v1, 0x0

    .line 334
    :goto_3
    iget-object v3, v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->I:Lz7/o;

    .line 335
    .line 336
    iget-object v3, v3, Lz7/o;->a:Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    if-ge v1, v3, :cond_8

    .line 343
    .line 344
    iget-object v3, v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->I:Lz7/o;

    .line 345
    .line 346
    const-string v4, "package_name"

    .line 347
    .line 348
    invoke-static {v3, v1, v4}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-static {v3}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    const-string v6, "name"

    .line 357
    .line 358
    if-eqz v4, :cond_7

    .line 359
    .line 360
    iget-object v3, v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->I:Lz7/o;

    .line 361
    .line 362
    invoke-static {v3, v1, v6}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    iput-object v3, v4, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_7
    new-instance v4, Lcom/yunpan/appmanage/db/AppBean;

    .line 370
    .line 371
    invoke-direct {v4}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 372
    .line 373
    .line 374
    iput-object v3, v4, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 375
    .line 376
    iget-object v3, v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->I:Lz7/o;

    .line 377
    .line 378
    invoke-static {v3, v1, v6}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    iput-object v3, v4, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 383
    .line 384
    iput-boolean v0, v4, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 385
    .line 386
    iput-boolean v2, v4, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 387
    .line 388
    iput-boolean v2, v4, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 389
    .line 390
    iput-boolean v2, v4, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 391
    .line 392
    iput-boolean v0, v4, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 393
    .line 394
    :goto_4
    iget-object v3, v5, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->E:Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    add-int/2addr v1, v0

    .line 400
    goto :goto_3

    .line 401
    :cond_8
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 402
    .line 403
    .line 404
    goto :goto_5

    .line 405
    :catch_1
    const-string v0, "\u8bfb\u53d6\u6587\u4ef6\u51fa\u9519\uff1a\u683c\u5f0f\u9519\u8bef"

    .line 406
    .line 407
    goto/16 :goto_1

    .line 408
    .line 409
    :goto_5
    return-void

    .line 410
    nop

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 8

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->N:I

    .line 2
    .line 3
    iget-object v3, p0, Lua/q4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;

    .line 4
    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    new-array v0, v0, [Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "\u79fb\u9664"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object v1, v0, v2

    .line 15
    .line 16
    const-string v1, "\u63d2\u5165"

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    aput-object v1, v0, v2

    .line 20
    .line 21
    const-string v1, "\u6539\u540d"

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    new-instance v7, Lha/ja;

    .line 27
    .line 28
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    new-instance v6, Lha/v1;

    .line 33
    .line 34
    const/16 v0, 0x9

    .line 35
    .line 36
    invoke-direct {v6, v3, p1, p3, v0}, Lha/v1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    move-object v1, v7

    .line 40
    move-object v2, v3

    .line 41
    move-object v4, p2

    .line 42
    invoke-direct/range {v1 .. v6}, Lha/ja;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/util/List;Lha/ia;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7}, Lha/a4;->show()V

    .line 46
    .line 47
    .line 48
    return-void
.end method
