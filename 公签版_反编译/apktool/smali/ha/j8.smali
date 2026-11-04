.class public final synthetic Lha/j8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ea;
.implements Lha/he;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Lea/e;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Lea/e;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    iput v0, p0, Lha/j8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lha/j8;->e:I

    iput p2, p0, Lha/j8;->f:I

    iput-object p3, p0, Lha/j8;->c:Ljava/lang/Object;

    iput-object p4, p0, Lha/j8;->b:Ljava/util/ArrayList;

    iput-object p5, p0, Lha/j8;->d:Ljava/lang/Object;

    iput-object p6, p0, Lha/j8;->g:Lea/e;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/content/Context;IILjava/util/ArrayList;Lea/e;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lha/j8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/j8;->c:Ljava/lang/Object;

    iput-object p2, p0, Lha/j8;->d:Ljava/lang/Object;

    iput p3, p0, Lha/j8;->e:I

    iput p4, p0, Lha/j8;->f:I

    iput-object p5, p0, Lha/j8;->b:Ljava/util/ArrayList;

    iput-object p6, p0, Lha/j8;->g:Lea/e;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/ArrayList;IILea/e;)V
    .locals 1

    .line 3
    const/4 v0, 0x2

    iput v0, p0, Lha/j8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/j8;->c:Ljava/lang/Object;

    iput-object p2, p0, Lha/j8;->d:Ljava/lang/Object;

    iput-object p3, p0, Lha/j8;->b:Ljava/util/ArrayList;

    iput p4, p0, Lha/j8;->e:I

    iput p5, p0, Lha/j8;->f:I

    iput-object p6, p0, Lha/j8;->g:Lea/e;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;Landroid/content/Context;IILea/e;)V
    .locals 1

    .line 4
    const/4 v0, 0x1

    iput v0, p0, Lha/j8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/j8;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lha/j8;->c:Ljava/lang/Object;

    iput-object p3, p0, Lha/j8;->d:Ljava/lang/Object;

    iput p4, p0, Lha/j8;->e:I

    iput p5, p0, Lha/j8;->f:I

    iput-object p6, p0, Lha/j8;->g:Lea/e;

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v5, p1

    .line 4
    .line 5
    iget v1, v0, Lha/j8;->a:I

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget v1, v0, Lha/j8;->e:I

    .line 11
    .line 12
    iget v2, v0, Lha/j8;->f:I

    .line 13
    .line 14
    iget-object v3, v0, Lha/j8;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Ljava/lang/String;

    .line 17
    .line 18
    iget-object v4, v0, Lha/j8;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v6, v0, Lha/j8;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v6, Ljava/util/List;

    .line 23
    .line 24
    iget-object v7, v0, Lha/j8;->g:Lea/e;

    .line 25
    .line 26
    :try_start_0
    new-instance v8, Lz7/s;

    .line 27
    .line 28
    invoke-direct {v8}, Lz7/s;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v9, "keyType"

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v8, v9, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 38
    .line 39
    .line 40
    const-string v1, "gnType"

    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v8, v1, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 47
    .line 48
    .line 49
    const-string v1, "name"

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, "\uff1a"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v8, v1, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v1, "immName"

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v8, v1, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v1, "immID"

    .line 92
    .line 93
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v8, v1, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v7, v8}, Lea/e;->k(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    :catch_0
    return-void

    .line 110
    :pswitch_0
    new-instance v9, Lha/ie;

    .line 111
    .line 112
    new-instance v10, Lha/q8;

    .line 113
    .line 114
    iget-object v11, v0, Lha/j8;->b:Ljava/util/ArrayList;

    .line 115
    .line 116
    iget-object v8, v0, Lha/j8;->g:Lea/e;

    .line 117
    .line 118
    iget v3, v0, Lha/j8;->e:I

    .line 119
    .line 120
    iget v4, v0, Lha/j8;->f:I

    .line 121
    .line 122
    iget-object v1, v0, Lha/j8;->c:Ljava/lang/Object;

    .line 123
    .line 124
    move-object v12, v1

    .line 125
    check-cast v12, Landroid/app/Activity;

    .line 126
    .line 127
    iget-object v1, v0, Lha/j8;->d:Ljava/lang/Object;

    .line 128
    .line 129
    move-object v13, v1

    .line 130
    check-cast v13, Landroid/content/Context;

    .line 131
    .line 132
    move-object v1, v10

    .line 133
    move-object v2, v11

    .line 134
    move/from16 v5, p1

    .line 135
    .line 136
    move-object v6, v12

    .line 137
    move-object v7, v13

    .line 138
    invoke-direct/range {v1 .. v8}, Lha/q8;-><init>(Ljava/util/ArrayList;IIILandroid/app/Activity;Landroid/content/Context;Lea/e;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {v9, v12, v13, v11, v10}, Lha/ie;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/he;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v9}, Lha/a4;->show()V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :pswitch_1
    iget-object v1, v0, Lha/j8;->b:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 155
    .line 156
    iget-object v2, v0, Lha/j8;->c:Ljava/lang/Object;

    .line 157
    .line 158
    move-object v4, v2

    .line 159
    check-cast v4, Landroid/app/Activity;

    .line 160
    .line 161
    const-string v2, "audio"

    .line 162
    .line 163
    invoke-virtual {v4, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Landroid/media/AudioManager;

    .line 168
    .line 169
    new-instance v11, Lha/h1;

    .line 170
    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v5, "\u8bbe\u7f6e"

    .line 174
    .line 175
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object v5, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    iget v3, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 188
    .line 189
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    iget v3, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    new-instance v9, Lha/p8;

    .line 200
    .line 201
    iget-object v2, v0, Lha/j8;->g:Lea/e;

    .line 202
    .line 203
    iget v3, v0, Lha/j8;->e:I

    .line 204
    .line 205
    iget v5, v0, Lha/j8;->f:I

    .line 206
    .line 207
    invoke-direct {v9, v3, v5, v1, v2}, Lha/p8;-><init>(IILcom/yunpan/appmanage/bean/KeyMapSelectBean;Lea/e;)V

    .line 208
    .line 209
    .line 210
    iget-object v1, v0, Lha/j8;->d:Ljava/lang/Object;

    .line 211
    .line 212
    move-object v5, v1

    .line 213
    check-cast v5, Landroid/content/Context;

    .line 214
    .line 215
    const/4 v10, 0x0

    .line 216
    move-object v3, v11

    .line 217
    invoke-direct/range {v3 .. v10}, Lha/h1;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;IILea/c;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v11}, Lha/a4;->show()V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :pswitch_2
    new-instance v8, Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v1, "\u5173\u95ed"

    .line 230
    .line 231
    const-string v2, "\u5f00\u542f"

    .line 232
    .line 233
    const/4 v3, 0x2

    .line 234
    const-string v4, "\u5207\u6362"

    .line 235
    .line 236
    const/4 v6, 0x1

    .line 237
    const/4 v7, -0x1

    .line 238
    if-nez v5, :cond_0

    .line 239
    .line 240
    new-instance v9, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 241
    .line 242
    invoke-direct {v9, v7, v4}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    new-instance v4, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 249
    .line 250
    invoke-direct {v4, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    new-instance v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 257
    .line 258
    invoke-direct {v2, v6, v1}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_0
    if-ne v5, v6, :cond_1

    .line 267
    .line 268
    new-instance v9, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 269
    .line 270
    invoke-direct {v9, v7, v4}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    new-instance v4, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 277
    .line 278
    invoke-direct {v4, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    new-instance v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 285
    .line 286
    invoke-direct {v2, v6, v1}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :cond_1
    if-ne v5, v3, :cond_2

    .line 295
    .line 296
    new-instance v9, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 297
    .line 298
    invoke-direct {v9, v7, v4}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    new-instance v4, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 305
    .line 306
    invoke-direct {v4, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    new-instance v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 313
    .line 314
    invoke-direct {v2, v6, v1}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :cond_2
    const-string v9, "\u51cf\u5c11"

    .line 323
    .line 324
    const-string v10, "\u52a0\u5927"

    .line 325
    .line 326
    const/4 v11, 0x3

    .line 327
    if-ne v5, v11, :cond_3

    .line 328
    .line 329
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 330
    .line 331
    invoke-direct {v1, v6, v10}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 338
    .line 339
    invoke-direct {v1, v7, v9}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    goto/16 :goto_0

    .line 346
    .line 347
    :cond_3
    const/4 v12, 0x4

    .line 348
    if-ne v5, v12, :cond_4

    .line 349
    .line 350
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 351
    .line 352
    invoke-direct {v1, v6, v10}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 359
    .line 360
    invoke-direct {v1, v7, v9}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    goto/16 :goto_0

    .line 367
    .line 368
    :cond_4
    const/4 v9, 0x5

    .line 369
    if-ne v5, v9, :cond_5

    .line 370
    .line 371
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 372
    .line 373
    invoke-direct {v1, v7, v4}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 380
    .line 381
    const-string v2, "\u5185\u5faa\u73af"

    .line 382
    .line 383
    invoke-direct {v1, v6, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 390
    .line 391
    const-string v2, "\u5916\u5faa\u73af"

    .line 392
    .line 393
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    goto/16 :goto_0

    .line 400
    .line 401
    :cond_5
    const/4 v9, 0x6

    .line 402
    if-ne v5, v9, :cond_6

    .line 403
    .line 404
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 405
    .line 406
    invoke-direct {v1, v7, v4}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 413
    .line 414
    const/16 v2, 0x1a

    .line 415
    .line 416
    const-string v3, "\u5439\u9762"

    .line 417
    .line 418
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 425
    .line 426
    const/16 v2, 0x1c

    .line 427
    .line 428
    const-string v3, "\u5439\u811a"

    .line 429
    .line 430
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 437
    .line 438
    const/16 v2, 0x1b

    .line 439
    .line 440
    const-string v3, "\u5439\u9762\u5439\u811a"

    .line 441
    .line 442
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 449
    .line 450
    const/16 v2, 0x1d

    .line 451
    .line 452
    const-string v3, "\u5439\u811a\u9664\u971c"

    .line 453
    .line 454
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 461
    .line 462
    const-string v2, "\u9664\u971c"

    .line 463
    .line 464
    invoke-direct {v1, v11, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    goto :goto_0

    .line 471
    :cond_6
    const/4 v9, 0x7

    .line 472
    if-ne v5, v9, :cond_7

    .line 473
    .line 474
    new-instance v9, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 475
    .line 476
    invoke-direct {v9, v7, v4}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    new-instance v4, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 483
    .line 484
    invoke-direct {v4, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    new-instance v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 491
    .line 492
    invoke-direct {v2, v6, v1}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    goto :goto_0

    .line 499
    :cond_7
    const/16 v9, 0x8

    .line 500
    .line 501
    if-eq v5, v9, :cond_8

    .line 502
    .line 503
    const/16 v9, 0x9

    .line 504
    .line 505
    if-eq v5, v9, :cond_8

    .line 506
    .line 507
    const/16 v9, 0xa

    .line 508
    .line 509
    if-eq v5, v9, :cond_8

    .line 510
    .line 511
    const/16 v9, 0xb

    .line 512
    .line 513
    if-ne v5, v9, :cond_9

    .line 514
    .line 515
    :cond_8
    new-instance v9, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 516
    .line 517
    invoke-direct {v9, v7, v4}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    new-instance v4, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 524
    .line 525
    invoke-direct {v4, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    new-instance v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 532
    .line 533
    invoke-direct {v2, v6, v1}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    :cond_9
    :goto_0
    new-instance v9, Lha/ha;

    .line 540
    .line 541
    new-instance v17, Lha/s8;

    .line 542
    .line 543
    iget-object v4, v0, Lha/j8;->b:Ljava/util/ArrayList;

    .line 544
    .line 545
    iget-object v7, v0, Lha/j8;->g:Lea/e;

    .line 546
    .line 547
    iget v2, v0, Lha/j8;->e:I

    .line 548
    .line 549
    iget v3, v0, Lha/j8;->f:I

    .line 550
    .line 551
    move-object/from16 v1, v17

    .line 552
    .line 553
    move/from16 v5, p1

    .line 554
    .line 555
    move-object v6, v8

    .line 556
    invoke-direct/range {v1 .. v7}, Lha/s8;-><init>(IILjava/util/ArrayList;ILjava/util/ArrayList;Lea/e;)V

    .line 557
    .line 558
    .line 559
    iget-object v1, v0, Lha/j8;->c:Ljava/lang/Object;

    .line 560
    .line 561
    move-object v13, v1

    .line 562
    check-cast v13, Landroid/app/Activity;

    .line 563
    .line 564
    iget-object v1, v0, Lha/j8;->d:Ljava/lang/Object;

    .line 565
    .line 566
    move-object v14, v1

    .line 567
    check-cast v14, Landroid/content/Context;

    .line 568
    .line 569
    const/4 v15, 0x0

    .line 570
    move-object v12, v9

    .line 571
    move-object/from16 v16, v8

    .line 572
    .line 573
    invoke-direct/range {v12 .. v17}, Lha/ha;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v9}, Lha/a4;->show()V

    .line 577
    .line 578
    .line 579
    return-void

    .line 580
    nop

    .line 581
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
