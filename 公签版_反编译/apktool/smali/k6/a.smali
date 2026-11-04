.class public final Lk6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lk6/a;

.field public static final c:Ljava/lang/Object;


# instance fields
.field public final a:Ll6/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lk6/a;->c:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ll6/f;

    .line 5
    .line 6
    invoke-direct {v0}, Ll6/f;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lk6/a;->a:Ll6/f;

    .line 10
    .line 11
    return-void
.end method

.method public static a()Lk6/a;
    .locals 2

    .line 1
    sget-object v0, Lk6/a;->b:Lk6/a;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lk6/a;->c:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lk6/a;->b:Lk6/a;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lk6/a;

    .line 13
    .line 14
    invoke-direct {v1}, Lk6/a;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lk6/a;->b:Lk6/a;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lk6/a;->b:Lk6/a;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public final b(Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lk6/a;->a:Ll6/f;

    .line 4
    .line 5
    iget-boolean v2, v1, Ll6/f;->c:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const-string v1, "vdb has inited!"

    .line 10
    .line 11
    invoke-static {v1}, Lif/a;->o0(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    const/4 v2, 0x1

    .line 17
    iput-boolean v2, v1, Ll6/f;->c:Z

    .line 18
    .line 19
    move-object/from16 v3, p1

    .line 20
    .line 21
    iput-object v3, v1, Ll6/f;->e:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v4, "client="

    .line 26
    .line 27
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v4, v1, Ll6/f;->e:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;

    .line 33
    .line 34
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3}, Lif/a;->o0(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v4, "CORE_POOL_SIZE="

    .line 51
    .line 52
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget v4, v1, Ll6/f;->a:I

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v3}, Lif/a;->o0(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v4, "MAXIMUM_POOL_SIZE="

    .line 70
    .line 71
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget v4, v1, Ll6/f;->b:I

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v3}, Lif/a;->o0(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 87
    .line 88
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 89
    .line 90
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 91
    .line 92
    const/16 v4, 0x80

    .line 93
    .line 94
    invoke-direct {v10, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 95
    .line 96
    .line 97
    const-wide/16 v7, 0x1

    .line 98
    .line 99
    iget v5, v1, Ll6/f;->a:I

    .line 100
    .line 101
    iget v6, v1, Ll6/f;->b:I

    .line 102
    .line 103
    move-object v4, v3

    .line 104
    invoke-direct/range {v4 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 105
    .line 106
    .line 107
    iput-object v3, v1, Ll6/f;->d:Ljava/lang/Object;

    .line 108
    .line 109
    iget-object v3, v1, Ll6/f;->e:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;

    .line 112
    .line 113
    sget-object v4, Ll6/i;->a:Ljava/util/ArrayList;

    .line 114
    .line 115
    const-string v4, "start"

    .line 116
    .line 117
    invoke-static {v4}, Lif/a;->o0(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v4, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    new-instance v13, Ll6/g;

    .line 126
    .line 127
    sget-object v6, Ll6/h;->b:Ll6/h;

    .line 128
    .line 129
    const-string v9, "com.desaysv.ivi.vds.vehicle.service.VehicleService"

    .line 130
    .line 131
    const-string v10, ""

    .line 132
    .line 133
    const/4 v12, 0x1

    .line 134
    const/4 v7, 0x1

    .line 135
    const-string v8, "android.hardware.automotive.vehicle@2.0-service"

    .line 136
    .line 137
    const-string v11, ""

    .line 138
    .line 139
    move-object v5, v13

    .line 140
    invoke-direct/range {v5 .. v12}, Ll6/g;-><init>(Ll6/h;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    new-instance v5, Ll6/g;

    .line 147
    .line 148
    sget-object v15, Ll6/h;->c:Ll6/h;

    .line 149
    .line 150
    const-string v16, "com.desaysv.ivi.vds.sms"

    .line 151
    .line 152
    const-string v17, "com.desaysv.ivi.vds.sms.service.SmsService"

    .line 153
    .line 154
    const-string v18, "action.desaysv.ivi.vds.sms.SERVICE"

    .line 155
    .line 156
    const-string v19, "action.desaysv.ivi.vds.sms.REBOOT"

    .line 157
    .line 158
    move-object v14, v5

    .line 159
    invoke-direct/range {v14 .. v19}, Ll6/g;-><init>(Ll6/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    new-instance v5, Ll6/g;

    .line 166
    .line 167
    sget-object v7, Ll6/h;->d:Ll6/h;

    .line 168
    .line 169
    const-string v8, "com.desaysv.ivi.vds.setting"

    .line 170
    .line 171
    const-string v9, "com.desaysv.ivi.vds.setting.service.SettingService"

    .line 172
    .line 173
    const-string v10, "action.desaysv.ivi.vds.setting.SERVICE"

    .line 174
    .line 175
    const-string v11, "action.desaysv.ivi.vds.setting.REBOOT"

    .line 176
    .line 177
    move-object v6, v5

    .line 178
    invoke-direct/range {v6 .. v11}, Ll6/g;-><init>(Ll6/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    new-instance v5, Ll6/g;

    .line 185
    .line 186
    sget-object v13, Ll6/h;->e:Ll6/h;

    .line 187
    .line 188
    const-string v14, "com.desaysv.ivi.vds.carstate"

    .line 189
    .line 190
    const-string v15, "com.desaysv.ivi.vds.carstate.service.CarStateService"

    .line 191
    .line 192
    const-string v16, "action.desaysv.ivi.vds.carstate.SERVICE"

    .line 193
    .line 194
    const-string v17, "action.desaysv.ivi.vds.carstate.REBOOT"

    .line 195
    .line 196
    move-object v12, v5

    .line 197
    invoke-direct/range {v12 .. v17}, Ll6/g;-><init>(Ll6/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    new-instance v5, Ll6/g;

    .line 204
    .line 205
    sget-object v7, Ll6/h;->f:Ll6/h;

    .line 206
    .line 207
    const-string v8, "com.desaysv.ivi.vds.bt"

    .line 208
    .line 209
    const-string v9, "com.desaysv.ivi.vds.bt.service.BTService"

    .line 210
    .line 211
    const-string v10, "action.desaysv.ivi.vds.bt.SERVICE"

    .line 212
    .line 213
    const-string v11, "action.desaysv.ivi.vds.bt.REBOOT"

    .line 214
    .line 215
    move-object v6, v5

    .line 216
    invoke-direct/range {v6 .. v11}, Ll6/g;-><init>(Ll6/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    new-instance v5, Ll6/g;

    .line 223
    .line 224
    sget-object v13, Ll6/h;->g:Ll6/h;

    .line 225
    .line 226
    const-string v14, "com.desaysv.ivi.vds.carinfo"

    .line 227
    .line 228
    const-string v15, "com.desaysv.ivi.vds.carinfo.service.CarInfoService"

    .line 229
    .line 230
    const-string v16, "action.desaysv.ivi.vds.carinfo.SERVICE"

    .line 231
    .line 232
    const-string v17, "action.desaysv.ivi.vds.carinfo.REBOOT"

    .line 233
    .line 234
    move-object v12, v5

    .line 235
    invoke-direct/range {v12 .. v17}, Ll6/g;-><init>(Ll6/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    new-instance v5, Ll6/g;

    .line 242
    .line 243
    sget-object v7, Ll6/h;->h:Ll6/h;

    .line 244
    .line 245
    const-string v8, "com.desaysv.ivi.vds.media"

    .line 246
    .line 247
    const-string v9, "com.desaysv.ivi.vds.media.service.MediaService"

    .line 248
    .line 249
    const-string v10, "action.desaysv.ivi.vds.media.SERVICE"

    .line 250
    .line 251
    const-string v11, "action.desaysv.ivi.vds.media.REBOOT"

    .line 252
    .line 253
    move-object v6, v5

    .line 254
    invoke-direct/range {v6 .. v11}, Ll6/g;-><init>(Ll6/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    new-instance v5, Ll6/g;

    .line 261
    .line 262
    sget-object v13, Ll6/h;->i:Ll6/h;

    .line 263
    .line 264
    const-string v14, "com.desaysv.ivi.vds.tsp"

    .line 265
    .line 266
    const-string v15, "com.desaysv.ivi.vds.tsp.service.TspService"

    .line 267
    .line 268
    const-string v16, "action.desaysv.ivi.vds.tsp.SERVICE"

    .line 269
    .line 270
    const-string v17, "action.desaysv.ivi.vds.tsp.REBOOT"

    .line 271
    .line 272
    move-object v12, v5

    .line 273
    invoke-direct/range {v12 .. v17}, Ll6/g;-><init>(Ll6/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    new-instance v5, Ll6/g;

    .line 280
    .line 281
    sget-object v7, Ll6/h;->j:Ll6/h;

    .line 282
    .line 283
    const-string v8, "com.desaysv.ivi.vds.vr"

    .line 284
    .line 285
    const-string v9, "com.desaysv.ivi.vds.vr.service.VRService"

    .line 286
    .line 287
    const-string v10, "action.desaysv.ivi.vds.vr.SERVICE"

    .line 288
    .line 289
    const-string v11, "action.desaysv.ivi.vds.vr.REBOOT"

    .line 290
    .line 291
    move-object v6, v5

    .line 292
    invoke-direct/range {v6 .. v11}, Ll6/g;-><init>(Ll6/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    new-instance v5, Ll6/g;

    .line 299
    .line 300
    sget-object v13, Ll6/h;->k:Ll6/h;

    .line 301
    .line 302
    const-string v14, "com.desaysv.ivi.vds.navi"

    .line 303
    .line 304
    const-string v15, "com.desaysv.ivi.vds.navi.service.NaviService"

    .line 305
    .line 306
    const-string v16, "action.desaysv.ivi.vds.navi.SERVICE"

    .line 307
    .line 308
    const-string v17, "action.desaysv.ivi.vds.navi.REBOOT"

    .line 309
    .line 310
    move-object v12, v5

    .line 311
    invoke-direct/range {v12 .. v17}, Ll6/g;-><init>(Ll6/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    new-instance v5, Ll6/g;

    .line 318
    .line 319
    sget-object v7, Ll6/h;->l:Ll6/h;

    .line 320
    .line 321
    const-string v8, "com.desaysv.ivi.vds.upgrade"

    .line 322
    .line 323
    const-string v9, "com.desaysv.ivi.vds.upgrade.service.UpgradeService"

    .line 324
    .line 325
    const-string v10, "action.desaysv.ivi.vds.upgrade.SERVICE"

    .line 326
    .line 327
    const-string v11, "action.desaysv.ivi.vds.upgrade.REBOOT"

    .line 328
    .line 329
    move-object v6, v5

    .line 330
    invoke-direct/range {v6 .. v11}, Ll6/g;-><init>(Ll6/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    new-instance v5, Ll6/g;

    .line 337
    .line 338
    sget-object v13, Ll6/h;->m:Ll6/h;

    .line 339
    .line 340
    const-string v14, "com.desaysv.ivi.vds.carlan"

    .line 341
    .line 342
    const-string v15, "com.desaysv.ivi.vds.carlan.service.CarLanService"

    .line 343
    .line 344
    const-string v16, "action.desaysv.ivi.vds.carlan.SERVICE"

    .line 345
    .line 346
    const-string v17, "action.desaysv.ivi.vds.carlan.REBOOT"

    .line 347
    .line 348
    move-object v12, v5

    .line 349
    invoke-direct/range {v12 .. v17}, Ll6/g;-><init>(Ll6/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    new-instance v5, Ll6/g;

    .line 356
    .line 357
    sget-object v7, Ll6/h;->n:Ll6/h;

    .line 358
    .line 359
    const-string v8, "com.desaysv.ivi.vds.rvc"

    .line 360
    .line 361
    const-string v9, "com.desaysv.ivi.vds.rvc.service.RvcService"

    .line 362
    .line 363
    const-string v10, "action.desaysv.ivi.vds.rvc.SERVICE"

    .line 364
    .line 365
    const-string v11, "action.desaysv.ivi.vds.rvc.REBOOT"

    .line 366
    .line 367
    move-object v6, v5

    .line 368
    invoke-direct/range {v6 .. v11}, Ll6/g;-><init>(Ll6/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    new-instance v5, Ll6/g;

    .line 375
    .line 376
    sget-object v13, Ll6/h;->p:Ll6/h;

    .line 377
    .line 378
    const-string v14, "com.desaysv.service.link"

    .line 379
    .line 380
    const-string v15, "com.desaysv.service.link.vds.PhoneLinkVDService"

    .line 381
    .line 382
    const-string v16, "com.desaysv.service.link.phonelink.SERVICE"

    .line 383
    .line 384
    const-string v17, "com.desaysv.service.link.phonelink.REBOOT"

    .line 385
    .line 386
    move-object v12, v5

    .line 387
    invoke-direct/range {v12 .. v17}, Ll6/g;-><init>(Ll6/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    new-instance v5, Ll6/g;

    .line 394
    .line 395
    sget-object v19, Ll6/h;->q:Ll6/h;

    .line 396
    .line 397
    const-string v22, "com.desaysv.ivi.vds.vdev.service.VehicleDevice"

    .line 398
    .line 399
    const-string v23, ""

    .line 400
    .line 401
    const/16 v25, 0x1

    .line 402
    .line 403
    const/16 v20, 0x1

    .line 404
    .line 405
    const-string v21, "com.desaysv.ivi.vds.vdev"

    .line 406
    .line 407
    const-string v24, ""

    .line 408
    .line 409
    move-object/from16 v18, v5

    .line 410
    .line 411
    invoke-direct/range {v18 .. v25}, Ll6/g;-><init>(Ll6/h;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    new-instance v5, Ll6/g;

    .line 418
    .line 419
    sget-object v7, Ll6/h;->r:Ll6/h;

    .line 420
    .line 421
    const-string v10, "com.desaysv.ivi.vds.dsp.service.DspService"

    .line 422
    .line 423
    const-string v11, ""

    .line 424
    .line 425
    const/4 v13, 0x1

    .line 426
    const/4 v8, 0x1

    .line 427
    const-string v9, "android.hardware.dsp@1.0-service"

    .line 428
    .line 429
    const-string v12, ""

    .line 430
    .line 431
    move-object v6, v5

    .line 432
    invoke-direct/range {v6 .. v13}, Ll6/g;-><init>(Ll6/h;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    new-instance v5, Ll6/g;

    .line 439
    .line 440
    sget-object v15, Ll6/h;->s:Ll6/h;

    .line 441
    .line 442
    const-string v18, "com.desaysv.ivi.vds.cabinlan.service.CabinLanService"

    .line 443
    .line 444
    const-string v19, ""

    .line 445
    .line 446
    const/16 v21, 0x1

    .line 447
    .line 448
    const/16 v16, 0x1

    .line 449
    .line 450
    const-string v17, "android.hardware.cabinlan@1.0-service"

    .line 451
    .line 452
    const-string v20, ""

    .line 453
    .line 454
    move-object v14, v5

    .line 455
    invoke-direct/range {v14 .. v21}, Ll6/g;-><init>(Ll6/h;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    new-instance v5, Ll6/g;

    .line 462
    .line 463
    sget-object v7, Ll6/h;->t:Ll6/h;

    .line 464
    .line 465
    const-string v10, "com.desaysv.ivi.vds.engineering.service.EngineeringService"

    .line 466
    .line 467
    const-string v11, ""

    .line 468
    .line 469
    const-string v9, "com.desaysv.ivi.engineering@1.0-service"

    .line 470
    .line 471
    const-string v12, ""

    .line 472
    .line 473
    move-object v6, v5

    .line 474
    invoke-direct/range {v6 .. v13}, Ll6/g;-><init>(Ll6/h;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    new-instance v5, Ll6/g;

    .line 481
    .line 482
    sget-object v15, Ll6/h;->v:Ll6/h;

    .line 483
    .line 484
    const-string v18, "com.desaysv.ivi.vds.watchdog.service.WatchdogService"

    .line 485
    .line 486
    const-string v19, ""

    .line 487
    .line 488
    const-string v17, "com.desaysv.ivi.watchdog@1.0-service"

    .line 489
    .line 490
    const-string v20, ""

    .line 491
    .line 492
    move-object v14, v5

    .line 493
    invoke-direct/range {v14 .. v21}, Ll6/g;-><init>(Ll6/h;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    new-instance v5, Ll6/g;

    .line 500
    .line 501
    sget-object v7, Ll6/h;->w:Ll6/h;

    .line 502
    .line 503
    const-string v10, "com.desaysv.ivi.vds.log.service.LogService"

    .line 504
    .line 505
    const-string v11, "action.desaysv.ivi.vds.log.SERVICE"

    .line 506
    .line 507
    const/4 v13, 0x0

    .line 508
    const/4 v8, 0x0

    .line 509
    const-string v9, "com.desaysv.ivi.vds.log"

    .line 510
    .line 511
    const-string v12, "action.desaysv.ivi.vds.log.REBOOT"

    .line 512
    .line 513
    move-object v6, v5

    .line 514
    invoke-direct/range {v6 .. v13}, Ll6/g;-><init>(Ll6/h;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    new-instance v5, Ll6/g;

    .line 521
    .line 522
    sget-object v15, Ll6/h;->x:Ll6/h;

    .line 523
    .line 524
    const-string v18, "com.desaysv.ivi.vds.projection.service.ProjectionService"

    .line 525
    .line 526
    const-string v19, "action.desaysv.ivi.vds.projection.SERVICE"

    .line 527
    .line 528
    const/16 v21, 0x0

    .line 529
    .line 530
    const/16 v16, 0x0

    .line 531
    .line 532
    const-string v17, "com.desaysv.ivi.vds.projection"

    .line 533
    .line 534
    const-string v20, "action.desaysv.ivi.vds.projection.REBOOT"

    .line 535
    .line 536
    move-object v14, v5

    .line 537
    invoke-direct/range {v14 .. v21}, Ll6/g;-><init>(Ll6/h;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    new-instance v5, Ll6/g;

    .line 544
    .line 545
    sget-object v7, Ll6/h;->y:Ll6/h;

    .line 546
    .line 547
    const-string v10, "com.desaysv.ivi.vds.permission.service.PermissionService"

    .line 548
    .line 549
    const-string v11, "action.desaysv.ivi.vds.permission.SERVICE"

    .line 550
    .line 551
    const-string v9, "com.desaysv.ivi.vds.permission"

    .line 552
    .line 553
    const-string v12, "action.desaysv.ivi.vds.permission.REBOOT"

    .line 554
    .line 555
    move-object v6, v5

    .line 556
    invoke-direct/range {v6 .. v13}, Ll6/g;-><init>(Ll6/h;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    sget-object v5, Ll6/i;->a:Ljava/util/ArrayList;

    .line 563
    .line 564
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 565
    .line 566
    .line 567
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    const/4 v4, 0x0

    .line 572
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    check-cast v4, Ljava/util/ArrayList;

    .line 581
    .line 582
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 583
    .line 584
    .line 585
    move-result-object v3

    .line 586
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 587
    .line 588
    .line 589
    move-result v6

    .line 590
    if-eqz v6, :cond_5

    .line 591
    .line 592
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 597
    .line 598
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 599
    .line 600
    const-string v8, "com.desaysv.ivi.vds."

    .line 601
    .line 602
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 603
    .line 604
    .line 605
    move-result v7

    .line 606
    if-nez v7, :cond_2

    .line 607
    .line 608
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 609
    .line 610
    const-string v8, "com.desaysv.service.link"

    .line 611
    .line 612
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result v7

    .line 616
    if-eqz v7, :cond_1

    .line 617
    .line 618
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 619
    .line 620
    .line 621
    move-result-object v7

    .line 622
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 623
    .line 624
    .line 625
    move-result v8

    .line 626
    if-eqz v8, :cond_3

    .line 627
    .line 628
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v8

    .line 632
    check-cast v8, Ll6/g;

    .line 633
    .line 634
    iget-boolean v9, v8, Ll6/g;->a:Z

    .line 635
    .line 636
    if-eqz v9, :cond_4

    .line 637
    .line 638
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    goto :goto_1

    .line 642
    :cond_4
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 643
    .line 644
    iget-object v10, v8, Ll6/g;->c:Ljava/lang/String;

    .line 645
    .line 646
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v9

    .line 650
    if-eqz v9, :cond_3

    .line 651
    .line 652
    new-instance v7, Ljava/lang/StringBuilder;

    .line 653
    .line 654
    const-string v9, "exist packageName="

    .line 655
    .line 656
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 660
    .line 661
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v6

    .line 668
    invoke-static {v6}, Lif/a;->o0(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    iput-boolean v2, v8, Ll6/g;->a:Z

    .line 672
    .line 673
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    goto :goto_0

    .line 677
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 678
    .line 679
    const-string v3, "uninstall service list len="

    .line 680
    .line 681
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 685
    .line 686
    .line 687
    move-result v3

    .line 688
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v2

    .line 695
    invoke-static {v2}, Lif/a;->o0(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 699
    .line 700
    .line 701
    move-result-object v2

    .line 702
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 703
    .line 704
    .line 705
    move-result v3

    .line 706
    if-eqz v3, :cond_6

    .line 707
    .line 708
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    check-cast v3, Ll6/g;

    .line 713
    .line 714
    iget-object v4, v3, Ll6/g;->c:Ljava/lang/String;

    .line 715
    .line 716
    const-string v6, "uninstall service name="

    .line 717
    .line 718
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v4

    .line 722
    invoke-static {v4}, Lif/a;->o0(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    goto :goto_2

    .line 729
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 730
    .line 731
    const-string v3, "service list len="

    .line 732
    .line 733
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 737
    .line 738
    .line 739
    move-result v3

    .line 740
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    invoke-static {v2}, Lif/a;->o0(Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    const-string v2, "end"

    .line 751
    .line 752
    invoke-static {v2}, Lif/a;->o0(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v2

    .line 759
    check-cast v2, Ljava/util/ArrayList;

    .line 760
    .line 761
    iput-object v2, v1, Ll6/f;->f:Ljava/lang/Object;

    .line 762
    .line 763
    :goto_3
    return-void
.end method
