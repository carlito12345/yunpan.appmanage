.class public final synthetic Lqa/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lqa/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    const/16 v0, 0x1d

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    iget v4, p0, Lqa/e;->a:I

    .line 7
    .line 8
    packed-switch v4, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    .line 13
    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    if-lt v1, v0, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lwa/f;->a(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {p2}, Lwa/f;->a(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    :goto_0
    sub-int/2addr p1, p2

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 30
    .line 31
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :goto_1
    return p1

    .line 35
    :pswitch_0
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 36
    .line 37
    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 38
    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    if-lt v1, v0, :cond_1

    .line 42
    .line 43
    invoke-static {p1}, Lwa/f;->a(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-static {p2}, Lwa/f;->a(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    :goto_2
    sub-int/2addr p1, p2

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 54
    .line 55
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :goto_3
    return p1

    .line 59
    :pswitch_1
    check-cast p1, Lv3/g0;

    .line 60
    .line 61
    check-cast p2, Lv3/g0;

    .line 62
    .line 63
    iget v0, p2, Lv3/g0;->a:I

    .line 64
    .line 65
    iget v4, p1, Lv3/g0;->a:I

    .line 66
    .line 67
    if-ne v0, v4, :cond_2

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    goto :goto_4

    .line 71
    :cond_2
    if-ge v0, v4, :cond_3

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_3
    const/4 v1, 0x1

    .line 75
    :goto_4
    if-eqz v1, :cond_4

    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_4
    iget-object v0, p2, Lv3/g0;->c:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v1, p1, Lv3/g0;->c:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_5

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_5
    iget-object p2, p2, Lv3/g0;->d:Ljava/lang/String;

    .line 90
    .line 91
    iget-object p1, p1, Lv3/g0;->d:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    :goto_5
    return v1

    .line 98
    :pswitch_2
    check-cast p1, Lv3/g0;

    .line 99
    .line 100
    check-cast p2, Lv3/g0;

    .line 101
    .line 102
    iget v0, p2, Lv3/g0;->b:I

    .line 103
    .line 104
    iget v4, p1, Lv3/g0;->b:I

    .line 105
    .line 106
    if-ne v0, v4, :cond_6

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    goto :goto_6

    .line 110
    :cond_6
    if-ge v0, v4, :cond_7

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_7
    const/4 v1, 0x1

    .line 114
    :goto_6
    if-eqz v1, :cond_8

    .line 115
    .line 116
    goto :goto_7

    .line 117
    :cond_8
    iget-object v0, p1, Lv3/g0;->c:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v1, p2, Lv3/g0;->c:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_9

    .line 126
    .line 127
    goto :goto_7

    .line 128
    :cond_9
    iget-object p1, p1, Lv3/g0;->d:Ljava/lang/String;

    .line 129
    .line 130
    iget-object p2, p2, Lv3/g0;->d:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    :goto_7
    return v1

    .line 137
    :pswitch_3
    check-cast p1, Lcom/yunpan/appmanage/bean/PssBean;

    .line 138
    .line 139
    check-cast p2, Lcom/yunpan/appmanage/bean/PssBean;

    .line 140
    .line 141
    sget v0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->I:I

    .line 142
    .line 143
    iget-wide v4, p1, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 144
    .line 145
    iget-wide p1, p2, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 146
    .line 147
    cmp-long v0, v4, p1

    .line 148
    .line 149
    if-nez v0, :cond_a

    .line 150
    .line 151
    const/4 v1, 0x0

    .line 152
    goto :goto_8

    .line 153
    :cond_a
    cmp-long v0, v4, p1

    .line 154
    .line 155
    if-lez v0, :cond_b

    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_b
    const/4 v1, 0x1

    .line 159
    :goto_8
    return v1

    .line 160
    :pswitch_4
    check-cast p1, Lcom/yunpan/appmanage/bean/PssBean;

    .line 161
    .line 162
    check-cast p2, Lcom/yunpan/appmanage/bean/PssBean;

    .line 163
    .line 164
    sget v0, Lcom/yunpan/appmanage/ui/ActivityPss;->M:I

    .line 165
    .line 166
    iget-wide v4, p1, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 167
    .line 168
    iget-wide p1, p2, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 169
    .line 170
    cmp-long v0, v4, p1

    .line 171
    .line 172
    if-nez v0, :cond_c

    .line 173
    .line 174
    const/4 v1, 0x0

    .line 175
    goto :goto_9

    .line 176
    :cond_c
    cmp-long v0, v4, p1

    .line 177
    .line 178
    if-lez v0, :cond_d

    .line 179
    .line 180
    goto :goto_9

    .line 181
    :cond_d
    const/4 v1, 0x1

    .line 182
    :goto_9
    return v1

    .line 183
    :pswitch_5
    check-cast p1, Lcom/yunpan/appmanage/bean/PssBean;

    .line 184
    .line 185
    check-cast p2, Lcom/yunpan/appmanage/bean/PssBean;

    .line 186
    .line 187
    sget v0, Lcom/yunpan/appmanage/ui/ActivityPss;->M:I

    .line 188
    .line 189
    iget-wide v4, p1, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 190
    .line 191
    iget-wide p1, p2, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 192
    .line 193
    cmp-long v0, v4, p1

    .line 194
    .line 195
    if-nez v0, :cond_e

    .line 196
    .line 197
    const/4 v1, 0x0

    .line 198
    goto :goto_a

    .line 199
    :cond_e
    cmp-long v0, v4, p1

    .line 200
    .line 201
    if-lez v0, :cond_f

    .line 202
    .line 203
    goto :goto_a

    .line 204
    :cond_f
    const/4 v1, 0x1

    .line 205
    :goto_a
    return v1

    .line 206
    :pswitch_6
    check-cast p1, Lcom/yunpan/appmanage/bean/PsBean;

    .line 207
    .line 208
    check-cast p2, Lcom/yunpan/appmanage/bean/PsBean;

    .line 209
    .line 210
    sget v0, Lcom/yunpan/appmanage/ui/ActivityPs;->L:I

    .line 211
    .line 212
    iget-wide v4, p1, Lcom/yunpan/appmanage/bean/PsBean;->rss:J

    .line 213
    .line 214
    iget-wide p1, p2, Lcom/yunpan/appmanage/bean/PsBean;->rss:J

    .line 215
    .line 216
    cmp-long v0, v4, p1

    .line 217
    .line 218
    if-nez v0, :cond_10

    .line 219
    .line 220
    const/4 v1, 0x0

    .line 221
    goto :goto_b

    .line 222
    :cond_10
    cmp-long v0, v4, p1

    .line 223
    .line 224
    if-lez v0, :cond_11

    .line 225
    .line 226
    goto :goto_b

    .line 227
    :cond_11
    const/4 v1, 0x1

    .line 228
    :goto_b
    return v1

    .line 229
    :pswitch_7
    check-cast p1, Lcom/yunpan/appmanage/bean/PsBean;

    .line 230
    .line 231
    check-cast p2, Lcom/yunpan/appmanage/bean/PsBean;

    .line 232
    .line 233
    sget v0, Lcom/yunpan/appmanage/ui/ActivityPs;->L:I

    .line 234
    .line 235
    iget-wide v4, p1, Lcom/yunpan/appmanage/bean/PsBean;->vsz:J

    .line 236
    .line 237
    iget-wide p1, p2, Lcom/yunpan/appmanage/bean/PsBean;->vsz:J

    .line 238
    .line 239
    cmp-long v0, v4, p1

    .line 240
    .line 241
    if-nez v0, :cond_12

    .line 242
    .line 243
    const/4 v1, 0x0

    .line 244
    goto :goto_c

    .line 245
    :cond_12
    cmp-long v0, v4, p1

    .line 246
    .line 247
    if-lez v0, :cond_13

    .line 248
    .line 249
    goto :goto_c

    .line 250
    :cond_13
    const/4 v1, 0x1

    .line 251
    :goto_c
    return v1

    .line 252
    :pswitch_8
    check-cast p1, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 253
    .line 254
    check-cast p2, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 255
    .line 256
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->R:I

    .line 257
    .line 258
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    xor-int/lit8 v0, p1, 0x1

    .line 265
    .line 266
    iget-object p2, p2, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 269
    .line 270
    .line 271
    move-result p2

    .line 272
    xor-int/2addr p2, v3

    .line 273
    if-ne v0, p2, :cond_14

    .line 274
    .line 275
    goto :goto_e

    .line 276
    :cond_14
    if-nez p1, :cond_15

    .line 277
    .line 278
    goto :goto_d

    .line 279
    :cond_15
    const/4 v1, 0x1

    .line 280
    :goto_d
    move v2, v1

    .line 281
    :goto_e
    return v2

    .line 282
    :pswitch_9
    check-cast p1, Lcom/yunpan/appmanage/bean/AppTrafficBean;

    .line 283
    .line 284
    check-cast p2, Lcom/yunpan/appmanage/bean/AppTrafficBean;

    .line 285
    .line 286
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->K:I

    .line 287
    .line 288
    iget-wide v4, p1, Lcom/yunpan/appmanage/bean/AppTrafficBean;->count:J

    .line 289
    .line 290
    iget-wide p1, p2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->count:J

    .line 291
    .line 292
    cmp-long v0, v4, p1

    .line 293
    .line 294
    if-nez v0, :cond_16

    .line 295
    .line 296
    const/4 v1, 0x0

    .line 297
    goto :goto_f

    .line 298
    :cond_16
    cmp-long v0, v4, p1

    .line 299
    .line 300
    if-lez v0, :cond_17

    .line 301
    .line 302
    goto :goto_f

    .line 303
    :cond_17
    const/4 v1, 0x1

    .line 304
    :goto_f
    return v1

    .line 305
    :pswitch_a
    check-cast p1, Lcom/yunpan/appmanage/bean/AppTrafficBean;

    .line 306
    .line 307
    check-cast p2, Lcom/yunpan/appmanage/bean/AppTrafficBean;

    .line 308
    .line 309
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->K:I

    .line 310
    .line 311
    iget-wide v4, p1, Lcom/yunpan/appmanage/bean/AppTrafficBean;->count:J

    .line 312
    .line 313
    iget-wide p1, p2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->count:J

    .line 314
    .line 315
    cmp-long v0, v4, p1

    .line 316
    .line 317
    if-nez v0, :cond_18

    .line 318
    .line 319
    const/4 v1, 0x0

    .line 320
    goto :goto_10

    .line 321
    :cond_18
    cmp-long v0, v4, p1

    .line 322
    .line 323
    if-lez v0, :cond_19

    .line 324
    .line 325
    goto :goto_10

    .line 326
    :cond_19
    const/4 v1, 0x1

    .line 327
    :goto_10
    return v1

    .line 328
    :pswitch_b
    check-cast p1, Lcom/yunpan/appmanage/bean/AppTrafficBean;

    .line 329
    .line 330
    check-cast p2, Lcom/yunpan/appmanage/bean/AppTrafficBean;

    .line 331
    .line 332
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->K:I

    .line 333
    .line 334
    iget-wide v4, p1, Lcom/yunpan/appmanage/bean/AppTrafficBean;->wifi:J

    .line 335
    .line 336
    iget-wide p1, p2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->wifi:J

    .line 337
    .line 338
    cmp-long v0, v4, p1

    .line 339
    .line 340
    if-nez v0, :cond_1a

    .line 341
    .line 342
    const/4 v1, 0x0

    .line 343
    goto :goto_11

    .line 344
    :cond_1a
    cmp-long v0, v4, p1

    .line 345
    .line 346
    if-lez v0, :cond_1b

    .line 347
    .line 348
    goto :goto_11

    .line 349
    :cond_1b
    const/4 v1, 0x1

    .line 350
    :goto_11
    return v1

    .line 351
    :pswitch_c
    check-cast p1, Lcom/yunpan/appmanage/bean/AppTrafficBean;

    .line 352
    .line 353
    check-cast p2, Lcom/yunpan/appmanage/bean/AppTrafficBean;

    .line 354
    .line 355
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->K:I

    .line 356
    .line 357
    iget-wide v4, p1, Lcom/yunpan/appmanage/bean/AppTrafficBean;->sim:J

    .line 358
    .line 359
    iget-wide p1, p2, Lcom/yunpan/appmanage/bean/AppTrafficBean;->sim:J

    .line 360
    .line 361
    cmp-long v0, v4, p1

    .line 362
    .line 363
    if-nez v0, :cond_1c

    .line 364
    .line 365
    const/4 v1, 0x0

    .line 366
    goto :goto_12

    .line 367
    :cond_1c
    cmp-long v0, v4, p1

    .line 368
    .line 369
    if-lez v0, :cond_1d

    .line 370
    .line 371
    goto :goto_12

    .line 372
    :cond_1d
    const/4 v1, 0x1

    .line 373
    :goto_12
    return v1

    .line 374
    :pswitch_d
    check-cast p1, Lx9/y;

    .line 375
    .line 376
    check-cast p2, Lx9/y;

    .line 377
    .line 378
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->H:I

    .line 379
    .line 380
    iget-wide v4, p1, Lx9/y;->c:J

    .line 381
    .line 382
    iget-wide p1, p2, Lx9/y;->c:J

    .line 383
    .line 384
    cmp-long v0, v4, p1

    .line 385
    .line 386
    if-nez v0, :cond_1e

    .line 387
    .line 388
    const/4 v1, 0x0

    .line 389
    goto :goto_13

    .line 390
    :cond_1e
    cmp-long v0, v4, p1

    .line 391
    .line 392
    if-lez v0, :cond_1f

    .line 393
    .line 394
    goto :goto_13

    .line 395
    :cond_1f
    const/4 v1, 0x1

    .line 396
    :goto_13
    return v1

    .line 397
    :pswitch_e
    check-cast p1, Lx9/y;

    .line 398
    .line 399
    check-cast p2, Lx9/y;

    .line 400
    .line 401
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->H:I

    .line 402
    .line 403
    iget-wide v4, p1, Lx9/y;->b:J

    .line 404
    .line 405
    iget-wide p1, p2, Lx9/y;->b:J

    .line 406
    .line 407
    cmp-long v0, v4, p1

    .line 408
    .line 409
    if-nez v0, :cond_20

    .line 410
    .line 411
    const/4 v1, 0x0

    .line 412
    goto :goto_14

    .line 413
    :cond_20
    cmp-long v0, v4, p1

    .line 414
    .line 415
    if-lez v0, :cond_21

    .line 416
    .line 417
    goto :goto_14

    .line 418
    :cond_21
    const/4 v1, 0x1

    .line 419
    :goto_14
    return v1

    .line 420
    :pswitch_f
    check-cast p1, Lx9/y;

    .line 421
    .line 422
    check-cast p2, Lx9/y;

    .line 423
    .line 424
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->H:I

    .line 425
    .line 426
    iget-wide v4, p1, Lx9/y;->b:J

    .line 427
    .line 428
    iget-wide p1, p2, Lx9/y;->b:J

    .line 429
    .line 430
    cmp-long v0, v4, p1

    .line 431
    .line 432
    if-nez v0, :cond_22

    .line 433
    .line 434
    const/4 v1, 0x0

    .line 435
    goto :goto_15

    .line 436
    :cond_22
    cmp-long v0, v4, p1

    .line 437
    .line 438
    if-lez v0, :cond_23

    .line 439
    .line 440
    goto :goto_15

    .line 441
    :cond_23
    const/4 v1, 0x1

    .line 442
    :goto_15
    return v1

    .line 443
    :pswitch_10
    check-cast p1, Lx9/y;

    .line 444
    .line 445
    check-cast p2, Lx9/y;

    .line 446
    .line 447
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->H:I

    .line 448
    .line 449
    iget-wide v4, p1, Lx9/y;->d:J

    .line 450
    .line 451
    iget-wide p1, p2, Lx9/y;->d:J

    .line 452
    .line 453
    cmp-long v0, v4, p1

    .line 454
    .line 455
    if-nez v0, :cond_24

    .line 456
    .line 457
    const/4 v1, 0x0

    .line 458
    goto :goto_16

    .line 459
    :cond_24
    cmp-long v0, v4, p1

    .line 460
    .line 461
    if-lez v0, :cond_25

    .line 462
    .line 463
    goto :goto_16

    .line 464
    :cond_25
    const/4 v1, 0x1

    .line 465
    :goto_16
    return v1

    .line 466
    :pswitch_11
    check-cast p1, Lx9/y;

    .line 467
    .line 468
    check-cast p2, Lx9/y;

    .line 469
    .line 470
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->H:I

    .line 471
    .line 472
    iget-wide v4, p1, Lx9/y;->e:J

    .line 473
    .line 474
    iget-wide p1, p2, Lx9/y;->e:J

    .line 475
    .line 476
    cmp-long v0, v4, p1

    .line 477
    .line 478
    if-nez v0, :cond_26

    .line 479
    .line 480
    const/4 v1, 0x0

    .line 481
    goto :goto_17

    .line 482
    :cond_26
    cmp-long v0, v4, p1

    .line 483
    .line 484
    if-lez v0, :cond_27

    .line 485
    .line 486
    goto :goto_17

    .line 487
    :cond_27
    const/4 v1, 0x1

    .line 488
    :goto_17
    return v1

    .line 489
    :pswitch_12
    check-cast p1, Lcom/yunpan/appmanage/bean/AppAttribBean;

    .line 490
    .line 491
    check-cast p2, Lcom/yunpan/appmanage/bean/AppAttribBean;

    .line 492
    .line 493
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->H:I

    .line 494
    .line 495
    iget-wide v4, p1, Lcom/yunpan/appmanage/bean/AppAttribBean;->updateTime:J

    .line 496
    .line 497
    iget-wide p1, p2, Lcom/yunpan/appmanage/bean/AppAttribBean;->updateTime:J

    .line 498
    .line 499
    cmp-long v0, v4, p1

    .line 500
    .line 501
    if-nez v0, :cond_28

    .line 502
    .line 503
    const/4 v1, 0x0

    .line 504
    goto :goto_18

    .line 505
    :cond_28
    cmp-long v0, v4, p1

    .line 506
    .line 507
    if-lez v0, :cond_29

    .line 508
    .line 509
    goto :goto_18

    .line 510
    :cond_29
    const/4 v1, 0x1

    .line 511
    :goto_18
    return v1

    .line 512
    :pswitch_13
    check-cast p1, Lcom/yunpan/appmanage/bean/AppAttribBean;

    .line 513
    .line 514
    check-cast p2, Lcom/yunpan/appmanage/bean/AppAttribBean;

    .line 515
    .line 516
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->H:I

    .line 517
    .line 518
    iget-wide v4, p1, Lcom/yunpan/appmanage/bean/AppAttribBean;->installTime:J

    .line 519
    .line 520
    iget-wide p1, p2, Lcom/yunpan/appmanage/bean/AppAttribBean;->installTime:J

    .line 521
    .line 522
    cmp-long v0, v4, p1

    .line 523
    .line 524
    if-nez v0, :cond_2a

    .line 525
    .line 526
    const/4 v1, 0x0

    .line 527
    goto :goto_19

    .line 528
    :cond_2a
    cmp-long v0, v4, p1

    .line 529
    .line 530
    if-lez v0, :cond_2b

    .line 531
    .line 532
    goto :goto_19

    .line 533
    :cond_2b
    const/4 v1, 0x1

    .line 534
    :goto_19
    return v1

    .line 535
    :pswitch_14
    check-cast p1, Lcom/yunpan/appmanage/bean/AppAttribBean;

    .line 536
    .line 537
    check-cast p2, Lcom/yunpan/appmanage/bean/AppAttribBean;

    .line 538
    .line 539
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->H:I

    .line 540
    .line 541
    iget-wide v4, p1, Lcom/yunpan/appmanage/bean/AppAttribBean;->installTime:J

    .line 542
    .line 543
    iget-wide p1, p2, Lcom/yunpan/appmanage/bean/AppAttribBean;->installTime:J

    .line 544
    .line 545
    cmp-long v0, v4, p1

    .line 546
    .line 547
    if-nez v0, :cond_2c

    .line 548
    .line 549
    const/4 v1, 0x0

    .line 550
    goto :goto_1a

    .line 551
    :cond_2c
    cmp-long v0, v4, p1

    .line 552
    .line 553
    if-lez v0, :cond_2d

    .line 554
    .line 555
    goto :goto_1a

    .line 556
    :cond_2d
    const/4 v1, 0x1

    .line 557
    :goto_1a
    return v1

    .line 558
    :pswitch_15
    check-cast p1, [B

    .line 559
    .line 560
    check-cast p2, [B

    .line 561
    .line 562
    array-length v0, p1

    .line 563
    array-length v1, p2

    .line 564
    if-eq v0, v1, :cond_2e

    .line 565
    .line 566
    array-length p1, p1

    .line 567
    array-length p2, p2

    .line 568
    sub-int v2, p1, p2

    .line 569
    .line 570
    goto :goto_1c

    .line 571
    :cond_2e
    const/4 v0, 0x0

    .line 572
    :goto_1b
    array-length v1, p1

    .line 573
    if-ge v0, v1, :cond_30

    .line 574
    .line 575
    aget-byte v1, p1, v0

    .line 576
    .line 577
    aget-byte v4, p2, v0

    .line 578
    .line 579
    if-eq v1, v4, :cond_2f

    .line 580
    .line 581
    sub-int v2, v1, v4

    .line 582
    .line 583
    goto :goto_1c

    .line 584
    :cond_2f
    add-int/2addr v0, v3

    .line 585
    goto :goto_1b

    .line 586
    :cond_30
    :goto_1c
    return v2

    .line 587
    :pswitch_16
    check-cast p1, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;

    .line 588
    .line 589
    check-cast p2, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;

    .line 590
    .line 591
    iget p1, p1, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;->sortLength:I

    .line 592
    .line 593
    iget p2, p2, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;->sortLength:I

    .line 594
    .line 595
    sub-int/2addr p1, p2

    .line 596
    return p1

    .line 597
    :pswitch_17
    check-cast p1, Lr3/c;

    .line 598
    .line 599
    check-cast p2, Lr3/c;

    .line 600
    .line 601
    iget-wide v0, p1, Lr3/c;->b:J

    .line 602
    .line 603
    iget-wide p1, p2, Lr3/c;->b:J

    .line 604
    .line 605
    cmp-long v2, v0, p1

    .line 606
    .line 607
    return v2

    .line 608
    :pswitch_18
    check-cast p1, Lr3/d;

    .line 609
    .line 610
    check-cast p2, Lr3/d;

    .line 611
    .line 612
    iget-object p1, p1, Lr3/d;->a:Lr3/e;

    .line 613
    .line 614
    iget p1, p1, Lr3/e;->b:I

    .line 615
    .line 616
    iget-object p2, p2, Lr3/d;->a:Lr3/e;

    .line 617
    .line 618
    iget p2, p2, Lr3/e;->b:I

    .line 619
    .line 620
    if-ne p1, p2, :cond_31

    .line 621
    .line 622
    const/4 v1, 0x0

    .line 623
    goto :goto_1d

    .line 624
    :cond_31
    if-ge p1, p2, :cond_32

    .line 625
    .line 626
    goto :goto_1d

    .line 627
    :cond_32
    const/4 v1, 0x1

    .line 628
    :goto_1d
    return v1

    .line 629
    :pswitch_19
    check-cast p1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 630
    .line 631
    check-cast p2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 632
    .line 633
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 634
    .line 635
    iget-object p2, p2, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 636
    .line 637
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 638
    .line 639
    .line 640
    move-result p1

    .line 641
    return p1

    .line 642
    :pswitch_1a
    check-cast p1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 643
    .line 644
    check-cast p2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 645
    .line 646
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 647
    .line 648
    iget-object p2, p2, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 649
    .line 650
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 651
    .line 652
    .line 653
    move-result p1

    .line 654
    return p1

    .line 655
    :pswitch_1b
    check-cast p1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 656
    .line 657
    check-cast p2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 658
    .line 659
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 660
    .line 661
    iget-object p2, p2, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 662
    .line 663
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 664
    .line 665
    .line 666
    move-result p1

    .line 667
    return p1

    .line 668
    nop

    .line 669
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_0
    .end packed-switch
.end method
