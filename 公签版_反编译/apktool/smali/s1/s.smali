.class public final Ls1/s;
.super Ls1/m;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/m;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final e(Ljava/nio/ByteBuffer;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int v2, v1, v0

    .line 10
    .line 11
    iget-object v3, p0, Ls1/m;->b:Ls1/i;

    .line 12
    .line 13
    iget v3, v3, Ls1/i;->c:I

    .line 14
    .line 15
    const/4 v4, 0x3

    .line 16
    const/4 v5, 0x4

    .line 17
    const/high16 v6, 0x70000000

    .line 18
    .line 19
    const/high16 v7, 0x60000000

    .line 20
    .line 21
    const/high16 v8, 0x50000000

    .line 22
    .line 23
    const/high16 v9, 0x10000000

    .line 24
    .line 25
    const/16 v10, 0x16

    .line 26
    .line 27
    const/16 v11, 0x15

    .line 28
    .line 29
    if-eq v3, v4, :cond_2

    .line 30
    .line 31
    if-eq v3, v5, :cond_3

    .line 32
    .line 33
    if-eq v3, v11, :cond_1

    .line 34
    .line 35
    if-eq v3, v10, :cond_3

    .line 36
    .line 37
    if-eq v3, v9, :cond_4

    .line 38
    .line 39
    if-eq v3, v8, :cond_1

    .line 40
    .line 41
    if-eq v3, v7, :cond_3

    .line 42
    .line 43
    if-ne v3, v6, :cond_0

    .line 44
    .line 45
    div-int/lit8 v2, v2, 0x4

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_1
    div-int/lit8 v2, v2, 0x3

    .line 55
    .line 56
    :cond_2
    mul-int/lit8 v2, v2, 0x2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    div-int/lit8 v2, v2, 0x2

    .line 60
    .line 61
    :cond_4
    :goto_0
    invoke-virtual {p0, v2}, Ls1/m;->m(I)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, p0, Ls1/m;->b:Ls1/i;

    .line 66
    .line 67
    iget v3, v3, Ls1/i;->c:I

    .line 68
    .line 69
    if-eq v3, v4, :cond_c

    .line 70
    .line 71
    if-eq v3, v5, :cond_b

    .line 72
    .line 73
    if-eq v3, v11, :cond_a

    .line 74
    .line 75
    if-eq v3, v10, :cond_9

    .line 76
    .line 77
    if-eq v3, v9, :cond_8

    .line 78
    .line 79
    if-eq v3, v8, :cond_7

    .line 80
    .line 81
    if-eq v3, v7, :cond_6

    .line 82
    .line 83
    if-ne v3, v6, :cond_5

    .line 84
    .line 85
    :goto_1
    if-ge v0, v1, :cond_d

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getDouble(I)D

    .line 88
    .line 89
    .line 90
    move-result-wide v3

    .line 91
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 92
    .line 93
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 98
    .line 99
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    const-wide v5, 0x40dfffc000000000L    # 32767.0

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    mul-double v3, v3, v5

    .line 109
    .line 110
    double-to-int v3, v3

    .line 111
    int-to-short v3, v3

    .line 112
    and-int/lit16 v4, v3, 0xff

    .line 113
    .line 114
    int-to-byte v4, v4

    .line 115
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    .line 118
    shr-int/lit8 v3, v3, 0x8

    .line 119
    .line 120
    and-int/lit16 v3, v3, 0xff

    .line 121
    .line 122
    int-to-byte v3, v3

    .line 123
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 124
    .line 125
    .line 126
    add-int/lit8 v0, v0, 0x8

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 132
    .line 133
    .line 134
    throw p1

    .line 135
    :cond_6
    :goto_2
    if-ge v0, v1, :cond_d

    .line 136
    .line 137
    add-int/lit8 v3, v0, 0x1

    .line 138
    .line 139
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 151
    .line 152
    .line 153
    add-int/lit8 v0, v0, 0x4

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_7
    :goto_3
    if-ge v0, v1, :cond_d

    .line 157
    .line 158
    add-int/lit8 v3, v0, 0x1

    .line 159
    .line 160
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 172
    .line 173
    .line 174
    add-int/lit8 v0, v0, 0x3

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_8
    :goto_4
    if-ge v0, v1, :cond_d

    .line 178
    .line 179
    add-int/lit8 v3, v0, 0x1

    .line 180
    .line 181
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 193
    .line 194
    .line 195
    add-int/lit8 v0, v0, 0x2

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_9
    :goto_5
    if-ge v0, v1, :cond_d

    .line 199
    .line 200
    add-int/lit8 v3, v0, 0x2

    .line 201
    .line 202
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 207
    .line 208
    .line 209
    add-int/lit8 v3, v0, 0x3

    .line 210
    .line 211
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 216
    .line 217
    .line 218
    add-int/lit8 v0, v0, 0x4

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_a
    :goto_6
    if-ge v0, v1, :cond_d

    .line 222
    .line 223
    add-int/lit8 v3, v0, 0x1

    .line 224
    .line 225
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 230
    .line 231
    .line 232
    add-int/lit8 v3, v0, 0x2

    .line 233
    .line 234
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 239
    .line 240
    .line 241
    add-int/lit8 v0, v0, 0x3

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_b
    :goto_7
    if-ge v0, v1, :cond_d

    .line 245
    .line 246
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getFloat(I)F

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    const/high16 v4, -0x40800000    # -1.0f

    .line 251
    .line 252
    const/high16 v5, 0x3f800000    # 1.0f

    .line 253
    .line 254
    invoke-static {v3, v4, v5}, Lu1/f0;->f(FFF)F

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    const v4, 0x46fffe00    # 32767.0f

    .line 259
    .line 260
    .line 261
    mul-float v3, v3, v4

    .line 262
    .line 263
    float-to-int v3, v3

    .line 264
    int-to-short v3, v3

    .line 265
    and-int/lit16 v4, v3, 0xff

    .line 266
    .line 267
    int-to-byte v4, v4

    .line 268
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 269
    .line 270
    .line 271
    shr-int/lit8 v3, v3, 0x8

    .line 272
    .line 273
    and-int/lit16 v3, v3, 0xff

    .line 274
    .line 275
    int-to-byte v3, v3

    .line 276
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 277
    .line 278
    .line 279
    add-int/lit8 v0, v0, 0x4

    .line 280
    .line 281
    goto :goto_7

    .line 282
    :cond_c
    :goto_8
    if-ge v0, v1, :cond_d

    .line 283
    .line 284
    const/4 v3, 0x0

    .line 285
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    and-int/lit16 v3, v3, 0xff

    .line 293
    .line 294
    add-int/lit8 v3, v3, -0x80

    .line 295
    .line 296
    int-to-byte v3, v3

    .line 297
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 298
    .line 299
    .line 300
    add-int/lit8 v0, v0, 0x1

    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_d
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 311
    .line 312
    .line 313
    return-void
.end method

.method public final i(Ls1/i;)Ls1/i;
    .locals 3

    .line 1
    iget v0, p1, Ls1/i;->c:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    const/high16 v1, 0x10000000

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x15

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/high16 v1, 0x50000000

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/16 v1, 0x16

    .line 22
    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    const/high16 v1, 0x60000000

    .line 26
    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    if-eq v0, v1, :cond_1

    .line 31
    .line 32
    const/high16 v1, 0x70000000

    .line 33
    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ls1/k;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Ls1/k;-><init>(Ls1/i;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    :goto_0
    if-eq v0, v2, :cond_2

    .line 44
    .line 45
    new-instance v0, Ls1/i;

    .line 46
    .line 47
    iget v1, p1, Ls1/i;->a:I

    .line 48
    .line 49
    iget p1, p1, Ls1/i;->b:I

    .line 50
    .line 51
    invoke-direct {v0, v1, p1, v2}, Ls1/i;-><init>(III)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    sget-object v0, Ls1/i;->e:Ls1/i;

    .line 56
    .line 57
    :goto_1
    return-object v0
.end method
