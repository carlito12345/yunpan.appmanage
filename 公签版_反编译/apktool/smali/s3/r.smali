.class public final Ls3/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/f;


# instance fields
.field public final a:Lu1/q;

.field public final b:Ll2/a0;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Ll2/j0;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:J

.field public m:I

.field public n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ls3/r;->h:I

    .line 6
    .line 7
    new-instance v1, Lu1/q;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-direct {v1, v2}, Lu1/q;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Ls3/r;->a:Lu1/q;

    .line 14
    .line 15
    iget-object v1, v1, Lu1/q;->a:[B

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    aput-byte v2, v1, v0

    .line 19
    .line 20
    new-instance v0, Ll2/a0;

    .line 21
    .line 22
    invoke-direct {v0}, Ll2/a0;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Ls3/r;->b:Ll2/a0;

    .line 26
    .line 27
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    iput-wide v0, p0, Ls3/r;->n:J

    .line 33
    .line 34
    iput-object p1, p0, Ls3/r;->c:Ljava/lang/String;

    .line 35
    .line 36
    iput p2, p0, Ls3/r;->d:I

    .line 37
    .line 38
    iput-object p3, p0, Ls3/r;->e:Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a(Lu1/q;)V
    .locals 11

    .line 1
    iget-object v0, p0, Ls3/r;->f:Ll2/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p1}, Lu1/q;->a()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_c

    .line 11
    .line 12
    iget v0, p0, Ls3/r;->h:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iget-object v2, p0, Ls3/r;->a:Lu1/q;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x2

    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    .line 23
    if-ne v0, v4, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Lu1/q;->a()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v2, p0, Ls3/r;->m:I

    .line 30
    .line 31
    iget v4, p0, Ls3/r;->i:I

    .line 32
    .line 33
    sub-int/2addr v2, v4

    .line 34
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v2, p0, Ls3/r;->f:Ll2/j0;

    .line 39
    .line 40
    invoke-interface {v2, v0, p1}, Ll2/j0;->a(ILu1/q;)V

    .line 41
    .line 42
    .line 43
    iget v2, p0, Ls3/r;->i:I

    .line 44
    .line 45
    add-int/2addr v2, v0

    .line 46
    iput v2, p0, Ls3/r;->i:I

    .line 47
    .line 48
    iget v0, p0, Ls3/r;->m:I

    .line 49
    .line 50
    if-ge v2, v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-wide v4, p0, Ls3/r;->n:J

    .line 54
    .line 55
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    cmp-long v0, v4, v6

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 v1, 0x0

    .line 66
    :goto_1
    invoke-static {v1}, La9/o;->t(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, Ls3/r;->f:Ll2/j0;

    .line 70
    .line 71
    iget-wide v5, p0, Ls3/r;->n:J

    .line 72
    .line 73
    iget v8, p0, Ls3/r;->m:I

    .line 74
    .line 75
    const/4 v7, 0x1

    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v10, 0x0

    .line 78
    invoke-interface/range {v4 .. v10}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 79
    .line 80
    .line 81
    iget-wide v0, p0, Ls3/r;->n:J

    .line 82
    .line 83
    iget-wide v4, p0, Ls3/r;->l:J

    .line 84
    .line 85
    add-long/2addr v0, v4

    .line 86
    iput-wide v0, p0, Ls3/r;->n:J

    .line 87
    .line 88
    iput v3, p0, Ls3/r;->i:I

    .line 89
    .line 90
    iput v3, p0, Ls3/r;->h:I

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_3
    invoke-virtual {p1}, Lu1/q;->a()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iget v5, p0, Ls3/r;->i:I

    .line 104
    .line 105
    const/4 v6, 0x4

    .line 106
    rsub-int/lit8 v5, v5, 0x4

    .line 107
    .line 108
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iget-object v5, v2, Lu1/q;->a:[B

    .line 113
    .line 114
    iget v7, p0, Ls3/r;->i:I

    .line 115
    .line 116
    invoke-virtual {p1, v7, v0, v5}, Lu1/q;->l(II[B)V

    .line 117
    .line 118
    .line 119
    iget v5, p0, Ls3/r;->i:I

    .line 120
    .line 121
    add-int/2addr v5, v0

    .line 122
    iput v5, p0, Ls3/r;->i:I

    .line 123
    .line 124
    if-ge v5, v6, :cond_4

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    invoke-virtual {v2, v3}, Lu1/q;->O(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lu1/q;->o()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    iget-object v5, p0, Ls3/r;->b:Ll2/a0;

    .line 135
    .line 136
    invoke-virtual {v5, v0}, Ll2/a0;->a(I)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_5

    .line 141
    .line 142
    iput v3, p0, Ls3/r;->i:I

    .line 143
    .line 144
    iput v1, p0, Ls3/r;->h:I

    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_5
    iget v0, v5, Ll2/a0;->b:I

    .line 149
    .line 150
    iput v0, p0, Ls3/r;->m:I

    .line 151
    .line 152
    iget-boolean v0, p0, Ls3/r;->j:Z

    .line 153
    .line 154
    if-nez v0, :cond_6

    .line 155
    .line 156
    iget v0, v5, Ll2/a0;->f:I

    .line 157
    .line 158
    int-to-long v7, v0

    .line 159
    const-wide/32 v9, 0xf4240

    .line 160
    .line 161
    .line 162
    mul-long v7, v7, v9

    .line 163
    .line 164
    iget v0, v5, Ll2/a0;->c:I

    .line 165
    .line 166
    int-to-long v9, v0

    .line 167
    div-long/2addr v7, v9

    .line 168
    iput-wide v7, p0, Ls3/r;->l:J

    .line 169
    .line 170
    new-instance v0, Lr1/o;

    .line 171
    .line 172
    invoke-direct {v0}, Lr1/o;-><init>()V

    .line 173
    .line 174
    .line 175
    iget-object v7, p0, Ls3/r;->g:Ljava/lang/String;

    .line 176
    .line 177
    iput-object v7, v0, Lr1/o;->a:Ljava/lang/String;

    .line 178
    .line 179
    iget-object v7, p0, Ls3/r;->e:Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {v7}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    iput-object v7, v0, Lr1/o;->m:Ljava/lang/String;

    .line 186
    .line 187
    iget-object v7, v5, Ll2/a0;->g:Ljava/io/Serializable;

    .line 188
    .line 189
    check-cast v7, Ljava/lang/String;

    .line 190
    .line 191
    invoke-static {v7}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    iput-object v7, v0, Lr1/o;->n:Ljava/lang/String;

    .line 196
    .line 197
    const/16 v7, 0x1000

    .line 198
    .line 199
    iput v7, v0, Lr1/o;->o:I

    .line 200
    .line 201
    iget v7, v5, Ll2/a0;->d:I

    .line 202
    .line 203
    iput v7, v0, Lr1/o;->F:I

    .line 204
    .line 205
    iget v5, v5, Ll2/a0;->c:I

    .line 206
    .line 207
    iput v5, v0, Lr1/o;->G:I

    .line 208
    .line 209
    iget-object v5, p0, Ls3/r;->c:Ljava/lang/String;

    .line 210
    .line 211
    iput-object v5, v0, Lr1/o;->d:Ljava/lang/String;

    .line 212
    .line 213
    iget v5, p0, Ls3/r;->d:I

    .line 214
    .line 215
    iput v5, v0, Lr1/o;->f:I

    .line 216
    .line 217
    new-instance v5, Lr1/p;

    .line 218
    .line 219
    invoke-direct {v5, v0}, Lr1/p;-><init>(Lr1/o;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Ls3/r;->f:Ll2/j0;

    .line 223
    .line 224
    invoke-interface {v0, v5}, Ll2/j0;->g(Lr1/p;)V

    .line 225
    .line 226
    .line 227
    iput-boolean v1, p0, Ls3/r;->j:Z

    .line 228
    .line 229
    :cond_6
    invoke-virtual {v2, v3}, Lu1/q;->O(I)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Ls3/r;->f:Ll2/j0;

    .line 233
    .line 234
    invoke-interface {v0, v6, v2}, Ll2/j0;->a(ILu1/q;)V

    .line 235
    .line 236
    .line 237
    iput v4, p0, Ls3/r;->h:I

    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :cond_7
    iget-object v0, p1, Lu1/q;->a:[B

    .line 242
    .line 243
    iget v5, p1, Lu1/q;->b:I

    .line 244
    .line 245
    iget v6, p1, Lu1/q;->c:I

    .line 246
    .line 247
    :goto_2
    if-ge v5, v6, :cond_b

    .line 248
    .line 249
    aget-byte v7, v0, v5

    .line 250
    .line 251
    and-int/lit16 v8, v7, 0xff

    .line 252
    .line 253
    const/16 v9, 0xff

    .line 254
    .line 255
    if-ne v8, v9, :cond_8

    .line 256
    .line 257
    const/4 v8, 0x1

    .line 258
    goto :goto_3

    .line 259
    :cond_8
    const/4 v8, 0x0

    .line 260
    :goto_3
    iget-boolean v9, p0, Ls3/r;->k:Z

    .line 261
    .line 262
    if-eqz v9, :cond_9

    .line 263
    .line 264
    and-int/lit16 v7, v7, 0xe0

    .line 265
    .line 266
    const/16 v9, 0xe0

    .line 267
    .line 268
    if-ne v7, v9, :cond_9

    .line 269
    .line 270
    const/4 v7, 0x1

    .line 271
    goto :goto_4

    .line 272
    :cond_9
    const/4 v7, 0x0

    .line 273
    :goto_4
    iput-boolean v8, p0, Ls3/r;->k:Z

    .line 274
    .line 275
    if-eqz v7, :cond_a

    .line 276
    .line 277
    add-int/lit8 v6, v5, 0x1

    .line 278
    .line 279
    invoke-virtual {p1, v6}, Lu1/q;->O(I)V

    .line 280
    .line 281
    .line 282
    iput-boolean v3, p0, Ls3/r;->k:Z

    .line 283
    .line 284
    iget-object v2, v2, Lu1/q;->a:[B

    .line 285
    .line 286
    aget-byte v0, v0, v5

    .line 287
    .line 288
    aput-byte v0, v2, v1

    .line 289
    .line 290
    iput v4, p0, Ls3/r;->i:I

    .line 291
    .line 292
    iput v1, p0, Ls3/r;->h:I

    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 297
    .line 298
    goto :goto_2

    .line 299
    :cond_b
    invoke-virtual {p1, v6}, Lu1/q;->O(I)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_0

    .line 303
    .line 304
    :cond_c
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ls3/r;->h:I

    .line 3
    .line 4
    iput v0, p0, Ls3/r;->i:I

    .line 5
    .line 6
    iput-boolean v0, p0, Ls3/r;->k:Z

    .line 7
    .line 8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, Ls3/r;->n:J

    .line 14
    .line 15
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, Ls3/r;->n:J

    .line 2
    .line 3
    return-void
.end method

.method public final e(Ll2/q;Ls3/d0;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ls3/d0;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p2, Ls3/d0;->f:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Ls3/r;->g:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 14
    .line 15
    .line 16
    iget p2, p2, Ls3/d0;->d:I

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-interface {p1, p2, v0}, Ll2/q;->z(II)Ll2/j0;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Ls3/r;->f:Ll2/j0;

    .line 24
    .line 25
    return-void
.end method
