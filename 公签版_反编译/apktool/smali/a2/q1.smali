.class public final La2/q1;
.super Ld2/u;
.source "SourceFile"

# interfaces
.implements Ly1/k0;


# instance fields
.field public final A1:La2/j0;

.field public final B1:La2/n1;

.field public final C1:Lv3/f;

.field public D1:I

.field public E1:Z

.field public F1:Z

.field public G1:Lr1/p;

.field public H1:Lr1/p;

.field public I1:J

.field public J1:Z

.field public K1:Z

.field public L1:Z

.field public M1:Z

.field public N1:I

.field public O1:Z

.field public P1:J

.field public final z1:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;Ld2/m;Landroid/os/Handler;Ly1/t;La2/n1;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lv3/f;

    .line 8
    .line 9
    const/16 v1, 0x9

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v0, v2, v1}, Lv3/f;-><init>(BI)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    const v3, 0x472c4400    # 44100.0f

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v1, v2, p2, v3}, Ld2/u;-><init>(Landroid/content/Context;ILd2/m;F)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, La2/q1;->z1:Landroid/content/Context;

    .line 33
    .line 34
    iput-object p5, p0, La2/q1;->B1:La2/n1;

    .line 35
    .line 36
    iput-object v0, p0, La2/q1;->C1:Lv3/f;

    .line 37
    .line 38
    const/16 p1, -0x3e8

    .line 39
    .line 40
    iput p1, p0, La2/q1;->N1:I

    .line 41
    .line 42
    new-instance p1, La2/j0;

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-direct {p1, p3, p4, p2}, La2/j0;-><init>(Landroid/os/Handler;Ly1/t;I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, La2/q1;->A1:La2/j0;

    .line 49
    .line 50
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    iput-wide p1, p0, La2/q1;->P1:J

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final C0(Lr1/p;)I
    .locals 3

    .line 1
    iget-object v0, p0, La2/q1;->B1:La2/n1;

    .line 2
    .line 3
    iget-boolean v1, v0, La2/n1;->X:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object p1, La2/p;->d:La2/p;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, La2/n1;->r:La2/y;

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    invoke-virtual {v0, p1, v2}, La2/n1;->g(Lr1/p;I)La2/s;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast v1, La2/d1;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, La2/d1;->b(La2/s;)La2/u;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, La2/o;

    .line 24
    .line 25
    invoke-direct {v0}, La2/o;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p1, La2/u;->a:Z

    .line 29
    .line 30
    iput-boolean v1, v0, La2/o;->a:Z

    .line 31
    .line 32
    iget-boolean v1, p1, La2/u;->b:Z

    .line 33
    .line 34
    iput-boolean v1, v0, La2/o;->b:Z

    .line 35
    .line 36
    iget-boolean p1, p1, La2/u;->c:Z

    .line 37
    .line 38
    iput-boolean p1, v0, La2/o;->c:Z

    .line 39
    .line 40
    invoke-virtual {v0}, La2/o;->a()La2/p;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_0
    iget-boolean v0, p1, La2/p;->a:Z

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    return p1

    .line 50
    :cond_1
    iget-boolean v0, p1, La2/p;->b:Z

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    const/16 v0, 0x600

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/16 v0, 0x200

    .line 58
    .line 59
    :goto_1
    iget-boolean p1, p1, La2/p;->c:Z

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    or-int/lit16 v0, v0, 0x800

    .line 64
    .line 65
    :cond_3
    return v0
.end method

.method public final D0(Ld2/q;Lr1/p;)I
    .locals 1

    .line 1
    const-string v0, "OMX.google.raw.decoder"

    .line 2
    .line 3
    iget-object p1, p1, Ld2/q;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v0, 0x17

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, La2/q1;->z1:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p1}, Lu1/f0;->F(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    return p1

    .line 27
    :cond_0
    iget p1, p2, Lr1/p;->p:I

    .line 28
    .line 29
    return p1
.end method

.method public final E0()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, La2/q1;->l()Z

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, La2/q1;->B1:La2/n1;

    .line 7
    .line 8
    invoke-virtual {v1}, La2/n1;->n()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const-wide/high16 v3, -0x8000000000000000L

    .line 13
    .line 14
    if-eqz v2, :cond_7

    .line 15
    .line 16
    iget-boolean v2, v1, La2/n1;->F:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_0
    iget-object v2, v1, La2/n1;->t:La2/a1;

    .line 23
    .line 24
    invoke-virtual {v2}, La2/a1;->a()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    iget-object v2, v1, La2/n1;->p:La2/k1;

    .line 29
    .line 30
    invoke-virtual {v1}, La2/n1;->j()J

    .line 31
    .line 32
    .line 33
    move-result-wide v7

    .line 34
    iget-object v2, v2, La2/k1;->e:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, La2/x;

    .line 37
    .line 38
    iget v2, v2, La2/x;->b:I

    .line 39
    .line 40
    invoke-static {v2, v7, v8}, Lu1/f0;->K(IJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v7

    .line 44
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    :goto_0
    iget-object v2, v1, La2/n1;->h:Ljava/util/ArrayDeque;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-nez v7, :cond_1

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    check-cast v7, La2/l1;

    .line 61
    .line 62
    iget-wide v7, v7, La2/l1;->c:J

    .line 63
    .line 64
    cmp-long v9, v5, v7

    .line 65
    .line 66
    if-ltz v9, :cond_1

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, La2/l1;

    .line 73
    .line 74
    iput-object v2, v1, La2/n1;->w:La2/l1;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-object v7, v1, La2/n1;->w:La2/l1;

    .line 78
    .line 79
    iget-wide v8, v7, La2/l1;->c:J

    .line 80
    .line 81
    sub-long v10, v5, v8

    .line 82
    .line 83
    iget-object v5, v7, La2/l1;->a:Lr1/h0;

    .line 84
    .line 85
    iget v5, v5, Lr1/h0;->a:F

    .line 86
    .line 87
    invoke-static {v10, v11, v5}, Lu1/f0;->s(JF)J

    .line 88
    .line 89
    .line 90
    move-result-wide v5

    .line 91
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    iget-object v7, v1, La2/n1;->b:Lv3/f;

    .line 96
    .line 97
    if-eqz v2, :cond_5

    .line 98
    .line 99
    iget-object v2, v7, Lv3/f;->d:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, Ls1/r;

    .line 102
    .line 103
    invoke-virtual {v2}, Ls1/r;->g()Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_4

    .line 108
    .line 109
    iget-wide v8, v2, Ls1/r;->n:J

    .line 110
    .line 111
    const-wide/16 v12, 0x400

    .line 112
    .line 113
    cmp-long v14, v8, v12

    .line 114
    .line 115
    if-ltz v14, :cond_3

    .line 116
    .line 117
    iget-wide v8, v2, Ls1/r;->m:J

    .line 118
    .line 119
    iget-object v12, v2, Ls1/r;->j:Ls1/q;

    .line 120
    .line 121
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    iget v13, v12, Ls1/q;->j:I

    .line 125
    .line 126
    iget v14, v12, Ls1/q;->b:I

    .line 127
    .line 128
    mul-int v13, v13, v14

    .line 129
    .line 130
    iget-object v12, v12, Ls1/q;->i:Ls1/o;

    .line 131
    .line 132
    invoke-interface {v12}, Ls1/o;->n()I

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    mul-int v12, v12, v13

    .line 137
    .line 138
    int-to-long v12, v12

    .line 139
    sub-long v12, v8, v12

    .line 140
    .line 141
    iget-object v8, v2, Ls1/r;->h:Ls1/i;

    .line 142
    .line 143
    iget v8, v8, Ls1/i;->a:I

    .line 144
    .line 145
    iget-object v9, v2, Ls1/r;->g:Ls1/i;

    .line 146
    .line 147
    iget v9, v9, Ls1/i;->a:I

    .line 148
    .line 149
    if-ne v8, v9, :cond_2

    .line 150
    .line 151
    iget-wide v14, v2, Ls1/r;->n:J

    .line 152
    .line 153
    sget-object v16, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 154
    .line 155
    invoke-static/range {v10 .. v16}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v8

    .line 159
    goto :goto_1

    .line 160
    :cond_2
    int-to-long v14, v8

    .line 161
    mul-long v12, v12, v14

    .line 162
    .line 163
    iget-wide v14, v2, Ls1/r;->n:J

    .line 164
    .line 165
    int-to-long v8, v9

    .line 166
    mul-long v14, v14, v8

    .line 167
    .line 168
    sget-object v16, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 169
    .line 170
    invoke-static/range {v10 .. v16}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v8

    .line 174
    :goto_1
    move-wide v10, v8

    .line 175
    goto :goto_2

    .line 176
    :cond_3
    iget v2, v2, Ls1/r;->c:F

    .line 177
    .line 178
    float-to-double v8, v2

    .line 179
    long-to-double v10, v10

    .line 180
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    .line 181
    .line 182
    .line 183
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    .line 184
    .line 185
    .line 186
    mul-double v8, v8, v10

    .line 187
    .line 188
    double-to-long v8, v8

    .line 189
    goto :goto_1

    .line 190
    :cond_4
    :goto_2
    iget-object v2, v1, La2/n1;->w:La2/l1;

    .line 191
    .line 192
    iget-wide v8, v2, La2/l1;->b:J

    .line 193
    .line 194
    add-long/2addr v8, v10

    .line 195
    sub-long/2addr v10, v5

    .line 196
    iput-wide v10, v2, La2/l1;->d:J

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_5
    iget-object v2, v1, La2/n1;->w:La2/l1;

    .line 200
    .line 201
    iget-wide v8, v2, La2/l1;->b:J

    .line 202
    .line 203
    add-long/2addr v8, v5

    .line 204
    iget-wide v5, v2, La2/l1;->d:J

    .line 205
    .line 206
    add-long/2addr v8, v5

    .line 207
    :goto_3
    iget-object v2, v7, Lv3/f;->c:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v2, La2/s1;

    .line 210
    .line 211
    iget-wide v5, v2, La2/s1;->q:J

    .line 212
    .line 213
    iget-object v2, v1, La2/n1;->p:La2/k1;

    .line 214
    .line 215
    iget-object v2, v2, La2/k1;->e:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v2, La2/x;

    .line 218
    .line 219
    iget v2, v2, La2/x;->b:I

    .line 220
    .line 221
    invoke-static {v2, v5, v6}, Lu1/f0;->K(IJ)J

    .line 222
    .line 223
    .line 224
    move-result-wide v10

    .line 225
    add-long/2addr v10, v8

    .line 226
    iget-wide v7, v1, La2/n1;->Z:J

    .line 227
    .line 228
    cmp-long v2, v5, v7

    .line 229
    .line 230
    if-lez v2, :cond_8

    .line 231
    .line 232
    iget-object v2, v1, La2/n1;->p:La2/k1;

    .line 233
    .line 234
    sub-long v7, v5, v7

    .line 235
    .line 236
    iget-object v2, v2, La2/k1;->e:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v2, La2/x;

    .line 239
    .line 240
    iget v2, v2, La2/x;->b:I

    .line 241
    .line 242
    invoke-static {v2, v7, v8}, Lu1/f0;->K(IJ)J

    .line 243
    .line 244
    .line 245
    move-result-wide v7

    .line 246
    iput-wide v5, v1, La2/n1;->Z:J

    .line 247
    .line 248
    iget-wide v5, v1, La2/n1;->a0:J

    .line 249
    .line 250
    add-long/2addr v5, v7

    .line 251
    iput-wide v5, v1, La2/n1;->a0:J

    .line 252
    .line 253
    iget-object v2, v1, La2/n1;->b0:Landroid/os/Handler;

    .line 254
    .line 255
    if-nez v2, :cond_6

    .line 256
    .line 257
    new-instance v2, Landroid/os/Handler;

    .line 258
    .line 259
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-direct {v2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 264
    .line 265
    .line 266
    iput-object v2, v1, La2/n1;->b0:Landroid/os/Handler;

    .line 267
    .line 268
    :cond_6
    iget-object v2, v1, La2/n1;->b0:Landroid/os/Handler;

    .line 269
    .line 270
    const/4 v5, 0x0

    .line 271
    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    iget-object v2, v1, La2/n1;->b0:Landroid/os/Handler;

    .line 275
    .line 276
    new-instance v5, La2/h;

    .line 277
    .line 278
    const/4 v6, 0x2

    .line 279
    invoke-direct {v5, v6, v1}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    const-wide/16 v6, 0x64

    .line 283
    .line 284
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 285
    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_7
    :goto_4
    move-wide v10, v3

    .line 289
    :cond_8
    :goto_5
    cmp-long v1, v10, v3

    .line 290
    .line 291
    if-eqz v1, :cond_a

    .line 292
    .line 293
    iget-boolean v1, v0, La2/q1;->J1:Z

    .line 294
    .line 295
    if-eqz v1, :cond_9

    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_9
    iget-wide v1, v0, La2/q1;->I1:J

    .line 299
    .line 300
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 301
    .line 302
    .line 303
    move-result-wide v10

    .line 304
    :goto_6
    iput-wide v10, v0, La2/q1;->I1:J

    .line 305
    .line 306
    const/4 v1, 0x0

    .line 307
    iput-boolean v1, v0, La2/q1;->J1:Z

    .line 308
    .line 309
    :cond_a
    return-void
.end method

.method public final G(Ld2/q;Lr1/p;Lr1/p;Z)Ly1/d;
    .locals 9

    .line 1
    invoke-virtual {p1, p2, p3}, Ld2/q;->b(Lr1/p;Lr1/p;)Ly1/d;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    iget-object v0, p0, Ld2/u;->K:La1/i;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p3}, La2/q1;->x0(Lr1/p;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget v2, p4, Ly1/d;->e:I

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const v0, 0x8000

    .line 24
    .line 25
    .line 26
    or-int/2addr v2, v0

    .line 27
    :cond_1
    invoke-virtual {p0, p1, p3}, La2/q1;->D0(Ld2/q;Lr1/p;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget v3, p0, La2/q1;->D1:I

    .line 32
    .line 33
    if-le v0, v3, :cond_2

    .line 34
    .line 35
    or-int/lit8 v2, v2, 0x40

    .line 36
    .line 37
    :cond_2
    move v8, v2

    .line 38
    new-instance v0, Ly1/d;

    .line 39
    .line 40
    if-eqz v8, :cond_3

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    iget v1, p4, Ly1/d;->d:I

    .line 45
    .line 46
    move v7, v1

    .line 47
    :goto_1
    iget-object v4, p1, Ld2/q;->a:Ljava/lang/String;

    .line 48
    .line 49
    move-object v3, v0

    .line 50
    move-object v5, p2

    .line 51
    move-object v6, p3

    .line 52
    invoke-direct/range {v3 .. v8}, Ly1/d;-><init>(Ljava/lang/String;Lr1/p;Lr1/p;II)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method public final O(FLr1/p;[Lr1/p;)F
    .locals 4

    .line 1
    array-length p2, p3

    .line 2
    const/4 v0, -0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    :goto_0
    if-ge v1, p2, :cond_1

    .line 6
    .line 7
    aget-object v3, p3, v1

    .line 8
    .line 9
    iget v3, v3, Lr1/p;->H:I

    .line 10
    .line 11
    if-eq v3, v0, :cond_0

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    if-ne v2, v0, :cond_2

    .line 21
    .line 22
    const/high16 p1, -0x40800000    # -1.0f

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    int-to-float p2, v2

    .line 26
    mul-float p1, p1, p2

    .line 27
    .line 28
    :goto_1
    return p1
.end method

.method public final P(Ld2/l;Lr1/p;Z)Ljava/util/ArrayList;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p2, Lr1/p;->o:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    sget-object p1, Lu7/y0;->e:Lu7/y0;

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object v1, p0, La2/q1;->B1:La2/n1;

    .line 10
    .line 11
    invoke-virtual {v1, p2}, La2/n1;->h(Lr1/p;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    const-string v1, "audio/raw"

    .line 18
    .line 19
    invoke-static {v1, v0, v0}, Ld2/c0;->e(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ld2/q;

    .line 36
    .line 37
    :goto_0
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-static {v1}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-static {p1, p2, p3, v0}, Ld2/c0;->g(Ld2/l;Lr1/p;ZZ)Lu7/y0;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_1
    sget-object p3, Ld2/c0;->a:Ljava/util/HashMap;

    .line 49
    .line 50
    new-instance p3, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Ld2/w;

    .line 56
    .line 57
    iget-object v1, p0, La2/q1;->z1:Landroid/content/Context;

    .line 58
    .line 59
    invoke-direct {p1, v1, v0, p2}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance p2, Ld2/v;

    .line 63
    .line 64
    invoke-direct {p2, p1}, Ld2/v;-><init>(Ld2/b0;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p3, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 68
    .line 69
    .line 70
    return-object p3
.end method

.method public final Q(JJZ)J
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, La2/q1;->B1:La2/n1;

    .line 4
    .line 5
    invoke-virtual {v1}, La2/n1;->l()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-wide v7, v0, La2/q1;->P1:J

    .line 19
    .line 20
    cmp-long v2, v7, v5

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    :goto_0
    iget-boolean v7, v0, La2/q1;->O1:Z

    .line 28
    .line 29
    const-wide/16 v8, 0x2710

    .line 30
    .line 31
    if-nez v7, :cond_3

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    iget-boolean v1, v0, Ld2/u;->k1:Z

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    :cond_1
    const-wide/32 v8, 0xf4240

    .line 40
    .line 41
    .line 42
    :cond_2
    return-wide v8

    .line 43
    :cond_3
    invoke-virtual {v1}, La2/n1;->n()Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-nez v7, :cond_4

    .line 48
    .line 49
    move-wide v3, v5

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    iget-object v7, v1, La2/n1;->p:La2/k1;

    .line 52
    .line 53
    invoke-static {v7}, La2/k1;->a(La2/k1;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_5

    .line 58
    .line 59
    iget-object v3, v1, La2/n1;->p:La2/k1;

    .line 60
    .line 61
    iget-object v4, v1, La2/n1;->t:La2/a1;

    .line 62
    .line 63
    iget-object v4, v4, La2/a1;->a:Landroid/media/AudioTrack;

    .line 64
    .line 65
    invoke-static {v4}, La2/a;->d(Landroid/media/AudioTrack;)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    int-to-long v10, v4

    .line 70
    iget-object v3, v3, La2/k1;->e:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v3, La2/x;

    .line 73
    .line 74
    iget v3, v3, La2/x;->b:I

    .line 75
    .line 76
    invoke-static {v3, v10, v11}, Lu1/f0;->K(IJ)J

    .line 77
    .line 78
    .line 79
    move-result-wide v3

    .line 80
    goto :goto_1

    .line 81
    :cond_5
    iget-object v7, v1, La2/n1;->t:La2/a1;

    .line 82
    .line 83
    iget-object v7, v7, La2/a1;->a:Landroid/media/AudioTrack;

    .line 84
    .line 85
    invoke-static {v7}, La2/a;->d(Landroid/media/AudioTrack;)I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    int-to-long v10, v7

    .line 90
    iget-object v7, v1, La2/n1;->p:La2/k1;

    .line 91
    .line 92
    iget-object v7, v7, La2/k1;->e:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v7, La2/x;

    .line 95
    .line 96
    iget v7, v7, La2/x;->a:I

    .line 97
    .line 98
    invoke-static {v7}, Ll2/b;->j(I)I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    const v12, -0x7fffffff

    .line 103
    .line 104
    .line 105
    if-eq v7, v12, :cond_6

    .line 106
    .line 107
    const/4 v3, 0x1

    .line 108
    :cond_6
    invoke-static {v3}, La9/o;->t(Z)V

    .line 109
    .line 110
    .line 111
    int-to-long v14, v7

    .line 112
    sget-object v16, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 113
    .line 114
    const-wide/32 v12, 0xf4240

    .line 115
    .line 116
    .line 117
    invoke-static/range {v10 .. v16}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    :goto_1
    iget-boolean v7, v0, La2/q1;->M1:Z

    .line 122
    .line 123
    if-eqz v7, :cond_9

    .line 124
    .line 125
    if-eqz v2, :cond_9

    .line 126
    .line 127
    cmp-long v2, v3, v5

    .line 128
    .line 129
    if-nez v2, :cond_7

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_7
    iget-wide v5, v0, La2/q1;->P1:J

    .line 133
    .line 134
    sub-long v5, v5, p1

    .line 135
    .line 136
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 137
    .line 138
    .line 139
    move-result-wide v2

    .line 140
    long-to-float v2, v2

    .line 141
    iget-object v1, v1, La2/n1;->x:Lr1/h0;

    .line 142
    .line 143
    if-eqz v1, :cond_8

    .line 144
    .line 145
    iget v1, v1, Lr1/h0;->a:F

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 149
    .line 150
    :goto_2
    div-float/2addr v2, v1

    .line 151
    const/high16 v1, 0x40000000    # 2.0f

    .line 152
    .line 153
    div-float/2addr v2, v1

    .line 154
    float-to-long v1, v2

    .line 155
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 156
    .line 157
    .line 158
    move-result-wide v1

    .line 159
    return-wide v1

    .line 160
    :cond_9
    :goto_3
    return-wide v8
.end method

.method public final S(Ld2/q;Lr1/p;Landroid/media/MediaCrypto;F)Lba/i;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    move/from16 v1, p4

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    iget-object v5, v0, Ly1/a;->j:[Lr1/p;

    .line 11
    .line 12
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p2}, La2/q1;->D0(Ld2/q;Lr1/p;)I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    array-length v7, v5

    .line 20
    const/4 v8, 0x0

    .line 21
    if-ne v7, v3, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    array-length v7, v5

    .line 25
    const/4 v9, 0x0

    .line 26
    :goto_0
    if-ge v9, v7, :cond_2

    .line 27
    .line 28
    aget-object v10, v5, v9

    .line 29
    .line 30
    invoke-virtual {v2, v4, v10}, Ld2/q;->b(Lr1/p;Lr1/p;)Ly1/d;

    .line 31
    .line 32
    .line 33
    move-result-object v11

    .line 34
    iget v11, v11, Ly1/d;->d:I

    .line 35
    .line 36
    if-eqz v11, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0, v2, v10}, La2/q1;->D0(Ld2/q;Lr1/p;)I

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    :cond_1
    add-int/2addr v9, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    :goto_1
    iput v6, v0, La2/q1;->D1:I

    .line 49
    .line 50
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    const/16 v6, 0x18

    .line 53
    .line 54
    iget-object v7, v2, Ld2/q;->a:Ljava/lang/String;

    .line 55
    .line 56
    if-ge v5, v6, :cond_4

    .line 57
    .line 58
    const-string v9, "OMX.SEC.aac.dec"

    .line 59
    .line 60
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-eqz v9, :cond_4

    .line 65
    .line 66
    const-string v9, "samsung"

    .line 67
    .line 68
    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-eqz v9, :cond_4

    .line 75
    .line 76
    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 77
    .line 78
    const-string v10, "zeroflte"

    .line 79
    .line 80
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    if-nez v10, :cond_3

    .line 85
    .line 86
    const-string v10, "herolte"

    .line 87
    .line 88
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    if-nez v10, :cond_3

    .line 93
    .line 94
    const-string v10, "heroqlte"

    .line 95
    .line 96
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_4

    .line 101
    .line 102
    :cond_3
    const/4 v9, 0x1

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    const/4 v9, 0x0

    .line 105
    :goto_2
    iput-boolean v9, v0, La2/q1;->E1:Z

    .line 106
    .line 107
    const-string v9, "OMX.google.opus.decoder"

    .line 108
    .line 109
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-nez v9, :cond_6

    .line 114
    .line 115
    const-string v9, "c2.android.opus.decoder"

    .line 116
    .line 117
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    if-nez v9, :cond_6

    .line 122
    .line 123
    const-string v9, "OMX.google.vorbis.decoder"

    .line 124
    .line 125
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    if-nez v9, :cond_6

    .line 130
    .line 131
    const-string v9, "c2.android.vorbis.decoder"

    .line 132
    .line 133
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_5

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_5
    const/4 v7, 0x0

    .line 141
    goto :goto_4

    .line 142
    :cond_6
    :goto_3
    const/4 v7, 0x1

    .line 143
    :goto_4
    iput-boolean v7, v0, La2/q1;->F1:Z

    .line 144
    .line 145
    iget v7, v0, La2/q1;->D1:I

    .line 146
    .line 147
    new-instance v9, Landroid/media/MediaFormat;

    .line 148
    .line 149
    invoke-direct {v9}, Landroid/media/MediaFormat;-><init>()V

    .line 150
    .line 151
    .line 152
    iget-object v10, v2, Ld2/q;->c:Ljava/lang/String;

    .line 153
    .line 154
    const-string v11, "mime"

    .line 155
    .line 156
    invoke-virtual {v9, v11, v10}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget v10, v4, Lr1/p;->G:I

    .line 160
    .line 161
    const-string v11, "channel-count"

    .line 162
    .line 163
    invoke-virtual {v9, v11, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    const-string v10, "sample-rate"

    .line 167
    .line 168
    iget v11, v4, Lr1/p;->H:I

    .line 169
    .line 170
    invoke-virtual {v9, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    iget-object v10, v4, Lr1/p;->r:Ljava/util/List;

    .line 174
    .line 175
    invoke-static {v9, v10}, Lu1/a;->o(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 176
    .line 177
    .line 178
    const-string v10, "max-input-size"

    .line 179
    .line 180
    invoke-static {v9, v10, v7}, Lu1/a;->n(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    const-string v7, "priority"

    .line 184
    .line 185
    invoke-virtual {v9, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 186
    .line 187
    .line 188
    const/high16 v7, -0x40800000    # -1.0f

    .line 189
    .line 190
    cmpl-float v7, v1, v7

    .line 191
    .line 192
    if-eqz v7, :cond_8

    .line 193
    .line 194
    const/16 v7, 0x17

    .line 195
    .line 196
    if-ne v5, v7, :cond_7

    .line 197
    .line 198
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 199
    .line 200
    const-string v10, "ZTE B2017G"

    .line 201
    .line 202
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v10

    .line 206
    if-nez v10, :cond_8

    .line 207
    .line 208
    const-string v10, "AXON 7 mini"

    .line 209
    .line 210
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    if-eqz v7, :cond_7

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_7
    const-string v7, "operating-rate"

    .line 218
    .line 219
    invoke-virtual {v9, v7, v1}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 220
    .line 221
    .line 222
    :cond_8
    :goto_5
    const-string v1, "audio/ac4"

    .line 223
    .line 224
    iget-object v7, v4, Lr1/p;->o:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_a

    .line 231
    .line 232
    invoke-static/range {p2 .. p2}, Lu1/c;->b(Lr1/p;)Landroid/util/Pair;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    if-eqz v1, :cond_9

    .line 237
    .line 238
    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v10, Ljava/lang/Integer;

    .line 241
    .line 242
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    const-string v12, "profile"

    .line 247
    .line 248
    invoke-static {v9, v12, v10}, Lu1/a;->n(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 249
    .line 250
    .line 251
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v1, Ljava/lang/Integer;

    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    const-string v10, "level"

    .line 260
    .line 261
    invoke-static {v9, v10, v1}, Lu1/a;->n(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 262
    .line 263
    .line 264
    :cond_9
    const/16 v1, 0x1c

    .line 265
    .line 266
    if-gt v5, v1, :cond_a

    .line 267
    .line 268
    const-string v1, "ac4-is-sync"

    .line 269
    .line 270
    invoke-virtual {v9, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 271
    .line 272
    .line 273
    :cond_a
    const-string v1, "audio/raw"

    .line 274
    .line 275
    const/4 v3, 0x2

    .line 276
    iget-object v10, v0, La2/q1;->B1:La2/n1;

    .line 277
    .line 278
    if-lt v5, v6, :cond_b

    .line 279
    .line 280
    new-instance v6, Lr1/o;

    .line 281
    .line 282
    invoke-direct {v6}, Lr1/o;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-static {v1}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v12

    .line 289
    iput-object v12, v6, Lr1/o;->n:Ljava/lang/String;

    .line 290
    .line 291
    iget v12, v4, Lr1/p;->G:I

    .line 292
    .line 293
    iput v12, v6, Lr1/o;->F:I

    .line 294
    .line 295
    iput v11, v6, Lr1/o;->G:I

    .line 296
    .line 297
    const/4 v11, 0x4

    .line 298
    iput v11, v6, Lr1/o;->H:I

    .line 299
    .line 300
    new-instance v12, Lr1/p;

    .line 301
    .line 302
    invoke-direct {v12, v6}, Lr1/p;-><init>(Lr1/o;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v10, v12}, La2/n1;->h(Lr1/p;)I

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    if-ne v6, v3, :cond_b

    .line 310
    .line 311
    const-string v6, "pcm-encoding"

    .line 312
    .line 313
    invoke-virtual {v9, v6, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 314
    .line 315
    .line 316
    :cond_b
    const/16 v6, 0x20

    .line 317
    .line 318
    const-string v11, "max-output-channel-count"

    .line 319
    .line 320
    if-lt v5, v6, :cond_c

    .line 321
    .line 322
    const/16 v6, 0x63

    .line 323
    .line 324
    invoke-virtual {v9, v11, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 325
    .line 326
    .line 327
    :cond_c
    const/16 v6, 0x23

    .line 328
    .line 329
    if-lt v5, v6, :cond_d

    .line 330
    .line 331
    iget v5, v0, La2/q1;->N1:I

    .line 332
    .line 333
    neg-int v5, v5

    .line 334
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 335
    .line 336
    .line 337
    move-result v5

    .line 338
    const-string v6, "importance"

    .line 339
    .line 340
    invoke-virtual {v9, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 341
    .line 342
    .line 343
    :cond_d
    const-string v5, "audio/iamf"

    .line 344
    .line 345
    invoke-static {v7, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    const/4 v6, 0x0

    .line 350
    if-eqz v5, :cond_16

    .line 351
    .line 352
    iget-object v5, v10, La2/n1;->r:La2/y;

    .line 353
    .line 354
    instance-of v10, v5, La2/d1;

    .line 355
    .line 356
    if-eqz v10, :cond_e

    .line 357
    .line 358
    check-cast v5, La2/d1;

    .line 359
    .line 360
    iget-object v5, v5, La2/d1;->h:La2/g;

    .line 361
    .line 362
    goto :goto_6

    .line 363
    :cond_e
    move-object v5, v6

    .line 364
    :goto_6
    const/16 v10, 0xc

    .line 365
    .line 366
    const-string v12, "channel-mask"

    .line 367
    .line 368
    if-nez v5, :cond_f

    .line 369
    .line 370
    const-string v5, "AudioCapabilities from the AudioSink are null, using default stereo output layout."

    .line 371
    .line 372
    invoke-static {v5}, Lu1/a;->p(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v9, v12, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v9, v11, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 379
    .line 380
    .line 381
    goto :goto_9

    .line 382
    :cond_f
    sget-object v3, La2/p1;->a:Lu7/j0;

    .line 383
    .line 384
    iget-object v3, v5, La2/g;->d:Lu7/g0;

    .line 385
    .line 386
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 391
    .line 392
    .line 393
    move-result v13

    .line 394
    if-eqz v13, :cond_11

    .line 395
    .line 396
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v13

    .line 400
    check-cast v13, Ljava/lang/Integer;

    .line 401
    .line 402
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 403
    .line 404
    .line 405
    move-result v14

    .line 406
    sget-object v15, La2/p1;->a:Lu7/j0;

    .line 407
    .line 408
    invoke-virtual {v15, v13}, Lu7/b0;->contains(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v13

    .line 412
    if-eqz v13, :cond_10

    .line 413
    .line 414
    goto :goto_7

    .line 415
    :cond_11
    const/4 v14, 0x0

    .line 416
    :goto_7
    if-eqz v14, :cond_12

    .line 417
    .line 418
    move v10, v14

    .line 419
    goto :goto_8

    .line 420
    :cond_12
    iget-object v3, v5, La2/g;->c:Lu7/g0;

    .line 421
    .line 422
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    if-eqz v5, :cond_14

    .line 431
    .line 432
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    check-cast v5, Ljava/lang/Integer;

    .line 437
    .line 438
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 439
    .line 440
    .line 441
    move-result v13

    .line 442
    sget-object v14, La2/p1;->a:Lu7/j0;

    .line 443
    .line 444
    invoke-virtual {v14, v5}, Lu7/b0;->contains(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-result v5

    .line 448
    if-eqz v5, :cond_13

    .line 449
    .line 450
    move v8, v13

    .line 451
    :cond_14
    if-eqz v8, :cond_15

    .line 452
    .line 453
    move v10, v8

    .line 454
    :cond_15
    :goto_8
    invoke-static {v10}, Ljava/lang/Integer;->bitCount(I)I

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    invoke-virtual {v9, v12, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v9, v11, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 462
    .line 463
    .line 464
    :cond_16
    :goto_9
    invoke-virtual {v0, v9}, Ld2/u;->E(Landroid/media/MediaFormat;)V

    .line 465
    .line 466
    .line 467
    iget-object v3, v2, Ld2/q;->b:Ljava/lang/String;

    .line 468
    .line 469
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v3

    .line 473
    if-eqz v3, :cond_17

    .line 474
    .line 475
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    if-nez v1, :cond_17

    .line 480
    .line 481
    move-object v6, v4

    .line 482
    :cond_17
    iput-object v6, v0, La2/q1;->H1:Lr1/p;

    .line 483
    .line 484
    new-instance v8, Lba/i;

    .line 485
    .line 486
    const/4 v5, 0x0

    .line 487
    iget-object v7, v0, La2/q1;->C1:Lv3/f;

    .line 488
    .line 489
    move-object v1, v8

    .line 490
    move-object/from16 v2, p1

    .line 491
    .line 492
    move-object v3, v9

    .line 493
    move-object/from16 v4, p2

    .line 494
    .line 495
    move-object/from16 v6, p3

    .line 496
    .line 497
    invoke-direct/range {v1 .. v7}, Lba/i;-><init>(Ld2/q;Landroid/media/MediaFormat;Lr1/p;Landroid/view/Surface;Landroid/media/MediaCrypto;Lv3/f;)V

    .line 498
    .line 499
    .line 500
    return-object v8
.end method

.method public final T(Lx1/g;)V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v2, p1, Lx1/g;->c:Lr1/p;

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    iget-object v2, v2, Lr1/p;->o:Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "audio/opus"

    .line 14
    .line 15
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-boolean v2, p0, Ld2/u;->Y0:Z

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object v2, p1, Lx1/g;->h:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lx1/g;->c:Lr1/p;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/16 v4, 0x8

    .line 40
    .line 41
    if-ne v3, v4, :cond_1

    .line 42
    .line 43
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    const-wide/32 v4, 0xbb80

    .line 54
    .line 55
    .line 56
    mul-long v2, v2, v4

    .line 57
    .line 58
    const-wide/32 v4, 0x3b9aca00

    .line 59
    .line 60
    .line 61
    div-long/2addr v2, v4

    .line 62
    long-to-int v3, v2

    .line 63
    iget-object v2, p0, La2/q1;->B1:La2/n1;

    .line 64
    .line 65
    iget-object v4, v2, La2/n1;->t:La2/a1;

    .line 66
    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    invoke-virtual {v4}, La2/a1;->c()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_1

    .line 74
    .line 75
    iget-object v4, v2, La2/n1;->p:La2/k1;

    .line 76
    .line 77
    if-eqz v4, :cond_1

    .line 78
    .line 79
    iget-object v4, v4, La2/k1;->e:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v4, La2/x;

    .line 82
    .line 83
    iget-boolean v4, v4, La2/x;->k:Z

    .line 84
    .line 85
    if-eqz v4, :cond_1

    .line 86
    .line 87
    iget-object v2, v2, La2/n1;->t:La2/a1;

    .line 88
    .line 89
    if-ge v0, v1, :cond_0

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, v2, La2/a1;->a:Landroid/media/AudioTrack;

    .line 96
    .line 97
    iget p1, p1, Lr1/p;->J:I

    .line 98
    .line 99
    invoke-static {v0, p1, v3}, La2/c;->k(Landroid/media/AudioTrack;II)V

    .line 100
    .line 101
    .line 102
    :cond_1
    :goto_0
    return-void
.end method

.method public final Z(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    const-string v0, "Audio codec error"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La2/q1;->A1:La2/j0;

    .line 7
    .line 8
    iget-object v1, v0, La2/j0;->b:Landroid/os/Handler;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v2, La2/a0;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v2, v0, p1, v3}, La2/a0;-><init>(La2/j0;Ljava/lang/Exception;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final a()J
    .locals 2

    .line 1
    iget v0, p0, Ly1/a;->h:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, La2/q1;->E0()V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-wide v0, p0, La2/q1;->I1:J

    .line 10
    .line 11
    return-wide v0
.end method

.method public final a0(JJLjava/lang/String;)V
    .locals 10

    .line 1
    iget-object v1, p0, La2/q1;->A1:La2/j0;

    .line 2
    .line 3
    iget-object v8, v1, La2/j0;->b:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v8, :cond_0

    .line 6
    .line 7
    new-instance v9, La2/b0;

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    move-object v0, v9

    .line 11
    move-object v2, p5

    .line 12
    move-wide v3, p1

    .line 13
    move-wide v5, p3

    .line 14
    invoke-direct/range {v0 .. v7}, La2/b0;-><init>(Ljava/lang/Object;Ljava/lang/String;JJI)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, La2/q1;->L1:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, La2/q1;->L1:Z

    .line 5
    .line 6
    return v0
.end method

.method public final b0(Ly1/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, La2/q1;->A1:La2/j0;

    .line 2
    .line 3
    iget-object v1, v0, La2/j0;->b:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, La2/c0;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v2, v0, v3, p1}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final c()Lr1/h0;
    .locals 1

    .line 1
    iget-object v0, p0, La2/q1;->B1:La2/n1;

    .line 2
    .line 3
    iget-object v0, v0, La2/n1;->x:Lr1/h0;

    .line 4
    .line 5
    return-object v0
.end method

.method public final c0(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, La2/q1;->A1:La2/j0;

    .line 2
    .line 3
    iget-object v1, v0, La2/j0;->b:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, La2/c0;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v2, v0, v3, p1}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final d(ILjava/lang/Object;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, La2/q1;->B1:La2/n1;

    .line 3
    .line 4
    if-eq p1, v0, :cond_17

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p1, v0, :cond_14

    .line 8
    .line 9
    const/4 v0, 0x6

    .line 10
    if-eq p1, v0, :cond_11

    .line 11
    .line 12
    const/16 v0, 0xc

    .line 13
    .line 14
    if-eq p1, v0, :cond_10

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/16 v3, 0x23

    .line 20
    .line 21
    if-eq p1, v0, :cond_e

    .line 22
    .line 23
    const/16 v0, 0x9

    .line 24
    .line 25
    if-eq p1, v0, :cond_b

    .line 26
    .line 27
    const/16 v0, 0xa

    .line 28
    .line 29
    if-eq p1, v0, :cond_7

    .line 30
    .line 31
    const/16 v0, 0x13

    .line 32
    .line 33
    if-eq p1, v0, :cond_4

    .line 34
    .line 35
    const/16 v0, 0x14

    .line 36
    .line 37
    if-eq p1, v0, :cond_0

    .line 38
    .line 39
    invoke-super {p0, p1, p2}, Ld2/u;->d(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    check-cast p2, La2/y;

    .line 48
    .line 49
    iget-object p1, v1, La2/n1;->r:La2/y;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_1
    iget-object p1, v1, La2/n1;->r:La2/y;

    .line 60
    .line 61
    check-cast p1, La2/d1;

    .line 62
    .line 63
    invoke-virtual {p1}, La2/d1;->d()V

    .line 64
    .line 65
    .line 66
    iput-object p2, v1, La2/n1;->r:La2/y;

    .line 67
    .line 68
    iget-object p1, v1, La2/n1;->s:La2/h1;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    check-cast p2, La2/d1;

    .line 73
    .line 74
    invoke-virtual {p2}, La2/d1;->f()V

    .line 75
    .line 76
    .line 77
    iget-object v0, p2, La2/d1;->f:Lu1/m;

    .line 78
    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    new-instance v0, Lu1/m;

    .line 82
    .line 83
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-direct {v0, v2}, Lu1/m;-><init>(Ljava/lang/Thread;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p2, La2/d1;->f:Lu1/m;

    .line 91
    .line 92
    :cond_2
    iget-object p2, p2, La2/d1;->f:Lu1/m;

    .line 93
    .line 94
    invoke-virtual {p2, p1}, Lu1/m;->a(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-virtual {v1}, La2/n1;->r()V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_3

    .line 101
    .line 102
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    check-cast p2, Ljava/lang/Integer;

    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    sget-object p2, La2/n1;->c0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 112
    .line 113
    const/4 p2, -0x1

    .line 114
    if-eqz p1, :cond_5

    .line 115
    .line 116
    if-eq p1, p2, :cond_5

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_5
    const/4 p1, -0x1

    .line 120
    :goto_0
    iget p2, v1, La2/n1;->U:I

    .line 121
    .line 122
    if-ne p2, p1, :cond_6

    .line 123
    .line 124
    goto/16 :goto_3

    .line 125
    .line 126
    :cond_6
    iput p1, v1, La2/n1;->U:I

    .line 127
    .line 128
    invoke-virtual {v1}, La2/n1;->r()V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    check-cast p2, Ljava/lang/Integer;

    .line 137
    .line 138
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    iget-boolean p2, v1, La2/n1;->R:Z

    .line 143
    .line 144
    if-eqz p2, :cond_8

    .line 145
    .line 146
    iget p2, v1, La2/n1;->Q:I

    .line 147
    .line 148
    if-ne p2, p1, :cond_a

    .line 149
    .line 150
    iput-boolean v2, v1, La2/n1;->R:Z

    .line 151
    .line 152
    :cond_8
    iget p2, v1, La2/n1;->Q:I

    .line 153
    .line 154
    if-eq p2, p1, :cond_a

    .line 155
    .line 156
    iput p1, v1, La2/n1;->Q:I

    .line 157
    .line 158
    if-eqz p1, :cond_9

    .line 159
    .line 160
    const/4 v2, 0x1

    .line 161
    :cond_9
    iput-boolean v2, v1, La2/n1;->P:Z

    .line 162
    .line 163
    invoke-virtual {v1}, La2/n1;->r()V

    .line 164
    .line 165
    .line 166
    :cond_a
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 167
    .line 168
    if-lt p2, v3, :cond_18

    .line 169
    .line 170
    iget-object p2, p0, La2/q1;->C1:Lv3/f;

    .line 171
    .line 172
    if-eqz p2, :cond_18

    .line 173
    .line 174
    invoke-virtual {p2, p1}, Lv3/f;->N(I)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_3

    .line 178
    .line 179
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    check-cast p2, Ljava/lang/Boolean;

    .line 183
    .line 184
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    iput-boolean p1, v1, La2/n1;->y:Z

    .line 189
    .line 190
    invoke-virtual {v1}, La2/n1;->w()Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eqz p1, :cond_c

    .line 195
    .line 196
    sget-object p1, Lr1/h0;->d:Lr1/h0;

    .line 197
    .line 198
    :goto_1
    move-object v3, p1

    .line 199
    goto :goto_2

    .line 200
    :cond_c
    iget-object p1, v1, La2/n1;->x:Lr1/h0;

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :goto_2
    new-instance p1, La2/l1;

    .line 204
    .line 205
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    move-object v2, p1

    .line 216
    invoke-direct/range {v2 .. v7}, La2/l1;-><init>(Lr1/h0;JJ)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, La2/n1;->n()Z

    .line 220
    .line 221
    .line 222
    move-result p2

    .line 223
    if-eqz p2, :cond_d

    .line 224
    .line 225
    iput-object p1, v1, La2/n1;->v:La2/l1;

    .line 226
    .line 227
    goto/16 :goto_3

    .line 228
    .line 229
    :cond_d
    iput-object p1, v1, La2/n1;->w:La2/l1;

    .line 230
    .line 231
    goto/16 :goto_3

    .line 232
    .line 233
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    check-cast p2, Ljava/lang/Integer;

    .line 237
    .line 238
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    iput p1, p0, La2/q1;->N1:I

    .line 243
    .line 244
    iget-object p1, p0, Ld2/u;->R:Ld2/n;

    .line 245
    .line 246
    if-nez p1, :cond_f

    .line 247
    .line 248
    goto/16 :goto_3

    .line 249
    .line 250
    :cond_f
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 251
    .line 252
    if-lt p2, v3, :cond_18

    .line 253
    .line 254
    new-instance p2, Landroid/os/Bundle;

    .line 255
    .line 256
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 257
    .line 258
    .line 259
    iget v0, p0, La2/q1;->N1:I

    .line 260
    .line 261
    neg-int v0, v0

    .line 262
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    const-string v1, "importance"

    .line 267
    .line 268
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    .line 270
    .line 271
    invoke-interface {p1, p2}, Ld2/n;->e(Landroid/os/Bundle;)V

    .line 272
    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_10
    invoke-static {p2}, La2/a;->f(Ljava/lang/Object;)Landroid/media/AudioDeviceInfo;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    iput-object p1, v1, La2/n1;->T:Landroid/media/AudioDeviceInfo;

    .line 280
    .line 281
    iget-object p2, v1, La2/n1;->t:La2/a1;

    .line 282
    .line 283
    if-eqz p2, :cond_18

    .line 284
    .line 285
    iget-object p2, p2, La2/a1;->a:Landroid/media/AudioTrack;

    .line 286
    .line 287
    invoke-static {p2, p1}, La2/a;->p(Landroid/media/AudioTrack;Landroid/media/AudioDeviceInfo;)V

    .line 288
    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_11
    check-cast p2, Lr1/e;

    .line 292
    .line 293
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    iget-object p1, v1, La2/n1;->S:Lr1/e;

    .line 297
    .line 298
    invoke-virtual {p1, p2}, Lr1/e;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    if-eqz p1, :cond_12

    .line 303
    .line 304
    goto :goto_3

    .line 305
    :cond_12
    iget-object p1, v1, La2/n1;->t:La2/a1;

    .line 306
    .line 307
    if-eqz p1, :cond_13

    .line 308
    .line 309
    iget-object p1, v1, La2/n1;->S:Lr1/e;

    .line 310
    .line 311
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    :cond_13
    iput-object p2, v1, La2/n1;->S:Lr1/e;

    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_14
    check-cast p2, Lr1/d;

    .line 318
    .line 319
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    iget-object p1, v1, La2/n1;->u:Lr1/d;

    .line 323
    .line 324
    invoke-virtual {p1, p2}, Lr1/d;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    if-eqz p1, :cond_15

    .line 329
    .line 330
    goto :goto_3

    .line 331
    :cond_15
    iput-object p2, v1, La2/n1;->u:Lr1/d;

    .line 332
    .line 333
    iget-boolean p1, v1, La2/n1;->V:Z

    .line 334
    .line 335
    if-eqz p1, :cond_16

    .line 336
    .line 337
    goto :goto_3

    .line 338
    :cond_16
    invoke-virtual {v1}, La2/n1;->r()V

    .line 339
    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    check-cast p2, Ljava/lang/Float;

    .line 346
    .line 347
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    iget p2, v1, La2/n1;->H:F

    .line 352
    .line 353
    cmpl-float p2, p2, p1

    .line 354
    .line 355
    if-eqz p2, :cond_18

    .line 356
    .line 357
    iput p1, v1, La2/n1;->H:F

    .line 358
    .line 359
    invoke-virtual {v1}, La2/n1;->n()Z

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    if-eqz p1, :cond_18

    .line 364
    .line 365
    iget-object p1, v1, La2/n1;->t:La2/a1;

    .line 366
    .line 367
    iget p2, v1, La2/n1;->H:F

    .line 368
    .line 369
    iget-object p1, p1, La2/a1;->a:Landroid/media/AudioTrack;

    .line 370
    .line 371
    invoke-static {p1, p2}, La2/t0;->o(Landroid/media/AudioTrack;F)V

    .line 372
    .line 373
    .line 374
    :cond_18
    :goto_3
    return-void
.end method

.method public final d0(Lua/i8;)Ly1/d;
    .locals 5

    .line 1
    iget-object v0, p1, Lua/i8;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lr1/p;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, La2/q1;->G1:Lr1/p;

    .line 9
    .line 10
    invoke-super {p0, p1}, Ld2/u;->d0(Lua/i8;)Ly1/d;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v1, p0, La2/q1;->A1:La2/j0;

    .line 15
    .line 16
    iget-object v2, v1, La2/j0;->b:Landroid/os/Handler;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    new-instance v3, La2/e0;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-direct {v3, v1, v0, p1, v4}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object p1
.end method

.method public final e(Lr1/h0;)V
    .locals 8

    .line 1
    iget-object v0, p0, La2/q1;->B1:La2/n1;

    .line 2
    .line 3
    invoke-virtual {v0}, La2/n1;->w()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput-object p1, v0, La2/n1;->x:Lr1/h0;

    .line 10
    .line 11
    invoke-virtual {v0}, La2/n1;->t()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v3, Lr1/h0;

    .line 16
    .line 17
    iget v1, p1, Lr1/h0;->a:F

    .line 18
    .line 19
    const v2, 0x3dcccccd    # 0.1f

    .line 20
    .line 21
    .line 22
    const/high16 v4, 0x41000000    # 8.0f

    .line 23
    .line 24
    invoke-static {v1, v2, v4}, Lu1/f0;->f(FFF)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget p1, p1, Lr1/h0;->b:F

    .line 29
    .line 30
    invoke-static {p1, v2, v4}, Lu1/f0;->f(FFF)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-direct {v3, v1, p1}, Lr1/h0;-><init>(FF)V

    .line 35
    .line 36
    .line 37
    iput-object v3, v0, La2/n1;->x:Lr1/h0;

    .line 38
    .line 39
    new-instance p1, La2/l1;

    .line 40
    .line 41
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    move-object v2, p1

    .line 52
    invoke-direct/range {v2 .. v7}, La2/l1;-><init>(Lr1/h0;JJ)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, La2/n1;->n()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    iput-object p1, v0, La2/n1;->v:La2/l1;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iput-object p1, v0, La2/n1;->w:La2/l1;

    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method public final e0(Lr1/p;Landroid/media/MediaFormat;)V
    .locals 13

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x5

    .line 6
    const/4 v4, 0x3

    .line 7
    const/4 v5, 0x6

    .line 8
    const/4 v6, 0x2

    .line 9
    iget-object v7, p0, La2/q1;->H1:Lr1/p;

    .line 10
    .line 11
    const/4 v8, 0x1

    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v10, 0x0

    .line 14
    if-eqz v7, :cond_0

    .line 15
    .line 16
    move-object p1, v7

    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    iget-object v7, p0, Ld2/u;->R:Ld2/n;

    .line 20
    .line 21
    if-nez v7, :cond_1

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v7, p1, Lr1/p;->o:Ljava/lang/String;

    .line 29
    .line 30
    const-string v11, "audio/raw"

    .line 31
    .line 32
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_2

    .line 37
    .line 38
    iget v7, p1, Lr1/p;->I:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const/16 v12, 0x18

    .line 44
    .line 45
    if-lt v7, v12, :cond_3

    .line 46
    .line 47
    const-string v7, "pcm-encoding"

    .line 48
    .line 49
    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v12

    .line 53
    if-eqz v12, :cond_3

    .line 54
    .line 55
    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const-string v7, "v-bits-per-sample"

    .line 61
    .line 62
    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    if-eqz v12, :cond_4

    .line 67
    .line 68
    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 73
    .line 74
    invoke-static {v7, v12}, Lu1/f0;->t(ILjava/nio/ByteOrder;)I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const/4 v7, 0x2

    .line 80
    :goto_0
    new-instance v12, Lr1/o;

    .line 81
    .line 82
    invoke-direct {v12}, Lr1/o;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-static {v11}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    iput-object v11, v12, Lr1/o;->n:Ljava/lang/String;

    .line 90
    .line 91
    iput v7, v12, Lr1/o;->H:I

    .line 92
    .line 93
    iget v7, p1, Lr1/p;->J:I

    .line 94
    .line 95
    iput v7, v12, Lr1/o;->I:I

    .line 96
    .line 97
    iget v7, p1, Lr1/p;->K:I

    .line 98
    .line 99
    iput v7, v12, Lr1/o;->J:I

    .line 100
    .line 101
    iget-object v7, p1, Lr1/p;->l:Lr1/d0;

    .line 102
    .line 103
    iput-object v7, v12, Lr1/o;->k:Lr1/d0;

    .line 104
    .line 105
    iget-object v7, p1, Lr1/p;->a:Ljava/lang/String;

    .line 106
    .line 107
    iput-object v7, v12, Lr1/o;->a:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v7, p1, Lr1/p;->b:Ljava/lang/String;

    .line 110
    .line 111
    iput-object v7, v12, Lr1/o;->b:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v7, p1, Lr1/p;->c:Lu7/g0;

    .line 114
    .line 115
    invoke-static {v7}, Lu7/g0;->m(Ljava/util/Collection;)Lu7/g0;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    iput-object v7, v12, Lr1/o;->c:Lu7/g0;

    .line 120
    .line 121
    iget-object v7, p1, Lr1/p;->d:Ljava/lang/String;

    .line 122
    .line 123
    iput-object v7, v12, Lr1/o;->d:Ljava/lang/String;

    .line 124
    .line 125
    iget v7, p1, Lr1/p;->e:I

    .line 126
    .line 127
    iput v7, v12, Lr1/o;->e:I

    .line 128
    .line 129
    iget v7, p1, Lr1/p;->f:I

    .line 130
    .line 131
    iput v7, v12, Lr1/o;->f:I

    .line 132
    .line 133
    const-string v7, "channel-count"

    .line 134
    .line 135
    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    iput v7, v12, Lr1/o;->F:I

    .line 140
    .line 141
    const-string v7, "sample-rate"

    .line 142
    .line 143
    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    iput p2, v12, Lr1/o;->G:I

    .line 148
    .line 149
    new-instance p2, Lr1/p;

    .line 150
    .line 151
    invoke-direct {p2, v12}, Lr1/p;-><init>(Lr1/o;)V

    .line 152
    .line 153
    .line 154
    iget-boolean v7, p0, La2/q1;->E1:Z

    .line 155
    .line 156
    iget v11, p2, Lr1/p;->G:I

    .line 157
    .line 158
    if-eqz v7, :cond_6

    .line 159
    .line 160
    if-ne v11, v5, :cond_6

    .line 161
    .line 162
    iget p1, p1, Lr1/p;->G:I

    .line 163
    .line 164
    if-ge p1, v5, :cond_6

    .line 165
    .line 166
    new-array v10, p1, [I

    .line 167
    .line 168
    const/4 v0, 0x0

    .line 169
    :goto_1
    if-ge v0, p1, :cond_5

    .line 170
    .line 171
    aput v0, v10, v0

    .line 172
    .line 173
    add-int/2addr v0, v8

    .line 174
    goto :goto_1

    .line 175
    :cond_5
    :goto_2
    move-object p1, p2

    .line 176
    goto :goto_3

    .line 177
    :cond_6
    iget-boolean p1, p0, La2/q1;->F1:Z

    .line 178
    .line 179
    if-eqz p1, :cond_5

    .line 180
    .line 181
    if-eq v11, v4, :cond_b

    .line 182
    .line 183
    if-eq v11, v3, :cond_a

    .line 184
    .line 185
    if-eq v11, v5, :cond_9

    .line 186
    .line 187
    if-eq v11, v1, :cond_8

    .line 188
    .line 189
    if-eq v11, v0, :cond_7

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_7
    new-array v10, v0, [I

    .line 193
    .line 194
    fill-array-data v10, :array_0

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_8
    new-array v10, v1, [I

    .line 199
    .line 200
    fill-array-data v10, :array_1

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_9
    new-array v10, v5, [I

    .line 205
    .line 206
    fill-array-data v10, :array_2

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_a
    filled-new-array {v9, v6, v8, v4, v2}, [I

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    goto :goto_2

    .line 215
    :cond_b
    filled-new-array {v9, v6, v8}, [I

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    goto :goto_2

    .line 220
    :goto_3
    :try_start_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch La2/l0; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .line 222
    const/16 v0, 0x1d

    .line 223
    .line 224
    iget-object v1, p0, La2/q1;->B1:La2/n1;

    .line 225
    .line 226
    if-lt p2, v0, :cond_f

    .line 227
    .line 228
    :try_start_1
    iget-boolean v2, p0, Ld2/u;->Y0:Z

    .line 229
    .line 230
    if-eqz v2, :cond_d

    .line 231
    .line 232
    iget-object v2, p0, Ly1/a;->d:Ly1/b1;

    .line 233
    .line 234
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    iget v2, v2, Ly1/b1;->a:I

    .line 238
    .line 239
    if-eqz v2, :cond_d

    .line 240
    .line 241
    iget-object v2, p0, Ly1/a;->d:Ly1/b1;

    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    iget v2, v2, Ly1/b1;->a:I

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    if-lt p2, v0, :cond_c

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_c
    const/4 v8, 0x0

    .line 255
    :goto_4
    invoke-static {v8}, La9/o;->t(Z)V

    .line 256
    .line 257
    .line 258
    iput v2, v1, La2/n1;->i:I

    .line 259
    .line 260
    goto :goto_6

    .line 261
    :catch_0
    move-exception p1

    .line 262
    goto :goto_7

    .line 263
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    if-lt p2, v0, :cond_e

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_e
    const/4 v8, 0x0

    .line 270
    :goto_5
    invoke-static {v8}, La9/o;->t(Z)V

    .line 271
    .line 272
    .line 273
    iput v9, v1, La2/n1;->i:I

    .line 274
    .line 275
    :cond_f
    :goto_6
    invoke-virtual {v1, p1, v10}, La2/n1;->c(Lr1/p;[I)V
    :try_end_1
    .catch La2/l0; {:try_start_1 .. :try_end_1} :catch_0

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :goto_7
    iget-object p2, p1, La2/l0;->a:Lr1/p;

    .line 280
    .line 281
    const/16 v0, 0x1389

    .line 282
    .line 283
    invoke-virtual {p0, p1, p2, v9, v0}, Ly1/a;->f(Ljava/lang/Exception;Lr1/p;ZI)Ly1/k;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    goto :goto_9

    .line 288
    :goto_8
    throw p1

    .line 289
    :goto_9
    goto :goto_8

    .line 290
    nop

    .line 291
    :array_0
    .array-data 4
        0x0
        0x2
        0x1
        0x7
        0x5
        0x6
        0x3
        0x4
    .end array-data

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    :array_1
    .array-data 4
        0x0
        0x2
        0x1
        0x6
        0x5
        0x3
        0x4
    .end array-data

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_2
    .array-data 4
        0x0
        0x2
        0x1
        0x5
        0x3
        0x4
    .end array-data
.end method

.method public final f0()V
    .locals 1

    .line 1
    iget-object v0, p0, La2/q1;->B1:La2/n1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h0()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, La2/q1;->B1:La2/n1;

    .line 3
    .line 4
    iput-boolean v0, v1, La2/n1;->E:Z

    .line 5
    .line 6
    return-void
.end method

.method public final i()Ly1/k0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MediaCodecAudioRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public final k0(JJLd2/n;Ljava/nio/ByteBuffer;IIIJZZLr1/p;)Z
    .locals 0

    .line 1
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide p1, p0, La2/q1;->P1:J

    .line 10
    .line 11
    iget-object p1, p0, La2/q1;->H1:Lr1/p;

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    and-int/lit8 p1, p8, 0x2

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-interface {p5, p7}, Ld2/n;->h(I)V

    .line 24
    .line 25
    .line 26
    return p2

    .line 27
    :cond_0
    iget-object p1, p0, La2/q1;->B1:La2/n1;

    .line 28
    .line 29
    if-eqz p12, :cond_2

    .line 30
    .line 31
    if-eqz p5, :cond_1

    .line 32
    .line 33
    invoke-interface {p5, p7}, Ld2/n;->h(I)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p3, p0, Ld2/u;->o1:Ly1/c;

    .line 37
    .line 38
    iget p4, p3, Ly1/c;->f:I

    .line 39
    .line 40
    add-int/2addr p4, p9

    .line 41
    iput p4, p3, Ly1/c;->f:I

    .line 42
    .line 43
    iput-boolean p2, p1, La2/n1;->E:Z

    .line 44
    .line 45
    return p2

    .line 46
    :cond_2
    :try_start_0
    invoke-virtual {p1, p10, p11, p9, p6}, La2/n1;->k(JILjava/nio/ByteBuffer;)Z

    .line 47
    .line 48
    .line 49
    move-result p1
    :try_end_0
    .catch La2/m0; {:try_start_0 .. :try_end_0} :catch_1
    .catch La2/o0; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    if-eqz p5, :cond_3

    .line 53
    .line 54
    invoke-interface {p5, p7}, Ld2/n;->h(I)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object p1, p0, Ld2/u;->o1:Ly1/c;

    .line 58
    .line 59
    iget p3, p1, Ly1/c;->e:I

    .line 60
    .line 61
    add-int/2addr p3, p9

    .line 62
    iput p3, p1, Ly1/c;->e:I

    .line 63
    .line 64
    return p2

    .line 65
    :cond_4
    iput-wide p10, p0, La2/q1;->P1:J

    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    return p1

    .line 69
    :catch_0
    move-exception p1

    .line 70
    iget-boolean p2, p0, Ld2/u;->Y0:Z

    .line 71
    .line 72
    if-eqz p2, :cond_5

    .line 73
    .line 74
    iget-object p2, p0, Ly1/a;->d:Ly1/b1;

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget p2, p2, Ly1/b1;->a:I

    .line 80
    .line 81
    if-eqz p2, :cond_5

    .line 82
    .line 83
    const/16 p2, 0x138b

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    const/16 p2, 0x138a

    .line 87
    .line 88
    :goto_0
    iget-boolean p3, p1, La2/o0;->b:Z

    .line 89
    .line 90
    invoke-virtual {p0, p1, p14, p3, p2}, Ly1/a;->f(Ljava/lang/Exception;Lr1/p;ZI)Ly1/k;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    throw p1

    .line 95
    :catch_1
    move-exception p1

    .line 96
    iget-object p2, p0, La2/q1;->G1:Lr1/p;

    .line 97
    .line 98
    iget-boolean p3, p0, Ld2/u;->Y0:Z

    .line 99
    .line 100
    if-eqz p3, :cond_6

    .line 101
    .line 102
    iget-object p3, p0, Ly1/a;->d:Ly1/b1;

    .line 103
    .line 104
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iget p3, p3, Ly1/b1;->a:I

    .line 108
    .line 109
    if-eqz p3, :cond_6

    .line 110
    .line 111
    const/16 p3, 0x138c

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    const/16 p3, 0x1389

    .line 115
    .line 116
    :goto_1
    iget-boolean p4, p1, La2/m0;->a:Z

    .line 117
    .line 118
    invoke-virtual {p0, p1, p2, p4, p3}, Ly1/a;->f(Ljava/lang/Exception;Lr1/p;ZI)Ly1/k;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    throw p1
.end method

.method public final l()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ld2/u;->k1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, La2/q1;->B1:La2/n1;

    .line 6
    .line 7
    invoke-virtual {v0}, La2/n1;->n()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-boolean v1, v0, La2/n1;->L:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, La2/n1;->l()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-object v0, p0, La2/q1;->B1:La2/n1;

    .line 2
    .line 3
    invoke-virtual {v0}, La2/n1;->l()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-object v0, p0, La2/q1;->A1:La2/j0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, La2/q1;->K1:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, La2/q1;->G1:Lr1/p;

    .line 8
    .line 9
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    iput-wide v1, p0, La2/q1;->P1:J

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, La2/q1;->M1:Z

    .line 18
    .line 19
    :try_start_0
    iget-object v1, p0, La2/q1;->B1:La2/n1;

    .line 20
    .line 21
    invoke-virtual {v1}, La2/n1;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-super {p0}, Ld2/u;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Ld2/u;->o1:Ly1/c;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, La2/j0;->a(Ly1/c;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    iget-object v2, p0, Ld2/u;->o1:Ly1/c;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, La2/j0;->a(Ly1/c;)V

    .line 37
    .line 38
    .line 39
    throw v1

    .line 40
    :catchall_1
    move-exception v1

    .line 41
    :try_start_2
    invoke-super {p0}, Ld2/u;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Ld2/u;->o1:Ly1/c;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, La2/j0;->a(Ly1/c;)V

    .line 47
    .line 48
    .line 49
    throw v1

    .line 50
    :catchall_2
    move-exception v1

    .line 51
    iget-object v2, p0, Ld2/u;->o1:Ly1/c;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, La2/j0;->a(Ly1/c;)V

    .line 54
    .line 55
    .line 56
    throw v1
.end method

.method public final n0()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, La2/q1;->B1:La2/n1;

    .line 2
    .line 3
    iget-boolean v1, v0, La2/n1;->L:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, La2/n1;->n()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, La2/n1;->e()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, La2/n1;->p()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, v0, La2/n1;->L:Z

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Ld2/u;->p1:Ld2/t;

    .line 26
    .line 27
    iget-wide v0, v0, Ld2/t;->f:J

    .line 28
    .line 29
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    cmp-long v4, v0, v2

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    iput-wide v0, p0, La2/q1;->P1:J
    :try_end_0
    .catch La2/o0; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    return-void

    .line 44
    :goto_1
    iget-boolean v1, p0, Ld2/u;->Y0:Z

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    const/16 v1, 0x138b

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v1, 0x138a

    .line 52
    .line 53
    :goto_2
    iget-object v2, v0, La2/o0;->c:Lr1/p;

    .line 54
    .line 55
    iget-boolean v3, v0, La2/o0;->b:Z

    .line 56
    .line 57
    invoke-virtual {p0, v0, v2, v3, v1}, Ly1/a;->f(Ljava/lang/Exception;Lr1/p;ZI)Ly1/k;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    throw v0
.end method

.method public final o(ZZ)V
    .locals 3

    .line 1
    new-instance p1, Ly1/c;

    .line 2
    .line 3
    invoke-direct {p1}, Ly1/c;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ld2/u;->o1:Ly1/c;

    .line 7
    .line 8
    iget-object p2, p0, La2/q1;->A1:La2/j0;

    .line 9
    .line 10
    iget-object v0, p2, La2/j0;->b:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, La2/d0;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v1, p2, p1, v2}, La2/d0;-><init>(La2/j0;Ly1/c;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Ly1/a;->d:Ly1/b1;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-boolean p1, p1, Ly1/b1;->b:Z

    .line 29
    .line 30
    iget-object p2, p0, La2/q1;->B1:La2/n1;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-boolean p1, p2, La2/n1;->P:Z

    .line 35
    .line 36
    invoke-static {p1}, La9/o;->t(Z)V

    .line 37
    .line 38
    .line 39
    iget-boolean p1, p2, La2/n1;->V:Z

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p2, La2/n1;->V:Z

    .line 45
    .line 46
    invoke-virtual {p2}, La2/n1;->r()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-boolean p1, p2, La2/n1;->V:Z

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p2, La2/n1;->V:Z

    .line 56
    .line 57
    invoke-virtual {p2}, La2/n1;->r()V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    iget-object p1, p0, Ly1/a;->f:Lz1/i;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iput-object p1, p2, La2/n1;->m:Lz1/i;

    .line 66
    .line 67
    iget-object p1, p0, Ly1/a;->g:Lu1/z;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-object v0, p2, La2/n1;->r:La2/y;

    .line 73
    .line 74
    check-cast v0, La2/d1;

    .line 75
    .line 76
    iput-object p1, v0, La2/d1;->g:Lu1/z;

    .line 77
    .line 78
    new-instance p1, La1/i;

    .line 79
    .line 80
    const/4 v0, 0x3

    .line 81
    invoke-direct {p1, v0, p0}, La1/i;-><init>(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p2, La2/n1;->n:La1/i;

    .line 85
    .line 86
    return-void
.end method

.method public final p(JZZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Ld2/u;->p(JZZ)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, La2/q1;->B1:La2/n1;

    .line 5
    .line 6
    invoke-virtual {p3}, La2/n1;->f()V

    .line 7
    .line 8
    .line 9
    iput-wide p1, p0, La2/q1;->I1:J

    .line 10
    .line 11
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide p1, p0, La2/q1;->P1:J

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, La2/q1;->L1:Z

    .line 20
    .line 21
    iput-boolean p1, p0, La2/q1;->M1:Z

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, La2/q1;->J1:Z

    .line 25
    .line 26
    return-void
.end method

.method public final q()V
    .locals 2

    .line 1
    iget-object v0, p0, La2/q1;->B1:La2/n1;

    .line 2
    .line 3
    iget-object v0, v0, La2/n1;->r:La2/y;

    .line 4
    .line 5
    check-cast v0, La2/d1;

    .line 6
    .line 7
    invoke-virtual {v0}, La2/d1;->d()V

    .line 8
    .line 9
    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v1, 0x23

    .line 13
    .line 14
    if-lt v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, La2/q1;->C1:Lv3/f;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, v0, Lv3/f;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lv3/f;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Landroid/media/LoudnessCodecController;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-static {v0}, Ld2/b;->b(Landroid/media/LoudnessCodecController;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final r()V
    .locals 5

    .line 1
    iget-object v0, p0, La2/q1;->B1:La2/n1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, La2/q1;->L1:Z

    .line 5
    .line 6
    iput-boolean v1, p0, La2/q1;->M1:Z

    .line 7
    .line 8
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v2, p0, La2/q1;->P1:J

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :try_start_0
    iput-boolean v1, p0, Ld2/u;->Y0:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Ld2/u;->o0()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ld2/u;->m0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    .line 24
    :try_start_1
    iget-object v3, p0, Ld2/u;->K:La1/i;

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v3, v2}, La1/i;->C(Lb2/d;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iput-object v2, p0, Ld2/u;->K:La1/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    iget-boolean v2, p0, La2/q1;->K1:Z

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iput-boolean v1, p0, La2/q1;->K1:Z

    .line 39
    .line 40
    invoke-virtual {v0}, La2/n1;->s()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void

    .line 44
    :catchall_0
    move-exception v2

    .line 45
    goto :goto_1

    .line 46
    :catchall_1
    move-exception v3

    .line 47
    :try_start_2
    iget-object v4, p0, Ld2/u;->K:La1/i;

    .line 48
    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    invoke-virtual {v4, v2}, La1/i;->C(Lb2/d;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iput-object v2, p0, Ld2/u;->K:La1/i;

    .line 55
    .line 56
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :goto_1
    iget-boolean v3, p0, La2/q1;->K1:Z

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    iput-boolean v1, p0, La2/q1;->K1:Z

    .line 62
    .line 63
    invoke-virtual {v0}, La2/n1;->s()V

    .line 64
    .line 65
    .line 66
    :cond_3
    throw v2
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, La2/q1;->B1:La2/n1;

    .line 2
    .line 3
    invoke-virtual {v0}, La2/n1;->o()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, La2/q1;->O1:Z

    .line 8
    .line 9
    return-void
.end method

.method public final t()V
    .locals 8

    .line 1
    invoke-virtual {p0}, La2/q1;->E0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, La2/q1;->O1:Z

    .line 6
    .line 7
    iget-object v1, p0, La2/q1;->B1:La2/n1;

    .line 8
    .line 9
    iput-boolean v0, v1, La2/n1;->O:Z

    .line 10
    .line 11
    invoke-virtual {v1}, La2/n1;->n()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    iget-object v1, v1, La2/n1;->t:La2/a1;

    .line 18
    .line 19
    iget-object v2, v1, La2/a1;->f:La2/e1;

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    iput-wide v3, v2, La2/e1;->k:J

    .line 24
    .line 25
    iput v0, v2, La2/e1;->t:I

    .line 26
    .line 27
    iput v0, v2, La2/e1;->s:I

    .line 28
    .line 29
    iput-wide v3, v2, La2/e1;->l:J

    .line 30
    .line 31
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    iput-wide v3, v2, La2/e1;->y:J

    .line 37
    .line 38
    iput-wide v3, v2, La2/e1;->z:J

    .line 39
    .line 40
    iget-wide v5, v2, La2/e1;->u:J

    .line 41
    .line 42
    cmp-long v7, v5, v3

    .line 43
    .line 44
    if-nez v7, :cond_0

    .line 45
    .line 46
    iget-object v3, v2, La2/e1;->h:La2/r0;

    .line 47
    .line 48
    invoke-virtual {v3, v0}, La2/r0;->a(I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {v2}, La2/e1;->a()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    iput-wide v3, v2, La2/e1;->w:J

    .line 56
    .line 57
    iget-boolean v2, v1, La2/a1;->k:Z

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    invoke-virtual {v1}, La2/a1;->c()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    :cond_1
    iget-object v1, v1, La2/a1;->a:Landroid/media/AudioTrack;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    .line 70
    .line 71
    .line 72
    :cond_2
    iput-boolean v0, p0, La2/q1;->M1:Z

    .line 73
    .line 74
    return-void
.end method

.method public final x0(Lr1/p;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/a;->d:Ly1/b1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v0, v0, Ly1/b1;->a:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p1}, La2/q1;->C0(Lr1/p;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    and-int/lit16 v2, v0, 0x200

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Ly1/a;->d:Ly1/b1;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget v2, v2, Ly1/b1;->a:I

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    if-eq v2, v3, :cond_0

    .line 28
    .line 29
    and-int/lit16 v0, v0, 0x400

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget v0, p1, Lr1/p;->J:I

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget v0, p1, Lr1/p;->K:I

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    :cond_0
    return v1

    .line 42
    :cond_1
    iget-object v0, p0, La2/q1;->B1:La2/n1;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, La2/n1;->h(Lr1/p;)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v1, 0x0

    .line 52
    :goto_0
    return v1
.end method

.method public final y0(Ld2/l;Lr1/p;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v1, Lr1/p;->o:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v2}, Lr1/e0;->h(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-static {v3, v3, v3, v3}, Lta/q;->a(IIII)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    return v1

    .line 19
    :cond_0
    const/4 v2, 0x1

    .line 20
    iget v4, v1, Lr1/p;->P:I

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v5, 0x0

    .line 27
    :goto_0
    const/4 v6, 0x2

    .line 28
    if-eqz v4, :cond_3

    .line 29
    .line 30
    if-ne v4, v6, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 v4, 0x0

    .line 34
    goto :goto_2

    .line 35
    :cond_3
    :goto_1
    const/4 v4, 0x1

    .line 36
    :goto_2
    const/16 v7, 0x20

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    const-string v9, "audio/raw"

    .line 40
    .line 41
    const/16 v10, 0x8

    .line 42
    .line 43
    const/4 v11, 0x4

    .line 44
    iget-object v12, v0, La2/q1;->B1:La2/n1;

    .line 45
    .line 46
    if-eqz v4, :cond_6

    .line 47
    .line 48
    if-eqz v5, :cond_5

    .line 49
    .line 50
    invoke-static {v9, v3, v3}, Ld2/c0;->e(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    if-eqz v13, :cond_4

    .line 59
    .line 60
    move-object v5, v8

    .line 61
    goto :goto_3

    .line 62
    :cond_4
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Ld2/q;

    .line 67
    .line 68
    :goto_3
    if-eqz v5, :cond_6

    .line 69
    .line 70
    :cond_5
    invoke-virtual {v0, v1}, La2/q1;->C0(Lr1/p;)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    invoke-virtual {v12, v1}, La2/n1;->h(Lr1/p;)I

    .line 75
    .line 76
    .line 77
    move-result v13

    .line 78
    if-eqz v13, :cond_7

    .line 79
    .line 80
    invoke-static {v11, v10, v7, v5}, Lta/q;->a(IIII)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    return v1

    .line 85
    :cond_6
    const/4 v5, 0x0

    .line 86
    :cond_7
    iget-object v13, v1, Lr1/p;->o:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v14

    .line 92
    if-eqz v14, :cond_9

    .line 93
    .line 94
    invoke-virtual {v12, v1}, La2/n1;->h(Lr1/p;)I

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    if-eqz v14, :cond_8

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_8
    invoke-static {v2, v3, v3, v3}, Lta/q;->a(IIII)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    return v1

    .line 106
    :cond_9
    :goto_4
    new-instance v14, Lr1/o;

    .line 107
    .line 108
    invoke-direct {v14}, Lr1/o;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-static {v9}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v15

    .line 115
    iput-object v15, v14, Lr1/o;->n:Ljava/lang/String;

    .line 116
    .line 117
    iget v15, v1, Lr1/p;->G:I

    .line 118
    .line 119
    iput v15, v14, Lr1/o;->F:I

    .line 120
    .line 121
    iget v15, v1, Lr1/p;->H:I

    .line 122
    .line 123
    iput v15, v14, Lr1/o;->G:I

    .line 124
    .line 125
    iput v6, v14, Lr1/o;->H:I

    .line 126
    .line 127
    new-instance v15, Lr1/p;

    .line 128
    .line 129
    invoke-direct {v15, v14}, Lr1/p;-><init>(Lr1/o;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v12, v15}, La2/n1;->h(Lr1/p;)I

    .line 133
    .line 134
    .line 135
    move-result v14

    .line 136
    if-eqz v14, :cond_15

    .line 137
    .line 138
    if-nez v13, :cond_a

    .line 139
    .line 140
    sget-object v8, Lu7/y0;->e:Lu7/y0;

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_a
    invoke-virtual {v12, v1}, La2/n1;->h(Lr1/p;)I

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    if-eqz v12, :cond_c

    .line 148
    .line 149
    invoke-static {v9, v3, v3}, Ld2/c0;->e(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v12

    .line 157
    if-eqz v12, :cond_b

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_b
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    check-cast v8, Ld2/q;

    .line 165
    .line 166
    :goto_5
    if-eqz v8, :cond_c

    .line 167
    .line 168
    invoke-static {v8}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    goto :goto_6

    .line 173
    :cond_c
    move-object/from16 v8, p1

    .line 174
    .line 175
    invoke-static {v8, v1, v3, v3}, Ld2/c0;->g(Ld2/l;Lr1/p;ZZ)Lu7/y0;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    :goto_6
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    if-eqz v9, :cond_d

    .line 184
    .line 185
    invoke-static {v2, v3, v3, v3}, Lta/q;->a(IIII)I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    return v1

    .line 190
    :cond_d
    if-nez v4, :cond_e

    .line 191
    .line 192
    invoke-static {v6, v3, v3, v3}, Lta/q;->a(IIII)I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    return v1

    .line 197
    :cond_e
    invoke-virtual {v8, v3}, Lu7/y0;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    check-cast v4, Ld2/q;

    .line 202
    .line 203
    iget-object v6, v0, La2/q1;->z1:Landroid/content/Context;

    .line 204
    .line 205
    invoke-virtual {v4, v6, v1}, Ld2/q;->e(Landroid/content/Context;Lr1/p;)Z

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    if-nez v9, :cond_10

    .line 210
    .line 211
    const/4 v12, 0x1

    .line 212
    :goto_7
    iget v13, v8, Lu7/y0;->d:I

    .line 213
    .line 214
    if-ge v12, v13, :cond_10

    .line 215
    .line 216
    invoke-virtual {v8, v12}, Lu7/y0;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v13

    .line 220
    check-cast v13, Ld2/q;

    .line 221
    .line 222
    invoke-virtual {v13, v6, v1}, Ld2/q;->e(Landroid/content/Context;Lr1/p;)Z

    .line 223
    .line 224
    .line 225
    move-result v14

    .line 226
    if-eqz v14, :cond_f

    .line 227
    .line 228
    const/4 v4, 0x0

    .line 229
    goto :goto_8

    .line 230
    :cond_f
    add-int/lit8 v12, v12, 0x1

    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_10
    move-object v13, v4

    .line 234
    move v2, v9

    .line 235
    const/4 v4, 0x1

    .line 236
    :goto_8
    if-eqz v2, :cond_11

    .line 237
    .line 238
    goto :goto_9

    .line 239
    :cond_11
    const/4 v11, 0x3

    .line 240
    :goto_9
    if-eqz v2, :cond_12

    .line 241
    .line 242
    invoke-virtual {v13, v1}, Ld2/q;->f(Lr1/p;)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_12

    .line 247
    .line 248
    const/16 v10, 0x10

    .line 249
    .line 250
    :cond_12
    iget-boolean v1, v13, Ld2/q;->g:Z

    .line 251
    .line 252
    if-eqz v1, :cond_13

    .line 253
    .line 254
    const/16 v1, 0x40

    .line 255
    .line 256
    goto :goto_a

    .line 257
    :cond_13
    const/4 v1, 0x0

    .line 258
    :goto_a
    if-eqz v4, :cond_14

    .line 259
    .line 260
    const/16 v3, 0x80

    .line 261
    .line 262
    :cond_14
    or-int v2, v11, v10

    .line 263
    .line 264
    or-int/2addr v2, v7

    .line 265
    or-int/2addr v1, v2

    .line 266
    or-int/2addr v1, v3

    .line 267
    or-int/2addr v1, v5

    .line 268
    return v1

    .line 269
    :cond_15
    invoke-static {v2, v3, v3, v3}, Lta/q;->a(IIII)I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    return v1
.end method
