.class public final synthetic Lua/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/u0;->a:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yunpan/appmanage/bean/KeyMapSelectBean;)V
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    const/4 v3, 0x6

    .line 7
    const/4 v4, 0x5

    .line 8
    const/4 v5, 0x3

    .line 9
    const/4 v6, 0x4

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x2

    .line 12
    const/4 v9, 0x1

    .line 13
    sget v10, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 14
    .line 15
    move-object/from16 v10, p0

    .line 16
    .line 17
    iget-object v13, v10, Lua/u0;->a:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 18
    .line 19
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget v11, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 23
    .line 24
    const/16 v12, 0x65

    .line 25
    .line 26
    if-ne v11, v12, :cond_0

    .line 27
    .line 28
    new-instance v1, Lha/z6;

    .line 29
    .line 30
    new-instance v2, Lua/t0;

    .line 31
    .line 32
    invoke-direct {v2, v13, v0, v8}, Lua/t0;-><init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;I)V

    .line 33
    .line 34
    .line 35
    const-string v0, "\u8bf7\u8f93\u5165\u663e\u793a\u5185\u5bb9"

    .line 36
    .line 37
    invoke-direct {v1, v13, v13, v0, v2}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Lha/y6;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_5

    .line 44
    .line 45
    :cond_0
    const/16 v12, 0x64

    .line 46
    .line 47
    if-ne v11, v12, :cond_1

    .line 48
    .line 49
    const/16 v11, 0x16

    .line 50
    .line 51
    new-array v11, v11, [Ljava/lang/String;

    .line 52
    .line 53
    const-string v12, "1\u79d2"

    .line 54
    .line 55
    aput-object v12, v11, v7

    .line 56
    .line 57
    const-string v12, "2\u79d2"

    .line 58
    .line 59
    aput-object v12, v11, v9

    .line 60
    .line 61
    const-string v9, "3\u79d2"

    .line 62
    .line 63
    aput-object v9, v11, v8

    .line 64
    .line 65
    const-string v8, "4\u79d2"

    .line 66
    .line 67
    aput-object v8, v11, v5

    .line 68
    .line 69
    const-string v5, "5\u79d2"

    .line 70
    .line 71
    aput-object v5, v11, v6

    .line 72
    .line 73
    const-string v5, "6\u79d2"

    .line 74
    .line 75
    aput-object v5, v11, v4

    .line 76
    .line 77
    const-string v4, "7\u79d2"

    .line 78
    .line 79
    aput-object v4, v11, v3

    .line 80
    .line 81
    const-string v3, "8\u79d2"

    .line 82
    .line 83
    aput-object v3, v11, v2

    .line 84
    .line 85
    const-string v2, "9\u79d2"

    .line 86
    .line 87
    const/16 v3, 0x8

    .line 88
    .line 89
    aput-object v2, v11, v3

    .line 90
    .line 91
    const-string v2, "10\u79d2"

    .line 92
    .line 93
    const/16 v3, 0x9

    .line 94
    .line 95
    aput-object v2, v11, v3

    .line 96
    .line 97
    const-string v2, "12\u79d2"

    .line 98
    .line 99
    aput-object v2, v11, v1

    .line 100
    .line 101
    const-string v1, "14\u79d2"

    .line 102
    .line 103
    const/16 v2, 0xb

    .line 104
    .line 105
    aput-object v1, v11, v2

    .line 106
    .line 107
    const-string v1, "16\u79d2"

    .line 108
    .line 109
    const/16 v2, 0xc

    .line 110
    .line 111
    aput-object v1, v11, v2

    .line 112
    .line 113
    const-string v1, "18\u79d2"

    .line 114
    .line 115
    const/16 v2, 0xd

    .line 116
    .line 117
    aput-object v1, v11, v2

    .line 118
    .line 119
    const-string v1, "20\u79d2"

    .line 120
    .line 121
    const/16 v2, 0xe

    .line 122
    .line 123
    aput-object v1, v11, v2

    .line 124
    .line 125
    const-string v1, "22\u79d2"

    .line 126
    .line 127
    const/16 v2, 0xf

    .line 128
    .line 129
    aput-object v1, v11, v2

    .line 130
    .line 131
    const-string v1, "24\u79d2"

    .line 132
    .line 133
    const/16 v2, 0x10

    .line 134
    .line 135
    aput-object v1, v11, v2

    .line 136
    .line 137
    const-string v1, "26\u79d2"

    .line 138
    .line 139
    const/16 v2, 0x11

    .line 140
    .line 141
    aput-object v1, v11, v2

    .line 142
    .line 143
    const-string v1, "28\u79d2"

    .line 144
    .line 145
    const/16 v2, 0x12

    .line 146
    .line 147
    aput-object v1, v11, v2

    .line 148
    .line 149
    const-string v1, "30\u79d2"

    .line 150
    .line 151
    const/16 v2, 0x13

    .line 152
    .line 153
    aput-object v1, v11, v2

    .line 154
    .line 155
    const-string v1, "35\u79d2"

    .line 156
    .line 157
    const/16 v2, 0x14

    .line 158
    .line 159
    aput-object v1, v11, v2

    .line 160
    .line 161
    const-string v1, "40\u79d2"

    .line 162
    .line 163
    const/16 v2, 0x15

    .line 164
    .line 165
    aput-object v1, v11, v2

    .line 166
    .line 167
    new-instance v1, Lha/fa;

    .line 168
    .line 169
    iget-object v2, v13, Lda/g;->A:Lda/g;

    .line 170
    .line 171
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v18

    .line 175
    new-instance v3, Lua/t0;

    .line 176
    .line 177
    invoke-direct {v3, v13, v0, v7}, Lua/t0;-><init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;I)V

    .line 178
    .line 179
    .line 180
    const/16 v17, 0x0

    .line 181
    .line 182
    move-object v14, v1

    .line 183
    move-object v15, v2

    .line 184
    move-object/from16 v16, v2

    .line 185
    .line 186
    move-object/from16 v19, v3

    .line 187
    .line 188
    invoke-direct/range {v14 .. v19}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_5

    .line 195
    .line 196
    :cond_1
    const/16 v12, 0x1f4

    .line 197
    .line 198
    if-eq v11, v12, :cond_14

    .line 199
    .line 200
    const/16 v12, 0x1f5

    .line 201
    .line 202
    if-eq v11, v12, :cond_14

    .line 203
    .line 204
    const/16 v12, 0x1f7

    .line 205
    .line 206
    if-eq v11, v12, :cond_14

    .line 207
    .line 208
    const/16 v12, 0x1f8

    .line 209
    .line 210
    if-ne v11, v12, :cond_2

    .line 211
    .line 212
    goto/16 :goto_4

    .line 213
    .line 214
    :cond_2
    const/16 v3, 0x258

    .line 215
    .line 216
    if-ne v11, v3, :cond_3

    .line 217
    .line 218
    new-instance v1, Lha/o1;

    .line 219
    .line 220
    new-instance v2, Lua/t0;

    .line 221
    .line 222
    invoke-direct {v2, v13, v0, v4}, Lua/t0;-><init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;I)V

    .line 223
    .line 224
    .line 225
    invoke-direct {v1, v13, v13, v2}, Lha/o1;-><init>(Landroid/app/Activity;Landroid/content/Context;Lha/n1;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_5

    .line 232
    .line 233
    :cond_3
    const/16 v3, 0x1f6

    .line 234
    .line 235
    if-ne v11, v3, :cond_4

    .line 236
    .line 237
    new-instance v1, Lha/o1;

    .line 238
    .line 239
    new-instance v3, Lua/t0;

    .line 240
    .line 241
    invoke-direct {v3, v13, v0, v2}, Lua/t0;-><init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;I)V

    .line 242
    .line 243
    .line 244
    invoke-direct {v1, v13, v13, v3}, Lha/o1;-><init>(Landroid/app/Activity;Landroid/content/Context;Lua/t0;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_5

    .line 251
    .line 252
    :cond_4
    const/16 v2, 0x66

    .line 253
    .line 254
    if-eq v11, v2, :cond_13

    .line 255
    .line 256
    const/16 v2, 0x68

    .line 257
    .line 258
    if-ne v11, v2, :cond_5

    .line 259
    .line 260
    goto/16 :goto_3

    .line 261
    .line 262
    :cond_5
    const/16 v2, 0x69

    .line 263
    .line 264
    if-ne v11, v2, :cond_7

    .line 265
    .line 266
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-static {v13, v1}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-nez v1, :cond_6

    .line 275
    .line 276
    invoke-static {v13}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    new-instance v1, Ltb/v;

    .line 289
    .line 290
    const/16 v2, 0x1d

    .line 291
    .line 292
    invoke-direct {v1, v2}, Ltb/v;-><init>(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 296
    .line 297
    .line 298
    goto/16 :goto_5

    .line 299
    .line 300
    :cond_6
    new-instance v1, Lha/x0;

    .line 301
    .line 302
    new-instance v2, Lua/t0;

    .line 303
    .line 304
    invoke-direct {v2, v13, v0, v9}, Lua/t0;-><init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;I)V

    .line 305
    .line 306
    .line 307
    invoke-direct {v1, v13, v13, v2}, Lha/x0;-><init>(Landroid/app/Activity;Landroid/content/Context;Lea/e;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_5

    .line 314
    .line 315
    :cond_7
    const/16 v2, 0x70

    .line 316
    .line 317
    const/16 v3, 0x72

    .line 318
    .line 319
    const/16 v4, 0x71

    .line 320
    .line 321
    const/16 v5, 0x6e

    .line 322
    .line 323
    if-eq v11, v5, :cond_f

    .line 324
    .line 325
    if-eq v11, v4, :cond_f

    .line 326
    .line 327
    if-eq v11, v3, :cond_f

    .line 328
    .line 329
    const/16 v12, 0x6f

    .line 330
    .line 331
    if-eq v11, v12, :cond_f

    .line 332
    .line 333
    if-ne v11, v2, :cond_8

    .line 334
    .line 335
    goto/16 :goto_2

    .line 336
    .line 337
    :cond_8
    const/16 v2, 0x192

    .line 338
    .line 339
    if-ne v11, v2, :cond_9

    .line 340
    .line 341
    new-instance v1, Lha/z6;

    .line 342
    .line 343
    new-instance v2, Lua/w0;

    .line 344
    .line 345
    invoke-direct {v2, v13, v0, v7}, Lua/w0;-><init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;I)V

    .line 346
    .line 347
    .line 348
    const-string v14, "\u5982\u679c\u4f60\u7684\u7cfb\u7edf\u662f\u91c7\u7528\u5339\u914d\u7801\u6765\u8fde\u63a5adb\u7684\uff0c\u5219\u53ef\u4ee5\u4f7f\u7528\u6b64\u529f\u80fd\n\u5426\u5219\u5343\u4e07\u4e0d\u8981\u5f00\u542f\u65e0\u7ebf\u8c03\u8bd5(\u5339\u914d\u7801)"

    .line 349
    .line 350
    const-string v15, "\u8b66\u544a\uff01\u8b66\u544a\uff01\u8b66\u544a\uff01"

    .line 351
    .line 352
    const-string v16, "\u786e\u5b9a\u6dfb\u52a0"

    .line 353
    .line 354
    const-string v17, "\u53d6\u6d88\u6dfb\u52a0"

    .line 355
    .line 356
    move-object v11, v1

    .line 357
    move-object v12, v13

    .line 358
    move-object/from16 v18, v2

    .line 359
    .line 360
    invoke-direct/range {v11 .. v18}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_5

    .line 367
    .line 368
    :cond_9
    const/16 v2, 0x195

    .line 369
    .line 370
    if-ne v11, v2, :cond_a

    .line 371
    .line 372
    new-instance v1, Lha/z6;

    .line 373
    .line 374
    new-instance v2, Lua/w0;

    .line 375
    .line 376
    invoke-direct {v2, v13, v0, v9}, Lua/w0;-><init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;I)V

    .line 377
    .line 378
    .line 379
    const-string v14, "\u6b64\u529f\u80fd\u662f\u6781\u4e2a\u522b\u7279\u6b8a\u8bbe\u5907\u7528\u7684 \u6216\u8005 \u624b\u673a\u4f7f\u7528\u7684\uff0c\u4e0d\u4e86\u89e3\u8bf7\u52ff\u7528\u6b64\u529f\u80fd"

    .line 380
    .line 381
    const-string v15, ""

    .line 382
    .line 383
    const-string v16, "\u786e\u5b9a"

    .line 384
    .line 385
    const-string v17, "\u53d6\u6d88"

    .line 386
    .line 387
    move-object v11, v1

    .line 388
    move-object v12, v13

    .line 389
    move-object/from16 v18, v2

    .line 390
    .line 391
    invoke-direct/range {v11 .. v18}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_5

    .line 398
    .line 399
    :cond_a
    const/16 v2, 0x3e8

    .line 400
    .line 401
    if-eq v11, v2, :cond_c

    .line 402
    .line 403
    const/16 v2, 0x3e9

    .line 404
    .line 405
    if-ne v11, v2, :cond_b

    .line 406
    .line 407
    goto :goto_0

    .line 408
    :cond_b
    new-instance v1, Lz7/s;

    .line 409
    .line 410
    invoke-direct {v1}, Lz7/s;-><init>()V

    .line 411
    .line 412
    .line 413
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 414
    .line 415
    const-string v3, "isOpen"

    .line 416
    .line 417
    invoke-virtual {v1, v3, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 418
    .line 419
    .line 420
    iget v2, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 421
    .line 422
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    const-string v3, "type"

    .line 427
    .line 428
    invoke-virtual {v1, v3, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 429
    .line 430
    .line 431
    const-string v2, "name"

    .line 432
    .line 433
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 434
    .line 435
    invoke-virtual {v1, v2, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 439
    .line 440
    const/4 v3, -0x1

    .line 441
    invoke-virtual {v13, v3, v1, v2}, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->y(ILz7/s;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 445
    .line 446
    const/16 v1, 0x196

    .line 447
    .line 448
    if-ne v0, v1, :cond_15

    .line 449
    .line 450
    new-instance v0, Lha/z6;

    .line 451
    .line 452
    const-string v1, "\u63d0\u793a\uff1a\u6b64\u529f\u80fd\u9700\u8981\u5f00\u542f\u81ea\u52a8\u5316\u670d\u52a1\u54df\uff01"

    .line 453
    .line 454
    const-string v2, ""

    .line 455
    .line 456
    invoke-direct {v0, v13, v13, v1, v2}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 460
    .line 461
    .line 462
    goto/16 :goto_5

    .line 463
    .line 464
    :cond_c
    :goto_0
    invoke-static {v13}, Lqf/c;->r(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    if-eqz v3, :cond_d

    .line 473
    .line 474
    const-string v0, "\u6ca1\u6709\u684c\u9762\u53ef\u9009"

    .line 475
    .line 476
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 477
    .line 478
    .line 479
    goto :goto_5

    .line 480
    :cond_d
    new-instance v15, Ljava/util/ArrayList;

    .line 481
    .line 482
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 490
    .line 491
    .line 492
    move-result v4

    .line 493
    if-eqz v4, :cond_e

    .line 494
    .line 495
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    check-cast v4, Lcom/yunpan/appmanage/bean/DesktopBean;

    .line 500
    .line 501
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/DesktopBean;->name:Ljava/lang/String;

    .line 502
    .line 503
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    goto :goto_1

    .line 507
    :cond_e
    new-instance v3, Lha/fa;

    .line 508
    .line 509
    iget-object v4, v13, Lda/g;->A:Lda/g;

    .line 510
    .line 511
    new-instance v5, Lcom/hjq/permissions/b;

    .line 512
    .line 513
    invoke-direct {v5, v13, v0, v2, v1}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 514
    .line 515
    .line 516
    const/4 v14, 0x0

    .line 517
    move-object v11, v3

    .line 518
    move-object v12, v13

    .line 519
    move-object v13, v4

    .line 520
    move-object/from16 v16, v5

    .line 521
    .line 522
    invoke-direct/range {v11 .. v16}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v3}, Lha/a4;->show()V

    .line 526
    .line 527
    .line 528
    goto :goto_5

    .line 529
    :cond_f
    :goto_2
    if-eq v11, v5, :cond_10

    .line 530
    .line 531
    if-eq v11, v4, :cond_10

    .line 532
    .line 533
    if-ne v11, v3, :cond_11

    .line 534
    .line 535
    :cond_10
    const/4 v8, 0x1

    .line 536
    :cond_11
    if-ne v11, v2, :cond_12

    .line 537
    .line 538
    const/4 v8, 0x4

    .line 539
    :cond_12
    new-instance v1, Lha/r0;

    .line 540
    .line 541
    new-instance v2, Lua/t0;

    .line 542
    .line 543
    invoke-direct {v2, v13, v0, v6}, Lua/t0;-><init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;I)V

    .line 544
    .line 545
    .line 546
    invoke-direct {v1, v13, v13, v8, v2}, Lha/r0;-><init>(Landroid/app/Activity;Landroid/content/Context;ILha/q0;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 550
    .line 551
    .line 552
    goto :goto_5

    .line 553
    :cond_13
    :goto_3
    new-instance v1, Lha/j3;

    .line 554
    .line 555
    new-instance v2, Lua/t0;

    .line 556
    .line 557
    invoke-direct {v2, v13, v0, v5}, Lua/t0;-><init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;I)V

    .line 558
    .line 559
    .line 560
    invoke-direct {v1, v13, v13, v2}, Lha/j3;-><init>(Landroid/app/Activity;Landroid/content/Context;Lha/i3;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 564
    .line 565
    .line 566
    goto :goto_5

    .line 567
    :cond_14
    :goto_4
    new-instance v1, Lha/o1;

    .line 568
    .line 569
    new-instance v2, Lua/t0;

    .line 570
    .line 571
    invoke-direct {v2, v13, v0, v3}, Lua/t0;-><init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;I)V

    .line 572
    .line 573
    .line 574
    invoke-direct {v1, v13, v13, v2}, Lha/o1;-><init>(Landroid/app/Activity;Landroid/content/Context;Lha/h7;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 578
    .line 579
    .line 580
    :cond_15
    :goto_5
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 7

    .line 1
    sget p1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 2
    .line 3
    iget-object v2, p0, Lua/u0;->a:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance p1, Lha/t7;

    .line 9
    .line 10
    iget-object p2, v2, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 11
    .line 12
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lcom/yunpan/appmanage/bean/StringBoolBean;

    .line 17
    .line 18
    iget-boolean v3, p2, Lcom/yunpan/appmanage/bean/StringBoolBean;->isCheck:Z

    .line 19
    .line 20
    iget-object p2, v2, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 21
    .line 22
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    new-instance v6, Ll5/y;

    .line 27
    .line 28
    const/16 p2, 0x1b

    .line 29
    .line 30
    invoke-direct {v6, p2, v2}, Ll5/y;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    move-object v0, p1

    .line 34
    move-object v1, v2

    .line 35
    move v5, p3

    .line 36
    invoke-direct/range {v0 .. v6}, Lha/t7;-><init>(Landroid/app/Activity;Landroid/content/Context;ZIILl5/y;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 40
    .line 41
    .line 42
    return-void
.end method
