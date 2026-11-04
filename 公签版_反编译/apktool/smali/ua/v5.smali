.class public final synthetic Lua/v5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lc6/e;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityPs;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityPs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/v5;->a:Lcom/yunpan/appmanage/ui/ActivityPs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 16

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityPs;->L:I

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget-object v2, v1, Lua/v5;->a:Lcom/yunpan/appmanage/ui/ActivityPs;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v3, "0"

    .line 11
    .line 12
    const-string v4, ","

    .line 13
    .line 14
    const-string v5, "android"

    .line 15
    .line 16
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v0, "ps -A"

    .line 22
    .line 23
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v6, v0, Lfa/a0;->a:I

    .line 28
    .line 29
    const/16 v7, 0x14

    .line 30
    .line 31
    if-nez v6, :cond_0

    .line 32
    .line 33
    iget-object v6, v0, Lfa/a0;->b:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-ge v6, v7, :cond_1

    .line 40
    .line 41
    :cond_0
    const-string v0, "ps"

    .line 42
    .line 43
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_1
    iget v6, v0, Lfa/a0;->a:I

    .line 48
    .line 49
    if-nez v6, :cond_e

    .line 50
    .line 51
    iget-object v6, v0, Lfa/a0;->b:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-ge v6, v7, :cond_2

    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_2
    new-instance v6, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    iget-object v7, v2, Lcom/yunpan/appmanage/ui/ActivityPs;->K:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    iget-object v0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_d

    .line 83
    .line 84
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/lang/String;

    .line 89
    .line 90
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 91
    .line 92
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-nez v9, :cond_3

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    :try_start_0
    new-instance v9, Lcom/yunpan/appmanage/bean/PsBean;

    .line 111
    .line 112
    invoke-direct {v9}, Lcom/yunpan/appmanage/bean/PsBean;-><init>()V

    .line 113
    .line 114
    .line 115
    const/4 v10, 0x1

    .line 116
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/PsBean;->user:Ljava/lang/String;

    .line 121
    .line 122
    const/4 v10, 0x2

    .line 123
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/PsBean;->pid:Ljava/lang/String;

    .line 128
    .line 129
    const/4 v10, 0x3

    .line 130
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/PsBean;->ppid:Ljava/lang/String;

    .line 135
    .line 136
    const/4 v10, 0x4

    .line 137
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    int-to-long v10, v10

    .line 150
    iput-wide v10, v9, Lcom/yunpan/appmanage/bean/PsBean;->vsz:J

    .line 151
    .line 152
    invoke-static {v10, v11}, Lif/a;->l0(J)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/PsBean;->vsz_str:Ljava/lang/String;

    .line 157
    .line 158
    const/4 v10, 0x5

    .line 159
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    int-to-long v10, v10

    .line 172
    iput-wide v10, v9, Lcom/yunpan/appmanage/bean/PsBean;->rss:J

    .line 173
    .line 174
    invoke-static {v10, v11}, Lif/a;->l0(J)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/PsBean;->rss_str:Ljava/lang/String;

    .line 179
    .line 180
    const/4 v10, 0x6

    .line 181
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/PsBean;->wchan:Ljava/lang/String;

    .line 186
    .line 187
    const/4 v10, 0x7

    .line 188
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/PsBean;->addr:Ljava/lang/String;

    .line 193
    .line 194
    const/16 v10, 0x8

    .line 195
    .line 196
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/PsBean;->state:Ljava/lang/String;

    .line 201
    .line 202
    const/16 v10, 0x9

    .line 203
    .line 204
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iput-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->name:Ljava/lang/String;

    .line 209
    .line 210
    iget-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->user:Ljava/lang/String;

    .line 211
    .line 212
    const-string v10, "u"

    .line 213
    .line 214
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-nez v0, :cond_4

    .line 219
    .line 220
    iget-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->user:Ljava/lang/String;

    .line 221
    .line 222
    const-string v10, "system"

    .line 223
    .line 224
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_9

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    goto/16 :goto_3

    .line 233
    .line 234
    :cond_4
    :goto_1
    iget-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->name:Ljava/lang/String;

    .line 235
    .line 236
    const-string v10, "]"

    .line 237
    .line 238
    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-nez v0, :cond_9

    .line 243
    .line 244
    iget-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->name:Ljava/lang/String;

    .line 245
    .line 246
    const-string v10, "."

    .line 247
    .line 248
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    const/4 v10, -0x1

    .line 253
    if-eq v0, v10, :cond_9

    .line 254
    .line 255
    iget-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->name:Ljava/lang/String;

    .line 256
    .line 257
    iput-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 258
    .line 259
    const-string v11, ":"

    .line 260
    .line 261
    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    const/4 v11, 0x0

    .line 266
    if-eq v0, v10, :cond_5

    .line 267
    .line 268
    iget-object v12, v9, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {v12, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    iput-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 275
    .line 276
    :cond_5
    iget-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 277
    .line 278
    const-string v12, "@"

    .line 279
    .line 280
    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-eq v0, v10, :cond_6

    .line 285
    .line 286
    iget-object v10, v9, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v10, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    iput-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 293
    .line 294
    :cond_6
    iget-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-nez v0, :cond_8

    .line 301
    .line 302
    iget-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 303
    .line 304
    sget-object v10, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 305
    .line 306
    sget-object v10, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 307
    .line 308
    iget-object v10, v10, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-eqz v0, :cond_8

    .line 315
    .line 316
    iget-wide v10, v9, Lcom/yunpan/appmanage/bean/PsBean;->vsz:J

    .line 317
    .line 318
    const-wide/32 v12, 0xc350

    .line 319
    .line 320
    .line 321
    cmp-long v0, v10, v12

    .line 322
    .line 323
    if-lez v0, :cond_7

    .line 324
    .line 325
    sub-long/2addr v10, v12

    .line 326
    iput-wide v10, v9, Lcom/yunpan/appmanage/bean/PsBean;->vsz:J

    .line 327
    .line 328
    invoke-static {v10, v11}, Lif/a;->l0(J)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    iput-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->vsz_str:Ljava/lang/String;

    .line 333
    .line 334
    :cond_7
    iget-wide v10, v9, Lcom/yunpan/appmanage/bean/PsBean;->rss:J

    .line 335
    .line 336
    cmp-long v0, v10, v12

    .line 337
    .line 338
    if-lez v0, :cond_9

    .line 339
    .line 340
    sub-long/2addr v10, v12

    .line 341
    iput-wide v10, v9, Lcom/yunpan/appmanage/bean/PsBean;->rss:J

    .line 342
    .line 343
    invoke-static {v10, v11}, Lif/a;->l0(J)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    iput-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->rss_str:Ljava/lang/String;

    .line 348
    .line 349
    goto :goto_2

    .line 350
    :cond_8
    iget-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-nez v0, :cond_9

    .line 357
    .line 358
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    iget-object v10, v9, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 367
    .line 368
    invoke-interface {v0, v10}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    if-nez v0, :cond_9

    .line 373
    .line 374
    const-string v0, ""

    .line 375
    .line 376
    iput-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 377
    .line 378
    :cond_9
    :goto_2
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityPs;->E:Ljava/util/ArrayList;

    .line 379
    .line 380
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    iget-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 384
    .line 385
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-nez v0, :cond_b

    .line 390
    .line 391
    iget-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 392
    .line 393
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    check-cast v0, Lcom/yunpan/appmanage/bean/PsBean;

    .line 398
    .line 399
    if-nez v0, :cond_a

    .line 400
    .line 401
    iget-object v0, v9, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 402
    .line 403
    new-instance v10, Lcom/yunpan/appmanage/bean/PsBean;

    .line 404
    .line 405
    invoke-direct {v10, v9}, Lcom/yunpan/appmanage/bean/PsBean;-><init>(Lcom/yunpan/appmanage/bean/PsBean;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v6, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    goto/16 :goto_0

    .line 412
    .line 413
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .line 417
    .line 418
    iget-object v11, v0, Lcom/yunpan/appmanage/bean/PsBean;->pid:Ljava/lang/String;

    .line 419
    .line 420
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    iget-object v11, v9, Lcom/yunpan/appmanage/bean/PsBean;->pid:Ljava/lang/String;

    .line 427
    .line 428
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v10

    .line 435
    iput-object v10, v0, Lcom/yunpan/appmanage/bean/PsBean;->pid:Ljava/lang/String;

    .line 436
    .line 437
    new-instance v10, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    iget-object v11, v9, Lcom/yunpan/appmanage/bean/PsBean;->ppid:Ljava/lang/String;

    .line 446
    .line 447
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v10

    .line 454
    iput-object v10, v0, Lcom/yunpan/appmanage/bean/PsBean;->ppid:Ljava/lang/String;

    .line 455
    .line 456
    iget-wide v10, v0, Lcom/yunpan/appmanage/bean/PsBean;->vsz:J

    .line 457
    .line 458
    iget-wide v12, v9, Lcom/yunpan/appmanage/bean/PsBean;->vsz:J

    .line 459
    .line 460
    add-long/2addr v10, v12

    .line 461
    iput-wide v10, v0, Lcom/yunpan/appmanage/bean/PsBean;->vsz:J

    .line 462
    .line 463
    iget-wide v12, v0, Lcom/yunpan/appmanage/bean/PsBean;->rss:J

    .line 464
    .line 465
    iget-wide v14, v9, Lcom/yunpan/appmanage/bean/PsBean;->rss:J

    .line 466
    .line 467
    add-long/2addr v12, v14

    .line 468
    iput-wide v12, v0, Lcom/yunpan/appmanage/bean/PsBean;->rss:J

    .line 469
    .line 470
    invoke-static {v10, v11}, Lif/a;->l0(J)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v10

    .line 474
    iput-object v10, v0, Lcom/yunpan/appmanage/bean/PsBean;->vsz_str:Ljava/lang/String;

    .line 475
    .line 476
    iget-wide v10, v0, Lcom/yunpan/appmanage/bean/PsBean;->rss:J

    .line 477
    .line 478
    invoke-static {v10, v11}, Lif/a;->l0(J)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v10

    .line 482
    iput-object v10, v0, Lcom/yunpan/appmanage/bean/PsBean;->rss_str:Ljava/lang/String;

    .line 483
    .line 484
    iget-object v9, v9, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 485
    .line 486
    iput-object v9, v0, Lcom/yunpan/appmanage/bean/PsBean;->name:Ljava/lang/String;

    .line 487
    .line 488
    invoke-virtual {v6, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    goto/16 :goto_0

    .line 492
    .line 493
    :cond_b
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    check-cast v0, Lcom/yunpan/appmanage/bean/PsBean;

    .line 498
    .line 499
    if-nez v0, :cond_c

    .line 500
    .line 501
    new-instance v0, Lcom/yunpan/appmanage/bean/PsBean;

    .line 502
    .line 503
    invoke-direct {v0, v9}, Lcom/yunpan/appmanage/bean/PsBean;-><init>(Lcom/yunpan/appmanage/bean/PsBean;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    goto/16 :goto_0

    .line 510
    .line 511
    :cond_c
    const-string v10, "\u7cfb\u7edf"

    .line 512
    .line 513
    iput-object v10, v0, Lcom/yunpan/appmanage/bean/PsBean;->user:Ljava/lang/String;

    .line 514
    .line 515
    const-string v10, "\u7cfb\u7edf\u548c\u5176\u5b83"

    .line 516
    .line 517
    iput-object v10, v0, Lcom/yunpan/appmanage/bean/PsBean;->name:Ljava/lang/String;

    .line 518
    .line 519
    iput-object v3, v0, Lcom/yunpan/appmanage/bean/PsBean;->pid:Ljava/lang/String;

    .line 520
    .line 521
    iput-object v3, v0, Lcom/yunpan/appmanage/bean/PsBean;->ppid:Ljava/lang/String;

    .line 522
    .line 523
    iget-wide v10, v0, Lcom/yunpan/appmanage/bean/PsBean;->vsz:J

    .line 524
    .line 525
    iget-wide v12, v9, Lcom/yunpan/appmanage/bean/PsBean;->vsz:J

    .line 526
    .line 527
    add-long/2addr v10, v12

    .line 528
    iput-wide v10, v0, Lcom/yunpan/appmanage/bean/PsBean;->vsz:J

    .line 529
    .line 530
    iget-wide v12, v0, Lcom/yunpan/appmanage/bean/PsBean;->rss:J

    .line 531
    .line 532
    iget-wide v14, v9, Lcom/yunpan/appmanage/bean/PsBean;->rss:J

    .line 533
    .line 534
    add-long/2addr v12, v14

    .line 535
    iput-wide v12, v0, Lcom/yunpan/appmanage/bean/PsBean;->rss:J

    .line 536
    .line 537
    invoke-static {v10, v11}, Lif/a;->l0(J)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v9

    .line 541
    iput-object v9, v0, Lcom/yunpan/appmanage/bean/PsBean;->vsz_str:Ljava/lang/String;

    .line 542
    .line 543
    iget-wide v9, v0, Lcom/yunpan/appmanage/bean/PsBean;->rss:J

    .line 544
    .line 545
    invoke-static {v9, v10}, Lif/a;->l0(J)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v9

    .line 549
    iput-object v9, v0, Lcom/yunpan/appmanage/bean/PsBean;->rss_str:Ljava/lang/String;

    .line 550
    .line 551
    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .line 553
    .line 554
    goto/16 :goto_0

    .line 555
    .line 556
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 557
    .line 558
    .line 559
    goto/16 :goto_0

    .line 560
    .line 561
    :cond_d
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityPs;->F:Ljava/util/ArrayList;

    .line 562
    .line 563
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 568
    .line 569
    .line 570
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 571
    .line 572
    .line 573
    goto :goto_5

    .line 574
    :cond_e
    :goto_4
    const-string v0, "\u6b64\u8bbe\u5907\u4e0d\u652f\u6301"

    .line 575
    .line 576
    move-object/from16 v2, p1

    .line 577
    .line 578
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 579
    .line 580
    .line 581
    :goto_5
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 9

    .line 1
    iget-object p1, p0, Lua/v5;->a:Lcom/yunpan/appmanage/ui/ActivityPs;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityPs;->D:Lx9/g4;

    .line 4
    .line 5
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lcom/yunpan/appmanage/bean/PsBean;

    .line 10
    .line 11
    iget-object v0, p2, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p2, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p1, Lda/g;->A:Lda/g;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lha/z6;

    .line 37
    .line 38
    iget-object v3, p1, Lda/g;->A:Lda/g;

    .line 39
    .line 40
    new-instance v8, Landroidx/room/s;

    .line 41
    .line 42
    const/16 v1, 0x11

    .line 43
    .line 44
    invoke-direct {v8, p1, p2, p3, v1}, Landroidx/room/s;-><init>(Lda/g;Ljava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    const-string v6, "\u5173\u95ed\u8fdb\u7a0b"

    .line 48
    .line 49
    const-string v7, "\u5f3a\u5236\u505c\u6b62"

    .line 50
    .line 51
    const-string v4, "\u662f\u5426\u8981\u5173\u95ed\u6b64\u8fdb\u7a0b \u6216 \u5f3a\u5236\u505c\u6b62\u6b64\u5e94\u7528"

    .line 52
    .line 53
    const-string v5, ""

    .line 54
    .line 55
    move-object v1, v0

    .line 56
    move-object v2, v3

    .line 57
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    const-string p1, "\u7981\u6b62\u64cd\u4f5c"

    .line 65
    .line 66
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void
.end method
