.class public final Lei/i;
.super Lei/h;
.source "SourceFile"


# instance fields
.field public B:Landroidx/room/s;


# direct methods
.method public constructor <init>(Lfi/d;IIIIIIIILyh/b;)V
    .locals 18

    move/from16 v0, p8

    const/4 v1, 0x1

    move/from16 v2, p6

    .line 1
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v1, 0x4

    const/16 v5, 0x110

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ldi/a;

    const/4 v9, 0x0

    move-object v2, v0

    move/from16 v3, p5

    move/from16 v6, p7

    move/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v2 .. v9}, Ldi/a;-><init>(IIIIILyh/b;I)V

    :goto_0
    move-object v12, v0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Ldi/a;

    const/4 v9, 0x1

    move-object v2, v0

    move/from16 v3, p5

    move/from16 v6, p7

    move/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v2 .. v9}, Ldi/a;-><init>(IIIIILyh/b;I)V

    goto :goto_0

    :goto_1
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p7

    .line 5
    invoke-direct/range {v10 .. v17}, Lei/h;-><init>(Lfi/d;Ldi/a;IIIII)V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    .line 6
    iput-object v0, v1, Lei/i;->B:Landroidx/room/s;

    return-void
.end method


# virtual methods
.method public final j()I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lei/h;->z:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lei/h;->i()Landroidx/room/s;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Lei/i;->B:Landroidx/room/s;

    .line 13
    .line 14
    :cond_0
    iput v2, v0, Lei/h;->y:I

    .line 15
    .line 16
    iget-object v1, v0, Lei/h;->n:Ldi/a;

    .line 17
    .line 18
    iget v2, v1, Ldi/a;->j:I

    .line 19
    .line 20
    iget v3, v1, Ldi/a;->g:I

    .line 21
    .line 22
    sub-int/2addr v2, v3

    .line 23
    const/16 v3, 0x111

    .line 24
    .line 25
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x2

    .line 30
    const/4 v4, 0x1

    .line 31
    if-ge v2, v3, :cond_1

    .line 32
    .line 33
    return v4

    .line 34
    :cond_1
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    :goto_0
    iget-object v9, v0, Lei/b;->b:[I

    .line 39
    .line 40
    iget-object v10, v1, Ldi/a;->e:[B

    .line 41
    .line 42
    iget v11, v0, Lei/h;->r:I

    .line 43
    .line 44
    const/4 v12, 0x4

    .line 45
    if-ge v6, v12, :cond_5

    .line 46
    .line 47
    aget v9, v9, v6

    .line 48
    .line 49
    iget v12, v1, Ldi/a;->g:I

    .line 50
    .line 51
    add-int/2addr v9, v4

    .line 52
    invoke-static {v10, v12, v9, v5, v2}, Lcom/bumptech/glide/d;->A([BIIII)I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    if-ge v9, v3, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    if-lt v9, v11, :cond_3

    .line 60
    .line 61
    iput v6, v0, Lei/h;->y:I

    .line 62
    .line 63
    add-int/lit8 v1, v9, -0x1

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lei/h;->k(I)V

    .line 66
    .line 67
    .line 68
    return v9

    .line 69
    :cond_3
    if-le v9, v7, :cond_4

    .line 70
    .line 71
    move v8, v6

    .line 72
    move v7, v9

    .line 73
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    iget-object v6, v0, Lei/i;->B:Landroidx/room/s;

    .line 77
    .line 78
    iget v13, v6, Landroidx/room/s;->b:I

    .line 79
    .line 80
    if-lez v13, :cond_8

    .line 81
    .line 82
    iget-object v14, v6, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v14, [I

    .line 85
    .line 86
    sub-int/2addr v13, v4

    .line 87
    aget v14, v14, v13

    .line 88
    .line 89
    iget-object v6, v6, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v6, [I

    .line 92
    .line 93
    aget v6, v6, v13

    .line 94
    .line 95
    if-lt v14, v11, :cond_6

    .line 96
    .line 97
    add-int/2addr v6, v12

    .line 98
    iput v6, v0, Lei/h;->y:I

    .line 99
    .line 100
    add-int/lit8 v1, v14, -0x1

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lei/h;->k(I)V

    .line 103
    .line 104
    .line 105
    return v14

    .line 106
    :cond_6
    :goto_2
    iget-object v11, v0, Lei/i;->B:Landroidx/room/s;

    .line 107
    .line 108
    iget v13, v11, Landroidx/room/s;->b:I

    .line 109
    .line 110
    if-le v13, v4, :cond_7

    .line 111
    .line 112
    iget-object v15, v11, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v15, [I

    .line 115
    .line 116
    add-int/lit8 v16, v13, -0x2

    .line 117
    .line 118
    aget v17, v15, v16

    .line 119
    .line 120
    add-int/lit8 v5, v17, 0x1

    .line 121
    .line 122
    if-ne v14, v5, :cond_7

    .line 123
    .line 124
    iget-object v5, v11, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v5, [I

    .line 127
    .line 128
    aget v12, v5, v16

    .line 129
    .line 130
    ushr-int/lit8 v4, v6, 0x7

    .line 131
    .line 132
    if-ge v12, v4, :cond_7

    .line 133
    .line 134
    add-int/lit8 v4, v13, -0x1

    .line 135
    .line 136
    iput v4, v11, Landroidx/room/s;->b:I

    .line 137
    .line 138
    add-int/lit8 v13, v13, -0x2

    .line 139
    .line 140
    aget v14, v15, v13

    .line 141
    .line 142
    aget v6, v5, v13

    .line 143
    .line 144
    const/4 v4, 0x1

    .line 145
    const/4 v5, 0x0

    .line 146
    const/4 v12, 0x4

    .line 147
    goto :goto_2

    .line 148
    :cond_7
    if-ne v14, v3, :cond_9

    .line 149
    .line 150
    const/16 v4, 0x80

    .line 151
    .line 152
    if-lt v6, v4, :cond_9

    .line 153
    .line 154
    const/4 v14, 0x1

    .line 155
    goto :goto_3

    .line 156
    :cond_8
    const/4 v6, 0x0

    .line 157
    const/4 v14, 0x0

    .line 158
    :cond_9
    :goto_3
    if-lt v7, v3, :cond_c

    .line 159
    .line 160
    add-int/lit8 v4, v7, 0x1

    .line 161
    .line 162
    if-ge v4, v14, :cond_b

    .line 163
    .line 164
    add-int/lit8 v4, v7, 0x2

    .line 165
    .line 166
    if-lt v4, v14, :cond_a

    .line 167
    .line 168
    const/16 v4, 0x200

    .line 169
    .line 170
    if-ge v6, v4, :cond_b

    .line 171
    .line 172
    :cond_a
    add-int/lit8 v4, v7, 0x3

    .line 173
    .line 174
    if-lt v4, v14, :cond_c

    .line 175
    .line 176
    const v4, 0x8000

    .line 177
    .line 178
    .line 179
    if-lt v6, v4, :cond_c

    .line 180
    .line 181
    :cond_b
    iput v8, v0, Lei/h;->y:I

    .line 182
    .line 183
    add-int/lit8 v1, v7, -0x1

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lei/h;->k(I)V

    .line 186
    .line 187
    .line 188
    return v7

    .line 189
    :cond_c
    if-lt v14, v3, :cond_d

    .line 190
    .line 191
    if-gt v2, v3, :cond_e

    .line 192
    .line 193
    :cond_d
    const/4 v2, 0x1

    .line 194
    goto :goto_9

    .line 195
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lei/h;->i()Landroidx/room/s;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    iput-object v2, v0, Lei/i;->B:Landroidx/room/s;

    .line 200
    .line 201
    iget v4, v2, Landroidx/room/s;->b:I

    .line 202
    .line 203
    if-lez v4, :cond_12

    .line 204
    .line 205
    iget-object v5, v2, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v5, [I

    .line 208
    .line 209
    const/4 v7, 0x1

    .line 210
    sub-int/2addr v4, v7

    .line 211
    aget v5, v5, v4

    .line 212
    .line 213
    iget-object v2, v2, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v2, [I

    .line 216
    .line 217
    aget v2, v2, v4

    .line 218
    .line 219
    if-lt v5, v14, :cond_10

    .line 220
    .line 221
    if-lt v2, v6, :cond_f

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_f
    :goto_4
    const/4 v2, 0x1

    .line 225
    goto :goto_6

    .line 226
    :cond_10
    :goto_5
    add-int/lit8 v4, v14, 0x1

    .line 227
    .line 228
    if-ne v5, v4, :cond_11

    .line 229
    .line 230
    ushr-int/lit8 v7, v2, 0x7

    .line 231
    .line 232
    if-ge v6, v7, :cond_f

    .line 233
    .line 234
    :cond_11
    if-gt v5, v4, :cond_f

    .line 235
    .line 236
    const/4 v4, 0x1

    .line 237
    add-int/2addr v5, v4

    .line 238
    if-lt v5, v14, :cond_12

    .line 239
    .line 240
    const/4 v4, 0x3

    .line 241
    if-lt v14, v4, :cond_12

    .line 242
    .line 243
    ushr-int/lit8 v4, v6, 0x7

    .line 244
    .line 245
    if-ge v2, v4, :cond_12

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_12
    const/4 v2, 0x1

    .line 249
    goto :goto_7

    .line 250
    :goto_6
    return v2

    .line 251
    :goto_7
    add-int/lit8 v4, v14, -0x1

    .line 252
    .line 253
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    const/4 v4, 0x4

    .line 258
    const/4 v5, 0x0

    .line 259
    :goto_8
    if-ge v5, v4, :cond_14

    .line 260
    .line 261
    aget v4, v9, v5

    .line 262
    .line 263
    iget v7, v1, Ldi/a;->g:I

    .line 264
    .line 265
    add-int/2addr v4, v2

    .line 266
    const/4 v8, 0x0

    .line 267
    invoke-static {v10, v7, v4, v8, v3}, Lcom/bumptech/glide/d;->A([BIIII)I

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-ne v4, v3, :cond_13

    .line 272
    .line 273
    return v2

    .line 274
    :cond_13
    add-int/lit8 v5, v5, 0x1

    .line 275
    .line 276
    const/4 v4, 0x4

    .line 277
    goto :goto_8

    .line 278
    :cond_14
    add-int/2addr v6, v4

    .line 279
    iput v6, v0, Lei/h;->y:I

    .line 280
    .line 281
    add-int/lit8 v1, v14, -0x2

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Lei/h;->k(I)V

    .line 284
    .line 285
    .line 286
    return v14

    .line 287
    :goto_9
    return v2
.end method
