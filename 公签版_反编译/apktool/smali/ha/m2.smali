.class public final Lha/m2;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lha/o2;


# direct methods
.method public synthetic constructor <init>(Lha/o2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/m2;->b:I

    iput-object p1, p0, Lha/m2;->c:Lha/o2;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget v0, p0, Lha/m2;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "\u6b64\u5e94\u7528\u4e0d\u5b58\u5728"

    .line 7
    .line 8
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lha/m2;->c:Lha/o2;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lha/m2;->c:Lha/o2;

    .line 3
    .line 4
    iget v2, p0, Lha/m2;->b:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const-string v2, "/"

    .line 10
    .line 11
    iget-object v3, v1, Lha/o2;->j:Landroid/content/pm/PackageInfo;

    .line 12
    .line 13
    if-eqz v3, :cond_5

    .line 14
    .line 15
    new-instance v3, Ljava/io/File;

    .line 16
    .line 17
    iget-object v4, v1, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 18
    .line 19
    iget-object v4, v4, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    long-to-double v3, v3

    .line 29
    iput-wide v3, v1, Lha/o2;->q:D

    .line 30
    .line 31
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v4, 0x15

    .line 34
    .line 35
    if-lt v3, v4, :cond_0

    .line 36
    .line 37
    iget-object v3, v1, Lha/o2;->j:Landroid/content/pm/PackageInfo;

    .line 38
    .line 39
    invoke-static {v3}, Lg7/d;->y(Landroid/content/pm/PackageInfo;)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    iget-object v3, v1, Lha/o2;->j:Landroid/content/pm/PackageInfo;

    .line 46
    .line 47
    invoke-static {v3}, Lg7/d;->y(Landroid/content/pm/PackageInfo;)[Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    array-length v3, v3

    .line 52
    if-lez v3, :cond_0

    .line 53
    .line 54
    iget-object v3, v1, Lha/o2;->i:Landroid/content/pm/ApplicationInfo;

    .line 55
    .line 56
    invoke-static {v3}, Lg7/d;->x(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    array-length v4, v3

    .line 61
    const/4 v5, 0x0

    .line 62
    :goto_0
    if-ge v5, v4, :cond_0

    .line 63
    .line 64
    aget-object v6, v3, v5

    .line 65
    .line 66
    iget-wide v7, v1, Lha/o2;->q:D

    .line 67
    .line 68
    new-instance v9, Ljava/io/File;

    .line 69
    .line 70
    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v9}, Ljava/io/File;->length()J

    .line 74
    .line 75
    .line 76
    move-result-wide v9

    .line 77
    long-to-double v9, v9

    .line 78
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    .line 79
    .line 80
    .line 81
    add-double/2addr v7, v9

    .line 82
    iput-wide v7, v1, Lha/o2;->q:D

    .line 83
    .line 84
    add-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 88
    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    iget-object v5, v1, Lha/a4;->b:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {v5}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v5, v1, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 115
    .line 116
    iget-object v5, v5, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    array-length v3, v2

    .line 136
    :goto_1
    if-ge v0, v3, :cond_2

    .line 137
    .line 138
    aget-object v4, v2, v0

    .line 139
    .line 140
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    const-string v6, ".obb"

    .line 145
    .line 146
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_1

    .line 151
    .line 152
    iget-wide v5, v1, Lha/o2;->q:D

    .line 153
    .line 154
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 155
    .line 156
    .line 157
    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    long-to-double v7, v7

    .line 159
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    .line 160
    .line 161
    .line 162
    add-double/2addr v5, v7

    .line 163
    :try_start_1
    iput-wide v5, v1, Lha/o2;->q:D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    .line 165
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :catch_0
    :cond_2
    iget-object v0, v1, Lha/o2;->x:Landroid/widget/TextView;

    .line 169
    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v3, "uid:"

    .line 173
    .line 174
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object v3, v1, Lha/o2;->i:Landroid/content/pm/ApplicationInfo;

    .line 178
    .line 179
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 180
    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v3, "  "

    .line 185
    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 190
    .line 191
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 192
    .line 193
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 194
    .line 195
    iget-wide v4, v1, Lha/o2;->q:D

    .line 196
    .line 197
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    .line 198
    .line 199
    div-double/2addr v4, v6

    .line 200
    div-double/2addr v4, v6

    .line 201
    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v3, "M  v"

    .line 209
    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    iget-object v3, v1, Lha/o2;->j:Landroid/content/pm/PackageInfo;

    .line 214
    .line 215
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, v1, Lha/o2;->j:Landroid/content/pm/PackageInfo;

    .line 228
    .line 229
    iget-wide v2, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 230
    .line 231
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 232
    .line 233
    const-wide/16 v4, 0x0

    .line 234
    .line 235
    cmp-long v6, v2, v4

    .line 236
    .line 237
    if-eqz v6, :cond_3

    .line 238
    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v3, "\u9996\u6b21\u5b89\u88c5\uff1a"

    .line 242
    .line 243
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 247
    .line 248
    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    new-instance v6, Ljava/util/Date;

    .line 252
    .line 253
    iget-object v7, v1, Lha/o2;->j:Landroid/content/pm/PackageInfo;

    .line 254
    .line 255
    iget-wide v7, v7, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 256
    .line 257
    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    goto :goto_2

    .line 272
    :cond_3
    const-string v2, "\u9996\u6b21\u5b89\u88c5\uff1a\u672a\u77e5"

    .line 273
    .line 274
    :goto_2
    iget-object v3, v1, Lha/o2;->j:Landroid/content/pm/PackageInfo;

    .line 275
    .line 276
    iget-wide v6, v3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 277
    .line 278
    cmp-long v3, v6, v4

    .line 279
    .line 280
    if-eqz v3, :cond_4

    .line 281
    .line 282
    const-string v3, "    \u6700\u8fd1\u66f4\u65b0\uff1a"

    .line 283
    .line 284
    invoke-static {v2, v3}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 289
    .line 290
    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    new-instance v0, Ljava/util/Date;

    .line 294
    .line 295
    iget-object v4, v1, Lha/o2;->j:Landroid/content/pm/PackageInfo;

    .line 296
    .line 297
    iget-wide v4, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 298
    .line 299
    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    :cond_4
    iget-object v0, v1, Lha/o2;->y:Landroid/widget/TextView;

    .line 314
    .line 315
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_5
    iget-object v0, v1, Lha/o2;->x:Landroid/widget/TextView;

    .line 320
    .line 321
    const-string v2, ""

    .line 322
    .line 323
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    .line 325
    .line 326
    iget-object v0, v1, Lha/o2;->y:Landroid/widget/TextView;

    .line 327
    .line 328
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    .line 330
    .line 331
    :goto_3
    return-void

    .line 332
    :pswitch_0
    iget-object v2, v1, Lha/o2;->p:Ll5/y;

    .line 333
    .line 334
    if-eqz v2, :cond_6

    .line 335
    .line 336
    iget v3, v1, Lha/o2;->g:I

    .line 337
    .line 338
    iget v4, v2, Ll5/y;->a:I

    .line 339
    .line 340
    packed-switch v4, :pswitch_data_1

    .line 341
    .line 342
    .line 343
    iget-object v2, v2, Ll5/y;->b:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityApps;

    .line 346
    .line 347
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityApps;->F:Lx9/a0;

    .line 348
    .line 349
    invoke-virtual {v2, v3}, Lc6/g;->C(I)V

    .line 350
    .line 351
    .line 352
    :cond_6
    :pswitch_1
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 353
    .line 354
    .line 355
    new-instance v2, Lha/z6;

    .line 356
    .line 357
    iget-object v6, v1, Lha/a4;->b:Landroid/content/Context;

    .line 358
    .line 359
    move-object v5, v6

    .line 360
    check-cast v5, Landroid/app/Activity;

    .line 361
    .line 362
    new-instance v11, Lha/l2;

    .line 363
    .line 364
    invoke-direct {v11, v0}, Lha/l2;-><init>(I)V

    .line 365
    .line 366
    .line 367
    const-string v9, "\u7acb\u5373\u91cd\u542f"

    .line 368
    .line 369
    const-string v10, "\u7a0d\u540e\u518d\u8bf4"

    .line 370
    .line 371
    const-string v7, "\u5220\u9664\u6210\u529f\uff01\u9700\u91cd\u542f\u65b9\u53ef\u6d88\u5931"

    .line 372
    .line 373
    const-string v8, ""

    .line 374
    .line 375
    move-object v4, v2

    .line 376
    invoke-direct/range {v4 .. v11}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 380
    .line 381
    .line 382
    return-void

    .line 383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_1
    .end packed-switch
.end method
