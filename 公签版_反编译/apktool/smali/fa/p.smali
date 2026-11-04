.class public final Lfa/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ly9/b;

.field public c:Ljava/net/Socket;

.field public d:Ly9/f;

.field public e:Ly9/g;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lfa/p;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lfa/p;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lfa/p;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget v0, p0, Lfa/p;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const-string v2, "shell:"

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lfa/p;->b:Ly9/b;

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v4, v0, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1, v3}, Ly9/b;->J(Ljava/lang/String;)Ly9/f;

    .line 43
    .line 44
    .line 45
    const-wide/16 v3, 0x14d

    .line 46
    .line 47
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v1, p0, Lfa/p;->b:Ly9/b;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ly9/b;->J(Ljava/lang/String;)Ly9/f;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, p0, Lfa/p;->d:Ly9/f;

    .line 57
    .line 58
    iget-object v2, p0, Lfa/p;->c:Ljava/net/Socket;

    .line 59
    .line 60
    if-eqz v2, :cond_8

    .line 61
    .line 62
    iget-boolean v2, v1, Ly9/f;->f:Z

    .line 63
    .line 64
    if-nez v2, :cond_8

    .line 65
    .line 66
    iget-object v1, v1, Ly9/f;->e:Ly9/g;

    .line 67
    .line 68
    iput-object v1, p0, Lfa/p;->e:Ly9/g;

    .line 69
    .line 70
    if-eqz v1, :cond_7

    .line 71
    .line 72
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->m:Z

    .line 73
    .line 74
    const-string v2, "\n"

    .line 75
    .line 76
    const-wide/16 v3, 0x7d0

    .line 77
    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object v1, v0, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    iget-object v0, p0, Lfa/p;->d:Ly9/f;

    .line 90
    .line 91
    const-string v1, "adb36987\n"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ly9/f;->A(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v3, v4}, Lfa/p;->i(J)Lfa/o;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    iget-object v1, p0, Lfa/p;->d:Ly9/f;

    .line 101
    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object v0, v0, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v1, v0}, Ly9/f;->A(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v3, v4}, Lfa/p;->i(J)Lfa/o;

    .line 123
    .line 124
    .line 125
    :goto_0
    iget-object v0, p0, Lfa/p;->d:Ly9/f;

    .line 126
    .line 127
    const-string v1, "id\n"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ly9/f;->A(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-wide/16 v5, 0x378

    .line 133
    .line 134
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lfa/p;->g()V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lfa/p;->d:Ly9/f;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ly9/f;->A(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v3, v4}, Lfa/p;->i(J)Lfa/o;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget-object v0, v0, Lfa/o;->c:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const-string v1, ""

    .line 156
    .line 157
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_3

    .line 162
    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v1, v3, v2}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    goto :goto_1

    .line 174
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const-string v2, "tream open actively rejected"

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_6

    .line 185
    .line 186
    const-string v0, "uid="

    .line 187
    .line 188
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-nez v0, :cond_5

    .line 193
    .line 194
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 195
    .line 196
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->G:Z

    .line 197
    .line 198
    if-eqz v0, :cond_4

    .line 199
    .line 200
    const-string v0, "adb shell\u5bc6\u7801\u9519\u8bef"

    .line 201
    .line 202
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    .line 206
    .line 207
    const-string v1, "\u53ef\u4ee5\u8fde\u63a5\uff0c\u4f46adb shell\u9700\u8981\u5bc6\u7801"

    .line 208
    .line 209
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v0

    .line 213
    :cond_5
    return-void

    .line 214
    :cond_6
    iget-object v0, p0, Lfa/p;->d:Ly9/f;

    .line 215
    .line 216
    invoke-virtual {v0}, Ly9/f;->close()V

    .line 217
    .line 218
    .line 219
    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lfa/p;->d:Ly9/f;

    .line 221
    .line 222
    new-instance v0, Ljava/lang/Exception;

    .line 223
    .line 224
    const-string v1, "adb shell \u9700\u8981\u5bc6\u7801"

    .line 225
    .line 226
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v0

    .line 230
    :cond_7
    new-instance v0, Ljava/lang/Exception;

    .line 231
    .line 232
    const-string v1, "\u8fde\u63a5\u8f93\u51fa\u6d41\u51fa\u9519"

    .line 233
    .line 234
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw v0

    .line 238
    :cond_8
    new-instance v0, Ljava/lang/Exception;

    .line 239
    .line 240
    const-string v1, "\u672a\u8fde\u63a5"

    .line 241
    .line 242
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw v0

    .line 246
    :pswitch_0
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 247
    .line 248
    iget-object v1, v0, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    const-string v2, "shell:"

    .line 259
    .line 260
    if-nez v1, :cond_9

    .line 261
    .line 262
    iget-object v1, p0, Lfa/p;->b:Ly9/b;

    .line 263
    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget-object v4, v0, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-virtual {v1, v3}, Ly9/b;->J(Ljava/lang/String;)Ly9/f;

    .line 283
    .line 284
    .line 285
    const-wide/16 v3, 0x14d

    .line 286
    .line 287
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 288
    .line 289
    .line 290
    :cond_9
    iget-object v1, p0, Lfa/p;->b:Ly9/b;

    .line 291
    .line 292
    invoke-virtual {v1, v2}, Ly9/b;->J(Ljava/lang/String;)Ly9/f;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    iput-object v1, p0, Lfa/p;->d:Ly9/f;

    .line 297
    .line 298
    iget-object v2, p0, Lfa/p;->c:Ljava/net/Socket;

    .line 299
    .line 300
    if-eqz v2, :cond_11

    .line 301
    .line 302
    iget-boolean v2, v1, Ly9/f;->f:Z

    .line 303
    .line 304
    if-nez v2, :cond_11

    .line 305
    .line 306
    iget-object v1, v1, Ly9/f;->e:Ly9/g;

    .line 307
    .line 308
    iput-object v1, p0, Lfa/p;->e:Ly9/g;

    .line 309
    .line 310
    if-eqz v1, :cond_10

    .line 311
    .line 312
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->m:Z

    .line 313
    .line 314
    const-string v2, "\n"

    .line 315
    .line 316
    const-wide/16 v3, 0x7d0

    .line 317
    .line 318
    if-eqz v1, :cond_a

    .line 319
    .line 320
    goto :goto_2

    .line 321
    :cond_a
    iget-object v1, v0, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_b

    .line 328
    .line 329
    iget-object v0, p0, Lfa/p;->d:Ly9/f;

    .line 330
    .line 331
    const-string v1, "adb36987\n"

    .line 332
    .line 333
    invoke-virtual {v0, v1}, Ly9/f;->A(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, v3, v4}, Lfa/p;->h(J)Lfa/o;

    .line 337
    .line 338
    .line 339
    goto :goto_2

    .line 340
    :cond_b
    iget-object v1, p0, Lfa/p;->d:Ly9/f;

    .line 341
    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    iget-object v0, v0, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v1, v0}, Ly9/f;->A(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0, v3, v4}, Lfa/p;->h(J)Lfa/o;

    .line 363
    .line 364
    .line 365
    :goto_2
    iget-object v0, p0, Lfa/p;->d:Ly9/f;

    .line 366
    .line 367
    const-string v1, "id\n"

    .line 368
    .line 369
    invoke-virtual {v0, v1}, Ly9/f;->A(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    const-wide/16 v5, 0x378

    .line 373
    .line 374
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0}, Lfa/p;->g()V

    .line 378
    .line 379
    .line 380
    iget-object v0, p0, Lfa/p;->d:Ly9/f;

    .line 381
    .line 382
    invoke-virtual {v0, v1}, Ly9/f;->A(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {p0, v3, v4}, Lfa/p;->h(J)Lfa/o;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    iget-object v0, v0, Lfa/o;->c:Ljava/util/ArrayList;

    .line 390
    .line 391
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    const-string v1, ""

    .line 396
    .line 397
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    if-eqz v3, :cond_c

    .line 402
    .line 403
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    check-cast v3, Ljava/lang/String;

    .line 408
    .line 409
    invoke-static {v1, v3, v2}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    goto :goto_3

    .line 414
    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    const-string v2, "tream open actively rejected"

    .line 419
    .line 420
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    if-nez v0, :cond_f

    .line 425
    .line 426
    const-string v0, "uid="

    .line 427
    .line 428
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    if-nez v0, :cond_e

    .line 433
    .line 434
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 435
    .line 436
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->G:Z

    .line 437
    .line 438
    if-eqz v0, :cond_d

    .line 439
    .line 440
    const-string v0, "adb shell\u5bc6\u7801\u9519\u8bef"

    .line 441
    .line 442
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 443
    .line 444
    .line 445
    :cond_d
    new-instance v0, Ljava/lang/Exception;

    .line 446
    .line 447
    const-string v1, "\u53ef\u4ee5\u8fde\u63a5\uff0c\u4f46adb shell\u9700\u8981\u5bc6\u7801"

    .line 448
    .line 449
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    throw v0

    .line 453
    :cond_e
    return-void

    .line 454
    :cond_f
    iget-object v0, p0, Lfa/p;->d:Ly9/f;

    .line 455
    .line 456
    invoke-virtual {v0}, Ly9/f;->close()V

    .line 457
    .line 458
    .line 459
    const/4 v0, 0x0

    .line 460
    iput-object v0, p0, Lfa/p;->d:Ly9/f;

    .line 461
    .line 462
    new-instance v0, Ljava/lang/Exception;

    .line 463
    .line 464
    const-string v1, "adb shell \u9700\u8981\u5bc6\u7801"

    .line 465
    .line 466
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    throw v0

    .line 470
    :cond_10
    new-instance v0, Ljava/lang/Exception;

    .line 471
    .line 472
    const-string v1, "\u8fde\u63a5\u8f93\u51fa\u6d41\u51fa\u9519"

    .line 473
    .line 474
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    throw v0

    .line 478
    :cond_11
    new-instance v0, Ljava/lang/Exception;

    .line 479
    .line 480
    const-string v1, "\u672a\u8fde\u63a5"

    .line 481
    .line 482
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    goto :goto_5

    .line 486
    :goto_4
    throw v0

    .line 487
    :goto_5
    goto :goto_4

    .line 488
    nop

    .line 489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)Lfa/o;
    .locals 2

    .line 1
    new-instance v0, Lfa/o;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lfa/o;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lfa/p;->c:Ljava/net/Socket;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lfa/p;->d:Ly9/f;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-boolean v1, v1, Ly9/f;->f:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lfa/p;->e:Ly9/g;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lfa/p;->l(Ljava/lang/String;)Lfa/o;

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object p1

    .line 29
    :catch_0
    const/16 p1, 0x194

    .line 30
    .line 31
    iput p1, v0, Lfa/o;->a:I

    .line 32
    .line 33
    const-string p1, "\u6267\u884c\u5931\u8d25"

    .line 34
    .line 35
    iput-object p1, v0, Lfa/o;->b:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, v0, Lfa/o;->c:Ljava/util/ArrayList;

    .line 38
    .line 39
    iget-object v1, v0, Lfa/o;->b:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 46
    iput p1, v0, Lfa/o;->a:I

    .line 47
    .line 48
    iget-object p1, v0, Lfa/o;->c:Ljava/util/ArrayList;

    .line 49
    .line 50
    const-string v1, "\u672a\u8fde\u63a5adb"

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lfa/o;
    .locals 2

    .line 1
    new-instance v0, Lfa/o;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lfa/o;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lfa/p;->c:Ljava/net/Socket;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lfa/p;->d:Ly9/f;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-boolean v1, v1, Ly9/f;->f:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lfa/p;->e:Ly9/g;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lfa/p;->m(Ljava/lang/String;)Lfa/o;

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object p1

    .line 29
    :catch_0
    const/16 p1, 0x194

    .line 30
    .line 31
    iput p1, v0, Lfa/o;->a:I

    .line 32
    .line 33
    const-string p1, "\u6267\u884c\u5931\u8d25"

    .line 34
    .line 35
    iput-object p1, v0, Lfa/o;->b:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, v0, Lfa/o;->c:Ljava/util/ArrayList;

    .line 38
    .line 39
    iget-object v1, v0, Lfa/o;->b:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 46
    iput p1, v0, Lfa/o;->a:I

    .line 47
    .line 48
    iget-object p1, v0, Lfa/o;->c:Ljava/util/ArrayList;

    .line 49
    .line 50
    const-string v1, "\u672a\u8fde\u63a5adb"

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method public d()Z
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, ""

    .line 3
    .line 4
    invoke-virtual {p0}, Lfa/p;->j()Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-nez v2, :cond_11

    .line 10
    .line 11
    sget-object v2, Lfa/q;->a:Lfa/r;

    .line 12
    .line 13
    invoke-virtual {v2}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_9

    .line 20
    .line 21
    :cond_0
    iget-object v2, p0, Lfa/p;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 24
    .line 25
    .line 26
    const/16 v4, 0x15

    .line 27
    .line 28
    :try_start_0
    invoke-static {}, Lfa/a;->a()V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lfa/a;->b()V

    .line 32
    .line 33
    .line 34
    sget-object v5, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 35
    .line 36
    iget-boolean v6, v5, Lcom/yunpan/appmanage/util/w;->o:Z

    .line 37
    .line 38
    if-eqz v6, :cond_2

    .line 39
    .line 40
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    if-ge v6, v4, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    .line 46
    .line 47
    const-string v5, "\u4f7f\u7528\u65b0\u7248Adb\u534f\u8bae"

    .line 48
    .line 49
    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    goto/16 :goto_7

    .line 55
    .line 56
    :cond_2
    :goto_0
    :try_start_1
    new-instance v6, Ljava/net/Socket;

    .line 57
    .line 58
    iget v5, v5, Lcom/yunpan/appmanage/util/w;->k:I

    .line 59
    .line 60
    invoke-direct {v6, v1, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    iput-object v6, p0, Lfa/p;->c:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :catch_1
    const/16 v5, 0x15b3

    .line 68
    .line 69
    :try_start_2
    sget-object v6, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 70
    .line 71
    iget v7, v6, Lcom/yunpan/appmanage/util/w;->k:I

    .line 72
    .line 73
    const/16 v8, 0x15b5

    .line 74
    .line 75
    if-eq v7, v8, :cond_3

    .line 76
    .line 77
    new-instance v7, Ljava/net/Socket;

    .line 78
    .line 79
    invoke-direct {v7, v1, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    iput-object v7, p0, Lfa/p;->c:Ljava/net/Socket;

    .line 83
    .line 84
    invoke-virtual {v6, v8}, Lcom/yunpan/appmanage/util/w;->n(I)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_6

    .line 88
    .line 89
    :catch_2
    move-exception v6

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    new-instance v7, Ljava/net/Socket;

    .line 92
    .line 93
    invoke-direct {v7, v1, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    iput-object v7, p0, Lfa/p;->c:Ljava/net/Socket;

    .line 97
    .line 98
    invoke-virtual {v6, v5}, Lcom/yunpan/appmanage/util/w;->n(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 99
    .line 100
    .line 101
    goto/16 :goto_6

    .line 102
    .line 103
    :goto_1
    :try_start_3
    sget-object v7, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 104
    .line 105
    iget-boolean v8, v7, Lcom/yunpan/appmanage/util/w;->z:Z

    .line 106
    .line 107
    if-nez v8, :cond_5

    .line 108
    .line 109
    iget-boolean v9, v7, Lcom/yunpan/appmanage/util/w;->A:Z

    .line 110
    .line 111
    if-eqz v9, :cond_4

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    throw v6

    .line 115
    :cond_5
    :goto_2
    if-eqz v8, :cond_7

    .line 116
    .line 117
    new-array v8, v3, [Ljava/lang/String;

    .line 118
    .line 119
    const-string v9, "setprop service.adb.tcp.port 5555"

    .line 120
    .line 121
    aput-object v9, v8, v0

    .line 122
    .line 123
    invoke-static {v8}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-virtual {v8}, Lv9/e;->l0()Landroidx/room/s;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-virtual {v8}, Landroidx/room/s;->q()Z

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    if-eqz v8, :cond_6

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_6
    throw v6

    .line 139
    :cond_7
    :goto_3
    iget-boolean v7, v7, Lcom/yunpan/appmanage/util/w;->A:Z

    .line 140
    .line 141
    if-eqz v7, :cond_9

    .line 142
    .line 143
    new-array v7, v3, [Ljava/lang/String;

    .line 144
    .line 145
    const-string v8, "setprop persist.adb.tcp.port 5555"

    .line 146
    .line 147
    aput-object v8, v7, v0

    .line 148
    .line 149
    invoke-static {v7}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-virtual {v7}, Lv9/e;->l0()Landroidx/room/s;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-virtual {v7}, Landroidx/room/s;->q()Z

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-eqz v7, :cond_8

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_8
    throw v6

    .line 165
    :cond_9
    :goto_4
    const-wide/16 v7, 0x14d

    .line 166
    .line 167
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 168
    .line 169
    .line 170
    new-array v7, v3, [Ljava/lang/String;

    .line 171
    .line 172
    const-string v8, "setprop ctl.restart adbd"

    .line 173
    .line 174
    aput-object v8, v7, v0

    .line 175
    .line 176
    invoke-static {v7}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-virtual {v7}, Lv9/e;->l0()Landroidx/room/s;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    iget v7, v7, Landroidx/room/s;->b:I

    .line 185
    .line 186
    if-nez v7, :cond_e

    .line 187
    .line 188
    const-wide/16 v6, 0x7d0

    .line 189
    .line 190
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 191
    .line 192
    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 194
    .line 195
    .line 196
    move-result-wide v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 197
    :cond_a
    :try_start_4
    new-instance v8, Ljava/net/Socket;

    .line 198
    .line 199
    invoke-direct {v8, v1, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 200
    .line 201
    .line 202
    iput-object v8, p0, Lfa/p;->c:Ljava/net/Socket;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :catch_3
    const-wide/16 v8, 0xde

    .line 206
    .line 207
    :try_start_5
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 208
    .line 209
    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 211
    .line 212
    .line 213
    move-result-wide v8

    .line 214
    sub-long/2addr v8, v6

    .line 215
    const-wide/16 v10, 0xbb8

    .line 216
    .line 217
    cmp-long v12, v8, v10

    .line 218
    .line 219
    if-ltz v12, :cond_a

    .line 220
    .line 221
    :goto_5
    iget-object v1, p0, Lfa/p;->c:Ljava/net/Socket;

    .line 222
    .line 223
    if-eqz v1, :cond_d

    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-nez v1, :cond_d

    .line 230
    .line 231
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 232
    .line 233
    iget v6, v1, Lcom/yunpan/appmanage/util/w;->k:I

    .line 234
    .line 235
    if-eq v6, v5, :cond_b

    .line 236
    .line 237
    invoke-virtual {v1, v5}, Lcom/yunpan/appmanage/util/w;->n(I)V

    .line 238
    .line 239
    .line 240
    :cond_b
    :goto_6
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 241
    .line 242
    invoke-static {v1}, Lfa/a;->c(Lcom/yunpan/appmanage/base/AppStart;)Ly9/c;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    iget-object v5, p0, Lfa/p;->c:Ljava/net/Socket;

    .line 247
    .line 248
    invoke-static {v5, v1}, Ly9/b;->A(Ljava/net/Socket;Ly9/c;)Ly9/b;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    iput-object v1, p0, Lfa/p;->b:Ly9/b;

    .line 253
    .line 254
    invoke-virtual {v1}, Ly9/b;->r()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Lfa/p;->a()V

    .line 258
    .line 259
    .line 260
    const-string v1, "id"

    .line 261
    .line 262
    invoke-virtual {p0, v1}, Lfa/p;->b(Ljava/lang/String;)Lfa/o;

    .line 263
    .line 264
    .line 265
    sget-object v1, Lfa/a;->a:Lfa/b;

    .line 266
    .line 267
    invoke-virtual {v1}, Lfa/b;->f()Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-nez v1, :cond_c

    .line 272
    .line 273
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 274
    .line 275
    invoke-static {v1}, Lfa/b;->a(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {p0, v1}, Lfa/p;->b(Ljava/lang/String;)Lfa/o;

    .line 280
    .line 281
    .line 282
    :cond_c
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 283
    .line 284
    .line 285
    return v3

    .line 286
    :cond_d
    new-instance v1, Ljava/lang/Exception;

    .line 287
    .line 288
    const-string v5, "\u65e0\u6cd5\u8fde\u63a5\uff0c\u81ea\u52a8\u6253\u5f00\u65e0\u7ebfadb"

    .line 289
    .line 290
    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw v1

    .line 294
    :cond_e
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 295
    :goto_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Lfa/p;->f()V

    .line 299
    .line 300
    .line 301
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 302
    .line 303
    if-lt v5, v4, :cond_f

    .line 304
    .line 305
    :try_start_6
    sget-object v1, Lfa/q;->a:Lfa/r;

    .line 306
    .line 307
    invoke-virtual {v1}, Lfa/r;->L()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_10

    .line 315
    .line 316
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 317
    .line 318
    .line 319
    return v3

    .line 320
    :catch_4
    move-exception v1

    .line 321
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 322
    .line 323
    iget-boolean v3, v3, Lwa/u;->v:Z

    .line 324
    .line 325
    if-eqz v3, :cond_10

    .line 326
    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    const-string v4, "\u5f00\u673aadb\u5931\u8d25\uff1a"

    .line 330
    .line 331
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-static {v1}, Lwa/w;->b(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    goto :goto_8

    .line 349
    :cond_f
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 350
    .line 351
    iget-boolean v3, v3, Lwa/u;->v:Z

    .line 352
    .line 353
    if-eqz v3, :cond_10

    .line 354
    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    const-string v4, "\u8fde\u63a5\u5931\u8d25\uff1a"

    .line 358
    .line 359
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-static {v1}, Lwa/w;->b(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    :cond_10
    :goto_8
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 377
    .line 378
    .line 379
    return v0

    .line 380
    :cond_11
    :goto_9
    return v3
.end method

.method public e(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lfa/p;->c:Ljava/net/Socket;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lfa/p;->d:Ly9/f;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, v0, Ly9/f;->f:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lfa/p;->e:Ly9/g;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 23
    :goto_1
    if-eqz v0, :cond_2

    .line 24
    .line 25
    return v2

    .line 26
    :cond_2
    iget-object v0, p0, Lfa/p;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    new-instance v3, Ljava/net/Socket;

    .line 32
    .line 33
    const/16 v4, 0x15b3

    .line 34
    .line 35
    invoke-direct {v3, p1, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    iput-object v3, p0, Lfa/p;->c:Ljava/net/Socket;

    .line 39
    .line 40
    sget-object p1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 41
    .line 42
    invoke-static {p1}, Lfa/a;->c(Lcom/yunpan/appmanage/base/AppStart;)Ly9/c;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v3, p0, Lfa/p;->c:Ljava/net/Socket;

    .line 47
    .line 48
    invoke-static {v3, p1}, Ly9/b;->A(Ljava/net/Socket;Ly9/c;)Ly9/b;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lfa/p;->b:Ly9/b;

    .line 53
    .line 54
    invoke-virtual {p1}, Ly9/b;->r()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lfa/p;->a()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    return v2

    .line 64
    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    :try_start_1
    iget-object v2, p0, Lfa/p;->d:Ly9/f;

    .line 70
    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    invoke-virtual {v2}, Ly9/f;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto :goto_10

    .line 79
    :catch_1
    move-exception v2

    .line 80
    goto :goto_3

    .line 81
    :cond_3
    :goto_2
    iput-object p1, p0, Lfa/p;->d:Ly9/f;

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :goto_4
    :try_start_3
    iget-object v2, p0, Lfa/p;->e:Ly9/g;

    .line 89
    .line 90
    if-eqz v2, :cond_4

    .line 91
    .line 92
    iput-boolean v1, v2, Ly9/g;->a:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    .line 94
    :cond_4
    :goto_5
    iput-object p1, p0, Lfa/p;->e:Ly9/g;

    .line 95
    .line 96
    goto :goto_6

    .line 97
    :catchall_1
    move-exception v0

    .line 98
    goto :goto_f

    .line 99
    :catch_2
    move-exception v2

    .line 100
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    .line 102
    .line 103
    goto :goto_5

    .line 104
    :goto_6
    :try_start_5
    iget-object v2, p0, Lfa/p;->b:Ly9/b;

    .line 105
    .line 106
    if-eqz v2, :cond_5

    .line 107
    .line 108
    invoke-virtual {v2}, Ly9/b;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 109
    .line 110
    .line 111
    goto :goto_7

    .line 112
    :catchall_2
    move-exception v0

    .line 113
    goto :goto_e

    .line 114
    :catch_3
    move-exception v2

    .line 115
    goto :goto_8

    .line 116
    :cond_5
    :goto_7
    iput-object p1, p0, Lfa/p;->b:Ly9/b;

    .line 117
    .line 118
    goto :goto_9

    .line 119
    :goto_8
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 120
    .line 121
    .line 122
    goto :goto_7

    .line 123
    :goto_9
    :try_start_7
    iget-object v2, p0, Lfa/p;->c:Ljava/net/Socket;

    .line 124
    .line 125
    if-eqz v2, :cond_6

    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 128
    .line 129
    .line 130
    goto :goto_a

    .line 131
    :catchall_3
    move-exception v0

    .line 132
    goto :goto_d

    .line 133
    :catch_4
    move-exception v2

    .line 134
    goto :goto_b

    .line 135
    :cond_6
    :goto_a
    iput-object p1, p0, Lfa/p;->c:Ljava/net/Socket;

    .line 136
    .line 137
    goto :goto_c

    .line 138
    :goto_b
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 139
    .line 140
    .line 141
    goto :goto_a

    .line 142
    :goto_c
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    .line 144
    .line 145
    return v1

    .line 146
    :goto_d
    iput-object p1, p0, Lfa/p;->c:Ljava/net/Socket;

    .line 147
    .line 148
    throw v0

    .line 149
    :goto_e
    iput-object p1, p0, Lfa/p;->b:Ly9/b;

    .line 150
    .line 151
    throw v0

    .line 152
    :goto_f
    iput-object p1, p0, Lfa/p;->e:Ly9/g;

    .line 153
    .line 154
    throw v0

    .line 155
    :goto_10
    iput-object p1, p0, Lfa/p;->d:Ly9/f;

    .line 156
    .line 157
    goto :goto_12

    .line 158
    :goto_11
    throw v0

    .line 159
    :goto_12
    goto :goto_11
.end method

.method public f()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfa/p;->d:Ly9/f;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Ly9/f;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_e

    .line 12
    :catch_0
    move-exception v1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    iput-object v0, p0, Lfa/p;->d:Ly9/f;

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :goto_2
    :try_start_2
    iget-object v1, p0, Lfa/p;->e:Ly9/g;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    iput-boolean v2, v1, Ly9/g;->a:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    .line 28
    :cond_1
    :goto_3
    iput-object v0, p0, Lfa/p;->e:Ly9/g;

    .line 29
    .line 30
    goto :goto_4

    .line 31
    :catchall_1
    move-exception v1

    .line 32
    goto :goto_d

    .line 33
    :catch_1
    move-exception v1

    .line 34
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    .line 36
    .line 37
    goto :goto_3

    .line 38
    :goto_4
    :try_start_4
    iget-object v1, p0, Lfa/p;->b:Ly9/b;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Ly9/b;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 43
    .line 44
    .line 45
    goto :goto_5

    .line 46
    :catchall_2
    move-exception v1

    .line 47
    goto :goto_c

    .line 48
    :catch_2
    move-exception v1

    .line 49
    goto :goto_6

    .line 50
    :cond_2
    :goto_5
    iput-object v0, p0, Lfa/p;->b:Ly9/b;

    .line 51
    .line 52
    goto :goto_7

    .line 53
    :goto_6
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 54
    .line 55
    .line 56
    goto :goto_5

    .line 57
    :goto_7
    :try_start_6
    iget-object v1, p0, Lfa/p;->c:Ljava/net/Socket;

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 62
    .line 63
    .line 64
    goto :goto_8

    .line 65
    :catchall_3
    move-exception v1

    .line 66
    goto :goto_b

    .line 67
    :catch_3
    move-exception v1

    .line 68
    goto :goto_9

    .line 69
    :cond_3
    :goto_8
    iput-object v0, p0, Lfa/p;->c:Ljava/net/Socket;

    .line 70
    .line 71
    goto :goto_a

    .line 72
    :goto_9
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 73
    .line 74
    .line 75
    goto :goto_8

    .line 76
    :goto_a
    return-void

    .line 77
    :goto_b
    iput-object v0, p0, Lfa/p;->c:Ljava/net/Socket;

    .line 78
    .line 79
    throw v1

    .line 80
    :goto_c
    iput-object v0, p0, Lfa/p;->b:Ly9/b;

    .line 81
    .line 82
    throw v1

    .line 83
    :goto_d
    iput-object v0, p0, Lfa/p;->e:Ly9/g;

    .line 84
    .line 85
    throw v1

    .line 86
    :goto_e
    iput-object v0, p0, Lfa/p;->d:Ly9/f;

    .line 87
    .line 88
    goto :goto_10

    .line 89
    :goto_f
    throw v1

    .line 90
    :goto_10
    goto :goto_f
.end method

.method public final g()V
    .locals 7

    .line 1
    const/16 v0, 0x1a0a

    .line 2
    .line 3
    const-wide/16 v1, 0x3c

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x3

    .line 7
    iget v5, p0, Lfa/p;->a:I

    .line 8
    .line 9
    packed-switch v5, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v5, p0, Lfa/p;->d:Ly9/f;

    .line 13
    .line 14
    new-array v6, v4, [B

    .line 15
    .line 16
    fill-array-data v6, :array_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5, v6}, Ly9/f;->J([B)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    :try_start_1
    new-array v0, v0, [B

    .line 26
    .line 27
    :cond_0
    iget-object v1, p0, Lfa/p;->e:Ly9/g;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 30
    .line 31
    .line 32
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    if-gtz v1, :cond_1

    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    :cond_1
    if-lt v3, v4, :cond_0

    .line 38
    .line 39
    :catch_1
    return-void

    .line 40
    :pswitch_0
    :try_start_2
    iget-object v5, p0, Lfa/p;->d:Ly9/f;

    .line 41
    .line 42
    new-array v6, v4, [B

    .line 43
    .line 44
    fill-array-data v6, :array_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ly9/f;->J([B)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 51
    .line 52
    .line 53
    :catch_2
    :try_start_3
    new-array v0, v0, [B

    .line 54
    .line 55
    :cond_2
    iget-object v1, p0, Lfa/p;->e:Ly9/g;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 58
    .line 59
    .line 60
    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 61
    if-gtz v1, :cond_3

    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    :cond_3
    if-lt v3, v4, :cond_2

    .line 66
    .line 67
    :catch_3
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 70
    .line 71
    .line 72
    :array_0
    .array-data 1
        0x0t
        0x1ct
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1ct
        0xat
    .end array-data
.end method

.method public h(J)Lfa/o;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x4

    .line 5
    const/4 v4, 0x1

    .line 6
    new-instance v5, Lfa/o;

    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    invoke-direct {v5, v6}, Lfa/o;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v7

    .line 16
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 17
    .line 18
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 19
    .line 20
    .line 21
    const/16 v10, 0x1a0a

    .line 22
    .line 23
    new-array v10, v10, [B

    .line 24
    .line 25
    const/4 v11, 0x0

    .line 26
    const/4 v12, 0x0

    .line 27
    :goto_0
    iget-object v13, v0, Lfa/p;->b:Ly9/b;

    .line 28
    .line 29
    iget-boolean v13, v13, Ly9/b;->f:Z

    .line 30
    .line 31
    const-string v14, "UTF-8"

    .line 32
    .line 33
    if-nez v13, :cond_0

    .line 34
    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v15

    .line 41
    sub-long/2addr v15, v7

    .line 42
    cmp-long v13, v15, p1

    .line 43
    .line 44
    if-lez v13, :cond_1

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    new-instance v2, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-direct {v2, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :cond_1
    iget-object v13, v0, Lfa/p;->e:Ly9/g;

    .line 65
    .line 66
    invoke-virtual {v13, v10}, Ljava/io/InputStream;->read([B)I

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    if-gtz v13, :cond_3

    .line 71
    .line 72
    add-int/2addr v11, v4

    .line 73
    if-le v11, v2, :cond_9

    .line 74
    .line 75
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 76
    .line 77
    .line 78
    move-result v13

    .line 79
    if-le v13, v3, :cond_2

    .line 80
    .line 81
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 82
    .line 83
    .line 84
    move-result v13

    .line 85
    const/16 v15, 0x14

    .line 86
    .line 87
    if-ge v13, v15, :cond_2

    .line 88
    .line 89
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    new-instance v15, Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-direct {v15, v13, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v13, "assword:"

    .line 107
    .line 108
    invoke-virtual {v1, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_2

    .line 113
    .line 114
    goto/16 :goto_4

    .line 115
    .line 116
    :cond_2
    const-wide/16 v17, 0xc8

    .line 117
    .line 118
    :try_start_0
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto/16 :goto_3

    .line 122
    .line 123
    :catch_0
    nop

    .line 124
    goto :goto_3

    .line 125
    :cond_3
    invoke-virtual {v9, v10, v6, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-le v1, v3, :cond_8

    .line 133
    .line 134
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    array-length v11, v1

    .line 139
    add-int/lit8 v13, v11, -0x1

    .line 140
    .line 141
    aget-byte v13, v1, v13

    .line 142
    .line 143
    const/16 v15, 0x20

    .line 144
    .line 145
    if-eq v13, v15, :cond_4

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    add-int/lit8 v13, v11, -0x2

    .line 149
    .line 150
    aget-byte v13, v1, v13

    .line 151
    .line 152
    const/16 v2, 0x26

    .line 153
    .line 154
    if-eq v13, v2, :cond_5

    .line 155
    .line 156
    const/16 v2, 0x23

    .line 157
    .line 158
    if-eq v13, v2, :cond_5

    .line 159
    .line 160
    const/16 v2, 0x24

    .line 161
    .line 162
    if-eq v13, v2, :cond_5

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_5
    const/4 v2, 0x3

    .line 166
    add-int/lit8 v13, v11, -0x3

    .line 167
    .line 168
    aget-byte v2, v1, v13

    .line 169
    .line 170
    if-ne v2, v15, :cond_7

    .line 171
    .line 172
    add-int/lit8 v2, v11, -0x4

    .line 173
    .line 174
    aget-byte v2, v1, v2

    .line 175
    .line 176
    const/16 v13, 0x2f

    .line 177
    .line 178
    if-ne v2, v13, :cond_7

    .line 179
    .line 180
    add-int/lit8 v11, v11, -0x5

    .line 181
    .line 182
    aget-byte v2, v1, v11

    .line 183
    .line 184
    const/16 v11, 0x3a

    .line 185
    .line 186
    if-eq v2, v11, :cond_6

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_6
    :goto_1
    const/4 v11, 0x0

    .line 190
    const/4 v12, 0x1

    .line 191
    goto :goto_3

    .line 192
    :cond_7
    :goto_2
    new-instance v2, Ljava/lang/String;

    .line 193
    .line 194
    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    invoke-direct {v2, v1, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 199
    .line 200
    .line 201
    const-string v1, ":"

    .line 202
    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_8

    .line 208
    .line 209
    const-string v1, " $ "

    .line 210
    .line 211
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-nez v1, :cond_6

    .line 216
    .line 217
    const-string v1, " # "

    .line 218
    .line 219
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_8

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_8
    const/4 v11, 0x0

    .line 227
    :cond_9
    :goto_3
    if-eqz v12, :cond_d

    .line 228
    .line 229
    :goto_4
    if-nez v12, :cond_a

    .line 230
    .line 231
    :try_start_1
    iget-object v1, v0, Lfa/p;->d:Ly9/f;

    .line 232
    .line 233
    const/4 v2, 0x3

    .line 234
    new-array v2, v2, [B

    .line 235
    .line 236
    fill-array-data v2, :array_0

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v2}, Ly9/f;->J([B)V

    .line 240
    .line 241
    .line 242
    const-wide/16 v1, 0x3c

    .line 243
    .line 244
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    .line 246
    .line 247
    :catch_1
    const/16 v1, 0x194

    .line 248
    .line 249
    iput v1, v5, Lfa/o;->a:I

    .line 250
    .line 251
    const-string v1, "\u547d\u4ee4\u6267\u884c\u8d85\u65f6"

    .line 252
    .line 253
    iput-object v1, v5, Lfa/o;->b:Ljava/lang/String;

    .line 254
    .line 255
    iget-object v2, v5, Lfa/o;->c:Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_a
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    new-instance v2, Ljava/lang/String;

    .line 266
    .line 267
    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 272
    .line 273
    .line 274
    const-string v1, "\n"

    .line 275
    .line 276
    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    add-int/2addr v3, v4

    .line 281
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    const-string v4, "|"

    .line 286
    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    if-eqz v7, :cond_b

    .line 292
    .line 293
    new-instance v7, Ljava/lang/Integer;

    .line 294
    .line 295
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    iput v3, v5, Lfa/o;->a:I

    .line 311
    .line 312
    goto :goto_5

    .line 313
    :cond_b
    iput v6, v5, Lfa/o;->a:I

    .line 314
    .line 315
    :goto_5
    new-instance v3, Ljava/util/ArrayList;

    .line 316
    .line 317
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 326
    .line 327
    .line 328
    iput-object v3, v5, Lfa/o;->c:Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-nez v1, :cond_c

    .line 335
    .line 336
    iget-object v1, v5, Lfa/o;->c:Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    :cond_c
    :goto_6
    return-object v5

    .line 342
    :cond_d
    const/4 v2, 0x2

    .line 343
    goto/16 :goto_0

    .line 344
    .line 345
    :array_0
    .array-data 1
        0x0t
        0x1ct
        0xat
    .end array-data
.end method

.method public i(J)Lfa/o;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x4

    .line 5
    new-instance v4, Lfa/o;

    .line 6
    .line 7
    const/4 v5, 0x1

    .line 8
    invoke-direct {v4, v5}, Lfa/o;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v6

    .line 15
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 16
    .line 17
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 18
    .line 19
    .line 20
    const/16 v9, 0x1a0a

    .line 21
    .line 22
    new-array v9, v9, [B

    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v11, 0x0

    .line 26
    const/4 v12, 0x0

    .line 27
    :goto_0
    iget-object v13, v0, Lfa/p;->b:Ly9/b;

    .line 28
    .line 29
    iget-boolean v13, v13, Ly9/b;->f:Z

    .line 30
    .line 31
    const-string v14, "UTF-8"

    .line 32
    .line 33
    if-nez v13, :cond_0

    .line 34
    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v15

    .line 41
    sub-long/2addr v15, v6

    .line 42
    cmp-long v13, v15, p1

    .line 43
    .line 44
    if-lez v13, :cond_1

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    new-instance v2, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-direct {v2, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :cond_1
    iget-object v13, v0, Lfa/p;->e:Ly9/g;

    .line 65
    .line 66
    invoke-virtual {v13, v9}, Ljava/io/InputStream;->read([B)I

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    if-gtz v13, :cond_3

    .line 71
    .line 72
    add-int/2addr v11, v5

    .line 73
    if-le v11, v2, :cond_9

    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 76
    .line 77
    .line 78
    move-result v13

    .line 79
    if-le v13, v3, :cond_2

    .line 80
    .line 81
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 82
    .line 83
    .line 84
    move-result v13

    .line 85
    const/16 v15, 0x14

    .line 86
    .line 87
    if-ge v13, v15, :cond_2

    .line 88
    .line 89
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    new-instance v15, Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-direct {v15, v13, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v13, "assword:"

    .line 107
    .line 108
    invoke-virtual {v1, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_2

    .line 113
    .line 114
    goto/16 :goto_4

    .line 115
    .line 116
    :cond_2
    const-wide/16 v17, 0xc8

    .line 117
    .line 118
    :try_start_0
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto/16 :goto_3

    .line 122
    .line 123
    :catch_0
    nop

    .line 124
    goto :goto_3

    .line 125
    :cond_3
    invoke-virtual {v8, v9, v10, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-le v1, v3, :cond_8

    .line 133
    .line 134
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    array-length v11, v1

    .line 139
    add-int/lit8 v13, v11, -0x1

    .line 140
    .line 141
    aget-byte v13, v1, v13

    .line 142
    .line 143
    const/16 v15, 0x20

    .line 144
    .line 145
    if-eq v13, v15, :cond_4

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    add-int/lit8 v13, v11, -0x2

    .line 149
    .line 150
    aget-byte v13, v1, v13

    .line 151
    .line 152
    const/16 v2, 0x26

    .line 153
    .line 154
    if-eq v13, v2, :cond_5

    .line 155
    .line 156
    const/16 v2, 0x23

    .line 157
    .line 158
    if-eq v13, v2, :cond_5

    .line 159
    .line 160
    const/16 v2, 0x24

    .line 161
    .line 162
    if-eq v13, v2, :cond_5

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_5
    const/4 v2, 0x3

    .line 166
    add-int/lit8 v13, v11, -0x3

    .line 167
    .line 168
    aget-byte v2, v1, v13

    .line 169
    .line 170
    if-ne v2, v15, :cond_7

    .line 171
    .line 172
    add-int/lit8 v2, v11, -0x4

    .line 173
    .line 174
    aget-byte v2, v1, v2

    .line 175
    .line 176
    const/16 v13, 0x2f

    .line 177
    .line 178
    if-ne v2, v13, :cond_7

    .line 179
    .line 180
    add-int/lit8 v11, v11, -0x5

    .line 181
    .line 182
    aget-byte v2, v1, v11

    .line 183
    .line 184
    const/16 v11, 0x3a

    .line 185
    .line 186
    if-eq v2, v11, :cond_6

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_6
    :goto_1
    const/4 v11, 0x0

    .line 190
    const/4 v12, 0x1

    .line 191
    goto :goto_3

    .line 192
    :cond_7
    :goto_2
    new-instance v2, Ljava/lang/String;

    .line 193
    .line 194
    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    invoke-direct {v2, v1, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 199
    .line 200
    .line 201
    const-string v1, ":"

    .line 202
    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_8

    .line 208
    .line 209
    const-string v1, " $ "

    .line 210
    .line 211
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-nez v1, :cond_6

    .line 216
    .line 217
    const-string v1, " # "

    .line 218
    .line 219
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_8

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_8
    const/4 v11, 0x0

    .line 227
    :cond_9
    :goto_3
    if-eqz v12, :cond_d

    .line 228
    .line 229
    :goto_4
    if-nez v12, :cond_a

    .line 230
    .line 231
    :try_start_1
    iget-object v1, v0, Lfa/p;->d:Ly9/f;

    .line 232
    .line 233
    const/4 v2, 0x3

    .line 234
    new-array v2, v2, [B

    .line 235
    .line 236
    fill-array-data v2, :array_0

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v2}, Ly9/f;->J([B)V

    .line 240
    .line 241
    .line 242
    const-wide/16 v1, 0x3c

    .line 243
    .line 244
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    .line 246
    .line 247
    :catch_1
    const/16 v1, 0x194

    .line 248
    .line 249
    iput v1, v4, Lfa/o;->a:I

    .line 250
    .line 251
    const-string v1, "\u547d\u4ee4\u6267\u884c\u8d85\u65f6"

    .line 252
    .line 253
    iput-object v1, v4, Lfa/o;->b:Ljava/lang/String;

    .line 254
    .line 255
    iget-object v2, v4, Lfa/o;->c:Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_a
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    new-instance v2, Ljava/lang/String;

    .line 266
    .line 267
    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 272
    .line 273
    .line 274
    const-string v1, "\n"

    .line 275
    .line 276
    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    add-int/2addr v3, v5

    .line 281
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    const-string v5, "|"

    .line 286
    .line 287
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 288
    .line 289
    .line 290
    move-result v6

    .line 291
    if-eqz v6, :cond_b

    .line 292
    .line 293
    new-instance v6, Ljava/lang/Integer;

    .line 294
    .line 295
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    move-result v5

    .line 299
    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    iput v3, v4, Lfa/o;->a:I

    .line 311
    .line 312
    goto :goto_5

    .line 313
    :cond_b
    iput v10, v4, Lfa/o;->a:I

    .line 314
    .line 315
    :goto_5
    new-instance v3, Ljava/util/ArrayList;

    .line 316
    .line 317
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 326
    .line 327
    .line 328
    iput-object v3, v4, Lfa/o;->c:Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-nez v1, :cond_c

    .line 335
    .line 336
    iget-object v1, v4, Lfa/o;->c:Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    :cond_c
    :goto_6
    return-object v4

    .line 342
    :cond_d
    const/4 v2, 0x2

    .line 343
    goto/16 :goto_0

    .line 344
    .line 345
    :array_0
    .array-data 1
        0x0t
        0x1ct
        0xat
    .end array-data
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/p;->c:Ljava/net/Socket;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lfa/p;->d:Ly9/f;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, v0, Ly9/f;->f:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lfa/p;->e:Ly9/g;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const-string v4, "/sdcard/.gj123.apk"

    .line 7
    .line 8
    const-string v5, "addSuppressed"

    .line 9
    .line 10
    const-class v6, Ljava/lang/Throwable;

    .line 11
    .line 12
    move-object/from16 v7, p0

    .line 13
    .line 14
    :try_start_0
    iget-object v8, v7, Lfa/p;->b:Ly9/b;

    .line 15
    .line 16
    const-string v9, "sync:"

    .line 17
    .line 18
    invoke-virtual {v8, v9}, Ly9/b;->J(Ljava/lang/String;)Ly9/f;

    .line 19
    .line 20
    .line 21
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    .line 23
    .line 24
    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 25
    .line 26
    .line 27
    :try_start_2
    const-string v10, "SEND"

    .line 28
    .line 29
    const-string v11, ",33206"

    .line 30
    .line 31
    const-string v12, "/sdcard/.gj123.apk,33206"

    .line 32
    .line 33
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v12

    .line 37
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    invoke-static {v12}, Lif/a;->W(I)[B

    .line 42
    .line 43
    .line 44
    move-result-object v12

    .line 45
    new-array v13, v1, [[B

    .line 46
    .line 47
    aput-object v10, v13, v3

    .line 48
    .line 49
    aput-object v12, v13, v2

    .line 50
    .line 51
    invoke-static {v13}, Lif/a;->n([[B)[B

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    invoke-virtual {v8, v10}, Ly9/f;->J([B)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v8, v4}, Ly9/f;->J([B)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v8, v4}, Ly9/f;->J([B)V

    .line 70
    .line 71
    .line 72
    const/16 v4, 0xfa0

    .line 73
    .line 74
    new-array v10, v4, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 75
    .line 76
    const-wide/16 v11, 0x0

    .line 77
    .line 78
    :try_start_3
    new-instance v13, Ljava/io/File;

    .line 79
    .line 80
    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v13}, Ljava/io/File;->length()J

    .line 84
    .line 85
    .line 86
    move-result-wide v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    move-object v4, v0

    .line 90
    move-object v1, v5

    .line 91
    goto/16 :goto_5

    .line 92
    .line 93
    :catch_0
    nop

    .line 94
    move-wide v13, v11

    .line 95
    :goto_0
    cmp-long v0, v13, v11

    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    :goto_1
    :try_start_4
    invoke-virtual {v9, v10}, Ljava/io/InputStream;->read([B)I

    .line 101
    .line 102
    .line 103
    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 104
    const-wide/16 v16, 0x64

    .line 105
    .line 106
    if-gez v15, :cond_0

    .line 107
    .line 108
    :try_start_5
    const-string v0, "DONE"

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 115
    .line 116
    .line 117
    move-result-wide v10

    .line 118
    long-to-int v4, v10

    .line 119
    invoke-static {v4}, Lif/a;->W(I)[B

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    new-array v10, v1, [[B

    .line 124
    .line 125
    aput-object v0, v10, v3

    .line 126
    .line 127
    aput-object v4, v10, v2

    .line 128
    .line 129
    invoke-static {v10}, Lif/a;->n([[B)[B

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v8, v0}, Ly9/f;->J([B)V

    .line 134
    .line 135
    .line 136
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 137
    .line 138
    .line 139
    const-string v0, "QUIT"

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v3}, Lif/a;->W(I)[B

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    new-array v1, v1, [[B

    .line 150
    .line 151
    aput-object v0, v1, v3

    .line 152
    .line 153
    aput-object v4, v1, v2

    .line 154
    .line 155
    invoke-static {v1}, Lif/a;->n([[B)[B

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v8, v0}, Ly9/f;->J([B)V

    .line 160
    .line 161
    .line 162
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 163
    .line 164
    .line 165
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 166
    .line 167
    .line 168
    :try_start_7
    invoke-virtual {v8}, Ly9/f;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :catch_1
    move-exception v0

    .line 173
    goto/16 :goto_a

    .line 174
    .line 175
    :catchall_1
    move-exception v0

    .line 176
    move-object v4, v0

    .line 177
    move-object v1, v5

    .line 178
    goto/16 :goto_8

    .line 179
    .line 180
    :cond_0
    :try_start_8
    const-string v18, "DATA"

    .line 181
    .line 182
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    .line 183
    .line 184
    .line 185
    move-result-object v18

    .line 186
    invoke-static {v15}, Lif/a;->W(I)[B

    .line 187
    .line 188
    .line 189
    move-result-object v19

    .line 190
    new-array v4, v1, [[B

    .line 191
    .line 192
    aput-object v18, v4, v3

    .line 193
    .line 194
    aput-object v19, v4, v2

    .line 195
    .line 196
    invoke-static {v4}, Lif/a;->n([[B)[B

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v8, v4}, Ly9/f;->J([B)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 201
    .line 202
    .line 203
    const/16 v4, 0xfa0

    .line 204
    .line 205
    if-ne v15, v4, :cond_1

    .line 206
    .line 207
    :try_start_9
    invoke-virtual {v8, v10}, Ly9/f;->J([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 208
    .line 209
    .line 210
    :goto_2
    move-object v1, v5

    .line 211
    goto :goto_3

    .line 212
    :cond_1
    :try_start_a
    new-array v1, v15, [B

    .line 213
    .line 214
    invoke-static {v10, v3, v1, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v8, v1}, Ly9/f;->J([B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :goto_3
    int-to-long v4, v15

    .line 222
    add-long/2addr v11, v4

    .line 223
    mul-long v16, v16, v11

    .line 224
    .line 225
    :try_start_b
    div-long v4, v16, v13

    .line 226
    .line 227
    long-to-int v5, v4

    .line 228
    if-eq v0, v5, :cond_2

    .line 229
    .line 230
    move v0, v5

    .line 231
    :cond_2
    move-object v5, v1

    .line 232
    const/4 v1, 0x2

    .line 233
    const/16 v4, 0xfa0

    .line 234
    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :catchall_2
    move-exception v0

    .line 238
    :goto_4
    move-object v4, v0

    .line 239
    goto :goto_5

    .line 240
    :catchall_3
    move-exception v0

    .line 241
    move-object v1, v5

    .line 242
    goto :goto_4

    .line 243
    :cond_3
    move-object v1, v5

    .line 244
    new-instance v0, Ljava/lang/Exception;

    .line 245
    .line 246
    const-string v4, "\u6b64\u6587\u4ef6\u7591\u662f\u635f\u574f"

    .line 247
    .line 248
    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 252
    :goto_5
    :try_start_c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 253
    .line 254
    .line 255
    goto :goto_7

    .line 256
    :catchall_4
    move-exception v0

    .line 257
    move-object v5, v0

    .line 258
    :try_start_d
    new-array v0, v2, [Ljava/lang/Class;

    .line 259
    .line 260
    aput-object v6, v0, v3

    .line 261
    .line 262
    invoke-virtual {v6, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    new-array v9, v2, [Ljava/lang/Object;

    .line 267
    .line 268
    aput-object v5, v9, v3

    .line 269
    .line 270
    invoke-virtual {v0, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 271
    .line 272
    .line 273
    goto :goto_7

    .line 274
    :goto_6
    move-object v4, v0

    .line 275
    goto :goto_8

    .line 276
    :catch_2
    :goto_7
    :try_start_e
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 277
    :catchall_5
    move-exception v0

    .line 278
    goto :goto_6

    .line 279
    :catchall_6
    move-exception v0

    .line 280
    move-object v1, v5

    .line 281
    goto :goto_6

    .line 282
    :goto_8
    :try_start_f
    invoke-virtual {v8}, Ly9/f;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 283
    .line 284
    .line 285
    goto :goto_9

    .line 286
    :catchall_7
    move-exception v0

    .line 287
    move-object v5, v0

    .line 288
    :try_start_10
    new-array v0, v2, [Ljava/lang/Class;

    .line 289
    .line 290
    aput-object v6, v0, v3

    .line 291
    .line 292
    invoke-virtual {v6, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    new-array v1, v2, [Ljava/lang/Object;

    .line 297
    .line 298
    aput-object v5, v1, v3

    .line 299
    .line 300
    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 301
    .line 302
    .line 303
    :catch_3
    :goto_9
    :try_start_11
    throw v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    .line 304
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 305
    .line 306
    .line 307
    new-instance v1, Ljava/lang/Exception;

    .line 308
    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string v3, "\u4f20\u8f93\u5931\u8d25\uff1a"

    .line 312
    .line 313
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-static {v0, v2}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    goto :goto_c

    .line 324
    :goto_b
    throw v1

    .line 325
    :goto_c
    goto :goto_b
.end method

.method public l(Ljava/lang/String;)Lfa/o;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lfa/p;->g()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lfa/p;->d:Ly9/f;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "\n"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ly9/f;->A(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "cp "

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const p1, 0x2dc6c0

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_0
    const-string v0, "\\cp "

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_6

    .line 46
    .line 47
    const-string v0, "cp -R \'"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const-string v0, "ls -lR "

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    const p1, 0x2dc6c2

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const-string v0, "pm install "

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const v1, 0x927c0

    .line 75
    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    :goto_0
    const p1, 0x927c0

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    const-string v0, "cmd package install"

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    const-string v0, "rm "

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_5

    .line 99
    .line 100
    const/16 p1, 0x3a98

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    const p1, 0xc350

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    goto :goto_3

    .line 109
    :cond_6
    :goto_1
    const p1, 0x2dc6c1

    .line 110
    .line 111
    .line 112
    :goto_2
    int-to-long v0, p1

    .line 113
    invoke-virtual {p0, v0, v1}, Lfa/p;->h(J)Lfa/o;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    monitor-exit p0

    .line 118
    return-object p1

    .line 119
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    goto :goto_5

    .line 121
    :goto_4
    throw p1

    .line 122
    :goto_5
    goto :goto_4
.end method

.method public m(Ljava/lang/String;)Lfa/o;
    .locals 2

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lfa/p;->g()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lfa/p;->d:Ly9/f;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v1, v0}, Ly9/f;->A(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "cp "

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const p1, 0x2dc6c0

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    const-string v0, "\\cp "

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_6

    .line 35
    .line 36
    const-string v0, "cp -R \'"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string v0, "ls -lR "

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    const p1, 0x2dc6c2

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const-string v0, "pm install "

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const v1, 0x927c0

    .line 64
    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    :goto_0
    const p1, 0x927c0

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    const-string v0, "cmd package install"

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    const-string v0, "rm "

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    const/16 p1, 0x3a98

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    const p1, 0xc350

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :catchall_0
    move-exception p1

    .line 97
    goto :goto_3

    .line 98
    :cond_6
    :goto_1
    const p1, 0x2dc6c1

    .line 99
    .line 100
    .line 101
    :goto_2
    int-to-long v0, p1

    .line 102
    invoke-virtual {p0, v0, v1}, Lfa/p;->i(J)Lfa/o;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    monitor-exit p0

    .line 107
    return-object p1

    .line 108
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    goto :goto_5

    .line 110
    :goto_4
    throw p1

    .line 111
    :goto_5
    goto :goto_4
.end method
