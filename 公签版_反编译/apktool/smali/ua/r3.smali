.class public final synthetic Lua/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ga;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;II)V
    .locals 0

    .line 1
    iput p3, p0, Lua/r3;->a:I

    iput-object p1, p0, Lua/r3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;

    iput p2, p0, Lua/r3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 10

    .line 1
    iget v0, p0, Lua/r3;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/r3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 9
    .line 10
    const-string v2, "maps"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    iget-object v3, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object v4, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->M:Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-object v5, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->L:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget v6, p0, Lua/r3;->c:I

    .line 28
    .line 29
    const-string v7, "switch"

    .line 30
    .line 31
    const-string v8, "type"

    .line 32
    .line 33
    const-string v9, "door"

    .line 34
    .line 35
    if-ge v2, v3, :cond_1

    .line 36
    .line 37
    invoke-static {v1, v2, v8}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sget-object v8, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_DOOR:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 42
    .line 43
    invoke-virtual {v8}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-ne v3, v8, :cond_0

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lz7/o;->l(I)Lz7/p;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v3, v3, Lz7/s;->a:Lb8/n;

    .line 58
    .line 59
    invoke-virtual {v3, v9}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    invoke-static {v1, v2, v9}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 74
    .line 75
    iget v5, v5, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 76
    .line 77
    if-ne v3, v5, :cond_0

    .line 78
    .line 79
    invoke-static {v1, v2, v7}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 88
    .line 89
    iget v4, v4, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 90
    .line 91
    if-ne v3, v4, :cond_0

    .line 92
    .line 93
    const-string p1, "\u5df2\u5b58\u5728\u6b64\u8f66\u95e8\u6620\u5c04"

    .line 94
    .line 95
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 112
    .line 113
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v2, " - "

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 128
    .line 129
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    new-instance v2, Lz7/s;

    .line 139
    .line 140
    invoke-direct {v2}, Lz7/s;-><init>()V

    .line 141
    .line 142
    .line 143
    sget-object v3, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_DOOR:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v2, v8, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 154
    .line 155
    .line 156
    const-string v3, "name"

    .line 157
    .line 158
    invoke-virtual {v2, v3, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v3, "eventName"

    .line 162
    .line 163
    invoke-virtual {v2, v3, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 171
    .line 172
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 173
    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v2, v9, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 186
    .line 187
    iget p1, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 188
    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {v2, v7, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 194
    .line 195
    .line 196
    new-instance p1, Lz7/o;

    .line 197
    .line 198
    invoke-direct {p1}, Lz7/o;-><init>()V

    .line 199
    .line 200
    .line 201
    const-string v1, "click"

    .line 202
    .line 203
    invoke-virtual {v2, v1, p1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 204
    .line 205
    .line 206
    const/4 p1, -0x1

    .line 207
    invoke-virtual {v0, v2, p1}, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->y(Lz7/s;I)V

    .line 208
    .line 209
    .line 210
    :goto_1
    return-void

    .line 211
    :pswitch_0
    iget-object v0, p0, Lua/r3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;

    .line 212
    .line 213
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 214
    .line 215
    const-string v2, "maps"

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    const/4 v2, 0x0

    .line 222
    :goto_2
    iget-object v3, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    iget-object v4, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->M:Ljava/util/ArrayList;

    .line 229
    .line 230
    iget-object v5, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->K:Ljava/util/ArrayList;

    .line 231
    .line 232
    iget v6, p0, Lua/r3;->c:I

    .line 233
    .line 234
    const-string v7, "switch"

    .line 235
    .line 236
    const-string v8, "type"

    .line 237
    .line 238
    const-string v9, "lamp"

    .line 239
    .line 240
    if-ge v2, v3, :cond_3

    .line 241
    .line 242
    invoke-static {v1, v2, v8}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    sget-object v8, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_LAMP:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 247
    .line 248
    invoke-virtual {v8}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    if-ne v3, v8, :cond_2

    .line 253
    .line 254
    invoke-virtual {v1, v2}, Lz7/o;->l(I)Lz7/p;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    iget-object v3, v3, Lz7/s;->a:Lb8/n;

    .line 263
    .line 264
    invoke-virtual {v3, v9}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    if-eqz v3, :cond_2

    .line 269
    .line 270
    invoke-static {v1, v2, v9}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    check-cast v5, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 279
    .line 280
    iget v5, v5, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 281
    .line 282
    if-ne v3, v5, :cond_2

    .line 283
    .line 284
    invoke-static {v1, v2, v7}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    check-cast v4, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 293
    .line 294
    iget v4, v4, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 295
    .line 296
    if-ne v3, v4, :cond_2

    .line 297
    .line 298
    const-string p1, "\u5df2\u5b58\u5728\u6b64\u8f66\u706f\u6620\u5c04"

    .line 299
    .line 300
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 301
    .line 302
    .line 303
    goto :goto_3

    .line 304
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 305
    .line 306
    goto :goto_2

    .line 307
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    check-cast v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 317
    .line 318
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v2, " - "

    .line 324
    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    check-cast v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 333
    .line 334
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 335
    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    new-instance v2, Lz7/s;

    .line 344
    .line 345
    invoke-direct {v2}, Lz7/s;-><init>()V

    .line 346
    .line 347
    .line 348
    sget-object v3, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_LAMP:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 349
    .line 350
    invoke-virtual {v3}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    invoke-virtual {v2, v8, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 359
    .line 360
    .line 361
    const-string v3, "name"

    .line 362
    .line 363
    invoke-virtual {v2, v3, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-string v3, "eventName"

    .line 367
    .line 368
    invoke-virtual {v2, v3, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 376
    .line 377
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 378
    .line 379
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v2, v9, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 391
    .line 392
    iget p1, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 393
    .line 394
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-virtual {v2, v7, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 399
    .line 400
    .line 401
    new-instance p1, Lz7/o;

    .line 402
    .line 403
    invoke-direct {p1}, Lz7/o;-><init>()V

    .line 404
    .line 405
    .line 406
    const-string v1, "click"

    .line 407
    .line 408
    invoke-virtual {v2, v1, p1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 409
    .line 410
    .line 411
    const/4 p1, -0x1

    .line 412
    invoke-virtual {v0, v2, p1}, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->y(Lz7/s;I)V

    .line 413
    .line 414
    .line 415
    :goto_3
    return-void

    .line 416
    nop

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
