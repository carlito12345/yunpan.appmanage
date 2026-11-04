.class public final synthetic Ltb/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ltb/l;

.field public final synthetic b:I

.field public final synthetic c:Leb/o;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Ltb/l;ILeb/o;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltb/h;->a:Ltb/l;

    iput p2, p0, Ltb/h;->b:I

    iput-object p3, p0, Ltb/h;->c:Leb/o;

    iput p4, p0, Ltb/h;->d:I

    iput p5, p0, Ltb/h;->e:I

    iput p6, p0, Ltb/h;->f:I

    iput p7, p0, Ltb/h;->g:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/text/GetChars;IIIIZFFLeb/p;Ljb/c;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ltb/h;->b:I

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iget-object v15, v0, Ltb/h;->c:Leb/o;

    .line 8
    .line 9
    iget-object v14, v0, Ltb/h;->a:Ltb/l;

    .line 10
    .line 11
    iget v13, v0, Ltb/h;->d:I

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/16 v16, 0x0

    .line 16
    .line 17
    move-object v3, v14

    .line 18
    move-object/from16 v4, p1

    .line 19
    .line 20
    move-object v5, v15

    .line 21
    move-object/from16 v6, p2

    .line 22
    .line 23
    move/from16 v7, p3

    .line 24
    .line 25
    move/from16 v8, p4

    .line 26
    .line 27
    move/from16 v9, p5

    .line 28
    .line 29
    move/from16 v10, p6

    .line 30
    .line 31
    move/from16 v11, p7

    .line 32
    .line 33
    move/from16 v12, p8

    .line 34
    .line 35
    move/from16 p10, v13

    .line 36
    .line 37
    move/from16 v13, p9

    .line 38
    .line 39
    move-object/from16 p11, v14

    .line 40
    .line 41
    move/from16 v14, v16

    .line 42
    .line 43
    move-object/from16 v16, v15

    .line 44
    .line 45
    move/from16 v15, p10

    .line 46
    .line 47
    invoke-virtual/range {v3 .. v15}, Ltb/l;->s(Landroid/graphics/Canvas;Leb/o;Landroid/text/GetChars;IIIIZFFII)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move/from16 p10, v13

    .line 52
    .line 53
    move-object/from16 p11, v14

    .line 54
    .line 55
    move-object/from16 v16, v15

    .line 56
    .line 57
    :goto_0
    and-int/lit8 v17, v1, 0x2

    .line 58
    .line 59
    iget v15, v0, Ltb/h;->e:I

    .line 60
    .line 61
    if-eqz v17, :cond_1

    .line 62
    .line 63
    move-object/from16 v3, p11

    .line 64
    .line 65
    move-object/from16 v4, p1

    .line 66
    .line 67
    move-object/from16 v5, v16

    .line 68
    .line 69
    move-object/from16 v6, p2

    .line 70
    .line 71
    move/from16 v7, p3

    .line 72
    .line 73
    move/from16 v8, p4

    .line 74
    .line 75
    move/from16 v9, p5

    .line 76
    .line 77
    move/from16 v10, p6

    .line 78
    .line 79
    move/from16 v11, p7

    .line 80
    .line 81
    move/from16 v12, p8

    .line 82
    .line 83
    move/from16 v13, p9

    .line 84
    .line 85
    move/from16 v14, p10

    .line 86
    .line 87
    move/from16 v18, v15

    .line 88
    .line 89
    invoke-virtual/range {v3 .. v15}, Ltb/l;->s(Landroid/graphics/Canvas;Leb/o;Landroid/text/GetChars;IIIIZFFII)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    move/from16 v18, v15

    .line 94
    .line 95
    :goto_1
    and-int/lit8 v19, v1, 0x4

    .line 96
    .line 97
    iget v15, v0, Ltb/h;->f:I

    .line 98
    .line 99
    if-eqz v19, :cond_2

    .line 100
    .line 101
    move-object/from16 v3, p11

    .line 102
    .line 103
    move-object/from16 v4, p1

    .line 104
    .line 105
    move-object/from16 v5, v16

    .line 106
    .line 107
    move-object/from16 v6, p2

    .line 108
    .line 109
    move/from16 v7, p3

    .line 110
    .line 111
    move/from16 v8, p4

    .line 112
    .line 113
    move/from16 v9, p5

    .line 114
    .line 115
    move/from16 v10, p6

    .line 116
    .line 117
    move/from16 v11, p7

    .line 118
    .line 119
    move/from16 v12, p8

    .line 120
    .line 121
    move/from16 v13, p9

    .line 122
    .line 123
    move/from16 v14, v18

    .line 124
    .line 125
    move/from16 v20, v15

    .line 126
    .line 127
    invoke-virtual/range {v3 .. v15}, Ltb/l;->s(Landroid/graphics/Canvas;Leb/o;Landroid/text/GetChars;IIIIZFFII)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_2
    move/from16 v20, v15

    .line 132
    .line 133
    :goto_2
    and-int/lit8 v3, v1, 0x40

    .line 134
    .line 135
    if-eqz v3, :cond_8

    .line 136
    .line 137
    move-object/from16 v15, p11

    .line 138
    .line 139
    iget-object v3, v15, Ltb/l;->D:Lmb/j;

    .line 140
    .line 141
    invoke-virtual {v3}, Lmb/j;->a()Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_9

    .line 146
    .line 147
    iget-object v3, v15, Ltb/l;->D:Lmb/j;

    .line 148
    .line 149
    iget-object v4, v3, Lmb/j;->c:Lmb/b;

    .line 150
    .line 151
    iget v5, v4, Lmb/b;->b:I

    .line 152
    .line 153
    iget v6, v0, Ltb/h;->g:I

    .line 154
    .line 155
    if-lt v6, v5, :cond_9

    .line 156
    .line 157
    iget-object v3, v3, Lmb/j;->d:Lmb/b;

    .line 158
    .line 159
    iget v7, v3, Lmb/b;->b:I

    .line 160
    .line 161
    if-gt v6, v7, :cond_9

    .line 162
    .line 163
    if-ne v6, v5, :cond_3

    .line 164
    .line 165
    iget v4, v4, Lmb/b;->c:I

    .line 166
    .line 167
    move v14, v4

    .line 168
    goto :goto_3

    .line 169
    :cond_3
    const/4 v4, 0x0

    .line 170
    const/4 v14, 0x0

    .line 171
    :goto_3
    if-ne v6, v7, :cond_4

    .line 172
    .line 173
    iget v3, v3, Lmb/b;->c:I

    .line 174
    .line 175
    move v13, v3

    .line 176
    goto :goto_4

    .line 177
    :cond_4
    move/from16 v13, v20

    .line 178
    .line 179
    :goto_4
    and-int/lit8 v1, v1, 0xe

    .line 180
    .line 181
    if-nez v1, :cond_5

    .line 182
    .line 183
    move-object v3, v15

    .line 184
    move-object/from16 v4, p1

    .line 185
    .line 186
    move-object/from16 v5, v16

    .line 187
    .line 188
    move-object/from16 v6, p2

    .line 189
    .line 190
    move/from16 v7, p3

    .line 191
    .line 192
    move/from16 v8, p4

    .line 193
    .line 194
    move/from16 v9, p5

    .line 195
    .line 196
    move/from16 v10, p6

    .line 197
    .line 198
    move/from16 v11, p7

    .line 199
    .line 200
    move/from16 v12, p8

    .line 201
    .line 202
    move v1, v13

    .line 203
    move/from16 v13, p9

    .line 204
    .line 205
    move v15, v1

    .line 206
    invoke-virtual/range {v3 .. v15}, Ltb/l;->s(Landroid/graphics/Canvas;Leb/o;Landroid/text/GetChars;IIIIZFFII)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_7

    .line 210
    .line 211
    :cond_5
    move v1, v13

    .line 212
    if-nez v2, :cond_6

    .line 213
    .line 214
    move/from16 v2, p10

    .line 215
    .line 216
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 217
    .line 218
    .line 219
    move-result v20

    .line 220
    move-object v3, v15

    .line 221
    move-object/from16 v4, p1

    .line 222
    .line 223
    move-object/from16 v5, v16

    .line 224
    .line 225
    move-object/from16 v6, p2

    .line 226
    .line 227
    move/from16 v7, p3

    .line 228
    .line 229
    move/from16 v8, p4

    .line 230
    .line 231
    move/from16 v9, p5

    .line 232
    .line 233
    move/from16 v10, p6

    .line 234
    .line 235
    move/from16 v11, p7

    .line 236
    .line 237
    move/from16 v12, p8

    .line 238
    .line 239
    move/from16 v13, p9

    .line 240
    .line 241
    move/from16 p10, v14

    .line 242
    .line 243
    move-object/from16 v21, v15

    .line 244
    .line 245
    move/from16 v15, v20

    .line 246
    .line 247
    invoke-virtual/range {v3 .. v15}, Ltb/l;->s(Landroid/graphics/Canvas;Leb/o;Landroid/text/GetChars;IIIIZFFII)V

    .line 248
    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_6
    move/from16 v2, p10

    .line 252
    .line 253
    move/from16 p10, v14

    .line 254
    .line 255
    move-object/from16 v21, v15

    .line 256
    .line 257
    :goto_5
    if-nez v17, :cond_7

    .line 258
    .line 259
    move/from16 v15, p10

    .line 260
    .line 261
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    .line 262
    .line 263
    .line 264
    move-result v14

    .line 265
    move/from16 v2, v18

    .line 266
    .line 267
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 268
    .line 269
    .line 270
    move-result v17

    .line 271
    move-object/from16 v3, v21

    .line 272
    .line 273
    move-object/from16 v4, p1

    .line 274
    .line 275
    move-object/from16 v5, v16

    .line 276
    .line 277
    move-object/from16 v6, p2

    .line 278
    .line 279
    move/from16 v7, p3

    .line 280
    .line 281
    move/from16 v8, p4

    .line 282
    .line 283
    move/from16 v9, p5

    .line 284
    .line 285
    move/from16 v10, p6

    .line 286
    .line 287
    move/from16 v11, p7

    .line 288
    .line 289
    move/from16 v12, p8

    .line 290
    .line 291
    move/from16 v13, p9

    .line 292
    .line 293
    move v0, v15

    .line 294
    move/from16 v15, v17

    .line 295
    .line 296
    invoke-virtual/range {v3 .. v15}, Ltb/l;->s(Landroid/graphics/Canvas;Leb/o;Landroid/text/GetChars;IIIIZFFII)V

    .line 297
    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_7
    move/from16 v0, p10

    .line 301
    .line 302
    move/from16 v2, v18

    .line 303
    .line 304
    :goto_6
    if-nez v19, :cond_9

    .line 305
    .line 306
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 307
    .line 308
    .line 309
    move-result v14

    .line 310
    move-object/from16 v3, v21

    .line 311
    .line 312
    move-object/from16 v4, p1

    .line 313
    .line 314
    move-object/from16 v5, v16

    .line 315
    .line 316
    move-object/from16 v6, p2

    .line 317
    .line 318
    move/from16 v7, p3

    .line 319
    .line 320
    move/from16 v8, p4

    .line 321
    .line 322
    move/from16 v9, p5

    .line 323
    .line 324
    move/from16 v10, p6

    .line 325
    .line 326
    move/from16 v11, p7

    .line 327
    .line 328
    move/from16 v12, p8

    .line 329
    .line 330
    move/from16 v13, p9

    .line 331
    .line 332
    move v15, v1

    .line 333
    invoke-virtual/range {v3 .. v15}, Ltb/l;->s(Landroid/graphics/Canvas;Leb/o;Landroid/text/GetChars;IIIIZFFII)V

    .line 334
    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_8
    move-object/from16 v21, p11

    .line 338
    .line 339
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    :cond_9
    :goto_7
    return-void
.end method
