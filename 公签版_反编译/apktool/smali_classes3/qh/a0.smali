.class public final enum Lqh/a0;
.super Lqh/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "InTable"

    .line 2
    .line 3
    const/16 v1, 0x8

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
    .locals 9

    .line 1
    invoke-virtual {p1}, Lqh/r0;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Lqh/c;->h()Lph/l;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lph/l;->d:Lqh/f0;

    .line 12
    .line 13
    iget-object v0, v0, Lqh/f0;->c:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v1, Lqh/b0;->z:[Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v1}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p2, Lqh/c;->s:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p2, Lqh/c;->l:Lqh/c0;

    .line 29
    .line 30
    iput-object v0, p2, Lqh/c;->m:Lqh/c0;

    .line 31
    .line 32
    sget-object v0, Lqh/c0;->j:Lqh/d;

    .line 33
    .line 34
    iput-object v0, p2, Lqh/c;->l:Lqh/c0;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_0
    invoke-virtual {p1}, Lqh/r0;->b()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x1

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    check-cast p1, Lqh/k0;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Lqh/c;->v(Lqh/k0;)V

    .line 51
    .line 52
    .line 53
    return v1

    .line 54
    :cond_1
    invoke-virtual {p1}, Lqh/r0;->c()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v2, 0x0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 62
    .line 63
    .line 64
    return v2

    .line 65
    :cond_2
    invoke-virtual {p1}, Lqh/r0;->f()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    sget-object v3, Lqh/c0;->d:Lqh/v;

    .line 70
    .line 71
    const-string v4, "template"

    .line 72
    .line 73
    const-string v5, "table"

    .line 74
    .line 75
    if-eqz v0, :cond_12

    .line 76
    .line 77
    move-object v0, p1

    .line 78
    check-cast v0, Lqh/o0;

    .line 79
    .line 80
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    const-string v7, "caption"

    .line 85
    .line 86
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_3

    .line 91
    .line 92
    invoke-virtual {p2}, Lqh/c;->e()V

    .line 93
    .line 94
    .line 95
    iget-object p1, p2, Lqh/c;->q:Ljava/util/ArrayList;

    .line 96
    .line 97
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v0}, Lqh/c;->w(Lqh/o0;)Lph/l;

    .line 102
    .line 103
    .line 104
    sget-object p1, Lqh/c0;->k:Lqh/e;

    .line 105
    .line 106
    iput-object p1, p2, Lqh/c;->l:Lqh/c0;

    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :cond_3
    const-string v7, "colgroup"

    .line 111
    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-eqz v8, :cond_4

    .line 117
    .line 118
    invoke-virtual {p2}, Lqh/c;->e()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v0}, Lqh/c;->w(Lqh/o0;)Lph/l;

    .line 122
    .line 123
    .line 124
    sget-object p1, Lqh/c0;->l:Lqh/f;

    .line 125
    .line 126
    iput-object p1, p2, Lqh/c;->l:Lqh/c0;

    .line 127
    .line 128
    goto/16 :goto_1

    .line 129
    .line 130
    :cond_4
    const-string v8, "col"

    .line 131
    .line 132
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    if-eqz v8, :cond_5

    .line 137
    .line 138
    invoke-virtual {p2}, Lqh/c;->e()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, v7}, Lqh/c;->J(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    return p1

    .line 149
    :cond_5
    sget-object v7, Lqh/b0;->r:[Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v6, v7}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-eqz v7, :cond_6

    .line 156
    .line 157
    invoke-virtual {p2}, Lqh/c;->e()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, v0}, Lqh/c;->w(Lqh/o0;)Lph/l;

    .line 161
    .line 162
    .line 163
    sget-object p1, Lqh/c0;->m:Lqh/g;

    .line 164
    .line 165
    iput-object p1, p2, Lqh/c;->l:Lqh/c0;

    .line 166
    .line 167
    goto/16 :goto_1

    .line 168
    .line 169
    :cond_6
    sget-object v7, Lqh/b0;->s:[Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v6, v7}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-eqz v7, :cond_7

    .line 176
    .line 177
    invoke-virtual {p2}, Lqh/c;->e()V

    .line 178
    .line 179
    .line 180
    const-string v0, "tbody"

    .line 181
    .line 182
    invoke-virtual {p2, v0}, Lqh/c;->J(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    return p1

    .line 190
    :cond_7
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-eqz v5, :cond_a

    .line 195
    .line 196
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2, v6}, Lqh/c;->s(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-nez v3, :cond_8

    .line 204
    .line 205
    return v2

    .line 206
    :cond_8
    invoke-virtual {p2, v6}, Lqh/c;->F(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2}, Lqh/c;->P()Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-nez v2, :cond_9

    .line 214
    .line 215
    invoke-virtual {p2, v0}, Lqh/c;->w(Lqh/o0;)Lph/l;

    .line 216
    .line 217
    .line 218
    return v1

    .line 219
    :cond_9
    invoke-virtual {p2, p1}, Lqh/c;->H(Lqh/r0;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    return p1

    .line 224
    :cond_a
    sget-object v5, Lqh/b0;->t:[Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {v6, v5}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-eqz v5, :cond_b

    .line 231
    .line 232
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3, p1, p2}, Lqh/v;->d(Lqh/r0;Lqh/c;)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    return p1

    .line 240
    :cond_b
    const-string v3, "input"

    .line 241
    .line 242
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_e

    .line 247
    .line 248
    iget-object v2, v0, Lqh/p0;->g:Lph/c;

    .line 249
    .line 250
    if-eqz v2, :cond_d

    .line 251
    .line 252
    const-string v3, "type"

    .line 253
    .line 254
    invoke-virtual {v2, v3}, Lph/c;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    const-string v3, "hidden"

    .line 259
    .line 260
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-nez v2, :cond_c

    .line 265
    .line 266
    goto :goto_0

    .line 267
    :cond_c
    invoke-virtual {p2, v0}, Lqh/c;->x(Lqh/o0;)Lph/l;

    .line 268
    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_d
    :goto_0
    invoke-virtual {p0, p1, p2}, Lqh/a0;->f(Lqh/r0;Lqh/c;)V

    .line 272
    .line 273
    .line 274
    return v1

    .line 275
    :cond_e
    const-string v3, "form"

    .line 276
    .line 277
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-eqz v3, :cond_11

    .line 282
    .line 283
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 284
    .line 285
    .line 286
    iget-object p1, p2, Lqh/c;->p:Lph/o;

    .line 287
    .line 288
    if-nez p1, :cond_10

    .line 289
    .line 290
    invoke-virtual {p2, v4}, Lqh/c;->B(Ljava/lang/String;)Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-eqz p1, :cond_f

    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_f
    invoke-virtual {p2, v0, v2, v2}, Lqh/c;->z(Lqh/o0;ZZ)V

    .line 298
    .line 299
    .line 300
    :goto_1
    return v1

    .line 301
    :cond_10
    :goto_2
    return v2

    .line 302
    :cond_11
    invoke-virtual {p0, p1, p2}, Lqh/a0;->f(Lqh/r0;Lqh/c;)V

    .line 303
    .line 304
    .line 305
    return v1

    .line 306
    :cond_12
    invoke-virtual {p1}, Lqh/r0;->e()Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-eqz v0, :cond_17

    .line 311
    .line 312
    move-object v0, p1

    .line 313
    check-cast v0, Lqh/n0;

    .line 314
    .line 315
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    if-eqz v6, :cond_14

    .line 324
    .line 325
    invoke-virtual {p2, v0}, Lqh/c;->s(Ljava/lang/String;)Z

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    if-nez p1, :cond_13

    .line 330
    .line 331
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 332
    .line 333
    .line 334
    return v2

    .line 335
    :cond_13
    invoke-virtual {p2, v5}, Lqh/c;->F(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p2}, Lqh/c;->P()Z

    .line 339
    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_14
    sget-object v5, Lqh/b0;->y:[Ljava/lang/String;

    .line 343
    .line 344
    invoke-static {v0, v5}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    if-eqz v5, :cond_15

    .line 349
    .line 350
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 351
    .line 352
    .line 353
    return v2

    .line 354
    :cond_15
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-eqz v0, :cond_16

    .line 359
    .line 360
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v3, p1, p2}, Lqh/v;->d(Lqh/r0;Lqh/c;)Z

    .line 364
    .line 365
    .line 366
    :goto_3
    return v1

    .line 367
    :cond_16
    invoke-virtual {p0, p1, p2}, Lqh/a0;->f(Lqh/r0;Lqh/c;)V

    .line 368
    .line 369
    .line 370
    return v1

    .line 371
    :cond_17
    invoke-virtual {p1}, Lqh/r0;->d()Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_19

    .line 376
    .line 377
    const-string p1, "html"

    .line 378
    .line 379
    invoke-virtual {p2, p1}, Lqh/c;->i(Ljava/lang/String;)Z

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    if-eqz p1, :cond_18

    .line 384
    .line 385
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 386
    .line 387
    .line 388
    :cond_18
    return v1

    .line 389
    :cond_19
    invoke-virtual {p0, p1, p2}, Lqh/a0;->f(Lqh/r0;Lqh/c;)V

    .line 390
    .line 391
    .line 392
    return v1
.end method

.method public final f(Lqh/r0;Lqh/c;)V
    .locals 1

    .line 1
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p2, Lqh/c;->v:Z

    .line 6
    .line 7
    sget-object v0, Lqh/c0;->g:Lqh/y;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lqh/y;->d(Lqh/r0;Lqh/c;)Z

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p2, Lqh/c;->v:Z

    .line 14
    .line 15
    return-void
.end method
