.class public final enum Lqh/s;
.super Lqh/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "ForeignContent"

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lqh/c0;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lqh/r0;Lqh/c;)Z
    .locals 7

    .line 1
    iget v0, p1, Lqh/r0;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ld0/f;->c(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_15

    .line 9
    .line 10
    const-string v2, "script"

    .line 11
    .line 12
    if-eq v0, v1, :cond_f

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq v0, v3, :cond_5

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    if-eq v0, v2, :cond_4

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    const/4 p2, 0x6

    .line 24
    if-ne v0, p2, :cond_0

    .line 25
    .line 26
    goto/16 :goto_6

    .line 27
    .line 28
    :cond_0
    iget p1, p1, Lqh/r0;->a:I

    .line 29
    .line 30
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/digest/a;->x(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string p2, "Unexpected state: "

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p2

    .line 46
    :cond_1
    check-cast p1, Lqh/j0;

    .line 47
    .line 48
    iget-object v0, p1, Lqh/j0;->d:Lkf/d;

    .line 49
    .line 50
    invoke-virtual {v0}, Lkf/d;->R()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v2, Lqh/c0;->A:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :cond_2
    invoke-static {p1}, Lqh/c0;->a(Lqh/r0;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Lqh/c;->t(Lqh/j0;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_6

    .line 77
    .line 78
    :cond_3
    invoke-virtual {p2, p1}, Lqh/c;->t(Lqh/j0;)V

    .line 79
    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p2, Lqh/c;->u:Z

    .line 83
    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :cond_4
    check-cast p1, Lqh/k0;

    .line 87
    .line 88
    invoke-virtual {p2, p1}, Lqh/c;->v(Lqh/k0;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_6

    .line 92
    .line 93
    :cond_5
    move-object v0, p1

    .line 94
    check-cast v0, Lqh/n0;

    .line 95
    .line 96
    iget-object v3, v0, Lqh/p0;->e:Ljava/lang/String;

    .line 97
    .line 98
    const-string v4, "br"

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_e

    .line 105
    .line 106
    iget-object v3, v0, Lqh/p0;->e:Ljava/lang/String;

    .line 107
    .line 108
    const-string v4, "p"

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_6

    .line 115
    .line 116
    goto/16 :goto_3

    .line 117
    .line 118
    :cond_6
    iget-object v3, v0, Lqh/p0;->e:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_8

    .line 125
    .line 126
    iget-object v3, p2, Lqh/c;->e:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_7

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_7
    invoke-virtual {p2}, Lqh/c;->h()Lph/l;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    if-eqz v3, :cond_8

    .line 140
    .line 141
    iget-object v3, v3, Lph/l;->d:Lqh/f0;

    .line 142
    .line 143
    iget-object v4, v3, Lqh/f0;->c:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_8

    .line 150
    .line 151
    iget-object v2, v3, Lqh/f0;->a:Ljava/lang/String;

    .line 152
    .line 153
    const-string v3, "http://www.w3.org/2000/svg"

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_8

    .line 160
    .line 161
    invoke-virtual {p2}, Lqh/c;->E()Lph/l;

    .line 162
    .line 163
    .line 164
    return v1

    .line 165
    :cond_8
    :goto_0
    iget-object v2, p2, Lqh/c;->e:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-nez v3, :cond_d

    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    sub-int/2addr v3, v1

    .line 178
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    check-cast v4, Lph/l;

    .line 183
    .line 184
    iget-object v5, v0, Lqh/p0;->e:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v4, v5}, Lph/q;->l(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-nez v5, :cond_9

    .line 191
    .line 192
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 193
    .line 194
    .line 195
    :cond_9
    if-eqz v3, :cond_16

    .line 196
    .line 197
    iget-object v5, v0, Lqh/p0;->e:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v4, v5}, Lph/q;->l(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    if-eqz v5, :cond_c

    .line 204
    .line 205
    iget-object p1, v4, Lph/l;->d:Lqh/f0;

    .line 206
    .line 207
    iget-object p1, p1, Lqh/f0;->c:Ljava/lang/String;

    .line 208
    .line 209
    iget-object v0, p2, Lqh/c;->e:Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    sub-int/2addr v0, v1

    .line 216
    :goto_1
    if-ltz v0, :cond_b

    .line 217
    .line 218
    invoke-virtual {p2}, Lqh/c;->E()Lph/l;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v2, p1}, Lph/q;->l(Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_a

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_a
    add-int/lit8 v0, v0, -0x1

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_b
    :goto_2
    return v1

    .line 233
    :cond_c
    add-int/lit8 v3, v3, -0x1

    .line 234
    .line 235
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    check-cast v4, Lph/l;

    .line 240
    .line 241
    iget-object v5, v4, Lph/l;->d:Lqh/f0;

    .line 242
    .line 243
    iget-object v5, v5, Lqh/f0;->a:Ljava/lang/String;

    .line 244
    .line 245
    const-string v6, "http://www.w3.org/1999/xhtml"

    .line 246
    .line 247
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    if-eqz v5, :cond_9

    .line 252
    .line 253
    iget-object v0, p2, Lqh/c;->l:Lqh/c0;

    .line 254
    .line 255
    invoke-virtual {v0, p1, p2}, Lqh/c0;->d(Lqh/r0;Lqh/c;)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    return p1

    .line 260
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 261
    .line 262
    const-string p2, "Stack unexpectedly empty"

    .line 263
    .line 264
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw p1

    .line 268
    :cond_e
    :goto_3
    iget-object v0, p2, Lqh/c;->l:Lqh/c0;

    .line 269
    .line 270
    invoke-virtual {v0, p1, p2}, Lqh/c0;->d(Lqh/r0;Lqh/c;)Z

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    return p1

    .line 275
    :cond_f
    move-object v0, p1

    .line 276
    check-cast v0, Lqh/o0;

    .line 277
    .line 278
    iget-object v3, v0, Lqh/p0;->e:Ljava/lang/String;

    .line 279
    .line 280
    sget-object v4, Lqh/b0;->L:[Ljava/lang/String;

    .line 281
    .line 282
    invoke-static {v3, v4}, Loh/f;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    if-eqz v3, :cond_10

    .line 287
    .line 288
    iget-object v0, p2, Lqh/c;->l:Lqh/c0;

    .line 289
    .line 290
    invoke-virtual {v0, p1, p2}, Lqh/c0;->d(Lqh/r0;Lqh/c;)Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    return p1

    .line 295
    :cond_10
    iget-object v3, v0, Lqh/p0;->e:Ljava/lang/String;

    .line 296
    .line 297
    const-string v4, "font"

    .line 298
    .line 299
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    if-eqz v3, :cond_13

    .line 304
    .line 305
    iget-object v3, v0, Lqh/p0;->g:Lph/c;

    .line 306
    .line 307
    const/4 v4, -0x1

    .line 308
    if-eqz v3, :cond_11

    .line 309
    .line 310
    const-string v5, "color"

    .line 311
    .line 312
    invoke-virtual {v3, v5}, Lph/c;->h(Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-eq v3, v4, :cond_11

    .line 317
    .line 318
    goto :goto_4

    .line 319
    :cond_11
    iget-object v3, v0, Lqh/p0;->g:Lph/c;

    .line 320
    .line 321
    if-eqz v3, :cond_12

    .line 322
    .line 323
    const-string v5, "face"

    .line 324
    .line 325
    invoke-virtual {v3, v5}, Lph/c;->h(Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    if-eq v3, v4, :cond_12

    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_12
    iget-object v3, v0, Lqh/p0;->g:Lph/c;

    .line 333
    .line 334
    if-eqz v3, :cond_13

    .line 335
    .line 336
    const-string v5, "size"

    .line 337
    .line 338
    invoke-virtual {v3, v5}, Lph/c;->h(Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    if-eq v3, v4, :cond_13

    .line 343
    .line 344
    :goto_4
    iget-object v0, p2, Lqh/c;->l:Lqh/c0;

    .line 345
    .line 346
    invoke-virtual {v0, p1, p2}, Lqh/c0;->d(Lqh/r0;Lqh/c;)Z

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    return p1

    .line 351
    :cond_13
    invoke-virtual {p2}, Lqh/c;->h()Lph/l;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    iget-object p1, p1, Lph/l;->d:Lqh/f0;

    .line 356
    .line 357
    iget-object p1, p1, Lqh/f0;->a:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {p2, v0, p1}, Lqh/c;->y(Lqh/o0;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iget-object v3, v0, Lqh/p0;->d:Lkf/d;

    .line 363
    .line 364
    invoke-virtual {v3}, Lkf/d;->R()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    iget-object v4, v0, Lqh/p0;->e:Ljava/lang/String;

    .line 369
    .line 370
    iget-object v5, p2, Lqh/c;->h:Lqh/d0;

    .line 371
    .line 372
    iget-object v6, p2, Lqh/c;->i:Lqh/h0;

    .line 373
    .line 374
    iget-boolean v5, v5, Lqh/d0;->a:Z

    .line 375
    .line 376
    invoke-virtual {v6, v3, v4, p1, v5}, Lqh/h0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lqh/f0;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    invoke-virtual {p1}, Lqh/f0;->f()Lqh/k3;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    if-eqz p1, :cond_16

    .line 385
    .line 386
    iget-object v0, v0, Lqh/p0;->e:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_14

    .line 393
    .line 394
    iget-object p1, p2, Lqh/c;->c:Lqh/t0;

    .line 395
    .line 396
    sget-object v0, Lqh/k3;->f:Lqh/g3;

    .line 397
    .line 398
    invoke-virtual {p1, v0}, Lqh/t0;->o(Lqh/k3;)V

    .line 399
    .line 400
    .line 401
    goto :goto_5

    .line 402
    :cond_14
    iget-object v0, p2, Lqh/c;->c:Lqh/t0;

    .line 403
    .line 404
    invoke-virtual {v0, p1}, Lqh/t0;->o(Lqh/k3;)V

    .line 405
    .line 406
    .line 407
    :goto_5
    iget-object p1, p2, Lqh/c;->l:Lqh/c0;

    .line 408
    .line 409
    iput-object p1, p2, Lqh/c;->m:Lqh/c0;

    .line 410
    .line 411
    sget-object p1, Lqh/c0;->h:Lqh/z;

    .line 412
    .line 413
    iput-object p1, p2, Lqh/c;->l:Lqh/c0;

    .line 414
    .line 415
    goto :goto_6

    .line 416
    :cond_15
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 417
    .line 418
    .line 419
    :cond_16
    :goto_6
    return v1
.end method
