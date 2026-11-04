.class public final Lta/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/service/AccService;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/service/AccService;Landroid/os/Looper;I)V
    .locals 0

    .line 1
    iput p3, p0, Lta/e;->a:I

    iput-object p1, p0, Lta/e;->b:Lcom/yunpan/appmanage/service/AccService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p0, Lta/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, -0x1

    .line 12
    iget-object v5, p0, Lta/e;->b:Lcom/yunpan/appmanage/service/AccService;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v5, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-object v0, v5, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 22
    .line 23
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lz7/o;->l(I)Lz7/p;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "click"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v5, p1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :goto_0
    :try_start_1
    iput v4, v5, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 48
    .line 49
    iput-wide v1, v5, Lcom/yunpan/appmanage/service/AccService;->K:J

    .line 50
    .line 51
    iput v4, v5, Lcom/yunpan/appmanage/service/AccService;->L:I

    .line 52
    .line 53
    iput-wide v1, v5, Lcom/yunpan/appmanage/service/AccService;->M:J

    .line 54
    .line 55
    iput v4, v5, Lcom/yunpan/appmanage/service/AccService;->N:I

    .line 56
    .line 57
    iput-wide v1, v5, Lcom/yunpan/appmanage/service/AccService;->O:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    .line 59
    goto/16 :goto_9

    .line 60
    .line 61
    :catch_1
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_9

    .line 66
    .line 67
    :cond_0
    const/4 v6, 0x0

    .line 68
    if-ne v0, v3, :cond_1

    .line 69
    .line 70
    iget-object v0, v5, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 71
    .line 72
    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    .line 74
    .line 75
    :try_start_2
    iget-object v0, v5, Lcom/yunpan/appmanage/service/AccService;->P:Ljava/util/HashSet;

    .line 76
    .line 77
    iget-object v3, v5, Lcom/yunpan/appmanage/service/AccService;->Z:Ljava/util/ArrayList;

    .line 78
    .line 79
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 80
    .line 81
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;

    .line 86
    .line 87
    iget v3, v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->keyCode:I

    .line 88
    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    iget-object v0, v5, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 97
    .line 98
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Lz7/o;->l(I)Lz7/p;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const-string v0, "longClick"

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {v5, p1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catch_2
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    .line 121
    .line 122
    :goto_1
    :try_start_3
    iput v4, v5, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 123
    .line 124
    iput-wide v1, v5, Lcom/yunpan/appmanage/service/AccService;->K:J

    .line 125
    .line 126
    iput v4, v5, Lcom/yunpan/appmanage/service/AccService;->L:I

    .line 127
    .line 128
    iput-wide v1, v5, Lcom/yunpan/appmanage/service/AccService;->M:J

    .line 129
    .line 130
    iput v4, v5, Lcom/yunpan/appmanage/service/AccService;->N:I

    .line 131
    .line 132
    iput-wide v1, v5, Lcom/yunpan/appmanage/service/AccService;->O:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 133
    .line 134
    goto/16 :goto_9

    .line 135
    .line 136
    :catch_3
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_9

    .line 141
    .line 142
    :cond_1
    if-ne v0, v4, :cond_6

    .line 143
    .line 144
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 145
    .line 146
    const/16 v0, 0x18

    .line 147
    .line 148
    if-lt p1, v0, :cond_2

    .line 149
    .line 150
    invoke-static {v5}, Lq/t;->A(Lcom/yunpan/appmanage/service/AccService;)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_9

    .line 154
    .line 155
    :cond_2
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    const-string v0, "enabled_accessibility_services"

    .line 160
    .line 161
    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-eqz p1, :cond_12

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_12

    .line 172
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v2, "/"

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-nez v1, :cond_3

    .line 199
    .line 200
    goto/16 :goto_9

    .line 201
    .line 202
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-class v4, Lcom/yunpan/appmanage/service/AccService;

    .line 218
    .line 219
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    const-string v7, ""

    .line 235
    .line 236
    if-eqz v6, :cond_4

    .line 237
    .line 238
    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    goto :goto_2

    .line 243
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    :goto_2
    const-string v1, "::"

    .line 286
    .line 287
    const-string v2, ":"

    .line 288
    .line 289
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-eqz v1, :cond_5

    .line 298
    .line 299
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    :cond_5
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-static {v1, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    if-eqz p1, :cond_12

    .line 312
    .line 313
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    const-string v0, "accessibility_enabled"

    .line 318
    .line 319
    invoke-static {p1, v0, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    .line 321
    .line 322
    goto/16 :goto_9

    .line 323
    .line 324
    :cond_6
    const/4 v1, 0x0

    .line 325
    const v2, 0x7f0b0522

    .line 326
    .line 327
    .line 328
    const/4 v4, -0x2

    .line 329
    const/16 v7, 0x1c

    .line 330
    .line 331
    const/16 v8, 0x100

    .line 332
    .line 333
    const/16 v9, 0x25f

    .line 334
    .line 335
    if-ne v0, v4, :cond_a

    .line 336
    .line 337
    :try_start_4
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-static {v0}, Lv8/b;->c(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 345
    .line 346
    check-cast p1, Lz7/s;

    .line 347
    .line 348
    new-instance v0, Lv8/a;

    .line 349
    .line 350
    invoke-direct {v0, v5}, Lv8/a;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    .line 351
    .line 352
    .line 353
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    iput-object v4, v0, Lv8/a;->h:Ljava/lang/String;

    .line 358
    .line 359
    const v4, 0x7f0e0217

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v4}, Lv8/a;->j(I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v8}, Lv8/a;->a(I)V

    .line 366
    .line 367
    .line 368
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 369
    .line 370
    if-lt v4, v7, :cond_7

    .line 371
    .line 372
    goto :goto_3

    .line 373
    :cond_7
    const/4 v3, 0x0

    .line 374
    :goto_3
    invoke-virtual {v0, v3}, Lv8/a;->l(I)V

    .line 375
    .line 376
    .line 377
    const-string v3, "size"

    .line 378
    .line 379
    invoke-virtual {p1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    int-to-float v3, v3

    .line 388
    iget-object v4, v0, Lv8/a;->c:Lv8/h;

    .line 389
    .line 390
    if-nez v4, :cond_8

    .line 391
    .line 392
    goto :goto_4

    .line 393
    :cond_8
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    :goto_4
    check-cast v1, Landroid/widget/TextView;

    .line 398
    .line 399
    if-eqz v1, :cond_9

    .line 400
    .line 401
    const/4 v4, 0x2

    .line 402
    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 403
    .line 404
    .line 405
    :cond_9
    const-string v1, "str1"

    .line 406
    .line 407
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-virtual {v0, v2, v1}, Lv8/a;->o(ILjava/lang/String;)V

    .line 416
    .line 417
    .line 418
    const-string v1, "time"

    .line 419
    .line 420
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 425
    .line 426
    .line 427
    move-result p1

    .line 428
    invoke-virtual {v0, p1}, Lv8/a;->r(I)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0}, Lv8/a;->t()V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_9

    .line 435
    .line 436
    :cond_a
    const/4 v4, -0x3

    .line 437
    if-ne v0, v4, :cond_b

    .line 438
    .line 439
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 440
    .line 441
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    invoke-static {p1}, Lv8/b;->c(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    goto/16 :goto_9

    .line 449
    .line 450
    :cond_b
    const/4 v4, -0x4

    .line 451
    if-ne v0, v4, :cond_11

    .line 452
    .line 453
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-static {v0}, Lv8/b;->c(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    new-instance v0, Lv8/a;

    .line 461
    .line 462
    invoke-direct {v0, v5}, Lv8/a;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    .line 463
    .line 464
    .line 465
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    iput-object v4, v0, Lv8/a;->h:Ljava/lang/String;

    .line 470
    .line 471
    const v4, 0x7f0e0218

    .line 472
    .line 473
    .line 474
    invoke-virtual {v0, v4}, Lv8/a;->j(I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0, v8}, Lv8/a;->a(I)V

    .line 478
    .line 479
    .line 480
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 481
    .line 482
    if-lt v4, v7, :cond_c

    .line 483
    .line 484
    goto :goto_5

    .line 485
    :cond_c
    const/4 v3, 0x0

    .line 486
    :goto_5
    invoke-virtual {v0, v3}, Lv8/a;->l(I)V

    .line 487
    .line 488
    .line 489
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 490
    .line 491
    iget-object v5, v0, Lv8/a;->b:Landroid/content/ContextWrapper;

    .line 492
    .line 493
    if-nez v5, :cond_d

    .line 494
    .line 495
    goto :goto_8

    .line 496
    :cond_d
    const/16 v6, 0x15

    .line 497
    .line 498
    if-lt v4, v6, :cond_e

    .line 499
    .line 500
    invoke-static {v5, v3}, Lua/t7;->f(Landroid/content/ContextWrapper;I)Landroid/graphics/drawable/Drawable;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    goto :goto_6

    .line 505
    :cond_e
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    :goto_6
    iget-object v4, v0, Lv8/a;->c:Lv8/h;

    .line 514
    .line 515
    if-nez v4, :cond_f

    .line 516
    .line 517
    goto :goto_7

    .line 518
    :cond_f
    const v1, 0x7f0b04b5

    .line 519
    .line 520
    .line 521
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    :goto_7
    check-cast v1, Landroid/widget/ImageView;

    .line 526
    .line 527
    if-eqz v1, :cond_10

    .line 528
    .line 529
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    .line 531
    .line 532
    :cond_10
    :goto_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 533
    .line 534
    check-cast p1, Ljava/lang/String;

    .line 535
    .line 536
    invoke-virtual {v0, v2, p1}, Lv8/a;->o(ILjava/lang/String;)V

    .line 537
    .line 538
    .line 539
    const/16 p1, 0x5dc

    .line 540
    .line 541
    invoke-virtual {v0, p1}, Lv8/a;->r(I)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v0}, Lv8/a;->t()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 545
    .line 546
    .line 547
    goto :goto_9

    .line 548
    :cond_11
    const/4 p1, -0x5

    .line 549
    if-ne v0, p1, :cond_12

    .line 550
    .line 551
    iget-object p1, v5, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 552
    .line 553
    new-instance v0, Lha/db;

    .line 554
    .line 555
    const/16 v1, 0x10

    .line 556
    .line 557
    invoke-direct {v0, v1, p0}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 558
    .line 559
    .line 560
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 561
    .line 562
    .line 563
    :catch_4
    :cond_12
    :goto_9
    return-void

    .line 564
    :pswitch_0
    iget-object v0, p0, Lta/e;->b:Lcom/yunpan/appmanage/service/AccService;

    .line 565
    .line 566
    :try_start_5
    iget v1, p1, Landroid/os/Message;->what:I

    .line 567
    .line 568
    const/16 v2, 0x1fa

    .line 569
    .line 570
    if-ne v1, v2, :cond_13

    .line 571
    .line 572
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 573
    .line 574
    check-cast v1, Lz7/o;

    .line 575
    .line 576
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 577
    .line 578
    .line 579
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    iget v2, p1, Landroid/os/Message;->what:I

    .line 584
    .line 585
    iput v2, v1, Landroid/os/Message;->what:I

    .line 586
    .line 587
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 588
    .line 589
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 590
    .line 591
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 592
    .line 593
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 594
    .line 595
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->l:Lta/e;

    .line 596
    .line 597
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 598
    .line 599
    const v2, 0xea60

    .line 600
    .line 601
    .line 602
    mul-int p1, p1, v2

    .line 603
    .line 604
    int-to-long v2, p1

    .line 605
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 606
    .line 607
    .line 608
    goto :goto_a

    .line 609
    :catch_5
    move-exception p1

    .line 610
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 611
    .line 612
    .line 613
    :cond_13
    :goto_a
    return-void

    .line 614
    nop

    .line 615
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
