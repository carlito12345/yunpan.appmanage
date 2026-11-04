.class public final Lcom/yunpan/appmanage/util/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;Lx0/v1;Lua/i8;Landroid/animation/ValueAnimator;)V
    .locals 0

    const/4 p2, 0x5

    iput p2, p0, Lcom/yunpan/appmanage/util/l;->a:I

    .line 2
    iput-object p1, p0, Lcom/yunpan/appmanage/util/l;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/yunpan/appmanage/util/l;->a:I

    iput-object p1, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/yunpan/appmanage/util/l;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, Lcom/yunpan/appmanage/util/m;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_a

    .line 13
    .line 14
    sget-object v1, Lfa/a;->a:Lfa/b;

    .line 15
    .line 16
    iget-object v2, v1, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/yunpan/appmanage/util/l;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Lx9/w3;

    .line 21
    .line 22
    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {v2, v3}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_canRead(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_a

    .line 29
    .line 30
    iget-object v2, v1, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v4, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v4, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 40
    .line 41
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, Lcom/yunpan/appmanage/util/l;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v4, Lx9/w3;

    .line 49
    .line 50
    iget-object v4, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v5, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v5, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 55
    .line 56
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v2, v3}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_exists(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    iget-object v2, v1, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 80
    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v4, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v4, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 89
    .line 90
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v4, p0, Lcom/yunpan/appmanage/util/l;->b:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v4, Lx9/w3;

    .line 98
    .line 99
    iget-object v4, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v5, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v5, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 104
    .line 105
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-interface {v2, v3}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_canReadAndWrite(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_0

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    .line 130
    .line 131
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 132
    .line 133
    .line 134
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, v1, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 136
    .line 137
    iget-object v2, p0, Lcom/yunpan/appmanage/util/l;->b:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v2, Lx9/w3;

    .line 140
    .line 141
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 142
    .line 143
    invoke-interface {v1, v2}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_listFiles(Ljava/lang/String;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_2

    .line 152
    .line 153
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v0, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 156
    .line 157
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :try_start_2
    iget-object v1, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v1, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 161
    .line 162
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->dirs:Ljava/util/List;

    .line 163
    .line 164
    iget-object v2, p0, Lcom/yunpan/appmanage/util/l;->b:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v2, Lx9/w3;

    .line 167
    .line 168
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    monitor-exit v0

    .line 172
    goto/16 :goto_3

    .line 173
    .line 174
    :catchall_0
    move-exception v1

    .line 175
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    :try_start_3
    throw v1

    .line 177
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    const/4 v2, 0x1

    .line 182
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-eqz v3, :cond_8

    .line 187
    .line 188
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    check-cast v3, Lcom/yunpan/appmanage/shizuku/FileParcelable;

    .line 193
    .line 194
    new-instance v4, Lx9/w3;

    .line 195
    .line 196
    invoke-direct {v4, v3}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/shizuku/FileParcelable;)V

    .line 197
    .line 198
    .line 199
    iget-boolean v5, v4, Lx9/w3;->c:Z

    .line 200
    .line 201
    if-eqz v5, :cond_4

    .line 202
    .line 203
    iget-object v2, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v2, Lcom/yunpan/appmanage/util/m;

    .line 206
    .line 207
    iget-object v2, v2, Lcom/yunpan/appmanage/util/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 210
    .line 211
    .line 212
    iget-object v2, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v2, Lcom/yunpan/appmanage/util/m;

    .line 215
    .line 216
    iget-object v3, v2, Lcom/yunpan/appmanage/util/m;->b:Ljava/util/concurrent/ExecutorService;

    .line 217
    .line 218
    new-instance v5, Lcom/yunpan/appmanage/util/l;

    .line 219
    .line 220
    iget-object v6, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v6, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 223
    .line 224
    const/4 v7, 0x1

    .line 225
    invoke-direct {v5, v2, v4, v6, v7}, Lcom/yunpan/appmanage/util/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 226
    .line 227
    .line 228
    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 229
    .line 230
    .line 231
    const/4 v2, 0x0

    .line 232
    goto/16 :goto_2

    .line 233
    .line 234
    :cond_4
    sget-object v5, Lfa/a;->a:Lfa/b;

    .line 235
    .line 236
    iget-object v6, v5, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 237
    .line 238
    iget-object v7, v3, Lcom/yunpan/appmanage/shizuku/FileParcelable;->path:Ljava/lang/String;

    .line 239
    .line 240
    invoke-interface {v6, v7}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_canRead(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    if-nez v6, :cond_5

    .line 245
    .line 246
    iget-object v3, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v3, Lcom/yunpan/appmanage/util/m;

    .line 249
    .line 250
    iget-object v3, v3, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 251
    .line 252
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 253
    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_5
    iget-object v6, v5, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 257
    .line 258
    new-instance v7, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    iget-object v8, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v8, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 266
    .line 267
    iget-object v8, v8, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget-object v8, v3, Lcom/yunpan/appmanage/shizuku/FileParcelable;->path:Ljava/lang/String;

    .line 273
    .line 274
    iget-object v9, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v9, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 277
    .line 278
    iget-object v9, v9, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 281
    .line 282
    .line 283
    move-result v9

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    invoke-interface {v6, v7}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_exists(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v6

    .line 299
    if-eqz v6, :cond_7

    .line 300
    .line 301
    iget-object v5, v5, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 302
    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .line 307
    .line 308
    iget-object v7, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v7, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 311
    .line 312
    iget-object v7, v7, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    iget-object v3, v3, Lcom/yunpan/appmanage/shizuku/FileParcelable;->path:Ljava/lang/String;

    .line 318
    .line 319
    iget-object v7, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v7, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 322
    .line 323
    iget-object v7, v7, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 326
    .line 327
    .line 328
    move-result v7

    .line 329
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-interface {v5, v3}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_canReadAndWrite(Ljava/lang/String;)Z

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    if-nez v3, :cond_6

    .line 345
    .line 346
    iget-object v3, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast v3, Lcom/yunpan/appmanage/util/m;

    .line 349
    .line 350
    iget-object v3, v3, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 351
    .line 352
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 353
    .line 354
    .line 355
    :cond_6
    const-string v3, "\u91cd\u590d"

    .line 356
    .line 357
    iput-object v3, v4, Lx9/w3;->j:Ljava/lang/String;

    .line 358
    .line 359
    iget-object v3, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast v3, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 362
    .line 363
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->isHasRepeatFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 364
    .line 365
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 366
    .line 367
    .line 368
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v3, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 371
    .line 372
    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 373
    :try_start_4
    iget-object v5, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast v5, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 376
    .line 377
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 378
    .line 379
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 383
    :goto_2
    :try_start_5
    iget-object v3, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast v3, Lcom/yunpan/appmanage/util/m;

    .line 386
    .line 387
    iget-object v3, v3, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 388
    .line 389
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    if-eqz v3, :cond_3

    .line 394
    .line 395
    iget-object v1, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v1, Lcom/yunpan/appmanage/util/m;

    .line 398
    .line 399
    iget-object v1, v1, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 400
    .line 401
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 402
    .line 403
    .line 404
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast v0, Lcom/yunpan/appmanage/util/m;

    .line 407
    .line 408
    iget-object v0, v0, Lcom/yunpan/appmanage/util/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 409
    .line 410
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 411
    .line 412
    .line 413
    return-void

    .line 414
    :catchall_1
    move-exception v0

    .line 415
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 416
    :try_start_7
    throw v0

    .line 417
    :cond_8
    if-eqz v2, :cond_9

    .line 418
    .line 419
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 420
    .line 421
    check-cast v0, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 422
    .line 423
    monitor-enter v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 424
    :try_start_8
    iget-object v1, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 425
    .line 426
    check-cast v1, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 427
    .line 428
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->dirs:Ljava/util/List;

    .line 429
    .line 430
    iget-object v2, p0, Lcom/yunpan/appmanage/util/l;->b:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast v2, Lx9/w3;

    .line 433
    .line 434
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    monitor-exit v0

    .line 438
    goto :goto_3

    .line 439
    :catchall_2
    move-exception v1

    .line 440
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 441
    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 442
    :catch_0
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v0, Lcom/yunpan/appmanage/util/m;

    .line 445
    .line 446
    iget-object v0, v0, Lcom/yunpan/appmanage/util/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 449
    .line 450
    .line 451
    return-void

    .line 452
    :cond_a
    :try_start_a
    new-instance v1, Ljava/lang/Exception;

    .line 453
    .line 454
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 455
    .line 456
    .line 457
    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 458
    :catch_1
    iget-object v1, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 459
    .line 460
    check-cast v1, Lcom/yunpan/appmanage/util/m;

    .line 461
    .line 462
    iget-object v1, v1, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 463
    .line 464
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 465
    .line 466
    .line 467
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast v0, Lcom/yunpan/appmanage/util/m;

    .line 470
    .line 471
    iget-object v0, v0, Lcom/yunpan/appmanage/util/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 472
    .line 473
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 474
    .line 475
    .line 476
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/util/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lua/i8;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/yunpan/appmanage/util/l;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroid/view/View;

    .line 13
    .line 14
    invoke-static {v1, v0}, Lx0/r1;->h(Landroid/view/View;Lua/i8;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lu0/c;

    .line 28
    .line 29
    invoke-virtual {v0}, Lu0/c;->call()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    new-instance v1, Ly7/b;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Lu0/d;

    .line 40
    .line 41
    const/16 v3, 0x16

    .line 42
    .line 43
    invoke-direct {v1, v2, v3, v0}, Ly7/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Landroid/os/Handler;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Landroid/view/View;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Landroid/widget/FrameLayout;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Lt6/a;

    .line 65
    .line 66
    invoke-virtual {v2, v0, v1}, Lt6/a;->h(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_2
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lq/e;

    .line 73
    .line 74
    iget-object v0, v0, Lq/e;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/yunpan/appmanage/util/l;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v1, Landroid/view/View;

    .line 79
    .line 80
    iget-object v2, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Landroid/view/View;

    .line 83
    .line 84
    invoke-static {v0, v1, v2}, Lq/e;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_3
    invoke-direct {p0}, Lcom/yunpan/appmanage/util/l;->a()V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_4
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Lcom/yunpan/appmanage/util/m;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    const/4 v1, 0x1

    .line 103
    if-nez v0, :cond_b

    .line 104
    .line 105
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->b:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Lx9/w3;

    .line 108
    .line 109
    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->b(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_0

    .line 116
    .line 117
    goto/16 :goto_6

    .line 118
    .line 119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v2, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 127
    .line 128
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-object v2, p0, Lcom/yunpan/appmanage/util/l;->b:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, Lx9/w3;

    .line 136
    .line 137
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v3, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v3, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 142
    .line 143
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_1

    .line 165
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    iget-object v2, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v2, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 174
    .line 175
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-object v2, p0, Lcom/yunpan/appmanage/util/l;->b:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v2, Lx9/w3;

    .line 183
    .line 184
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 185
    .line 186
    iget-object v3, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v3, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 189
    .line 190
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-nez v0, :cond_1

    .line 212
    .line 213
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v0, Lcom/yunpan/appmanage/util/m;

    .line 216
    .line 217
    iget-object v0, v0, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v0, Lcom/yunpan/appmanage/util/m;

    .line 225
    .line 226
    iget-object v0, v0, Lcom/yunpan/appmanage/util/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 229
    .line 230
    .line 231
    goto/16 :goto_7

    .line 232
    .line 233
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    .line 234
    .line 235
    iget-object v2, p0, Lcom/yunpan/appmanage/util/l;->b:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v2, Lx9/w3;

    .line 238
    .line 239
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 240
    .line 241
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    if-eqz v0, :cond_9

    .line 249
    .line 250
    array-length v2, v0

    .line 251
    if-nez v2, :cond_2

    .line 252
    .line 253
    goto/16 :goto_4

    .line 254
    .line 255
    :cond_2
    array-length v2, v0

    .line 256
    const/4 v3, 0x0

    .line 257
    const/4 v4, 0x0

    .line 258
    const/4 v5, 0x1

    .line 259
    :goto_1
    if-ge v4, v2, :cond_8

    .line 260
    .line 261
    aget-object v6, v0, v4

    .line 262
    .line 263
    new-instance v7, Lx9/w3;

    .line 264
    .line 265
    invoke-direct {v7, v6}, Lx9/w3;-><init>(Ljava/io/File;)V

    .line 266
    .line 267
    .line 268
    iget-boolean v8, v7, Lx9/w3;->c:Z

    .line 269
    .line 270
    if-eqz v8, :cond_3

    .line 271
    .line 272
    iget-object v5, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v5, Lcom/yunpan/appmanage/util/m;

    .line 275
    .line 276
    iget-object v5, v5, Lcom/yunpan/appmanage/util/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 277
    .line 278
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 279
    .line 280
    .line 281
    iget-object v5, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v5, Lcom/yunpan/appmanage/util/m;

    .line 284
    .line 285
    iget-object v6, v5, Lcom/yunpan/appmanage/util/m;->b:Ljava/util/concurrent/ExecutorService;

    .line 286
    .line 287
    new-instance v8, Lcom/yunpan/appmanage/util/l;

    .line 288
    .line 289
    iget-object v9, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v9, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 292
    .line 293
    const/4 v10, 0x0

    .line 294
    invoke-direct {v8, v5, v7, v9, v10}, Lcom/yunpan/appmanage/util/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 295
    .line 296
    .line 297
    invoke-interface {v6, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 298
    .line 299
    .line 300
    const/4 v5, 0x0

    .line 301
    goto/16 :goto_3

    .line 302
    .line 303
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    invoke-static {v8}, Lcom/yunpan/appmanage/util/a0;->b(Ljava/lang/String;)Z

    .line 308
    .line 309
    .line 310
    move-result v8

    .line 311
    if-nez v8, :cond_4

    .line 312
    .line 313
    iget-object v6, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v6, Lcom/yunpan/appmanage/util/m;

    .line 316
    .line 317
    iget-object v6, v6, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 318
    .line 319
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 320
    .line 321
    .line 322
    goto :goto_2

    .line 323
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    iget-object v9, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v9, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 331
    .line 332
    iget-object v9, v9, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v9

    .line 341
    iget-object v10, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast v10, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 344
    .line 345
    iget-object v10, v10, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    .line 346
    .line 347
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 348
    .line 349
    .line 350
    move-result v10

    .line 351
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v9

    .line 355
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v8

    .line 362
    invoke-static {v8}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 363
    .line 364
    .line 365
    move-result v8

    .line 366
    if-eqz v8, :cond_6

    .line 367
    .line 368
    new-instance v8, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .line 372
    .line 373
    iget-object v9, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast v9, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 376
    .line 377
    iget-object v9, v9, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 378
    .line 379
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v6

    .line 386
    iget-object v9, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast v9, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 389
    .line 390
    iget-object v9, v9, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 393
    .line 394
    .line 395
    move-result v9

    .line 396
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v6

    .line 407
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 408
    .line 409
    .line 410
    move-result v6

    .line 411
    if-nez v6, :cond_5

    .line 412
    .line 413
    iget-object v6, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 414
    .line 415
    check-cast v6, Lcom/yunpan/appmanage/util/m;

    .line 416
    .line 417
    iget-object v6, v6, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 418
    .line 419
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 420
    .line 421
    .line 422
    :cond_5
    const-string v6, "\u91cd\u590d"

    .line 423
    .line 424
    iput-object v6, v7, Lx9/w3;->j:Ljava/lang/String;

    .line 425
    .line 426
    iget-object v6, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast v6, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 429
    .line 430
    iget-object v6, v6, Lcom/yunpan/appmanage/bean/FileCopyBean;->isHasRepeatFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 431
    .line 432
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 433
    .line 434
    .line 435
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 436
    .line 437
    check-cast v6, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 438
    .line 439
    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 440
    :try_start_2
    iget-object v8, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 441
    .line 442
    check-cast v8, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 443
    .line 444
    iget-object v8, v8, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 445
    .line 446
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 450
    :goto_3
    :try_start_3
    iget-object v6, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 451
    .line 452
    check-cast v6, Lcom/yunpan/appmanage/util/m;

    .line 453
    .line 454
    iget-object v6, v6, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 455
    .line 456
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 457
    .line 458
    .line 459
    move-result v6

    .line 460
    if-eqz v6, :cond_7

    .line 461
    .line 462
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 463
    .line 464
    check-cast v0, Lcom/yunpan/appmanage/util/m;

    .line 465
    .line 466
    iget-object v0, v0, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 467
    .line 468
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 469
    .line 470
    .line 471
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 472
    .line 473
    check-cast v0, Lcom/yunpan/appmanage/util/m;

    .line 474
    .line 475
    iget-object v0, v0, Lcom/yunpan/appmanage/util/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 476
    .line 477
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 478
    .line 479
    .line 480
    goto :goto_7

    .line 481
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 482
    .line 483
    goto/16 :goto_1

    .line 484
    .line 485
    :catchall_0
    move-exception v0

    .line 486
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 487
    :try_start_5
    throw v0

    .line 488
    :cond_8
    if-eqz v5, :cond_a

    .line 489
    .line 490
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast v0, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 493
    .line 494
    monitor-enter v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 495
    :try_start_6
    iget-object v1, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 496
    .line 497
    check-cast v1, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 498
    .line 499
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->dirs:Ljava/util/List;

    .line 500
    .line 501
    iget-object v2, p0, Lcom/yunpan/appmanage/util/l;->b:Ljava/lang/Object;

    .line 502
    .line 503
    check-cast v2, Lx9/w3;

    .line 504
    .line 505
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    monitor-exit v0

    .line 509
    goto :goto_5

    .line 510
    :catchall_1
    move-exception v1

    .line 511
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 512
    :try_start_7
    throw v1

    .line 513
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 514
    .line 515
    check-cast v0, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 516
    .line 517
    monitor-enter v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 518
    :try_start_8
    iget-object v1, p0, Lcom/yunpan/appmanage/util/l;->c:Ljava/lang/Object;

    .line 519
    .line 520
    check-cast v1, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 521
    .line 522
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->dirs:Ljava/util/List;

    .line 523
    .line 524
    iget-object v2, p0, Lcom/yunpan/appmanage/util/l;->b:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v2, Lx9/w3;

    .line 527
    .line 528
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    monitor-exit v0

    .line 532
    goto :goto_5

    .line 533
    :catchall_2
    move-exception v1

    .line 534
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 535
    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 536
    :catch_1
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 537
    .line 538
    check-cast v0, Lcom/yunpan/appmanage/util/m;

    .line 539
    .line 540
    iget-object v0, v0, Lcom/yunpan/appmanage/util/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 541
    .line 542
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 543
    .line 544
    .line 545
    goto :goto_7

    .line 546
    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 547
    .line 548
    check-cast v0, Lcom/yunpan/appmanage/util/m;

    .line 549
    .line 550
    iget-object v0, v0, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 551
    .line 552
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 553
    .line 554
    .line 555
    iget-object v0, p0, Lcom/yunpan/appmanage/util/l;->d:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast v0, Lcom/yunpan/appmanage/util/m;

    .line 558
    .line 559
    iget-object v0, v0, Lcom/yunpan/appmanage/util/m;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 560
    .line 561
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 562
    .line 563
    .line 564
    :goto_7
    return-void

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
