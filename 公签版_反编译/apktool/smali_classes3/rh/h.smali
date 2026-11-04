.class public final Lrh/h;
.super Lrh/p;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    iput p2, p0, Lrh/h;->a:I

    packed-switch p2, :pswitch_data_0

    .line 2
    invoke-direct {p0}, Lrh/p;-><init>()V

    .line 3
    invoke-static {p1}, Lnh/b;->d0(Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Loh/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lrh/h;->b:Ljava/lang/String;

    return-void

    .line 5
    :pswitch_0
    invoke-direct {p0}, Lrh/p;-><init>()V

    .line 6
    invoke-static {}, Loh/f;->b()Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v0, 0x0

    .line 7
    invoke-static {p2, p1, v0}, Loh/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 8
    invoke-static {p2}, Loh/f;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Loh/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lrh/h;->b:Ljava/lang/String;

    return-void

    .line 10
    :pswitch_1
    invoke-direct {p0}, Lrh/p;-><init>()V

    .line 11
    invoke-static {}, Loh/f;->b()Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v0, 0x0

    .line 12
    invoke-static {p2, p1, v0}, Loh/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 13
    invoke-static {p2}, Loh/f;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Loh/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lrh/h;->b:Ljava/lang/String;

    return-void

    .line 15
    :pswitch_2
    invoke-direct {p0}, Lrh/p;-><init>()V

    .line 16
    invoke-static {p1}, Loh/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lrh/h;->b:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    iput p2, p0, Lrh/h;->a:I

    invoke-direct {p0}, Lrh/p;-><init>()V

    iput-object p1, p0, Lrh/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lrh/h;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0}, Lrh/p;->a()I

    move-result v0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/16 v0, 0xa

    return v0

    :pswitch_4
    const/16 v0, 0xa

    return v0

    :pswitch_5
    const/16 v0, 0x8

    return v0

    :pswitch_6
    const/4 v0, 0x6

    return v0

    :pswitch_7
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Lph/l;Lph/l;)Z
    .locals 12

    .line 1
    iget p1, p0, Lrh/h;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p2, Lph/l;->d:Lqh/f0;

    .line 7
    .line 8
    iget-object p1, p1, Lqh/f0;->c:Ljava/lang/String;

    .line 9
    .line 10
    iget-object p2, p0, Lrh/h;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :pswitch_0
    iget-object p1, p2, Lph/l;->d:Lqh/f0;

    .line 18
    .line 19
    iget-object p1, p1, Lqh/f0;->c:Ljava/lang/String;

    .line 20
    .line 21
    iget-object p2, p0, Lrh/h;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :pswitch_1
    iget-object p1, p0, Lrh/h;->b:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Lph/q;->l(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :pswitch_2
    iget-object p1, p2, Lph/l;->f:Lph/c;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    const-string p2, "id"

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lph/c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string p1, ""

    .line 47
    .line 48
    :goto_0
    iget-object p2, p0, Lrh/h;->b:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    return p1

    .line 55
    :pswitch_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    const-class p1, Lph/q;

    .line 59
    .line 60
    invoke-static {p2, p1}, Lq4/a;->b0(Lph/q;Ljava/lang/Class;)Lj$/util/stream/Stream;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance p2, La2/n;

    .line 65
    .line 66
    const/4 v0, 0x6

    .line 67
    invoke-direct {p2, v0}, La2/n;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string p2, ""

    .line 75
    .line 76
    invoke-static {p2}, Loh/f;->k(Ljava/lang/String;)Lj$/util/stream/Collector;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Ljava/lang/String;

    .line 85
    .line 86
    iget-object p2, p0, Lrh/h;->b:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    return p1

    .line 93
    :pswitch_4
    iget-object p1, p2, Lph/l;->e:Lph/k;

    .line 94
    .line 95
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance p2, La2/n;

    .line 100
    .line 101
    const/4 v0, 0x6

    .line 102
    invoke-direct {p2, v0}, La2/n;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string p2, ""

    .line 110
    .line 111
    invoke-static {p2}, Loh/f;->k(Ljava/lang/String;)Lj$/util/stream/Collector;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Ljava/lang/String;

    .line 120
    .line 121
    iget-object p2, p0, Lrh/h;->b:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    return p1

    .line 128
    :pswitch_5
    invoke-virtual {p2}, Lph/l;->M()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {p1}, Loh/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-object p2, p0, Lrh/h;->b:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    return p1

    .line 143
    :pswitch_6
    invoke-virtual {p2}, Lph/l;->K()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p1}, Loh/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget-object p2, p0, Lrh/h;->b:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    return p1

    .line 158
    :pswitch_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-static {}, Loh/f;->b()Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    new-instance v0, Lph/j;

    .line 166
    .line 167
    const/4 v1, 0x0

    .line 168
    invoke-direct {v0, v1, p1}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v0, p2}, Lorg/bouncycastle/jcajce/provider/digest/a;->a(Lrh/u;Lph/q;)V

    .line 172
    .line 173
    .line 174
    invoke-static {p1}, Loh/f;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {p1}, Loh/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object p2, p0, Lrh/h;->b:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    return p1

    .line 189
    :pswitch_8
    iget-object p1, p2, Lph/l;->f:Lph/c;

    .line 190
    .line 191
    const/4 p2, 0x0

    .line 192
    if-nez p1, :cond_1

    .line 193
    .line 194
    goto/16 :goto_3

    .line 195
    .line 196
    :cond_1
    const-string v0, "class"

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Lph/c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    iget-object v7, p0, Lrh/h;->b:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 209
    .line 210
    .line 211
    move-result v8

    .line 212
    if-eqz v0, :cond_8

    .line 213
    .line 214
    if-ge v0, v8, :cond_2

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_2
    if-ne v0, v8, :cond_3

    .line 218
    .line 219
    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result p2

    .line 223
    goto :goto_3

    .line 224
    :cond_3
    const/4 v1, 0x0

    .line 225
    const/4 v9, 0x0

    .line 226
    const/4 v10, 0x0

    .line 227
    :goto_1
    if-ge v10, v0, :cond_7

    .line 228
    .line 229
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    const/4 v11, 0x1

    .line 238
    if-eqz v2, :cond_5

    .line 239
    .line 240
    if-eqz v1, :cond_6

    .line 241
    .line 242
    sub-int v1, v10, v9

    .line 243
    .line 244
    if-ne v1, v8, :cond_4

    .line 245
    .line 246
    const/4 v2, 0x1

    .line 247
    const/4 v5, 0x0

    .line 248
    move-object v1, p1

    .line 249
    move v3, v9

    .line 250
    move-object v4, v7

    .line 251
    move v6, v8

    .line 252
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_4

    .line 257
    .line 258
    const/4 p2, 0x1

    .line 259
    goto :goto_3

    .line 260
    :cond_4
    const/4 v1, 0x0

    .line 261
    goto :goto_2

    .line 262
    :cond_5
    if-nez v1, :cond_6

    .line 263
    .line 264
    move v9, v10

    .line 265
    const/4 v1, 0x1

    .line 266
    :cond_6
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_7
    if-eqz v1, :cond_8

    .line 270
    .line 271
    sub-int/2addr v0, v9

    .line 272
    if-ne v0, v8, :cond_8

    .line 273
    .line 274
    const/4 v2, 0x1

    .line 275
    const/4 v5, 0x0

    .line 276
    move-object v1, p1

    .line 277
    move v3, v9

    .line 278
    move-object v4, v7

    .line 279
    move v6, v8

    .line 280
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 281
    .line 282
    .line 283
    move-result p2

    .line 284
    :cond_8
    :goto_3
    return p2

    .line 285
    :pswitch_9
    invoke-virtual {p2}, Lph/l;->c()Lph/c;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    new-instance p2, Ljava/util/ArrayList;

    .line 293
    .line 294
    iget v0, p1, Lph/c;->a:I

    .line 295
    .line 296
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    .line 298
    .line 299
    const/4 v0, 0x0

    .line 300
    const/4 v1, 0x0

    .line 301
    :goto_4
    iget v2, p1, Lph/c;->a:I

    .line 302
    .line 303
    if-ge v1, v2, :cond_a

    .line 304
    .line 305
    iget-object v2, p1, Lph/c;->b:[Ljava/lang/String;

    .line 306
    .line 307
    aget-object v2, v2, v1

    .line 308
    .line 309
    invoke-static {v2}, Lph/c;->i(Ljava/lang/String;)Z

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    if-eqz v3, :cond_9

    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_9
    new-instance v3, Lph/a;

    .line 317
    .line 318
    iget-object v4, p1, Lph/c;->c:[Ljava/lang/Object;

    .line 319
    .line 320
    aget-object v4, v4, v1

    .line 321
    .line 322
    check-cast v4, Ljava/lang/String;

    .line 323
    .line 324
    invoke-direct {v3, v2, v4, p1}, Lph/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lph/c;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 331
    .line 332
    goto :goto_4

    .line 333
    :cond_a
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result p2

    .line 345
    if-eqz p2, :cond_c

    .line 346
    .line 347
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object p2

    .line 351
    check-cast p2, Lph/a;

    .line 352
    .line 353
    iget-object p2, p2, Lph/a;->a:Ljava/lang/String;

    .line 354
    .line 355
    invoke-static {p2}, Loh/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p2

    .line 359
    iget-object v1, p0, Lrh/h;->b:Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 362
    .line 363
    .line 364
    move-result p2

    .line 365
    if-eqz p2, :cond_b

    .line 366
    .line 367
    const/4 v0, 0x1

    .line 368
    :cond_c
    return v0

    .line 369
    :pswitch_a
    iget-object p1, p0, Lrh/h;->b:Ljava/lang/String;

    .line 370
    .line 371
    invoke-virtual {p2, p1}, Lph/q;->j(Ljava/lang/String;)Z

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    return p1

    .line 376
    nop

    .line 377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lrh/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lrh/h;->b:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "|*"

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "*|"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lrh/h;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lrh/h;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v1, "#"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lrh/h;->b:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0

    .line 69
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, ":containsWholeText("

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lrh/h;->b:Ljava/lang/String;

    .line 77
    .line 78
    const-string v2, ")"

    .line 79
    .line 80
    invoke-static {v1, v2, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0

    .line 85
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v1, ":containsWholeOwnText("

    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lrh/h;->b:Ljava/lang/String;

    .line 93
    .line 94
    const-string v2, ")"

    .line 95
    .line 96
    invoke-static {v1, v2, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    return-object v0

    .line 101
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v1, ":contains("

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lrh/h;->b:Ljava/lang/String;

    .line 109
    .line 110
    const-string v2, ")"

    .line 111
    .line 112
    invoke-static {v1, v2, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0

    .line 117
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v1, ":containsOwn("

    .line 120
    .line 121
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lrh/h;->b:Ljava/lang/String;

    .line 125
    .line 126
    const-string v2, ")"

    .line 127
    .line 128
    invoke-static {v1, v2, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    return-object v0

    .line 133
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v1, ":containsData("

    .line 136
    .line 137
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lrh/h;->b:Ljava/lang/String;

    .line 141
    .line 142
    const-string v2, ")"

    .line 143
    .line 144
    invoke-static {v1, v2, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    return-object v0

    .line 149
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v1, "."

    .line 152
    .line 153
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v1, p0, Lrh/h;->b:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    return-object v0

    .line 166
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v1, "[^"

    .line 169
    .line 170
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object v1, p0, Lrh/h;->b:Ljava/lang/String;

    .line 174
    .line 175
    const-string v2, "]"

    .line 176
    .line 177
    invoke-static {v1, v2, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    return-object v0

    .line 182
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v1, "["

    .line 185
    .line 186
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v1, p0, Lrh/h;->b:Ljava/lang/String;

    .line 190
    .line 191
    const-string v2, "]"

    .line 192
    .line 193
    invoke-static {v1, v2, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    return-object v0

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
