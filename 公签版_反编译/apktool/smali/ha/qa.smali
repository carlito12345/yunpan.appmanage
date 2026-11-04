.class public final synthetic Lha/qa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lqh/a;
.implements Lha/a6;
.implements Lu1/j;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lha/qa;->a:I

    iput-boolean p2, p0, Lha/qa;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lha/qa;->a:I

    .line 2
    .line 3
    check-cast p1, Lr1/k0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lha/qa;->b:Z

    .line 9
    .line 10
    invoke-interface {p1, v0}, Lr1/k0;->z(Z)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-boolean v0, p0, Lha/qa;->b:Z

    .line 15
    .line 16
    invoke-interface {p1, v0}, Lr1/k0;->p(Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public b(C)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/16 v0, 0x26

    .line 4
    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lha/qa;->b:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x27

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v0, 0x22

    .line 17
    .line 18
    if-eq p1, v0, :cond_1

    .line 19
    .line 20
    :goto_0
    const/4 p1, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_1
    return p1
.end method

.method public f(Lx9/w3;)V
    .locals 5

    .line 1
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 2
    .line 3
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v1, p0, Lha/qa;->b:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v1, 0xa

    .line 12
    .line 13
    :goto_0
    new-instance v2, Lua/v0;

    .line 14
    .line 15
    const/16 v3, 0x17

    .line 16
    .line 17
    invoke-direct {v2, v3}, Lua/v0;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v2, v0, La2/w0;->d:Ljava/lang/Object;

    .line 21
    .line 22
    sget-object v2, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    new-instance v3, Lfa/v;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-direct {v3, v0, p1, v1, v4}, Lfa/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "0"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    const-string v6, "/"

    .line 10
    .line 11
    const/4 v7, 0x1

    .line 12
    iget-boolean v8, v1, Lha/qa;->b:Z

    .line 13
    .line 14
    const/4 v9, 0x0

    .line 15
    iget v10, v1, Lha/qa;->a:I

    .line 16
    .line 17
    packed-switch v10, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->F:I

    .line 21
    .line 22
    const-string v0, "/amapauto9/"

    .line 23
    .line 24
    if-eqz v8, :cond_0

    .line 25
    .line 26
    const-string v3, "com.autonavi.amapauto"

    .line 27
    .line 28
    invoke-static {v3}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "\u9ad8\u5fb7\u5730\u56fe"

    .line 43
    .line 44
    invoke-interface {v3, v4}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean_name(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v3, "cn.kuwo.kwmusiccar"

    .line 50
    .line 51
    invoke-static {v3}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-nez v3, :cond_1

    .line 56
    .line 57
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const-string v4, "\u9177\u6211\u97f3\u4e50"

    .line 66
    .line 67
    invoke-interface {v3, v4}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean_name(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 72
    .line 73
    const-string v0, "\u672a\u627e\u5230\u6b64\u5e94\u7528"

    .line 74
    .line 75
    :goto_1
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_2
    iget-boolean v4, v3, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 81
    .line 82
    if-nez v4, :cond_3

    .line 83
    .line 84
    const-string v0, "\u975e\u7cfb\u7edf\u539f\u5e94\u7528\uff0c\u8bf7\u5728\u5e94\u7528\u7ba1\u7406\u4e2d\u5378\u8f7d"

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {v3}, La2/w0;->u(Lcom/yunpan/appmanage/db/AppBean;)V

    .line 93
    .line 94
    .line 95
    sget-object v3, Lfa/g0;->a:Lfa/h0;

    .line 96
    .line 97
    invoke-virtual {v3}, Lfa/h0;->d()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_4

    .line 106
    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_4
    const-string v4, "rm -rf \'"

    .line 110
    .line 111
    if-eqz v8, :cond_6

    .line 112
    .line 113
    const-string v5, "/amapauto9/AutoDeviceAdapter/"

    .line 114
    .line 115
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    const-string v8, "mv "

    .line 124
    .line 125
    if-eqz v5, :cond_5

    .line 126
    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v9, "/amapauto9/AutoDeviceAdapter "

    .line 136
    .line 137
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-static {v5}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_5
    const/4 v7, 0x0

    .line 155
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v4, "/amapauto9\'"

    .line 164
    .line 165
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {v4}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 173
    .line 174
    .line 175
    if-eqz v7, :cond_7

    .line 176
    .line 177
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 178
    .line 179
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .line 188
    .line 189
    :catch_0
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 190
    .line 191
    const-string v5, "/AutoDeviceAdapter "

    .line 192
    .line 193
    invoke-static {v8, v3, v5, v3, v0}, Lta/q;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v5, "/cn_kuwo_kwmusiccas\'"

    .line 213
    .line 214
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 222
    .line 223
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v5, "/KuwoTingshu\'"

    .line 233
    .line 234
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 242
    .line 243
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v6, "/kwmusiccar\'"

    .line 253
    .line 254
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 262
    .line 263
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 280
    .line 281
    .line 282
    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 283
    .line 284
    .line 285
    :goto_4
    return-void

    .line 286
    :pswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 287
    .line 288
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 289
    .line 290
    iget-boolean v10, v0, Lfa/j;->g:Z

    .line 291
    .line 292
    if-nez v10, :cond_f

    .line 293
    .line 294
    sget-object v10, Lfa/l;->a:Lfa/m;

    .line 295
    .line 296
    iget-boolean v11, v10, Lfa/m;->c:Z

    .line 297
    .line 298
    if-nez v11, :cond_f

    .line 299
    .line 300
    invoke-virtual {v10}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 301
    .line 302
    .line 303
    move-result v11

    .line 304
    const-string v12, "root:"

    .line 305
    .line 306
    if-eqz v11, :cond_8

    .line 307
    .line 308
    invoke-virtual {v10, v12}, Lfa/m;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v11

    .line 312
    const/4 v12, 0x0

    .line 313
    goto :goto_5

    .line 314
    :cond_8
    invoke-virtual {v0, v12}, Lfa/j;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v11

    .line 318
    const/4 v12, 0x1

    .line 319
    :goto_5
    const-string v13, "adbd cannot run as root in production builds"

    .line 320
    .line 321
    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 322
    .line 323
    .line 324
    move-result v14

    .line 325
    if-eqz v14, :cond_9

    .line 326
    .line 327
    const-string v14, "setprop ro.debuggable 1"

    .line 328
    .line 329
    new-array v15, v7, [Ljava/lang/String;

    .line 330
    .line 331
    aput-object v14, v15, v9

    .line 332
    .line 333
    invoke-static {v15}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 334
    .line 335
    .line 336
    move-result-object v15

    .line 337
    invoke-virtual {v15}, Lv9/e;->l0()Landroidx/room/s;

    .line 338
    .line 339
    .line 340
    const-string v15, "setprop service.adb.root 1"

    .line 341
    .line 342
    new-array v4, v7, [Ljava/lang/String;

    .line 343
    .line 344
    aput-object v15, v4, v9

    .line 345
    .line 346
    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    invoke-virtual {v4}, Lv9/e;->l0()Landroidx/room/s;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    invoke-virtual {v4}, Landroidx/room/s;->q()Z

    .line 355
    .line 356
    .line 357
    move-result v4

    .line 358
    const-string v5, "\u91cd\u65b0\u8fde\u63a5"

    .line 359
    .line 360
    const-wide/16 v16, 0x3e8

    .line 361
    .line 362
    const-string v9, "setprop ctl.restart adbd"

    .line 363
    .line 364
    if-eqz v4, :cond_a

    .line 365
    .line 366
    new-array v4, v7, [Ljava/lang/String;

    .line 367
    .line 368
    const/4 v11, 0x0

    .line 369
    aput-object v9, v4, v11

    .line 370
    .line 371
    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    invoke-virtual {v4}, Lv9/e;->l0()Landroidx/room/s;

    .line 376
    .line 377
    .line 378
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 379
    .line 380
    .line 381
    move-object v11, v5

    .line 382
    :cond_9
    move v4, v8

    .line 383
    goto :goto_6

    .line 384
    :cond_a
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 385
    .line 386
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    move v4, v8

    .line 390
    const-wide/16 v7, 0x7d0

    .line 391
    .line 392
    invoke-static {v7, v8, v14}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 393
    .line 394
    .line 395
    invoke-static {v7, v8, v15}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 396
    .line 397
    .line 398
    move-result-object v14

    .line 399
    iget v14, v14, Lfa/a0;->a:I

    .line 400
    .line 401
    if-nez v14, :cond_b

    .line 402
    .line 403
    invoke-static {v7, v8, v9}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 404
    .line 405
    .line 406
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 407
    .line 408
    .line 409
    move-object v11, v5

    .line 410
    :cond_b
    :goto_6
    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 411
    .line 412
    .line 413
    move-result v5

    .line 414
    if-eqz v5, :cond_c

    .line 415
    .line 416
    const-string v0, "\u4e0d\u9002\u5408\u6b64\u7cfb\u7edf"

    .line 417
    .line 418
    :goto_7
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_f

    .line 422
    .line 423
    :cond_c
    const-string v5, "adbd is already running as root"

    .line 424
    .line 425
    invoke-virtual {v11, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    if-nez v5, :cond_d

    .line 430
    .line 431
    const-string v5, "already running"

    .line 432
    .line 433
    invoke-virtual {v11, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    if-nez v5, :cond_d

    .line 438
    .line 439
    const-string v5, "restarting adbd as root"

    .line 440
    .line 441
    invoke-virtual {v11, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 442
    .line 443
    .line 444
    :cond_d
    const-string v5, "adb\u5df2\u65ad\u5f00\uff0c\u8bf7\u91cd\u65b0\u6253\u5f00\u672c\u5e94\u7528"

    .line 445
    .line 446
    const-wide/16 v7, 0xde

    .line 447
    .line 448
    if-eqz v12, :cond_e

    .line 449
    .line 450
    const/4 v9, 0x0

    .line 451
    :try_start_1
    invoke-virtual {v0, v9}, Lfa/j;->d(Z)V

    .line 452
    .line 453
    .line 454
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0}, Lfa/j;->m()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 458
    .line 459
    .line 460
    goto :goto_8

    .line 461
    :catch_1
    invoke-static {v5, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_f

    .line 465
    .line 466
    :cond_e
    invoke-virtual {v10}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->disconnect()V

    .line 467
    .line 468
    .line 469
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 470
    .line 471
    .line 472
    :try_start_2
    sget-object v7, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 473
    .line 474
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 475
    .line 476
    iget-object v7, v7, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 477
    .line 478
    invoke-virtual {v10, v7}, Lfa/m;->M(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 479
    .line 480
    .line 481
    goto :goto_8

    .line 482
    :cond_f
    move v4, v8

    .line 483
    :goto_8
    sget-object v5, Lfa/b0;->a:La2/w0;

    .line 484
    .line 485
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    .line 487
    .line 488
    const-string v5, "id"

    .line 489
    .line 490
    invoke-static {v5}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 495
    .line 496
    invoke-virtual {v5}, Lfa/a0;->a()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v5}, Lfa/a0;->a()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v5

    .line 506
    const-string v7, "uid=0("

    .line 507
    .line 508
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 509
    .line 510
    .line 511
    move-result v5

    .line 512
    if-nez v5, :cond_10

    .line 513
    .line 514
    const-string v0, "\u5931\u8d25\uff0c\u65e0\u6cd5\u7528\u6b64\u65b9\u6cd5\u63d0\u6743"

    .line 515
    .line 516
    goto :goto_7

    .line 517
    :cond_10
    sget-object v5, Lfa/a;->a:Lfa/b;

    .line 518
    .line 519
    invoke-virtual {v5}, Lfa/b;->f()Z

    .line 520
    .line 521
    .line 522
    move-result v7

    .line 523
    if-eqz v7, :cond_11

    .line 524
    .line 525
    iget-object v5, v5, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 526
    .line 527
    invoke-interface {v5}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getUid()I

    .line 528
    .line 529
    .line 530
    move-result v5

    .line 531
    if-eqz v5, :cond_12

    .line 532
    .line 533
    :cond_11
    sget-object v5, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 534
    .line 535
    invoke-static {v5}, Lfa/b;->a(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    invoke-static {v5}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 540
    .line 541
    .line 542
    :cond_12
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 543
    .line 544
    .line 545
    move-result v5

    .line 546
    if-eqz v5, :cond_13

    .line 547
    .line 548
    const/4 v5, 0x1

    .line 549
    iput-boolean v5, v0, Lfa/j;->g:Z

    .line 550
    .line 551
    goto :goto_9

    .line 552
    :cond_13
    const/4 v5, 0x1

    .line 553
    sget-object v7, Lfa/l;->a:Lfa/m;

    .line 554
    .line 555
    iput-boolean v5, v7, Lfa/m;->c:Z

    .line 556
    .line 557
    :goto_9
    const-string v5, "setenforce 0"

    .line 558
    .line 559
    invoke-static {v5}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 560
    .line 561
    .line 562
    if-eqz v4, :cond_14

    .line 563
    .line 564
    const-string v4, "setprop ro.adb.secure 0"

    .line 565
    .line 566
    invoke-static {v4}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 567
    .line 568
    .line 569
    const-string v4, "setprop ro.secure 0"

    .line 570
    .line 571
    invoke-static {v4}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 572
    .line 573
    .line 574
    :cond_14
    sget-object v4, Lfa/l;->a:Lfa/m;

    .line 575
    .line 576
    invoke-virtual {v4}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 577
    .line 578
    .line 579
    move-result v5

    .line 580
    const-string v7, "remount:"

    .line 581
    .line 582
    if-eqz v5, :cond_15

    .line 583
    .line 584
    invoke-virtual {v4, v7}, Lfa/m;->O(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    goto :goto_a

    .line 588
    :cond_15
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 589
    .line 590
    .line 591
    move-result v4

    .line 592
    if-eqz v4, :cond_16

    .line 593
    .line 594
    :try_start_3
    iget-object v0, v0, Lfa/j;->b:Ly9/b;

    .line 595
    .line 596
    invoke-virtual {v0, v7}, Ly9/b;->J(Ljava/lang/String;)Ly9/f;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 597
    .line 598
    .line 599
    goto :goto_a

    .line 600
    :catch_2
    nop

    .line 601
    :cond_16
    :goto_a
    const-string v0, "touch /system/app/111222"

    .line 602
    .line 603
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 604
    .line 605
    .line 606
    move-result-object v4

    .line 607
    iget v5, v4, Lfa/a0;->a:I

    .line 608
    .line 609
    if-eqz v5, :cond_20

    .line 610
    .line 611
    const-string v4, "mount"

    .line 612
    .line 613
    invoke-static {v4}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 614
    .line 615
    .line 616
    move-result-object v4

    .line 617
    iget-object v4, v4, Lfa/a0;->b:Ljava/util/List;

    .line 618
    .line 619
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 620
    .line 621
    .line 622
    move-result-object v4

    .line 623
    :cond_17
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 624
    .line 625
    .line 626
    move-result v5

    .line 627
    const-string v7, "mount -o remount,rw -t "

    .line 628
    .line 629
    if-eqz v5, :cond_1e

    .line 630
    .line 631
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v5

    .line 635
    check-cast v5, Ljava/lang/String;

    .line 636
    .line 637
    const-string v8, " /system "

    .line 638
    .line 639
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 640
    .line 641
    .line 642
    move-result v8

    .line 643
    if-eqz v8, :cond_18

    .line 644
    .line 645
    const-string v8, "/system"

    .line 646
    .line 647
    goto :goto_c

    .line 648
    :cond_18
    const-string v8, " /vendor "

    .line 649
    .line 650
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 651
    .line 652
    .line 653
    move-result v8

    .line 654
    if-eqz v8, :cond_19

    .line 655
    .line 656
    const-string v8, "/vendor"

    .line 657
    .line 658
    goto :goto_c

    .line 659
    :cond_19
    const-string v8, " /oem "

    .line 660
    .line 661
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 662
    .line 663
    .line 664
    move-result v8

    .line 665
    if-eqz v8, :cond_1a

    .line 666
    .line 667
    const-string v8, "/oem"

    .line 668
    .line 669
    goto :goto_c

    .line 670
    :cond_1a
    const-string v8, " / "

    .line 671
    .line 672
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 673
    .line 674
    .line 675
    move-result v8

    .line 676
    if-eqz v8, :cond_17

    .line 677
    .line 678
    move-object v8, v6

    .line 679
    :goto_c
    const-string v9, "  "

    .line 680
    .line 681
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 682
    .line 683
    .line 684
    move-result v10

    .line 685
    const-string v11, " "

    .line 686
    .line 687
    if-eqz v10, :cond_1b

    .line 688
    .line 689
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v5

    .line 693
    invoke-virtual {v5, v9, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v5

    .line 697
    goto :goto_c

    .line 698
    :cond_1b
    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v9

    .line 702
    array-length v10, v9

    .line 703
    const/4 v12, 0x4

    .line 704
    if-ge v10, v12, :cond_1c

    .line 705
    .line 706
    goto :goto_b

    .line 707
    :cond_1c
    :try_start_4
    const-string v10, " (r"

    .line 708
    .line 709
    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 710
    .line 711
    .line 712
    move-result v5

    .line 713
    if-eqz v5, :cond_1d

    .line 714
    .line 715
    aget-object v3, v9, v12

    .line 716
    .line 717
    goto :goto_d

    .line 718
    :cond_1d
    const/4 v5, 0x2

    .line 719
    aget-object v3, v9, v5

    .line 720
    .line 721
    :goto_d
    sget-object v5, Lfa/b0;->a:La2/w0;

    .line 722
    .line 723
    new-instance v9, Ljava/lang/StringBuilder;

    .line 724
    .line 725
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v7

    .line 744
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 745
    .line 746
    .line 747
    invoke-static {v7}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 748
    .line 749
    .line 750
    goto :goto_b

    .line 751
    :catch_3
    nop

    .line 752
    goto/16 :goto_b

    .line 753
    .line 754
    :cond_1e
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 755
    .line 756
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 757
    .line 758
    .line 759
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 760
    .line 761
    .line 762
    move-result-object v4

    .line 763
    iget v5, v4, Lfa/a0;->a:I

    .line 764
    .line 765
    if-eqz v5, :cond_20

    .line 766
    .line 767
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 768
    .line 769
    .line 770
    move-result v4

    .line 771
    if-eqz v4, :cond_1f

    .line 772
    .line 773
    const-string v3, "mount -o remount,rw /system"

    .line 774
    .line 775
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 776
    .line 777
    .line 778
    const-string v3, "mount -o remount,rw /oem"

    .line 779
    .line 780
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 781
    .line 782
    .line 783
    const-string v3, "mount -o remount,rw /"

    .line 784
    .line 785
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 786
    .line 787
    .line 788
    goto :goto_e

    .line 789
    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 790
    .line 791
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    const-string v5, " /system"

    .line 798
    .line 799
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v4

    .line 806
    invoke-static {v4}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 807
    .line 808
    .line 809
    new-instance v4, Ljava/lang/StringBuilder;

    .line 810
    .line 811
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    const-string v5, " /oem"

    .line 818
    .line 819
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v4

    .line 826
    invoke-static {v4}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 827
    .line 828
    .line 829
    new-instance v4, Ljava/lang/StringBuilder;

    .line 830
    .line 831
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    const-string v3, " /"

    .line 838
    .line 839
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 847
    .line 848
    .line 849
    :goto_e
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 850
    .line 851
    .line 852
    move-result-object v4

    .line 853
    :cond_20
    iget v0, v4, Lfa/a0;->a:I

    .line 854
    .line 855
    if-eqz v0, :cond_21

    .line 856
    .line 857
    const-string v0, "\u5df2\u63d0\u6743\u4e3aroot\uff0c\u4f46\u65e0\u6cd5\u6302\u8f7d\u5199\u5165\n\n\u53ef\u5c1d\u8bd5\u3010\u5173\u95ed\u5206\u533a\u68c0\u6d4b\u3011"

    .line 858
    .line 859
    goto/16 :goto_7

    .line 860
    .line 861
    :cond_21
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 862
    .line 863
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 864
    .line 865
    const/4 v3, 0x1

    .line 866
    iput-boolean v3, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 867
    .line 868
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 869
    .line 870
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 871
    .line 872
    .line 873
    const-string v3, "rm -rf /system/app/111222"

    .line 874
    .line 875
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 876
    .line 877
    .line 878
    const-string v3, "touch /system/bin/111222"

    .line 879
    .line 880
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 881
    .line 882
    .line 883
    move-result-object v3

    .line 884
    iget v3, v3, Lfa/a0;->a:I

    .line 885
    .line 886
    if-nez v3, :cond_22

    .line 887
    .line 888
    const/4 v3, 0x1

    .line 889
    iput-boolean v3, v0, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 890
    .line 891
    const-string v0, "rm -rf /system/bin/111222"

    .line 892
    .line 893
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 894
    .line 895
    .line 896
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 897
    .line 898
    .line 899
    :goto_f
    return-void

    .line 900
    :pswitch_2
    move v4, v8

    .line 901
    sget v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 902
    .line 903
    if-eqz v4, :cond_23

    .line 904
    .line 905
    const-string v0, "disable"

    .line 906
    .line 907
    goto :goto_10

    .line 908
    :cond_23
    const-string v0, "enable"

    .line 909
    .line 910
    :goto_10
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 911
    .line 912
    const-string v5, "svc wifi "

    .line 913
    .line 914
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v5

    .line 918
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 919
    .line 920
    .line 921
    invoke-static {v5}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 922
    .line 923
    .line 924
    move-result-object v4

    .line 925
    iget v5, v4, Lfa/a0;->a:I

    .line 926
    .line 927
    if-eqz v5, :cond_24

    .line 928
    .line 929
    new-instance v0, Ljava/lang/Exception;

    .line 930
    .line 931
    new-instance v5, Ljava/lang/StringBuilder;

    .line 932
    .line 933
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 934
    .line 935
    .line 936
    invoke-virtual {v4}, Lfa/a0;->a()Ljava/lang/String;

    .line 937
    .line 938
    .line 939
    move-result-object v3

    .line 940
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v3

    .line 947
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 948
    .line 949
    .line 950
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 951
    .line 952
    .line 953
    goto :goto_11

    .line 954
    :cond_24
    const-string v3, "svc data "

    .line 955
    .line 956
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v3

    .line 960
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 961
    .line 962
    .line 963
    const-string v3, "svc ethernet "

    .line 964
    .line 965
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 970
    .line 971
    .line 972
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 973
    .line 974
    .line 975
    :goto_11
    return-void

    .line 976
    :pswitch_3
    move v4, v8

    .line 977
    sget v3, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 978
    .line 979
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 980
    .line 981
    if-eqz v4, :cond_25

    .line 982
    .line 983
    const-string v5, "true"

    .line 984
    .line 985
    goto :goto_12

    .line 986
    :cond_25
    const-string v5, "false"

    .line 987
    .line 988
    :goto_12
    const-string v6, "setprop sys.adb.authed "

    .line 989
    .line 990
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v5

    .line 994
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 995
    .line 996
    .line 997
    invoke-static {v5}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 998
    .line 999
    .line 1000
    const-string v3, "1"

    .line 1001
    .line 1002
    if-eqz v4, :cond_26

    .line 1003
    .line 1004
    move-object v5, v3

    .line 1005
    goto :goto_13

    .line 1006
    :cond_26
    move-object v5, v0

    .line 1007
    :goto_13
    const-string v6, "setprop ro.adb.secure "

    .line 1008
    .line 1009
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v5

    .line 1013
    invoke-static {v5}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v5

    .line 1017
    iget v5, v5, Lfa/a0;->a:I

    .line 1018
    .line 1019
    const-string v7, "\u4fee\u6539\u6210\u529f"

    .line 1020
    .line 1021
    if-nez v5, :cond_27

    .line 1022
    .line 1023
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1024
    .line 1025
    .line 1026
    goto :goto_14

    .line 1027
    :cond_27
    if-eqz v4, :cond_28

    .line 1028
    .line 1029
    move-object v0, v3

    .line 1030
    :cond_28
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v0

    .line 1034
    const/4 v3, 0x1

    .line 1035
    new-array v3, v3, [Ljava/lang/String;

    .line 1036
    .line 1037
    const/4 v4, 0x0

    .line 1038
    aput-object v0, v3, v4

    .line 1039
    .line 1040
    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v0

    .line 1044
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    invoke-virtual {v0}, Landroidx/room/s;->q()Z

    .line 1049
    .line 1050
    .line 1051
    move-result v0

    .line 1052
    if-eqz v0, :cond_29

    .line 1053
    .line 1054
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1055
    .line 1056
    .line 1057
    goto :goto_14

    .line 1058
    :cond_29
    const-string v0, "\u4fee\u6539\u5931\u8d25\uff1a\u65e0\u6743\u9650\u4fee\u6539"

    .line 1059
    .line 1060
    invoke-static {v0, v4}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 1061
    .line 1062
    .line 1063
    :goto_14
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1064
    .line 1065
    .line 1066
    return-void

    .line 1067
    :pswitch_4
    move v4, v8

    .line 1068
    sget v3, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 1069
    .line 1070
    :try_start_5
    const-string v3, "persist.service.adb.button.visible"

    .line 1071
    .line 1072
    const-string v5, "ON"

    .line 1073
    .line 1074
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    .line 1076
    .line 1077
    const-string v3, "service.adb.tcp.port"

    .line 1078
    .line 1079
    if-eqz v4, :cond_2a

    .line 1080
    .line 1081
    const-string v0, "5555"

    .line 1082
    .line 1083
    goto :goto_15

    .line 1084
    :catch_4
    move-exception v0

    .line 1085
    goto :goto_16

    .line 1086
    :cond_2a
    :goto_15
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    .line 1088
    .line 1089
    const-string v0, "ctl.restart"

    .line 1090
    .line 1091
    const-string v3, "adbd"

    .line 1092
    .line 1093
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    .line 1095
    .line 1096
    const-string v0, "\u8bbe\u7f6e\u5b8c\u6210"

    .line 1097
    .line 1098
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    if-eqz v4, :cond_2b

    .line 1102
    .line 1103
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 1104
    .line 1105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1106
    .line 1107
    .line 1108
    invoke-static {}, La2/w0;->P()Z

    .line 1109
    .line 1110
    .line 1111
    move-result v0

    .line 1112
    if-nez v0, :cond_2b

    .line 1113
    .line 1114
    const-wide/16 v3, 0x7d0

    .line 1115
    .line 1116
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 1117
    .line 1118
    .line 1119
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 1120
    .line 1121
    const/4 v3, 0x0

    .line 1122
    invoke-virtual {v0, v3}, Lfa/j;->h(Lua/h6;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1123
    .line 1124
    .line 1125
    goto :goto_17

    .line 1126
    :goto_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1127
    .line 1128
    .line 1129
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    const-string v4, "\u9519\u8bef\uff1a"

    .line 1132
    .line 1133
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1134
    .line 1135
    .line 1136
    invoke-static {v0, v3}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 1137
    .line 1138
    .line 1139
    :cond_2b
    :goto_17
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1140
    .line 1141
    .line 1142
    return-void

    .line 1143
    :pswitch_5
    move v4, v8

    .line 1144
    sget-object v0, Lfa/a;->b:Lfa/e0;

    .line 1145
    .line 1146
    const-string v3, "setprop service.adb.tcp.port 5555"

    .line 1147
    .line 1148
    const-wide/16 v5, 0xbb8

    .line 1149
    .line 1150
    if-nez v4, :cond_2c

    .line 1151
    .line 1152
    const-string v7, "persist.adb.tcpip 5555"

    .line 1153
    .line 1154
    invoke-virtual {v0, v5, v6, v7}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v0, v5, v6, v3}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 1158
    .line 1159
    .line 1160
    :cond_2c
    if-eqz v4, :cond_2d

    .line 1161
    .line 1162
    goto :goto_18

    .line 1163
    :cond_2d
    const-string v3, "setprop persist.adb.tcp.port 5555"

    .line 1164
    .line 1165
    :goto_18
    invoke-virtual {v0, v5, v6, v3}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v0

    .line 1169
    iget v3, v0, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1170
    .line 1171
    if-nez v3, :cond_2e

    .line 1172
    .line 1173
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1174
    .line 1175
    .line 1176
    goto :goto_19

    .line 1177
    :cond_2e
    new-instance v3, Ljava/lang/Exception;

    .line 1178
    .line 1179
    invoke-virtual {v0}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v0

    .line 1183
    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual {v2, v3}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1187
    .line 1188
    .line 1189
    :goto_19
    return-void

    .line 1190
    nop

    .line 1191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
