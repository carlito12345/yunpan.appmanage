.class public final Lcom/yunpan/appmanage/carsdk/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/carsdk/f;->a:I

    iput-object p2, p0, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget v3, p0, Lcom/yunpan/appmanage/carsdk/f;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    const-string v3, "\u65e0\u6cd5\u7ed1\u5b9a\uff1a"

    .line 11
    .line 12
    sget v4, Lx8/b;->e:I

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "com.iflytek.autofly.voicecore.aidl.IEventBus"

    .line 18
    .line 19
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    instance-of v4, v0, Lx8/c;

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    check-cast v0, Lx8/c;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lx8/a;

    .line 33
    .line 34
    invoke-direct {v0, p2}, Lx8/a;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object p2, p0, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p2, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;

    .line 40
    .line 41
    iput-object v0, p2, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->F:Lx8/c;

    .line 42
    .line 43
    const-string v0, "\u8fde\u63a5\u6210\u529f"

    .line 44
    .line 45
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    :try_start_0
    iget-object v0, p2, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->F:Lx8/c;

    .line 49
    .line 50
    iget-object v4, p2, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->H:Lua/o7;

    .line 51
    .line 52
    check-cast v0, Lx8/a;

    .line 53
    .line 54
    invoke-virtual {v0, v4}, Lx8/a;->k(Lua/o7;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v4}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    new-instance v0, Lua/n7;

    .line 68
    .line 69
    invoke-direct {v0, p0, v1}, Lua/n7;-><init>(Lcom/yunpan/appmanage/carsdk/f;I)V

    .line 70
    .line 71
    .line 72
    :try_start_1
    iget-object v1, p2, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->F:Lx8/c;

    .line 73
    .line 74
    check-cast v1, Lx8/a;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lx8/a;->j(Lua/n7;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catch_1
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v1}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 87
    .line 88
    .line 89
    :goto_2
    new-instance v0, Lua/n7;

    .line 90
    .line 91
    invoke-direct {v0, p0, v2}, Lua/n7;-><init>(Lcom/yunpan/appmanage/carsdk/f;I)V

    .line 92
    .line 93
    .line 94
    :try_start_2
    iget-object p2, p2, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->F:Lx8/c;

    .line 95
    .line 96
    check-cast p2, Lx8/a;

    .line 97
    .line 98
    invoke-virtual {p2, v0}, Lx8/a;->h(Lua/n7;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :catch_2
    move-exception p2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p2, v0}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 109
    .line 110
    .line 111
    :goto_3
    new-instance p2, Lcom/yunpan/appmanage/carsdk/h;

    .line 112
    .line 113
    invoke-direct {p2, p1}, Lcom/yunpan/appmanage/carsdk/h;-><init>(I)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_0
    invoke-static {p2}, Loa/e;->h(Landroid/os/IBinder;)Loa/d;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object p2, p0, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p2, Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 124
    .line 125
    iput-object p1, p2, Lcom/yunpan/appmanage/ui/ActivityStudy;->G:Loa/d;

    .line 126
    .line 127
    :try_start_3
    new-instance p1, Lv9/a;

    .line 128
    .line 129
    invoke-direct {p1}, Lv9/a;-><init>()V

    .line 130
    .line 131
    .line 132
    iput v2, p1, Lv9/a;->b:I

    .line 133
    .line 134
    new-instance v0, Loa/g;

    .line 135
    .line 136
    iget-object v1, p2, Lcom/yunpan/appmanage/ui/ActivityStudy;->G:Loa/d;

    .line 137
    .line 138
    invoke-interface {v1}, Loa/d;->f()Loa/b;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-direct {v0, v1}, Loa/g;-><init>(Loa/b;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0}, Lv9/a;->b(Ljava/lang/Process;)Lv9/i;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iput-object p1, p2, Lcom/yunpan/appmanage/ui/ActivityStudy;->F:Lv9/i;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 150
    .line 151
    iget p1, p1, Lv9/i;->c:I

    .line 152
    .line 153
    if-lt p1, v2, :cond_2

    .line 154
    .line 155
    :try_start_4
    iget-object p1, p2, Lcom/yunpan/appmanage/ui/ActivityStudy;->G:Loa/d;

    .line 156
    .line 157
    invoke-interface {p1}, Loa/d;->e()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 158
    .line 159
    .line 160
    :catch_3
    const-string p1, "\u53ef\u4ee5\u83b7\u53d6root\u6743\u9650"

    .line 161
    .line 162
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_2
    const-string p1, "\u65e0\u6cd5\u83b7\u53d6root\u6743\u9650"

    .line 167
    .line 168
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :catch_4
    const-string p1, "\u5931\u8d25\uff1a\u4e0d\u9002\u5408\u60a8\u7684\u7cfb\u7edf"

    .line 173
    .line 174
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    :goto_4
    return-void

    .line 178
    :pswitch_1
    iget-object v3, p0, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 181
    .line 182
    sget v4, Lp9/c;->e:I

    .line 183
    .line 184
    const-string v4, "com.szlanyou.otaupdate.aidl.IRemoteOTAUpdate"

    .line 185
    .line 186
    if-nez p2, :cond_3

    .line 187
    .line 188
    move-object v5, v0

    .line 189
    goto :goto_6

    .line 190
    :cond_3
    invoke-interface {p2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    if-eqz v5, :cond_5

    .line 195
    .line 196
    instance-of v6, v5, Lp9/d;

    .line 197
    .line 198
    if-nez v6, :cond_4

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_4
    check-cast v5, Lp9/d;

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_5
    :goto_5
    new-instance v5, Lp9/b;

    .line 205
    .line 206
    invoke-direct {v5, p2}, Lp9/b;-><init>(Landroid/os/IBinder;)V

    .line 207
    .line 208
    .line 209
    :goto_6
    :try_start_5
    iget-object p2, v3, Lcom/yunpan/appmanage/ui/ActivityNissan;->H:Lua/x4;

    .line 210
    .line 211
    move-object v6, v5

    .line 212
    check-cast v6, Lp9/b;

    .line 213
    .line 214
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 222
    .line 223
    .line 224
    move-result-object v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 225
    :try_start_6
    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    if-eqz p2, :cond_6

    .line 229
    .line 230
    goto :goto_7

    .line 231
    :cond_6
    move-object p2, v0

    .line 232
    :goto_7
    invoke-virtual {v7, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 233
    .line 234
    .line 235
    iget-object p2, v6, Lp9/b;->e:Landroid/os/IBinder;

    .line 236
    .line 237
    invoke-interface {p2, v2, v7, v8, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 238
    .line 239
    .line 240
    invoke-virtual {v8}, Landroid/os/Parcel;->readException()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 241
    .line 242
    .line 243
    :try_start_7
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 247
    .line 248
    .line 249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 254
    .line 255
    .line 256
    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 257
    :try_start_8
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object v6, v6, Lp9/b;->e:Landroid/os/IBinder;

    .line 261
    .line 262
    const/4 v7, 0x4

    .line 263
    invoke-interface {v6, v7, p2, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 267
    .line 268
    .line 269
    :try_start_9
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 273
    .line 274
    .line 275
    goto :goto_9

    .line 276
    :catchall_0
    move-exception v6

    .line 277
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 281
    .line 282
    .line 283
    throw v6

    .line 284
    :catchall_1
    move-exception p2

    .line 285
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 289
    .line 290
    .line 291
    throw p2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 292
    :catch_5
    :try_start_a
    iget-object p2, v3, Lcom/yunpan/appmanage/ui/ActivityNissan;->H:Lua/x4;

    .line 293
    .line 294
    check-cast v5, Lp9/b;

    .line 295
    .line 296
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 304
    .line 305
    .line 306
    move-result-object v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 307
    :try_start_b
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    if-eqz p2, :cond_7

    .line 311
    .line 312
    move-object v0, p2

    .line 313
    :cond_7
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 314
    .line 315
    .line 316
    iget-object p2, v5, Lp9/b;->e:Landroid/os/IBinder;

    .line 317
    .line 318
    invoke-interface {p2, p1, v2, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 322
    .line 323
    .line 324
    :try_start_c
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 328
    .line 329
    .line 330
    goto :goto_8

    .line 331
    :catchall_2
    move-exception p1

    .line 332
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 336
    .line 337
    .line 338
    throw p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 339
    :catch_6
    :goto_8
    const-string p1, "\u7ed1\u5b9a\u670d\u52a1\u5931\u8d25"

    .line 340
    .line 341
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 342
    .line 343
    .line 344
    :goto_9
    return-void

    .line 345
    :pswitch_2
    const-string p1, "bind success! service="

    .line 346
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    const-string v2, "service="

    .line 350
    .line 351
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v2, Ll6/d;

    .line 357
    .line 358
    iget-object v3, v2, Ll6/d;->c:Ll6/g;

    .line 359
    .line 360
    iget-object v3, v3, Ll6/g;->g:Ll6/h;

    .line 361
    .line 362
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-static {v0}, Lif/a;->o0(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    :try_start_d
    iget-object v0, v2, Ll6/d;->f:Ll6/b;

    .line 377
    .line 378
    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 379
    .line 380
    .line 381
    sget v0, Lj6/b;->e:I

    .line 382
    .line 383
    const-string v0, "com.desaysv.ivi.vdb.IVDBus"

    .line 384
    .line 385
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    if-eqz v0, :cond_8

    .line 390
    .line 391
    instance-of v1, v0, Lj6/c;

    .line 392
    .line 393
    if-eqz v1, :cond_8

    .line 394
    .line 395
    check-cast v0, Lj6/c;

    .line 396
    .line 397
    goto :goto_a

    .line 398
    :cond_8
    new-instance v0, Lj6/a;

    .line 399
    .line 400
    invoke-direct {v0, p2}, Lj6/a;-><init>(Landroid/os/IBinder;)V

    .line 401
    .line 402
    .line 403
    :goto_a
    iput-object v0, v2, Ll6/d;->e:Lj6/c;

    .line 404
    .line 405
    new-instance p2, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    iget-object p1, v2, Ll6/d;->c:Ll6/g;

    .line 411
    .line 412
    iget-object p1, p1, Ll6/g;->g:Ll6/h;

    .line 413
    .line 414
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    invoke-static {p1}, Lif/a;->o0(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2}, Ll6/d;->f()V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v2}, Ll6/d;->d()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 432
    .line 433
    .line 434
    goto :goto_b

    .line 435
    :catch_7
    move-exception p1

    .line 436
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object p2

    .line 440
    invoke-static {p2}, Lif/a;->n0(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 444
    .line 445
    .line 446
    :goto_b
    return-void

    .line 447
    :pswitch_3
    :try_start_e
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast p1, Lfa/e;

    .line 450
    .line 451
    invoke-static {p2}, Loa/e;->h(Landroid/os/IBinder;)Loa/d;

    .line 452
    .line 453
    .line 454
    move-result-object p2

    .line 455
    iput-object p2, p1, Lfa/e;->f:Loa/d;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 456
    .line 457
    goto :goto_c

    .line 458
    :catch_8
    move-exception p1

    .line 459
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 460
    .line 461
    .line 462
    :goto_c
    return-void

    .line 463
    :pswitch_4
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast p1, Lcom/yunpan/appmanage/carsdk/k0;

    .line 466
    .line 467
    iget-object p1, p1, Lcom/yunpan/appmanage/carsdk/k0;->e:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast p1, Landroid/os/Handler;

    .line 470
    .line 471
    new-instance p2, Lcom/yunpan/appmanage/carsdk/i0;

    .line 472
    .line 473
    invoke-direct {p2, p0, v2}, Lcom/yunpan/appmanage/carsdk/i0;-><init>(Lcom/yunpan/appmanage/carsdk/f;I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 477
    .line 478
    .line 479
    return-void

    .line 480
    :pswitch_5
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast p1, Lcom/yunpan/appmanage/carsdk/r;

    .line 483
    .line 484
    iget-object p1, p1, Lcom/yunpan/appmanage/carsdk/r;->d:Landroid/os/Handler;

    .line 485
    .line 486
    new-instance p2, Lcom/yunpan/appmanage/carsdk/q;

    .line 487
    .line 488
    invoke-direct {p2, p0, v1}, Lcom/yunpan/appmanage/carsdk/q;-><init>(Lcom/yunpan/appmanage/carsdk/f;I)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 492
    .line 493
    .line 494
    return-void

    .line 495
    :pswitch_6
    sget p1, Lc5/b;->e:I

    .line 496
    .line 497
    if-nez p2, :cond_9

    .line 498
    .line 499
    goto :goto_d

    .line 500
    :cond_9
    const-string p1, "com.baidu.naviauto.imaplbs.IMapAutoAPIService"

    .line 501
    .line 502
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    if-eqz p1, :cond_a

    .line 507
    .line 508
    instance-of v0, p1, Lc5/c;

    .line 509
    .line 510
    if-eqz v0, :cond_a

    .line 511
    .line 512
    move-object v0, p1

    .line 513
    check-cast v0, Lc5/c;

    .line 514
    .line 515
    goto :goto_d

    .line 516
    :cond_a
    new-instance v0, Lc5/a;

    .line 517
    .line 518
    invoke-direct {v0, p2}, Lc5/a;-><init>(Landroid/os/IBinder;)V

    .line 519
    .line 520
    .line 521
    :goto_d
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast p1, Lcom/yunpan/appmanage/carsdk/i;

    .line 524
    .line 525
    iput-object v0, p1, Lcom/yunpan/appmanage/carsdk/i;->a:Lc5/c;

    .line 526
    .line 527
    iput-boolean v2, p1, Lcom/yunpan/appmanage/carsdk/i;->b:Z

    .line 528
    .line 529
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 530
    .line 531
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    :try_start_f
    iget-object v0, p1, Lcom/yunpan/appmanage/carsdk/i;->a:Lc5/c;

    .line 535
    .line 536
    const-string v1, "on_sync_connect_state"

    .line 537
    .line 538
    check-cast v0, Lc5/a;

    .line 539
    .line 540
    invoke-virtual {v0, v1}, Lc5/a;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    iput-object v0, p1, Lcom/yunpan/appmanage/carsdk/i;->d:Ljava/lang/String;

    .line 545
    .line 546
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_9

    .line 547
    .line 548
    .line 549
    goto :goto_e

    .line 550
    :catch_9
    move-exception p1

    .line 551
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 552
    .line 553
    .line 554
    :goto_e
    return-void

    .line 555
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/yunpan/appmanage/carsdk/f;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->F:Lx8/c;

    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    const-string p1, "root\u670d\u52a1\u5df2\u5173\u95ed"

    .line 15
    .line 16
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityStudy;->G:Loa/d;

    .line 25
    .line 26
    :pswitch_1
    return-void

    .line 27
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "service="

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Ll6/d;

    .line 37
    .line 38
    iget-object v1, v0, Ll6/d;->c:Ll6/g;

    .line 39
    .line 40
    iget-object v1, v1, Ll6/g;->g:Ll6/h;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lif/a;->o0(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    iput-object p1, v0, Ll6/d;->e:Lj6/c;

    .line 58
    .line 59
    :pswitch_3
    return-void

    .line 60
    :pswitch_4
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Lcom/yunpan/appmanage/carsdk/k0;

    .line 63
    .line 64
    iget-boolean v0, p1, Lcom/yunpan/appmanage/carsdk/k0;->a:Z

    .line 65
    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p1, Lcom/yunpan/appmanage/carsdk/k0;->e:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p1, Landroid/os/Handler;

    .line 72
    .line 73
    new-instance v0, Lcom/yunpan/appmanage/carsdk/i0;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-direct {v0, p0, v1}, Lcom/yunpan/appmanage/carsdk/i0;-><init>(Lcom/yunpan/appmanage/carsdk/f;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void

    .line 83
    :pswitch_5
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p1, Lcom/yunpan/appmanage/carsdk/r;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/yunpan/appmanage/carsdk/r;->d:Landroid/os/Handler;

    .line 88
    .line 89
    new-instance v0, Lcom/yunpan/appmanage/carsdk/q;

    .line 90
    .line 91
    const/4 v1, 0x1

    .line 92
    invoke-direct {v0, p0, v1}, Lcom/yunpan/appmanage/carsdk/q;-><init>(Lcom/yunpan/appmanage/carsdk/f;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_6
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p1, Lcom/yunpan/appmanage/carsdk/i;

    .line 102
    .line 103
    const/4 v0, 0x0

    .line 104
    iput-object v0, p1, Lcom/yunpan/appmanage/carsdk/i;->a:Lc5/c;

    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p1, Lcom/yunpan/appmanage/carsdk/i;->b:Z

    .line 108
    .line 109
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
