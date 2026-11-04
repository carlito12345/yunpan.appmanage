.class public final Lu4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu4/w;

.field public final b:Lu4/w;

.field public final c:Lu4/w;

.field public final d:Lu4/w;

.field public final e:Lu4/z;

.field public final f:Lu4/z;

.field public final g:Lu4/z;

.field public final h:Lu4/l;

.field public final i:Lu4/v;

.field public final j:Lu4/d;

.field public final k:Lu4/w;

.field public final l:Lu4/w;

.field public final m:Lu4/z;

.field public final n:[Lu4/a0;

.field public o:I


# direct methods
.method public constructor <init>(Lha/j2;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lu4/z;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    invoke-direct {v1, v0, v2}, Lu4/z;-><init>(Lu4/f;I)V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lu4/f;->m:Lu4/z;

    .line 13
    .line 14
    new-instance v3, Lu4/w;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x4

    .line 18
    const/4 v6, 0x1

    .line 19
    invoke-direct {v3, v4, v0, v5, v6}, Lu4/w;-><init>(Ljava/lang/String;Lu4/f;II)V

    .line 20
    .line 21
    .line 22
    iput-object v3, v0, Lu4/f;->b:Lu4/w;

    .line 23
    .line 24
    new-instance v7, Lu4/w;

    .line 25
    .line 26
    const-string v8, "word_data"

    .line 27
    .line 28
    const/4 v9, 0x2

    .line 29
    invoke-direct {v7, v8, v0, v5, v9}, Lu4/w;-><init>(Ljava/lang/String;Lu4/f;II)V

    .line 30
    .line 31
    .line 32
    iput-object v7, v0, Lu4/f;->a:Lu4/w;

    .line 33
    .line 34
    new-instance v8, Lu4/w;

    .line 35
    .line 36
    const-string v10, "string_data"

    .line 37
    .line 38
    invoke-direct {v8, v10, v0, v6, v2}, Lu4/w;-><init>(Ljava/lang/String;Lu4/f;II)V

    .line 39
    .line 40
    .line 41
    iput-object v8, v0, Lu4/f;->d:Lu4/w;

    .line 42
    .line 43
    new-instance v10, Lu4/w;

    .line 44
    .line 45
    invoke-direct {v10, v4, v0, v6, v6}, Lu4/w;-><init>(Ljava/lang/String;Lu4/f;II)V

    .line 46
    .line 47
    .line 48
    iput-object v10, v0, Lu4/f;->k:Lu4/w;

    .line 49
    .line 50
    new-instance v4, Lu4/w;

    .line 51
    .line 52
    const-string v11, "byte_data"

    .line 53
    .line 54
    invoke-direct {v4, v11, v0, v6, v9}, Lu4/w;-><init>(Ljava/lang/String;Lu4/f;II)V

    .line 55
    .line 56
    .line 57
    iput-object v4, v0, Lu4/f;->l:Lu4/w;

    .line 58
    .line 59
    new-instance v11, Lu4/z;

    .line 60
    .line 61
    invoke-direct {v11, v0, v6}, Lu4/z;-><init>(Lu4/f;I)V

    .line 62
    .line 63
    .line 64
    iput-object v11, v0, Lu4/f;->e:Lu4/z;

    .line 65
    .line 66
    new-instance v12, Lu4/z;

    .line 67
    .line 68
    invoke-direct {v12, v0, v9}, Lu4/z;-><init>(Lu4/f;I)V

    .line 69
    .line 70
    .line 71
    iput-object v12, v0, Lu4/f;->f:Lu4/z;

    .line 72
    .line 73
    new-instance v13, Lu4/z;

    .line 74
    .line 75
    const/4 v14, 0x0

    .line 76
    invoke-direct {v13, v0, v14}, Lu4/z;-><init>(Lu4/f;I)V

    .line 77
    .line 78
    .line 79
    iput-object v13, v0, Lu4/f;->g:Lu4/z;

    .line 80
    .line 81
    new-instance v15, Lu4/l;

    .line 82
    .line 83
    invoke-direct {v15, v0}, Lu4/l;-><init>(Lu4/f;)V

    .line 84
    .line 85
    .line 86
    iput-object v15, v0, Lu4/f;->h:Lu4/l;

    .line 87
    .line 88
    new-instance v2, Lu4/v;

    .line 89
    .line 90
    invoke-direct {v2, v0}, Lu4/v;-><init>(Lu4/f;)V

    .line 91
    .line 92
    .line 93
    iput-object v2, v0, Lu4/f;->i:Lu4/v;

    .line 94
    .line 95
    new-instance v9, Lu4/d;

    .line 96
    .line 97
    invoke-direct {v9, v0}, Lu4/d;-><init>(Lu4/f;)V

    .line 98
    .line 99
    .line 100
    iput-object v9, v0, Lu4/f;->j:Lu4/d;

    .line 101
    .line 102
    new-instance v14, Lu4/w;

    .line 103
    .line 104
    move-object/from16 v17, v10

    .line 105
    .line 106
    const-string v10, "map"

    .line 107
    .line 108
    invoke-direct {v14, v10, v0, v5, v6}, Lu4/w;-><init>(Ljava/lang/String;Lu4/f;II)V

    .line 109
    .line 110
    .line 111
    iput-object v14, v0, Lu4/f;->c:Lu4/w;

    .line 112
    .line 113
    const/16 v10, 0xd

    .line 114
    .line 115
    new-array v10, v10, [Lu4/a0;

    .line 116
    .line 117
    const/16 v16, 0x0

    .line 118
    .line 119
    aput-object v1, v10, v16

    .line 120
    .line 121
    aput-object v11, v10, v6

    .line 122
    .line 123
    const/4 v1, 0x2

    .line 124
    aput-object v12, v10, v1

    .line 125
    .line 126
    const/4 v1, 0x3

    .line 127
    aput-object v13, v10, v1

    .line 128
    .line 129
    aput-object v15, v10, v5

    .line 130
    .line 131
    const/4 v1, 0x5

    .line 132
    aput-object v2, v10, v1

    .line 133
    .line 134
    const/4 v1, 0x6

    .line 135
    aput-object v9, v10, v1

    .line 136
    .line 137
    const/4 v1, 0x7

    .line 138
    aput-object v7, v10, v1

    .line 139
    .line 140
    const/16 v1, 0x8

    .line 141
    .line 142
    aput-object v3, v10, v1

    .line 143
    .line 144
    const/16 v1, 0x9

    .line 145
    .line 146
    aput-object v8, v10, v1

    .line 147
    .line 148
    const/16 v1, 0xa

    .line 149
    .line 150
    aput-object v4, v10, v1

    .line 151
    .line 152
    const/16 v1, 0xb

    .line 153
    .line 154
    aput-object v17, v10, v1

    .line 155
    .line 156
    const/16 v1, 0xc

    .line 157
    .line 158
    aput-object v14, v10, v1

    .line 159
    .line 160
    iput-object v10, v0, Lu4/f;->n:[Lu4/a0;

    .line 161
    .line 162
    const/4 v1, -0x1

    .line 163
    iput v1, v0, Lu4/f;->o:I

    .line 164
    .line 165
    return-void
.end method


# virtual methods
.method public final a(Lx4/a;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    instance-of v0, p1, Lx4/t;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lu4/f;->e:Lu4/z;

    .line 8
    .line 9
    check-cast p1, Lx4/t;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lu4/z;->o(Lx4/t;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v0, p1, Lx4/u;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lu4/f;->f:Lu4/z;

    .line 20
    .line 21
    check-cast p1, Lx4/u;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lu4/z;->p(Lx4/u;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    instance-of v0, p1, Lx4/q;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lu4/f;->i:Lu4/v;

    .line 32
    .line 33
    check-cast p1, Lx4/q;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lu4/v;->m(Lx4/q;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    instance-of v0, p1, Lx4/h;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lu4/f;->h:Lu4/l;

    .line 44
    .line 45
    check-cast p1, Lx4/h;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lu4/l;->m(Lx4/h;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_0
    return-void

    .line 51
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 52
    .line 53
    const-string v0, "cst == null"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public final b()[B
    .locals 11

    .line 1
    iget-object v0, p0, Lu4/f;->j:Lu4/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu4/a0;->d()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lu4/f;->k:Lu4/w;

    .line 7
    .line 8
    invoke-virtual {v0}, Lu4/a0;->d()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lu4/f;->a:Lu4/w;

    .line 12
    .line 13
    invoke-virtual {v0}, Lu4/a0;->d()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lu4/f;->l:Lu4/w;

    .line 17
    .line 18
    invoke-virtual {v0}, Lu4/a0;->d()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lu4/f;->i:Lu4/v;

    .line 22
    .line 23
    invoke-virtual {v0}, Lu4/a0;->d()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lu4/f;->h:Lu4/l;

    .line 27
    .line 28
    invoke-virtual {v0}, Lu4/a0;->d()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lu4/f;->g:Lu4/z;

    .line 32
    .line 33
    invoke-virtual {v0}, Lu4/a0;->d()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lu4/f;->b:Lu4/w;

    .line 37
    .line 38
    invoke-virtual {v0}, Lu4/a0;->d()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lu4/f;->f:Lu4/z;

    .line 42
    .line 43
    invoke-virtual {v0}, Lu4/a0;->d()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lu4/f;->e:Lu4/z;

    .line 47
    .line 48
    invoke-virtual {v0}, Lu4/a0;->d()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lu4/f;->d:Lu4/w;

    .line 52
    .line 53
    invoke-virtual {v0}, Lu4/a0;->d()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lu4/f;->m:Lu4/z;

    .line 57
    .line 58
    invoke-virtual {v0}, Lu4/a0;->d()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lu4/f;->n:[Lu4/a0;

    .line 62
    .line 63
    array-length v1, v0

    .line 64
    const/4 v2, 0x0

    .line 65
    const/4 v3, 0x0

    .line 66
    const/4 v4, 0x0

    .line 67
    :goto_0
    const-string v5, "...while writing section "

    .line 68
    .line 69
    if-ge v3, v1, :cond_7

    .line 70
    .line 71
    aget-object v6, v0, v3

    .line 72
    .line 73
    if-eqz v6, :cond_0

    .line 74
    .line 75
    if-nez v6, :cond_1

    .line 76
    .line 77
    :cond_0
    invoke-virtual {v6}, Lu4/a0;->c()Ljava/util/Collection;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_1
    if-ltz v4, :cond_6

    .line 89
    .line 90
    iget v7, v6, Lu4/a0;->d:I

    .line 91
    .line 92
    if-gez v7, :cond_5

    .line 93
    .line 94
    iget v7, v6, Lu4/a0;->c:I

    .line 95
    .line 96
    add-int/lit8 v7, v7, -0x1

    .line 97
    .line 98
    add-int v8, v4, v7

    .line 99
    .line 100
    xor-int/lit8 v7, v7, -0x1

    .line 101
    .line 102
    and-int/2addr v7, v8

    .line 103
    iput v7, v6, Lu4/a0;->d:I

    .line 104
    .line 105
    if-lt v7, v4, :cond_4

    .line 106
    .line 107
    iget-object v4, p0, Lu4/f;->c:Lu4/w;

    .line 108
    .line 109
    if-ne v6, v4, :cond_2

    .line 110
    .line 111
    :try_start_0
    invoke-static {v0, v4}, Lu4/r;->l([Lu4/a0;Lu4/w;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Lu4/a0;->d()V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    goto :goto_3

    .line 120
    :cond_2
    :goto_1
    instance-of v4, v6, Lu4/w;

    .line 121
    .line 122
    if-eqz v4, :cond_3

    .line 123
    .line 124
    move-object v4, v6

    .line 125
    check-cast v4, Lu4/w;

    .line 126
    .line 127
    invoke-virtual {v4}, Lu4/w;->m()V

    .line 128
    .line 129
    .line 130
    :cond_3
    invoke-virtual {v6}, Lu4/a0;->h()I

    .line 131
    .line 132
    .line 133
    move-result v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    add-int/2addr v4, v7

    .line 135
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {v0, v1}, Lp4/a;->a(Ljava/lang/Exception;Ljava/lang/String;)Lp4/a;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    throw v0

    .line 155
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 156
    .line 157
    const-string v1, "bogus placement for section "

    .line 158
    .line 159
    invoke-static {v3, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 168
    .line 169
    const-string v1, "fileOffset already set"

    .line 170
    .line 171
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v0

    .line 175
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 179
    .line 180
    const-string v1, "fileOffset < 0"

    .line 181
    .line 182
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v0

    .line 186
    :cond_7
    iput v4, p0, Lu4/f;->o:I

    .line 187
    .line 188
    new-array v3, v4, [B

    .line 189
    .line 190
    new-instance v4, Lb5/b;

    .line 191
    .line 192
    invoke-direct {v4, v3, v2}, Lb5/b;-><init>([BZ)V

    .line 193
    .line 194
    .line 195
    :goto_4
    const/16 v6, 0xa

    .line 196
    .line 197
    if-ge v2, v1, :cond_e

    .line 198
    .line 199
    const/4 v7, 0x0

    .line 200
    :try_start_1
    aget-object v8, v0, v2

    .line 201
    .line 202
    if-eqz v8, :cond_8

    .line 203
    .line 204
    if-nez v8, :cond_9

    .line 205
    .line 206
    :cond_8
    invoke-virtual {v8}, Lu4/a0;->c()Ljava/util/Collection;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    if-eqz v9, :cond_9

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_9
    invoke-virtual {v8}, Lu4/a0;->b()I

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    iget v10, v4, Lb5/b;->c:I

    .line 222
    .line 223
    sub-int/2addr v9, v10

    .line 224
    if-ltz v9, :cond_a

    .line 225
    .line 226
    invoke-virtual {v4, v9}, Lb5/b;->n(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v8, v4}, Lu4/a0;->i(Lb5/b;)V

    .line 230
    .line 231
    .line 232
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :catch_1
    move-exception v0

    .line 236
    goto :goto_6

    .line 237
    :cond_a
    new-instance v0, Lp4/a;

    .line 238
    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string v3, "excess write of "

    .line 245
    .line 246
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    neg-int v3, v9

    .line 250
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-direct {v0, v1, v7}, Lp4/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 258
    .line 259
    .line 260
    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    :goto_6
    instance-of v1, v0, Lp4/a;

    .line 262
    .line 263
    if-eqz v1, :cond_b

    .line 264
    .line 265
    check-cast v0, Lp4/a;

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_b
    new-instance v1, Lp4/a;

    .line 269
    .line 270
    invoke-direct {v1, v7, v0}, Lp4/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 271
    .line 272
    .line 273
    move-object v0, v1

    .line 274
    :goto_7
    invoke-static {v2, v5}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    if-eqz v1, :cond_d

    .line 279
    .line 280
    iget-object v2, v0, Lp4/a;->a:Ljava/lang/StringBuffer;

    .line 281
    .line 282
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    .line 284
    .line 285
    const-string v3, "\n"

    .line 286
    .line 287
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-nez v1, :cond_c

    .line 292
    .line 293
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 294
    .line 295
    .line 296
    :cond_c
    throw v0

    .line 297
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    .line 298
    .line 299
    const-string v1, "str == null"

    .line 300
    .line 301
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw v0

    .line 305
    :cond_e
    iget v0, v4, Lb5/b;->c:I

    .line 306
    .line 307
    iget v1, p0, Lu4/f;->o:I

    .line 308
    .line 309
    if-ne v0, v1, :cond_10

    .line 310
    .line 311
    const-string v1, "unexpected digest write: "

    .line 312
    .line 313
    :try_start_2
    const-string v2, "SHA-1"

    .line 314
    .line 315
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 316
    .line 317
    .line 318
    move-result-object v2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3

    .line 319
    const/16 v5, 0x20

    .line 320
    .line 321
    sub-int/2addr v0, v5

    .line 322
    invoke-virtual {v2, v3, v5, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 323
    .line 324
    .line 325
    const/16 v0, 0xc

    .line 326
    .line 327
    const/16 v5, 0x14

    .line 328
    .line 329
    :try_start_3
    invoke-virtual {v2, v3, v0, v5}, Ljava/security/MessageDigest;->digest([BII)I

    .line 330
    .line 331
    .line 332
    move-result v2
    :try_end_3
    .catch Ljava/security/DigestException; {:try_start_3 .. :try_end_3} :catch_2

    .line 333
    if-ne v2, v5, :cond_f

    .line 334
    .line 335
    iget v1, v4, Lb5/b;->c:I

    .line 336
    .line 337
    new-instance v2, Ljava/util/zip/Adler32;

    .line 338
    .line 339
    invoke-direct {v2}, Ljava/util/zip/Adler32;-><init>()V

    .line 340
    .line 341
    .line 342
    sub-int/2addr v1, v0

    .line 343
    invoke-virtual {v2, v3, v0, v1}, Ljava/util/zip/Adler32;->update([BII)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2}, Ljava/util/zip/Adler32;->getValue()J

    .line 347
    .line 348
    .line 349
    move-result-wide v0

    .line 350
    long-to-int v1, v0

    .line 351
    int-to-byte v0, v1

    .line 352
    const/16 v2, 0x8

    .line 353
    .line 354
    aput-byte v0, v3, v2

    .line 355
    .line 356
    shr-int/lit8 v0, v1, 0x8

    .line 357
    .line 358
    int-to-byte v0, v0

    .line 359
    const/16 v2, 0x9

    .line 360
    .line 361
    aput-byte v0, v3, v2

    .line 362
    .line 363
    shr-int/lit8 v0, v1, 0x10

    .line 364
    .line 365
    int-to-byte v0, v0

    .line 366
    aput-byte v0, v3, v6

    .line 367
    .line 368
    shr-int/lit8 v0, v1, 0x18

    .line 369
    .line 370
    int-to-byte v0, v0

    .line 371
    const/16 v1, 0xb

    .line 372
    .line 373
    aput-byte v0, v3, v1

    .line 374
    .line 375
    iget-object v0, v4, Lb5/b;->b:[B

    .line 376
    .line 377
    return-object v0

    .line 378
    :cond_f
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 379
    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string v1, " bytes"

    .line 389
    .line 390
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    throw v0
    :try_end_4
    .catch Ljava/security/DigestException; {:try_start_4 .. :try_end_4} :catch_2

    .line 401
    :catch_2
    move-exception v0

    .line 402
    new-instance v1, Ljava/lang/RuntimeException;

    .line 403
    .line 404
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 405
    .line 406
    .line 407
    throw v1

    .line 408
    :catch_3
    move-exception v0

    .line 409
    new-instance v1, Ljava/lang/RuntimeException;

    .line 410
    .line 411
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 412
    .line 413
    .line 414
    throw v1

    .line 415
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    .line 416
    .line 417
    const-string v1, "foreshortened write"

    .line 418
    .line 419
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    goto :goto_9

    .line 423
    :goto_8
    throw v0

    .line 424
    :goto_9
    goto :goto_8
.end method
