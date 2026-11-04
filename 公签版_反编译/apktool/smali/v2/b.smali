.class public final Lv2/b;
.super Lnh/b;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lv2/b;->b:I

    invoke-direct {p0}, Lnh/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final r(Lu2/a;Ljava/nio/ByteBuffer;)Lr1/d0;
    .locals 17

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/16 v2, 0x8

    .line 4
    .line 5
    move-object/from16 v3, p0

    .line 6
    .line 7
    iget v4, v3, Lv2/b;->b:I

    .line 8
    .line 9
    packed-switch v4, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v2, Lr1/d0;

    .line 13
    .line 14
    new-instance v4, Lu1/q;

    .line 15
    .line 16
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    invoke-direct {v4, v5, v6}, Lu1/q;-><init>([BI)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Lu1/q;->w()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Lu1/q;->w()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Lu1/q;->v()J

    .line 42
    .line 43
    .line 44
    move-result-wide v10

    .line 45
    invoke-virtual {v4}, Lu1/q;->v()J

    .line 46
    .line 47
    .line 48
    move-result-wide v12

    .line 49
    iget-object v5, v4, Lu1/q;->a:[B

    .line 50
    .line 51
    iget v6, v4, Lu1/q;->b:I

    .line 52
    .line 53
    iget v4, v4, Lu1/q;->c:I

    .line 54
    .line 55
    invoke-static {v5, v6, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 56
    .line 57
    .line 58
    move-result-object v14

    .line 59
    new-instance v4, Lw2/a;

    .line 60
    .line 61
    move-object v7, v4

    .line 62
    invoke-direct/range {v7 .. v14}, Lw2/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 63
    .line 64
    .line 65
    new-array v1, v1, [Lr1/c0;

    .line 66
    .line 67
    aput-object v4, v1, v0

    .line 68
    .line 69
    invoke-direct {v2, v1}, Lr1/d0;-><init>([Lr1/c0;)V

    .line 70
    .line 71
    .line 72
    return-object v2

    .line 73
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->get()B

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    const/16 v5, 0x74

    .line 78
    .line 79
    if-ne v4, v5, :cond_7

    .line 80
    .line 81
    new-instance v4, Lj3/f;

    .line 82
    .line 83
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    invoke-direct {v4, v5, v7}, Lj3/f;-><init>([BI)V

    .line 92
    .line 93
    .line 94
    const/16 v5, 0xc

    .line 95
    .line 96
    invoke-virtual {v4, v5}, Lj3/f;->o(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v5}, Lj3/f;->g(I)I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    invoke-virtual {v4}, Lj3/f;->d()I

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    add-int/2addr v8, v7

    .line 108
    const/4 v7, 0x4

    .line 109
    sub-int/2addr v8, v7

    .line 110
    const/16 v9, 0x2c

    .line 111
    .line 112
    invoke-virtual {v4, v9}, Lj3/f;->o(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v5}, Lj3/f;->g(I)I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    invoke-virtual {v4, v9}, Lj3/f;->p(I)V

    .line 120
    .line 121
    .line 122
    const/16 v9, 0x10

    .line 123
    .line 124
    invoke-virtual {v4, v9}, Lj3/f;->o(I)V

    .line 125
    .line 126
    .line 127
    new-instance v10, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    :goto_0
    invoke-virtual {v4}, Lj3/f;->d()I

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    if-ge v11, v8, :cond_5

    .line 137
    .line 138
    const/16 v11, 0x30

    .line 139
    .line 140
    invoke-virtual {v4, v11}, Lj3/f;->o(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v2}, Lj3/f;->g(I)I

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    invoke-virtual {v4, v7}, Lj3/f;->o(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v5}, Lj3/f;->g(I)I

    .line 151
    .line 152
    .line 153
    move-result v12

    .line 154
    invoke-virtual {v4}, Lj3/f;->d()I

    .line 155
    .line 156
    .line 157
    move-result v13

    .line 158
    add-int/2addr v13, v12

    .line 159
    const/4 v12, 0x0

    .line 160
    const/4 v14, 0x0

    .line 161
    :goto_1
    invoke-virtual {v4}, Lj3/f;->d()I

    .line 162
    .line 163
    .line 164
    move-result v15

    .line 165
    if-ge v15, v13, :cond_3

    .line 166
    .line 167
    invoke-virtual {v4, v2}, Lj3/f;->g(I)I

    .line 168
    .line 169
    .line 170
    move-result v15

    .line 171
    invoke-virtual {v4, v2}, Lj3/f;->g(I)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-virtual {v4}, Lj3/f;->d()I

    .line 176
    .line 177
    .line 178
    move-result v16

    .line 179
    add-int v5, v16, v0

    .line 180
    .line 181
    const/4 v6, 0x2

    .line 182
    if-ne v15, v6, :cond_1

    .line 183
    .line 184
    invoke-virtual {v4, v9}, Lj3/f;->g(I)I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    invoke-virtual {v4, v2}, Lj3/f;->o(I)V

    .line 189
    .line 190
    .line 191
    const/4 v6, 0x3

    .line 192
    if-ne v0, v6, :cond_2

    .line 193
    .line 194
    :goto_2
    invoke-virtual {v4}, Lj3/f;->d()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-ge v0, v5, :cond_2

    .line 199
    .line 200
    invoke-virtual {v4, v2}, Lj3/f;->g(I)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    sget-object v6, Lj$/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 205
    .line 206
    new-array v12, v0, [B

    .line 207
    .line 208
    invoke-virtual {v4, v12, v0}, Lj3/f;->j([BI)V

    .line 209
    .line 210
    .line 211
    new-instance v0, Ljava/lang/String;

    .line 212
    .line 213
    invoke-direct {v0, v12, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, v2}, Lj3/f;->g(I)I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    const/4 v12, 0x0

    .line 221
    :goto_3
    if-ge v12, v6, :cond_0

    .line 222
    .line 223
    invoke-virtual {v4, v2}, Lj3/f;->g(I)I

    .line 224
    .line 225
    .line 226
    move-result v15

    .line 227
    invoke-virtual {v4, v15}, Lj3/f;->p(I)V

    .line 228
    .line 229
    .line 230
    add-int/2addr v12, v1

    .line 231
    goto :goto_3

    .line 232
    :cond_0
    move-object v12, v0

    .line 233
    goto :goto_2

    .line 234
    :cond_1
    const/16 v6, 0x15

    .line 235
    .line 236
    if-ne v15, v6, :cond_2

    .line 237
    .line 238
    sget-object v6, Lj$/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 239
    .line 240
    new-array v14, v0, [B

    .line 241
    .line 242
    invoke-virtual {v4, v14, v0}, Lj3/f;->j([BI)V

    .line 243
    .line 244
    .line 245
    new-instance v0, Ljava/lang/String;

    .line 246
    .line 247
    invoke-direct {v0, v14, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 248
    .line 249
    .line 250
    move-object v14, v0

    .line 251
    :cond_2
    mul-int/lit8 v5, v5, 0x8

    .line 252
    .line 253
    invoke-virtual {v4, v5}, Lj3/f;->m(I)V

    .line 254
    .line 255
    .line 256
    const/4 v0, 0x0

    .line 257
    const/16 v5, 0xc

    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_3
    mul-int/lit8 v13, v13, 0x8

    .line 261
    .line 262
    invoke-virtual {v4, v13}, Lj3/f;->m(I)V

    .line 263
    .line 264
    .line 265
    if-eqz v12, :cond_4

    .line 266
    .line 267
    if-eqz v14, :cond_4

    .line 268
    .line 269
    new-instance v0, Lv2/a;

    .line 270
    .line 271
    invoke-virtual {v12, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-direct {v0, v11, v5}, Lv2/a;-><init>(ILjava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    :cond_4
    const/4 v0, 0x0

    .line 282
    const/16 v5, 0xc

    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_6

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_6
    new-instance v6, Lr1/d0;

    .line 294
    .line 295
    invoke-direct {v6, v10}, Lr1/d0;-><init>(Ljava/util/List;)V

    .line 296
    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_7
    :goto_4
    const/4 v6, 0x0

    .line 300
    :goto_5
    return-object v6

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
