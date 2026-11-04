.class public final Lx9/n4;
.super Lc6/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    new-instance p1, Lh6/a;

    .line 2
    .line 3
    const p3, 0x7f0e0172

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, p3, p2}, Lh6/a;-><init>(ILandroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method public final z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lh6/a;

    .line 2
    .line 3
    check-cast p3, Lx9/w3;

    .line 4
    .line 5
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "\u5c55\u5f00"

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const v0, 0x7f0b0534

    .line 14
    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "\u6536\u8d77"

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const-string p2, ""

    .line 36
    .line 37
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 41
    .line 42
    const-string v0, "\u8bbe\u7f6e"

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    const v0, 0x7f0b04b5

    .line 49
    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    const p2, 0x7f0801f8

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :cond_2
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 62
    .line 63
    const-string v1, "\u673a\u578b"

    .line 64
    .line 65
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    const v1, 0x7f0801ff

    .line 70
    .line 71
    .line 72
    if-eqz p2, :cond_3

    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Lh6/a;->b(II)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_5

    .line 78
    .line 79
    :cond_3
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 80
    .line 81
    const-string v2, "\u53cd\u9988"

    .line 82
    .line 83
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_4

    .line 88
    .line 89
    const p2, 0x7f080126

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_5

    .line 96
    .line 97
    :cond_4
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 98
    .line 99
    const-string v2, "\u63d0\u6743"

    .line 100
    .line 101
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_5

    .line 106
    .line 107
    invoke-virtual {p1, v0, v1}, Lh6/a;->b(II)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_5

    .line 111
    .line 112
    :cond_5
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 113
    .line 114
    const-string v1, "\u641c\u7d22"

    .line 115
    .line 116
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-eqz p2, :cond_6

    .line 121
    .line 122
    const p2, 0x7f0801da

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_5

    .line 129
    .line 130
    :cond_6
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 131
    .line 132
    const-string v1, "\u4e92\u4f20"

    .line 133
    .line 134
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-eqz p2, :cond_7

    .line 139
    .line 140
    const p2, 0x7f0801f4

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_5

    .line 147
    .line 148
    :cond_7
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 149
    .line 150
    const-string v1, "\u65b0\u5efa"

    .line 151
    .line 152
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    if-eqz p2, :cond_8

    .line 157
    .line 158
    const p2, 0x7f08008c

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_5

    .line 165
    .line 166
    :cond_8
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 167
    .line 168
    const-string v1, "\u6839"

    .line 169
    .line 170
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_9

    .line 175
    .line 176
    const p2, 0x7f0801d2

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_5

    .line 183
    .line 184
    :cond_9
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 185
    .line 186
    const-string v1, "TF"

    .line 187
    .line 188
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    if-nez p2, :cond_16

    .line 193
    .line 194
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 195
    .line 196
    const-string v1, "\u5185\u90e8\u5b58\u50a8"

    .line 197
    .line 198
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    if-eqz p2, :cond_a

    .line 203
    .line 204
    goto/16 :goto_4

    .line 205
    .line 206
    :cond_a
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 207
    .line 208
    const-string v1, "\u62d4\u51faU\u76d8"

    .line 209
    .line 210
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    if-eqz p2, :cond_b

    .line 215
    .line 216
    const p2, 0x7f080242

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_5

    .line 223
    .line 224
    :cond_b
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 225
    .line 226
    const-string v1, "\u76d8"

    .line 227
    .line 228
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    if-eqz p2, :cond_c

    .line 233
    .line 234
    const p2, 0x7f08030b

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_5

    .line 241
    .line 242
    :cond_c
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 243
    .line 244
    const-string v1, "\u6279\u91cf"

    .line 245
    .line 246
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    if-eqz p2, :cond_d

    .line 251
    .line 252
    const p2, 0x7f0802a7

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_5

    .line 259
    .line 260
    :cond_d
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 261
    .line 262
    const-string v1, "\u6e05\u7406"

    .line 263
    .line 264
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result p2

    .line 268
    if-eqz p2, :cond_e

    .line 269
    .line 270
    const p2, 0x7f080230

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_5

    .line 277
    .line 278
    :cond_e
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 279
    .line 280
    const-string v1, "\u5220\u9664"

    .line 281
    .line 282
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    if-nez p2, :cond_15

    .line 287
    .line 288
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 289
    .line 290
    const-string v1, "\u7a7a\u76ee\u5f55"

    .line 291
    .line 292
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 293
    .line 294
    .line 295
    move-result p2

    .line 296
    if-eqz p2, :cond_f

    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_f
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 300
    .line 301
    const-string v1, "Down"

    .line 302
    .line 303
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 304
    .line 305
    .line 306
    move-result p2

    .line 307
    if-eqz p2, :cond_10

    .line 308
    .line 309
    const p2, 0x7f080251

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 313
    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_10
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 317
    .line 318
    const-string v1, "\u6536\u85cf"

    .line 319
    .line 320
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 321
    .line 322
    .line 323
    move-result p2

    .line 324
    if-eqz p2, :cond_11

    .line 325
    .line 326
    const p2, 0x7f080243

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 330
    .line 331
    .line 332
    goto :goto_5

    .line 333
    :cond_11
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 334
    .line 335
    const-string v1, "\u641c\u5bfb"

    .line 336
    .line 337
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 338
    .line 339
    .line 340
    move-result p2

    .line 341
    if-eqz p2, :cond_12

    .line 342
    .line 343
    const p2, 0x7f0802c5

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 347
    .line 348
    .line 349
    goto :goto_5

    .line 350
    :cond_12
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 351
    .line 352
    const-string v1, "\u626b\u63cf"

    .line 353
    .line 354
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 355
    .line 356
    .line 357
    move-result p2

    .line 358
    if-nez p2, :cond_14

    .line 359
    .line 360
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 361
    .line 362
    const-string v1, "\u5237\u65b0"

    .line 363
    .line 364
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 365
    .line 366
    .line 367
    move-result p2

    .line 368
    if-nez p2, :cond_14

    .line 369
    .line 370
    iget-object p2, p3, Lx9/w3;->a:Ljava/lang/String;

    .line 371
    .line 372
    const-string p3, "\u5168\u76d8"

    .line 373
    .line 374
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    move-result p2

    .line 378
    if-eqz p2, :cond_13

    .line 379
    .line 380
    goto :goto_2

    .line 381
    :cond_13
    const p2, 0x7f080132

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 385
    .line 386
    .line 387
    goto :goto_5

    .line 388
    :cond_14
    :goto_2
    const p2, 0x7f0802c4

    .line 389
    .line 390
    .line 391
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 392
    .line 393
    .line 394
    goto :goto_5

    .line 395
    :cond_15
    :goto_3
    const p2, 0x7f0800c4

    .line 396
    .line 397
    .line 398
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 399
    .line 400
    .line 401
    goto :goto_5

    .line 402
    :cond_16
    :goto_4
    const p2, 0x7f080201

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1, v0, p2}, Lh6/a;->b(II)V

    .line 406
    .line 407
    .line 408
    :goto_5
    return-void
.end method
