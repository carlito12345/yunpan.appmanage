.class public final Leb/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/m;


# instance fields
.field public a:Leb/n;

.field public b:F

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:I

.field public final synthetic e:Lob/a;

.field public final synthetic f:Leb/o;


# direct methods
.method public constructor <init>(Leb/o;Ljava/util/ArrayList;ILob/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leb/f;->f:Leb/o;

    .line 2
    .line 3
    iput-object p2, p0, Leb/f;->c:Ljava/util/ArrayList;

    .line 4
    .line 5
    iput p3, p0, Leb/f;->d:I

    .line 6
    .line 7
    iput-object p4, p0, Leb/f;->e:Lob/a;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance p1, Leb/n;

    .line 13
    .line 14
    invoke-direct {p1}, Leb/n;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Leb/f;->a:Leb/n;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput p1, p0, Leb/f;->b:F

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;ZLeb/j;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_12

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lwb/i;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v3, v0, Leb/f;->f:Leb/o;

    .line 23
    .line 24
    iget v4, v2, Lwb/i;->b:I

    .line 25
    .line 26
    iget v5, v2, Lwb/i;->a:I

    .line 27
    .line 28
    sub-int/2addr v4, v5

    .line 29
    invoke-static {v4}, Lsb/h;->f(I)[F

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iget v14, v2, Lwb/i;->a:I

    .line 34
    .line 35
    iget v15, v2, Lwb/i;->b:I

    .line 36
    .line 37
    iget-boolean v13, v2, Lwb/i;->c:Z

    .line 38
    .line 39
    iget-object v5, v3, Leb/o;->j:Leb/p;

    .line 40
    .line 41
    iget v5, v5, Leb/p;->a:I

    .line 42
    .line 43
    int-to-float v5, v5

    .line 44
    iget-object v6, v3, Leb/o;->k:Leb/c;

    .line 45
    .line 46
    iget v6, v6, Leb/c;->a:F

    .line 47
    .line 48
    mul-float v16, v5, v6

    .line 49
    .line 50
    const/16 v17, 0x0

    .line 51
    .line 52
    move v7, v14

    .line 53
    move v12, v7

    .line 54
    const/16 v18, 0x0

    .line 55
    .line 56
    :goto_1
    if-gt v12, v15, :cond_4

    .line 57
    .line 58
    if-eq v12, v15, :cond_1

    .line 59
    .line 60
    iget-object v5, v3, Leb/o;->d:Lmb/h;

    .line 61
    .line 62
    invoke-virtual {v5, v12}, Lmb/h;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    const/16 v6, 0x9

    .line 67
    .line 68
    if-ne v5, v6, :cond_0

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_0
    move-object/from16 p1, v1

    .line 72
    .line 73
    move v1, v12

    .line 74
    move/from16 v20, v13

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_1
    :goto_2
    if-le v12, v7, :cond_2

    .line 78
    .line 79
    iget-object v5, v3, Leb/o;->k:Leb/c;

    .line 80
    .line 81
    iget-object v6, v3, Leb/o;->d:Lmb/h;

    .line 82
    .line 83
    sub-int v8, v12, v7

    .line 84
    .line 85
    sub-int v10, v15, v14

    .line 86
    .line 87
    sub-int v19, v7, v14

    .line 88
    .line 89
    move v9, v14

    .line 90
    move v11, v13

    .line 91
    move-object/from16 p1, v1

    .line 92
    .line 93
    move v1, v12

    .line 94
    move-object v12, v4

    .line 95
    move/from16 v20, v13

    .line 96
    .line 97
    move/from16 v13, v19

    .line 98
    .line 99
    invoke-virtual/range {v5 .. v13}, Leb/c;->b(Landroid/text/GetChars;IIIIZ[FI)F

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    add-float v18, v18, v5

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_2
    move-object/from16 p1, v1

    .line 107
    .line 108
    move v1, v12

    .line 109
    move/from16 v20, v13

    .line 110
    .line 111
    :goto_3
    if-ge v1, v15, :cond_3

    .line 112
    .line 113
    add-float v18, v18, v16

    .line 114
    .line 115
    sub-int v12, v1, v14

    .line 116
    .line 117
    aput v16, v4, v12

    .line 118
    .line 119
    :cond_3
    add-int/lit8 v7, v1, 0x1

    .line 120
    .line 121
    :goto_4
    add-int/lit8 v12, v1, 0x1

    .line 122
    .line 123
    move-object/from16 v1, p1

    .line 124
    .line 125
    move/from16 v13, v20

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    move-object/from16 p1, v1

    .line 129
    .line 130
    iget v1, v0, Leb/f;->b:F

    .line 131
    .line 132
    add-float v3, v1, v18

    .line 133
    .line 134
    iget v5, v0, Leb/f;->d:I

    .line 135
    .line 136
    int-to-float v5, v5

    .line 137
    const/4 v6, 0x0

    .line 138
    cmpg-float v3, v3, v5

    .line 139
    .line 140
    if-gez v3, :cond_7

    .line 141
    .line 142
    iget-object v3, v0, Leb/f;->a:Leb/n;

    .line 143
    .line 144
    iget-boolean v5, v3, Leb/n;->a:Z

    .line 145
    .line 146
    if-eqz v5, :cond_5

    .line 147
    .line 148
    iget v5, v2, Lwb/i;->a:I

    .line 149
    .line 150
    iget v2, v2, Lwb/i;->b:I

    .line 151
    .line 152
    iput-boolean v6, v3, Leb/n;->a:Z

    .line 153
    .line 154
    iput v5, v3, Leb/n;->b:I

    .line 155
    .line 156
    iput v2, v3, Leb/n;->c:I

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_5
    iget v2, v2, Lwb/i;->b:I

    .line 160
    .line 161
    if-nez v5, :cond_6

    .line 162
    .line 163
    iput v2, v3, Leb/n;->c:I

    .line 164
    .line 165
    :goto_5
    add-float v1, v1, v18

    .line 166
    .line 167
    iput v1, v0, Leb/f;->b:F

    .line 168
    .line 169
    invoke-static {v4}, Lsb/h;->i([F)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_b

    .line 173
    .line 174
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 175
    .line 176
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 177
    .line 178
    .line 179
    throw v1

    .line 180
    :cond_7
    iget v1, v2, Lwb/i;->b:I

    .line 181
    .line 182
    iget v3, v2, Lwb/i;->a:I

    .line 183
    .line 184
    sub-int/2addr v1, v3

    .line 185
    const/4 v3, 0x0

    .line 186
    :goto_6
    if-ge v3, v1, :cond_11

    .line 187
    .line 188
    iget v7, v0, Leb/f;->b:F

    .line 189
    .line 190
    sub-float v7, v5, v7

    .line 191
    .line 192
    float-to-int v7, v7

    .line 193
    move v8, v3

    .line 194
    const/4 v9, 0x0

    .line 195
    :goto_7
    if-ge v8, v1, :cond_a

    .line 196
    .line 197
    aget v10, v4, v8

    .line 198
    .line 199
    cmpl-float v11, v10, v17

    .line 200
    .line 201
    if-nez v11, :cond_9

    .line 202
    .line 203
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_9
    add-float/2addr v9, v10

    .line 207
    int-to-float v10, v7

    .line 208
    cmpl-float v10, v9, v10

    .line 209
    .line 210
    if-lez v10, :cond_8

    .line 211
    .line 212
    :cond_a
    if-ne v8, v3, :cond_c

    .line 213
    .line 214
    iget-object v7, v0, Leb/f;->a:Leb/n;

    .line 215
    .line 216
    iget-boolean v7, v7, Leb/n;->a:Z

    .line 217
    .line 218
    if-eqz v7, :cond_b

    .line 219
    .line 220
    add-int/lit8 v8, v8, 0x1

    .line 221
    .line 222
    goto :goto_8

    .line 223
    :cond_b
    invoke-virtual/range {p0 .. p0}, Leb/f;->b()V

    .line 224
    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_c
    :goto_8
    iget v7, v2, Lwb/i;->a:I

    .line 228
    .line 229
    add-int v9, v7, v3

    .line 230
    .line 231
    add-int/2addr v7, v8

    .line 232
    iget-object v10, v0, Leb/f;->e:Lob/a;

    .line 233
    .line 234
    invoke-interface {v10, v9, v7}, Lob/a;->a(II)I

    .line 235
    .line 236
    .line 237
    move-result v7

    .line 238
    iget v9, v2, Lwb/i;->a:I

    .line 239
    .line 240
    sub-int/2addr v7, v9

    .line 241
    move v9, v3

    .line 242
    const/4 v10, 0x0

    .line 243
    :goto_9
    if-ge v9, v7, :cond_d

    .line 244
    .line 245
    aget v11, v4, v9

    .line 246
    .line 247
    add-float/2addr v10, v11

    .line 248
    add-int/lit8 v9, v9, 0x1

    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_d
    iget-object v9, v0, Leb/f;->a:Leb/n;

    .line 252
    .line 253
    iget-boolean v11, v9, Leb/n;->a:Z

    .line 254
    .line 255
    if-eqz v11, :cond_e

    .line 256
    .line 257
    iget v11, v2, Lwb/i;->a:I

    .line 258
    .line 259
    add-int/2addr v3, v11

    .line 260
    add-int/2addr v11, v7

    .line 261
    iput-boolean v6, v9, Leb/n;->a:Z

    .line 262
    .line 263
    iput v3, v9, Leb/n;->b:I

    .line 264
    .line 265
    iput v11, v9, Leb/n;->c:I

    .line 266
    .line 267
    goto :goto_a

    .line 268
    :cond_e
    iget v3, v2, Lwb/i;->a:I

    .line 269
    .line 270
    add-int/2addr v3, v7

    .line 271
    if-nez v11, :cond_10

    .line 272
    .line 273
    iput v3, v9, Leb/n;->c:I

    .line 274
    .line 275
    :goto_a
    iget v3, v0, Leb/f;->b:F

    .line 276
    .line 277
    add-float/2addr v3, v10

    .line 278
    iput v3, v0, Leb/f;->b:F

    .line 279
    .line 280
    if-eq v8, v7, :cond_f

    .line 281
    .line 282
    invoke-virtual/range {p0 .. p0}, Leb/f;->b()V

    .line 283
    .line 284
    .line 285
    :cond_f
    move v3, v7

    .line 286
    goto :goto_6

    .line 287
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 288
    .line 289
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 290
    .line 291
    .line 292
    throw v1

    .line 293
    :cond_11
    invoke-static {v4}, Lsb/h;->i([F)V

    .line 294
    .line 295
    .line 296
    :goto_b
    move-object/from16 v1, p1

    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :cond_12
    const/4 v1, 0x1

    .line 301
    return v1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Leb/f;->a:Leb/n;

    .line 2
    .line 3
    iget v1, p0, Leb/f;->b:F

    .line 4
    .line 5
    iput v1, v0, Leb/n;->d:F

    .line 6
    .line 7
    iget-object v1, p0, Leb/f;->c:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Leb/f;->b:F

    .line 14
    .line 15
    new-instance v0, Leb/n;

    .line 16
    .line 17
    invoke-direct {v0}, Leb/n;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Leb/f;->a:Leb/n;

    .line 21
    .line 22
    return-void
.end method
