.class public final synthetic Lfa/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lu1/j;
.implements Lt7/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lfa/d0;->a:I

    iput p1, p0, Lfa/d0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz1/a;ILr1/l0;Lr1/l0;)V
    .locals 0

    .line 2
    const/4 p1, 0x6

    iput p1, p0, Lfa/d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lfa/d0;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lfa/d0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lz1/b;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    check-cast p1, Lz1/h;

    .line 12
    .line 13
    iget v0, p0, Lfa/d0;->b:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iput-boolean v1, p1, Lz1/h;->v:Z

    .line 19
    .line 20
    :cond_0
    iput v0, p1, Lz1/h;->l:I

    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    check-cast p1, Lr1/k0;

    .line 24
    .line 25
    iget v0, p0, Lfa/d0;->b:I

    .line 26
    .line 27
    invoke-interface {p1, v0}, Lr1/k0;->j(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    check-cast p1, Lr1/k0;

    .line 32
    .line 33
    iget v0, p0, Lfa/d0;->b:I

    .line 34
    .line 35
    invoke-interface {p1, v0}, Lr1/k0;->v(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    iget p1, p0, Lfa/d0;->b:I

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public g(Lmc/b;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v0, 0x5

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x3

    .line 9
    const/4 v6, 0x2

    .line 10
    iget v7, v1, Lfa/d0;->b:I

    .line 11
    .line 12
    const/4 v8, 0x1

    .line 13
    iget v9, v1, Lfa/d0;->a:I

    .line 14
    .line 15
    packed-switch v9, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    if-nez v7, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_all()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_0
    if-ne v7, v8, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_user()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :cond_1
    if-ne v7, v6, :cond_2

    .line 51
    .line 52
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_canStart()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_3

    .line 65
    :cond_2
    if-ne v7, v5, :cond_6

    .line 66
    .line 67
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_canStart()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_NoCanStart()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/yunpan/appmanage/db/AppBean;

    .line 106
    .line 107
    :try_start_0
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 108
    .line 109
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 110
    .line 111
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 112
    .line 113
    iget-object v7, v0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 120
    .line 121
    if-eqz v6, :cond_3

    .line 122
    .line 123
    array-length v7, v6

    .line 124
    const/4 v9, 0x0

    .line 125
    :goto_1
    if-ge v9, v7, :cond_3

    .line 126
    .line 127
    aget-object v10, v6, v9

    .line 128
    .line 129
    iget-boolean v11, v10, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 130
    .line 131
    if-eqz v11, :cond_4

    .line 132
    .line 133
    iget-boolean v10, v10, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 134
    .line 135
    if-eqz v10, :cond_4

    .line 136
    .line 137
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    goto :goto_2

    .line 143
    :cond_4
    add-int/2addr v9, v8

    .line 144
    goto :goto_1

    .line 145
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_5
    move-object v0, v3

    .line 150
    goto :goto_3

    .line 151
    :cond_6
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->get_app_all()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    :goto_3
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :pswitch_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v10, "SELECT * FROM fileList WHERE (path LIKE \'"

    .line 173
    .line 174
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    sget-object v10, Lfa/g0;->a:Lfa/h0;

    .line 178
    .line 179
    const-string v11, "/%\')"

    .line 180
    .line 181
    invoke-static {v10, v9, v11}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    const-string v10, " and isDir=0"

    .line 186
    .line 187
    invoke-static {v9, v10}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    const-string v10, " and path NOT LIKE \'%/.%\'"

    .line 192
    .line 193
    invoke-static {v9, v10}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    if-ne v7, v8, :cond_7

    .line 198
    .line 199
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 200
    .line 201
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 202
    .line 203
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->l0:Ljava/util/ArrayList;

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_7
    if-ne v7, v6, :cond_8

    .line 207
    .line 208
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 209
    .line 210
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 211
    .line 212
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->n0:Ljava/util/ArrayList;

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_8
    if-ne v7, v5, :cond_9

    .line 216
    .line 217
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 218
    .line 219
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 220
    .line 221
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->p0:Ljava/util/ArrayList;

    .line 222
    .line 223
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 224
    .line 225
    iget-object v3, v3, Lcom/yunpan/appmanage/util/w;->B0:Ljava/lang/String;

    .line 226
    .line 227
    const-string v5, "pcm"

    .line 228
    .line 229
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-nez v3, :cond_d

    .line 234
    .line 235
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_9
    if-ne v7, v3, :cond_a

    .line 240
    .line 241
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 242
    .line 243
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 244
    .line 245
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->q0:Ljava/util/ArrayList;

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_a
    if-ne v7, v0, :cond_b

    .line 249
    .line 250
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 251
    .line 252
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 253
    .line 254
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->o0:Ljava/util/ArrayList;

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_b
    const/4 v0, 0x6

    .line 258
    if-ne v7, v0, :cond_c

    .line 259
    .line 260
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 261
    .line 262
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 263
    .line 264
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->m0:Ljava/util/ArrayList;

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_c
    const/4 v0, 0x0

    .line 268
    :cond_d
    :goto_4
    const-string v3, ""

    .line 269
    .line 270
    if-eqz v0, :cond_11

    .line 271
    .line 272
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    if-nez v5, :cond_11

    .line 277
    .line 278
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    if-eqz v5, :cond_10

    .line 287
    .line 288
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    check-cast v5, Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 295
    .line 296
    .line 297
    move-result v6

    .line 298
    if-eqz v6, :cond_e

    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    const-string v7, "\'"

    .line 306
    .line 307
    if-eqz v6, :cond_f

    .line 308
    .line 309
    const-string v3, " and (LOWER(name) LIKE \'%."

    .line 310
    .line 311
    invoke-static {v3, v5, v7}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    goto :goto_5

    .line 316
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v3, " OR LOWER(name) LIKE \'%."

    .line 325
    .line 326
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    goto :goto_5

    .line 340
    :cond_10
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-nez v0, :cond_11

    .line 345
    .line 346
    const-string v0, ")"

    .line 347
    .line 348
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    :cond_11
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-nez v0, :cond_12

    .line 357
    .line 358
    invoke-static {v9, v3}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v9

    .line 362
    :cond_12
    const-string v0, " ORDER BY lastModified DESC"

    .line 363
    .line 364
    invoke-static {v9, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    new-array v3, v4, [Ljava/lang/Object;

    .line 369
    .line 370
    new-instance v4, La2/g1;

    .line 371
    .line 372
    invoke-direct {v4, v0, v3}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-interface {v0, v4}, Lcom/yunpan/appmanage/db/FileInfoDao;->sqlQuery(Lc4/d;)Ljava/util/List;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    if-eqz v0, :cond_14

    .line 388
    .line 389
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    if-nez v3, :cond_14

    .line 394
    .line 395
    new-instance v3, Ljava/util/ArrayList;

    .line 396
    .line 397
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .line 399
    .line 400
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    if-eqz v4, :cond_13

    .line 409
    .line 410
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    check-cast v4, Lcom/yunpan/appmanage/db/FileInfo;

    .line 415
    .line 416
    new-instance v5, Lx9/w3;

    .line 417
    .line 418
    invoke-direct {v5, v4}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    goto :goto_6

    .line 425
    :cond_13
    invoke-virtual {v2, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 429
    .line 430
    .line 431
    return-void

    .line 432
    :pswitch_1
    sget-object v9, Lfa/a;->b:Lfa/e0;

    .line 433
    .line 434
    invoke-virtual {v9}, Lfa/e0;->c()Z

    .line 435
    .line 436
    .line 437
    move-result v10

    .line 438
    if-nez v10, :cond_15

    .line 439
    .line 440
    const-string v0, "\u6ca1\u627e\u5230\u8bbe\u5907\uff0c\u8bf7\u7528OTG\u8fde\u63a5\u5176\u5b83\u5b89\u5353\u8bbe\u5907"

    .line 441
    .line 442
    :goto_7
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 443
    .line 444
    .line 445
    goto/16 :goto_e

    .line 446
    .line 447
    :cond_15
    const/4 v10, 0x0

    .line 448
    :goto_8
    add-int/2addr v10, v8

    .line 449
    iget-object v11, v9, Lfa/e0;->c:Lz9/a;

    .line 450
    .line 451
    new-instance v12, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    const-string v13, "tcpip:"

    .line 454
    .line 455
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v12

    .line 465
    invoke-virtual {v11, v12}, Lz9/a;->J(Ljava/lang/String;)Lz9/d;

    .line 466
    .line 467
    .line 468
    move-result-object v11

    .line 469
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    .line 470
    .line 471
    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 472
    .line 473
    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 475
    .line 476
    .line 477
    move-result-wide v13

    .line 478
    :goto_9
    :try_start_1
    invoke-virtual {v11}, Lz9/d;->J()[B

    .line 479
    .line 480
    .line 481
    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 482
    if-eqz v15, :cond_1f

    .line 483
    .line 484
    array-length v0, v15

    .line 485
    if-nez v0, :cond_16

    .line 486
    .line 487
    goto/16 :goto_a

    .line 488
    .line 489
    :cond_16
    array-length v0, v15

    .line 490
    invoke-virtual {v12, v15, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 491
    .line 492
    .line 493
    new-instance v0, Ljava/lang/String;

    .line 494
    .line 495
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    const-string v16, "UTF-8"

    .line 500
    .line 501
    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    invoke-direct {v0, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 506
    .line 507
    .line 508
    const-string v3, "restarting"

    .line 509
    .line 510
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 511
    .line 512
    .line 513
    move-result v3

    .line 514
    if-eqz v3, :cond_17

    .line 515
    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    const-string v3, "\u5df2\u4fee\u6539\uff0c\u5bf9\u65b9ADB\u7aef\u53e3\u4e3a "

    .line 519
    .line 520
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-static {v0, v4}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 531
    .line 532
    .line 533
    const-wide/16 v3, 0x22b

    .line 534
    .line 535
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 536
    .line 537
    .line 538
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 539
    .line 540
    .line 541
    goto/16 :goto_e

    .line 542
    .line 543
    :cond_17
    const-string v3, "already in TCP mode"

    .line 544
    .line 545
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 546
    .line 547
    .line 548
    move-result v3

    .line 549
    if-eqz v3, :cond_18

    .line 550
    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    const-string v3, "\u8fde\u63a5\u6210\u529f\uff0c\u5bf9\u65b9ADB\u7aef\u53e3\u4e3a "

    .line 554
    .line 555
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    invoke-static {v0, v4}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 566
    .line 567
    .line 568
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 569
    .line 570
    .line 571
    goto/16 :goto_e

    .line 572
    .line 573
    :cond_18
    const-string v3, "device does not support"

    .line 574
    .line 575
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 576
    .line 577
    .line 578
    move-result v3

    .line 579
    if-eqz v3, :cond_19

    .line 580
    .line 581
    const-string v0, "\u8bbe\u5907\u4e0d\u652f\u6301 TCP/IP \u6a21\u5f0f"

    .line 582
    .line 583
    goto/16 :goto_7

    .line 584
    .line 585
    :cond_19
    const-string v3, "could not set"

    .line 586
    .line 587
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 588
    .line 589
    .line 590
    move-result v3

    .line 591
    if-eqz v3, :cond_1a

    .line 592
    .line 593
    goto :goto_b

    .line 594
    :cond_1a
    const-string v3, "permissions"

    .line 595
    .line 596
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 597
    .line 598
    .line 599
    move-result v3

    .line 600
    if-eqz v3, :cond_1b

    .line 601
    .line 602
    const-string v0, "\u65e0\u6743\u9650\u4fee\u6539"

    .line 603
    .line 604
    goto/16 :goto_7

    .line 605
    .line 606
    :cond_1b
    const-string v3, "unauthorized"

    .line 607
    .line 608
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 609
    .line 610
    .line 611
    move-result v3

    .line 612
    if-eqz v3, :cond_1c

    .line 613
    .line 614
    const-string v0, "\u8bbe\u5907\u672a\u6388\u6743"

    .line 615
    .line 616
    goto/16 :goto_7

    .line 617
    .line 618
    :cond_1c
    const-string v3, "not found"

    .line 619
    .line 620
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 621
    .line 622
    .line 623
    move-result v3

    .line 624
    if-eqz v3, :cond_1d

    .line 625
    .line 626
    const-string v0, "\u5bf9\u65b9\u8bbe\u5907\u4e0d\u652f\u6301\u4fee\u6539"

    .line 627
    .line 628
    goto/16 :goto_7

    .line 629
    .line 630
    :cond_1d
    const-string v3, "developer options enabled"

    .line 631
    .line 632
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 633
    .line 634
    .line 635
    move-result v3

    .line 636
    if-eqz v3, :cond_1e

    .line 637
    .line 638
    const-string v0, "\u8bbe\u5907\u672a\u542f\u7528\u5f00\u53d1\u8005\u9009\u9879"

    .line 639
    .line 640
    goto/16 :goto_7

    .line 641
    .line 642
    :cond_1e
    const-string v3, "unknown error"

    .line 643
    .line 644
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    if-eqz v0, :cond_1f

    .line 649
    .line 650
    goto :goto_b

    .line 651
    :cond_1f
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 652
    .line 653
    .line 654
    move-result-wide v17

    .line 655
    sub-long v17, v17, v13

    .line 656
    .line 657
    const-wide/16 v19, 0xbb8

    .line 658
    .line 659
    cmp-long v0, v17, v19

    .line 660
    .line 661
    if-ltz v0, :cond_27

    .line 662
    .line 663
    :goto_b
    if-eqz v15, :cond_26

    .line 664
    .line 665
    array-length v0, v15

    .line 666
    if-nez v0, :cond_20

    .line 667
    .line 668
    goto :goto_d

    .line 669
    :cond_20
    if-ne v10, v8, :cond_21

    .line 670
    .line 671
    const/16 v0, 0x1ec6

    .line 672
    .line 673
    const/4 v0, 0x3

    .line 674
    const/4 v3, 0x4

    .line 675
    const/4 v5, 0x5

    .line 676
    const/16 v7, 0x1ec6

    .line 677
    .line 678
    goto :goto_c

    .line 679
    :cond_21
    if-ne v10, v6, :cond_22

    .line 680
    .line 681
    const/16 v0, 0x1f2b

    .line 682
    .line 683
    const/4 v0, 0x3

    .line 684
    const/4 v3, 0x4

    .line 685
    const/4 v5, 0x5

    .line 686
    const/16 v7, 0x1f2b

    .line 687
    .line 688
    goto :goto_c

    .line 689
    :cond_22
    const/4 v0, 0x3

    .line 690
    if-ne v10, v0, :cond_23

    .line 691
    .line 692
    const/16 v3, 0x1a85

    .line 693
    .line 694
    const/4 v3, 0x4

    .line 695
    const/4 v5, 0x5

    .line 696
    const/16 v7, 0x1a85

    .line 697
    .line 698
    goto :goto_c

    .line 699
    :cond_23
    const/4 v3, 0x4

    .line 700
    if-ne v10, v3, :cond_24

    .line 701
    .line 702
    const/16 v5, 0x162e

    .line 703
    .line 704
    const/4 v5, 0x5

    .line 705
    const/16 v7, 0x162e

    .line 706
    .line 707
    goto :goto_c

    .line 708
    :cond_24
    const/4 v5, 0x5

    .line 709
    :goto_c
    if-lt v10, v5, :cond_25

    .line 710
    .line 711
    const-string v0, "\u65e0\u6cd5\u4fee\u6539"

    .line 712
    .line 713
    goto/16 :goto_7

    .line 714
    .line 715
    :cond_25
    const/4 v0, 0x5

    .line 716
    const/4 v5, 0x3

    .line 717
    goto/16 :goto_8

    .line 718
    .line 719
    :cond_26
    :goto_d
    new-instance v0, Ljava/lang/Exception;

    .line 720
    .line 721
    const-string v3, "\u7b49\u5f85\u8d85\u65f6\uff0c\u672a\u77e5\u662f\u5426\u6210\u529f\uff0c\u7aef\u53e3\uff1a"

    .line 722
    .line 723
    invoke-static {v7, v3}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v3

    .line 727
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 731
    .line 732
    .line 733
    goto :goto_e

    .line 734
    :cond_27
    const/4 v0, 0x5

    .line 735
    const/4 v3, 0x4

    .line 736
    const/4 v5, 0x3

    .line 737
    goto/16 :goto_9

    .line 738
    .line 739
    :catch_1
    const-string v0, "\u65e0\u6cd5\u6253\u5f00\u6d41"

    .line 740
    .line 741
    goto/16 :goto_7

    .line 742
    .line 743
    :goto_e
    return-void

    .line 744
    nop

    .line 745
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
