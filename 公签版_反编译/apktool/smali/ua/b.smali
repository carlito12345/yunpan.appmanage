.class public final synthetic Lua/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityAccessibility;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAccessibility;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/b;->a:I

    iput-object p1, p0, Lua/b;->b:Lcom/yunpan/appmanage/ui/ActivityAccessibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "enabled_accessibility_services"

    .line 6
    .line 7
    const-string v3, ":"

    .line 8
    .line 9
    iget-object v4, v1, Lua/b;->b:Lcom/yunpan/appmanage/ui/ActivityAccessibility;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    iget v7, v1, Lua/b;->a:I

    .line 14
    .line 15
    packed-switch v7, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    sget v7, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->G:I

    .line 19
    .line 20
    new-instance v7, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    :goto_0
    iget-object v9, v4, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->D:Lx9/a;

    .line 27
    .line 28
    invoke-virtual {v9}, Lc6/g;->b()I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    if-ge v8, v9, :cond_1

    .line 33
    .line 34
    iget-object v9, v4, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->D:Lx9/a;

    .line 35
    .line 36
    invoke-virtual {v9, v8}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    check-cast v9, Lx9/b;

    .line 41
    .line 42
    iget-boolean v9, v9, Lx9/b;->f:Z

    .line 43
    .line 44
    if-eqz v9, :cond_0

    .line 45
    .line 46
    iget-object v9, v4, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->D:Lx9/a;

    .line 47
    .line 48
    invoke-virtual {v9, v8}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    check-cast v9, Lx9/b;

    .line 53
    .line 54
    iget-object v9, v9, Lx9/b;->c:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_0
    add-int/2addr v8, v6

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-nez v8, :cond_2

    .line 73
    .line 74
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    sub-int/2addr v7, v6

    .line 79
    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :cond_2
    :try_start_0
    iget-object v5, v4, Lda/g;->A:Lda/g;

    .line 84
    .line 85
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-static {v5, v0, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    iget-object v0, v4, Lda/g;->A:Lda/g;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v4, "accessibility_enabled"

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    xor-int/2addr v5, v6

    .line 108
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    :cond_3
    if-eqz v0, :cond_4

    .line 113
    .line 114
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 115
    .line 116
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->S:Z

    .line 117
    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    :cond_4
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {}, La2/w0;->P()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_5

    .line 130
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v4, "settings put secure enabled_accessibility_services \'"

    .line 137
    .line 138
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v4, "\'"

    .line 145
    .line 146
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iget v4, v0, Lfa/a0;->a:I

    .line 158
    .line 159
    if-nez v4, :cond_6

    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v4, "settings put secure accessibility_enabled "

    .line 167
    .line 168
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    xor-int/2addr v4, v6

    .line 176
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    goto :goto_1

    .line 188
    :cond_5
    const/4 v0, 0x0

    .line 189
    :cond_6
    :goto_1
    if-eqz v0, :cond_8

    .line 190
    .line 191
    iget v0, v0, Lfa/a0;->a:I

    .line 192
    .line 193
    if-nez v0, :cond_8

    .line 194
    .line 195
    :cond_7
    sget-object v0, Lwa/v;->a:Lcom/yunpan/appmanage/util/b0;

    .line 196
    .line 197
    invoke-virtual {v0, v3}, Lcom/yunpan/appmanage/util/b0;->e(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_8
    new-instance v0, Ljava/lang/Exception;

    .line 205
    .line 206
    const-string v3, "\u4fee\u6539\u5931\u8d25"

    .line 207
    .line 208
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :catch_0
    const-string v0, "\u65e0\u6743\u9650\u4fee\u6539"

    .line 213
    .line 214
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 215
    .line 216
    .line 217
    :goto_2
    return-void

    .line 218
    :pswitch_0
    sget v7, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->G:I

    .line 219
    .line 220
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    :try_start_1
    new-instance v7, Ljava/util/HashSet;

    .line 224
    .line 225
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 226
    .line 227
    .line 228
    iget-object v8, v4, Lda/g;->A:Lda/g;

    .line 229
    .line 230
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    invoke-static {v8, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 238
    const-string v8, "/"

    .line 239
    .line 240
    if-eqz v0, :cond_a

    .line 241
    .line 242
    :try_start_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 243
    .line 244
    .line 245
    move-result v9

    .line 246
    if-eqz v9, :cond_a

    .line 247
    .line 248
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    array-length v9, v3

    .line 253
    const/4 v10, 0x0

    .line 254
    :goto_3
    if-ge v10, v9, :cond_a

    .line 255
    .line 256
    aget-object v0, v3, v10

    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 263
    .line 264
    .line 265
    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 266
    if-nez v11, :cond_9

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_9
    :try_start_3
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 278
    .line 279
    .line 280
    goto :goto_4

    .line 281
    :catch_1
    move-exception v0

    .line 282
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 283
    .line 284
    .line 285
    :goto_4
    add-int/2addr v10, v6

    .line 286
    goto :goto_3

    .line 287
    :catch_2
    move-exception v0

    .line 288
    goto/16 :goto_c

    .line 289
    .line 290
    :cond_a
    new-array v0, v6, [Ljava/lang/String;

    .line 291
    .line 292
    const-string v3, "dumpsys accessibility"

    .line 293
    .line 294
    aput-object v3, v0, v5

    .line 295
    .line 296
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroidx/room/s;->q()Z

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    if-eqz v3, :cond_b

    .line 309
    .line 310
    invoke-virtual {v0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {v0}, Landroidx/room/s;->j()Ljava/util/List;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    iput-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->F:Ljava/lang/String;

    .line 330
    .line 331
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    .line 332
    .line 333
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .line 335
    .line 336
    iget-object v3, v4, Lda/g;->A:Lda/g;

    .line 337
    .line 338
    const-string v9, "accessibility"

    .line 339
    .line 340
    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    .line 345
    .line 346
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    const/4 v9, 0x2

    .line 351
    if-eqz v3, :cond_12

    .line 352
    .line 353
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 354
    .line 355
    .line 356
    move-result v10

    .line 357
    if-eqz v10, :cond_c

    .line 358
    .line 359
    goto/16 :goto_9

    .line 360
    .line 361
    :cond_c
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 366
    .line 367
    .line 368
    move-result v10

    .line 369
    if-eqz v10, :cond_17

    .line 370
    .line 371
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v10

    .line 375
    check-cast v10, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 376
    .line 377
    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 378
    .line 379
    .line 380
    move-result-object v11

    .line 381
    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 382
    .line 383
    sget-object v12, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 384
    .line 385
    sget-object v12, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 386
    .line 387
    iget-object v13, v12, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 388
    .line 389
    invoke-virtual {v11, v13}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 390
    .line 391
    .line 392
    move-result-object v11

    .line 393
    move-object v14, v11

    .line 394
    check-cast v14, Ljava/lang/String;

    .line 395
    .line 396
    iget-object v11, v12, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 397
    .line 398
    invoke-virtual {v10, v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v11

    .line 402
    if-eqz v11, :cond_e

    .line 403
    .line 404
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 405
    .line 406
    .line 407
    move-result v13

    .line 408
    if-eqz v13, :cond_d

    .line 409
    .line 410
    goto :goto_6

    .line 411
    :cond_d
    move-object/from16 v17, v11

    .line 412
    .line 413
    goto :goto_7

    .line 414
    :cond_e
    :goto_6
    move-object/from16 v17, v14

    .line 415
    .line 416
    :goto_7
    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v11

    .line 420
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 421
    .line 422
    .line 423
    move-result-object v11

    .line 424
    if-nez v11, :cond_f

    .line 425
    .line 426
    goto :goto_5

    .line 427
    :cond_f
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v13

    .line 431
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v13

    .line 435
    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 436
    .line 437
    .line 438
    move-result-object v15

    .line 439
    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 440
    .line 441
    iget-boolean v15, v15, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 442
    .line 443
    if-eqz v13, :cond_11

    .line 444
    .line 445
    iget-object v12, v12, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 446
    .line 447
    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 448
    .line 449
    .line 450
    move-result v12

    .line 451
    if-ne v12, v9, :cond_10

    .line 452
    .line 453
    const/4 v13, 0x0

    .line 454
    const/4 v15, 0x0

    .line 455
    :cond_10
    iget-object v12, v4, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->F:Ljava/lang/String;

    .line 456
    .line 457
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 458
    .line 459
    .line 460
    move-result v12

    .line 461
    if-nez v12, :cond_11

    .line 462
    .line 463
    iget-object v12, v4, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->F:Ljava/lang/String;

    .line 464
    .line 465
    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 466
    .line 467
    .line 468
    move-result v12

    .line 469
    if-nez v12, :cond_11

    .line 470
    .line 471
    move/from16 v18, v15

    .line 472
    .line 473
    const/16 v19, 0x0

    .line 474
    .line 475
    const/16 v20, 0x1

    .line 476
    .line 477
    goto :goto_8

    .line 478
    :cond_11
    move/from16 v19, v13

    .line 479
    .line 480
    move/from16 v18, v15

    .line 481
    .line 482
    const/16 v20, 0x0

    .line 483
    .line 484
    :goto_8
    new-instance v12, Lx9/b;

    .line 485
    .line 486
    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v13

    .line 490
    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v10

    .line 494
    invoke-virtual {v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    move-result v10

    .line 498
    invoke-virtual {v13, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v15

    .line 502
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v16

    .line 506
    move-object v13, v12

    .line 507
    invoke-direct/range {v13 .. v20}, Lx9/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    goto/16 :goto_5

    .line 514
    .line 515
    :cond_12
    :goto_9
    new-instance v3, Landroid/content/Intent;

    .line 516
    .line 517
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 518
    .line 519
    .line 520
    const-string v10, "android.accessibilityservice.AccessibilityService"

    .line 521
    .line 522
    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 526
    .line 527
    .line 528
    move-result-object v10

    .line 529
    invoke-virtual {v10, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 534
    .line 535
    .line 536
    move-result-object v3

    .line 537
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 538
    .line 539
    .line 540
    move-result v10

    .line 541
    if-eqz v10, :cond_17

    .line 542
    .line 543
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v10

    .line 547
    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 548
    .line 549
    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 550
    .line 551
    if-nez v10, :cond_13

    .line 552
    .line 553
    goto :goto_a

    .line 554
    :cond_13
    sget-object v11, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 555
    .line 556
    sget-object v11, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 557
    .line 558
    iget-object v12, v11, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 559
    .line 560
    invoke-virtual {v10, v12}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 561
    .line 562
    .line 563
    move-result-object v12

    .line 564
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v14

    .line 568
    iget-object v15, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 569
    .line 570
    new-instance v12, Ljava/lang/StringBuilder;

    .line 571
    .line 572
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .line 574
    .line 575
    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 576
    .line 577
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 584
    .line 585
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v12

    .line 592
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 593
    .line 594
    .line 595
    move-result-object v12

    .line 596
    if-nez v12, :cond_14

    .line 597
    .line 598
    goto :goto_a

    .line 599
    :cond_14
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v13

    .line 603
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v13

    .line 607
    iget-boolean v10, v10, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 608
    .line 609
    if-eqz v13, :cond_16

    .line 610
    .line 611
    iget-object v11, v11, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 612
    .line 613
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 614
    .line 615
    .line 616
    move-result v11

    .line 617
    if-ne v11, v9, :cond_15

    .line 618
    .line 619
    const/4 v10, 0x0

    .line 620
    const/4 v13, 0x0

    .line 621
    :cond_15
    iget-object v11, v4, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->F:Ljava/lang/String;

    .line 622
    .line 623
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 624
    .line 625
    .line 626
    move-result v11

    .line 627
    if-nez v11, :cond_16

    .line 628
    .line 629
    iget-object v11, v4, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->F:Ljava/lang/String;

    .line 630
    .line 631
    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 632
    .line 633
    .line 634
    move-result v11

    .line 635
    if-nez v11, :cond_16

    .line 636
    .line 637
    move/from16 v18, v10

    .line 638
    .line 639
    const/16 v19, 0x0

    .line 640
    .line 641
    const/16 v20, 0x1

    .line 642
    .line 643
    goto :goto_b

    .line 644
    :cond_16
    move/from16 v18, v10

    .line 645
    .line 646
    move/from16 v19, v13

    .line 647
    .line 648
    const/16 v20, 0x0

    .line 649
    .line 650
    :goto_b
    new-instance v10, Lx9/b;

    .line 651
    .line 652
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v16

    .line 656
    const-string v17, ""

    .line 657
    .line 658
    move-object v13, v10

    .line 659
    invoke-direct/range {v13 .. v20}, Lx9/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    goto/16 :goto_a

    .line 666
    .line 667
    :cond_17
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 671
    .line 672
    .line 673
    goto :goto_d

    .line 674
    :goto_c
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 675
    .line 676
    .line 677
    :goto_d
    return-void

    .line 678
    nop

    .line 679
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 8

    .line 1
    sget p1, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->G:I

    .line 2
    .line 3
    iget-object v2, p0, Lua/b;->b:Lcom/yunpan/appmanage/ui/ActivityAccessibility;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->D:Lx9/a;

    .line 12
    .line 13
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lx9/b;

    .line 18
    .line 19
    iget-boolean p2, p1, Lx9/b;->e:Z

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    new-instance p1, Lha/z6;

    .line 24
    .line 25
    new-instance v7, Ld3/g;

    .line 26
    .line 27
    const/4 p2, 0x7

    .line 28
    invoke-direct {v7, p3, p2, v2}, Ld3/g;-><init>(IILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const-string v5, "\u89e3\u7981"

    .line 32
    .line 33
    const-string v6, "\u53d6\u6d88"

    .line 34
    .line 35
    const-string v3, "\u68c0\u6d4b\u5230\u6b64\u670d\u52a1\u7ec4\u4ef6\u5df2\u88ab\u7981\u7528\uff0c\u5982\u9700\u5f00\u542f\uff0c\u8bf7\u5148\u89e3\u7981"

    .line 36
    .line 37
    const-string v4, ""

    .line 38
    .line 39
    move-object v0, p1

    .line 40
    move-object v1, v2

    .line 41
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-boolean p2, p1, Lx9/b;->g:Z

    .line 49
    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    new-instance p2, Lha/z6;

    .line 53
    .line 54
    new-instance v7, Landroidx/room/s;

    .line 55
    .line 56
    const/16 v0, 0xd

    .line 57
    .line 58
    invoke-direct {v7, v2, p3, p1, v0}, Landroidx/room/s;-><init>(Lda/g;ILjava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    const-string v5, "\u5148\u4e0d\u7ba1\uff0c\u7ee7\u7eed"

    .line 62
    .line 63
    const-string v6, "\u5f3a\u5236\u505c\u6b62\u6b64\u5e94\u7528"

    .line 64
    .line 65
    const-string v3, "\u68c0\u6d4b\u5230\u6b64\u670d\u52a1\u7ec4\u4ef6\u5f02\u5e38\uff0c\u53ef\u80fd\u65e0\u6cd5\u5f00\u542f\uff0c\u8bf7\u5f3a\u5236\u505c\u6b62\u6b64\u65e0\u969c\u788d\u7684\u4e3b\u5e94\u7528"

    .line 66
    .line 67
    const-string v4, ""

    .line 68
    .line 69
    move-object v0, p2

    .line 70
    move-object v1, v2

    .line 71
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v2, p3}, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->x(I)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method
