.class public final Lh2/e;
.super Lh2/l;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final A:Z

.field public final e:I

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Lh2/i;

.field public final i:Z

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:Z

.field public final p:Z

.field public final q:I

.field public final r:I

.field public final s:Z

.field public final t:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:Z

.field public final z:Z


# direct methods
.method public constructor <init>(ILr1/r0;ILh2/i;IZLh2/c;I)V
    .locals 6

    .line 1
    const/4 p8, 0x2

    .line 2
    const/4 v0, -0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lh2/l;-><init>(ILr1/r0;I)V

    .line 6
    .line 7
    .line 8
    iput-object p4, p0, Lh2/e;->h:Lh2/i;

    .line 9
    .line 10
    iget-boolean p1, p4, Lh2/i;->A:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/16 p1, 0x18

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 p1, 0x10

    .line 18
    .line 19
    :goto_0
    iput-boolean v1, p0, Lh2/e;->n:Z

    .line 20
    .line 21
    iget-object p2, p0, Lh2/l;->d:Lr1/p;

    .line 22
    .line 23
    iget-object p2, p2, Lr1/p;->d:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p2}, Lh2/n;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lh2/e;->g:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p5, v1}, Lta/q;->f(IZ)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    iput-boolean p2, p0, Lh2/e;->i:Z

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    :goto_1
    iget-object p3, p4, Lr1/v0;->l:Lu7/y0;

    .line 39
    .line 40
    invoke-virtual {p3}, Lu7/y0;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const v4, 0x7fffffff

    .line 45
    .line 46
    .line 47
    if-ge p2, v3, :cond_2

    .line 48
    .line 49
    iget-object v3, p0, Lh2/l;->d:Lr1/p;

    .line 50
    .line 51
    invoke-virtual {p3, p2}, Lu7/y0;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    check-cast p3, Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v3, p3, v1}, Lh2/n;->j(Lr1/p;Ljava/lang/String;Z)I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    if-lez p3, :cond_1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    add-int/2addr p2, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const p2, 0x7fffffff

    .line 67
    .line 68
    .line 69
    const/4 p3, 0x0

    .line 70
    :goto_2
    iput p2, p0, Lh2/e;->k:I

    .line 71
    .line 72
    iput p3, p0, Lh2/e;->j:I

    .line 73
    .line 74
    iget-object p2, p0, Lh2/l;->d:Lr1/p;

    .line 75
    .line 76
    iget p2, p2, Lr1/p;->f:I

    .line 77
    .line 78
    invoke-static {p2, v1}, Lh2/n;->c(II)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    iput p2, p0, Lh2/e;->l:I

    .line 83
    .line 84
    iget-object p2, p0, Lh2/l;->d:Lr1/p;

    .line 85
    .line 86
    iget-object p3, p4, Lr1/v0;->m:Lu7/y0;

    .line 87
    .line 88
    invoke-static {p2, p3}, Lh2/n;->d(Lr1/p;Lu7/y0;)I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    iput p2, p0, Lh2/e;->m:I

    .line 93
    .line 94
    iget-object p2, p0, Lh2/l;->d:Lr1/p;

    .line 95
    .line 96
    iget p3, p2, Lr1/p;->f:I

    .line 97
    .line 98
    if-eqz p3, :cond_4

    .line 99
    .line 100
    and-int/2addr p3, v2

    .line 101
    if-eqz p3, :cond_3

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_3
    const/4 p3, 0x0

    .line 105
    goto :goto_4

    .line 106
    :cond_4
    :goto_3
    const/4 p3, 0x1

    .line 107
    :goto_4
    iput-boolean p3, p0, Lh2/e;->p:Z

    .line 108
    .line 109
    iget p3, p2, Lr1/p;->e:I

    .line 110
    .line 111
    and-int/2addr p3, v2

    .line 112
    if-eqz p3, :cond_5

    .line 113
    .line 114
    const/4 p3, 0x1

    .line 115
    goto :goto_5

    .line 116
    :cond_5
    const/4 p3, 0x0

    .line 117
    :goto_5
    iput-boolean p3, p0, Lh2/e;->s:Z

    .line 118
    .line 119
    iget-object p2, p2, Lr1/p;->o:Ljava/lang/String;

    .line 120
    .line 121
    if-nez p2, :cond_6

    .line 122
    .line 123
    :goto_6
    const/4 p2, 0x0

    .line 124
    goto :goto_9

    .line 125
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    sparse-switch p3, :sswitch_data_0

    .line 130
    .line 131
    .line 132
    :goto_7
    const/4 p2, -0x1

    .line 133
    goto :goto_8

    .line 134
    :sswitch_0
    const-string p3, "audio/iamf"

    .line 135
    .line 136
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-nez p2, :cond_7

    .line 141
    .line 142
    goto :goto_7

    .line 143
    :cond_7
    const/4 p2, 0x2

    .line 144
    goto :goto_8

    .line 145
    :sswitch_1
    const-string p3, "audio/ac4"

    .line 146
    .line 147
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-nez p2, :cond_8

    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_8
    const/4 p2, 0x1

    .line 155
    goto :goto_8

    .line 156
    :sswitch_2
    const-string p3, "audio/eac3-joc"

    .line 157
    .line 158
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    if-nez p2, :cond_9

    .line 163
    .line 164
    goto :goto_7

    .line 165
    :cond_9
    const/4 p2, 0x0

    .line 166
    :goto_8
    packed-switch p2, :pswitch_data_0

    .line 167
    .line 168
    .line 169
    goto :goto_6

    .line 170
    :pswitch_0
    const/4 p2, 0x1

    .line 171
    :goto_9
    iput-boolean p2, p0, Lh2/e;->A:Z

    .line 172
    .line 173
    iget-object p2, p0, Lh2/l;->d:Lr1/p;

    .line 174
    .line 175
    iget p3, p2, Lr1/p;->G:I

    .line 176
    .line 177
    iput p3, p0, Lh2/e;->t:I

    .line 178
    .line 179
    iget v3, p2, Lr1/p;->H:I

    .line 180
    .line 181
    iput v3, p0, Lh2/e;->v:I

    .line 182
    .line 183
    iget v3, p2, Lr1/p;->j:I

    .line 184
    .line 185
    iput v3, p0, Lh2/e;->w:I

    .line 186
    .line 187
    if-eq v3, v0, :cond_a

    .line 188
    .line 189
    iget v5, p4, Lr1/v0;->o:I

    .line 190
    .line 191
    if-gt v3, v5, :cond_c

    .line 192
    .line 193
    :cond_a
    if-eq p3, v0, :cond_b

    .line 194
    .line 195
    iget v3, p4, Lr1/v0;->n:I

    .line 196
    .line 197
    if-gt p3, v3, :cond_c

    .line 198
    .line 199
    :cond_b
    invoke-virtual {p7, p2}, Lh2/c;->apply(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    if-eqz p2, :cond_c

    .line 204
    .line 205
    const/4 p2, 0x1

    .line 206
    goto :goto_a

    .line 207
    :cond_c
    const/4 p2, 0x0

    .line 208
    :goto_a
    iput-boolean p2, p0, Lh2/e;->f:Z

    .line 209
    .line 210
    invoke-static {}, Lu1/f0;->v()[Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    const/4 p3, 0x0

    .line 215
    :goto_b
    array-length p7, p2

    .line 216
    if-ge p3, p7, :cond_e

    .line 217
    .line 218
    iget-object p7, p0, Lh2/l;->d:Lr1/p;

    .line 219
    .line 220
    aget-object v3, p2, p3

    .line 221
    .line 222
    invoke-static {p7, v3, v1}, Lh2/n;->j(Lr1/p;Ljava/lang/String;Z)I

    .line 223
    .line 224
    .line 225
    move-result p7

    .line 226
    if-lez p7, :cond_d

    .line 227
    .line 228
    goto :goto_c

    .line 229
    :cond_d
    add-int/2addr p3, v2

    .line 230
    goto :goto_b

    .line 231
    :cond_e
    const p3, 0x7fffffff

    .line 232
    .line 233
    .line 234
    const/4 p7, 0x0

    .line 235
    :goto_c
    iput p3, p0, Lh2/e;->q:I

    .line 236
    .line 237
    iput p7, p0, Lh2/e;->r:I

    .line 238
    .line 239
    const/4 p2, 0x0

    .line 240
    :goto_d
    iget-object p3, p4, Lr1/v0;->p:Lu7/y0;

    .line 241
    .line 242
    invoke-virtual {p3}, Lu7/y0;->size()I

    .line 243
    .line 244
    .line 245
    move-result p7

    .line 246
    if-ge p2, p7, :cond_10

    .line 247
    .line 248
    iget-object p7, p0, Lh2/l;->d:Lr1/p;

    .line 249
    .line 250
    iget-object p7, p7, Lr1/p;->o:Ljava/lang/String;

    .line 251
    .line 252
    if-eqz p7, :cond_f

    .line 253
    .line 254
    invoke-virtual {p3, p2}, Lu7/y0;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object p3

    .line 258
    invoke-virtual {p7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result p3

    .line 262
    if-eqz p3, :cond_f

    .line 263
    .line 264
    move v4, p2

    .line 265
    goto :goto_e

    .line 266
    :cond_f
    add-int/2addr p2, v2

    .line 267
    goto :goto_d

    .line 268
    :cond_10
    :goto_e
    iput v4, p0, Lh2/e;->x:I

    .line 269
    .line 270
    invoke-static {p5}, Lta/q;->b(I)I

    .line 271
    .line 272
    .line 273
    move-result p2

    .line 274
    const/16 p3, 0x80

    .line 275
    .line 276
    if-ne p2, p3, :cond_11

    .line 277
    .line 278
    const/4 p2, 0x1

    .line 279
    goto :goto_f

    .line 280
    :cond_11
    const/4 p2, 0x0

    .line 281
    :goto_f
    iput-boolean p2, p0, Lh2/e;->y:Z

    .line 282
    .line 283
    invoke-static {p5}, Lta/q;->c(I)I

    .line 284
    .line 285
    .line 286
    move-result p2

    .line 287
    const/16 p3, 0x40

    .line 288
    .line 289
    if-ne p2, p3, :cond_12

    .line 290
    .line 291
    const/4 p2, 0x1

    .line 292
    goto :goto_10

    .line 293
    :cond_12
    const/4 p2, 0x0

    .line 294
    :goto_10
    iput-boolean p2, p0, Lh2/e;->z:Z

    .line 295
    .line 296
    iget-object p2, p0, Lh2/e;->h:Lh2/i;

    .line 297
    .line 298
    iget-boolean p3, p2, Lh2/i;->C:Z

    .line 299
    .line 300
    invoke-static {p5, p3}, Lta/q;->f(IZ)Z

    .line 301
    .line 302
    .line 303
    move-result p3

    .line 304
    if-nez p3, :cond_13

    .line 305
    .line 306
    goto :goto_12

    .line 307
    :cond_13
    iget-boolean p3, p0, Lh2/e;->f:Z

    .line 308
    .line 309
    if-nez p3, :cond_14

    .line 310
    .line 311
    iget-boolean p4, p2, Lh2/i;->z:Z

    .line 312
    .line 313
    if-nez p4, :cond_14

    .line 314
    .line 315
    goto :goto_12

    .line 316
    :cond_14
    iget-object p4, p2, Lr1/v0;->q:Lr1/t0;

    .line 317
    .line 318
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    invoke-static {p5, v1}, Lta/q;->f(IZ)Z

    .line 322
    .line 323
    .line 324
    move-result p4

    .line 325
    if-eqz p4, :cond_16

    .line 326
    .line 327
    if-eqz p3, :cond_16

    .line 328
    .line 329
    iget-object p3, p0, Lh2/l;->d:Lr1/p;

    .line 330
    .line 331
    iget p3, p3, Lr1/p;->j:I

    .line 332
    .line 333
    if-eq p3, v0, :cond_16

    .line 334
    .line 335
    iget-boolean p2, p2, Lh2/i;->D:Z

    .line 336
    .line 337
    if-nez p2, :cond_15

    .line 338
    .line 339
    if-nez p6, :cond_16

    .line 340
    .line 341
    :cond_15
    and-int/2addr p1, p5

    .line 342
    if-eqz p1, :cond_16

    .line 343
    .line 344
    goto :goto_11

    .line 345
    :cond_16
    const/4 p8, 0x1

    .line 346
    :goto_11
    move v1, p8

    .line 347
    :goto_12
    iput v1, p0, Lh2/e;->e:I

    .line 348
    .line 349
    return-void

    .line 350
    nop

    .line 351
    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59afdf4a -> :sswitch_0
    .end sparse-switch

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lh2/e;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final b(Lh2/l;)Z
    .locals 5

    .line 1
    check-cast p1, Lh2/e;

    .line 2
    .line 3
    iget-object v0, p0, Lh2/e;->h:Lh2/i;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lh2/l;->d:Lr1/p;

    .line 9
    .line 10
    iget v1, v0, Lr1/p;->G:I

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v3, p1, Lh2/l;->d:Lr1/p;

    .line 16
    .line 17
    iget v4, v3, Lr1/p;->G:I

    .line 18
    .line 19
    if-ne v1, v4, :cond_1

    .line 20
    .line 21
    iget-boolean v1, p0, Lh2/e;->n:Z

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    iget-object v1, v0, Lr1/p;->o:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v4, v3, Lr1/p;->o:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    :cond_0
    iget v0, v0, Lr1/p;->H:I

    .line 38
    .line 39
    if-eq v0, v2, :cond_1

    .line 40
    .line 41
    iget v1, v3, Lr1/p;->H:I

    .line 42
    .line 43
    if-ne v0, v1, :cond_1

    .line 44
    .line 45
    iget-boolean v0, p1, Lh2/e;->y:Z

    .line 46
    .line 47
    iget-boolean v1, p0, Lh2/e;->y:Z

    .line 48
    .line 49
    if-ne v1, v0, :cond_1

    .line 50
    .line 51
    iget-boolean v0, p0, Lh2/e;->z:Z

    .line 52
    .line 53
    iget-boolean p1, p1, Lh2/e;->z:Z

    .line 54
    .line 55
    if-ne v0, p1, :cond_1

    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 p1, 0x0

    .line 60
    :goto_0
    return p1
.end method

.method public final c(Lh2/e;)I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lh2/e;->i:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lh2/e;->f:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v2, Lh2/n;->k:Lu7/x0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v2, Lh2/n;->k:Lu7/x0;

    .line 13
    .line 14
    invoke-virtual {v2}, Lu7/x0;->a()Lu7/x0;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :goto_0
    sget-object v3, Lu7/y;->a:Lu7/w;

    .line 19
    .line 20
    iget-boolean v4, p1, Lh2/e;->i:Z

    .line 21
    .line 22
    invoke-virtual {v3, v0, v4}, Lu7/w;->c(ZZ)Lu7/y;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v3, p0, Lh2/e;->k:I

    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget v4, p1, Lh2/e;->k:I

    .line 33
    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    sget-object v5, Lu7/w0;->a:Lu7/w0;

    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    sget-object v5, Lu7/g1;->a:Lu7/g1;

    .line 44
    .line 45
    invoke-virtual {v0, v3, v4, v5}, Lu7/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu7/y;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v3, p0, Lh2/e;->j:I

    .line 50
    .line 51
    iget v4, p1, Lh2/e;->j:I

    .line 52
    .line 53
    invoke-virtual {v0, v3, v4}, Lu7/y;->a(II)Lu7/y;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget v3, p0, Lh2/e;->l:I

    .line 58
    .line 59
    iget v4, p1, Lh2/e;->l:I

    .line 60
    .line 61
    invoke-virtual {v0, v3, v4}, Lu7/y;->a(II)Lu7/y;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget v3, p0, Lh2/e;->m:I

    .line 66
    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget v4, p1, Lh2/e;->m:I

    .line 72
    .line 73
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v0, v3, v4, v5}, Lu7/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu7/y;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-boolean v3, p0, Lh2/e;->s:Z

    .line 82
    .line 83
    iget-boolean v4, p1, Lh2/e;->s:Z

    .line 84
    .line 85
    invoke-virtual {v0, v3, v4}, Lu7/y;->c(ZZ)Lu7/y;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-boolean v3, p0, Lh2/e;->p:Z

    .line 90
    .line 91
    iget-boolean v4, p1, Lh2/e;->p:Z

    .line 92
    .line 93
    invoke-virtual {v0, v3, v4}, Lu7/y;->c(ZZ)Lu7/y;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget v3, p0, Lh2/e;->q:I

    .line 98
    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    iget v4, p1, Lh2/e;->q:I

    .line 104
    .line 105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v0, v3, v4, v5}, Lu7/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu7/y;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget v3, p0, Lh2/e;->r:I

    .line 114
    .line 115
    iget v4, p1, Lh2/e;->r:I

    .line 116
    .line 117
    invoke-virtual {v0, v3, v4}, Lu7/y;->a(II)Lu7/y;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-boolean v3, p1, Lh2/e;->f:Z

    .line 122
    .line 123
    invoke-virtual {v0, v1, v3}, Lu7/y;->c(ZZ)Lu7/y;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget v1, p0, Lh2/e;->x:I

    .line 128
    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iget v3, p1, Lh2/e;->x:I

    .line 134
    .line 135
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v0, v1, v3, v5}, Lu7/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu7/y;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iget-object v1, p0, Lh2/e;->h:Lh2/i;

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    iget-boolean v1, p0, Lh2/e;->y:Z

    .line 149
    .line 150
    iget-boolean v3, p1, Lh2/e;->y:Z

    .line 151
    .line 152
    invoke-virtual {v0, v1, v3}, Lu7/y;->c(ZZ)Lu7/y;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-boolean v1, p0, Lh2/e;->z:Z

    .line 157
    .line 158
    iget-boolean v3, p1, Lh2/e;->z:Z

    .line 159
    .line 160
    invoke-virtual {v0, v1, v3}, Lu7/y;->c(ZZ)Lu7/y;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-boolean v1, p0, Lh2/e;->A:Z

    .line 165
    .line 166
    iget-boolean v3, p1, Lh2/e;->A:Z

    .line 167
    .line 168
    invoke-virtual {v0, v1, v3}, Lu7/y;->c(ZZ)Lu7/y;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iget v1, p0, Lh2/e;->t:I

    .line 173
    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    iget v3, p1, Lh2/e;->t:I

    .line 179
    .line 180
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v0, v1, v3, v2}, Lu7/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu7/y;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iget v1, p0, Lh2/e;->v:I

    .line 189
    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    iget v3, p1, Lh2/e;->v:I

    .line 195
    .line 196
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v0, v1, v3, v2}, Lu7/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu7/y;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iget-object v1, p0, Lh2/e;->g:Ljava/lang/String;

    .line 205
    .line 206
    iget-object v3, p1, Lh2/e;->g:Ljava/lang/String;

    .line 207
    .line 208
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_1

    .line 213
    .line 214
    iget v1, p0, Lh2/e;->w:I

    .line 215
    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    iget p1, p1, Lh2/e;->w:I

    .line 221
    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {v0, v1, p1, v2}, Lu7/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu7/y;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    :cond_1
    invoke-virtual {v0}, Lu7/y;->e()I

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lh2/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lh2/e;->c(Lh2/e;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
