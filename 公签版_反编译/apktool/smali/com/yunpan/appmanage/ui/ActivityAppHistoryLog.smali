.class public Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic K:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/n;

.field public E:Ljava/util/ArrayList;

.field public F:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public G:Landroid/widget/LinearLayout;

.field public H:Landroid/widget/TextView;

.field public I:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->E:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->I:I

    .line 13
    .line 14
    return-void
.end method

.method public static B(J)Ljava/lang/String;
    .locals 4

    .line 1
    long-to-double p0, p0

    .line 2
    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 8
    .line 9
    .line 10
    div-double/2addr p0, v0

    .line 11
    double-to-long v0, p0

    .line 12
    const-wide/16 v2, 0x3c

    .line 13
    .line 14
    div-long/2addr v0, v2

    .line 15
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    .line 16
    .line 17
    rem-double/2addr p0, v2

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 p1, 0x2

    .line 27
    new-array p1, p1, [Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    aput-object v0, p1, v1

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    aput-object p0, p1, v0

    .line 34
    .line 35
    const-string p0, "%d\u5206%.1f\u79d2"

    .line 36
    .line 37
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static x(Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;Lmc/b;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lda/g;->A:Lda/g;

    .line 4
    .line 5
    const-string v2, "usagestats"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/app/usage/UsageStatsManager;

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-wide/32 v4, 0x6ddd00

    .line 18
    .line 19
    .line 20
    add-long/2addr v2, v4

    .line 21
    iget v4, v0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->I:I

    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x1

    .line 25
    const-wide/16 v7, 0x0

    .line 26
    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v10, 0x2

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v11

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v13

    .line 39
    sub-long/2addr v11, v13

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    if-ne v4, v6, :cond_1

    .line 42
    .line 43
    invoke-static {}, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->z()J

    .line 44
    .line 45
    .line 46
    move-result-wide v11

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const-wide/16 v11, 0x1

    .line 49
    .line 50
    if-ne v4, v10, :cond_2

    .line 51
    .line 52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v3, 0x6

    .line 57
    const/4 v4, -0x1

    .line 58
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 59
    .line 60
    .line 61
    const/16 v3, 0xb

    .line 62
    .line 63
    invoke-virtual {v2, v3, v9}, Ljava/util/Calendar;->set(II)V

    .line 64
    .line 65
    .line 66
    const/16 v3, 0xc

    .line 67
    .line 68
    invoke-virtual {v2, v3, v9}, Ljava/util/Calendar;->set(II)V

    .line 69
    .line 70
    .line 71
    const/16 v3, 0xd

    .line 72
    .line 73
    invoke-virtual {v2, v3, v9}, Ljava/util/Calendar;->set(II)V

    .line 74
    .line 75
    .line 76
    const/16 v3, 0xe

    .line 77
    .line 78
    invoke-virtual {v2, v3, v9}, Ljava/util/Calendar;->set(II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    invoke-static {}, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->z()J

    .line 86
    .line 87
    .line 88
    move-result-wide v13

    .line 89
    :goto_0
    sub-long v11, v13, v11

    .line 90
    .line 91
    move-wide/from16 v22, v2

    .line 92
    .line 93
    move-wide v2, v11

    .line 94
    move-wide/from16 v11, v22

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    if-ne v4, v5, :cond_3

    .line 98
    .line 99
    invoke-static {v10}, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->y(I)J

    .line 100
    .line 101
    .line 102
    move-result-wide v2

    .line 103
    invoke-static {v6}, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->y(I)J

    .line 104
    .line 105
    .line 106
    move-result-wide v13

    .line 107
    goto :goto_0

    .line 108
    :cond_3
    const/4 v11, 0x4

    .line 109
    if-ne v4, v11, :cond_4

    .line 110
    .line 111
    invoke-static {v10}, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->y(I)J

    .line 112
    .line 113
    .line 114
    move-result-wide v11

    .line 115
    goto :goto_1

    .line 116
    :cond_4
    move-wide v11, v7

    .line 117
    :goto_1
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 118
    .line 119
    const-string v13, "HH:mm:ss"

    .line 120
    .line 121
    invoke-direct {v4, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v13, Ljava/text/SimpleDateFormat;

    .line 125
    .line 126
    const-string v14, "yyyy-MM-dd"

    .line 127
    .line 128
    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v11, v12, v2, v3}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const-string v2, ""

    .line 136
    .line 137
    const/4 v3, 0x0

    .line 138
    :goto_2
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    const-string v12, "0\u5206"

    .line 143
    .line 144
    if-eqz v11, :cond_f

    .line 145
    .line 146
    new-instance v11, Landroid/app/usage/UsageEvents$Event;

    .line 147
    .line 148
    invoke-direct {v11}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v11}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 152
    .line 153
    .line 154
    new-instance v14, Ljava/text/SimpleDateFormat;

    .line 155
    .line 156
    const-string v15, "yyyy-MM-dd HH:mm:ss"

    .line 157
    .line 158
    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance v15, Ljava/util/Date;

    .line 162
    .line 163
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 164
    .line 165
    .line 166
    move-result-wide v9

    .line 167
    invoke-direct {v15, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v14, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 174
    .line 175
    .line 176
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    if-ne v9, v6, :cond_c

    .line 184
    .line 185
    if-eqz v3, :cond_7

    .line 186
    .line 187
    iget-wide v9, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_end:J

    .line 188
    .line 189
    cmp-long v12, v9, v7

    .line 190
    .line 191
    if-lez v12, :cond_7

    .line 192
    .line 193
    iget-object v9, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->packageName:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v9

    .line 203
    if-eqz v9, :cond_6

    .line 204
    .line 205
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 206
    .line 207
    .line 208
    move-result-wide v9

    .line 209
    iget-wide v14, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_end:J

    .line 210
    .line 211
    sub-long/2addr v9, v14

    .line 212
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    .line 213
    .line 214
    .line 215
    move-result-wide v9

    .line 216
    const-wide/16 v14, 0x3e8

    .line 217
    .line 218
    cmp-long v12, v9, v14

    .line 219
    .line 220
    if-gez v12, :cond_6

    .line 221
    .line 222
    iput-wide v7, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_end:J

    .line 223
    .line 224
    :cond_5
    :goto_3
    const/4 v10, 0x2

    .line 225
    goto/16 :goto_7

    .line 226
    .line 227
    :cond_6
    iget-object v9, v0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->E:Ljava/util/ArrayList;

    .line 228
    .line 229
    const/4 v10, 0x0

    .line 230
    invoke-virtual {v9, v10, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_7
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    sget-object v9, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 238
    .line 239
    sget-object v9, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 240
    .line 241
    iget-object v9, v9, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    if-eqz v3, :cond_8

    .line 248
    .line 249
    iget-object v3, v0, Lda/g;->A:Lda/g;

    .line 250
    .line 251
    invoke-virtual {v3}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    const v9, 0x7f13002f

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    :goto_4
    move-object/from16 v17, v3

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_8
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v3}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v9

    .line 277
    invoke-interface {v3, v9}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    if-nez v3, :cond_9

    .line 282
    .line 283
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    goto :goto_4

    .line 288
    :cond_9
    iget-object v3, v3, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :goto_5
    new-instance v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;

    .line 292
    .line 293
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v18

    .line 297
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 298
    .line 299
    .line 300
    move-result-wide v19

    .line 301
    new-instance v9, Ljava/util/Date;

    .line 302
    .line 303
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 304
    .line 305
    .line 306
    move-result-wide v10

    .line 307
    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v21

    .line 314
    move-object/from16 v16, v3

    .line 315
    .line 316
    invoke-direct/range {v16 .. v21}, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 317
    .line 318
    .line 319
    new-instance v9, Ljava/util/Date;

    .line 320
    .line 321
    iget-wide v10, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_start:J

    .line 322
    .line 323
    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v13, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v9

    .line 330
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v10

    .line 334
    if-eqz v10, :cond_a

    .line 335
    .line 336
    goto :goto_6

    .line 337
    :cond_a
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v10

    .line 341
    if-nez v10, :cond_b

    .line 342
    .line 343
    iget-object v10, v0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->E:Ljava/util/ArrayList;

    .line 344
    .line 345
    new-instance v11, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;

    .line 346
    .line 347
    invoke-direct {v11, v2}, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    const/4 v2, 0x0

    .line 351
    invoke-virtual {v10, v2, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    :goto_6
    move-object v2, v9

    .line 355
    :cond_b
    const/4 v9, 0x0

    .line 356
    const/4 v10, 0x2

    .line 357
    goto/16 :goto_2

    .line 358
    .line 359
    :cond_c
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 360
    .line 361
    .line 362
    move-result v9

    .line 363
    const/4 v10, 0x2

    .line 364
    if-ne v9, v10, :cond_e

    .line 365
    .line 366
    if-nez v3, :cond_d

    .line 367
    .line 368
    goto/16 :goto_3

    .line 369
    .line 370
    :cond_d
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 371
    .line 372
    .line 373
    move-result-wide v9

    .line 374
    iput-wide v9, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_end:J

    .line 375
    .line 376
    new-instance v9, Ljava/util/Date;

    .line 377
    .line 378
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 379
    .line 380
    .line 381
    move-result-wide v10

    .line 382
    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v4, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v9

    .line 389
    iput-object v9, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_end_str:Ljava/lang/String;

    .line 390
    .line 391
    iget-wide v9, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_end:J

    .line 392
    .line 393
    iget-wide v14, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_start:J

    .line 394
    .line 395
    sub-long/2addr v9, v14

    .line 396
    iput-wide v9, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time:J

    .line 397
    .line 398
    invoke-static {v9, v10}, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->B(J)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v9

    .line 402
    iput-object v9, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_str:Ljava/lang/String;

    .line 403
    .line 404
    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 405
    .line 406
    .line 407
    move-result v9

    .line 408
    if-eqz v9, :cond_5

    .line 409
    .line 410
    iget-object v9, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_str:Ljava/lang/String;

    .line 411
    .line 412
    const/4 v10, 0x2

    .line 413
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v9

    .line 417
    iput-object v9, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_str:Ljava/lang/String;

    .line 418
    .line 419
    :cond_e
    :goto_7
    const/4 v9, 0x0

    .line 420
    goto/16 :goto_2

    .line 421
    .line 422
    :cond_f
    if-eqz v3, :cond_13

    .line 423
    .line 424
    iget-wide v1, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_end:J

    .line 425
    .line 426
    cmp-long v9, v1, v7

    .line 427
    .line 428
    if-nez v9, :cond_12

    .line 429
    .line 430
    iget v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->I:I

    .line 431
    .line 432
    if-ne v1, v10, :cond_10

    .line 433
    .line 434
    invoke-static {}, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->z()J

    .line 435
    .line 436
    .line 437
    move-result-wide v1

    .line 438
    iput-wide v1, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_end:J

    .line 439
    .line 440
    goto :goto_8

    .line 441
    :cond_10
    if-ne v1, v5, :cond_11

    .line 442
    .line 443
    invoke-static {v6}, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->y(I)J

    .line 444
    .line 445
    .line 446
    move-result-wide v1

    .line 447
    iput-wide v1, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_end:J

    .line 448
    .line 449
    goto :goto_8

    .line 450
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 451
    .line 452
    .line 453
    move-result-wide v1

    .line 454
    iput-wide v1, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_end:J

    .line 455
    .line 456
    :goto_8
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 457
    .line 458
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    new-instance v1, Ljava/util/Date;

    .line 462
    .line 463
    iget-wide v5, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_end:J

    .line 464
    .line 465
    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    iput-object v1, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_end_str:Ljava/lang/String;

    .line 473
    .line 474
    iget-wide v1, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_end:J

    .line 475
    .line 476
    iget-wide v4, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_start:J

    .line 477
    .line 478
    sub-long/2addr v1, v4

    .line 479
    iput-wide v1, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time:J

    .line 480
    .line 481
    invoke-static {v1, v2}, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->B(J)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    iput-object v1, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_str:Ljava/lang/String;

    .line 486
    .line 487
    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-eqz v1, :cond_12

    .line 492
    .line 493
    iget-object v1, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_str:Ljava/lang/String;

    .line 494
    .line 495
    const/4 v2, 0x2

    .line 496
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    iput-object v1, v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_str:Ljava/lang/String;

    .line 501
    .line 502
    :cond_12
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->E:Ljava/util/ArrayList;

    .line 503
    .line 504
    const/4 v2, 0x0

    .line 505
    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    goto :goto_9

    .line 509
    :cond_13
    const/4 v2, 0x0

    .line 510
    :goto_9
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->E:Ljava/util/ArrayList;

    .line 511
    .line 512
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 513
    .line 514
    .line 515
    move-result v1

    .line 516
    if-nez v1, :cond_14

    .line 517
    .line 518
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->E:Ljava/util/ArrayList;

    .line 519
    .line 520
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    check-cast v1, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;

    .line 525
    .line 526
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->packageName:Ljava/lang/String;

    .line 527
    .line 528
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 529
    .line 530
    .line 531
    move-result v1

    .line 532
    if-nez v1, :cond_14

    .line 533
    .line 534
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->E:Ljava/util/ArrayList;

    .line 535
    .line 536
    new-instance v3, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;

    .line 537
    .line 538
    new-instance v4, Ljava/util/Date;

    .line 539
    .line 540
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->E:Ljava/util/ArrayList;

    .line 541
    .line 542
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    check-cast v0, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;

    .line 547
    .line 548
    iget-wide v5, v0, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_start:J

    .line 549
    .line 550
    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v13, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-direct {v3, v0}, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 564
    .line 565
    .line 566
    return-void
.end method

.method public static y(I)J
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x6

    .line 6
    neg-int p0, p0

    .line 7
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 8
    .line 9
    .line 10
    const/16 p0, 0xb

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 14
    .line 15
    .line 16
    const/16 p0, 0xc

    .line 17
    .line 18
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 19
    .line 20
    .line 21
    const/16 p0, 0xd

    .line 22
    .line 23
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 24
    .line 25
    .line 26
    const/16 p0, 0xe

    .line 27
    .line 28
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    return-wide v0
.end method

.method public static z()J
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xb

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 9
    .line 10
    .line 11
    const/16 v1, 0xc

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 14
    .line 15
    .line 16
    const/16 v1, 0xd

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 19
    .line 20
    .line 21
    const/16 v1, 0xe

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    return-wide v0
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->I:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->H:Landroid/widget/TextView;

    .line 6
    .line 7
    const-string v1, "\u672c\u6b21\u5f00\u673a\u540e\u5e94\u7528\u4f7f\u7528\u8bb0\u5f55"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->H:Landroid/widget/TextView;

    .line 17
    .line 18
    const-string v1, "\u4eca\u65e5\u5e94\u7528\u4f7f\u7528\u8bb0\u5f55"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x2

    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->H:Landroid/widget/TextView;

    .line 28
    .line 29
    const-string v1, "\u6628\u65e5\u5e94\u7528\u4f7f\u7528\u8bb0\u5f55"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v1, 0x3

    .line 36
    if-ne v0, v1, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->H:Landroid/widget/TextView;

    .line 39
    .line 40
    const-string v1, "\u524d\u5929\u5e94\u7528\u4f7f\u7528\u8bb0\u5f55"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const/4 v1, 0x4

    .line 47
    if-ne v0, v1, :cond_4

    .line 48
    .line 49
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->H:Landroid/widget/TextView;

    .line 50
    .line 51
    const-string v1, "\u4e09\u5929\u5e94\u7528\u4f7f\u7528\u8bb0\u5f55"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->E:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->D:Lx9/n;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->E:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lua/p;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lua/p;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lmc/c;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v1, Lka/c;

    .line 94
    .line 95
    const/4 v2, 0x7

    .line 96
    invoke-direct {v1, v2, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->D:Lx9/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->D:Lx9/n;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->E:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()V

    .line 20
    .line 21
    .line 22
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e001f

    return v0
.end method

.method public final u()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const v2, 0x7f0b0517

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    .line 14
    const/16 v3, 0x8

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    const v2, 0x7f0b054a

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/widget/LinearLayout;

    .line 27
    .line 28
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->G:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    const v2, 0x7f0b05ba

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->H:Landroid/widget/TextView;

    .line 43
    .line 44
    const v2, 0x7f0b03ad

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Lha/g9;

    .line 52
    .line 53
    const/16 v4, 0x19

    .line 54
    .line 55
    invoke-direct {v3, v4, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    new-instance v2, Lha/fa;

    .line 62
    .line 63
    const/4 v3, 0x5

    .line 64
    new-array v3, v3, [Ljava/lang/String;

    .line 65
    .line 66
    const-string v4, "\u672c\u6b21\u5f00\u673a\u540e\u7684"

    .line 67
    .line 68
    aput-object v4, v3, v0

    .line 69
    .line 70
    const-string v4, "\u4eca\u5929\u4f7f\u7528\u8bb0\u5f55"

    .line 71
    .line 72
    aput-object v4, v3, v1

    .line 73
    .line 74
    const-string v4, "\u6628\u5929\u4f7f\u7528\u8bb0\u5f55"

    .line 75
    .line 76
    const/4 v5, 0x2

    .line 77
    aput-object v4, v3, v5

    .line 78
    .line 79
    const-string v4, "\u524d\u5929\u4f7f\u7528\u8bb0\u5f55"

    .line 80
    .line 81
    const/4 v5, 0x3

    .line 82
    aput-object v4, v3, v5

    .line 83
    .line 84
    const-string v4, "\u4e09\u5929\u4f7f\u7528\u8bb0\u5f55"

    .line 85
    .line 86
    const/4 v5, 0x4

    .line 87
    aput-object v4, v3, v5

    .line 88
    .line 89
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    new-instance v10, Lua/p;

    .line 94
    .line 95
    invoke-direct {v10, p0}, Lua/p;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;)V

    .line 96
    .line 97
    .line 98
    const/4 v8, 0x0

    .line 99
    move-object v5, v2

    .line 100
    move-object v6, p0

    .line 101
    move-object v7, p0

    .line 102
    invoke-direct/range {v5 .. v10}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 103
    .line 104
    .line 105
    const v3, 0x7f0b03db

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v3}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    new-instance v4, Lua/m;

    .line 113
    .line 114
    invoke-direct {v4, v2, v1}, Lua/m;-><init>(Lha/fa;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    const v2, 0x7f0b04f4

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 128
    .line 129
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 130
    .line 131
    new-instance v3, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 132
    .line 133
    iget-object v4, p0, Lda/g;->A:Lda/g;

    .line 134
    .line 135
    invoke-direct {v3, v4, v1, v0}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Lx9/n;

    .line 142
    .line 143
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 144
    .line 145
    invoke-direct {v0, v2, v1}, Lx9/n;-><init>(Lda/g;I)V

    .line 146
    .line 147
    .line 148
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->D:Lx9/n;

    .line 149
    .line 150
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 151
    .line 152
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 156
    .line 157
    new-instance v1, Lua/q;

    .line 158
    .line 159
    invoke-direct {v1}, Lua/q;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 166
    .line 167
    new-instance v1, Ltb/v;

    .line 168
    .line 169
    const/16 v2, 0x16

    .line 170
    .line 171
    invoke-direct {v1, v2}, Ltb/v;-><init>(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;->A()V

    .line 178
    .line 179
    .line 180
    return-void
.end method
