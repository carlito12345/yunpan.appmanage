.class public final synthetic Lua/w5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityPss;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityPss;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/w5;->a:I

    iput-object p1, p0, Lua/w5;->b:Lcom/yunpan/appmanage/ui/ActivityPss;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 18

    .line 1
    const/4 v1, 0x1

    .line 2
    sget v0, Lcom/yunpan/appmanage/ui/ActivityPss;->M:I

    .line 3
    .line 4
    move-object/from16 v2, p0

    .line 5
    .line 6
    iget-object v3, v2, Lua/w5;->b:Lcom/yunpan/appmanage/ui/ActivityPss;

    .line 7
    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v4, "android.intent.action.MAIN"

    .line 14
    .line 15
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v4, "android.intent.category.HOME"

    .line 19
    .line 20
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 24
    .line 25
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 26
    .line 27
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    const/high16 v5, 0x10000

    .line 30
    .line 31
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 39
    .line 40
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 41
    .line 42
    :goto_0
    new-instance v4, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v5, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v6, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 63
    .line 64
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, -0x1

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    :goto_1
    const/4 v0, 0x1

    .line 73
    goto :goto_5

    .line 74
    :cond_1
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 75
    .line 76
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_2

    .line 81
    .line 82
    iget-boolean v0, v0, Lfa/j;->g:Z

    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 88
    .line 89
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-eqz v9, :cond_3

    .line 94
    .line 95
    iget-boolean v0, v0, Lfa/m;->c:Z

    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 101
    .line 102
    iget-boolean v9, v0, Lfa/o0;->a:Z

    .line 103
    .line 104
    if-eqz v9, :cond_5

    .line 105
    .line 106
    iget-object v0, v0, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 107
    .line 108
    if-eqz v0, :cond_5

    .line 109
    .line 110
    sget v0, Lhi/b;->c:I

    .line 111
    .line 112
    if-eq v0, v8, :cond_4

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    :try_start_0
    invoke-static {}, Lhi/b;->j()Ldf/c;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Ldf/a;

    .line 120
    .line 121
    invoke-virtual {v0}, Ldf/a;->getUid()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    sput v0, Lhi/b;->c:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :catch_0
    nop

    .line 129
    goto :goto_2

    .line 130
    :catch_1
    move-exception v0

    .line 131
    goto :goto_4

    .line 132
    :goto_2
    const/4 v0, -0x1

    .line 133
    :goto_3
    if-nez v0, :cond_5

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :goto_4
    new-instance v1, Ljava/lang/RuntimeException;

    .line 137
    .line 138
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    throw v1

    .line 142
    :cond_5
    const/4 v0, 0x0

    .line 143
    :goto_5
    const/16 v9, 0xa

    .line 144
    .line 145
    if-nez v0, :cond_6

    .line 146
    .line 147
    goto/16 :goto_b

    .line 148
    .line 149
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    sget-object v10, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 155
    .line 156
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v10, ":acc"

    .line 164
    .line 165
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    const-string v0, "procrank"

    .line 178
    .line 179
    const-wide/16 v11, 0x61a8

    .line 180
    .line 181
    invoke-static {v11, v12, v0}, La2/w0;->n(JLjava/lang/String;)Lfa/a0;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iget-object v11, v0, Lfa/a0;->b:Ljava/util/List;

    .line 186
    .line 187
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    if-le v11, v9, :cond_e

    .line 192
    .line 193
    const-string v11, "^([^\\s]+)\\s+([^\\s]+)K\\s+([^\\s]+)K\\s+([^\\s]+)K\\s+([^\\s]+)K\\s+(.*)$"

    .line 194
    .line 195
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    iget-object v0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 200
    .line 201
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_e

    .line 210
    .line 211
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 226
    .line 227
    .line 228
    move-result v13

    .line 229
    if-nez v13, :cond_7

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_7
    :try_start_1
    new-instance v13, Lcom/yunpan/appmanage/bean/PssBean;

    .line 233
    .line 234
    invoke-direct {v13}, Lcom/yunpan/appmanage/bean/PssBean;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    iput-object v14, v13, Lcom/yunpan/appmanage/bean/PssBean;->pid:Ljava/lang/String;

    .line 242
    .line 243
    const/4 v14, 0x4

    .line 244
    invoke-virtual {v0, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v14

    .line 248
    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 249
    .line 250
    .line 251
    move-result-object v14

    .line 252
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 253
    .line 254
    .line 255
    move-result-wide v14

    .line 256
    iput-wide v14, v13, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 257
    .line 258
    invoke-static {v14, v15}, Lif/a;->l0(J)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v14

    .line 262
    iput-object v14, v13, Lcom/yunpan/appmanage/bean/PssBean;->pss_str:Ljava/lang/String;

    .line 263
    .line 264
    const/4 v14, 0x6

    .line 265
    invoke-virtual {v0, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    iput-object v0, v13, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 270
    .line 271
    const-string v14, "/"

    .line 272
    .line 273
    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-nez v0, :cond_d

    .line 278
    .line 279
    iget-object v0, v13, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 280
    .line 281
    const-string v14, "su"

    .line 282
    .line 283
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-nez v0, :cond_d

    .line 288
    .line 289
    iget-object v0, v13, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 290
    .line 291
    const-string v14, "."

    .line 292
    .line 293
    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-lez v0, :cond_d

    .line 298
    .line 299
    iget-object v0, v13, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 300
    .line 301
    const-string v14, ":"

    .line 302
    .line 303
    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    move-result v14

    .line 307
    if-eq v14, v8, :cond_8

    .line 308
    .line 309
    invoke-virtual {v0, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    new-instance v15, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .line 317
    .line 318
    iget-object v9, v13, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 319
    .line 320
    add-int/2addr v14, v1

    .line 321
    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v9, "\u8fdb\u7a0b"

    .line 329
    .line 330
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v9

    .line 337
    iput-object v9, v13, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 338
    .line 339
    iget-object v9, v13, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v9

    .line 345
    if-eqz v9, :cond_a

    .line 346
    .line 347
    const-string v9, "\u81ea\u52a8\u5316\u4efb\u52a1"

    .line 348
    .line 349
    iput-object v9, v13, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 350
    .line 351
    goto :goto_7

    .line 352
    :catch_2
    move-exception v0

    .line 353
    goto/16 :goto_9

    .line 354
    .line 355
    :cond_8
    const-string v9, "@"

    .line 356
    .line 357
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    move-result v9

    .line 361
    if-eq v9, v8, :cond_9

    .line 362
    .line 363
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    new-instance v14, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    iget-object v15, v13, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 373
    .line 374
    add-int/2addr v9, v1

    .line 375
    invoke-virtual {v15, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v9

    .line 379
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v9, "\u670d\u52a1"

    .line 383
    .line 384
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v9

    .line 391
    iput-object v9, v13, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 392
    .line 393
    goto :goto_7

    .line 394
    :cond_9
    const-string v9, "\u4e3b\u7a0b\u5e8f"

    .line 395
    .line 396
    iput-object v9, v13, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 397
    .line 398
    :cond_a
    :goto_7
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 399
    .line 400
    .line 401
    move-result-object v9

    .line 402
    invoke-virtual {v9}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 403
    .line 404
    .line 405
    move-result-object v9

    .line 406
    invoke-interface {v9, v0}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 407
    .line 408
    .line 409
    move-result-object v9

    .line 410
    if-eqz v9, :cond_b

    .line 411
    .line 412
    iget-object v0, v9, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 413
    .line 414
    iput-object v0, v13, Lcom/yunpan/appmanage/bean/PssBean;->name:Ljava/lang/String;

    .line 415
    .line 416
    iget-object v0, v9, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 417
    .line 418
    iput-object v0, v13, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 419
    .line 420
    iget-boolean v0, v9, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 421
    .line 422
    iput-boolean v0, v13, Lcom/yunpan/appmanage/bean/PssBean;->isCanStarted:Z

    .line 423
    .line 424
    goto :goto_8

    .line 425
    :cond_b
    sget-object v9, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 426
    .line 427
    sget-object v9, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 428
    .line 429
    iget-object v14, v9, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 430
    .line 431
    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-eqz v0, :cond_d

    .line 436
    .line 437
    iget-object v0, v9, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 438
    .line 439
    iput-object v0, v13, Lcom/yunpan/appmanage/bean/PssBean;->name:Ljava/lang/String;

    .line 440
    .line 441
    iget-object v0, v9, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 442
    .line 443
    iput-object v0, v13, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 444
    .line 445
    iget-wide v14, v13, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 446
    .line 447
    const-wide/32 v16, 0x11170

    .line 448
    .line 449
    .line 450
    cmp-long v0, v14, v16

    .line 451
    .line 452
    if-lez v0, :cond_c

    .line 453
    .line 454
    const-wide/16 v16, 0x2800

    .line 455
    .line 456
    sub-long v14, v14, v16

    .line 457
    .line 458
    iput-wide v14, v13, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 459
    .line 460
    :cond_c
    iget-wide v14, v13, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 461
    .line 462
    invoke-static {v14, v15}, Lif/a;->l0(J)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    iput-object v0, v13, Lcom/yunpan/appmanage/bean/PssBean;->pss_str:Ljava/lang/String;

    .line 467
    .line 468
    iput-boolean v1, v13, Lcom/yunpan/appmanage/bean/PssBean;->isCanStarted:Z

    .line 469
    .line 470
    :cond_d
    :goto_8
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 471
    .line 472
    .line 473
    goto :goto_a

    .line 474
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 475
    .line 476
    .line 477
    :goto_a
    const/16 v9, 0xa

    .line 478
    .line 479
    goto/16 :goto_6

    .line 480
    .line 481
    :cond_e
    :goto_b
    iput-object v6, v3, Lcom/yunpan/appmanage/ui/ActivityPss;->G:Ljava/util/ArrayList;

    .line 482
    .line 483
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    const/16 v1, 0xa

    .line 488
    .line 489
    if-ge v0, v1, :cond_f

    .line 490
    .line 491
    invoke-static {}, Landroid/support/v4/media/session/b;->q()Ljava/util/ArrayList;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    iput-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityPss;->G:Ljava/util/ArrayList;

    .line 496
    .line 497
    :cond_f
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityPss;->G:Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    if-ge v0, v1, :cond_10

    .line 504
    .line 505
    iget-object v0, v3, Lda/g;->A:Lda/g;

    .line 506
    .line 507
    invoke-static {v0}, Landroid/support/v4/media/session/b;->p(Lda/g;)Ljava/util/ArrayList;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    iput-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityPss;->G:Ljava/util/ArrayList;

    .line 512
    .line 513
    :cond_10
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityPss;->G:Ljava/util/ArrayList;

    .line 514
    .line 515
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    if-eqz v1, :cond_16

    .line 524
    .line 525
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    check-cast v1, Lcom/yunpan/appmanage/bean/PssBean;

    .line 530
    .line 531
    iget-object v6, v1, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 532
    .line 533
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 534
    .line 535
    .line 536
    move-result v6

    .line 537
    const-string v7, "0"

    .line 538
    .line 539
    const-string v8, ""

    .line 540
    .line 541
    const-string v9, "android"

    .line 542
    .line 543
    if-nez v6, :cond_11

    .line 544
    .line 545
    iget-boolean v6, v1, Lcom/yunpan/appmanage/bean/PssBean;->isCanStarted:Z

    .line 546
    .line 547
    if-eqz v6, :cond_11

    .line 548
    .line 549
    new-instance v6, Ljava/lang/StringBuilder;

    .line 550
    .line 551
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .line 553
    .line 554
    iget-object v10, v1, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 555
    .line 556
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    iget-object v10, v1, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 560
    .line 561
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v6

    .line 568
    new-instance v10, Lcom/yunpan/appmanage/bean/PssBean;

    .line 569
    .line 570
    invoke-direct {v10, v1}, Lcom/yunpan/appmanage/bean/PssBean;-><init>(Lcom/yunpan/appmanage/bean/PssBean;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v4, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    goto :goto_d

    .line 577
    :cond_11
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v6

    .line 581
    check-cast v6, Lcom/yunpan/appmanage/bean/PssBean;

    .line 582
    .line 583
    if-nez v6, :cond_12

    .line 584
    .line 585
    new-instance v6, Lcom/yunpan/appmanage/bean/PssBean;

    .line 586
    .line 587
    invoke-direct {v6, v1}, Lcom/yunpan/appmanage/bean/PssBean;-><init>(Lcom/yunpan/appmanage/bean/PssBean;)V

    .line 588
    .line 589
    .line 590
    const-string v10, " \u5176\u5b83"

    .line 591
    .line 592
    iput-object v10, v6, Lcom/yunpan/appmanage/bean/PssBean;->name:Ljava/lang/String;

    .line 593
    .line 594
    iput-object v7, v6, Lcom/yunpan/appmanage/bean/PssBean;->pid:Ljava/lang/String;

    .line 595
    .line 596
    iput-object v8, v6, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 597
    .line 598
    iput-object v8, v6, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 599
    .line 600
    iput-object v8, v6, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 601
    .line 602
    invoke-virtual {v4, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    goto :goto_d

    .line 606
    :cond_12
    iget-wide v10, v6, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 607
    .line 608
    iget-wide v12, v1, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 609
    .line 610
    add-long/2addr v10, v12

    .line 611
    iput-wide v10, v6, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 612
    .line 613
    invoke-static {v10, v11}, Lif/a;->l0(J)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v10

    .line 617
    iput-object v10, v6, Lcom/yunpan/appmanage/bean/PssBean;->pss_str:Ljava/lang/String;

    .line 618
    .line 619
    invoke-virtual {v4, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    :goto_d
    iget-object v6, v1, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 623
    .line 624
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 625
    .line 626
    .line 627
    move-result v6

    .line 628
    if-nez v6, :cond_14

    .line 629
    .line 630
    iget-object v6, v1, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 631
    .line 632
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v6

    .line 636
    check-cast v6, Lcom/yunpan/appmanage/bean/PssBean;

    .line 637
    .line 638
    if-nez v6, :cond_13

    .line 639
    .line 640
    iget-object v6, v1, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 641
    .line 642
    new-instance v7, Lcom/yunpan/appmanage/bean/PssBean;

    .line 643
    .line 644
    invoke-direct {v7, v1}, Lcom/yunpan/appmanage/bean/PssBean;-><init>(Lcom/yunpan/appmanage/bean/PssBean;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    goto/16 :goto_c

    .line 651
    .line 652
    :cond_13
    new-instance v7, Ljava/lang/StringBuilder;

    .line 653
    .line 654
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .line 656
    .line 657
    iget-object v8, v6, Lcom/yunpan/appmanage/bean/PssBean;->pid:Ljava/lang/String;

    .line 658
    .line 659
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    const-string v8, ","

    .line 663
    .line 664
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    iget-object v8, v1, Lcom/yunpan/appmanage/bean/PssBean;->pid:Ljava/lang/String;

    .line 668
    .line 669
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v7

    .line 676
    iput-object v7, v6, Lcom/yunpan/appmanage/bean/PssBean;->pid:Ljava/lang/String;

    .line 677
    .line 678
    iget-wide v7, v6, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 679
    .line 680
    iget-wide v9, v1, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 681
    .line 682
    add-long/2addr v7, v9

    .line 683
    iput-wide v7, v6, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 684
    .line 685
    invoke-static {v7, v8}, Lif/a;->l0(J)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v7

    .line 689
    iput-object v7, v6, Lcom/yunpan/appmanage/bean/PssBean;->pss_str:Ljava/lang/String;

    .line 690
    .line 691
    new-instance v7, Ljava/lang/StringBuilder;

    .line 692
    .line 693
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 694
    .line 695
    .line 696
    iget-object v8, v6, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 697
    .line 698
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    const-string v8, " + "

    .line 702
    .line 703
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    iget-object v8, v1, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 707
    .line 708
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v7

    .line 715
    iput-object v7, v6, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 716
    .line 717
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 718
    .line 719
    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    goto/16 :goto_c

    .line 723
    .line 724
    :cond_14
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v6

    .line 728
    check-cast v6, Lcom/yunpan/appmanage/bean/PssBean;

    .line 729
    .line 730
    if-nez v6, :cond_15

    .line 731
    .line 732
    new-instance v6, Lcom/yunpan/appmanage/bean/PssBean;

    .line 733
    .line 734
    invoke-direct {v6, v1}, Lcom/yunpan/appmanage/bean/PssBean;-><init>(Lcom/yunpan/appmanage/bean/PssBean;)V

    .line 735
    .line 736
    .line 737
    const-string v1, "\u5176\u5b83"

    .line 738
    .line 739
    iput-object v1, v6, Lcom/yunpan/appmanage/bean/PssBean;->name:Ljava/lang/String;

    .line 740
    .line 741
    iput-object v7, v6, Lcom/yunpan/appmanage/bean/PssBean;->pid:Ljava/lang/String;

    .line 742
    .line 743
    iput-object v8, v6, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 744
    .line 745
    iput-object v8, v6, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 746
    .line 747
    iput-object v8, v6, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 748
    .line 749
    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    goto/16 :goto_c

    .line 753
    .line 754
    :cond_15
    iget-wide v7, v6, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 755
    .line 756
    iget-wide v10, v1, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 757
    .line 758
    add-long/2addr v7, v10

    .line 759
    iput-wide v7, v6, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 760
    .line 761
    invoke-static {v7, v8}, Lif/a;->l0(J)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    iput-object v1, v6, Lcom/yunpan/appmanage/bean/PssBean;->pss_str:Ljava/lang/String;

    .line 766
    .line 767
    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    goto/16 :goto_c

    .line 771
    .line 772
    :cond_16
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityPss;->H:Ljava/util/ArrayList;

    .line 773
    .line 774
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 779
    .line 780
    .line 781
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityPss;->I:Ljava/util/ArrayList;

    .line 782
    .line 783
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 788
    .line 789
    .line 790
    new-instance v3, Lqa/e;

    .line 791
    .line 792
    const/16 v4, 0x16

    .line 793
    .line 794
    invoke-direct {v3, v4}, Lqa/e;-><init>(I)V

    .line 795
    .line 796
    .line 797
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 798
    .line 799
    .line 800
    new-instance v0, Lqa/e;

    .line 801
    .line 802
    const/16 v3, 0x17

    .line 803
    .line 804
    invoke-direct {v0, v3}, Lqa/e;-><init>(I)V

    .line 805
    .line 806
    .line 807
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 811
    .line 812
    .line 813
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    iget v2, v0, Lua/w5;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lua/w5;->b:Lcom/yunpan/appmanage/ui/ActivityPss;

    .line 11
    .line 12
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityPss;->F:Lx9/h4;

    .line 13
    .line 14
    invoke-virtual {v3, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/yunpan/appmanage/bean/PssBean;

    .line 19
    .line 20
    iget-object v4, v3, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    iget-object v4, v3, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, v2, Lda/g;->A:Lda/g;

    .line 33
    .line 34
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    sget-object v4, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 46
    .line 47
    iget v4, v4, Lcom/yunpan/appmanage/util/w;->Q:I

    .line 48
    .line 49
    if-lez v4, :cond_1

    .line 50
    .line 51
    new-instance v4, Lha/z6;

    .line 52
    .line 53
    iget-object v7, v2, Lda/g;->A:Lda/g;

    .line 54
    .line 55
    new-instance v12, Lua/y5;

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-direct {v12, v2, v3, v1, v5}, Lua/y5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPss;Lcom/yunpan/appmanage/bean/PssBean;II)V

    .line 59
    .line 60
    .line 61
    const-string v10, "\u5173\u95ed\u8fdb\u7a0b"

    .line 62
    .line 63
    const-string v11, "\u5f3a\u5236\u505c\u6b62"

    .line 64
    .line 65
    const-string v8, "\u662f\u5426\u8981\u5173\u95ed\u6b64\u8fdb\u7a0b \u6216 \u5f3a\u5236\u505c\u6b62\u6b64\u5e94\u7528"

    .line 66
    .line 67
    const-string v9, ""

    .line 68
    .line 69
    move-object v5, v4

    .line 70
    move-object v6, v7

    .line 71
    invoke-direct/range {v5 .. v12}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Lha/a4;->show()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    new-instance v4, Lha/z6;

    .line 79
    .line 80
    iget-object v15, v2, Lda/g;->A:Lda/g;

    .line 81
    .line 82
    new-instance v5, Lua/y5;

    .line 83
    .line 84
    const/4 v6, 0x1

    .line 85
    invoke-direct {v5, v2, v3, v1, v6}, Lua/y5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPss;Lcom/yunpan/appmanage/bean/PssBean;II)V

    .line 86
    .line 87
    .line 88
    const-string v18, "\u5173\u95ed\u8fdb\u7a0b"

    .line 89
    .line 90
    const-string v19, ""

    .line 91
    .line 92
    const-string v16, "\u662f\u5426\u8981\u5173\u95ed\u6b64\u8fdb\u7a0b"

    .line 93
    .line 94
    const-string v17, ""

    .line 95
    .line 96
    move-object v13, v4

    .line 97
    move-object v14, v15

    .line 98
    move-object/from16 v20, v5

    .line 99
    .line 100
    invoke-direct/range {v13 .. v20}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Lha/a4;->show()V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    :goto_0
    const-string v1, "\u7981\u6b62\u64cd\u4f5c"

    .line 108
    .line 109
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    :goto_1
    return-void

    .line 113
    :pswitch_0
    iget-object v2, v0, Lua/w5;->b:Lcom/yunpan/appmanage/ui/ActivityPss;

    .line 114
    .line 115
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityPss;->D:Lx9/c0;

    .line 116
    .line 117
    invoke-virtual {v3, v1}, Lx9/c0;->G(I)V

    .line 118
    .line 119
    .line 120
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 121
    .line 122
    iput v1, v3, Lcom/yunpan/appmanage/util/w;->Q:I

    .line 123
    .line 124
    :try_start_0
    iget-object v4, v3, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 125
    .line 126
    const-string v5, "Pss_mode"

    .line 127
    .line 128
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v4, v5, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    :catch_0
    invoke-virtual {v3}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 136
    .line 137
    .line 138
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivityPss;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 139
    .line 140
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 141
    .line 142
    .line 143
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 144
    .line 145
    iget v1, v1, Lcom/yunpan/appmanage/util/w;->Q:I

    .line 146
    .line 147
    if-nez v1, :cond_3

    .line 148
    .line 149
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivityPss;->F:Lx9/h4;

    .line 150
    .line 151
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityPss;->G:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_3
    const/4 v3, 0x1

    .line 158
    if-ne v1, v3, :cond_4

    .line 159
    .line 160
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivityPss;->F:Lx9/h4;

    .line 161
    .line 162
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityPss;->H:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_4
    iget-object v1, v2, Lcom/yunpan/appmanage/ui/ActivityPss;->F:Lx9/h4;

    .line 169
    .line 170
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityPss;->I:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 173
    .line 174
    .line 175
    :goto_2
    return-void

    .line 176
    nop

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
