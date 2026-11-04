.class public final synthetic Lua/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityAdb;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAdb;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/d;->a:I

    iput-object p1, p0, Lua/d;->b:Lcom/yunpan/appmanage/ui/ActivityAdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 12

    .line 1
    const-string v0, "setprop persist.service.adb.button.visible ON"

    .line 2
    .line 3
    const-string v1, "setprop persist.adb.tls_server.enable 1"

    .line 4
    .line 5
    const-string v2, "setprop persist.sv.debug.adb_enable 1"

    .line 6
    .line 7
    const-string v3, "adb_enabled"

    .line 8
    .line 9
    iget-object v4, p0, Lua/d;->b:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    iget v7, p0, Lua/d;->a:I

    .line 14
    .line 15
    packed-switch v7, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    sget v7, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object v4, v4, Lcom/yunpan/appmanage/ui/ActivityAdb;->F:Landroid/content/ContentResolver;

    .line 24
    .line 25
    invoke-static {v4, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    new-array v3, v6, [Ljava/lang/String;

    .line 29
    .line 30
    const-string v4, "setprop service.adb.tcp.port 5555"

    .line 31
    .line 32
    aput-object v4, v3, v5

    .line 33
    .line 34
    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lv9/e;->l0()Landroidx/room/s;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget v3, v3, Landroidx/room/s;->b:I

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    const-string v0, "\u4fee\u6539\u5931\u8d25\uff0c\u4e0d\u9002\u5408\u60a8\u7684\u7cfb\u7edf"

    .line 47
    .line 48
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const-string v3, "setprop persist.internet.adb_enable 1"

    .line 58
    .line 59
    invoke-static {v3}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 60
    .line 61
    .line 62
    const-string v3, "setprop persist.sys.adb.wiress.enable 1"

    .line 63
    .line 64
    invoke-static {v3}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 65
    .line 66
    .line 67
    invoke-static {v2}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 68
    .line 69
    .line 70
    const-string v2, "persist.service.adb.enable 1"

    .line 71
    .line 72
    invoke-static {v2}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 73
    .line 74
    .line 75
    const-string v2, "persist.sv.debug.adb_enable 1"

    .line 76
    .line 77
    invoke-static {v2}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 81
    .line 82
    .line 83
    const-string v1, "setprop service.adb.tls.port 5555"

    .line 84
    .line 85
    invoke-static {v1}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 86
    .line 87
    .line 88
    const-string v1, "setprop sys.connect.adb.wiress 5555"

    .line 89
    .line 90
    invoke-static {v1}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 91
    .line 92
    .line 93
    const-string v1, "setprop persist.adb.tcpip 5555"

    .line 94
    .line 95
    invoke-static {v1}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 96
    .line 97
    .line 98
    const-string v1, "setprop persist.adb.tcp.port 5555"

    .line 99
    .line 100
    invoke-static {v1}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 104
    .line 105
    .line 106
    const-string v0, "setprop persist.vendor.bosch.usb2.mode \'peripheral\'"

    .line 107
    .line 108
    invoke-static {v0}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 109
    .line 110
    .line 111
    const-string v0, "setprop persist.sys.adb.debug.wiress.enable 1"

    .line 112
    .line 113
    invoke-static {v0}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 114
    .line 115
    .line 116
    new-array v0, v6, [Ljava/lang/String;

    .line 117
    .line 118
    const-string v1, "setprop ctl.restart adbd"

    .line 119
    .line 120
    aput-object v1, v0, v5

    .line 121
    .line 122
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 127
    .line 128
    .line 129
    const-wide/16 v0, 0x1388

    .line 130
    .line 131
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .line 133
    .line 134
    :catch_1
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 135
    .line 136
    .line 137
    :goto_0
    return-void

    .line 138
    :pswitch_0
    sget v7, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 139
    .line 140
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    new-array v7, v6, [Ljava/lang/String;

    .line 144
    .line 145
    const-string v8, "getprop"

    .line 146
    .line 147
    aput-object v8, v7, v5

    .line 148
    .line 149
    invoke-static {v7}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-virtual {v7}, Lv9/e;->l0()Landroidx/room/s;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    iget v8, v7, Landroidx/room/s;->b:I

    .line 158
    .line 159
    if-nez v8, :cond_2

    .line 160
    .line 161
    invoke-virtual {v7}, Landroidx/room/s;->k()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    if-eqz v8, :cond_2

    .line 174
    .line 175
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    check-cast v8, Ljava/lang/String;

    .line 180
    .line 181
    const-string v9, "adb.enable]"

    .line 182
    .line 183
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    if-eqz v9, :cond_1

    .line 188
    .line 189
    :try_start_2
    const-string v9, ":"

    .line 190
    .line 191
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    aget-object v9, v8, v5

    .line 196
    .line 197
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    aget-object v8, v8, v6

    .line 202
    .line 203
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 208
    .line 209
    .line 210
    move-result v10

    .line 211
    sub-int/2addr v10, v6

    .line 212
    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    const-string v10, "["

    .line 217
    .line 218
    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v10

    .line 222
    add-int/2addr v10, v6

    .line 223
    const-string v11, "]"

    .line 224
    .line 225
    invoke-virtual {v8, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-result v11

    .line 229
    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    new-instance v8, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string v10, "setprop "

    .line 238
    .line 239
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v9, " 1"

    .line 246
    .line 247
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    new-array v9, v6, [Ljava/lang/String;

    .line 255
    .line 256
    aput-object v8, v9, v5

    .line 257
    .line 258
    invoke-static {v9}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    invoke-virtual {v8}, Lv9/e;->l0()Landroidx/room/s;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 263
    .line 264
    .line 265
    goto :goto_1

    .line 266
    :catch_2
    nop

    .line 267
    goto :goto_1

    .line 268
    :cond_2
    new-array v7, v6, [Ljava/lang/String;

    .line 269
    .line 270
    const-string v8, "setprop persist.service.adb.enable 1"

    .line 271
    .line 272
    aput-object v8, v7, v5

    .line 273
    .line 274
    invoke-static {v7}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    invoke-virtual {v7}, Lv9/e;->l0()Landroidx/room/s;

    .line 279
    .line 280
    .line 281
    new-array v7, v6, [Ljava/lang/String;

    .line 282
    .line 283
    const-string v8, "setprop persist.service.debuggable 1"

    .line 284
    .line 285
    aput-object v8, v7, v5

    .line 286
    .line 287
    invoke-static {v7}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    invoke-virtual {v7}, Lv9/e;->l0()Landroidx/room/s;

    .line 292
    .line 293
    .line 294
    new-array v7, v6, [Ljava/lang/String;

    .line 295
    .line 296
    aput-object v2, v7, v5

    .line 297
    .line 298
    invoke-static {v7}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 303
    .line 304
    .line 305
    new-array v2, v6, [Ljava/lang/String;

    .line 306
    .line 307
    const-string v7, "setprop persist.sys.adb.enable 1"

    .line 308
    .line 309
    aput-object v7, v2, v5

    .line 310
    .line 311
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 316
    .line 317
    .line 318
    new-array v2, v6, [Ljava/lang/String;

    .line 319
    .line 320
    aput-object v1, v2, v5

    .line 321
    .line 322
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v1}, Lv9/e;->l0()Landroidx/room/s;

    .line 327
    .line 328
    .line 329
    new-array v1, v6, [Ljava/lang/String;

    .line 330
    .line 331
    const-string v2, "setprop persist.sys.usb.adb on"

    .line 332
    .line 333
    aput-object v2, v1, v5

    .line 334
    .line 335
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v1}, Lv9/e;->l0()Landroidx/room/s;

    .line 340
    .line 341
    .line 342
    new-array v1, v6, [Ljava/lang/String;

    .line 343
    .line 344
    aput-object v0, v1, v5

    .line 345
    .line 346
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 351
    .line 352
    .line 353
    new-array v0, v6, [Ljava/lang/String;

    .line 354
    .line 355
    const-string v1, "settings put global adb_enabled 1"

    .line 356
    .line 357
    aput-object v1, v0, v5

    .line 358
    .line 359
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    :try_start_3
    iget-object v1, v4, Lcom/yunpan/appmanage/ui/ActivityAdb;->F:Landroid/content/ContentResolver;

    .line 368
    .line 369
    invoke-static {v1, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    .line 371
    .line 372
    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 373
    goto :goto_2

    .line 374
    :catch_3
    nop

    .line 375
    :goto_2
    if-nez v5, :cond_3

    .line 376
    .line 377
    iget v0, v0, Landroidx/room/s;->b:I

    .line 378
    .line 379
    if-eqz v0, :cond_3

    .line 380
    .line 381
    const-string v0, "\u4fee\u6539\u5931\u8d25"

    .line 382
    .line 383
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 384
    .line 385
    .line 386
    goto :goto_3

    .line 387
    :cond_3
    const-wide/16 v0, 0x4b0

    .line 388
    .line 389
    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 390
    .line 391
    .line 392
    :catch_4
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 393
    .line 394
    .line 395
    :goto_3
    return-void

    .line 396
    nop

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 19

    .line 1
    move/from16 v0, p3

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x6

    .line 5
    const/16 v3, 0xf

    .line 6
    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x5

    .line 9
    const/4 v6, 0x2

    .line 10
    const/16 v7, 0xe

    .line 11
    .line 12
    const/4 v8, 0x4

    .line 13
    const/4 v9, 0x0

    .line 14
    sget v10, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 15
    .line 16
    move-object/from16 v10, p0

    .line 17
    .line 18
    iget-object v13, v10, Lua/d;->b:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 19
    .line 20
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 26
    .line 27
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 34
    .line 35
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lha/z6;

    .line 43
    .line 44
    new-instance v1, Lua/f;

    .line 45
    .line 46
    invoke-direct {v1, v13, v8}, Lua/f;-><init>(Lcom/yunpan/appmanage/ui/ActivityAdb;I)V

    .line 47
    .line 48
    .line 49
    const-string v16, "\u65b9\u6cd5\u4e00"

    .line 50
    .line 51
    const-string v17, "\u65b9\u6cd5\u4e8c"

    .line 52
    .line 53
    const-string v14, "\u81ea\u884c\u6d4b\u8bd5\u770b\u54ea\u4e2a\u65b9\u6cd5\u9002\u5408\u60a8\u7684\u7cfb\u7edf"

    .line 54
    .line 55
    const-string v15, ""

    .line 56
    .line 57
    move-object v11, v0

    .line 58
    move-object v12, v13

    .line 59
    move-object/from16 v18, v1

    .line 60
    .line 61
    invoke-direct/range {v11 .. v18}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :cond_1
    :goto_0
    const-string v0, "\u60a8\u672c\u8eab\u5df2\u8fde\u63a5adb"

    .line 70
    .line 71
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_6

    .line 75
    .line 76
    :cond_2
    const/4 v11, 0x1

    .line 77
    if-ne v0, v11, :cond_3

    .line 78
    .line 79
    new-instance v0, Ltb/v;

    .line 80
    .line 81
    invoke-direct {v0, v7}, Ltb/v;-><init>(I)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Lmc/c;

    .line 85
    .line 86
    invoke-direct {v1, v9, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v1, Lua/e;

    .line 104
    .line 105
    invoke-direct {v1, v13, v9}, Lua/e;-><init>(Lcom/yunpan/appmanage/ui/ActivityAdb;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_6

    .line 112
    .line 113
    :cond_3
    if-ne v0, v6, :cond_5

    .line 114
    .line 115
    iget-object v0, v13, Lcom/yunpan/appmanage/ui/ActivityAdb;->F:Landroid/content/ContentResolver;

    .line 116
    .line 117
    const-string v1, "adb_enabled"

    .line 118
    .line 119
    const/4 v2, -0x1

    .line 120
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    new-instance v1, Lha/z6;

    .line 125
    .line 126
    iget-object v2, v13, Lda/g;->A:Lda/g;

    .line 127
    .line 128
    if-ne v0, v11, :cond_4

    .line 129
    .line 130
    const-string v0, "\u5df2\u5f00\u542f"

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    const-string v0, "\u5df2\u5173\u95ed"

    .line 134
    .line 135
    :goto_1
    const-string v3, "\u5f53\u524d\u72b6\u6001\uff1a"

    .line 136
    .line 137
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v14

    .line 141
    new-instance v0, Lua/f;

    .line 142
    .line 143
    invoke-direct {v0, v13, v5}, Lua/f;-><init>(Lcom/yunpan/appmanage/ui/ActivityAdb;I)V

    .line 144
    .line 145
    .line 146
    const-string v16, "\u5f00\u542fusb\u8c03\u8bd5"

    .line 147
    .line 148
    const-string v17, "\u5173\u95edusb\u8c03\u8bd5"

    .line 149
    .line 150
    const-string v15, "\u6ce8\uff1a\u6709\u4e9b\u8bbe\u5907\u5f00\u542fUSB\u8c03\u8bd5\u4f1a\u65ad\u5f00\u65e0\u7ebfadb\n\u6ce8\uff1a\u6b64\u529f\u80fd\u9002\u5408\u5927\u90e8\u5206\u7cfb\u7edf\uff0c\u67d0\u4e9b\u7cfb\u7edf\u9664\u5916\n\u6ce8\uff1a\u5982\u4f55\u4e0d\u9002\u5408\u7684\u8bdd\uff0c\u4e0d\u8981\u70b9\u5173\u95edusb"

    .line 151
    .line 152
    move-object v11, v1

    .line 153
    move-object v12, v13

    .line 154
    move-object v13, v2

    .line 155
    move-object/from16 v18, v0

    .line 156
    .line 157
    invoke-direct/range {v11 .. v18}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_6

    .line 164
    .line 165
    :cond_5
    const-string v12, "0"

    .line 166
    .line 167
    const-string v14, "1"

    .line 168
    .line 169
    if-ne v0, v4, :cond_6

    .line 170
    .line 171
    const-string v0, "persist.sv.debug.adb_enable"

    .line 172
    .line 173
    invoke-virtual {v13, v0, v14, v12}, Lcom/yunpan/appmanage/ui/ActivityAdb;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_6

    .line 177
    .line 178
    :cond_6
    if-ne v0, v8, :cond_7

    .line 179
    .line 180
    new-instance v0, Ltb/v;

    .line 181
    .line 182
    invoke-direct {v0, v3}, Ltb/v;-><init>(I)V

    .line 183
    .line 184
    .line 185
    new-instance v1, Lmc/c;

    .line 186
    .line 187
    invoke-direct {v1, v9, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 191
    .line 192
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    new-instance v1, Lua/e;

    .line 205
    .line 206
    invoke-direct {v1, v13, v6}, Lua/e;-><init>(Lcom/yunpan/appmanage/ui/ActivityAdb;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_6

    .line 213
    .line 214
    :cond_7
    if-ne v0, v5, :cond_a

    .line 215
    .line 216
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    invoke-static {}, La2/w0;->J()Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_8

    .line 226
    .line 227
    const-string v0, "\u60a8\u5df2\u8fde\u63a5adb\uff0c\u65e0\u9700\u70b9\u51fb\u6b64\u529f\u80fd"

    .line 228
    .line 229
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_6

    .line 233
    .line 234
    :cond_8
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 235
    .line 236
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_9

    .line 241
    .line 242
    const-string v0, "\u60a8\u5df2root\uff0c\u65e0\u9700\u8fde\u63a5adb"

    .line 243
    .line 244
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_6

    .line 248
    .line 249
    :cond_9
    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    .line 250
    .line 251
    .line 252
    new-instance v0, Lha/p5;

    .line 253
    .line 254
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 255
    .line 256
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 257
    .line 258
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 259
    .line 260
    move-object v2, v1

    .line 261
    check-cast v2, Landroid/app/Activity;

    .line 262
    .line 263
    invoke-direct {v0, v2, v1}, Lha/p5;-><init>(Landroid/app/Activity;Landroid/content/ContextWrapper;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_6

    .line 270
    .line 271
    :cond_a
    if-ne v0, v2, :cond_b

    .line 272
    .line 273
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    const-string v1, "telnet"

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_6

    .line 286
    .line 287
    :cond_b
    if-ne v0, v1, :cond_c

    .line 288
    .line 289
    goto/16 :goto_6

    .line 290
    .line 291
    :cond_c
    const/16 v5, 0x8

    .line 292
    .line 293
    if-ne v0, v5, :cond_d

    .line 294
    .line 295
    goto/16 :goto_6

    .line 296
    .line 297
    :cond_d
    const/16 v5, 0x9

    .line 298
    .line 299
    if-ne v0, v5, :cond_11

    .line 300
    .line 301
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 302
    .line 303
    const/16 v1, 0x1e

    .line 304
    .line 305
    if-ge v0, v1, :cond_e

    .line 306
    .line 307
    const-string v0, "\u4f4e\u4e8e\u5b89\u535311\uff0c\u4e0d\u652f\u6301\u6b64\u529f\u80fd"

    .line 308
    .line 309
    invoke-static {v0, v9}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_6

    .line 313
    .line 314
    :cond_e
    iget-object v0, v13, Lcom/yunpan/appmanage/ui/ActivityAdb;->F:Landroid/content/ContentResolver;

    .line 315
    .line 316
    const-string v1, "adb_wifi_enabled"

    .line 317
    .line 318
    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-ne v0, v11, :cond_f

    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_f
    const/4 v11, 0x0

    .line 326
    :goto_2
    new-instance v0, Lha/z6;

    .line 327
    .line 328
    iget-object v1, v13, Lda/g;->A:Lda/g;

    .line 329
    .line 330
    if-eqz v11, :cond_10

    .line 331
    .line 332
    const-string v2, "\u5f00"

    .line 333
    .line 334
    goto :goto_3

    .line 335
    :cond_10
    const-string v2, "\u5173"

    .line 336
    .line 337
    :goto_3
    const-string v3, "\u5f53\u524d\u65e0\u7ebfwifi adb\u72b6\u6001\uff1a"

    .line 338
    .line 339
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v15

    .line 343
    new-instance v2, Lua/f;

    .line 344
    .line 345
    invoke-direct {v2, v13, v9}, Lua/f;-><init>(Lcom/yunpan/appmanage/ui/ActivityAdb;I)V

    .line 346
    .line 347
    .line 348
    const-string v16, "\u5f00\u542f"

    .line 349
    .line 350
    const-string v17, "\u5173\u95ed"

    .line 351
    .line 352
    const-string v14, "\u8b66\u544a\uff1a\u5339\u914d\u7801adb\u4e0e\u4e0a\u9762\u7684\u65e0\u7ebfadb\u4e0d\u540c\uff0c\u4e0d\u61c2\u7684\u8bdd\u8bf7\u4e0d\u8981\u5f00\u542f\uff01\n\u56e0\u4e3a\u4e00\u4e9b\u7cfb\u7edf\u5982\u679c\u5f00\u542f\u4e86\u8fd9\u4e2a\uff0c\u4f1a\u5bfc\u81f4\u4e00\u76f4\u5f39\u51fa(\u662f\u5426\u5141\u8bb8\u6b64\u7f51\u7edc\u8fdb\u884c\u65e0\u7ebf\u8c03\u8bd5\u5417)\u8fd9\u6837\u7684\u7a97\u53e3\n\n\u6b64\u529f\u80fd\u4e00\u822c\u662f\u9ad8\u7248\u672c\u624b\u673a\u7cfb\u7edf\u624d\u6709\u7684\u529f\u80fd\uff0c\u5177\u4f53\u770b\u5f00\u53d1\u8005\u9009\u9879\u4e2d\u6709\u6ca1\u6709\u5339\u914d\u7801"

    .line 353
    .line 354
    move-object v11, v0

    .line 355
    move-object v12, v13

    .line 356
    move-object v13, v1

    .line 357
    move-object/from16 v18, v2

    .line 358
    .line 359
    invoke-direct/range {v11 .. v18}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_6

    .line 366
    .line 367
    :cond_11
    const/16 v5, 0xa

    .line 368
    .line 369
    if-ne v0, v5, :cond_12

    .line 370
    .line 371
    new-instance v0, Lha/p5;

    .line 372
    .line 373
    iget-object v1, v13, Lda/g;->A:Lda/g;

    .line 374
    .line 375
    invoke-direct {v0, v13, v1}, Lha/p5;-><init>(Landroid/app/Activity;Lda/g;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 379
    .line 380
    .line 381
    goto/16 :goto_6

    .line 382
    .line 383
    :cond_12
    const/16 v5, 0xb

    .line 384
    .line 385
    if-ne v0, v5, :cond_13

    .line 386
    .line 387
    goto/16 :goto_6

    .line 388
    .line 389
    :cond_13
    const/16 v5, 0xc

    .line 390
    .line 391
    if-ne v0, v5, :cond_14

    .line 392
    .line 393
    const-string v0, "persist.service.adb.enable"

    .line 394
    .line 395
    invoke-virtual {v13, v0, v14, v12}, Lcom/yunpan/appmanage/ui/ActivityAdb;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_6

    .line 399
    .line 400
    :cond_14
    const/16 v5, 0xd

    .line 401
    .line 402
    if-ne v0, v5, :cond_15

    .line 403
    .line 404
    const-string v0, "persist.service.debuggable"

    .line 405
    .line 406
    invoke-virtual {v13, v0, v14, v12}, Lcom/yunpan/appmanage/ui/ActivityAdb;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    goto/16 :goto_6

    .line 410
    .line 411
    :cond_15
    if-ne v0, v7, :cond_16

    .line 412
    .line 413
    const-string v0, "persist.sys.adb.enable"

    .line 414
    .line 415
    invoke-virtual {v13, v0, v14, v12}, Lcom/yunpan/appmanage/ui/ActivityAdb;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    goto/16 :goto_6

    .line 419
    .line 420
    :cond_16
    if-ne v0, v3, :cond_17

    .line 421
    .line 422
    const-string v0, "persist.adb.tls_server.enable"

    .line 423
    .line 424
    invoke-virtual {v13, v0, v14, v12}, Lcom/yunpan/appmanage/ui/ActivityAdb;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    goto/16 :goto_6

    .line 428
    .line 429
    :cond_17
    const/16 v3, 0x10

    .line 430
    .line 431
    if-ne v0, v3, :cond_18

    .line 432
    .line 433
    const-string v0, "on"

    .line 434
    .line 435
    const-string v1, "off"

    .line 436
    .line 437
    const-string v2, "persist.sys.usb.adb"

    .line 438
    .line 439
    invoke-virtual {v13, v2, v0, v1}, Lcom/yunpan/appmanage/ui/ActivityAdb;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    goto/16 :goto_6

    .line 443
    .line 444
    :cond_18
    const/16 v3, 0x11

    .line 445
    .line 446
    if-ne v0, v3, :cond_19

    .line 447
    .line 448
    const-string v0, "ON"

    .line 449
    .line 450
    const-string v1, "OFF"

    .line 451
    .line 452
    const-string v2, "persist.service.adb.button.visible"

    .line 453
    .line 454
    invoke-virtual {v13, v2, v0, v1}, Lcom/yunpan/appmanage/ui/ActivityAdb;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    goto/16 :goto_6

    .line 458
    .line 459
    :cond_19
    const/16 v3, 0x12

    .line 460
    .line 461
    if-ne v0, v3, :cond_1a

    .line 462
    .line 463
    goto/16 :goto_6

    .line 464
    .line 465
    :cond_1a
    const/16 v3, 0x13

    .line 466
    .line 467
    if-ne v0, v3, :cond_1b

    .line 468
    .line 469
    new-instance v0, Lha/z6;

    .line 470
    .line 471
    iget-object v2, v13, Lda/g;->A:Lda/g;

    .line 472
    .line 473
    new-instance v3, Lua/f;

    .line 474
    .line 475
    invoke-direct {v3, v13, v1}, Lua/f;-><init>(Lcom/yunpan/appmanage/ui/ActivityAdb;I)V

    .line 476
    .line 477
    .line 478
    const-string v14, "\u8b66\u544a\uff1a\u6b64\u529f\u80fd\u4ec5\u652f\u6301\u5c0f\u90e8\u5206\u8f66\u673a\uff0c\u517c\u5bb9\u6027\u5dee\uff0c\u4e0d\u5efa\u8bae\u7528\uff01"

    .line 479
    .line 480
    const-string v15, "\u6ce8\uff1a\u6709\u4e9b\u8bbe\u5907\u5f00\u542fUSB\u8c03\u8bd5\u4f1a\u65ad\u5f00\u65e0\u7ebfadb"

    .line 481
    .line 482
    const-string v16, "\u5f00\u542f"

    .line 483
    .line 484
    const-string v17, "\u7b97\u4e86"

    .line 485
    .line 486
    move-object v11, v0

    .line 487
    move-object v12, v13

    .line 488
    move-object v13, v2

    .line 489
    move-object/from16 v18, v3

    .line 490
    .line 491
    invoke-direct/range {v11 .. v18}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 495
    .line 496
    .line 497
    goto/16 :goto_6

    .line 498
    .line 499
    :cond_1b
    const/16 v1, 0x14

    .line 500
    .line 501
    if-ne v0, v1, :cond_1c

    .line 502
    .line 503
    new-instance v0, Lha/z6;

    .line 504
    .line 505
    new-instance v1, Lua/f;

    .line 506
    .line 507
    invoke-direct {v1, v13, v2}, Lua/f;-><init>(Lcom/yunpan/appmanage/ui/ActivityAdb;I)V

    .line 508
    .line 509
    .line 510
    const-string v14, "\u6ce8\u610f\uff1a\u6b64\u529f\u80fd\uff0c\u4ec5\u652f\u6301\u4e2a\u522b\u7cfb\u7edf\uff01\u517c\u5bb9\u6027\u5dee  \u4e0d\u5efa\u8bae\u4f7f\u7528"

    .line 511
    .line 512
    const-string v15, ""

    .line 513
    .line 514
    const-string v16, "\u53d6\u6d88"

    .line 515
    .line 516
    const-string v17, "\u6253\u5f00"

    .line 517
    .line 518
    move-object v11, v0

    .line 519
    move-object v12, v13

    .line 520
    move-object/from16 v18, v1

    .line 521
    .line 522
    invoke-direct/range {v11 .. v18}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_6

    .line 529
    .line 530
    :cond_1c
    const/16 v1, 0x15

    .line 531
    .line 532
    if-ne v0, v1, :cond_1d

    .line 533
    .line 534
    iget-object v0, v13, Lda/g;->A:Lda/g;

    .line 535
    .line 536
    invoke-static {v0}, Lcom/yunpan/appmanage/carsdk/h0;->c(Landroid/content/Context;)Z

    .line 537
    .line 538
    .line 539
    move-result v0

    .line 540
    invoke-virtual {v13, v0}, Lcom/yunpan/appmanage/ui/ActivityAdb;->E(Z)V

    .line 541
    .line 542
    .line 543
    goto :goto_6

    .line 544
    :cond_1d
    const/16 v1, 0x16

    .line 545
    .line 546
    if-ne v0, v1, :cond_1e

    .line 547
    .line 548
    new-instance v0, Lha/z6;

    .line 549
    .line 550
    new-instance v1, Lua/f;

    .line 551
    .line 552
    invoke-direct {v1, v13, v4}, Lua/f;-><init>(Lcom/yunpan/appmanage/ui/ActivityAdb;I)V

    .line 553
    .line 554
    .line 555
    const-string v14, "\u60a8\u662f(\u6377\u9014-\u8f66\u8054\u5929\u4e0b)\u7cfb\u7edf,\u8fd8\u662f(\u6377\u9014-\u5fb7\u8d5b\u897f\u5a01)\u7cfb\u7edf\uff1f"

    .line 556
    .line 557
    const-string v15, ""

    .line 558
    .line 559
    const-string v16, "\u8f66\u8054\u5929\u4e0b(AUTOLINK)"

    .line 560
    .line 561
    const-string v17, "\u5fb7\u8d5b\u897f\u5a01(DESAYSV)"

    .line 562
    .line 563
    move-object v11, v0

    .line 564
    move-object v12, v13

    .line 565
    move-object/from16 v18, v1

    .line 566
    .line 567
    invoke-direct/range {v11 .. v18}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 571
    .line 572
    .line 573
    goto :goto_6

    .line 574
    :cond_1e
    const/16 v1, 0x17

    .line 575
    .line 576
    if-ne v0, v1, :cond_21

    .line 577
    .line 578
    const-string v0, "service.adb.tcp.port"

    .line 579
    .line 580
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    const-string v1, "\u5f53\u524dADB\u72b6\u6001\uff1a\u672a\u5f00\u542f"

    .line 585
    .line 586
    if-nez v0, :cond_20

    .line 587
    .line 588
    :cond_1f
    :goto_4
    move-object v14, v1

    .line 589
    goto :goto_5

    .line 590
    :cond_20
    const-string v2, "5555"

    .line 591
    .line 592
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    if-eqz v2, :cond_1f

    .line 597
    .line 598
    const-string v1, "\u5f53\u524dADB\u72b6\u6001\uff1a\u5df2\u5f00\u542f"

    .line 599
    .line 600
    goto :goto_4

    .line 601
    :goto_5
    new-instance v1, Lha/z6;

    .line 602
    .line 603
    new-instance v2, Lkf/d;

    .line 604
    .line 605
    const/16 v3, 0x19

    .line 606
    .line 607
    invoke-direct {v2, v3, v13, v0, v9}, Lkf/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 608
    .line 609
    .line 610
    const-string v16, "\u5f00\u542f\u65e0\u7ebfADB"

    .line 611
    .line 612
    const-string v17, "\u5173\u95ed\u65e0\u7ebfADB"

    .line 613
    .line 614
    const-string v15, ""

    .line 615
    .line 616
    move-object v11, v1

    .line 617
    move-object v12, v13

    .line 618
    move-object/from16 v18, v2

    .line 619
    .line 620
    invoke-direct/range {v11 .. v18}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 624
    .line 625
    .line 626
    goto :goto_6

    .line 627
    :cond_21
    const-string v0, "\u672a\u5f00\u53d1"

    .line 628
    .line 629
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 630
    .line 631
    .line 632
    :goto_6
    return-void
.end method
