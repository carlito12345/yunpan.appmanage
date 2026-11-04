.class public final synthetic Lua/p5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityPresentation;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityPresentation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/p5;->a:Lcom/yunpan/appmanage/ui/ActivityPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 20

    .line 1
    sget v1, Lcom/yunpan/appmanage/ui/ActivityPresentation;->H:I

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget-object v2, v1, Lua/p5;->a:Lcom/yunpan/appmanage/ui/ActivityPresentation;

    .line 6
    .line 7
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 8
    .line 9
    invoke-static {v3}, Lqf/c;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iput-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityPresentation;->F:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string v3, "dumpsys window displays"

    .line 21
    .line 22
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget v4, v3, Lfa/a0;->a:I

    .line 27
    .line 28
    const-string v5, "\u65e0\u6cd5\u83b7\u53d6\u5c4f\u5e55\u4fe1\u606f"

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_9

    .line 39
    .line 40
    :cond_0
    invoke-virtual {v3}, Lfa/a0;->a()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "mDisplayId"

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_9

    .line 59
    .line 60
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v5, Ljava/util/HashSet;

    .line 66
    .line 67
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v6, "Display: mDisplayId="

    .line 71
    .line 72
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    array-length v6, v3

    .line 77
    const/4 v7, 0x0

    .line 78
    const/4 v8, 0x0

    .line 79
    :goto_0
    if-ge v8, v6, :cond_d

    .line 80
    .line 81
    aget-object v9, v3, v8

    .line 82
    .line 83
    const-string v10, "Application"

    .line 84
    .line 85
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    if-nez v10, :cond_3

    .line 90
    .line 91
    :cond_2
    const/4 v0, 0x0

    .line 92
    const/4 v1, 0x1

    .line 93
    goto/16 :goto_8

    .line 94
    .line 95
    :cond_3
    const-string v10, "\n"

    .line 96
    .line 97
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    const-string v11, " "

    .line 110
    .line 111
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    if-eqz v12, :cond_4

    .line 116
    .line 117
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    invoke-virtual {v10, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    :cond_4
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    iget-object v12, v2, Lcom/yunpan/appmanage/ui/ActivityPresentation;->E:Ljava/util/HashSet;

    .line 130
    .line 131
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    invoke-virtual {v12, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    if-nez v10, :cond_5

    .line 139
    .line 140
    new-instance v15, Lcom/yunpan/appmanage/bean/PresentationBean;

    .line 141
    .line 142
    const/4 v14, 0x0

    .line 143
    const-string v16, "\u4e3b\u5c4f"

    .line 144
    .line 145
    const-string v17, ""

    .line 146
    .line 147
    const-string v18, ""

    .line 148
    .line 149
    move-object v12, v15

    .line 150
    move v13, v10

    .line 151
    move-object v0, v15

    .line 152
    move-object/from16 v15, v16

    .line 153
    .line 154
    move-object/from16 v16, v17

    .line 155
    .line 156
    move-object/from16 v17, v18

    .line 157
    .line 158
    invoke-direct/range {v12 .. v17}, Lcom/yunpan/appmanage/bean/PresentationBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_5
    new-instance v0, Lcom/yunpan/appmanage/bean/PresentationBean;

    .line 166
    .line 167
    const-string v12, "\u526f\u5c4f\uff08ID="

    .line 168
    .line 169
    const-string v13, "\uff09"

    .line 170
    .line 171
    invoke-static {v12, v10, v13}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v15

    .line 175
    const-string v16, ""

    .line 176
    .line 177
    const-string v17, ""

    .line 178
    .line 179
    const/4 v14, 0x0

    .line 180
    move-object v12, v0

    .line 181
    move v13, v10

    .line 182
    invoke-direct/range {v12 .. v17}, Lcom/yunpan/appmanage/bean/PresentationBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    :goto_1
    const-string v0, " ActivityRecord{"

    .line 189
    .line 190
    const-string v12, "}"

    .line 191
    .line 192
    invoke-static {v9, v0, v12}, Lif/a;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const/4 v9, 0x0

    .line 201
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    if-eqz v12, :cond_2

    .line 206
    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    check-cast v12, Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v12

    .line 217
    invoke-virtual {v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    array-length v13, v12

    .line 222
    const/4 v14, 0x4

    .line 223
    if-eq v13, v14, :cond_7

    .line 224
    .line 225
    :cond_6
    :goto_3
    move-object/from16 v19, v0

    .line 226
    .line 227
    const/4 v0, 0x0

    .line 228
    goto/16 :goto_7

    .line 229
    .line 230
    :cond_7
    const/4 v13, 0x2

    .line 231
    aget-object v14, v12, v13

    .line 232
    .line 233
    const-string v15, "/"

    .line 234
    .line 235
    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 236
    .line 237
    .line 238
    move-result v14

    .line 239
    if-eqz v14, :cond_6

    .line 240
    .line 241
    const/4 v14, 0x3

    .line 242
    aget-object v7, v12, v14

    .line 243
    .line 244
    const-string v14, "t"

    .line 245
    .line 246
    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    if-nez v7, :cond_8

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_8
    aget-object v7, v12, v13

    .line 254
    .line 255
    invoke-virtual {v7, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result v14

    .line 259
    const/4 v15, 0x0

    .line 260
    invoke-virtual {v7, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v14

    .line 268
    if-eqz v14, :cond_9

    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_9
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 275
    .line 276
    .line 277
    move-result-object v14

    .line 278
    invoke-virtual {v14}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 279
    .line 280
    .line 281
    move-result-object v14

    .line 282
    invoke-interface {v14, v7}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 283
    .line 284
    .line 285
    move-result-object v14

    .line 286
    if-nez v14, :cond_a

    .line 287
    .line 288
    move-object v14, v7

    .line 289
    goto :goto_4

    .line 290
    :cond_a
    iget-object v14, v14, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 291
    .line 292
    :goto_4
    sget-object v17, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 293
    .line 294
    sget-object v15, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 295
    .line 296
    iget-object v13, v15, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v13

    .line 302
    if-eqz v13, :cond_b

    .line 303
    .line 304
    iget-object v13, v15, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 305
    .line 306
    move-object v15, v13

    .line 307
    :goto_5
    const/4 v13, 0x1

    .line 308
    goto :goto_6

    .line 309
    :cond_b
    move-object v15, v14

    .line 310
    goto :goto_5

    .line 311
    :goto_6
    add-int/2addr v9, v13

    .line 312
    if-nez v10, :cond_c

    .line 313
    .line 314
    new-instance v14, Lcom/yunpan/appmanage/bean/PresentationBean;

    .line 315
    .line 316
    move-object/from16 v19, v0

    .line 317
    .line 318
    const/16 v16, 0x3

    .line 319
    .line 320
    aget-object v0, v12, v16

    .line 321
    .line 322
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    const/4 v13, 0x2

    .line 331
    aget-object v17, v12, v13

    .line 332
    .line 333
    move-object v12, v14

    .line 334
    move v13, v10

    .line 335
    move-object v1, v14

    .line 336
    move v14, v0

    .line 337
    const/4 v0, 0x0

    .line 338
    move-object/from16 v16, v7

    .line 339
    .line 340
    invoke-direct/range {v12 .. v17}, Lcom/yunpan/appmanage/bean/PresentationBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v4, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    goto :goto_7

    .line 347
    :cond_c
    move-object/from16 v19, v0

    .line 348
    .line 349
    const/4 v0, 0x0

    .line 350
    new-instance v1, Lcom/yunpan/appmanage/bean/PresentationBean;

    .line 351
    .line 352
    const/4 v13, 0x3

    .line 353
    aget-object v13, v12, v13

    .line 354
    .line 355
    const/4 v14, 0x1

    .line 356
    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v13

    .line 360
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    move-result v14

    .line 364
    const/4 v13, 0x2

    .line 365
    aget-object v17, v12, v13

    .line 366
    .line 367
    move-object v12, v1

    .line 368
    move v13, v10

    .line 369
    move-object/from16 v16, v7

    .line 370
    .line 371
    invoke-direct/range {v12 .. v17}, Lcom/yunpan/appmanage/bean/PresentationBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    :goto_7
    move-object/from16 v1, p0

    .line 378
    .line 379
    move-object/from16 v0, v19

    .line 380
    .line 381
    const/4 v7, 0x0

    .line 382
    goto/16 :goto_2

    .line 383
    .line 384
    :goto_8
    add-int/2addr v8, v1

    .line 385
    move-object/from16 v1, p0

    .line 386
    .line 387
    const/4 v7, 0x0

    .line 388
    goto/16 :goto_0

    .line 389
    .line 390
    :cond_d
    move-object/from16 v7, p1

    .line 391
    .line 392
    invoke-virtual {v7, v4}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 396
    .line 397
    .line 398
    :goto_9
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 6

    .line 1
    iget-object v1, p0, Lua/p5;->a:Lcom/yunpan/appmanage/ui/ActivityPresentation;

    .line 2
    .line 3
    iget-object p1, v1, Lcom/yunpan/appmanage/ui/ActivityPresentation;->D:Lx9/n;

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/yunpan/appmanage/bean/PresentationBean;

    .line 10
    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    iget-object p2, p1, Lcom/yunpan/appmanage/bean/PresentationBean;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p2, p1, Lcom/yunpan/appmanage/bean/PresentationBean;->packageName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p3, v1, Lda/g;->A:Lda/g;

    .line 25
    .line 26
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    const-string p1, "\u7981\u6b62\u66f4\u6539\u672c\u7a0b\u5e8f"

    .line 37
    .line 38
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p2, p1, Lcom/yunpan/appmanage/bean/PresentationBean;->packageName:Ljava/lang/String;

    .line 43
    .line 44
    iget-object p3, v1, Lcom/yunpan/appmanage/ui/ActivityPresentation;->F:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    const-string p1, "\u7981\u6b62\u66f4\u6539\u9ed8\u8ba4\u684c\u9762"

    .line 53
    .line 54
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityPresentation;->E:Ljava/util/HashSet;

    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    new-instance p3, Lua/q5;

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-direct {p3, v0, v4}, Lua/q5;-><init>(ILjava/util/ArrayList;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p2, p3}, Lj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    .line 76
    .line 77
    .line 78
    const-string p2, "\u5f3a\u5236\u5173\u95ed"

    .line 79
    .line 80
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    new-instance p2, Lha/fa;

    .line 84
    .line 85
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 86
    .line 87
    new-instance v5, Lcom/hjq/permissions/b;

    .line 88
    .line 89
    const/16 p3, 0xd

    .line 90
    .line 91
    invoke-direct {v5, v1, v4, p1, p3}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 92
    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    move-object v0, p2

    .line 96
    invoke-direct/range {v0 .. v5}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_0
    return-void
.end method
