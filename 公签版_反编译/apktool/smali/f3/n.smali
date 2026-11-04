.class public final Lf3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/o;


# instance fields
.field public A:J

.field public B:Ll2/q;

.field public C:[Lf3/m;

.field public D:[[J

.field public E:I

.field public F:Lu2/b;

.field public final a:Li3/h;

.field public final b:I

.field public final c:Z

.field public final d:Lu1/q;

.field public final e:Lu1/q;

.field public final f:Lu1/q;

.field public final g:Lu1/q;

.field public final h:Ljava/util/ArrayDeque;

.field public final i:Lf3/q;

.field public final j:Ljava/util/ArrayList;

.field public k:Lu7/y0;

.field public l:I

.field public m:I

.field public n:J

.field public o:I

.field public p:Lu1/q;

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:J

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Li3/h;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf3/n;->a:Li3/h;

    .line 5
    .line 6
    iput p2, p0, Lf3/n;->b:I

    .line 7
    .line 8
    and-int/lit16 p1, p2, 0x100

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    iput-boolean p1, p0, Lf3/n;->c:Z

    .line 17
    .line 18
    sget-object p1, Lu7/g0;->b:Lu7/e0;

    .line 19
    .line 20
    sget-object p1, Lu7/y0;->e:Lu7/y0;

    .line 21
    .line 22
    iput-object p1, p0, Lf3/n;->k:Lu7/y0;

    .line 23
    .line 24
    and-int/lit8 p1, p2, 0x4

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x3

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    :goto_1
    iput p1, p0, Lf3/n;->l:I

    .line 32
    .line 33
    new-instance p1, Lf3/q;

    .line 34
    .line 35
    invoke-direct {p1}, Lf3/q;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lf3/n;->i:Lf3/q;

    .line 39
    .line 40
    new-instance p1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lf3/n;->j:Ljava/util/ArrayList;

    .line 46
    .line 47
    new-instance p1, Lu1/q;

    .line 48
    .line 49
    const/16 p2, 0x10

    .line 50
    .line 51
    invoke-direct {p1, p2}, Lu1/q;-><init>(I)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lf3/n;->g:Lu1/q;

    .line 55
    .line 56
    new-instance p1, Ljava/util/ArrayDeque;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lf3/n;->h:Ljava/util/ArrayDeque;

    .line 62
    .line 63
    new-instance p1, Lu1/q;

    .line 64
    .line 65
    sget-object p2, Lv1/o;->a:[B

    .line 66
    .line 67
    invoke-direct {p1, p2}, Lu1/q;-><init>([B)V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lf3/n;->d:Lu1/q;

    .line 71
    .line 72
    new-instance p1, Lu1/q;

    .line 73
    .line 74
    const/4 p2, 0x6

    .line 75
    invoke-direct {p1, p2}, Lu1/q;-><init>(I)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lf3/n;->e:Lu1/q;

    .line 79
    .line 80
    new-instance p1, Lu1/q;

    .line 81
    .line 82
    invoke-direct {p1}, Lu1/q;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lf3/n;->f:Lu1/q;

    .line 86
    .line 87
    const/4 p1, -0x1

    .line 88
    iput p1, p0, Lf3/n;->q:I

    .line 89
    .line 90
    sget-object p1, Ll2/q;->C0:Lha/j2;

    .line 91
    .line 92
    iput-object p1, p0, Lf3/n;->B:Ll2/q;

    .line 93
    .line 94
    new-array p1, v0, [Lf3/m;

    .line 95
    .line 96
    iput-object p1, p0, Lf3/n;->C:[Lf3/m;

    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Ll2/o;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c(Ll2/q;)V
    .locals 2

    .line 1
    iget v0, p0, Lf3/n;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/room/i;

    .line 8
    .line 9
    iget-object v1, p0, Lf3/n;->a:Li3/h;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Landroidx/room/i;-><init>(Ll2/q;Li3/h;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v0

    .line 15
    :cond_0
    iput-object p1, p0, Lf3/n;->B:Ll2/q;

    .line 16
    .line 17
    return-void
.end method

.method public final d(Ll2/p;Ldd/c;)I
    .locals 46

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x4

    .line 10
    const/16 v7, 0x8

    .line 11
    .line 12
    const/4 v8, 0x2

    .line 13
    const/4 v9, 0x1

    .line 14
    iget-boolean v10, v1, Lf3/n;->c:Z

    .line 15
    .line 16
    const/4 v11, -0x1

    .line 17
    if-eqz v10, :cond_0

    .line 18
    .line 19
    iget-boolean v10, v1, Lf3/n;->z:Z

    .line 20
    .line 21
    if-eqz v10, :cond_0

    .line 22
    .line 23
    return v11

    .line 24
    :cond_0
    :goto_0
    iget v10, v1, Lf3/n;->l:I

    .line 25
    .line 26
    iget-object v12, v1, Lf3/n;->h:Ljava/util/ArrayDeque;

    .line 27
    .line 28
    iget-object v14, v1, Lf3/n;->f:Lu1/q;

    .line 29
    .line 30
    iget v15, v1, Lf3/n;->b:I

    .line 31
    .line 32
    const-wide/16 v16, -0x1

    .line 33
    .line 34
    const/4 v13, 0x0

    .line 35
    move-object/from16 v20, v12

    .line 36
    .line 37
    if-eqz v10, :cond_49

    .line 38
    .line 39
    const-wide/32 v21, 0x40000

    .line 40
    .line 41
    .line 42
    if-eq v10, v9, :cond_39

    .line 43
    .line 44
    const-wide/16 v23, 0x8

    .line 45
    .line 46
    if-eq v10, v8, :cond_19

    .line 47
    .line 48
    if-ne v10, v4, :cond_18

    .line 49
    .line 50
    iget-object v3, v1, Lf3/n;->j:Ljava/util/ArrayList;

    .line 51
    .line 52
    iget-object v10, v1, Lf3/n;->i:Lf3/q;

    .line 53
    .line 54
    iget v14, v10, Lf3/q;->b:I

    .line 55
    .line 56
    if-eqz v14, :cond_14

    .line 57
    .line 58
    if-eq v14, v9, :cond_12

    .line 59
    .line 60
    iget-object v15, v10, Lf3/q;->a:Ljava/util/ArrayList;

    .line 61
    .line 62
    const/16 v11, 0xb01

    .line 63
    .line 64
    const/16 v12, 0x890

    .line 65
    .line 66
    if-eq v14, v8, :cond_d

    .line 67
    .line 68
    if-ne v14, v4, :cond_c

    .line 69
    .line 70
    invoke-interface/range {p1 .. p1}, Ll2/p;->getPosition()J

    .line 71
    .line 72
    .line 73
    move-result-wide v20

    .line 74
    invoke-interface/range {p1 .. p1}, Ll2/p;->getLength()J

    .line 75
    .line 76
    .line 77
    move-result-wide v22

    .line 78
    invoke-interface/range {p1 .. p1}, Ll2/p;->getPosition()J

    .line 79
    .line 80
    .line 81
    move-result-wide v27

    .line 82
    sub-long v22, v22, v27

    .line 83
    .line 84
    iget v10, v10, Lf3/q;->c:I

    .line 85
    .line 86
    int-to-long v8, v10

    .line 87
    sub-long v8, v22, v8

    .line 88
    .line 89
    long-to-int v9, v8

    .line 90
    new-instance v8, Lu1/q;

    .line 91
    .line 92
    invoke-direct {v8, v9}, Lu1/q;-><init>(I)V

    .line 93
    .line 94
    .line 95
    iget-object v10, v8, Lu1/q;->a:[B

    .line 96
    .line 97
    invoke-interface {v0, v10, v5, v9}, Ll2/p;->readFully([BII)V

    .line 98
    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    :goto_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-ge v0, v9, :cond_b

    .line 106
    .line 107
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    check-cast v9, Lf3/p;

    .line 112
    .line 113
    move-object/from16 v18, v15

    .line 114
    .line 115
    iget-wide v14, v9, Lf3/p;->a:J

    .line 116
    .line 117
    sub-long v14, v14, v20

    .line 118
    .line 119
    long-to-int v15, v14

    .line 120
    invoke-virtual {v8, v15}, Lu1/q;->O(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v6}, Lu1/q;->P(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8}, Lu1/q;->q()I

    .line 127
    .line 128
    .line 129
    move-result v14

    .line 130
    sget-object v15, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 131
    .line 132
    invoke-virtual {v8, v15, v14}, Lu1/q;->z(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 137
    .line 138
    .line 139
    move-result v22

    .line 140
    sparse-switch v22, :sswitch_data_0

    .line 141
    .line 142
    .line 143
    :goto_2
    const/4 v6, -0x1

    .line 144
    goto :goto_3

    .line 145
    :sswitch_0
    const-string v6, "Super_SlowMotion_BGM"

    .line 146
    .line 147
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-nez v6, :cond_1

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_1
    const/4 v6, 0x4

    .line 155
    goto :goto_3

    .line 156
    :sswitch_1
    const-string v6, "Super_SlowMotion_Deflickering_On"

    .line 157
    .line 158
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    if-nez v6, :cond_2

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_2
    const/4 v6, 0x3

    .line 166
    goto :goto_3

    .line 167
    :sswitch_2
    const-string v6, "Super_SlowMotion_Data"

    .line 168
    .line 169
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-nez v6, :cond_3

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_3
    const/4 v6, 0x2

    .line 177
    goto :goto_3

    .line 178
    :sswitch_3
    const-string v6, "Super_SlowMotion_Edit_Data"

    .line 179
    .line 180
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-nez v6, :cond_4

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_4
    const/4 v6, 0x1

    .line 188
    goto :goto_3

    .line 189
    :sswitch_4
    const-string v6, "SlowMotion_Data"

    .line 190
    .line 191
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-nez v6, :cond_5

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_5
    const/4 v6, 0x0

    .line 199
    :goto_3
    packed-switch v6, :pswitch_data_0

    .line 200
    .line 201
    .line 202
    const-string v0, "Invalid SEF name"

    .line 203
    .line 204
    invoke-static {v13, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    throw v0

    .line 209
    :pswitch_0
    const/16 v6, 0xb01

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :pswitch_1
    const/16 v6, 0xb04

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :pswitch_2
    const/16 v6, 0xb00

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :pswitch_3
    const/16 v6, 0xb03

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :pswitch_4
    const/16 v6, 0x890

    .line 222
    .line 223
    :goto_4
    add-int/2addr v14, v7

    .line 224
    iget v9, v9, Lf3/p;->b:I

    .line 225
    .line 226
    sub-int/2addr v9, v14

    .line 227
    if-eq v6, v12, :cond_8

    .line 228
    .line 229
    const/16 v10, 0xb00

    .line 230
    .line 231
    if-eq v6, v10, :cond_7

    .line 232
    .line 233
    if-eq v6, v11, :cond_7

    .line 234
    .line 235
    const/16 v9, 0xb03

    .line 236
    .line 237
    if-eq v6, v9, :cond_7

    .line 238
    .line 239
    const/16 v9, 0xb04

    .line 240
    .line 241
    if-ne v6, v9, :cond_6

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 245
    .line 246
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 247
    .line 248
    .line 249
    throw v0

    .line 250
    :cond_7
    :goto_5
    const/4 v6, 0x1

    .line 251
    goto :goto_7

    .line 252
    :cond_8
    new-instance v6, Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v8, v15, v9}, Lu1/q;->z(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    sget-object v10, Lf3/q;->e:Landroidx/room/s;

    .line 262
    .line 263
    invoke-virtual {v10, v9}, Landroidx/room/s;->E(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    const/4 v10, 0x0

    .line 268
    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 269
    .line 270
    .line 271
    move-result v15

    .line 272
    if-ge v10, v15, :cond_a

    .line 273
    .line 274
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v15

    .line 278
    check-cast v15, Ljava/lang/CharSequence;

    .line 279
    .line 280
    sget-object v14, Lf3/q;->d:Landroidx/room/s;

    .line 281
    .line 282
    invoke-virtual {v14, v15}, Landroidx/room/s;->E(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move-result-object v14

    .line 286
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 287
    .line 288
    .line 289
    move-result v15

    .line 290
    if-ne v15, v4, :cond_9

    .line 291
    .line 292
    :try_start_0
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v15

    .line 296
    check-cast v15, Ljava/lang/String;

    .line 297
    .line 298
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 299
    .line 300
    .line 301
    move-result-wide v30

    .line 302
    const/4 v15, 0x1

    .line 303
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v23

    .line 307
    check-cast v23, Ljava/lang/String;

    .line 308
    .line 309
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 310
    .line 311
    .line 312
    move-result-wide v32

    .line 313
    const/4 v15, 0x2

    .line 314
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v14

    .line 318
    check-cast v14, Ljava/lang/String;

    .line 319
    .line 320
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    move-result v14

    .line 324
    const/4 v15, 0x1

    .line 325
    sub-int/2addr v14, v15

    .line 326
    shl-int v34, v15, v14

    .line 327
    .line 328
    new-instance v14, La3/a;

    .line 329
    .line 330
    move-object/from16 v29, v14

    .line 331
    .line 332
    invoke-direct/range {v29 .. v34}, La3/a;-><init>(JJI)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .line 337
    .line 338
    add-int/2addr v10, v15

    .line 339
    goto :goto_6

    .line 340
    :catch_0
    move-exception v0

    .line 341
    invoke-static {v0, v13}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    throw v0

    .line 346
    :cond_9
    invoke-static {v13, v13}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    throw v0

    .line 351
    :cond_a
    new-instance v9, La3/b;

    .line 352
    .line 353
    invoke-direct {v9, v6}, La3/b;-><init>(Ljava/util/ArrayList;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    goto :goto_5

    .line 360
    :goto_7
    add-int/2addr v0, v6

    .line 361
    move-object/from16 v15, v18

    .line 362
    .line 363
    const/4 v6, 0x4

    .line 364
    goto/16 :goto_1

    .line 365
    .line 366
    :cond_b
    const-wide/16 v9, 0x0

    .line 367
    .line 368
    iput-wide v9, v2, Ldd/c;->b:J

    .line 369
    .line 370
    :goto_8
    const/4 v0, 0x1

    .line 371
    goto/16 :goto_e

    .line 372
    .line 373
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 374
    .line 375
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 376
    .line 377
    .line 378
    throw v0

    .line 379
    :cond_d
    move-object/from16 v18, v15

    .line 380
    .line 381
    invoke-interface/range {p1 .. p1}, Ll2/p;->getLength()J

    .line 382
    .line 383
    .line 384
    move-result-wide v8

    .line 385
    iget v3, v10, Lf3/q;->c:I

    .line 386
    .line 387
    add-int/lit8 v3, v3, -0x14

    .line 388
    .line 389
    new-instance v6, Lu1/q;

    .line 390
    .line 391
    invoke-direct {v6, v3}, Lu1/q;-><init>(I)V

    .line 392
    .line 393
    .line 394
    iget-object v13, v6, Lu1/q;->a:[B

    .line 395
    .line 396
    invoke-interface {v0, v13, v5, v3}, Ll2/p;->readFully([BII)V

    .line 397
    .line 398
    .line 399
    const/4 v0, 0x0

    .line 400
    :goto_9
    div-int/lit8 v13, v3, 0xc

    .line 401
    .line 402
    if-ge v0, v13, :cond_10

    .line 403
    .line 404
    const/4 v13, 0x2

    .line 405
    invoke-virtual {v6, v13}, Lu1/q;->P(I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v6, v13}, Lu1/q;->g(I)V

    .line 409
    .line 410
    .line 411
    iget-object v14, v6, Lu1/q;->a:[B

    .line 412
    .line 413
    iget v15, v6, Lu1/q;->b:I

    .line 414
    .line 415
    const/16 v19, 0x1

    .line 416
    .line 417
    add-int/lit8 v5, v15, 0x1

    .line 418
    .line 419
    iput v5, v6, Lu1/q;->b:I

    .line 420
    .line 421
    aget-byte v4, v14, v15

    .line 422
    .line 423
    and-int/lit16 v4, v4, 0xff

    .line 424
    .line 425
    add-int/2addr v15, v13

    .line 426
    iput v15, v6, Lu1/q;->b:I

    .line 427
    .line 428
    aget-byte v5, v14, v5

    .line 429
    .line 430
    and-int/lit16 v5, v5, 0xff

    .line 431
    .line 432
    shl-int/2addr v5, v7

    .line 433
    or-int/2addr v4, v5

    .line 434
    int-to-short v4, v4

    .line 435
    const/16 v5, 0xb00

    .line 436
    .line 437
    if-eq v4, v12, :cond_e

    .line 438
    .line 439
    if-eq v4, v5, :cond_e

    .line 440
    .line 441
    if-eq v4, v11, :cond_e

    .line 442
    .line 443
    const/16 v13, 0xb03

    .line 444
    .line 445
    const/16 v14, 0xb04

    .line 446
    .line 447
    if-eq v4, v13, :cond_f

    .line 448
    .line 449
    if-eq v4, v14, :cond_f

    .line 450
    .line 451
    invoke-virtual {v6, v7}, Lu1/q;->P(I)V

    .line 452
    .line 453
    .line 454
    move-object/from16 v4, v18

    .line 455
    .line 456
    :goto_a
    const/4 v11, 0x1

    .line 457
    goto :goto_b

    .line 458
    :cond_e
    const/16 v13, 0xb03

    .line 459
    .line 460
    const/16 v14, 0xb04

    .line 461
    .line 462
    :cond_f
    iget v4, v10, Lf3/q;->c:I

    .line 463
    .line 464
    int-to-long v11, v4

    .line 465
    sub-long v11, v8, v11

    .line 466
    .line 467
    invoke-virtual {v6}, Lu1/q;->q()I

    .line 468
    .line 469
    .line 470
    move-result v4

    .line 471
    int-to-long v13, v4

    .line 472
    sub-long/2addr v11, v13

    .line 473
    invoke-virtual {v6}, Lu1/q;->q()I

    .line 474
    .line 475
    .line 476
    move-result v4

    .line 477
    new-instance v13, Lf3/p;

    .line 478
    .line 479
    invoke-direct {v13, v11, v12, v4}, Lf3/p;-><init>(JI)V

    .line 480
    .line 481
    .line 482
    move-object/from16 v4, v18

    .line 483
    .line 484
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    goto :goto_a

    .line 488
    :goto_b
    add-int/2addr v0, v11

    .line 489
    move-object/from16 v18, v4

    .line 490
    .line 491
    const/4 v4, 0x3

    .line 492
    const/4 v5, 0x0

    .line 493
    const/16 v11, 0xb01

    .line 494
    .line 495
    const/16 v12, 0x890

    .line 496
    .line 497
    goto :goto_9

    .line 498
    :cond_10
    move-object/from16 v4, v18

    .line 499
    .line 500
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    if-eqz v0, :cond_11

    .line 505
    .line 506
    const-wide/16 v5, 0x0

    .line 507
    .line 508
    iput-wide v5, v2, Ldd/c;->b:J

    .line 509
    .line 510
    const/4 v3, 0x0

    .line 511
    goto/16 :goto_8

    .line 512
    .line 513
    :cond_11
    const/4 v5, 0x3

    .line 514
    iput v5, v10, Lf3/q;->b:I

    .line 515
    .line 516
    const/4 v3, 0x0

    .line 517
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    check-cast v0, Lf3/p;

    .line 522
    .line 523
    iget-wide v4, v0, Lf3/p;->a:J

    .line 524
    .line 525
    iput-wide v4, v2, Ldd/c;->b:J

    .line 526
    .line 527
    goto/16 :goto_8

    .line 528
    .line 529
    :cond_12
    const/4 v3, 0x0

    .line 530
    new-instance v4, Lu1/q;

    .line 531
    .line 532
    invoke-direct {v4, v7}, Lu1/q;-><init>(I)V

    .line 533
    .line 534
    .line 535
    iget-object v5, v4, Lu1/q;->a:[B

    .line 536
    .line 537
    invoke-interface {v0, v5, v3, v7}, Ll2/p;->readFully([BII)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v4}, Lu1/q;->q()I

    .line 541
    .line 542
    .line 543
    move-result v3

    .line 544
    add-int/2addr v3, v7

    .line 545
    iput v3, v10, Lf3/q;->c:I

    .line 546
    .line 547
    invoke-virtual {v4}, Lu1/q;->o()I

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    const v4, 0x53454654

    .line 552
    .line 553
    .line 554
    if-eq v3, v4, :cond_13

    .line 555
    .line 556
    const-wide/16 v3, 0x0

    .line 557
    .line 558
    iput-wide v3, v2, Ldd/c;->b:J

    .line 559
    .line 560
    goto/16 :goto_8

    .line 561
    .line 562
    :cond_13
    invoke-interface/range {p1 .. p1}, Ll2/p;->getPosition()J

    .line 563
    .line 564
    .line 565
    move-result-wide v3

    .line 566
    iget v0, v10, Lf3/q;->c:I

    .line 567
    .line 568
    add-int/lit8 v0, v0, -0xc

    .line 569
    .line 570
    int-to-long v5, v0

    .line 571
    sub-long/2addr v3, v5

    .line 572
    iput-wide v3, v2, Ldd/c;->b:J

    .line 573
    .line 574
    const/4 v0, 0x2

    .line 575
    iput v0, v10, Lf3/q;->b:I

    .line 576
    .line 577
    goto/16 :goto_8

    .line 578
    .line 579
    :cond_14
    invoke-interface/range {p1 .. p1}, Ll2/p;->getLength()J

    .line 580
    .line 581
    .line 582
    move-result-wide v3

    .line 583
    cmp-long v0, v3, v16

    .line 584
    .line 585
    if-eqz v0, :cond_16

    .line 586
    .line 587
    cmp-long v0, v3, v23

    .line 588
    .line 589
    if-gez v0, :cond_15

    .line 590
    .line 591
    goto :goto_c

    .line 592
    :cond_15
    sub-long v3, v3, v23

    .line 593
    .line 594
    goto :goto_d

    .line 595
    :cond_16
    :goto_c
    const-wide/16 v3, 0x0

    .line 596
    .line 597
    :goto_d
    iput-wide v3, v2, Ldd/c;->b:J

    .line 598
    .line 599
    const/4 v0, 0x1

    .line 600
    iput v0, v10, Lf3/q;->b:I

    .line 601
    .line 602
    :goto_e
    iget-wide v2, v2, Ldd/c;->b:J

    .line 603
    .line 604
    const-wide/16 v4, 0x0

    .line 605
    .line 606
    cmp-long v6, v2, v4

    .line 607
    .line 608
    if-nez v6, :cond_17

    .line 609
    .line 610
    const/4 v2, 0x0

    .line 611
    iput v2, v1, Lf3/n;->l:I

    .line 612
    .line 613
    iput v2, v1, Lf3/n;->o:I

    .line 614
    .line 615
    :cond_17
    return v0

    .line 616
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 617
    .line 618
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 619
    .line 620
    .line 621
    throw v0

    .line 622
    :cond_19
    invoke-interface/range {p1 .. p1}, Ll2/p;->getPosition()J

    .line 623
    .line 624
    .line 625
    move-result-wide v4

    .line 626
    iget v6, v1, Lf3/n;->q:I

    .line 627
    .line 628
    const/4 v7, -0x1

    .line 629
    if-ne v6, v7, :cond_24

    .line 630
    .line 631
    const/4 v8, -0x1

    .line 632
    const/4 v9, -0x1

    .line 633
    const/4 v10, 0x1

    .line 634
    const/4 v11, 0x1

    .line 635
    const/4 v12, 0x0

    .line 636
    const-wide v16, 0x7fffffffffffffffL

    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    const-wide v30, 0x7fffffffffffffffL

    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    const-wide v32, 0x7fffffffffffffffL

    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    :goto_f
    iget-object v3, v1, Lf3/n;->C:[Lf3/m;

    .line 652
    .line 653
    array-length v13, v3

    .line 654
    if-ge v12, v13, :cond_21

    .line 655
    .line 656
    aget-object v3, v3, v12

    .line 657
    .line 658
    iget v13, v3, Lf3/m;->e:I

    .line 659
    .line 660
    iget-object v3, v3, Lf3/m;->b:Lf3/v;

    .line 661
    .line 662
    iget v6, v3, Lf3/v;->b:I

    .line 663
    .line 664
    if-ne v13, v6, :cond_1b

    .line 665
    .line 666
    :cond_1a
    :goto_10
    const/4 v3, 0x1

    .line 667
    goto :goto_13

    .line 668
    :cond_1b
    iget-object v3, v3, Lf3/v;->c:[J

    .line 669
    .line 670
    aget-wide v6, v3, v13

    .line 671
    .line 672
    iget-object v3, v1, Lf3/n;->D:[[J

    .line 673
    .line 674
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 675
    .line 676
    .line 677
    aget-object v3, v3, v12

    .line 678
    .line 679
    aget-wide v37, v3, v13

    .line 680
    .line 681
    sub-long/2addr v6, v4

    .line 682
    const-wide/16 v25, 0x0

    .line 683
    .line 684
    cmp-long v3, v6, v25

    .line 685
    .line 686
    if-ltz v3, :cond_1d

    .line 687
    .line 688
    cmp-long v3, v6, v21

    .line 689
    .line 690
    if-ltz v3, :cond_1c

    .line 691
    .line 692
    goto :goto_11

    .line 693
    :cond_1c
    const/4 v3, 0x0

    .line 694
    goto :goto_12

    .line 695
    :cond_1d
    :goto_11
    const/4 v3, 0x1

    .line 696
    :goto_12
    if-nez v3, :cond_1e

    .line 697
    .line 698
    if-nez v11, :cond_1f

    .line 699
    .line 700
    :cond_1e
    if-ne v3, v11, :cond_20

    .line 701
    .line 702
    cmp-long v13, v6, v32

    .line 703
    .line 704
    if-gez v13, :cond_20

    .line 705
    .line 706
    :cond_1f
    move v11, v3

    .line 707
    move-wide/from16 v32, v6

    .line 708
    .line 709
    move v9, v12

    .line 710
    move-wide/from16 v30, v37

    .line 711
    .line 712
    :cond_20
    cmp-long v6, v37, v16

    .line 713
    .line 714
    if-gez v6, :cond_1a

    .line 715
    .line 716
    move v10, v3

    .line 717
    move v8, v12

    .line 718
    move-wide/from16 v16, v37

    .line 719
    .line 720
    goto :goto_10

    .line 721
    :goto_13
    add-int/2addr v12, v3

    .line 722
    const/4 v13, 0x0

    .line 723
    goto :goto_f

    .line 724
    :cond_21
    const-wide v6, 0x7fffffffffffffffL

    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    cmp-long v3, v16, v6

    .line 730
    .line 731
    if-eqz v3, :cond_22

    .line 732
    .line 733
    if-eqz v10, :cond_22

    .line 734
    .line 735
    const-wide/32 v6, 0xa00000

    .line 736
    .line 737
    .line 738
    add-long v16, v16, v6

    .line 739
    .line 740
    cmp-long v3, v30, v16

    .line 741
    .line 742
    if-gez v3, :cond_23

    .line 743
    .line 744
    :cond_22
    move v8, v9

    .line 745
    :cond_23
    iput v8, v1, Lf3/n;->q:I

    .line 746
    .line 747
    const/4 v3, -0x1

    .line 748
    if-ne v8, v3, :cond_24

    .line 749
    .line 750
    const/4 v5, -0x1

    .line 751
    goto/16 :goto_1f

    .line 752
    .line 753
    :cond_24
    iget-object v3, v1, Lf3/n;->C:[Lf3/m;

    .line 754
    .line 755
    iget v6, v1, Lf3/n;->q:I

    .line 756
    .line 757
    aget-object v3, v3, v6

    .line 758
    .line 759
    iget-object v13, v3, Lf3/m;->c:Ll2/j0;

    .line 760
    .line 761
    iget v12, v3, Lf3/m;->e:I

    .line 762
    .line 763
    iget-object v11, v3, Lf3/m;->b:Lf3/v;

    .line 764
    .line 765
    iget-object v6, v11, Lf3/v;->c:[J

    .line 766
    .line 767
    aget-wide v7, v6, v12

    .line 768
    .line 769
    iget-wide v9, v1, Lf3/n;->A:J

    .line 770
    .line 771
    add-long/2addr v7, v9

    .line 772
    iget-object v6, v11, Lf3/v;->d:[I

    .line 773
    .line 774
    aget v9, v6, v12

    .line 775
    .line 776
    sub-long v4, v7, v4

    .line 777
    .line 778
    iget v10, v1, Lf3/n;->r:I

    .line 779
    .line 780
    move-wide/from16 v16, v7

    .line 781
    .line 782
    int-to-long v7, v10

    .line 783
    add-long/2addr v4, v7

    .line 784
    const-wide/16 v7, 0x0

    .line 785
    .line 786
    cmp-long v10, v4, v7

    .line 787
    .line 788
    if-ltz v10, :cond_25

    .line 789
    .line 790
    cmp-long v7, v4, v21

    .line 791
    .line 792
    if-ltz v7, :cond_26

    .line 793
    .line 794
    :cond_25
    move-wide/from16 v7, v16

    .line 795
    .line 796
    goto/16 :goto_1e

    .line 797
    .line 798
    :cond_26
    iget-object v2, v3, Lf3/m;->a:Lf3/s;

    .line 799
    .line 800
    iget v7, v2, Lf3/s;->h:I

    .line 801
    .line 802
    const/4 v8, 0x1

    .line 803
    if-ne v7, v8, :cond_27

    .line 804
    .line 805
    add-long v4, v4, v23

    .line 806
    .line 807
    add-int/lit8 v9, v9, -0x8

    .line 808
    .line 809
    :cond_27
    long-to-int v5, v4

    .line 810
    invoke-interface {v0, v5}, Ll2/p;->i(I)V

    .line 811
    .line 812
    .line 813
    iget-object v4, v2, Lf3/s;->g:Lr1/p;

    .line 814
    .line 815
    iget-object v5, v4, Lr1/p;->o:Ljava/lang/String;

    .line 816
    .line 817
    const-string v7, "video/avc"

    .line 818
    .line 819
    invoke-static {v5, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 820
    .line 821
    .line 822
    move-result v5

    .line 823
    iget-object v7, v4, Lr1/p;->o:Ljava/lang/String;

    .line 824
    .line 825
    if-eqz v5, :cond_29

    .line 826
    .line 827
    and-int/lit8 v5, v15, 0x20

    .line 828
    .line 829
    if-eqz v5, :cond_28

    .line 830
    .line 831
    goto :goto_14

    .line 832
    :cond_28
    const/4 v5, 0x1

    .line 833
    goto :goto_15

    .line 834
    :cond_29
    const-string v5, "video/hevc"

    .line 835
    .line 836
    invoke-static {v7, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 837
    .line 838
    .line 839
    move-result v5

    .line 840
    if-eqz v5, :cond_28

    .line 841
    .line 842
    and-int/lit16 v5, v15, 0x80

    .line 843
    .line 844
    if-eqz v5, :cond_28

    .line 845
    .line 846
    :goto_14
    const/4 v5, 0x1

    .line 847
    goto :goto_16

    .line 848
    :goto_15
    iput-boolean v5, v1, Lf3/n;->u:Z

    .line 849
    .line 850
    :goto_16
    iget v2, v2, Lf3/s;->k:I

    .line 851
    .line 852
    iget-object v15, v3, Lf3/m;->d:Ll2/k0;

    .line 853
    .line 854
    if-eqz v2, :cond_30

    .line 855
    .line 856
    iget-object v7, v1, Lf3/n;->e:Lu1/q;

    .line 857
    .line 858
    iget-object v8, v7, Lu1/q;->a:[B

    .line 859
    .line 860
    const/4 v10, 0x0

    .line 861
    aput-byte v10, v8, v10

    .line 862
    .line 863
    aput-byte v10, v8, v5

    .line 864
    .line 865
    const/4 v5, 0x2

    .line 866
    aput-byte v10, v8, v5

    .line 867
    .line 868
    const/4 v5, 0x4

    .line 869
    rsub-int/lit8 v10, v2, 0x4

    .line 870
    .line 871
    add-int/2addr v9, v10

    .line 872
    :goto_17
    iget v5, v1, Lf3/n;->s:I

    .line 873
    .line 874
    if-ge v5, v9, :cond_2f

    .line 875
    .line 876
    iget v5, v1, Lf3/n;->t:I

    .line 877
    .line 878
    if-nez v5, :cond_2e

    .line 879
    .line 880
    iget-boolean v5, v1, Lf3/n;->u:Z

    .line 881
    .line 882
    if-nez v5, :cond_2a

    .line 883
    .line 884
    invoke-static {v4}, Lv1/o;->g(Lr1/p;)I

    .line 885
    .line 886
    .line 887
    move-result v5

    .line 888
    add-int/2addr v5, v2

    .line 889
    aget v14, v6, v12

    .line 890
    .line 891
    move-object/from16 v18, v6

    .line 892
    .line 893
    iget v6, v1, Lf3/n;->r:I

    .line 894
    .line 895
    sub-int/2addr v14, v6

    .line 896
    if-gt v5, v14, :cond_2b

    .line 897
    .line 898
    invoke-static {v4}, Lv1/o;->g(Lr1/p;)I

    .line 899
    .line 900
    .line 901
    move-result v5

    .line 902
    add-int v6, v2, v5

    .line 903
    .line 904
    goto :goto_18

    .line 905
    :cond_2a
    move-object/from16 v18, v6

    .line 906
    .line 907
    :cond_2b
    move v6, v2

    .line 908
    const/4 v5, 0x0

    .line 909
    :goto_18
    invoke-interface {v0, v8, v10, v6}, Ll2/p;->readFully([BII)V

    .line 910
    .line 911
    .line 912
    iget v14, v1, Lf3/n;->r:I

    .line 913
    .line 914
    add-int/2addr v14, v6

    .line 915
    iput v14, v1, Lf3/n;->r:I

    .line 916
    .line 917
    const/4 v6, 0x0

    .line 918
    invoke-virtual {v7, v6}, Lu1/q;->O(I)V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v7}, Lu1/q;->o()I

    .line 922
    .line 923
    .line 924
    move-result v14

    .line 925
    if-ltz v14, :cond_2d

    .line 926
    .line 927
    sub-int/2addr v14, v5

    .line 928
    iput v14, v1, Lf3/n;->t:I

    .line 929
    .line 930
    iget-object v14, v1, Lf3/n;->d:Lu1/q;

    .line 931
    .line 932
    invoke-virtual {v14, v6}, Lu1/q;->O(I)V

    .line 933
    .line 934
    .line 935
    const/4 v6, 0x4

    .line 936
    invoke-interface {v13, v6, v14}, Ll2/j0;->a(ILu1/q;)V

    .line 937
    .line 938
    .line 939
    iget v14, v1, Lf3/n;->s:I

    .line 940
    .line 941
    add-int/2addr v14, v6

    .line 942
    iput v14, v1, Lf3/n;->s:I

    .line 943
    .line 944
    if-lez v5, :cond_2c

    .line 945
    .line 946
    invoke-interface {v13, v5, v7}, Ll2/j0;->a(ILu1/q;)V

    .line 947
    .line 948
    .line 949
    iget v6, v1, Lf3/n;->s:I

    .line 950
    .line 951
    add-int/2addr v6, v5

    .line 952
    iput v6, v1, Lf3/n;->s:I

    .line 953
    .line 954
    invoke-static {v8, v5, v4}, Lv1/o;->f([BILr1/p;)Z

    .line 955
    .line 956
    .line 957
    move-result v5

    .line 958
    if-eqz v5, :cond_2c

    .line 959
    .line 960
    const/4 v5, 0x1

    .line 961
    iput-boolean v5, v1, Lf3/n;->u:Z

    .line 962
    .line 963
    :cond_2c
    :goto_19
    move-object/from16 v6, v18

    .line 964
    .line 965
    goto :goto_17

    .line 966
    :cond_2d
    const-string v0, "Invalid NAL length"

    .line 967
    .line 968
    const/4 v2, 0x0

    .line 969
    invoke-static {v2, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 970
    .line 971
    .line 972
    move-result-object v0

    .line 973
    throw v0

    .line 974
    :cond_2e
    move-object/from16 v18, v6

    .line 975
    .line 976
    const/4 v6, 0x0

    .line 977
    invoke-interface {v13, v0, v5, v6}, Ll2/j0;->e(Lr1/h;IZ)I

    .line 978
    .line 979
    .line 980
    move-result v5

    .line 981
    iget v6, v1, Lf3/n;->r:I

    .line 982
    .line 983
    add-int/2addr v6, v5

    .line 984
    iput v6, v1, Lf3/n;->r:I

    .line 985
    .line 986
    iget v6, v1, Lf3/n;->s:I

    .line 987
    .line 988
    add-int/2addr v6, v5

    .line 989
    iput v6, v1, Lf3/n;->s:I

    .line 990
    .line 991
    iget v6, v1, Lf3/n;->t:I

    .line 992
    .line 993
    sub-int/2addr v6, v5

    .line 994
    iput v6, v1, Lf3/n;->t:I

    .line 995
    .line 996
    goto :goto_19

    .line 997
    :cond_2f
    move v0, v9

    .line 998
    goto/16 :goto_1c

    .line 999
    .line 1000
    :cond_30
    const-string v2, "audio/ac4"

    .line 1001
    .line 1002
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v2

    .line 1006
    if-eqz v2, :cond_32

    .line 1007
    .line 1008
    iget v2, v1, Lf3/n;->s:I

    .line 1009
    .line 1010
    if-nez v2, :cond_31

    .line 1011
    .line 1012
    invoke-static {v9, v14}, Ll2/b;->f(ILu1/q;)V

    .line 1013
    .line 1014
    .line 1015
    const/4 v4, 0x7

    .line 1016
    invoke-interface {v13, v4, v14}, Ll2/j0;->a(ILu1/q;)V

    .line 1017
    .line 1018
    .line 1019
    iget v2, v1, Lf3/n;->s:I

    .line 1020
    .line 1021
    add-int/2addr v2, v4

    .line 1022
    iput v2, v1, Lf3/n;->s:I

    .line 1023
    .line 1024
    goto :goto_1a

    .line 1025
    :cond_31
    const/4 v4, 0x7

    .line 1026
    :goto_1a
    add-int/2addr v9, v4

    .line 1027
    goto :goto_1b

    .line 1028
    :cond_32
    iget-object v2, v3, Lf3/m;->f:Lr1/p;

    .line 1029
    .line 1030
    if-eqz v2, :cond_34

    .line 1031
    .line 1032
    const-string v2, "audio/mpeg"

    .line 1033
    .line 1034
    invoke-static {v7, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1035
    .line 1036
    .line 1037
    move-result v2

    .line 1038
    if-eqz v2, :cond_34

    .line 1039
    .line 1040
    iget-object v2, v3, Lf3/m;->f:Lr1/p;

    .line 1041
    .line 1042
    const/4 v4, 0x4

    .line 1043
    invoke-virtual {v14, v4}, Lu1/q;->L(I)V

    .line 1044
    .line 1045
    .line 1046
    iget-object v5, v14, Lu1/q;->a:[B

    .line 1047
    .line 1048
    const/4 v6, 0x0

    .line 1049
    invoke-interface {v0, v6, v4, v5}, Ll2/p;->a(II[B)V

    .line 1050
    .line 1051
    .line 1052
    invoke-interface/range {p1 .. p1}, Ll2/p;->h()V

    .line 1053
    .line 1054
    .line 1055
    new-instance v4, Ll2/a0;

    .line 1056
    .line 1057
    invoke-direct {v4}, Ll2/a0;-><init>()V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v14}, Lu1/q;->o()I

    .line 1061
    .line 1062
    .line 1063
    move-result v5

    .line 1064
    invoke-virtual {v4, v5}, Ll2/a0;->a(I)Z

    .line 1065
    .line 1066
    .line 1067
    move-result v5

    .line 1068
    if-eqz v5, :cond_33

    .line 1069
    .line 1070
    iget-object v5, v2, Lr1/p;->o:Ljava/lang/String;

    .line 1071
    .line 1072
    iget-object v6, v4, Ll2/a0;->g:Ljava/io/Serializable;

    .line 1073
    .line 1074
    check-cast v6, Ljava/lang/String;

    .line 1075
    .line 1076
    invoke-static {v5, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1077
    .line 1078
    .line 1079
    move-result v5

    .line 1080
    if-nez v5, :cond_33

    .line 1081
    .line 1082
    new-instance v5, Lr1/o;

    .line 1083
    .line 1084
    invoke-direct {v5, v2}, Lr1/o;-><init>(Lr1/p;)V

    .line 1085
    .line 1086
    .line 1087
    iget-object v2, v4, Ll2/a0;->g:Ljava/io/Serializable;

    .line 1088
    .line 1089
    check-cast v2, Ljava/lang/String;

    .line 1090
    .line 1091
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1092
    .line 1093
    .line 1094
    invoke-static {v2}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v2

    .line 1098
    iput-object v2, v5, Lr1/o;->n:Ljava/lang/String;

    .line 1099
    .line 1100
    new-instance v2, Lr1/p;

    .line 1101
    .line 1102
    invoke-direct {v2, v5}, Lr1/p;-><init>(Lr1/o;)V

    .line 1103
    .line 1104
    .line 1105
    :cond_33
    iget-object v4, v3, Lf3/m;->c:Ll2/j0;

    .line 1106
    .line 1107
    invoke-interface {v4, v2}, Ll2/j0;->g(Lr1/p;)V

    .line 1108
    .line 1109
    .line 1110
    const/4 v2, 0x0

    .line 1111
    iput-object v2, v3, Lf3/m;->f:Lr1/p;

    .line 1112
    .line 1113
    goto :goto_1b

    .line 1114
    :cond_34
    if-eqz v15, :cond_35

    .line 1115
    .line 1116
    invoke-virtual {v15, v0}, Ll2/k0;->c(Ll2/p;)V

    .line 1117
    .line 1118
    .line 1119
    :cond_35
    :goto_1b
    iget v2, v1, Lf3/n;->s:I

    .line 1120
    .line 1121
    if-ge v2, v9, :cond_2f

    .line 1122
    .line 1123
    sub-int v2, v9, v2

    .line 1124
    .line 1125
    const/4 v4, 0x0

    .line 1126
    invoke-interface {v13, v0, v2, v4}, Ll2/j0;->e(Lr1/h;IZ)I

    .line 1127
    .line 1128
    .line 1129
    move-result v2

    .line 1130
    iget v4, v1, Lf3/n;->r:I

    .line 1131
    .line 1132
    add-int/2addr v4, v2

    .line 1133
    iput v4, v1, Lf3/n;->r:I

    .line 1134
    .line 1135
    iget v4, v1, Lf3/n;->s:I

    .line 1136
    .line 1137
    add-int/2addr v4, v2

    .line 1138
    iput v4, v1, Lf3/n;->s:I

    .line 1139
    .line 1140
    iget v4, v1, Lf3/n;->t:I

    .line 1141
    .line 1142
    sub-int/2addr v4, v2

    .line 1143
    iput v4, v1, Lf3/n;->t:I

    .line 1144
    .line 1145
    goto :goto_1b

    .line 1146
    :goto_1c
    iget-object v2, v11, Lf3/v;->f:[J

    .line 1147
    .line 1148
    aget-wide v4, v2, v12

    .line 1149
    .line 1150
    iget-object v2, v11, Lf3/v;->g:[I

    .line 1151
    .line 1152
    aget v2, v2, v12

    .line 1153
    .line 1154
    iget-boolean v6, v1, Lf3/n;->u:Z

    .line 1155
    .line 1156
    if-nez v6, :cond_36

    .line 1157
    .line 1158
    const/high16 v6, 0x4000000

    .line 1159
    .line 1160
    or-int/2addr v2, v6

    .line 1161
    :cond_36
    if-eqz v15, :cond_37

    .line 1162
    .line 1163
    const/4 v14, 0x0

    .line 1164
    const/16 v16, 0x0

    .line 1165
    .line 1166
    move-object v6, v15

    .line 1167
    move-object v7, v13

    .line 1168
    move-wide v8, v4

    .line 1169
    move v10, v2

    .line 1170
    move-object v2, v11

    .line 1171
    move v11, v0

    .line 1172
    move v0, v12

    .line 1173
    move v12, v14

    .line 1174
    move-object v14, v13

    .line 1175
    move-object/from16 v13, v16

    .line 1176
    .line 1177
    invoke-virtual/range {v6 .. v13}, Ll2/k0;->b(Ll2/j0;JIIILl2/i0;)V

    .line 1178
    .line 1179
    .line 1180
    const/4 v4, 0x1

    .line 1181
    add-int/lit8 v12, v0, 0x1

    .line 1182
    .line 1183
    iget v0, v2, Lf3/v;->b:I

    .line 1184
    .line 1185
    if-ne v12, v0, :cond_38

    .line 1186
    .line 1187
    const/4 v2, 0x0

    .line 1188
    invoke-virtual {v15, v14, v2}, Ll2/k0;->a(Ll2/j0;Ll2/i0;)V

    .line 1189
    .line 1190
    .line 1191
    goto :goto_1d

    .line 1192
    :cond_37
    move-object v14, v13

    .line 1193
    const/4 v11, 0x0

    .line 1194
    const/4 v12, 0x0

    .line 1195
    move-object v6, v14

    .line 1196
    move-wide v7, v4

    .line 1197
    move v9, v2

    .line 1198
    move v10, v0

    .line 1199
    invoke-interface/range {v6 .. v12}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 1200
    .line 1201
    .line 1202
    :cond_38
    :goto_1d
    iget v0, v3, Lf3/m;->e:I

    .line 1203
    .line 1204
    const/4 v2, 0x1

    .line 1205
    add-int/2addr v0, v2

    .line 1206
    iput v0, v3, Lf3/m;->e:I

    .line 1207
    .line 1208
    const/4 v0, -0x1

    .line 1209
    iput v0, v1, Lf3/n;->q:I

    .line 1210
    .line 1211
    const/4 v0, 0x0

    .line 1212
    iput v0, v1, Lf3/n;->r:I

    .line 1213
    .line 1214
    iput v0, v1, Lf3/n;->s:I

    .line 1215
    .line 1216
    iput v0, v1, Lf3/n;->t:I

    .line 1217
    .line 1218
    iput-boolean v0, v1, Lf3/n;->u:Z

    .line 1219
    .line 1220
    const/4 v5, 0x0

    .line 1221
    goto :goto_1f

    .line 1222
    :goto_1e
    iput-wide v7, v2, Ldd/c;->b:J

    .line 1223
    .line 1224
    const/4 v5, 0x1

    .line 1225
    :goto_1f
    return v5

    .line 1226
    :cond_39
    const/4 v4, 0x7

    .line 1227
    const/4 v5, 0x3

    .line 1228
    iget-wide v8, v1, Lf3/n;->n:J

    .line 1229
    .line 1230
    iget v3, v1, Lf3/n;->o:I

    .line 1231
    .line 1232
    int-to-long v10, v3

    .line 1233
    sub-long/2addr v8, v10

    .line 1234
    invoke-interface/range {p1 .. p1}, Ll2/p;->getPosition()J

    .line 1235
    .line 1236
    .line 1237
    move-result-wide v10

    .line 1238
    add-long/2addr v10, v8

    .line 1239
    iget-object v3, v1, Lf3/n;->p:Lu1/q;

    .line 1240
    .line 1241
    if-eqz v3, :cond_42

    .line 1242
    .line 1243
    iget-object v6, v3, Lu1/q;->a:[B

    .line 1244
    .line 1245
    iget v12, v1, Lf3/n;->o:I

    .line 1246
    .line 1247
    long-to-int v9, v8

    .line 1248
    invoke-interface {v0, v6, v12, v9}, Ll2/p;->readFully([BII)V

    .line 1249
    .line 1250
    .line 1251
    iget v6, v1, Lf3/n;->m:I

    .line 1252
    .line 1253
    const v8, 0x66747970

    .line 1254
    .line 1255
    .line 1256
    if-ne v6, v8, :cond_41

    .line 1257
    .line 1258
    const/4 v6, 0x1

    .line 1259
    iput-boolean v6, v1, Lf3/n;->v:Z

    .line 1260
    .line 1261
    invoke-virtual {v3, v7}, Lu1/q;->O(I)V

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v3}, Lu1/q;->o()I

    .line 1265
    .line 1266
    .line 1267
    move-result v6

    .line 1268
    const v8, 0x71742020

    .line 1269
    .line 1270
    .line 1271
    const v9, 0x68656963

    .line 1272
    .line 1273
    .line 1274
    if-eq v6, v9, :cond_3b

    .line 1275
    .line 1276
    if-eq v6, v8, :cond_3a

    .line 1277
    .line 1278
    const/4 v6, 0x0

    .line 1279
    goto :goto_20

    .line 1280
    :cond_3a
    const/4 v6, 0x1

    .line 1281
    goto :goto_20

    .line 1282
    :cond_3b
    const/4 v6, 0x2

    .line 1283
    :goto_20
    if-eqz v6, :cond_3c

    .line 1284
    .line 1285
    goto :goto_22

    .line 1286
    :cond_3c
    const/4 v6, 0x4

    .line 1287
    invoke-virtual {v3, v6}, Lu1/q;->P(I)V

    .line 1288
    .line 1289
    .line 1290
    :cond_3d
    invoke-virtual {v3}, Lu1/q;->a()I

    .line 1291
    .line 1292
    .line 1293
    move-result v6

    .line 1294
    if-lez v6, :cond_40

    .line 1295
    .line 1296
    invoke-virtual {v3}, Lu1/q;->o()I

    .line 1297
    .line 1298
    .line 1299
    move-result v6

    .line 1300
    if-eq v6, v9, :cond_3f

    .line 1301
    .line 1302
    if-eq v6, v8, :cond_3e

    .line 1303
    .line 1304
    const/4 v6, 0x0

    .line 1305
    goto :goto_21

    .line 1306
    :cond_3e
    const/4 v6, 0x1

    .line 1307
    goto :goto_21

    .line 1308
    :cond_3f
    const/4 v6, 0x2

    .line 1309
    :goto_21
    if-eqz v6, :cond_3d

    .line 1310
    .line 1311
    goto :goto_22

    .line 1312
    :cond_40
    const/4 v6, 0x0

    .line 1313
    :goto_22
    iput v6, v1, Lf3/n;->E:I

    .line 1314
    .line 1315
    goto :goto_23

    .line 1316
    :cond_41
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1317
    .line 1318
    .line 1319
    move-result v6

    .line 1320
    if-nez v6, :cond_44

    .line 1321
    .line 1322
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v6

    .line 1326
    check-cast v6, Lv1/c;

    .line 1327
    .line 1328
    new-instance v8, Lv1/d;

    .line 1329
    .line 1330
    iget v9, v1, Lf3/n;->m:I

    .line 1331
    .line 1332
    invoke-direct {v8, v9, v3}, Lv1/d;-><init>(ILu1/q;)V

    .line 1333
    .line 1334
    .line 1335
    iget-object v3, v6, Lv1/c;->d:Ljava/util/ArrayList;

    .line 1336
    .line 1337
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    .line 1339
    .line 1340
    goto :goto_23

    .line 1341
    :cond_42
    iget-boolean v3, v1, Lf3/n;->v:Z

    .line 1342
    .line 1343
    if-nez v3, :cond_43

    .line 1344
    .line 1345
    iget v3, v1, Lf3/n;->m:I

    .line 1346
    .line 1347
    const v6, 0x6d646174

    .line 1348
    .line 1349
    .line 1350
    if-ne v3, v6, :cond_43

    .line 1351
    .line 1352
    const/4 v3, 0x1

    .line 1353
    iput v3, v1, Lf3/n;->E:I

    .line 1354
    .line 1355
    :cond_43
    cmp-long v3, v8, v21

    .line 1356
    .line 1357
    if-gez v3, :cond_45

    .line 1358
    .line 1359
    long-to-int v3, v8

    .line 1360
    invoke-interface {v0, v3}, Ll2/p;->i(I)V

    .line 1361
    .line 1362
    .line 1363
    :cond_44
    :goto_23
    const/4 v3, 0x0

    .line 1364
    goto :goto_24

    .line 1365
    :cond_45
    invoke-interface/range {p1 .. p1}, Ll2/p;->getPosition()J

    .line 1366
    .line 1367
    .line 1368
    move-result-wide v12

    .line 1369
    add-long/2addr v12, v8

    .line 1370
    iput-wide v12, v2, Ldd/c;->b:J

    .line 1371
    .line 1372
    const/4 v3, 0x1

    .line 1373
    :goto_24
    invoke-virtual {v1, v10, v11}, Lf3/n;->h(J)V

    .line 1374
    .line 1375
    .line 1376
    iget-boolean v6, v1, Lf3/n;->w:Z

    .line 1377
    .line 1378
    if-eqz v6, :cond_46

    .line 1379
    .line 1380
    const/4 v6, 0x1

    .line 1381
    iput-boolean v6, v1, Lf3/n;->y:Z

    .line 1382
    .line 1383
    iget-wide v8, v1, Lf3/n;->x:J

    .line 1384
    .line 1385
    iput-wide v8, v2, Ldd/c;->b:J

    .line 1386
    .line 1387
    const/4 v3, 0x0

    .line 1388
    iput-boolean v3, v1, Lf3/n;->w:Z

    .line 1389
    .line 1390
    const/4 v3, 0x1

    .line 1391
    :cond_46
    if-eqz v3, :cond_47

    .line 1392
    .line 1393
    iget v3, v1, Lf3/n;->l:I

    .line 1394
    .line 1395
    const/4 v6, 0x2

    .line 1396
    if-eq v3, v6, :cond_47

    .line 1397
    .line 1398
    const/4 v3, 0x1

    .line 1399
    goto :goto_25

    .line 1400
    :cond_47
    const/4 v3, 0x0

    .line 1401
    :goto_25
    if-eqz v3, :cond_48

    .line 1402
    .line 1403
    const/4 v3, 0x1

    .line 1404
    return v3

    .line 1405
    :cond_48
    const/4 v4, 0x3

    .line 1406
    const/4 v5, 0x0

    .line 1407
    const/4 v6, 0x4

    .line 1408
    :goto_26
    const/4 v8, 0x2

    .line 1409
    const/4 v9, 0x1

    .line 1410
    const/4 v11, -0x1

    .line 1411
    goto/16 :goto_0

    .line 1412
    .line 1413
    :cond_49
    const/4 v3, 0x1

    .line 1414
    const/4 v4, 0x7

    .line 1415
    const/4 v5, 0x3

    .line 1416
    iget v6, v1, Lf3/n;->o:I

    .line 1417
    .line 1418
    iget-object v8, v1, Lf3/n;->g:Lu1/q;

    .line 1419
    .line 1420
    if-nez v6, :cond_4d

    .line 1421
    .line 1422
    iget-object v6, v8, Lu1/q;->a:[B

    .line 1423
    .line 1424
    const/4 v9, 0x0

    .line 1425
    invoke-interface {v0, v6, v9, v7, v3}, Ll2/p;->b([BIIZ)Z

    .line 1426
    .line 1427
    .line 1428
    move-result v6

    .line 1429
    if-nez v6, :cond_4c

    .line 1430
    .line 1431
    iget v3, v1, Lf3/n;->E:I

    .line 1432
    .line 1433
    const/4 v6, 0x2

    .line 1434
    if-ne v3, v6, :cond_4b

    .line 1435
    .line 1436
    and-int/lit8 v3, v15, 0x2

    .line 1437
    .line 1438
    if-eqz v3, :cond_4b

    .line 1439
    .line 1440
    iget-object v3, v1, Lf3/n;->B:Ll2/q;

    .line 1441
    .line 1442
    const/4 v10, 0x4

    .line 1443
    invoke-interface {v3, v9, v10}, Ll2/q;->z(II)Ll2/j0;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v3

    .line 1447
    iget-object v8, v1, Lf3/n;->F:Lu2/b;

    .line 1448
    .line 1449
    if-nez v8, :cond_4a

    .line 1450
    .line 1451
    const/4 v13, 0x0

    .line 1452
    goto :goto_27

    .line 1453
    :cond_4a
    new-instance v13, Lr1/d0;

    .line 1454
    .line 1455
    const/4 v11, 0x1

    .line 1456
    new-array v12, v11, [Lr1/c0;

    .line 1457
    .line 1458
    aput-object v8, v12, v9

    .line 1459
    .line 1460
    invoke-direct {v13, v12}, Lr1/d0;-><init>([Lr1/c0;)V

    .line 1461
    .line 1462
    .line 1463
    :goto_27
    new-instance v8, Lr1/o;

    .line 1464
    .line 1465
    invoke-direct {v8}, Lr1/o;-><init>()V

    .line 1466
    .line 1467
    .line 1468
    iput-object v13, v8, Lr1/o;->k:Lr1/d0;

    .line 1469
    .line 1470
    new-instance v9, Lr1/p;

    .line 1471
    .line 1472
    invoke-direct {v9, v8}, Lr1/p;-><init>(Lr1/o;)V

    .line 1473
    .line 1474
    .line 1475
    invoke-interface {v3, v9}, Ll2/j0;->g(Lr1/p;)V

    .line 1476
    .line 1477
    .line 1478
    iget-object v3, v1, Lf3/n;->B:Ll2/q;

    .line 1479
    .line 1480
    invoke-interface {v3}, Ll2/q;->q()V

    .line 1481
    .line 1482
    .line 1483
    iget-object v3, v1, Lf3/n;->B:Ll2/q;

    .line 1484
    .line 1485
    new-instance v8, Ll2/s;

    .line 1486
    .line 1487
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    invoke-direct {v8, v11, v12}, Ll2/s;-><init>(J)V

    .line 1493
    .line 1494
    .line 1495
    invoke-interface {v3, v8}, Ll2/q;->s(Ll2/c0;)V

    .line 1496
    .line 1497
    .line 1498
    goto :goto_28

    .line 1499
    :cond_4b
    const/4 v10, 0x4

    .line 1500
    :goto_28
    const/4 v3, 0x0

    .line 1501
    const/16 v5, 0x8

    .line 1502
    .line 1503
    const/4 v15, 0x1

    .line 1504
    const/16 v29, 0x0

    .line 1505
    .line 1506
    goto/16 :goto_32

    .line 1507
    .line 1508
    :cond_4c
    const/4 v6, 0x2

    .line 1509
    const/4 v10, 0x4

    .line 1510
    iput v7, v1, Lf3/n;->o:I

    .line 1511
    .line 1512
    const/4 v3, 0x0

    .line 1513
    invoke-virtual {v8, v3}, Lu1/q;->O(I)V

    .line 1514
    .line 1515
    .line 1516
    invoke-virtual {v8}, Lu1/q;->D()J

    .line 1517
    .line 1518
    .line 1519
    move-result-wide v11

    .line 1520
    iput-wide v11, v1, Lf3/n;->n:J

    .line 1521
    .line 1522
    invoke-virtual {v8}, Lu1/q;->o()I

    .line 1523
    .line 1524
    .line 1525
    move-result v3

    .line 1526
    iput v3, v1, Lf3/n;->m:I

    .line 1527
    .line 1528
    goto :goto_29

    .line 1529
    :cond_4d
    const/4 v6, 0x2

    .line 1530
    const/4 v10, 0x4

    .line 1531
    :goto_29
    iget-wide v11, v1, Lf3/n;->n:J

    .line 1532
    .line 1533
    const-wide/16 v21, 0x1

    .line 1534
    .line 1535
    cmp-long v3, v11, v21

    .line 1536
    .line 1537
    if-nez v3, :cond_4e

    .line 1538
    .line 1539
    iget-object v3, v8, Lu1/q;->a:[B

    .line 1540
    .line 1541
    invoke-interface {v0, v3, v7, v7}, Ll2/p;->readFully([BII)V

    .line 1542
    .line 1543
    .line 1544
    iget v3, v1, Lf3/n;->o:I

    .line 1545
    .line 1546
    add-int/2addr v3, v7

    .line 1547
    iput v3, v1, Lf3/n;->o:I

    .line 1548
    .line 1549
    invoke-virtual {v8}, Lu1/q;->H()J

    .line 1550
    .line 1551
    .line 1552
    move-result-wide v11

    .line 1553
    iput-wide v11, v1, Lf3/n;->n:J

    .line 1554
    .line 1555
    goto :goto_2a

    .line 1556
    :cond_4e
    const-wide/16 v21, 0x0

    .line 1557
    .line 1558
    cmp-long v3, v11, v21

    .line 1559
    .line 1560
    if-nez v3, :cond_50

    .line 1561
    .line 1562
    invoke-interface/range {p1 .. p1}, Ll2/p;->getLength()J

    .line 1563
    .line 1564
    .line 1565
    move-result-wide v11

    .line 1566
    cmp-long v3, v11, v16

    .line 1567
    .line 1568
    if-nez v3, :cond_4f

    .line 1569
    .line 1570
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v3

    .line 1574
    check-cast v3, Lv1/c;

    .line 1575
    .line 1576
    if-eqz v3, :cond_4f

    .line 1577
    .line 1578
    iget-wide v11, v3, Lv1/c;->c:J

    .line 1579
    .line 1580
    :cond_4f
    cmp-long v3, v11, v16

    .line 1581
    .line 1582
    if-eqz v3, :cond_50

    .line 1583
    .line 1584
    invoke-interface/range {p1 .. p1}, Ll2/p;->getPosition()J

    .line 1585
    .line 1586
    .line 1587
    move-result-wide v15

    .line 1588
    sub-long/2addr v11, v15

    .line 1589
    iget v3, v1, Lf3/n;->o:I

    .line 1590
    .line 1591
    int-to-long v4, v3

    .line 1592
    add-long/2addr v11, v4

    .line 1593
    iput-wide v11, v1, Lf3/n;->n:J

    .line 1594
    .line 1595
    :cond_50
    :goto_2a
    iget-wide v3, v1, Lf3/n;->n:J

    .line 1596
    .line 1597
    iget v5, v1, Lf3/n;->o:I

    .line 1598
    .line 1599
    int-to-long v11, v5

    .line 1600
    cmp-long v9, v3, v11

    .line 1601
    .line 1602
    if-gez v9, :cond_52

    .line 1603
    .line 1604
    iget v3, v1, Lf3/n;->m:I

    .line 1605
    .line 1606
    const v4, 0x66726565

    .line 1607
    .line 1608
    .line 1609
    if-ne v3, v4, :cond_51

    .line 1610
    .line 1611
    if-ne v5, v7, :cond_51

    .line 1612
    .line 1613
    iput-wide v11, v1, Lf3/n;->n:J

    .line 1614
    .line 1615
    goto :goto_2b

    .line 1616
    :cond_51
    const-string v0, "Atom size less than header length (unsupported)."

    .line 1617
    .line 1618
    invoke-static {v0}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v0

    .line 1622
    throw v0

    .line 1623
    :cond_52
    :goto_2b
    iget v3, v1, Lf3/n;->m:I

    .line 1624
    .line 1625
    const v4, 0x6d6f6f76

    .line 1626
    .line 1627
    .line 1628
    const v9, 0x6d657461

    .line 1629
    .line 1630
    .line 1631
    if-eq v3, v4, :cond_53

    .line 1632
    .line 1633
    const v4, 0x7472616b

    .line 1634
    .line 1635
    .line 1636
    if-eq v3, v4, :cond_53

    .line 1637
    .line 1638
    const v4, 0x6d646961

    .line 1639
    .line 1640
    .line 1641
    if-eq v3, v4, :cond_53

    .line 1642
    .line 1643
    const v4, 0x6d696e66

    .line 1644
    .line 1645
    .line 1646
    if-eq v3, v4, :cond_53

    .line 1647
    .line 1648
    const v4, 0x7374626c

    .line 1649
    .line 1650
    .line 1651
    if-eq v3, v4, :cond_53

    .line 1652
    .line 1653
    const v4, 0x65647473

    .line 1654
    .line 1655
    .line 1656
    if-eq v3, v4, :cond_53

    .line 1657
    .line 1658
    if-eq v3, v9, :cond_53

    .line 1659
    .line 1660
    const v4, 0x61787465

    .line 1661
    .line 1662
    .line 1663
    if-ne v3, v4, :cond_54

    .line 1664
    .line 1665
    :cond_53
    const/4 v15, 0x1

    .line 1666
    goto/16 :goto_2f

    .line 1667
    .line 1668
    :cond_54
    const v4, 0x6d646864

    .line 1669
    .line 1670
    .line 1671
    if-eq v3, v4, :cond_57

    .line 1672
    .line 1673
    const v4, 0x6d766864

    .line 1674
    .line 1675
    .line 1676
    if-eq v3, v4, :cond_57

    .line 1677
    .line 1678
    const v4, 0x68646c72    # 4.3148E24f

    .line 1679
    .line 1680
    .line 1681
    if-eq v3, v4, :cond_57

    .line 1682
    .line 1683
    const v4, 0x73747364

    .line 1684
    .line 1685
    .line 1686
    if-eq v3, v4, :cond_57

    .line 1687
    .line 1688
    const v4, 0x73747473

    .line 1689
    .line 1690
    .line 1691
    if-eq v3, v4, :cond_57

    .line 1692
    .line 1693
    const v4, 0x73747373

    .line 1694
    .line 1695
    .line 1696
    if-eq v3, v4, :cond_57

    .line 1697
    .line 1698
    const v4, 0x63747473

    .line 1699
    .line 1700
    .line 1701
    if-eq v3, v4, :cond_57

    .line 1702
    .line 1703
    const v4, 0x656c7374

    .line 1704
    .line 1705
    .line 1706
    if-eq v3, v4, :cond_57

    .line 1707
    .line 1708
    const v4, 0x73747363

    .line 1709
    .line 1710
    .line 1711
    if-eq v3, v4, :cond_57

    .line 1712
    .line 1713
    const v4, 0x7374737a

    .line 1714
    .line 1715
    .line 1716
    if-eq v3, v4, :cond_57

    .line 1717
    .line 1718
    const v4, 0x73747a32

    .line 1719
    .line 1720
    .line 1721
    if-eq v3, v4, :cond_57

    .line 1722
    .line 1723
    const v4, 0x7374636f

    .line 1724
    .line 1725
    .line 1726
    if-eq v3, v4, :cond_57

    .line 1727
    .line 1728
    const v4, 0x636f3634

    .line 1729
    .line 1730
    .line 1731
    if-eq v3, v4, :cond_57

    .line 1732
    .line 1733
    const v4, 0x746b6864

    .line 1734
    .line 1735
    .line 1736
    if-eq v3, v4, :cond_57

    .line 1737
    .line 1738
    const v4, 0x66747970

    .line 1739
    .line 1740
    .line 1741
    if-eq v3, v4, :cond_57

    .line 1742
    .line 1743
    const v4, 0x75647461

    .line 1744
    .line 1745
    .line 1746
    if-eq v3, v4, :cond_57

    .line 1747
    .line 1748
    const v4, 0x6b657973

    .line 1749
    .line 1750
    .line 1751
    if-eq v3, v4, :cond_57

    .line 1752
    .line 1753
    const v4, 0x696c7374

    .line 1754
    .line 1755
    .line 1756
    if-ne v3, v4, :cond_55

    .line 1757
    .line 1758
    goto :goto_2c

    .line 1759
    :cond_55
    invoke-interface/range {p1 .. p1}, Ll2/p;->getPosition()J

    .line 1760
    .line 1761
    .line 1762
    move-result-wide v3

    .line 1763
    iget v5, v1, Lf3/n;->o:I

    .line 1764
    .line 1765
    int-to-long v8, v5

    .line 1766
    sub-long v38, v3, v8

    .line 1767
    .line 1768
    iget v3, v1, Lf3/n;->m:I

    .line 1769
    .line 1770
    const v4, 0x6d707664

    .line 1771
    .line 1772
    .line 1773
    if-ne v3, v4, :cond_56

    .line 1774
    .line 1775
    new-instance v3, Lu2/b;

    .line 1776
    .line 1777
    add-long v42, v38, v8

    .line 1778
    .line 1779
    iget-wide v4, v1, Lf3/n;->n:J

    .line 1780
    .line 1781
    sub-long v44, v4, v8

    .line 1782
    .line 1783
    const-wide/16 v36, 0x0

    .line 1784
    .line 1785
    const-wide v40, -0x7fffffffffffffffL    # -4.9E-324

    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    move-object/from16 v35, v3

    .line 1791
    .line 1792
    invoke-direct/range {v35 .. v45}, Lu2/b;-><init>(JJJJJ)V

    .line 1793
    .line 1794
    .line 1795
    iput-object v3, v1, Lf3/n;->F:Lu2/b;

    .line 1796
    .line 1797
    :cond_56
    const/4 v3, 0x0

    .line 1798
    iput-object v3, v1, Lf3/n;->p:Lu1/q;

    .line 1799
    .line 1800
    const/4 v3, 0x1

    .line 1801
    iput v3, v1, Lf3/n;->l:I

    .line 1802
    .line 1803
    const/4 v3, 0x0

    .line 1804
    const/16 v5, 0x8

    .line 1805
    .line 1806
    const/4 v15, 0x1

    .line 1807
    goto/16 :goto_31

    .line 1808
    .line 1809
    :cond_57
    :goto_2c
    if-ne v5, v7, :cond_58

    .line 1810
    .line 1811
    const/4 v15, 0x1

    .line 1812
    goto :goto_2d

    .line 1813
    :cond_58
    const/4 v15, 0x0

    .line 1814
    :goto_2d
    invoke-static {v15}, La9/o;->t(Z)V

    .line 1815
    .line 1816
    .line 1817
    iget-wide v3, v1, Lf3/n;->n:J

    .line 1818
    .line 1819
    const-wide/32 v11, 0x7fffffff

    .line 1820
    .line 1821
    .line 1822
    cmp-long v5, v3, v11

    .line 1823
    .line 1824
    if-gtz v5, :cond_59

    .line 1825
    .line 1826
    const/4 v15, 0x1

    .line 1827
    goto :goto_2e

    .line 1828
    :cond_59
    const/4 v15, 0x0

    .line 1829
    :goto_2e
    invoke-static {v15}, La9/o;->t(Z)V

    .line 1830
    .line 1831
    .line 1832
    new-instance v3, Lu1/q;

    .line 1833
    .line 1834
    iget-wide v4, v1, Lf3/n;->n:J

    .line 1835
    .line 1836
    long-to-int v5, v4

    .line 1837
    invoke-direct {v3, v5}, Lu1/q;-><init>(I)V

    .line 1838
    .line 1839
    .line 1840
    iget-object v4, v8, Lu1/q;->a:[B

    .line 1841
    .line 1842
    iget-object v5, v3, Lu1/q;->a:[B

    .line 1843
    .line 1844
    const/4 v8, 0x0

    .line 1845
    invoke-static {v4, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1846
    .line 1847
    .line 1848
    iput-object v3, v1, Lf3/n;->p:Lu1/q;

    .line 1849
    .line 1850
    const/4 v15, 0x1

    .line 1851
    iput v15, v1, Lf3/n;->l:I

    .line 1852
    .line 1853
    const/4 v3, 0x0

    .line 1854
    const/16 v5, 0x8

    .line 1855
    .line 1856
    goto :goto_31

    .line 1857
    :goto_2f
    invoke-interface/range {p1 .. p1}, Ll2/p;->getPosition()J

    .line 1858
    .line 1859
    .line 1860
    move-result-wide v3

    .line 1861
    iget-wide v11, v1, Lf3/n;->n:J

    .line 1862
    .line 1863
    add-long/2addr v3, v11

    .line 1864
    iget v5, v1, Lf3/n;->o:I

    .line 1865
    .line 1866
    int-to-long v6, v5

    .line 1867
    sub-long/2addr v3, v6

    .line 1868
    cmp-long v5, v11, v6

    .line 1869
    .line 1870
    if-eqz v5, :cond_5a

    .line 1871
    .line 1872
    iget v5, v1, Lf3/n;->m:I

    .line 1873
    .line 1874
    if-ne v5, v9, :cond_5a

    .line 1875
    .line 1876
    const/16 v5, 0x8

    .line 1877
    .line 1878
    invoke-virtual {v14, v5}, Lu1/q;->L(I)V

    .line 1879
    .line 1880
    .line 1881
    iget-object v6, v14, Lu1/q;->a:[B

    .line 1882
    .line 1883
    const/4 v7, 0x0

    .line 1884
    invoke-interface {v0, v7, v5, v6}, Ll2/p;->a(II[B)V

    .line 1885
    .line 1886
    .line 1887
    invoke-static {v14}, Lf3/e;->a(Lu1/q;)V

    .line 1888
    .line 1889
    .line 1890
    iget v6, v14, Lu1/q;->b:I

    .line 1891
    .line 1892
    invoke-interface {v0, v6}, Ll2/p;->i(I)V

    .line 1893
    .line 1894
    .line 1895
    invoke-interface/range {p1 .. p1}, Ll2/p;->h()V

    .line 1896
    .line 1897
    .line 1898
    goto :goto_30

    .line 1899
    :cond_5a
    const/16 v5, 0x8

    .line 1900
    .line 1901
    :goto_30
    new-instance v6, Lv1/c;

    .line 1902
    .line 1903
    iget v7, v1, Lf3/n;->m:I

    .line 1904
    .line 1905
    invoke-direct {v6, v7, v3, v4}, Lv1/c;-><init>(IJ)V

    .line 1906
    .line 1907
    .line 1908
    move-object/from16 v7, v20

    .line 1909
    .line 1910
    invoke-virtual {v7, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1911
    .line 1912
    .line 1913
    iget-wide v6, v1, Lf3/n;->n:J

    .line 1914
    .line 1915
    iget v8, v1, Lf3/n;->o:I

    .line 1916
    .line 1917
    int-to-long v8, v8

    .line 1918
    cmp-long v11, v6, v8

    .line 1919
    .line 1920
    if-nez v11, :cond_5b

    .line 1921
    .line 1922
    invoke-virtual {v1, v3, v4}, Lf3/n;->h(J)V

    .line 1923
    .line 1924
    .line 1925
    const/4 v3, 0x0

    .line 1926
    goto :goto_31

    .line 1927
    :cond_5b
    const/4 v3, 0x0

    .line 1928
    iput v3, v1, Lf3/n;->l:I

    .line 1929
    .line 1930
    iput v3, v1, Lf3/n;->o:I

    .line 1931
    .line 1932
    :goto_31
    const/16 v29, 0x1

    .line 1933
    .line 1934
    :goto_32
    if-nez v29, :cond_5c

    .line 1935
    .line 1936
    const/4 v4, -0x1

    .line 1937
    return v4

    .line 1938
    :cond_5c
    const/4 v4, 0x3

    .line 1939
    const/4 v5, 0x0

    .line 1940
    const/4 v6, 0x4

    .line 1941
    const/16 v7, 0x8

    .line 1942
    .line 1943
    goto/16 :goto_26

    .line 1944
    .line 1945
    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch

    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    .line 1964
    .line 1965
    .line 1966
    .line 1967
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf3/n;->h:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lf3/n;->o:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lf3/n;->q:I

    .line 11
    .line 12
    iput v0, p0, Lf3/n;->r:I

    .line 13
    .line 14
    iput v0, p0, Lf3/n;->s:I

    .line 15
    .line 16
    iput v0, p0, Lf3/n;->t:I

    .line 17
    .line 18
    iput-boolean v0, p0, Lf3/n;->u:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lf3/n;->z:Z

    .line 21
    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    cmp-long v4, p1, v2

    .line 25
    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    iget p1, p0, Lf3/n;->l:I

    .line 29
    .line 30
    const/4 p2, 0x3

    .line 31
    if-eq p1, p2, :cond_0

    .line 32
    .line 33
    iput v0, p0, Lf3/n;->l:I

    .line 34
    .line 35
    iput v0, p0, Lf3/n;->o:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-object p1, p0, Lf3/n;->i:Lf3/q;

    .line 39
    .line 40
    iget-object p2, p1, Lf3/q;->a:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 43
    .line 44
    .line 45
    iput v0, p1, Lf3/q;->b:I

    .line 46
    .line 47
    iget-object p1, p0, Lf3/n;->j:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object p1, p0, Lf3/n;->C:[Lf3/m;

    .line 54
    .line 55
    array-length p2, p1

    .line 56
    const/4 v2, 0x0

    .line 57
    :goto_0
    if-ge v2, p2, :cond_4

    .line 58
    .line 59
    aget-object v3, p1, v2

    .line 60
    .line 61
    iget-object v4, v3, Lf3/m;->b:Lf3/v;

    .line 62
    .line 63
    invoke-virtual {v4, p3, p4}, Lf3/v;->a(J)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-ne v5, v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {v4, p3, p4}, Lf3/v;->b(J)I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    :cond_2
    iput v5, v3, Lf3/m;->e:I

    .line 74
    .line 75
    iget-object v3, v3, Lf3/m;->d:Ll2/k0;

    .line 76
    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    iput-boolean v0, v3, Ll2/k0;->b:Z

    .line 80
    .line 81
    iput v0, v3, Ll2/k0;->c:I

    .line 82
    .line 83
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    :goto_1
    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lf3/n;->k:Lu7/y0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g(Ll2/p;)Z
    .locals 3

    .line 1
    iget v0, p0, Lf3/n;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {p1, v2, v0}, Lf3/r;->i(Ll2/p;ZZ)Ll2/g0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 24
    .line 25
    sget-object v0, Lu7/y0;->e:Lu7/y0;

    .line 26
    .line 27
    :goto_1
    iput-object v0, p0, Lf3/n;->k:Lu7/y0;

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    const/4 v1, 0x0

    .line 33
    :goto_2
    return v1
.end method

.method public final h(J)V
    .locals 46

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :cond_0
    :goto_0
    const/4 v3, 0x2

    .line 4
    const/4 v4, 0x0

    .line 5
    const/4 v5, 0x1

    .line 6
    iget-object v6, v0, Lf3/n;->h:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v7

    .line 12
    if-nez v7, :cond_38

    .line 13
    .line 14
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    check-cast v7, Lv1/c;

    .line 19
    .line 20
    iget-wide v7, v7, Lv1/c;->c:J

    .line 21
    .line 22
    cmp-long v9, v7, p1

    .line 23
    .line 24
    if-nez v9, :cond_38

    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    move-object v8, v7

    .line 31
    check-cast v8, Lv1/c;

    .line 32
    .line 33
    iget v7, v8, Lab/a;->b:I

    .line 34
    .line 35
    const v9, 0x6d6f6f76

    .line 36
    .line 37
    .line 38
    if-ne v7, v9, :cond_37

    .line 39
    .line 40
    const v7, 0x6d657461

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8, v7}, Lv1/c;->g(I)Lv1/c;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    new-instance v9, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    const/16 v17, 0x0

    .line 53
    .line 54
    iget-boolean v15, v0, Lf3/n;->c:Z

    .line 55
    .line 56
    const-wide/16 v18, 0x0

    .line 57
    .line 58
    iget v14, v0, Lf3/n;->b:I

    .line 59
    .line 60
    if-eqz v7, :cond_14

    .line 61
    .line 62
    invoke-static {v7}, Lf3/e;->f(Lv1/c;)Lr1/d0;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    iget-boolean v10, v0, Lf3/n;->y:Z

    .line 67
    .line 68
    const-class v11, Lv1/a;

    .line 69
    .line 70
    if-eqz v10, :cond_d

    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    iget-object v9, v7, Lr1/d0;->a:[Lr1/c0;

    .line 76
    .line 77
    array-length v10, v9

    .line 78
    const/4 v12, 0x0

    .line 79
    :goto_1
    if-ge v12, v10, :cond_3

    .line 80
    .line 81
    aget-object v13, v9, v12

    .line 82
    .line 83
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v11, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    invoke-virtual {v11, v13}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lr1/c0;

    .line 98
    .line 99
    move-object v13, v1

    .line 100
    check-cast v13, Lv1/a;

    .line 101
    .line 102
    iget-object v13, v13, Lv1/a;->a:Ljava/lang/String;

    .line 103
    .line 104
    const-string v2, "auxiliary.tracks.interleaved"

    .line 105
    .line 106
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_1
    move-object/from16 v1, v17

    .line 114
    .line 115
    :goto_2
    if-eqz v1, :cond_2

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_2
    add-int/2addr v12, v5

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    move-object/from16 v1, v17

    .line 121
    .line 122
    :goto_3
    check-cast v1, Lv1/a;

    .line 123
    .line 124
    if-eqz v1, :cond_4

    .line 125
    .line 126
    iget-object v1, v1, Lv1/a;->b:[B

    .line 127
    .line 128
    aget-byte v1, v1, v4

    .line 129
    .line 130
    if-nez v1, :cond_4

    .line 131
    .line 132
    iget-wide v1, v0, Lf3/n;->x:J

    .line 133
    .line 134
    const-wide/16 v12, 0x10

    .line 135
    .line 136
    add-long/2addr v1, v12

    .line 137
    iput-wide v1, v0, Lf3/n;->A:J

    .line 138
    .line 139
    :cond_4
    array-length v1, v9

    .line 140
    const/4 v2, 0x0

    .line 141
    :goto_4
    if-ge v2, v1, :cond_7

    .line 142
    .line 143
    aget-object v10, v9, v2

    .line 144
    .line 145
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    invoke-virtual {v11, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 150
    .line 151
    .line 152
    move-result v12

    .line 153
    if-eqz v12, :cond_5

    .line 154
    .line 155
    invoke-virtual {v11, v10}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    check-cast v10, Lr1/c0;

    .line 160
    .line 161
    move-object v12, v10

    .line 162
    check-cast v12, Lv1/a;

    .line 163
    .line 164
    iget-object v12, v12, Lv1/a;->a:Ljava/lang/String;

    .line 165
    .line 166
    const-string v13, "auxiliary.tracks.map"

    .line 167
    .line 168
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v12

    .line 172
    if-eqz v12, :cond_5

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_5
    move-object/from16 v10, v17

    .line 176
    .line 177
    :goto_5
    if-eqz v10, :cond_6

    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_6
    add-int/2addr v2, v5

    .line 181
    goto :goto_4

    .line 182
    :cond_7
    move-object/from16 v10, v17

    .line 183
    .line 184
    :goto_6
    check-cast v10, Lv1/a;

    .line 185
    .line 186
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v10}, Lv1/a;->d()Ljava/util/ArrayList;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    new-instance v9, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .line 201
    .line 202
    const/4 v2, 0x0

    .line 203
    :goto_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 204
    .line 205
    .line 206
    move-result v10

    .line 207
    if-ge v2, v10, :cond_c

    .line 208
    .line 209
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    check-cast v10, Ljava/lang/Integer;

    .line 214
    .line 215
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 216
    .line 217
    .line 218
    move-result v10

    .line 219
    if-eqz v10, :cond_b

    .line 220
    .line 221
    if-eq v10, v5, :cond_a

    .line 222
    .line 223
    if-eq v10, v3, :cond_9

    .line 224
    .line 225
    const/4 v11, 0x3

    .line 226
    if-eq v10, v11, :cond_8

    .line 227
    .line 228
    const/4 v11, 0x0

    .line 229
    goto :goto_8

    .line 230
    :cond_8
    const/4 v11, 0x4

    .line 231
    goto :goto_8

    .line 232
    :cond_9
    const/4 v11, 0x3

    .line 233
    goto :goto_8

    .line 234
    :cond_a
    const/4 v11, 0x2

    .line 235
    goto :goto_8

    .line 236
    :cond_b
    const/4 v11, 0x1

    .line 237
    :goto_8
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    add-int/2addr v2, v5

    .line 245
    goto :goto_7

    .line 246
    :cond_c
    :goto_9
    move-object v1, v9

    .line 247
    goto :goto_d

    .line 248
    :cond_d
    if-eqz v7, :cond_c

    .line 249
    .line 250
    and-int/lit8 v1, v14, 0x40

    .line 251
    .line 252
    if-nez v1, :cond_e

    .line 253
    .line 254
    goto :goto_9

    .line 255
    :cond_e
    iget-object v1, v7, Lr1/d0;->a:[Lr1/c0;

    .line 256
    .line 257
    array-length v2, v1

    .line 258
    const/4 v10, 0x0

    .line 259
    :goto_a
    if-ge v10, v2, :cond_11

    .line 260
    .line 261
    aget-object v12, v1, v10

    .line 262
    .line 263
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    move-result-object v13

    .line 267
    invoke-virtual {v11, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 268
    .line 269
    .line 270
    move-result v13

    .line 271
    if-eqz v13, :cond_f

    .line 272
    .line 273
    invoke-virtual {v11, v12}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v12

    .line 277
    check-cast v12, Lr1/c0;

    .line 278
    .line 279
    move-object v13, v12

    .line 280
    check-cast v13, Lv1/a;

    .line 281
    .line 282
    iget-object v13, v13, Lv1/a;->a:Ljava/lang/String;

    .line 283
    .line 284
    const-string v3, "auxiliary.tracks.offset"

    .line 285
    .line 286
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    if-eqz v3, :cond_f

    .line 291
    .line 292
    goto :goto_b

    .line 293
    :cond_f
    move-object/from16 v12, v17

    .line 294
    .line 295
    :goto_b
    if-eqz v12, :cond_10

    .line 296
    .line 297
    goto :goto_c

    .line 298
    :cond_10
    add-int/2addr v10, v5

    .line 299
    const/4 v3, 0x2

    .line 300
    goto :goto_a

    .line 301
    :cond_11
    move-object/from16 v12, v17

    .line 302
    .line 303
    :goto_c
    check-cast v12, Lv1/a;

    .line 304
    .line 305
    if-nez v12, :cond_12

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_12
    new-instance v1, Lu1/q;

    .line 309
    .line 310
    iget-object v2, v12, Lv1/a;->b:[B

    .line 311
    .line 312
    invoke-direct {v1, v2}, Lu1/q;-><init>([B)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1}, Lu1/q;->H()J

    .line 316
    .line 317
    .line 318
    move-result-wide v1

    .line 319
    cmp-long v3, v1, v18

    .line 320
    .line 321
    if-gtz v3, :cond_13

    .line 322
    .line 323
    goto :goto_9

    .line 324
    :cond_13
    iput-wide v1, v0, Lf3/n;->x:J

    .line 325
    .line 326
    iput-boolean v5, v0, Lf3/n;->w:Z

    .line 327
    .line 328
    move-object/from16 v35, v6

    .line 329
    .line 330
    move/from16 v37, v15

    .line 331
    .line 332
    goto/16 :goto_2e

    .line 333
    .line 334
    :cond_14
    move-object v1, v9

    .line 335
    move-object/from16 v7, v17

    .line 336
    .line 337
    :goto_d
    new-instance v2, Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .line 341
    .line 342
    iget v3, v0, Lf3/n;->E:I

    .line 343
    .line 344
    if-ne v3, v5, :cond_15

    .line 345
    .line 346
    const/4 v3, 0x1

    .line 347
    goto :goto_e

    .line 348
    :cond_15
    const/4 v3, 0x0

    .line 349
    :goto_e
    new-instance v13, Ll2/v;

    .line 350
    .line 351
    invoke-direct {v13}, Ll2/v;-><init>()V

    .line 352
    .line 353
    .line 354
    const v9, 0x75647461

    .line 355
    .line 356
    .line 357
    invoke-virtual {v8, v9}, Lv1/c;->i(I)Lv1/d;

    .line 358
    .line 359
    .line 360
    move-result-object v9

    .line 361
    if-eqz v9, :cond_16

    .line 362
    .line 363
    invoke-static {v9}, Lf3/e;->j(Lv1/d;)Lr1/d0;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    invoke-virtual {v13, v9}, Ll2/v;->c(Lr1/d0;)V

    .line 368
    .line 369
    .line 370
    move-object/from16 v22, v9

    .line 371
    .line 372
    goto :goto_f

    .line 373
    :cond_16
    move-object/from16 v22, v17

    .line 374
    .line 375
    :goto_f
    new-instance v12, Lr1/d0;

    .line 376
    .line 377
    const v9, 0x6d766864

    .line 378
    .line 379
    .line 380
    invoke-virtual {v8, v9}, Lv1/c;->i(I)Lv1/d;

    .line 381
    .line 382
    .line 383
    move-result-object v9

    .line 384
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    iget-object v9, v9, Lv1/d;->c:Lu1/q;

    .line 388
    .line 389
    invoke-static {v9}, Lf3/e;->g(Lu1/q;)Lv1/f;

    .line 390
    .line 391
    .line 392
    move-result-object v9

    .line 393
    new-array v10, v5, [Lr1/c0;

    .line 394
    .line 395
    aput-object v9, v10, v4

    .line 396
    .line 397
    invoke-direct {v12, v10}, Lr1/d0;-><init>([Lr1/c0;)V

    .line 398
    .line 399
    .line 400
    and-int/lit8 v9, v14, 0x1

    .line 401
    .line 402
    if-eqz v9, :cond_17

    .line 403
    .line 404
    const/16 v16, 0x1

    .line 405
    .line 406
    goto :goto_10

    .line 407
    :cond_17
    const/16 v16, 0x0

    .line 408
    .line 409
    :goto_10
    new-instance v10, La2/u0;

    .line 410
    .line 411
    const/16 v9, 0x17

    .line 412
    .line 413
    invoke-direct {v10, v9}, La2/u0;-><init>(I)V

    .line 414
    .line 415
    .line 416
    const/16 v23, 0x0

    .line 417
    .line 418
    iget-boolean v11, v0, Lf3/n;->c:Z

    .line 419
    .line 420
    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    move-object v9, v13

    .line 426
    move-object/from16 v26, v10

    .line 427
    .line 428
    move/from16 v27, v11

    .line 429
    .line 430
    move-wide/from16 v10, v24

    .line 431
    .line 432
    move-object/from16 v24, v12

    .line 433
    .line 434
    move-object/from16 v12, v23

    .line 435
    .line 436
    move-object/from16 v23, v13

    .line 437
    .line 438
    move/from16 v13, v16

    .line 439
    .line 440
    move/from16 v25, v14

    .line 441
    .line 442
    move v14, v3

    .line 443
    move v3, v15

    .line 444
    move-object/from16 v15, v26

    .line 445
    .line 446
    move/from16 v16, v27

    .line 447
    .line 448
    invoke-static/range {v8 .. v16}, Lf3/e;->i(Lv1/c;Ll2/v;JLr1/l;ZZLt7/d;Z)Ljava/util/ArrayList;

    .line 449
    .line 450
    .line 451
    move-result-object v8

    .line 452
    iget-boolean v9, v0, Lf3/n;->y:Z

    .line 453
    .line 454
    if-eqz v9, :cond_19

    .line 455
    .line 456
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 457
    .line 458
    .line 459
    move-result v9

    .line 460
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 461
    .line 462
    .line 463
    move-result v10

    .line 464
    if-ne v9, v10, :cond_18

    .line 465
    .line 466
    const/4 v9, 0x1

    .line 467
    goto :goto_11

    .line 468
    :cond_18
    const/4 v9, 0x0

    .line 469
    :goto_11
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 470
    .line 471
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 472
    .line 473
    .line 474
    move-result v10

    .line 475
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 476
    .line 477
    .line 478
    move-result v11

    .line 479
    new-instance v12, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    const-string v13, "The number of auxiliary track types from metadata ("

    .line 482
    .line 483
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    const-string v10, ") is not same as the number of auxiliary tracks ("

    .line 490
    .line 491
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    const-string v10, ")"

    .line 498
    .line 499
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v10

    .line 506
    invoke-static {v10, v9}, La9/o;->s(Ljava/lang/String;Z)V

    .line 507
    .line 508
    .line 509
    :cond_19
    invoke-static {v8}, Lf3/r;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v9

    .line 513
    const/4 v13, 0x0

    .line 514
    const/4 v14, 0x0

    .line 515
    const/4 v15, -0x1

    .line 516
    const-wide v28, -0x7fffffffffffffffL    # -4.9E-324

    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    :goto_12
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 522
    .line 523
    .line 524
    move-result v4

    .line 525
    if-ge v13, v4, :cond_30

    .line 526
    .line 527
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v4

    .line 531
    check-cast v4, Lf3/v;

    .line 532
    .line 533
    iget v12, v4, Lf3/v;->b:I

    .line 534
    .line 535
    if-nez v12, :cond_1a

    .line 536
    .line 537
    move-object/from16 v36, v1

    .line 538
    .line 539
    move-object v5, v2

    .line 540
    move/from16 v37, v3

    .line 541
    .line 542
    move-object/from16 v35, v6

    .line 543
    .line 544
    move-object/from16 v32, v8

    .line 545
    .line 546
    move/from16 v38, v13

    .line 547
    .line 548
    move/from16 v34, v14

    .line 549
    .line 550
    move-object/from16 v4, v23

    .line 551
    .line 552
    const/4 v1, 0x1

    .line 553
    const/4 v6, 0x4

    .line 554
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    const/4 v14, -0x1

    .line 560
    move-object v13, v7

    .line 561
    const/4 v7, 0x3

    .line 562
    goto/16 :goto_29

    .line 563
    .line 564
    :cond_1a
    new-instance v12, Lf3/m;

    .line 565
    .line 566
    iget-object v10, v0, Lf3/n;->B:Ll2/q;

    .line 567
    .line 568
    add-int/lit8 v11, v14, 0x1

    .line 569
    .line 570
    iget-object v5, v4, Lf3/v;->a:Lf3/s;

    .line 571
    .line 572
    move-object/from16 v32, v8

    .line 573
    .line 574
    iget v8, v5, Lf3/s;->b:I

    .line 575
    .line 576
    invoke-interface {v10, v14, v8}, Ll2/q;->z(II)Ll2/j0;

    .line 577
    .line 578
    .line 579
    move-result-object v8

    .line 580
    invoke-direct {v12, v5, v4, v8}, Lf3/m;-><init>(Lf3/s;Lf3/v;Ll2/j0;)V

    .line 581
    .line 582
    .line 583
    move v14, v11

    .line 584
    iget-wide v10, v5, Lf3/s;->e:J

    .line 585
    .line 586
    const-wide v30, -0x7fffffffffffffffL    # -4.9E-324

    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    cmp-long v33, v10, v30

    .line 592
    .line 593
    if-eqz v33, :cond_1b

    .line 594
    .line 595
    goto :goto_13

    .line 596
    :cond_1b
    iget-wide v10, v4, Lf3/v;->i:J

    .line 597
    .line 598
    :goto_13
    invoke-interface {v8, v10, v11}, Ll2/j0;->d(J)V

    .line 599
    .line 600
    .line 601
    move-object/from16 v33, v2

    .line 602
    .line 603
    move v8, v3

    .line 604
    move-wide/from16 v2, v28

    .line 605
    .line 606
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 607
    .line 608
    .line 609
    move-result-wide v28

    .line 610
    iget-object v2, v5, Lf3/s;->g:Lr1/p;

    .line 611
    .line 612
    iget-object v3, v2, Lr1/p;->o:Ljava/lang/String;

    .line 613
    .line 614
    move/from16 v34, v14

    .line 615
    .line 616
    const-string v14, "audio/true-hd"

    .line 617
    .line 618
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v3

    .line 622
    iget v14, v4, Lf3/v;->e:I

    .line 623
    .line 624
    if-eqz v3, :cond_1c

    .line 625
    .line 626
    mul-int/lit8 v14, v14, 0x10

    .line 627
    .line 628
    goto :goto_14

    .line 629
    :cond_1c
    add-int/lit8 v14, v14, 0x1e

    .line 630
    .line 631
    :goto_14
    new-instance v3, Lr1/o;

    .line 632
    .line 633
    invoke-direct {v3, v2}, Lr1/o;-><init>(Lr1/p;)V

    .line 634
    .line 635
    .line 636
    iput v14, v3, Lr1/o;->o:I

    .line 637
    .line 638
    iget v5, v5, Lf3/s;->b:I

    .line 639
    .line 640
    const/4 v14, 0x2

    .line 641
    if-ne v5, v14, :cond_20

    .line 642
    .line 643
    and-int/lit8 v14, v25, 0x8

    .line 644
    .line 645
    move-object/from16 v35, v6

    .line 646
    .line 647
    iget v6, v2, Lr1/p;->f:I

    .line 648
    .line 649
    if-eqz v14, :cond_1e

    .line 650
    .line 651
    const/4 v14, -0x1

    .line 652
    if-ne v15, v14, :cond_1d

    .line 653
    .line 654
    const/4 v14, 0x1

    .line 655
    goto :goto_15

    .line 656
    :cond_1d
    const/4 v14, 0x2

    .line 657
    :goto_15
    or-int/2addr v6, v14

    .line 658
    :cond_1e
    iget-boolean v14, v0, Lf3/n;->y:Z

    .line 659
    .line 660
    if-eqz v14, :cond_1f

    .line 661
    .line 662
    const v14, 0x8000

    .line 663
    .line 664
    .line 665
    or-int/2addr v6, v14

    .line 666
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v14

    .line 670
    check-cast v14, Ljava/lang/Integer;

    .line 671
    .line 672
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 673
    .line 674
    .line 675
    move-result v14

    .line 676
    iput v14, v3, Lr1/o;->g:I

    .line 677
    .line 678
    :cond_1f
    iput v6, v3, Lr1/o;->f:I

    .line 679
    .line 680
    goto :goto_16

    .line 681
    :cond_20
    move-object/from16 v35, v6

    .line 682
    .line 683
    :goto_16
    iget-object v6, v2, Lr1/p;->o:Ljava/lang/String;

    .line 684
    .line 685
    invoke-static {v6}, Lr1/e0;->k(Ljava/lang/String;)Z

    .line 686
    .line 687
    .line 688
    move-result v14

    .line 689
    if-eqz v14, :cond_29

    .line 690
    .line 691
    iget-object v14, v4, Lf3/v;->f:[J

    .line 692
    .line 693
    move-object/from16 v36, v1

    .line 694
    .line 695
    array-length v1, v14

    .line 696
    if-lez v1, :cond_28

    .line 697
    .line 698
    iget-object v1, v4, Lf3/v;->h:[I

    .line 699
    .line 700
    move/from16 v37, v8

    .line 701
    .line 702
    iget-boolean v8, v4, Lf3/v;->j:Z

    .line 703
    .line 704
    if-eqz v8, :cond_21

    .line 705
    .line 706
    move/from16 v38, v13

    .line 707
    .line 708
    iget v13, v4, Lf3/v;->b:I

    .line 709
    .line 710
    :goto_17
    move/from16 v39, v15

    .line 711
    .line 712
    goto :goto_18

    .line 713
    :cond_21
    move/from16 v38, v13

    .line 714
    .line 715
    array-length v13, v1

    .line 716
    goto :goto_17

    .line 717
    :goto_18
    const/16 v15, 0x14

    .line 718
    .line 719
    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    .line 720
    .line 721
    .line 722
    move-result v13

    .line 723
    const-wide v30, -0x7fffffffffffffffL    # -4.9E-324

    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    cmp-long v15, v10, v30

    .line 729
    .line 730
    if-eqz v15, :cond_22

    .line 731
    .line 732
    const/4 v15, 0x1

    .line 733
    goto :goto_19

    .line 734
    :cond_22
    const/4 v15, 0x0

    .line 735
    :goto_19
    invoke-static {v15}, La9/o;->t(Z)V

    .line 736
    .line 737
    .line 738
    move-object/from16 v40, v6

    .line 739
    .line 740
    move-object v15, v7

    .line 741
    const-wide/32 v6, 0x989680

    .line 742
    .line 743
    .line 744
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 745
    .line 746
    .line 747
    move-result-wide v6

    .line 748
    move-object/from16 v41, v15

    .line 749
    .line 750
    const/4 v10, -0x1

    .line 751
    const/4 v11, 0x0

    .line 752
    const/4 v15, 0x0

    .line 753
    :goto_1a
    if-ge v11, v13, :cond_24

    .line 754
    .line 755
    if-eqz v8, :cond_23

    .line 756
    .line 757
    move/from16 v42, v11

    .line 758
    .line 759
    goto :goto_1b

    .line 760
    :cond_23
    aget v42, v1, v11

    .line 761
    .line 762
    :goto_1b
    aget-wide v43, v14, v42

    .line 763
    .line 764
    cmp-long v45, v43, v6

    .line 765
    .line 766
    if-lez v45, :cond_25

    .line 767
    .line 768
    :cond_24
    const/4 v1, -0x1

    .line 769
    goto :goto_1c

    .line 770
    :cond_25
    cmp-long v45, v43, v18

    .line 771
    .line 772
    move-object/from16 v43, v1

    .line 773
    .line 774
    if-ltz v45, :cond_26

    .line 775
    .line 776
    iget-object v1, v4, Lf3/v;->d:[I

    .line 777
    .line 778
    aget v1, v1, v42

    .line 779
    .line 780
    if-le v1, v15, :cond_26

    .line 781
    .line 782
    move v15, v1

    .line 783
    move/from16 v10, v42

    .line 784
    .line 785
    :cond_26
    const/4 v1, 0x1

    .line 786
    add-int/2addr v11, v1

    .line 787
    move-object/from16 v1, v43

    .line 788
    .line 789
    goto :goto_1a

    .line 790
    :goto_1c
    if-ne v10, v1, :cond_27

    .line 791
    .line 792
    goto :goto_1f

    .line 793
    :cond_27
    aget-wide v6, v14, v10

    .line 794
    .line 795
    :goto_1d
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    goto :goto_20

    .line 801
    :cond_28
    :goto_1e
    move-object/from16 v40, v6

    .line 802
    .line 803
    move-object/from16 v41, v7

    .line 804
    .line 805
    move/from16 v37, v8

    .line 806
    .line 807
    move/from16 v38, v13

    .line 808
    .line 809
    move/from16 v39, v15

    .line 810
    .line 811
    goto :goto_1f

    .line 812
    :cond_29
    move-object/from16 v36, v1

    .line 813
    .line 814
    goto :goto_1e

    .line 815
    :goto_1f
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    goto :goto_1d

    .line 821
    :goto_20
    cmp-long v1, v6, v10

    .line 822
    .line 823
    if-eqz v1, :cond_2a

    .line 824
    .line 825
    new-instance v1, Lr1/d0;

    .line 826
    .line 827
    new-instance v4, Lu2/c;

    .line 828
    .line 829
    invoke-direct {v4, v6, v7}, Lu2/c;-><init>(J)V

    .line 830
    .line 831
    .line 832
    const/4 v6, 0x1

    .line 833
    new-array v7, v6, [Lr1/c0;

    .line 834
    .line 835
    const/4 v8, 0x0

    .line 836
    aput-object v4, v7, v8

    .line 837
    .line 838
    invoke-direct {v1, v7}, Lr1/d0;-><init>([Lr1/c0;)V

    .line 839
    .line 840
    .line 841
    goto :goto_21

    .line 842
    :cond_2a
    const/4 v6, 0x1

    .line 843
    move-object/from16 v1, v17

    .line 844
    .line 845
    :goto_21
    if-ne v5, v6, :cond_2b

    .line 846
    .line 847
    invoke-virtual/range {v23 .. v23}, Ll2/v;->a()Z

    .line 848
    .line 849
    .line 850
    move-result v4

    .line 851
    if-eqz v4, :cond_2b

    .line 852
    .line 853
    move-object/from16 v4, v23

    .line 854
    .line 855
    iget v6, v4, Ll2/v;->a:I

    .line 856
    .line 857
    iput v6, v3, Lr1/o;->I:I

    .line 858
    .line 859
    iget v6, v4, Ll2/v;->b:I

    .line 860
    .line 861
    iput v6, v3, Lr1/o;->J:I

    .line 862
    .line 863
    goto :goto_22

    .line 864
    :cond_2b
    move-object/from16 v4, v23

    .line 865
    .line 866
    :goto_22
    iget-object v6, v0, Lf3/n;->j:Ljava/util/ArrayList;

    .line 867
    .line 868
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 869
    .line 870
    .line 871
    move-result v7

    .line 872
    if-eqz v7, :cond_2c

    .line 873
    .line 874
    move-object/from16 v7, v17

    .line 875
    .line 876
    :goto_23
    const/4 v6, 0x4

    .line 877
    goto :goto_24

    .line 878
    :cond_2c
    new-instance v7, Lr1/d0;

    .line 879
    .line 880
    invoke-direct {v7, v6}, Lr1/d0;-><init>(Ljava/util/List;)V

    .line 881
    .line 882
    .line 883
    goto :goto_23

    .line 884
    :goto_24
    new-array v8, v6, [Lr1/d0;

    .line 885
    .line 886
    const/4 v13, 0x0

    .line 887
    aput-object v7, v8, v13

    .line 888
    .line 889
    const/4 v7, 0x1

    .line 890
    aput-object v22, v8, v7

    .line 891
    .line 892
    const/4 v7, 0x2

    .line 893
    aput-object v24, v8, v7

    .line 894
    .line 895
    const/4 v7, 0x3

    .line 896
    aput-object v1, v8, v7

    .line 897
    .line 898
    iget-object v1, v2, Lr1/p;->l:Lr1/d0;

    .line 899
    .line 900
    move-object/from16 v13, v41

    .line 901
    .line 902
    invoke-static {v5, v13, v3, v1, v8}, Lf3/r;->h(ILr1/d0;Lr1/o;Lr1/d0;[Lr1/d0;)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v3, v9}, Lr1/o;->b(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    const-string v1, "audio/mpeg"

    .line 909
    .line 910
    move-object/from16 v2, v40

    .line 911
    .line 912
    invoke-static {v2, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 913
    .line 914
    .line 915
    move-result v1

    .line 916
    if-eqz v1, :cond_2d

    .line 917
    .line 918
    new-instance v1, Lr1/p;

    .line 919
    .line 920
    invoke-direct {v1, v3}, Lr1/p;-><init>(Lr1/o;)V

    .line 921
    .line 922
    .line 923
    iput-object v1, v12, Lf3/m;->f:Lr1/p;

    .line 924
    .line 925
    :goto_25
    const/4 v1, 0x2

    .line 926
    goto :goto_26

    .line 927
    :cond_2d
    new-instance v1, Lr1/p;

    .line 928
    .line 929
    invoke-direct {v1, v3}, Lr1/p;-><init>(Lr1/o;)V

    .line 930
    .line 931
    .line 932
    iget-object v2, v12, Lf3/m;->c:Ll2/j0;

    .line 933
    .line 934
    invoke-interface {v2, v1}, Ll2/j0;->g(Lr1/p;)V

    .line 935
    .line 936
    .line 937
    goto :goto_25

    .line 938
    :goto_26
    if-ne v5, v1, :cond_2e

    .line 939
    .line 940
    move/from16 v1, v39

    .line 941
    .line 942
    const/4 v14, -0x1

    .line 943
    if-ne v1, v14, :cond_2f

    .line 944
    .line 945
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    .line 946
    .line 947
    .line 948
    move-result v15

    .line 949
    :goto_27
    move-object/from16 v5, v33

    .line 950
    .line 951
    goto :goto_28

    .line 952
    :cond_2e
    move/from16 v1, v39

    .line 953
    .line 954
    const/4 v14, -0x1

    .line 955
    :cond_2f
    move v15, v1

    .line 956
    goto :goto_27

    .line 957
    :goto_28
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    .line 959
    .line 960
    const/4 v1, 0x1

    .line 961
    :goto_29
    add-int/lit8 v2, v38, 0x1

    .line 962
    .line 963
    move-object/from16 v23, v4

    .line 964
    .line 965
    move-object v7, v13

    .line 966
    move-object/from16 v8, v32

    .line 967
    .line 968
    move/from16 v14, v34

    .line 969
    .line 970
    move-object/from16 v6, v35

    .line 971
    .line 972
    move-object/from16 v1, v36

    .line 973
    .line 974
    move/from16 v3, v37

    .line 975
    .line 976
    move v13, v2

    .line 977
    move-object v2, v5

    .line 978
    const/4 v5, 0x1

    .line 979
    goto/16 :goto_12

    .line 980
    .line 981
    :cond_30
    move-object v5, v2

    .line 982
    move/from16 v37, v3

    .line 983
    .line 984
    move-object/from16 v35, v6

    .line 985
    .line 986
    move v1, v15

    .line 987
    move-wide/from16 v2, v28

    .line 988
    .line 989
    const/4 v6, 0x4

    .line 990
    const/4 v7, 0x3

    .line 991
    const/4 v8, 0x0

    .line 992
    const/4 v14, -0x1

    .line 993
    new-array v4, v8, [Lf3/m;

    .line 994
    .line 995
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v4

    .line 999
    check-cast v4, [Lf3/m;

    .line 1000
    .line 1001
    iput-object v4, v0, Lf3/n;->C:[Lf3/m;

    .line 1002
    .line 1003
    if-nez v37, :cond_36

    .line 1004
    .line 1005
    array-length v5, v4

    .line 1006
    new-array v5, v5, [[J

    .line 1007
    .line 1008
    array-length v8, v4

    .line 1009
    new-array v8, v8, [I

    .line 1010
    .line 1011
    array-length v9, v4

    .line 1012
    new-array v9, v9, [J

    .line 1013
    .line 1014
    array-length v10, v4

    .line 1015
    new-array v10, v10, [Z

    .line 1016
    .line 1017
    const/4 v11, 0x0

    .line 1018
    :goto_2a
    array-length v12, v4

    .line 1019
    if-ge v11, v12, :cond_31

    .line 1020
    .line 1021
    aget-object v12, v4, v11

    .line 1022
    .line 1023
    iget-object v12, v12, Lf3/m;->b:Lf3/v;

    .line 1024
    .line 1025
    iget v12, v12, Lf3/v;->b:I

    .line 1026
    .line 1027
    new-array v12, v12, [J

    .line 1028
    .line 1029
    aput-object v12, v5, v11

    .line 1030
    .line 1031
    aget-object v12, v4, v11

    .line 1032
    .line 1033
    iget-object v12, v12, Lf3/m;->b:Lf3/v;

    .line 1034
    .line 1035
    iget-object v12, v12, Lf3/v;->f:[J

    .line 1036
    .line 1037
    const/4 v13, 0x0

    .line 1038
    aget-wide v20, v12, v13

    .line 1039
    .line 1040
    aput-wide v20, v9, v11

    .line 1041
    .line 1042
    const/4 v12, 0x1

    .line 1043
    add-int/2addr v11, v12

    .line 1044
    goto :goto_2a

    .line 1045
    :cond_31
    const/4 v11, 0x0

    .line 1046
    :goto_2b
    array-length v12, v4

    .line 1047
    if-ge v11, v12, :cond_35

    .line 1048
    .line 1049
    const-wide v12, 0x7fffffffffffffffL

    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    move-wide/from16 v20, v12

    .line 1055
    .line 1056
    const/4 v12, 0x0

    .line 1057
    const/4 v13, -0x1

    .line 1058
    :goto_2c
    array-length v15, v4

    .line 1059
    if-ge v12, v15, :cond_33

    .line 1060
    .line 1061
    aget-boolean v15, v10, v12

    .line 1062
    .line 1063
    if-nez v15, :cond_32

    .line 1064
    .line 1065
    aget-wide v22, v9, v12

    .line 1066
    .line 1067
    cmp-long v15, v22, v20

    .line 1068
    .line 1069
    if-gtz v15, :cond_32

    .line 1070
    .line 1071
    move v13, v12

    .line 1072
    move-wide/from16 v20, v22

    .line 1073
    .line 1074
    :cond_32
    const/4 v15, 0x1

    .line 1075
    add-int/2addr v12, v15

    .line 1076
    goto :goto_2c

    .line 1077
    :cond_33
    const/4 v15, 0x1

    .line 1078
    aget v12, v8, v13

    .line 1079
    .line 1080
    aget-object v6, v5, v13

    .line 1081
    .line 1082
    aput-wide v18, v6, v12

    .line 1083
    .line 1084
    aget-object v7, v4, v13

    .line 1085
    .line 1086
    iget-object v7, v7, Lf3/m;->b:Lf3/v;

    .line 1087
    .line 1088
    iget-object v14, v7, Lf3/v;->d:[I

    .line 1089
    .line 1090
    aget v14, v14, v12

    .line 1091
    .line 1092
    move-object/from16 v22, v4

    .line 1093
    .line 1094
    move-object/from16 v17, v5

    .line 1095
    .line 1096
    int-to-long v4, v14

    .line 1097
    add-long v18, v18, v4

    .line 1098
    .line 1099
    add-int/2addr v12, v15

    .line 1100
    aput v12, v8, v13

    .line 1101
    .line 1102
    array-length v4, v6

    .line 1103
    if-ge v12, v4, :cond_34

    .line 1104
    .line 1105
    iget-object v4, v7, Lf3/v;->f:[J

    .line 1106
    .line 1107
    aget-wide v5, v4, v12

    .line 1108
    .line 1109
    aput-wide v5, v9, v13

    .line 1110
    .line 1111
    goto :goto_2d

    .line 1112
    :cond_34
    aput-boolean v15, v10, v13

    .line 1113
    .line 1114
    add-int/2addr v11, v15

    .line 1115
    :goto_2d
    move-object/from16 v5, v17

    .line 1116
    .line 1117
    move-object/from16 v4, v22

    .line 1118
    .line 1119
    const/4 v6, 0x4

    .line 1120
    const/4 v7, 0x3

    .line 1121
    const/4 v14, -0x1

    .line 1122
    goto :goto_2b

    .line 1123
    :cond_35
    move-object/from16 v17, v5

    .line 1124
    .line 1125
    :cond_36
    move-object/from16 v4, v17

    .line 1126
    .line 1127
    iput-object v4, v0, Lf3/n;->D:[[J

    .line 1128
    .line 1129
    iget-object v4, v0, Lf3/n;->B:Ll2/q;

    .line 1130
    .line 1131
    invoke-interface {v4}, Ll2/q;->q()V

    .line 1132
    .line 1133
    .line 1134
    iget-object v4, v0, Lf3/n;->B:Ll2/q;

    .line 1135
    .line 1136
    new-instance v5, Lf3/l;

    .line 1137
    .line 1138
    iget-object v6, v0, Lf3/n;->C:[Lf3/m;

    .line 1139
    .line 1140
    invoke-direct {v5, v2, v3, v6, v1}, Lf3/l;-><init>(J[Lf3/m;I)V

    .line 1141
    .line 1142
    .line 1143
    invoke-interface {v4, v5}, Ll2/q;->s(Ll2/c0;)V

    .line 1144
    .line 1145
    .line 1146
    :goto_2e
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayDeque;->clear()V

    .line 1147
    .line 1148
    .line 1149
    const/4 v1, 0x1

    .line 1150
    iput-boolean v1, v0, Lf3/n;->z:Z

    .line 1151
    .line 1152
    iget-boolean v2, v0, Lf3/n;->w:Z

    .line 1153
    .line 1154
    if-nez v2, :cond_0

    .line 1155
    .line 1156
    if-nez v37, :cond_0

    .line 1157
    .line 1158
    const/4 v2, 0x2

    .line 1159
    iput v2, v0, Lf3/n;->l:I

    .line 1160
    .line 1161
    goto/16 :goto_0

    .line 1162
    .line 1163
    :cond_37
    move-object/from16 v35, v6

    .line 1164
    .line 1165
    const/4 v1, 0x1

    .line 1166
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1167
    .line 1168
    .line 1169
    move-result v2

    .line 1170
    if-nez v2, :cond_0

    .line 1171
    .line 1172
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v2

    .line 1176
    check-cast v2, Lv1/c;

    .line 1177
    .line 1178
    iget-object v2, v2, Lv1/c;->e:Ljava/util/ArrayList;

    .line 1179
    .line 1180
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    .line 1182
    .line 1183
    goto/16 :goto_0

    .line 1184
    .line 1185
    :cond_38
    iget v1, v0, Lf3/n;->l:I

    .line 1186
    .line 1187
    const/4 v2, 0x2

    .line 1188
    if-eq v1, v2, :cond_39

    .line 1189
    .line 1190
    const/4 v1, 0x0

    .line 1191
    iput v1, v0, Lf3/n;->l:I

    .line 1192
    .line 1193
    iput v1, v0, Lf3/n;->o:I

    .line 1194
    .line 1195
    :cond_39
    return-void
.end method
