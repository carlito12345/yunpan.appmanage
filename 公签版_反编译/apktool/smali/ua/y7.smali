.class public final synthetic Lua/y7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Lx9/w3;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ZLx9/w3;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p5, p0, Lua/y7;->a:I

    iput-boolean p1, p0, Lua/y7;->b:Z

    iput-object p2, p0, Lua/y7;->c:Lx9/w3;

    iput-object p3, p0, Lua/y7;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Lua/y7;->e:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "lastModified DESC"

    .line 5
    .line 6
    const-string v4, "name COLLATE NOCASE"

    .line 7
    .line 8
    const-string v5, " ORDER BY "

    .line 9
    .line 10
    const-string v6, " and name NOT LIKE \'.%\'"

    .line 11
    .line 12
    const-string v7, ""

    .line 13
    .line 14
    const-string v8, "SELECT * FROM fileList WHERE parent=?"

    .line 15
    .line 16
    iget-object v9, p0, Lua/y7;->c:Lx9/w3;

    .line 17
    .line 18
    iget-boolean v10, p0, Lua/y7;->b:Z

    .line 19
    .line 20
    iget-object v11, p0, Lua/y7;->e:Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object v12, p0, Lua/y7;->d:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget v13, p0, Lua/y7;->a:I

    .line 25
    .line 26
    packed-switch v13, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    if-nez v10, :cond_5

    .line 30
    .line 31
    new-instance v10, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v8, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 37
    .line 38
    iget-boolean v13, v8, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 39
    .line 40
    if-eqz v13, :cond_0

    .line 41
    .line 42
    move-object v6, v7

    .line 43
    :cond_0
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean v5, v8, Lcom/yunpan/appmanage/util/w;->n0:Z

    .line 50
    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    move-object v3, v4

    .line 54
    :cond_1
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iget-object v4, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 62
    .line 63
    new-array v2, v2, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object v4, v2, v1

    .line 66
    .line 67
    new-instance v1, La2/g1;

    .line 68
    .line 69
    invoke-direct {v1, v3, v2}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :try_start_0
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-interface {v2, v1}, Lcom/yunpan/appmanage/db/FileInfoDao;->sqlQuery(Lc4/d;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    nop

    .line 86
    :goto_0
    if-eqz v0, :cond_4

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_4

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Lcom/yunpan/appmanage/db/FileInfo;

    .line 109
    .line 110
    iget-boolean v2, v1, Lcom/yunpan/appmanage/db/FileInfo;->isDir:Z

    .line 111
    .line 112
    if-eqz v2, :cond_3

    .line 113
    .line 114
    new-instance v2, Lx9/w3;

    .line 115
    .line 116
    invoke-direct {v2, v1}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 117
    .line 118
    .line 119
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 120
    .line 121
    iget-boolean v3, v3, Lcom/yunpan/appmanage/util/w;->m0:Z

    .line 122
    .line 123
    if-eqz v3, :cond_2

    .line 124
    .line 125
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v3}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    iget-object v1, v1, Lcom/yunpan/appmanage/db/FileInfo;->name:Ljava/lang/String;

    .line 134
    .line 135
    invoke-interface {v3, v1}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-eqz v1, :cond_2

    .line 140
    .line 141
    iget-object v3, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 142
    .line 143
    iput-object v3, v2, Lx9/w3;->m:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 146
    .line 147
    iput-object v1, v2, Lx9/w3;->l:Ljava/lang/String;

    .line 148
    .line 149
    :cond_2
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    new-instance v2, Lx9/w3;

    .line 154
    .line 155
    invoke-direct {v2, v1}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_5
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 167
    .line 168
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 169
    .line 170
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->n0:Z

    .line 171
    .line 172
    invoke-static {v9, v12, v11, v1, v0}, Lcom/yunpan/appmanage/util/u;->b(Lx9/w3;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 176
    .line 177
    .line 178
    :goto_2
    return-void

    .line 179
    :pswitch_0
    if-nez v10, :cond_c

    .line 180
    .line 181
    new-instance v10, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    sget-object v8, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 187
    .line 188
    iget-boolean v13, v8, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 189
    .line 190
    if-eqz v13, :cond_6

    .line 191
    .line 192
    move-object v6, v7

    .line 193
    :cond_6
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget-boolean v5, v8, Lcom/yunpan/appmanage/util/w;->n0:Z

    .line 200
    .line 201
    if-eqz v5, :cond_7

    .line 202
    .line 203
    move-object v3, v4

    .line 204
    :cond_7
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    iget-object v4, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 212
    .line 213
    new-array v2, v2, [Ljava/lang/Object;

    .line 214
    .line 215
    aput-object v4, v2, v1

    .line 216
    .line 217
    new-instance v1, La2/g1;

    .line 218
    .line 219
    invoke-direct {v1, v3, v2}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    :try_start_1
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-interface {v2, v1}, Lcom/yunpan/appmanage/db/FileInfoDao;->sqlQuery(Lc4/d;)Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    goto :goto_3

    .line 235
    :catch_1
    nop

    .line 236
    :goto_3
    if-eqz v0, :cond_c

    .line 237
    .line 238
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-nez v1, :cond_c

    .line 243
    .line 244
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-eqz v1, :cond_b

    .line 253
    .line 254
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    check-cast v1, Lcom/yunpan/appmanage/db/FileInfo;

    .line 259
    .line 260
    iget-boolean v2, v1, Lcom/yunpan/appmanage/db/FileInfo;->isDir:Z

    .line 261
    .line 262
    if-eqz v2, :cond_a

    .line 263
    .line 264
    new-instance v2, Lx9/w3;

    .line 265
    .line 266
    invoke-direct {v2, v1}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 267
    .line 268
    .line 269
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    iget-object v3, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 278
    .line 279
    invoke-interface {v1, v3}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    if-nez v1, :cond_8

    .line 284
    .line 285
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    iget-object v3, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 294
    .line 295
    invoke-interface {v1, v3}, Lcom/yunpan/appmanage/db/AppDao;->isAppDir(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    :cond_8
    if-eqz v1, :cond_9

    .line 300
    .line 301
    iget-object v3, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 302
    .line 303
    iput-object v3, v2, Lx9/w3;->m:Ljava/lang/String;

    .line 304
    .line 305
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 306
    .line 307
    iput-object v1, v2, Lx9/w3;->l:Ljava/lang/String;

    .line 308
    .line 309
    :cond_9
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    goto :goto_4

    .line 313
    :cond_a
    new-instance v2, Lx9/w3;

    .line 314
    .line 315
    invoke-direct {v2, v1}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_b
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 323
    .line 324
    .line 325
    goto :goto_6

    .line 326
    :cond_c
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 327
    .line 328
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 329
    .line 330
    iget-boolean v2, v0, Lcom/yunpan/appmanage/util/w;->n0:Z

    .line 331
    .line 332
    invoke-static {v9, v12, v11, v1, v2}, Lcom/yunpan/appmanage/util/u;->b(Lx9/w3;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 333
    .line 334
    .line 335
    iget-object v1, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 336
    .line 337
    invoke-static {v1, v12, v11}, Lcom/yunpan/appmanage/util/u;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 338
    .line 339
    .line 340
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->m0:Z

    .line 341
    .line 342
    if-eqz v0, :cond_f

    .line 343
    .line 344
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    :cond_d
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-eqz v1, :cond_f

    .line 353
    .line 354
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    check-cast v1, Lx9/w3;

    .line 359
    .line 360
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    iget-object v3, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 369
    .line 370
    invoke-interface {v2, v3}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    if-nez v2, :cond_e

    .line 375
    .line 376
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    iget-object v3, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 385
    .line 386
    invoke-interface {v2, v3}, Lcom/yunpan/appmanage/db/AppDao;->isAppDir(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    :cond_e
    if-eqz v2, :cond_d

    .line 391
    .line 392
    iget-object v3, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 393
    .line 394
    iput-object v3, v1, Lx9/w3;->m:Ljava/lang/String;

    .line 395
    .line 396
    iget-object v2, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 397
    .line 398
    iput-object v2, v1, Lx9/w3;->l:Ljava/lang/String;

    .line 399
    .line 400
    goto :goto_5

    .line 401
    :cond_f
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 402
    .line 403
    .line 404
    :goto_6
    return-void

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
