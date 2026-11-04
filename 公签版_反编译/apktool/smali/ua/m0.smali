.class public final synthetic Lua/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/m0;->a:I

    iput-object p1, p0, Lua/m0;->b:Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lua/m0;->b:Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;

    .line 6
    .line 7
    iget v4, v0, Lua/m0;->a:I

    .line 8
    .line 9
    packed-switch v4, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget v3, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->R:I

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->y(Lmc/b;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    const-string v4, ":"

    .line 19
    .line 20
    const-string v5, "enabled_notification_listeners"

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    :goto_0
    iget-object v8, v2, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->I:Lx9/b0;

    .line 24
    .line 25
    invoke-virtual {v8}, Lc6/g;->b()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    if-ge v7, v8, :cond_19

    .line 30
    .line 31
    iget-boolean v8, v2, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->P:Z

    .line 32
    .line 33
    if-eqz v8, :cond_0

    .line 34
    .line 35
    const-string v2, "\u5df2\u505c\u6b62"

    .line 36
    .line 37
    invoke-static {v2, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_11

    .line 41
    .line 42
    :cond_0
    iget-object v8, v2, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->I:Lx9/b0;

    .line 43
    .line 44
    invoke-virtual {v8, v7}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    check-cast v8, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 49
    .line 50
    iget-boolean v9, v8, Lcom/yunpan/appmanage/bean/PermissionBean;->isSelect:Z

    .line 51
    .line 52
    if-nez v9, :cond_1

    .line 53
    .line 54
    :goto_1
    const/4 v0, 0x1

    .line 55
    const/4 v9, 0x0

    .line 56
    goto/16 :goto_10

    .line 57
    .line 58
    :cond_1
    iget-object v9, v8, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 59
    .line 60
    const-string v10, "\u5ffd\u7565\u7535\u6c60\u4f18\u5316"

    .line 61
    .line 62
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    const-string v10, "\u5931\u8d25"

    .line 67
    .line 68
    const-string v11, "\u6388\u6743\u6210\u529f"

    .line 69
    .line 70
    const-wide/16 v12, 0x7d0

    .line 71
    .line 72
    if-eqz v9, :cond_4

    .line 73
    .line 74
    sget-object v9, Lfa/b0;->a:La2/w0;

    .line 75
    .line 76
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    const-string v9, "dumpsys deviceidle whitelist"

    .line 80
    .line 81
    const-wide/16 v14, 0x8ae

    .line 82
    .line 83
    invoke-static {v14, v15, v9}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    invoke-virtual {v9}, Lfa/a0;->a()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    new-instance v14, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v15, ","

    .line 94
    .line 95
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v6, v2, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->C:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v14, v6, v15, v9}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_2

    .line 105
    .line 106
    iput-object v11, v8, Lcom/yunpan/appmanage/bean/PermissionBean;->str1:Ljava/lang/String;

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v9, "cmd deviceidle whitelist +"

    .line 112
    .line 113
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v9, v2, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->C:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-static {v12, v13, v6}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    iget v6, v6, Lfa/a0;->a:I

    .line 130
    .line 131
    if-nez v6, :cond_3

    .line 132
    .line 133
    iput-object v11, v8, Lcom/yunpan/appmanage/bean/PermissionBean;->str1:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    iput-object v10, v8, Lcom/yunpan/appmanage/bean/PermissionBean;->str1:Ljava/lang/String;

    .line 137
    .line 138
    :goto_2
    const/4 v9, 0x0

    .line 139
    goto/16 :goto_f

    .line 140
    .line 141
    :cond_4
    iget-object v6, v8, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 142
    .line 143
    const-string v9, "\u901a\u77e5\u4f7f\u7528\u6743"

    .line 144
    .line 145
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    const-string v9, ""

    .line 150
    .line 151
    const-string v14, "cmd "

    .line 152
    .line 153
    if-eqz v6, :cond_14

    .line 154
    .line 155
    new-instance v6, Ljava/util/HashSet;

    .line 156
    .line 157
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 158
    .line 159
    .line 160
    :try_start_0
    iget-object v15, v2, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->L:Landroid/content/ContentResolver;

    .line 161
    .line 162
    invoke-static {v15, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v15

    .line 166
    if-eqz v15, :cond_7

    .line 167
    .line 168
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v16

    .line 172
    if-nez v16, :cond_7

    .line 173
    .line 174
    invoke-virtual {v15, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v15

    .line 178
    array-length v12, v15

    .line 179
    const/4 v13, 0x0

    .line 180
    :goto_3
    if-ge v13, v12, :cond_7

    .line 181
    .line 182
    aget-object v3, v15, v13

    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result v17

    .line 188
    if-eqz v17, :cond_6

    .line 189
    .line 190
    move-object/from16 v17, v9

    .line 191
    .line 192
    :catch_0
    :cond_5
    :goto_4
    const/4 v0, 0x1

    .line 193
    goto :goto_5

    .line 194
    :cond_6
    const-string v0, "/"

    .line 195
    .line 196
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    move-object/from16 v17, v9

    .line 202
    .line 203
    const/4 v9, 0x2

    .line 204
    if-ne v0, v9, :cond_5

    .line 205
    .line 206
    :try_start_1
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :goto_5
    add-int/2addr v13, v0

    .line 219
    move-object/from16 v0, p0

    .line 220
    .line 221
    move-object/from16 v9, v17

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :catch_1
    :cond_7
    move-object/from16 v17, v9

    .line 225
    .line 226
    new-instance v0, Ljava/util/HashSet;

    .line 227
    .line 228
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 229
    .line 230
    .line 231
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->O:Ljava/util/HashSet;

    .line 232
    .line 233
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    const/4 v9, 0x0

    .line 238
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v12

    .line 242
    if-eqz v12, :cond_9

    .line 243
    .line 244
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v12

    .line 248
    check-cast v12, Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v6, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v13

    .line 254
    if-eqz v13, :cond_8

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_8
    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    const/4 v9, 0x1

    .line 264
    goto :goto_6

    .line 265
    :cond_9
    if-nez v9, :cond_a

    .line 266
    .line 267
    iput-object v11, v8, Lcom/yunpan/appmanage/bean/PermissionBean;->str1:Ljava/lang/String;

    .line 268
    .line 269
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    :cond_a
    new-instance v3, Ljava/lang/StringBuffer;

    .line 279
    .line 280
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    if-eqz v9, :cond_b

    .line 292
    .line 293
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    check-cast v9, Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    .line 307
    .line 308
    .line 309
    move-result v6

    .line 310
    const/4 v9, 0x1

    .line 311
    sub-int/2addr v6, v9

    .line 312
    const/4 v9, 0x0

    .line 313
    invoke-virtual {v3, v9, v6}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    :try_start_2
    iget-object v6, v2, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->L:Landroid/content/ContentResolver;

    .line 318
    .line 319
    invoke-static {v6, v5, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 320
    .line 321
    .line 322
    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 323
    goto :goto_8

    .line 324
    :catch_2
    nop

    .line 325
    const/4 v6, 0x0

    .line 326
    :goto_8
    if-nez v6, :cond_d

    .line 327
    .line 328
    sget-object v6, Lfa/b0;->a:La2/w0;

    .line 329
    .line 330
    new-instance v12, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    const-string v13, "settings put secure enabled_notification_listeners "

    .line 333
    .line 334
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    const-wide/16 v12, 0x7d0

    .line 348
    .line 349
    invoke-static {v12, v13, v3}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    iget v3, v3, Lfa/a0;->a:I

    .line 354
    .line 355
    if-nez v3, :cond_c

    .line 356
    .line 357
    const/4 v3, 0x1

    .line 358
    goto :goto_9

    .line 359
    :cond_c
    const/4 v3, 0x0

    .line 360
    :goto_9
    move v6, v3

    .line 361
    :cond_d
    :try_start_3
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->L:Landroid/content/ContentResolver;

    .line 362
    .line 363
    const-string v12, "notification_enabled"

    .line 364
    .line 365
    const/4 v13, 0x1

    .line 366
    invoke-static {v3, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    .line 368
    .line 369
    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 370
    goto :goto_a

    .line 371
    :catch_3
    nop

    .line 372
    :goto_a
    if-nez v6, :cond_f

    .line 373
    .line 374
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 375
    .line 376
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    const-string v3, "settings put secure notification_enabled 1"

    .line 380
    .line 381
    const-wide/16 v12, 0x7d0

    .line 382
    .line 383
    invoke-static {v12, v13, v3}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    iget v3, v3, Lfa/a0;->a:I

    .line 388
    .line 389
    if-nez v3, :cond_e

    .line 390
    .line 391
    const/4 v3, 0x1

    .line 392
    goto :goto_b

    .line 393
    :cond_e
    const/4 v3, 0x0

    .line 394
    :goto_b
    move v6, v3

    .line 395
    :cond_f
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 396
    .line 397
    const/16 v12, 0x1c

    .line 398
    .line 399
    if-lt v3, v12, :cond_12

    .line 400
    .line 401
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    if-eqz v3, :cond_12

    .line 410
    .line 411
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    check-cast v3, Ljava/lang/String;

    .line 416
    .line 417
    sget-object v6, Lfa/b0;->a:La2/w0;

    .line 418
    .line 419
    new-instance v12, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    sget-object v13, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 425
    .line 426
    sget-object v13, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 427
    .line 428
    iget-boolean v13, v13, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 429
    .line 430
    if-eqz v13, :cond_10

    .line 431
    .line 432
    move-object v13, v14

    .line 433
    goto :goto_d

    .line 434
    :cond_10
    move-object/from16 v13, v17

    .line 435
    .line 436
    :goto_d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    const-string v13, "notification allow_listener "

    .line 440
    .line 441
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    .line 453
    .line 454
    const-wide/16 v12, 0x7d0

    .line 455
    .line 456
    invoke-static {v12, v13, v3}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    iget v3, v3, Lfa/a0;->a:I

    .line 461
    .line 462
    if-nez v3, :cond_11

    .line 463
    .line 464
    const/4 v6, 0x1

    .line 465
    goto :goto_c

    .line 466
    :cond_11
    const/4 v6, 0x0

    .line 467
    goto :goto_c

    .line 468
    :cond_12
    if-eqz v6, :cond_13

    .line 469
    .line 470
    move-object v10, v11

    .line 471
    :cond_13
    iput-object v10, v8, Lcom/yunpan/appmanage/bean/PermissionBean;->str1:Ljava/lang/String;

    .line 472
    .line 473
    goto/16 :goto_f

    .line 474
    .line 475
    :cond_14
    move-object/from16 v17, v9

    .line 476
    .line 477
    const/4 v9, 0x0

    .line 478
    iget-object v0, v8, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 479
    .line 480
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    const-string v3, "pm grant "

    .line 485
    .line 486
    const-string v6, " "

    .line 487
    .line 488
    if-nez v0, :cond_17

    .line 489
    .line 490
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 491
    .line 492
    new-instance v12, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->C:Ljava/lang/String;

    .line 498
    .line 499
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    iget-object v3, v8, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 506
    .line 507
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 515
    .line 516
    .line 517
    const-wide/16 v12, 0x7d0

    .line 518
    .line 519
    invoke-static {v12, v13, v3}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 520
    .line 521
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .line 526
    .line 527
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 528
    .line 529
    iget-boolean v3, v3, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 530
    .line 531
    if-eqz v3, :cond_15

    .line 532
    .line 533
    goto :goto_e

    .line 534
    :cond_15
    move-object/from16 v14, v17

    .line 535
    .line 536
    :goto_e
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    const-string v3, "appops set "

    .line 540
    .line 541
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->C:Ljava/lang/String;

    .line 545
    .line 546
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    iget-object v3, v8, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 553
    .line 554
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    const-string v3, " allow"

    .line 558
    .line 559
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    const-wide/16 v12, 0x7d0

    .line 567
    .line 568
    invoke-static {v12, v13, v0}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    iget v0, v0, Lfa/a0;->a:I

    .line 573
    .line 574
    if-nez v0, :cond_16

    .line 575
    .line 576
    iput-object v11, v8, Lcom/yunpan/appmanage/bean/PermissionBean;->str1:Ljava/lang/String;

    .line 577
    .line 578
    goto :goto_f

    .line 579
    :cond_16
    iput-object v10, v8, Lcom/yunpan/appmanage/bean/PermissionBean;->str1:Ljava/lang/String;

    .line 580
    .line 581
    goto :goto_f

    .line 582
    :cond_17
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 583
    .line 584
    new-instance v12, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->C:Ljava/lang/String;

    .line 590
    .line 591
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    iget-object v3, v8, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 598
    .line 599
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 607
    .line 608
    .line 609
    const-wide/16 v12, 0x7d0

    .line 610
    .line 611
    invoke-static {v12, v13, v3}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    iget v0, v0, Lfa/a0;->a:I

    .line 616
    .line 617
    if-nez v0, :cond_18

    .line 618
    .line 619
    iput-object v11, v8, Lcom/yunpan/appmanage/bean/PermissionBean;->str1:Ljava/lang/String;

    .line 620
    .line 621
    goto :goto_f

    .line 622
    :cond_18
    iput-object v10, v8, Lcom/yunpan/appmanage/bean/PermissionBean;->str1:Ljava/lang/String;

    .line 623
    .line 624
    :goto_f
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    invoke-virtual {v1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 629
    .line 630
    .line 631
    const/4 v0, 0x1

    .line 632
    :goto_10
    add-int/2addr v7, v0

    .line 633
    move-object/from16 v0, p0

    .line 634
    .line 635
    goto/16 :goto_0

    .line 636
    .line 637
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 638
    .line 639
    .line 640
    :goto_11
    return-void

    .line 641
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget p1, p0, Lua/m0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lua/m0;->b:Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;

    .line 7
    .line 8
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->I:Lx9/b0;

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 15
    .line 16
    iget-boolean v0, p2, Lcom/yunpan/appmanage/bean/PermissionBean;->isSelect:Z

    .line 17
    .line 18
    xor-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput-boolean v0, p2, Lcom/yunpan/appmanage/bean/PermissionBean;->isSelect:Z

    .line 21
    .line 22
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->I:Lx9/b0;

    .line 23
    .line 24
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    iget-object p1, p0, Lua/m0;->b:Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;

    .line 29
    .line 30
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->F:Lx9/m0;

    .line 31
    .line 32
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Ljava/lang/String;

    .line 37
    .line 38
    if-nez p3, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x1

    .line 45
    if-ne p3, v0, :cond_2

    .line 46
    .line 47
    const-string v1, "\u505c\u6b62\u6388\u6743"

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    iput-boolean v0, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->P:Z

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->F:Lx9/m0;

    .line 59
    .line 60
    invoke-virtual {p2, p3, v1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->E:Landroid/widget/ProgressBar;

    .line 64
    .line 65
    const/4 p3, 0x0

    .line 66
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    new-instance p2, Lua/m0;

    .line 70
    .line 71
    const/4 p3, 0x2

    .line 72
    invoke-direct {p2, p1, p3}, Lua/m0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;I)V

    .line 73
    .line 74
    .line 75
    new-instance p3, Lmc/c;

    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    invoke-direct {p3, v0, p2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 82
    .line 83
    invoke-virtual {p3, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-virtual {p2, p3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    new-instance p3, Lua/o0;

    .line 96
    .line 97
    const/4 v0, 0x1

    .line 98
    invoke-direct {p3, p1, v0}, Lua/o0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p3}, Lec/b;->b(Lec/e;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_0
    return-void

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
