.class public final synthetic Lka/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:Lka/d;


# direct methods
.method public synthetic constructor <init>(Lka/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lka/a;->a:Lka/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 16

    .line 1
    const/4 v1, 0x1

    .line 2
    move-object/from16 v2, p0

    .line 3
    .line 4
    iget-object v0, v2, Lka/a;->a:Lka/d;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v3, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v4, v0, Lka/d;->b:Ljava/lang/String;

    .line 15
    .line 16
    iget v0, v0, Lka/d;->a:I

    .line 17
    .line 18
    const-string v5, "."

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    const/16 v7, 0x18

    .line 22
    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v8, 0x201

    .line 28
    .line 29
    if-lt v0, v7, :cond_0

    .line 30
    .line 31
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 32
    .line 33
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 36
    .line 37
    invoke-virtual {v0, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 43
    .line 44
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    invoke-virtual {v0, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    array-length v4, v0

    .line 57
    :goto_1
    if-ge v6, v4, :cond_2

    .line 58
    .line 59
    aget-object v7, v0, v6

    .line 60
    .line 61
    iget v8, v7, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 62
    .line 63
    if-nez v8, :cond_1

    .line 64
    .line 65
    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v8, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    add-int/2addr v9, v1

    .line 72
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    :goto_2
    move-object v10, v8

    .line 77
    goto :goto_3

    .line 78
    :cond_1
    sget-object v8, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 79
    .line 80
    sget-object v8, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 81
    .line 82
    iget-object v8, v8, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 83
    .line 84
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    goto :goto_2

    .line 93
    :goto_3
    new-instance v8, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;

    .line 94
    .line 95
    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v12, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 98
    .line 99
    iget-boolean v7, v7, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 100
    .line 101
    xor-int/2addr v7, v1

    .line 102
    invoke-static {v11, v12, v7}, Lka/d;->g(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 103
    .line 104
    .line 105
    move-result v14

    .line 106
    const-string v13, ""

    .line 107
    .line 108
    move-object v9, v8

    .line 109
    invoke-direct/range {v9 .. v14}, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    add-int/2addr v6, v1

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    move-object/from16 v1, p1

    .line 118
    .line 119
    goto/16 :goto_11

    .line 120
    .line 121
    :cond_3
    if-ne v0, v1, :cond_7

    .line 122
    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 124
    .line 125
    const/16 v8, 0x204

    .line 126
    .line 127
    if-lt v0, v7, :cond_4

    .line 128
    .line 129
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 130
    .line 131
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 134
    .line 135
    invoke-virtual {v0, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    goto :goto_4

    .line 140
    :cond_4
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 141
    .line 142
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 143
    .line 144
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 145
    .line 146
    invoke-virtual {v0, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    :goto_4
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 151
    .line 152
    if-eqz v0, :cond_2

    .line 153
    .line 154
    array-length v4, v0

    .line 155
    :goto_5
    if-ge v6, v4, :cond_2

    .line 156
    .line 157
    aget-object v7, v0, v6

    .line 158
    .line 159
    iget v8, v7, Landroid/content/pm/ServiceInfo;->labelRes:I

    .line 160
    .line 161
    if-nez v8, :cond_5

    .line 162
    .line 163
    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v8, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    add-int/2addr v9, v1

    .line 170
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    goto :goto_6

    .line 175
    :cond_5
    sget-object v8, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 176
    .line 177
    sget-object v8, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 178
    .line 179
    iget-object v8, v8, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 180
    .line 181
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    :goto_6
    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 190
    .line 191
    if-eqz v9, :cond_6

    .line 192
    .line 193
    const-string v10, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    .line 194
    .line 195
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    if-eqz v9, :cond_6

    .line 200
    .line 201
    const-string v9, "(\u65e0\u969c\u788d\u670d\u52a1)"

    .line 202
    .line 203
    invoke-static {v8, v9}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    :cond_6
    move-object v10, v8

    .line 208
    new-instance v8, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;

    .line 209
    .line 210
    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 211
    .line 212
    iget-object v12, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 213
    .line 214
    iget-boolean v7, v7, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 215
    .line 216
    xor-int/2addr v7, v1

    .line 217
    invoke-static {v11, v12, v7}, Lka/d;->g(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 218
    .line 219
    .line 220
    move-result v14

    .line 221
    const-string v13, ""

    .line 222
    .line 223
    move-object v9, v8

    .line 224
    invoke-direct/range {v9 .. v14}, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    add-int/2addr v6, v1

    .line 231
    goto :goto_5

    .line 232
    :cond_7
    const/4 v8, 0x2

    .line 233
    if-ne v0, v8, :cond_b

    .line 234
    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 236
    .line 237
    const/16 v8, 0x202

    .line 238
    .line 239
    if-lt v0, v7, :cond_8

    .line 240
    .line 241
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 242
    .line 243
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 244
    .line 245
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 246
    .line 247
    invoke-virtual {v0, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    goto :goto_7

    .line 252
    :cond_8
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 253
    .line 254
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 255
    .line 256
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 257
    .line 258
    invoke-virtual {v0, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    :goto_7
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 263
    .line 264
    if-eqz v4, :cond_2

    .line 265
    .line 266
    array-length v7, v4

    .line 267
    :goto_8
    if-ge v6, v7, :cond_2

    .line 268
    .line 269
    aget-object v8, v4, v6

    .line 270
    .line 271
    iget v0, v8, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 272
    .line 273
    if-nez v0, :cond_9

    .line 274
    .line 275
    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    move-result v9

    .line 281
    add-int/2addr v9, v1

    .line 282
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    :goto_9
    move-object v9, v0

    .line 287
    goto :goto_a

    .line 288
    :cond_9
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 289
    .line 290
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 291
    .line 292
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 293
    .line 294
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    goto :goto_9

    .line 303
    :goto_a
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    .line 304
    .line 305
    iget-object v10, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 306
    .line 307
    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 308
    .line 309
    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    sget-object v10, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 313
    .line 314
    sget-object v10, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 315
    .line 316
    iget-object v10, v10, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 317
    .line 318
    const/16 v11, 0x80

    .line 319
    .line 320
    invoke-virtual {v10, v0, v11}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 325
    .line 326
    if-eqz v0, :cond_a

    .line 327
    .line 328
    const-string v10, "android.appwidget.provider"

    .line 329
    .line 330
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 331
    .line 332
    .line 333
    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    if-eqz v0, :cond_a

    .line 335
    .line 336
    const-string v0, "(\u684c\u9762\u5c0f\u90e8\u4ef6)"

    .line 337
    .line 338
    invoke-static {v9, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v9

    .line 342
    :cond_a
    :goto_b
    move-object v11, v9

    .line 343
    goto :goto_c

    .line 344
    :catch_0
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 346
    .line 347
    .line 348
    goto :goto_b

    .line 349
    :goto_c
    new-instance v0, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;

    .line 350
    .line 351
    iget-object v12, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 352
    .line 353
    iget-object v13, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 354
    .line 355
    iget-boolean v8, v8, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 356
    .line 357
    xor-int/2addr v8, v1

    .line 358
    invoke-static {v12, v13, v8}, Lka/d;->g(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 359
    .line 360
    .line 361
    move-result v15

    .line 362
    const-string v14, ""

    .line 363
    .line 364
    move-object v10, v0

    .line 365
    invoke-direct/range {v10 .. v15}, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    add-int/2addr v6, v1

    .line 372
    goto :goto_8

    .line 373
    :cond_b
    const/4 v8, 0x3

    .line 374
    if-ne v0, v8, :cond_2

    .line 375
    .line 376
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 377
    .line 378
    const/16 v8, 0x208

    .line 379
    .line 380
    if-lt v0, v7, :cond_c

    .line 381
    .line 382
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 383
    .line 384
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 385
    .line 386
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 387
    .line 388
    invoke-virtual {v0, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    goto :goto_d

    .line 393
    :cond_c
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 394
    .line 395
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 396
    .line 397
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 398
    .line 399
    invoke-virtual {v0, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    :goto_d
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 404
    .line 405
    if-eqz v0, :cond_2

    .line 406
    .line 407
    array-length v4, v0

    .line 408
    :goto_e
    if-ge v6, v4, :cond_2

    .line 409
    .line 410
    aget-object v7, v0, v6

    .line 411
    .line 412
    iget v8, v7, Landroid/content/pm/ProviderInfo;->labelRes:I

    .line 413
    .line 414
    if-nez v8, :cond_d

    .line 415
    .line 416
    iget-object v8, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {v8, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    move-result v9

    .line 422
    add-int/2addr v9, v1

    .line 423
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v8

    .line 427
    :goto_f
    move-object v10, v8

    .line 428
    goto :goto_10

    .line 429
    :cond_d
    sget-object v8, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 430
    .line 431
    sget-object v8, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 432
    .line 433
    iget-object v8, v8, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 434
    .line 435
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 436
    .line 437
    .line 438
    move-result-object v8

    .line 439
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v8

    .line 443
    goto :goto_f

    .line 444
    :goto_10
    new-instance v8, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;

    .line 445
    .line 446
    iget-object v11, v7, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 447
    .line 448
    iget-object v12, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 449
    .line 450
    iget-boolean v7, v7, Landroid/content/pm/ProviderInfo;->enabled:Z

    .line 451
    .line 452
    xor-int/2addr v7, v1

    .line 453
    invoke-static {v11, v12, v7}, Lka/d;->g(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 454
    .line 455
    .line 456
    move-result v14

    .line 457
    const-string v13, ""

    .line 458
    .line 459
    move-object v9, v8

    .line 460
    invoke-direct/range {v9 .. v14}, Lcom/yunpan/appmanage/bean/NamePackClassDesEnabledBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    add-int/2addr v6, v1

    .line 467
    goto :goto_e

    .line 468
    :goto_11
    invoke-virtual {v1, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 472
    .line 473
    .line 474
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lka/a;->a:Lka/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p2, Lha/o;

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    invoke-direct {p2, p3, v0, p1}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lmc/c;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1, p2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p2, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    new-instance v0, Lha/s2;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-direct {v0, p3, v1, p1}, Lha/s2;-><init>(IILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Lec/b;->b(Lec/e;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
