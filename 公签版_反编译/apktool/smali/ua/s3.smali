.class public final synthetic Lua/s3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lha/ga;
.implements Lea/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/s3;->a:I

    iput-object p1, p0, Lua/s3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "click"

    .line 6
    .line 7
    const-string v3, "eventName"

    .line 8
    .line 9
    const-string v4, "name"

    .line 10
    .line 11
    const-string v5, "type"

    .line 12
    .line 13
    const-string v6, "maps"

    .line 14
    .line 15
    iget-object v7, v0, Lua/s3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v10, -0x1

    .line 20
    iget v11, v0, Lua/s3;->a:I

    .line 21
    .line 22
    packed-switch v11, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    iget-object v2, v7, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->O:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 32
    .line 33
    iget v3, v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 34
    .line 35
    if-eq v3, v10, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 42
    .line 43
    iget v3, v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 44
    .line 45
    invoke-virtual {v7, v3}, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->x(I)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 57
    .line 58
    new-instance v2, Lha/d8;

    .line 59
    .line 60
    new-instance v3, Lua/t3;

    .line 61
    .line 62
    invoke-direct {v3, v7}, Lua/t3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v2, v7, v7, v1, v3}, Lha/d8;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;Lcom/yunpan/appmanage/bean/KeyCodeBean;Lua/t3;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    new-instance v1, Lha/z7;

    .line 73
    .line 74
    invoke-direct {v1, v7, v7}, Lha/z7;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Lua/s3;

    .line 78
    .line 79
    const/4 v3, 0x7

    .line 80
    invoke-direct {v2, v7, v3}, Lua/s3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Lha/z7;->a(Lea/c;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v7, v0, Lua/s3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;

    .line 88
    .line 89
    if-nez v1, :cond_4

    .line 90
    .line 91
    iget-object v11, v7, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 92
    .line 93
    invoke-virtual {v11, v6}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    :goto_1
    iget-object v11, v6, Lz7/o;->a:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    iget-object v12, v7, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->L:Ljava/util/ArrayList;

    .line 104
    .line 105
    const-string v13, "door"

    .line 106
    .line 107
    if-ge v9, v11, :cond_3

    .line 108
    .line 109
    invoke-static {v6, v9, v5}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    sget-object v14, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_DOOR:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 114
    .line 115
    invoke-virtual {v14}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 116
    .line 117
    .line 118
    move-result v14

    .line 119
    if-ne v11, v14, :cond_2

    .line 120
    .line 121
    invoke-virtual {v6, v9}, Lz7/o;->l(I)Lz7/p;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    invoke-virtual {v11}, Lz7/p;->g()Lz7/s;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    iget-object v11, v11, Lz7/s;->a:Lb8/n;

    .line 130
    .line 131
    invoke-virtual {v11, v13}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    if-eqz v11, :cond_2

    .line 136
    .line 137
    invoke-static {v6, v9, v13}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    check-cast v12, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 146
    .line 147
    iget v12, v12, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 148
    .line 149
    if-ne v11, v12, :cond_2

    .line 150
    .line 151
    const-string v1, "\u5df2\u5b58\u5728\u6b64\u4e8b\u4ef6\u6620\u5c04"

    .line 152
    .line 153
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_2
    add-int/2addr v9, v8

    .line 158
    goto :goto_1

    .line 159
    :cond_3
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    check-cast v6, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 164
    .line 165
    iget-object v6, v6, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 166
    .line 167
    new-instance v8, Lz7/s;

    .line 168
    .line 169
    invoke-direct {v8}, Lz7/s;-><init>()V

    .line 170
    .line 171
    .line 172
    sget-object v9, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_DOOR:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 173
    .line 174
    invoke-virtual {v9}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-virtual {v8, v5, v9}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8, v4, v6}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8, v3, v6}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 196
    .line 197
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 198
    .line 199
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v8, v13, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 204
    .line 205
    .line 206
    new-instance v1, Lz7/o;

    .line 207
    .line 208
    invoke-direct {v1}, Lz7/o;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v8, v2, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7, v8, v10}, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->y(Lz7/s;I)V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_4
    sget v2, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->P:I

    .line 219
    .line 220
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    new-instance v2, Lha/ha;

    .line 224
    .line 225
    iget-object v12, v7, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->M:Ljava/util/ArrayList;

    .line 226
    .line 227
    new-instance v13, Lua/r3;

    .line 228
    .line 229
    invoke-direct {v13, v7, v1, v8}, Lua/r3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;II)V

    .line 230
    .line 231
    .line 232
    const/4 v11, 0x0

    .line 233
    move-object v8, v2

    .line 234
    move-object v9, v7

    .line 235
    move-object v10, v7

    .line 236
    invoke-direct/range {v8 .. v13}, Lha/ha;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 240
    .line 241
    .line 242
    :goto_2
    return-void

    .line 243
    :pswitch_1
    sget v2, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->P:I

    .line 244
    .line 245
    iget-object v5, v0, Lua/s3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;

    .line 246
    .line 247
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    new-instance v2, Lha/ha;

    .line 251
    .line 252
    iget-object v7, v5, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->M:Ljava/util/ArrayList;

    .line 253
    .line 254
    new-instance v8, Lua/r3;

    .line 255
    .line 256
    invoke-direct {v8, v5, v1, v9}, Lua/r3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;II)V

    .line 257
    .line 258
    .line 259
    const/4 v6, 0x0

    .line 260
    move-object v3, v2

    .line 261
    move-object v4, v5

    .line 262
    invoke-direct/range {v3 .. v8}, Lha/ha;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :pswitch_2
    iget-object v11, v7, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 270
    .line 271
    invoke-virtual {v11, v6}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    :goto_3
    iget-object v11, v6, Lz7/o;->a:Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 278
    .line 279
    .line 280
    move-result v11

    .line 281
    iget-object v12, v7, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->N:Ljava/util/ArrayList;

    .line 282
    .line 283
    const-string v13, "gear"

    .line 284
    .line 285
    if-ge v9, v11, :cond_6

    .line 286
    .line 287
    invoke-static {v6, v9, v5}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 288
    .line 289
    .line 290
    move-result v11

    .line 291
    sget-object v14, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_GEAR:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 292
    .line 293
    invoke-virtual {v14}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 294
    .line 295
    .line 296
    move-result v14

    .line 297
    if-ne v11, v14, :cond_5

    .line 298
    .line 299
    invoke-virtual {v6, v9}, Lz7/o;->l(I)Lz7/p;

    .line 300
    .line 301
    .line 302
    move-result-object v11

    .line 303
    invoke-virtual {v11}, Lz7/p;->g()Lz7/s;

    .line 304
    .line 305
    .line 306
    move-result-object v11

    .line 307
    iget-object v11, v11, Lz7/s;->a:Lb8/n;

    .line 308
    .line 309
    invoke-virtual {v11, v13}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v11

    .line 313
    if-eqz v11, :cond_5

    .line 314
    .line 315
    invoke-static {v6, v9, v13}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 316
    .line 317
    .line 318
    move-result v11

    .line 319
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v12

    .line 323
    check-cast v12, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 324
    .line 325
    iget v12, v12, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 326
    .line 327
    if-ne v11, v12, :cond_5

    .line 328
    .line 329
    const-string v1, "\u5df2\u5b58\u5728\u6b64\u6863\u4f4d\u6620\u5c04"

    .line 330
    .line 331
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 332
    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_5
    add-int/2addr v9, v8

    .line 336
    goto :goto_3

    .line 337
    :cond_6
    new-instance v6, Lz7/s;

    .line 338
    .line 339
    invoke-direct {v6}, Lz7/s;-><init>()V

    .line 340
    .line 341
    .line 342
    sget-object v8, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_GEAR:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 343
    .line 344
    invoke-virtual {v8}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 349
    .line 350
    .line 351
    move-result-object v8

    .line 352
    invoke-virtual {v6, v5, v8}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    check-cast v5, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 360
    .line 361
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {v6, v4, v5}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    check-cast v4, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 371
    .line 372
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 373
    .line 374
    invoke-virtual {v6, v3, v4}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 382
    .line 383
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 384
    .line 385
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-virtual {v6, v13, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 390
    .line 391
    .line 392
    new-instance v1, Lz7/o;

    .line 393
    .line 394
    invoke-direct {v1}, Lz7/o;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v6, v2, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v7, v6, v10}, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->y(Lz7/s;I)V

    .line 401
    .line 402
    .line 403
    :goto_4
    return-void

    .line 404
    :pswitch_3
    iget-object v13, v0, Lua/s3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;

    .line 405
    .line 406
    iget-object v2, v13, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->I:Ljava/util/ArrayList;

    .line 407
    .line 408
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 413
    .line 414
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 415
    .line 416
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_KEY:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 417
    .line 418
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    if-ne v1, v2, :cond_8

    .line 423
    .line 424
    iget-object v15, v13, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->O:Ljava/util/ArrayList;

    .line 425
    .line 426
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    if-eqz v1, :cond_7

    .line 431
    .line 432
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 433
    .line 434
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_L_UP:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 435
    .line 436
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 451
    .line 452
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_L_DOWN:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 453
    .line 454
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 469
    .line 470
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_L_LEFT:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 471
    .line 472
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 487
    .line 488
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_L_RIGHT:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 489
    .line 490
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 505
    .line 506
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_R_MODE:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 507
    .line 508
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 523
    .line 524
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_R_VOICE:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 525
    .line 526
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 541
    .line 542
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_R_PREVIOUS:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 543
    .line 544
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 545
    .line 546
    .line 547
    move-result v3

    .line 548
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 559
    .line 560
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_R_NEXT:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 561
    .line 562
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 563
    .line 564
    .line 565
    move-result v3

    .line 566
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 577
    .line 578
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_R_UP:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 579
    .line 580
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 581
    .line 582
    .line 583
    move-result v3

    .line 584
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 595
    .line 596
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_R_DOWN:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 597
    .line 598
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 613
    .line 614
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_R_MUTE:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 615
    .line 616
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 617
    .line 618
    .line 619
    move-result v3

    .line 620
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 631
    .line 632
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_R_STAR:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 633
    .line 634
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 635
    .line 636
    .line 637
    move-result v3

    .line 638
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 649
    .line 650
    const-string v2, "\u624b\u52a8\u6293\u53d6\u952e\u7801"

    .line 651
    .line 652
    invoke-direct {v1, v10, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    :cond_7
    new-instance v1, Lha/ha;

    .line 659
    .line 660
    new-instance v2, Lua/s3;

    .line 661
    .line 662
    const/4 v3, 0x6

    .line 663
    invoke-direct {v2, v13, v3}, Lua/s3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;I)V

    .line 664
    .line 665
    .line 666
    const/4 v14, 0x0

    .line 667
    move-object v11, v1

    .line 668
    move-object v12, v13

    .line 669
    move-object/from16 v16, v2

    .line 670
    .line 671
    invoke-direct/range {v11 .. v16}, Lha/ha;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 675
    .line 676
    .line 677
    goto/16 :goto_5

    .line 678
    .line 679
    :cond_8
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_GEAR:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 680
    .line 681
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 682
    .line 683
    .line 684
    move-result v2

    .line 685
    if-ne v1, v2, :cond_a

    .line 686
    .line 687
    iget-object v15, v13, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->N:Ljava/util/ArrayList;

    .line 688
    .line 689
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 690
    .line 691
    .line 692
    move-result v1

    .line 693
    if-eqz v1, :cond_9

    .line 694
    .line 695
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 696
    .line 697
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->GEAR_D:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 698
    .line 699
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 700
    .line 701
    .line 702
    move-result v3

    .line 703
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v2

    .line 707
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 714
    .line 715
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->GEAR_N:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 716
    .line 717
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 718
    .line 719
    .line 720
    move-result v3

    .line 721
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v2

    .line 725
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 732
    .line 733
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->GEAR_P:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 734
    .line 735
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 736
    .line 737
    .line 738
    move-result v3

    .line 739
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 750
    .line 751
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->GEAR_R:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 752
    .line 753
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 754
    .line 755
    .line 756
    move-result v3

    .line 757
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v2

    .line 761
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    :cond_9
    new-instance v1, Lha/ha;

    .line 768
    .line 769
    new-instance v2, Lua/s3;

    .line 770
    .line 771
    const/4 v3, 0x3

    .line 772
    invoke-direct {v2, v13, v3}, Lua/s3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;I)V

    .line 773
    .line 774
    .line 775
    const/4 v14, 0x0

    .line 776
    move-object v11, v1

    .line 777
    move-object v12, v13

    .line 778
    move-object/from16 v16, v2

    .line 779
    .line 780
    invoke-direct/range {v11 .. v16}, Lha/ha;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 784
    .line 785
    .line 786
    goto/16 :goto_5

    .line 787
    .line 788
    :cond_a
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_DOOR:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 789
    .line 790
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 791
    .line 792
    .line 793
    move-result v2

    .line 794
    iget-object v3, v13, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->M:Ljava/util/ArrayList;

    .line 795
    .line 796
    if-ne v1, v2, :cond_c

    .line 797
    .line 798
    iget-object v15, v13, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->L:Ljava/util/ArrayList;

    .line 799
    .line 800
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 801
    .line 802
    .line 803
    move-result v1

    .line 804
    if-eqz v1, :cond_b

    .line 805
    .line 806
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 807
    .line 808
    const-string v2, "\u7b2c\u4e00\u4e2a\u5f00\u95e8\u65f6"

    .line 809
    .line 810
    invoke-direct {v1, v10, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 817
    .line 818
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->DOOR_FL:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 819
    .line 820
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 821
    .line 822
    .line 823
    move-result v4

    .line 824
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v2

    .line 828
    invoke-direct {v1, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    .line 833
    .line 834
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 835
    .line 836
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->DOOR_FR:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 837
    .line 838
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 839
    .line 840
    .line 841
    move-result v4

    .line 842
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v2

    .line 846
    invoke-direct {v1, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 847
    .line 848
    .line 849
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    .line 851
    .line 852
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 853
    .line 854
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->DOOR_RL:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 855
    .line 856
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 857
    .line 858
    .line 859
    move-result v4

    .line 860
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v2

    .line 864
    invoke-direct {v1, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 865
    .line 866
    .line 867
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    .line 869
    .line 870
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 871
    .line 872
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->DOOR_RR:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 873
    .line 874
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 875
    .line 876
    .line 877
    move-result v4

    .line 878
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v2

    .line 882
    invoke-direct {v1, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 889
    .line 890
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->DOOR_HATCH:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 891
    .line 892
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 893
    .line 894
    .line 895
    move-result v4

    .line 896
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v2

    .line 900
    invoke-direct {v1, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    .line 905
    .line 906
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 907
    .line 908
    .line 909
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 910
    .line 911
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->DOOR_OPEN:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 912
    .line 913
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 914
    .line 915
    .line 916
    move-result v4

    .line 917
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v2

    .line 921
    invoke-direct {v1, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 922
    .line 923
    .line 924
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    .line 926
    .line 927
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 928
    .line 929
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->DOOR_CLOSE:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 930
    .line 931
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 932
    .line 933
    .line 934
    move-result v4

    .line 935
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v2

    .line 939
    invoke-direct {v1, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 940
    .line 941
    .line 942
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    .line 944
    .line 945
    new-instance v1, Lha/ha;

    .line 946
    .line 947
    new-instance v2, Lua/s3;

    .line 948
    .line 949
    const/4 v3, 0x5

    .line 950
    invoke-direct {v2, v13, v3}, Lua/s3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;I)V

    .line 951
    .line 952
    .line 953
    const/4 v14, 0x0

    .line 954
    move-object v11, v1

    .line 955
    move-object v12, v13

    .line 956
    move-object/from16 v16, v2

    .line 957
    .line 958
    invoke-direct/range {v11 .. v16}, Lha/ha;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V

    .line 959
    .line 960
    .line 961
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 962
    .line 963
    .line 964
    goto/16 :goto_5

    .line 965
    .line 966
    :cond_c
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_LAMP:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 967
    .line 968
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 969
    .line 970
    .line 971
    move-result v2

    .line 972
    if-ne v1, v2, :cond_e

    .line 973
    .line 974
    iget-object v15, v13, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->K:Ljava/util/ArrayList;

    .line 975
    .line 976
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 977
    .line 978
    .line 979
    move-result v1

    .line 980
    if-eqz v1, :cond_d

    .line 981
    .line 982
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 983
    .line 984
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->LAMP_TYPE_DA:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 985
    .line 986
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 987
    .line 988
    .line 989
    move-result v4

    .line 990
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v2

    .line 994
    invoke-direct {v1, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 995
    .line 996
    .line 997
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    .line 999
    .line 1000
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 1001
    .line 1002
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->LAMP_TYPE_TURN_LEFT:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 1003
    .line 1004
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 1005
    .line 1006
    .line 1007
    move-result v4

    .line 1008
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v2

    .line 1012
    invoke-direct {v1, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    .line 1017
    .line 1018
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 1019
    .line 1020
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->LAMP_TYPE_TURN_RIGHT:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 1021
    .line 1022
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 1023
    .line 1024
    .line 1025
    move-result v4

    .line 1026
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v2

    .line 1030
    invoke-direct {v1, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    .line 1035
    .line 1036
    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1037
    .line 1038
    .line 1039
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 1040
    .line 1041
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->LAMP_ON:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 1042
    .line 1043
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 1044
    .line 1045
    .line 1046
    move-result v4

    .line 1047
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v2

    .line 1051
    invoke-direct {v1, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    .line 1056
    .line 1057
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 1058
    .line 1059
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->LAMP_OFF:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 1060
    .line 1061
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 1062
    .line 1063
    .line 1064
    move-result v4

    .line 1065
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v2

    .line 1069
    invoke-direct {v1, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    .line 1074
    .line 1075
    new-instance v1, Lha/ha;

    .line 1076
    .line 1077
    new-instance v2, Lua/s3;

    .line 1078
    .line 1079
    const/4 v3, 0x4

    .line 1080
    invoke-direct {v2, v13, v3}, Lua/s3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;I)V

    .line 1081
    .line 1082
    .line 1083
    const/4 v14, 0x0

    .line 1084
    move-object v11, v1

    .line 1085
    move-object v12, v13

    .line 1086
    move-object/from16 v16, v2

    .line 1087
    .line 1088
    invoke-direct/range {v11 .. v16}, Lha/ha;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 1092
    .line 1093
    .line 1094
    :cond_e
    :goto_5
    return-void

    .line 1095
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(I)V
    .locals 3

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->P:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/s3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->x(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 13
    .line 14
    const-string v2, ""

    .line 15
    .line 16
    invoke-direct {v1, p1, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lha/d8;

    .line 20
    .line 21
    new-instance v2, Lua/t3;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Lua/t3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0, v0, v1, v2}, Lha/d8;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;Lcom/yunpan/appmanage/bean/KeyCodeBean;Lua/t3;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 8

    .line 1
    const/4 p1, 0x2

    .line 2
    iget p2, p0, Lua/s3;->a:I

    .line 3
    .line 4
    packed-switch p2, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lua/s3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;

    .line 8
    .line 9
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->F:Lx9/s2;

    .line 10
    .line 11
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lz7/s;

    .line 16
    .line 17
    const-string v0, "type"

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sget-object v1, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_KEY:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    new-instance v0, Lha/d8;

    .line 36
    .line 37
    new-instance v1, Lua/u3;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v1, p1, p3, v2}, Lua/u3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;II)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p1, p1, p2, v1}, Lha/d8;-><init>(Landroid/app/Activity;Landroid/content/Context;Lz7/s;Lua/u3;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->y(Lz7/s;I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void

    .line 54
    :pswitch_0
    sget p2, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->P:I

    .line 55
    .line 56
    iget-object p2, p0, Lua/s3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;

    .line 57
    .line 58
    if-nez p3, :cond_1

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :cond_1
    const/4 v0, 0x1

    .line 66
    if-ne p3, v0, :cond_3

    .line 67
    .line 68
    iget-object v4, p2, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->I:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    if-eqz p3, :cond_2

    .line 75
    .line 76
    new-instance p3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 77
    .line 78
    sget-object v0, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_KEY:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {v0}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-direct {p3, v1, v0}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    new-instance p3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 95
    .line 96
    sget-object v0, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_GEAR:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-virtual {v0}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-direct {p3, v1, v0}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    new-instance p3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 113
    .line 114
    sget-object v0, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_DOOR:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-virtual {v0}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-direct {p3, v1, v0}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    new-instance p3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 131
    .line 132
    sget-object v0, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_LAMP:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    invoke-virtual {v0}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-direct {p3, v1, v0}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    :cond_2
    new-instance p3, Lha/ha;

    .line 149
    .line 150
    new-instance v5, Lua/s3;

    .line 151
    .line 152
    invoke-direct {v5, p2, p1}, Lua/s3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;I)V

    .line 153
    .line 154
    .line 155
    const/4 v3, 0x0

    .line 156
    move-object v0, p3

    .line 157
    move-object v1, p2

    .line 158
    move-object v2, p2

    .line 159
    invoke-direct/range {v0 .. v5}, Lha/ha;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3}, Lha/a4;->show()V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_3
    if-ne p3, p1, :cond_5

    .line 167
    .line 168
    iget-object p1, p2, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->F:Lx9/s2;

    .line 169
    .line 170
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-nez p1, :cond_4

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_4
    new-instance p1, Lha/z6;

    .line 178
    .line 179
    iget-object v2, p2, Lda/g;->A:Lda/g;

    .line 180
    .line 181
    new-instance v7, Lua/t3;

    .line 182
    .line 183
    invoke-direct {v7, p2}, Lua/t3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;)V

    .line 184
    .line 185
    .line 186
    const-string v5, "\u786e\u5b9a"

    .line 187
    .line 188
    const-string v6, "\u53d6\u6d88"

    .line 189
    .line 190
    const-string v3, "\u786e\u5b9a\u8981\u6e05\u7a7a\u6240\u6709\u6620\u5c04\u5417\uff1f"

    .line 191
    .line 192
    const-string v4, ""

    .line 193
    .line 194
    move-object v0, p1

    .line 195
    move-object v1, p2

    .line 196
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    const/4 p1, 0x3

    .line 207
    if-ne p3, p1, :cond_6

    .line 208
    .line 209
    new-instance p1, Lha/z6;

    .line 210
    .line 211
    iget-object p3, p2, Lda/g;->A:Lda/g;

    .line 212
    .line 213
    const-string v0, "\u76f4\u63a5\u4e0e\u7cfb\u7edf\u670d\u52a1\u5bf9\u63a5\uff0c\u6bd4\u65e5\u5fd7\u6620\u5c04\u597d\u4e00\u767e\u500d"

    .line 214
    .line 215
    const-string v1, "ps\uff1a\u65e0\u6cd5\u62e6\u622a\u8f66\u673a\u6309\u952e\u539f\u64cd\u4f5c\u7684\uff0c\u5982\u679c\u9700\u8981\u62e6\u622a\u8f66\u673a\u81ea\u5e26\u7684\u64cd\u4f5c \u4f60\u53ea\u80fd\u53bb\u4fee\u6539\u7cfb\u7edf\u7684app\uff0c\u6240\u4ee5\u4e0d\u8981\u6765\u95ee\u6211 \u8be5\u600e\u4e48\u62e6\u622a\u539f\u64cd\u4f5c\uff01"

    .line 216
    .line 217
    invoke-direct {p1, p2, p3, v0, v1}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 221
    .line 222
    .line 223
    :cond_6
    :goto_1
    return-void

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
