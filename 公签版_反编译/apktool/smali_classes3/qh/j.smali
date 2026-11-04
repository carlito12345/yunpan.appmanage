.class public final enum Lqh/j;
.super Lqh/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "InSelect"

    .line 2
    .line 3
    const/16 v1, 0xf

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
    .locals 12

    .line 1
    const-string v0, "select"

    .line 2
    .line 3
    const-string v1, "template"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    const-string v4, "option"

    .line 8
    .line 9
    const-string v5, "optgroup"

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    iget v8, p1, Lqh/r0;->a:I

    .line 14
    .line 15
    invoke-static {v8}, Ld0/f;->c(I)I

    .line 16
    .line 17
    .line 18
    move-result v8

    .line 19
    if-eqz v8, :cond_1a

    .line 20
    .line 21
    sget-object v9, Lqh/c0;->d:Lqh/v;

    .line 22
    .line 23
    const-string v10, "html"

    .line 24
    .line 25
    if-eq v8, v6, :cond_d

    .line 26
    .line 27
    if-eq v8, v3, :cond_4

    .line 28
    .line 29
    if-eq v8, v2, :cond_3

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    if-eq v8, v0, :cond_1

    .line 33
    .line 34
    const/4 p1, 0x6

    .line 35
    if-eq v8, p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 38
    .line 39
    .line 40
    return v7

    .line 41
    :cond_0
    invoke-virtual {p2, v10}, Lqh/c;->i(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_13

    .line 46
    .line 47
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_1
    check-cast p1, Lqh/j0;

    .line 53
    .line 54
    iget-object v0, p1, Lqh/j0;->d:Lkf/d;

    .line 55
    .line 56
    invoke-virtual {v0}, Lkf/d;->R()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v1, Lqh/c0;->A:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 69
    .line 70
    .line 71
    return v7

    .line 72
    :cond_2
    invoke-virtual {p2, p1}, Lqh/c;->t(Lqh/j0;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_3
    check-cast p1, Lqh/k0;

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Lqh/c;->v(Lqh/k0;)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_2

    .line 83
    .line 84
    :cond_4
    move-object v8, p1

    .line 85
    check-cast v8, Lqh/n0;

    .line 86
    .line 87
    invoke-virtual {v8}, Lqh/p0;->m()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    const/4 v10, -0x1

    .line 95
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    sparse-switch v11, :sswitch_data_0

    .line 100
    .line 101
    .line 102
    :goto_0
    const/4 v2, -0x1

    .line 103
    goto :goto_1

    .line 104
    :sswitch_0
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_8

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :sswitch_1
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_5

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    const/4 v2, 0x2

    .line 119
    goto :goto_1

    .line 120
    :sswitch_2
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_6

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_6
    const/4 v2, 0x1

    .line 128
    goto :goto_1

    .line 129
    :sswitch_3
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_7

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_7
    const/4 v2, 0x0

    .line 137
    :cond_8
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 141
    .line 142
    .line 143
    return v7

    .line 144
    :pswitch_0
    invoke-virtual {p2, v4}, Lqh/c;->i(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_9

    .line 149
    .line 150
    invoke-virtual {p2}, Lqh/c;->h()Lph/l;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p2, p1}, Lqh/c;->a(Lph/l;)Lph/l;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-eqz p1, :cond_9

    .line 159
    .line 160
    invoke-virtual {p2}, Lqh/c;->h()Lph/l;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p2, p1}, Lqh/c;->a(Lph/l;)Lph/l;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1, v5}, Lph/q;->l(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_9

    .line 173
    .line 174
    invoke-virtual {p2, v4}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    :cond_9
    invoke-virtual {p2, v5}, Lqh/c;->i(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_a

    .line 182
    .line 183
    invoke-virtual {p2}, Lqh/c;->E()Lph/l;

    .line 184
    .line 185
    .line 186
    goto/16 :goto_2

    .line 187
    .line 188
    :cond_a
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :pswitch_1
    invoke-virtual {p2, v8}, Lqh/c;->q(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-nez p1, :cond_b

    .line 197
    .line 198
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 199
    .line 200
    .line 201
    return v7

    .line 202
    :cond_b
    invoke-virtual {p2, v8}, Lqh/c;->F(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2}, Lqh/c;->P()Z

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :pswitch_2
    invoke-virtual {p2, v4}, Lqh/c;->i(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-eqz p1, :cond_c

    .line 214
    .line 215
    invoke-virtual {p2}, Lqh/c;->E()Lph/l;

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_c
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :pswitch_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v9, p1, p2}, Lqh/v;->d(Lqh/r0;Lqh/c;)Z

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    return p1

    .line 231
    :cond_d
    move-object v2, p1

    .line 232
    check-cast v2, Lqh/o0;

    .line 233
    .line 234
    invoke-virtual {v2}, Lqh/p0;->m()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    if-eqz v8, :cond_e

    .line 243
    .line 244
    sget-object p1, Lqh/c0;->g:Lqh/y;

    .line 245
    .line 246
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v2, p2}, Lqh/y;->d(Lqh/r0;Lqh/c;)Z

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    return p1

    .line 254
    :cond_e
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    if-eqz v8, :cond_10

    .line 259
    .line 260
    invoke-virtual {p2, v4}, Lqh/c;->i(Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-eqz p1, :cond_f

    .line 265
    .line 266
    invoke-virtual {p2, v4}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    :cond_f
    invoke-virtual {p2, v2}, Lqh/c;->w(Lqh/o0;)Lph/l;

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_10
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v8

    .line 277
    if-eqz v8, :cond_14

    .line 278
    .line 279
    invoke-virtual {p2, v4}, Lqh/c;->i(Ljava/lang/String;)Z

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    if-eqz p1, :cond_11

    .line 284
    .line 285
    invoke-virtual {p2, v4}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    :cond_11
    invoke-virtual {p2, v5}, Lqh/c;->i(Ljava/lang/String;)Z

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    if-eqz p1, :cond_12

    .line 293
    .line 294
    invoke-virtual {p2, v5}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    :cond_12
    invoke-virtual {p2, v2}, Lqh/c;->w(Lqh/o0;)Lph/l;

    .line 298
    .line 299
    .line 300
    :cond_13
    :goto_2
    return v6

    .line 301
    :cond_14
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    if-eqz v4, :cond_15

    .line 306
    .line 307
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p2, v0}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    return p1

    .line 315
    :cond_15
    sget-object v4, Lqh/b0;->E:[Ljava/lang/String;

    .line 316
    .line 317
    invoke-static {v3, v4}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    if-eqz v4, :cond_17

    .line 322
    .line 323
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p2, v0}, Lqh/c;->q(Ljava/lang/String;)Z

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    if-nez p1, :cond_16

    .line 331
    .line 332
    return v7

    .line 333
    :cond_16
    invoke-virtual {p2, v0}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 334
    .line 335
    .line 336
    invoke-virtual {p2, v2}, Lqh/c;->H(Lqh/r0;)Z

    .line 337
    .line 338
    .line 339
    move-result p1

    .line 340
    return p1

    .line 341
    :cond_17
    const-string v0, "script"

    .line 342
    .line 343
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-nez v0, :cond_19

    .line 348
    .line 349
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eqz v0, :cond_18

    .line 354
    .line 355
    goto :goto_3

    .line 356
    :cond_18
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 357
    .line 358
    .line 359
    return v7

    .line 360
    :cond_19
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v9, p1, p2}, Lqh/v;->d(Lqh/r0;Lqh/c;)Z

    .line 364
    .line 365
    .line 366
    move-result p1

    .line 367
    return p1

    .line 368
    :cond_1a
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 369
    .line 370
    .line 371
    return v7

    .line 372
    nop

    .line 373
    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_3
        -0x3c35778b -> :sswitch_2
        -0x3600cb04 -> :sswitch_1
        -0x4d08054 -> :sswitch_0
    .end sparse-switch

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
