.class public final Lha/q5;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/p3;

.field public final i:Lx9/w3;

.field public final j:Lcom/yunpan/appmanage/bean/FileAttributeBean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lx9/w3;Lcom/yunpan/appmanage/bean/FileAttributeBean;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00a3

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/q5;->i:Lx9/w3;

    .line 8
    .line 9
    iput-object p4, p0, Lha/q5;->j:Lcom/yunpan/appmanage/bean/FileAttributeBean;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lx9/p3;

    .line 5
    .line 6
    invoke-direct {p1}, Lx9/p3;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lha/q5;->h:Lx9/p3;

    .line 10
    .line 11
    new-instance v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 12
    .line 13
    iget-object v1, p0, Lha/q5;->i:Lx9/w3;

    .line 14
    .line 15
    iget-object v2, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "\u540d\u79f0\uff1a"

    .line 18
    .line 19
    invoke-direct {v0, v3, v2}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lha/q5;->h:Lx9/p3;

    .line 26
    .line 27
    new-instance v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 28
    .line 29
    const-string v2, "\u8def\u5f84\uff1a"

    .line 30
    .line 31
    iget-object v3, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {v0, v2, v3}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, v1, Lx9/w3;->f:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const-string v0, "\u7c7b\u578b\uff1a"

    .line 46
    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    iget-object p1, p0, Lha/q5;->h:Lx9/p3;

    .line 50
    .line 51
    new-instance v2, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 52
    .line 53
    const-string v3, "\u5b57\u7b26\u94fe\u63a5"

    .line 54
    .line 55
    invoke-direct {v2, v0, v3}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lha/q5;->h:Lx9/p3;

    .line 62
    .line 63
    new-instance v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 64
    .line 65
    const-string v2, "\u94fe\u63a5\uff1a"

    .line 66
    .line 67
    iget-object v3, v1, Lx9/w3;->f:Ljava/lang/String;

    .line 68
    .line 69
    invoke-direct {v0, v2, v3}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    iget-object p1, p0, Lha/q5;->h:Lx9/p3;

    .line 77
    .line 78
    new-instance v2, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 79
    .line 80
    iget-boolean v3, v1, Lx9/w3;->c:Z

    .line 81
    .line 82
    if-eqz v3, :cond_1

    .line 83
    .line 84
    const-string v3, "\u6587\u4ef6\u5939"

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const-string v3, "\u6587\u4ef6"

    .line 88
    .line 89
    :goto_0
    invoke-direct {v2, v0, v3}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    iget-boolean p1, v1, Lx9/w3;->c:Z

    .line 96
    .line 97
    const-string v0, "\u5927\u5c0f\uff1a"

    .line 98
    .line 99
    const/4 v2, 0x1

    .line 100
    const-string v3, ")"

    .line 101
    .line 102
    const-string v4, " ("

    .line 103
    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    iget-object p1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 107
    .line 108
    sget-object v5, Lfa/g0;->a:Lfa/h0;

    .line 109
    .line 110
    invoke-virtual {v5}, Lfa/h0;->d()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_3

    .line 119
    .line 120
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 121
    .line 122
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 123
    .line 124
    iget-boolean v6, v5, Lcom/yunpan/appmanage/util/k;->w:Z

    .line 125
    .line 126
    if-nez v6, :cond_3

    .line 127
    .line 128
    iget-object v6, v5, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 129
    .line 130
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-nez v6, :cond_3

    .line 135
    .line 136
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-eqz v6, :cond_3

    .line 147
    .line 148
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    check-cast v6, Ljava/lang/String;

    .line 153
    .line 154
    iget-object v7, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_2

    .line 161
    .line 162
    const/4 p1, 0x1

    .line 163
    :cond_3
    if-eqz p1, :cond_5

    .line 164
    .line 165
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    iget-object v6, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v6, "/"

    .line 184
    .line 185
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-interface {p1, v5}, Lcom/yunpan/appmanage/db/FileInfoDao;->getDirDirCount(Ljava/lang/String;)J

    .line 193
    .line 194
    .line 195
    move-result-wide v7

    .line 196
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    iget-object v9, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-interface {p1, v5}, Lcom/yunpan/appmanage/db/FileInfoDao;->getDirFileCount(Ljava/lang/String;)J

    .line 222
    .line 223
    .line 224
    move-result-wide v9

    .line 225
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p1}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    iget-object v11, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-interface {p1, v5}, Lcom/yunpan/appmanage/db/FileInfoDao;->getDirSize(Ljava/lang/String;)J

    .line 251
    .line 252
    .line 253
    move-result-wide v5

    .line 254
    iput-wide v5, v1, Lx9/w3;->d:J

    .line 255
    .line 256
    iget-object p1, p0, Lha/q5;->h:Lx9/p3;

    .line 257
    .line 258
    new-instance v5, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 259
    .line 260
    const-string v6, "\u6587\u4ef6\u5939 "

    .line 261
    .line 262
    const-string v11, " \u4e2a   \u6587\u4ef6 "

    .line 263
    .line 264
    invoke-static {v7, v8, v6, v11}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    const-string v7, " \u4e2a"

    .line 269
    .line 270
    invoke-static {v6, v9, v10, v7}, Landroid/support/v4/media/session/a;->t(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    const-string v7, "\u5305\u542b\uff1a"

    .line 275
    .line 276
    invoke-direct {v5, v7, v6}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    iget-object p1, p0, Lha/q5;->h:Lx9/p3;

    .line 283
    .line 284
    new-instance v5, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 285
    .line 286
    new-instance v6, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    iget-wide v7, v1, Lx9/w3;->d:J

    .line 292
    .line 293
    long-to-double v7, v7

    .line 294
    invoke-static {v7, v8}, Lif/a;->D0(D)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    iget-wide v7, v1, Lx9/w3;->d:J

    .line 305
    .line 306
    invoke-static {v6, v7, v8, v3}, Landroid/support/v4/media/session/a;->t(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    invoke-direct {v5, v0, v6}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    goto :goto_2

    .line 317
    :cond_4
    iget-object p1, p0, Lha/q5;->h:Lx9/p3;

    .line 318
    .line 319
    new-instance v5, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 320
    .line 321
    new-instance v6, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .line 325
    .line 326
    iget-wide v7, v1, Lx9/w3;->d:J

    .line 327
    .line 328
    long-to-double v7, v7

    .line 329
    invoke-static {v7, v8}, Lif/a;->D0(D)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    iget-wide v7, v1, Lx9/w3;->d:J

    .line 340
    .line 341
    invoke-static {v6, v7, v8, v3}, Landroid/support/v4/media/session/a;->t(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    invoke-direct {v5, v0, v6}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    :cond_5
    :goto_2
    iget-object p1, p0, Lha/q5;->h:Lx9/p3;

    .line 352
    .line 353
    new-instance v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 354
    .line 355
    const-string v5, "\u6700\u540e\u66f4\u6539\uff1a"

    .line 356
    .line 357
    iget-object v6, v1, Lx9/w3;->h:Ljava/lang/String;

    .line 358
    .line 359
    invoke-direct {v0, v5, v6}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    iget-object p1, p0, Lha/q5;->h:Lx9/p3;

    .line 366
    .line 367
    new-instance v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 368
    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    iget-object v6, p0, Lha/q5;->j:Lcom/yunpan/appmanage/bean/FileAttributeBean;

    .line 375
    .line 376
    iget-object v7, v6, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermissions:Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    iget v4, v6, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermission:I

    .line 385
    .line 386
    invoke-static {v5, v4, v3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    const-string v4, "\u6743\u9650\uff1a"

    .line 391
    .line 392
    invoke-direct {v0, v4, v3}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    iget-object p1, p0, Lha/q5;->h:Lx9/p3;

    .line 399
    .line 400
    new-instance v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 401
    .line 402
    const-string v3, "\u6240\u6709\u8005\uff1a"

    .line 403
    .line 404
    iget-object v4, v6, Lcom/yunpan/appmanage/bean/FileAttributeBean;->fileOwner:Ljava/lang/String;

    .line 405
    .line 406
    invoke-direct {v0, v3, v4}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    iget-object p1, p0, Lha/q5;->h:Lx9/p3;

    .line 413
    .line 414
    new-instance v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 415
    .line 416
    const-string v3, "\u6240\u5c5e\u7ec4\uff1a"

    .line 417
    .line 418
    iget-object v4, v6, Lcom/yunpan/appmanage/bean/FileAttributeBean;->fileGroup:Ljava/lang/String;

    .line 419
    .line 420
    invoke-direct {v0, v3, v4}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    iget-object p1, p0, Lha/q5;->h:Lx9/p3;

    .line 427
    .line 428
    new-instance v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 429
    .line 430
    iget-object v3, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 431
    .line 432
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->b(Ljava/lang/String;)Z

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    const-string v4, "\u5426"

    .line 437
    .line 438
    const-string v5, "\u662f"

    .line 439
    .line 440
    if-eqz v3, :cond_6

    .line 441
    .line 442
    move-object v3, v5

    .line 443
    goto :goto_3

    .line 444
    :cond_6
    move-object v3, v4

    .line 445
    :goto_3
    const-string v6, "\u53ef\u8bfb\uff1a"

    .line 446
    .line 447
    invoke-direct {v0, v6, v3}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    iget-object p1, p0, Lha/q5;->h:Lx9/p3;

    .line 454
    .line 455
    new-instance v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 456
    .line 457
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 458
    .line 459
    new-instance v3, Ljava/io/File;

    .line 460
    .line 461
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    const/4 v1, 0x0

    .line 465
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    .line 466
    .line 467
    .line 468
    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    goto :goto_4

    .line 470
    :catch_0
    nop

    .line 471
    const/4 v3, 0x0

    .line 472
    :goto_4
    if-eqz v3, :cond_7

    .line 473
    .line 474
    move-object v4, v5

    .line 475
    :cond_7
    const-string v3, "\u53ef\u5199\uff1a"

    .line 476
    .line 477
    invoke-direct {v0, v3, v4}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    const p1, 0x7f0b04f1

    .line 484
    .line 485
    .line 486
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 491
    .line 492
    iput-object p1, p0, Lha/q5;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 493
    .line 494
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 495
    .line 496
    iget-object v3, p0, Lha/a4;->b:Landroid/content/Context;

    .line 497
    .line 498
    invoke-direct {v0, v3, v2, v1}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 502
    .line 503
    .line 504
    iget-object p1, p0, Lha/q5;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 505
    .line 506
    iget-object v0, p0, Lha/q5;->h:Lx9/p3;

    .line 507
    .line 508
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 509
    .line 510
    .line 511
    iget-object p1, p0, Lha/q5;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 512
    .line 513
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 514
    .line 515
    .line 516
    iget-object p1, p0, Lha/q5;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 517
    .line 518
    invoke-virtual {p1, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 519
    .line 520
    .line 521
    iget-object p1, p0, Lha/q5;->h:Lx9/p3;

    .line 522
    .line 523
    new-instance v0, La1/d;

    .line 524
    .line 525
    const/16 v1, 0x14

    .line 526
    .line 527
    invoke-direct {v0, v1, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 531
    .line 532
    return-void
.end method
