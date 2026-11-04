.class public final Lf0/e;
.super Lf0/d;
.source "SourceFile"


# instance fields
.field public A0:I

.field public B0:[Lf0/b;

.field public C0:[Lf0/b;

.field public D0:I

.field public E0:Z

.field public F0:Z

.field public G0:Ljava/lang/ref/WeakReference;

.field public H0:Ljava/lang/ref/WeakReference;

.field public I0:Ljava/lang/ref/WeakReference;

.field public J0:Ljava/lang/ref/WeakReference;

.field public final K0:Ljava/util/HashSet;

.field public final L0:Lg0/b;

.field public q0:Ljava/util/ArrayList;

.field public final r0:Lv3/f;

.field public final s0:Lg0/e;

.field public t0:I

.field public u0:Li0/f;

.field public v0:Z

.field public final w0:Ld0/c;

.field public x0:I

.field public y0:I

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lf0/d;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lv3/f;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lv3/f;-><init>(Lf0/e;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lf0/e;->r0:Lv3/f;

    .line 17
    .line 18
    new-instance v0, Lg0/e;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lg0/e;-><init>(Lf0/e;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lf0/e;->s0:Lg0/e;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lf0/e;->u0:Li0/f;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lf0/e;->v0:Z

    .line 30
    .line 31
    new-instance v2, Ld0/c;

    .line 32
    .line 33
    invoke-direct {v2}, Ld0/c;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lf0/e;->w0:Ld0/c;

    .line 37
    .line 38
    iput v1, p0, Lf0/e;->z0:I

    .line 39
    .line 40
    iput v1, p0, Lf0/e;->A0:I

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    new-array v3, v2, [Lf0/b;

    .line 44
    .line 45
    iput-object v3, p0, Lf0/e;->B0:[Lf0/b;

    .line 46
    .line 47
    new-array v2, v2, [Lf0/b;

    .line 48
    .line 49
    iput-object v2, p0, Lf0/e;->C0:[Lf0/b;

    .line 50
    .line 51
    const/16 v2, 0x101

    .line 52
    .line 53
    iput v2, p0, Lf0/e;->D0:I

    .line 54
    .line 55
    iput-boolean v1, p0, Lf0/e;->E0:Z

    .line 56
    .line 57
    iput-boolean v1, p0, Lf0/e;->F0:Z

    .line 58
    .line 59
    iput-object v0, p0, Lf0/e;->G0:Ljava/lang/ref/WeakReference;

    .line 60
    .line 61
    iput-object v0, p0, Lf0/e;->H0:Ljava/lang/ref/WeakReference;

    .line 62
    .line 63
    iput-object v0, p0, Lf0/e;->I0:Ljava/lang/ref/WeakReference;

    .line 64
    .line 65
    iput-object v0, p0, Lf0/e;->J0:Ljava/lang/ref/WeakReference;

    .line 66
    .line 67
    new-instance v0, Ljava/util/HashSet;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lf0/e;->K0:Ljava/util/HashSet;

    .line 73
    .line 74
    new-instance v0, Lg0/b;

    .line 75
    .line 76
    invoke-direct {v0}, Lg0/b;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lf0/e;->L0:Lg0/b;

    .line 80
    .line 81
    return-void
.end method

.method public static V(Lf0/d;Li0/f;Lg0/b;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Lf0/d;->g0:I

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_13

    .line 10
    .line 11
    instance-of v0, p0, Lf0/h;

    .line 12
    .line 13
    if-nez v0, :cond_13

    .line 14
    .line 15
    instance-of v0, p0, Lf0/a;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lf0/d;->p0:[I

    .line 22
    .line 23
    aget v1, v0, v2

    .line 24
    .line 25
    iput v1, p2, Lg0/b;->a:I

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    aget v0, v0, v1

    .line 29
    .line 30
    iput v0, p2, Lg0/b;->b:I

    .line 31
    .line 32
    invoke-virtual {p0}, Lf0/d;->q()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p2, Lg0/b;->c:I

    .line 37
    .line 38
    invoke-virtual {p0}, Lf0/d;->k()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p2, Lg0/b;->d:I

    .line 43
    .line 44
    iput-boolean v2, p2, Lg0/b;->i:Z

    .line 45
    .line 46
    iput v2, p2, Lg0/b;->j:I

    .line 47
    .line 48
    iget v0, p2, Lg0/b;->a:I

    .line 49
    .line 50
    const/4 v3, 0x3

    .line 51
    if-ne v0, v3, :cond_2

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 v0, 0x0

    .line 56
    :goto_0
    iget v4, p2, Lg0/b;->b:I

    .line 57
    .line 58
    if-ne v4, v3, :cond_3

    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const/4 v3, 0x0

    .line 63
    :goto_1
    const/4 v4, 0x0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    iget v5, p0, Lf0/d;->W:F

    .line 67
    .line 68
    cmpl-float v5, v5, v4

    .line 69
    .line 70
    if-lez v5, :cond_4

    .line 71
    .line 72
    const/4 v5, 0x1

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    const/4 v5, 0x0

    .line 75
    :goto_2
    if-eqz v3, :cond_5

    .line 76
    .line 77
    iget v6, p0, Lf0/d;->W:F

    .line 78
    .line 79
    cmpl-float v4, v6, v4

    .line 80
    .line 81
    if-lez v4, :cond_5

    .line 82
    .line 83
    const/4 v4, 0x1

    .line 84
    goto :goto_3

    .line 85
    :cond_5
    const/4 v4, 0x0

    .line 86
    :goto_3
    const/4 v6, 0x2

    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    invoke-virtual {p0, v2}, Lf0/d;->t(I)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_7

    .line 94
    .line 95
    iget v7, p0, Lf0/d;->r:I

    .line 96
    .line 97
    if-nez v7, :cond_7

    .line 98
    .line 99
    if-nez v5, :cond_7

    .line 100
    .line 101
    iput v6, p2, Lg0/b;->a:I

    .line 102
    .line 103
    if-eqz v3, :cond_6

    .line 104
    .line 105
    iget v0, p0, Lf0/d;->s:I

    .line 106
    .line 107
    if-nez v0, :cond_6

    .line 108
    .line 109
    iput v1, p2, Lg0/b;->a:I

    .line 110
    .line 111
    :cond_6
    const/4 v0, 0x0

    .line 112
    :cond_7
    if-eqz v3, :cond_9

    .line 113
    .line 114
    invoke-virtual {p0, v1}, Lf0/d;->t(I)Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_9

    .line 119
    .line 120
    iget v7, p0, Lf0/d;->s:I

    .line 121
    .line 122
    if-nez v7, :cond_9

    .line 123
    .line 124
    if-nez v4, :cond_9

    .line 125
    .line 126
    iput v6, p2, Lg0/b;->b:I

    .line 127
    .line 128
    if-eqz v0, :cond_8

    .line 129
    .line 130
    iget v3, p0, Lf0/d;->r:I

    .line 131
    .line 132
    if-nez v3, :cond_8

    .line 133
    .line 134
    iput v1, p2, Lg0/b;->b:I

    .line 135
    .line 136
    :cond_8
    const/4 v3, 0x0

    .line 137
    :cond_9
    invoke-virtual {p0}, Lf0/d;->A()Z

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    if-eqz v7, :cond_a

    .line 142
    .line 143
    iput v1, p2, Lg0/b;->a:I

    .line 144
    .line 145
    const/4 v0, 0x0

    .line 146
    :cond_a
    invoke-virtual {p0}, Lf0/d;->B()Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_b

    .line 151
    .line 152
    iput v1, p2, Lg0/b;->b:I

    .line 153
    .line 154
    const/4 v3, 0x0

    .line 155
    :cond_b
    iget-object v7, p0, Lf0/d;->t:[I

    .line 156
    .line 157
    const/4 v8, 0x4

    .line 158
    if-eqz v5, :cond_e

    .line 159
    .line 160
    aget v5, v7, v2

    .line 161
    .line 162
    if-ne v5, v8, :cond_c

    .line 163
    .line 164
    iput v1, p2, Lg0/b;->a:I

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_c
    if-nez v3, :cond_e

    .line 168
    .line 169
    iget v3, p2, Lg0/b;->b:I

    .line 170
    .line 171
    if-ne v3, v1, :cond_d

    .line 172
    .line 173
    iget v3, p2, Lg0/b;->d:I

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_d
    iput v6, p2, Lg0/b;->a:I

    .line 177
    .line 178
    invoke-virtual {p1, p0, p2}, Li0/f;->b(Lf0/d;Lg0/b;)V

    .line 179
    .line 180
    .line 181
    iget v3, p2, Lg0/b;->f:I

    .line 182
    .line 183
    :goto_4
    iput v1, p2, Lg0/b;->a:I

    .line 184
    .line 185
    iget v5, p0, Lf0/d;->W:F

    .line 186
    .line 187
    int-to-float v3, v3

    .line 188
    mul-float v5, v5, v3

    .line 189
    .line 190
    float-to-int v3, v5

    .line 191
    iput v3, p2, Lg0/b;->c:I

    .line 192
    .line 193
    :cond_e
    :goto_5
    if-eqz v4, :cond_12

    .line 194
    .line 195
    aget v3, v7, v1

    .line 196
    .line 197
    if-ne v3, v8, :cond_f

    .line 198
    .line 199
    iput v1, p2, Lg0/b;->b:I

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_f
    if-nez v0, :cond_12

    .line 203
    .line 204
    iget v0, p2, Lg0/b;->a:I

    .line 205
    .line 206
    if-ne v0, v1, :cond_10

    .line 207
    .line 208
    iget v0, p2, Lg0/b;->c:I

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_10
    iput v6, p2, Lg0/b;->b:I

    .line 212
    .line 213
    invoke-virtual {p1, p0, p2}, Li0/f;->b(Lf0/d;Lg0/b;)V

    .line 214
    .line 215
    .line 216
    iget v0, p2, Lg0/b;->e:I

    .line 217
    .line 218
    :goto_6
    iput v1, p2, Lg0/b;->b:I

    .line 219
    .line 220
    iget v1, p0, Lf0/d;->X:I

    .line 221
    .line 222
    const/4 v3, -0x1

    .line 223
    if-ne v1, v3, :cond_11

    .line 224
    .line 225
    int-to-float v0, v0

    .line 226
    iget v1, p0, Lf0/d;->W:F

    .line 227
    .line 228
    div-float/2addr v0, v1

    .line 229
    float-to-int v0, v0

    .line 230
    iput v0, p2, Lg0/b;->d:I

    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_11
    iget v1, p0, Lf0/d;->W:F

    .line 234
    .line 235
    int-to-float v0, v0

    .line 236
    mul-float v1, v1, v0

    .line 237
    .line 238
    float-to-int v0, v1

    .line 239
    iput v0, p2, Lg0/b;->d:I

    .line 240
    .line 241
    :cond_12
    :goto_7
    invoke-virtual {p1, p0, p2}, Li0/f;->b(Lf0/d;Lg0/b;)V

    .line 242
    .line 243
    .line 244
    iget p1, p2, Lg0/b;->e:I

    .line 245
    .line 246
    invoke-virtual {p0, p1}, Lf0/d;->O(I)V

    .line 247
    .line 248
    .line 249
    iget p1, p2, Lg0/b;->f:I

    .line 250
    .line 251
    invoke-virtual {p0, p1}, Lf0/d;->L(I)V

    .line 252
    .line 253
    .line 254
    iget-boolean p1, p2, Lg0/b;->h:Z

    .line 255
    .line 256
    iput-boolean p1, p0, Lf0/d;->E:Z

    .line 257
    .line 258
    iget p1, p2, Lg0/b;->g:I

    .line 259
    .line 260
    invoke-virtual {p0, p1}, Lf0/d;->I(I)V

    .line 261
    .line 262
    .line 263
    iput v2, p2, Lg0/b;->j:I

    .line 264
    .line 265
    return-void

    .line 266
    :cond_13
    :goto_8
    iput v2, p2, Lg0/b;->e:I

    .line 267
    .line 268
    iput v2, p2, Lg0/b;->f:I

    .line 269
    .line 270
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/e;->w0:Ld0/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld0/c;->t()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lf0/e;->x0:I

    .line 8
    .line 9
    iput v0, p0, Lf0/e;->y0:I

    .line 10
    .line 11
    iget-object v0, p0, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Lf0/d;->C()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final F(Lv3/f;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lf0/d;->F(Lv3/f;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lf0/d;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Lf0/d;->F(Lv3/f;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final P(ZZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lf0/d;->P(ZZ)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lf0/d;

    .line 20
    .line 21
    invoke-virtual {v2, p1, p2}, Lf0/d;->P(ZZ)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final R(Lf0/d;I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    iget p2, p0, Lf0/e;->z0:I

    .line 5
    .line 6
    add-int/2addr p2, v0

    .line 7
    iget-object v1, p0, Lf0/e;->C0:[Lf0/b;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    if-lt p2, v2, :cond_0

    .line 11
    .line 12
    array-length p2, v1

    .line 13
    mul-int/lit8 p2, p2, 0x2

    .line 14
    .line 15
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, [Lf0/b;

    .line 20
    .line 21
    iput-object p2, p0, Lf0/e;->C0:[Lf0/b;

    .line 22
    .line 23
    :cond_0
    iget-object p2, p0, Lf0/e;->C0:[Lf0/b;

    .line 24
    .line 25
    iget v1, p0, Lf0/e;->z0:I

    .line 26
    .line 27
    new-instance v2, Lf0/b;

    .line 28
    .line 29
    iget-boolean v3, p0, Lf0/e;->v0:Z

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-direct {v2, p1, v4, v3}, Lf0/b;-><init>(Lf0/d;IZ)V

    .line 33
    .line 34
    .line 35
    aput-object v2, p2, v1

    .line 36
    .line 37
    add-int/2addr v1, v0

    .line 38
    iput v1, p0, Lf0/e;->z0:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-ne p2, v0, :cond_3

    .line 42
    .line 43
    iget p2, p0, Lf0/e;->A0:I

    .line 44
    .line 45
    add-int/2addr p2, v0

    .line 46
    iget-object v1, p0, Lf0/e;->B0:[Lf0/b;

    .line 47
    .line 48
    array-length v2, v1

    .line 49
    if-lt p2, v2, :cond_2

    .line 50
    .line 51
    array-length p2, v1

    .line 52
    mul-int/lit8 p2, p2, 0x2

    .line 53
    .line 54
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, [Lf0/b;

    .line 59
    .line 60
    iput-object p2, p0, Lf0/e;->B0:[Lf0/b;

    .line 61
    .line 62
    :cond_2
    iget-object p2, p0, Lf0/e;->B0:[Lf0/b;

    .line 63
    .line 64
    iget v1, p0, Lf0/e;->A0:I

    .line 65
    .line 66
    new-instance v2, Lf0/b;

    .line 67
    .line 68
    iget-boolean v3, p0, Lf0/e;->v0:Z

    .line 69
    .line 70
    invoke-direct {v2, p1, v0, v3}, Lf0/b;-><init>(Lf0/d;IZ)V

    .line 71
    .line 72
    .line 73
    aput-object v2, p2, v1

    .line 74
    .line 75
    add-int/2addr v1, v0

    .line 76
    iput v1, p0, Lf0/e;->A0:I

    .line 77
    .line 78
    :cond_3
    :goto_0
    return-void
.end method

.method public final S(Ld0/c;)V
    .locals 12

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lf0/e;->W(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1, v0}, Lf0/d;->b(Ld0/c;Z)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    const/4 v5, 0x1

    .line 20
    if-ge v3, v1, :cond_1

    .line 21
    .line 22
    iget-object v6, p0, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Lf0/d;

    .line 29
    .line 30
    iget-object v7, v6, Lf0/d;->S:[Z

    .line 31
    .line 32
    aput-boolean v2, v7, v2

    .line 33
    .line 34
    aput-boolean v2, v7, v5

    .line 35
    .line 36
    instance-of v6, v6, Lf0/a;

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v3, 0x2

    .line 45
    if-eqz v4, :cond_8

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    :goto_1
    if-ge v4, v1, :cond_8

    .line 49
    .line 50
    iget-object v6, p0, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Lf0/d;

    .line 57
    .line 58
    instance-of v7, v6, Lf0/a;

    .line 59
    .line 60
    if-eqz v7, :cond_7

    .line 61
    .line 62
    check-cast v6, Lf0/a;

    .line 63
    .line 64
    const/4 v7, 0x0

    .line 65
    :goto_2
    iget v8, v6, Lf0/i;->r0:I

    .line 66
    .line 67
    if-ge v7, v8, :cond_7

    .line 68
    .line 69
    iget-object v8, v6, Lf0/i;->q0:[Lf0/d;

    .line 70
    .line 71
    aget-object v8, v8, v7

    .line 72
    .line 73
    iget-boolean v9, v6, Lf0/a;->t0:Z

    .line 74
    .line 75
    if-nez v9, :cond_2

    .line 76
    .line 77
    invoke-virtual {v8}, Lf0/d;->c()Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-nez v9, :cond_2

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_2
    iget v9, v6, Lf0/a;->s0:I

    .line 85
    .line 86
    if-eqz v9, :cond_5

    .line 87
    .line 88
    if-ne v9, v5, :cond_3

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_3
    if-eq v9, v3, :cond_4

    .line 92
    .line 93
    const/4 v10, 0x3

    .line 94
    if-ne v9, v10, :cond_6

    .line 95
    .line 96
    :cond_4
    iget-object v8, v8, Lf0/d;->S:[Z

    .line 97
    .line 98
    aput-boolean v5, v8, v5

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_5
    :goto_3
    iget-object v8, v8, Lf0/d;->S:[Z

    .line 102
    .line 103
    aput-boolean v5, v8, v2

    .line 104
    .line 105
    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_8
    iget-object v4, p0, Lf0/e;->K0:Ljava/util/HashSet;

    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 114
    .line 115
    .line 116
    const/4 v6, 0x0

    .line 117
    :goto_5
    if-ge v6, v1, :cond_c

    .line 118
    .line 119
    iget-object v7, p0, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    check-cast v7, Lf0/d;

    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    instance-of v8, v7, Lf0/g;

    .line 131
    .line 132
    if-nez v8, :cond_9

    .line 133
    .line 134
    instance-of v9, v7, Lf0/h;

    .line 135
    .line 136
    if-eqz v9, :cond_b

    .line 137
    .line 138
    :cond_9
    if-eqz v8, :cond_a

    .line 139
    .line 140
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_a
    invoke-virtual {v7, p1, v0}, Lf0/d;->b(Ld0/c;Z)V

    .line 145
    .line 146
    .line 147
    :cond_b
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_c
    :goto_7
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-lez v6, :cond_11

    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-eqz v8, :cond_f

    .line 169
    .line 170
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    check-cast v8, Lf0/d;

    .line 175
    .line 176
    check-cast v8, Lf0/g;

    .line 177
    .line 178
    const/4 v9, 0x0

    .line 179
    :goto_8
    iget v10, v8, Lf0/i;->r0:I

    .line 180
    .line 181
    if-ge v9, v10, :cond_d

    .line 182
    .line 183
    iget-object v10, v8, Lf0/i;->q0:[Lf0/d;

    .line 184
    .line 185
    aget-object v10, v10, v9

    .line 186
    .line 187
    invoke-virtual {v4, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    if-eqz v10, :cond_e

    .line 192
    .line 193
    invoke-virtual {v8, p1, v0}, Lf0/g;->b(Ld0/c;Z)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_9

    .line 200
    :cond_e
    add-int/lit8 v9, v9, 0x1

    .line 201
    .line 202
    goto :goto_8

    .line 203
    :cond_f
    :goto_9
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    if-ne v6, v7, :cond_c

    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-eqz v7, :cond_10

    .line 218
    .line 219
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    check-cast v7, Lf0/d;

    .line 224
    .line 225
    invoke-virtual {v7, p1, v0}, Lf0/d;->b(Ld0/c;Z)V

    .line 226
    .line 227
    .line 228
    goto :goto_a

    .line 229
    :cond_10
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 230
    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_11
    sget-boolean v4, Ld0/c;->p:Z

    .line 234
    .line 235
    if-eqz v4, :cond_16

    .line 236
    .line 237
    new-instance v4, Ljava/util/HashSet;

    .line 238
    .line 239
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 240
    .line 241
    .line 242
    const/4 v6, 0x0

    .line 243
    :goto_b
    if-ge v6, v1, :cond_14

    .line 244
    .line 245
    iget-object v7, p0, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    check-cast v7, Lf0/d;

    .line 252
    .line 253
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    instance-of v8, v7, Lf0/g;

    .line 257
    .line 258
    if-nez v8, :cond_13

    .line 259
    .line 260
    instance-of v8, v7, Lf0/h;

    .line 261
    .line 262
    if-eqz v8, :cond_12

    .line 263
    .line 264
    goto :goto_c

    .line 265
    :cond_12
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    :cond_13
    :goto_c
    add-int/lit8 v6, v6, 0x1

    .line 269
    .line 270
    goto :goto_b

    .line 271
    :cond_14
    iget-object v1, p0, Lf0/d;->p0:[I

    .line 272
    .line 273
    aget v1, v1, v2

    .line 274
    .line 275
    if-ne v1, v3, :cond_15

    .line 276
    .line 277
    const/4 v10, 0x0

    .line 278
    goto :goto_d

    .line 279
    :cond_15
    const/4 v10, 0x1

    .line 280
    :goto_d
    const/4 v11, 0x0

    .line 281
    move-object v6, p0

    .line 282
    move-object v7, p0

    .line 283
    move-object v8, p1

    .line 284
    move-object v9, v4

    .line 285
    invoke-virtual/range {v6 .. v11}, Lf0/d;->a(Lf0/e;Ld0/c;Ljava/util/HashSet;IZ)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    if-eqz v3, :cond_1d

    .line 297
    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    check-cast v3, Lf0/d;

    .line 303
    .line 304
    invoke-static {p0, p1, v3}, Lf0/j;->b(Lf0/e;Ld0/c;Lf0/d;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3, p1, v0}, Lf0/d;->b(Ld0/c;Z)V

    .line 308
    .line 309
    .line 310
    goto :goto_e

    .line 311
    :cond_16
    const/4 v4, 0x0

    .line 312
    :goto_f
    if-ge v4, v1, :cond_1d

    .line 313
    .line 314
    iget-object v6, p0, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    check-cast v6, Lf0/d;

    .line 321
    .line 322
    instance-of v7, v6, Lf0/e;

    .line 323
    .line 324
    if-eqz v7, :cond_1a

    .line 325
    .line 326
    iget-object v7, v6, Lf0/d;->p0:[I

    .line 327
    .line 328
    aget v8, v7, v2

    .line 329
    .line 330
    aget v7, v7, v5

    .line 331
    .line 332
    if-ne v8, v3, :cond_17

    .line 333
    .line 334
    invoke-virtual {v6, v5}, Lf0/d;->M(I)V

    .line 335
    .line 336
    .line 337
    :cond_17
    if-ne v7, v3, :cond_18

    .line 338
    .line 339
    invoke-virtual {v6, v5}, Lf0/d;->N(I)V

    .line 340
    .line 341
    .line 342
    :cond_18
    invoke-virtual {v6, p1, v0}, Lf0/d;->b(Ld0/c;Z)V

    .line 343
    .line 344
    .line 345
    if-ne v8, v3, :cond_19

    .line 346
    .line 347
    invoke-virtual {v6, v8}, Lf0/d;->M(I)V

    .line 348
    .line 349
    .line 350
    :cond_19
    if-ne v7, v3, :cond_1c

    .line 351
    .line 352
    invoke-virtual {v6, v7}, Lf0/d;->N(I)V

    .line 353
    .line 354
    .line 355
    goto :goto_10

    .line 356
    :cond_1a
    invoke-static {p0, p1, v6}, Lf0/j;->b(Lf0/e;Ld0/c;Lf0/d;)V

    .line 357
    .line 358
    .line 359
    instance-of v7, v6, Lf0/g;

    .line 360
    .line 361
    if-nez v7, :cond_1c

    .line 362
    .line 363
    instance-of v7, v6, Lf0/h;

    .line 364
    .line 365
    if-eqz v7, :cond_1b

    .line 366
    .line 367
    goto :goto_10

    .line 368
    :cond_1b
    invoke-virtual {v6, p1, v0}, Lf0/d;->b(Ld0/c;Z)V

    .line 369
    .line 370
    .line 371
    :cond_1c
    :goto_10
    add-int/lit8 v4, v4, 0x1

    .line 372
    .line 373
    goto :goto_f

    .line 374
    :cond_1d
    iget v0, p0, Lf0/e;->z0:I

    .line 375
    .line 376
    const/4 v1, 0x0

    .line 377
    if-lez v0, :cond_1e

    .line 378
    .line 379
    invoke-static {p0, p1, v1, v2}, Lf0/j;->a(Lf0/e;Ld0/c;Ljava/util/ArrayList;I)V

    .line 380
    .line 381
    .line 382
    :cond_1e
    iget v0, p0, Lf0/e;->A0:I

    .line 383
    .line 384
    if-lez v0, :cond_1f

    .line 385
    .line 386
    invoke-static {p0, p1, v1, v5}, Lf0/j;->a(Lf0/e;Ld0/c;Ljava/util/ArrayList;I)V

    .line 387
    .line 388
    .line 389
    :cond_1f
    return-void
.end method

.method public final T(IZ)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lf0/e;->s0:Lg0/e;

    .line 2
    .line 3
    iget-object v1, v0, Lg0/e;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lf0/e;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Lf0/d;->j(I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x1

    .line 13
    invoke-virtual {v1, v4}, Lf0/d;->j(I)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    invoke-virtual {v1}, Lf0/d;->r()I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    invoke-virtual {v1}, Lf0/d;->s()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    iget-object v8, v0, Lg0/e;->e:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v8, Ljava/util/ArrayList;

    .line 28
    .line 29
    if-eqz p2, :cond_4

    .line 30
    .line 31
    const/4 v9, 0x2

    .line 32
    if-eq v3, v9, :cond_0

    .line 33
    .line 34
    if-ne v5, v9, :cond_4

    .line 35
    .line 36
    :cond_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v11

    .line 44
    if-eqz v11, :cond_2

    .line 45
    .line 46
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    check-cast v11, Lg0/o;

    .line 51
    .line 52
    iget v12, v11, Lg0/o;->f:I

    .line 53
    .line 54
    if-ne v12, p1, :cond_1

    .line 55
    .line 56
    invoke-virtual {v11}, Lg0/o;->k()Z

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    if-nez v11, :cond_1

    .line 61
    .line 62
    const/4 p2, 0x0

    .line 63
    :cond_2
    if-nez p1, :cond_3

    .line 64
    .line 65
    if-eqz p2, :cond_4

    .line 66
    .line 67
    if-ne v3, v9, :cond_4

    .line 68
    .line 69
    invoke-virtual {v1, v4}, Lf0/d;->M(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Lg0/e;->e(Lf0/e;I)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    invoke-virtual {v1, p2}, Lf0/d;->O(I)V

    .line 77
    .line 78
    .line 79
    iget-object p2, v1, Lf0/d;->d:Lg0/k;

    .line 80
    .line 81
    iget-object p2, p2, Lg0/o;->e:Lg0/g;

    .line 82
    .line 83
    invoke-virtual {v1}, Lf0/d;->q()I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    invoke-virtual {p2, v9}, Lg0/g;->d(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    if-eqz p2, :cond_4

    .line 92
    .line 93
    if-ne v5, v9, :cond_4

    .line 94
    .line 95
    invoke-virtual {v1, v4}, Lf0/d;->N(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v4}, Lg0/e;->e(Lf0/e;I)I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    invoke-virtual {v1, p2}, Lf0/d;->L(I)V

    .line 103
    .line 104
    .line 105
    iget-object p2, v1, Lf0/d;->e:Lg0/m;

    .line 106
    .line 107
    iget-object p2, p2, Lg0/o;->e:Lg0/g;

    .line 108
    .line 109
    invoke-virtual {v1}, Lf0/d;->k()I

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    invoke-virtual {p2, v9}, Lg0/g;->d(I)V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_0
    iget-object p2, v1, Lf0/d;->p0:[I

    .line 117
    .line 118
    const/4 v9, 0x4

    .line 119
    if-nez p1, :cond_6

    .line 120
    .line 121
    aget p2, p2, v2

    .line 122
    .line 123
    if-eq p2, v4, :cond_5

    .line 124
    .line 125
    if-ne p2, v9, :cond_7

    .line 126
    .line 127
    :cond_5
    invoke-virtual {v1}, Lf0/d;->q()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    add-int/2addr p2, v6

    .line 132
    iget-object v7, v1, Lf0/d;->d:Lg0/k;

    .line 133
    .line 134
    iget-object v7, v7, Lg0/o;->i:Lg0/f;

    .line 135
    .line 136
    invoke-virtual {v7, p2}, Lg0/f;->d(I)V

    .line 137
    .line 138
    .line 139
    iget-object v7, v1, Lf0/d;->d:Lg0/k;

    .line 140
    .line 141
    iget-object v7, v7, Lg0/o;->e:Lg0/g;

    .line 142
    .line 143
    sub-int/2addr p2, v6

    .line 144
    invoke-virtual {v7, p2}, Lg0/g;->d(I)V

    .line 145
    .line 146
    .line 147
    :goto_1
    const/4 p2, 0x1

    .line 148
    goto :goto_3

    .line 149
    :cond_6
    aget p2, p2, v4

    .line 150
    .line 151
    if-eq p2, v4, :cond_8

    .line 152
    .line 153
    if-ne p2, v9, :cond_7

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_7
    const/4 p2, 0x0

    .line 157
    goto :goto_3

    .line 158
    :cond_8
    :goto_2
    invoke-virtual {v1}, Lf0/d;->k()I

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    add-int/2addr p2, v7

    .line 163
    iget-object v6, v1, Lf0/d;->e:Lg0/m;

    .line 164
    .line 165
    iget-object v6, v6, Lg0/o;->i:Lg0/f;

    .line 166
    .line 167
    invoke-virtual {v6, p2}, Lg0/f;->d(I)V

    .line 168
    .line 169
    .line 170
    iget-object v6, v1, Lf0/d;->e:Lg0/m;

    .line 171
    .line 172
    iget-object v6, v6, Lg0/o;->e:Lg0/g;

    .line 173
    .line 174
    sub-int/2addr p2, v7

    .line 175
    invoke-virtual {v6, p2}, Lg0/g;->d(I)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :goto_3
    invoke-virtual {v0}, Lg0/e;->j()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-eqz v6, :cond_b

    .line 191
    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    check-cast v6, Lg0/o;

    .line 197
    .line 198
    iget v7, v6, Lg0/o;->f:I

    .line 199
    .line 200
    if-eq v7, p1, :cond_9

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_9
    iget-object v7, v6, Lg0/o;->b:Lf0/d;

    .line 204
    .line 205
    if-ne v7, v1, :cond_a

    .line 206
    .line 207
    iget-boolean v7, v6, Lg0/o;->g:Z

    .line 208
    .line 209
    if-nez v7, :cond_a

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_a
    invoke-virtual {v6}, Lg0/o;->e()V

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_b
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    :cond_c
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-eqz v6, :cond_11

    .line 225
    .line 226
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    check-cast v6, Lg0/o;

    .line 231
    .line 232
    iget v7, v6, Lg0/o;->f:I

    .line 233
    .line 234
    if-eq v7, p1, :cond_d

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_d
    if-nez p2, :cond_e

    .line 238
    .line 239
    iget-object v7, v6, Lg0/o;->b:Lf0/d;

    .line 240
    .line 241
    if-ne v7, v1, :cond_e

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_e
    iget-object v7, v6, Lg0/o;->h:Lg0/f;

    .line 245
    .line 246
    iget-boolean v7, v7, Lg0/f;->j:Z

    .line 247
    .line 248
    if-nez v7, :cond_f

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_f
    iget-object v7, v6, Lg0/o;->i:Lg0/f;

    .line 252
    .line 253
    iget-boolean v7, v7, Lg0/f;->j:Z

    .line 254
    .line 255
    if-nez v7, :cond_10

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_10
    instance-of v7, v6, Lg0/c;

    .line 259
    .line 260
    if-nez v7, :cond_c

    .line 261
    .line 262
    iget-object v6, v6, Lg0/o;->e:Lg0/g;

    .line 263
    .line 264
    iget-boolean v6, v6, Lg0/f;->j:Z

    .line 265
    .line 266
    if-nez v6, :cond_c

    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_11
    const/4 v2, 0x1

    .line 270
    :goto_6
    invoke-virtual {v1, v3}, Lf0/d;->M(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v5}, Lf0/d;->N(I)V

    .line 274
    .line 275
    .line 276
    return v2
.end method

.method public final U()V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    iput v2, v1, Lf0/d;->Y:I

    .line 5
    .line 6
    iput v2, v1, Lf0/d;->Z:I

    .line 7
    .line 8
    iput-boolean v2, v1, Lf0/e;->E0:Z

    .line 9
    .line 10
    iput-boolean v2, v1, Lf0/e;->F0:Z

    .line 11
    .line 12
    iget-object v0, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual/range {p0 .. p0}, Lf0/d;->q()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual/range {p0 .. p0}, Lf0/d;->k()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    iget-object v5, v1, Lf0/d;->p0:[I

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    aget v7, v5, v6

    .line 38
    .line 39
    aget v8, v5, v2

    .line 40
    .line 41
    iget v9, v1, Lf0/e;->t0:I

    .line 42
    .line 43
    iget-object v10, v1, Lf0/d;->J:Lf0/c;

    .line 44
    .line 45
    iget-object v11, v1, Lf0/d;->I:Lf0/c;

    .line 46
    .line 47
    if-nez v9, :cond_1d

    .line 48
    .line 49
    iget v9, v1, Lf0/e;->D0:I

    .line 50
    .line 51
    invoke-static {v9, v6}, Lf0/j;->c(II)Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_1d

    .line 56
    .line 57
    iget-object v9, v1, Lf0/e;->u0:Li0/f;

    .line 58
    .line 59
    aget v14, v5, v2

    .line 60
    .line 61
    aget v15, v5, v6

    .line 62
    .line 63
    invoke-virtual/range {p0 .. p0}, Lf0/d;->E()V

    .line 64
    .line 65
    .line 66
    iget-object v12, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v13

    .line 72
    :goto_0
    if-ge v2, v13, :cond_0

    .line 73
    .line 74
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v17

    .line 78
    check-cast v17, Lf0/d;

    .line 79
    .line 80
    invoke-virtual/range {v17 .. v17}, Lf0/d;->E()V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    iget-boolean v2, v1, Lf0/e;->v0:Z

    .line 87
    .line 88
    if-ne v14, v6, :cond_1

    .line 89
    .line 90
    invoke-virtual/range {p0 .. p0}, Lf0/d;->q()I

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    const/4 v6, 0x0

    .line 95
    invoke-virtual {v1, v6, v14}, Lf0/d;->J(II)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    const/4 v6, 0x0

    .line 100
    invoke-virtual {v11, v6}, Lf0/c;->l(I)V

    .line 101
    .line 102
    .line 103
    iput v6, v1, Lf0/d;->Y:I

    .line 104
    .line 105
    :goto_1
    const/4 v6, 0x0

    .line 106
    const/4 v14, 0x0

    .line 107
    const/16 v18, 0x0

    .line 108
    .line 109
    :goto_2
    const/high16 v19, 0x3f000000    # 0.5f

    .line 110
    .line 111
    if-ge v6, v13, :cond_7

    .line 112
    .line 113
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v20

    .line 117
    move-object/from16 v21, v11

    .line 118
    .line 119
    move-object/from16 v11, v20

    .line 120
    .line 121
    check-cast v11, Lf0/d;

    .line 122
    .line 123
    move/from16 v20, v4

    .line 124
    .line 125
    instance-of v4, v11, Lf0/h;

    .line 126
    .line 127
    if-eqz v4, :cond_5

    .line 128
    .line 129
    check-cast v11, Lf0/h;

    .line 130
    .line 131
    iget v4, v11, Lf0/h;->u0:I

    .line 132
    .line 133
    move-object/from16 v22, v5

    .line 134
    .line 135
    const/4 v5, 0x1

    .line 136
    if-ne v4, v5, :cond_6

    .line 137
    .line 138
    iget v4, v11, Lf0/h;->r0:I

    .line 139
    .line 140
    const/4 v5, -0x1

    .line 141
    if-eq v4, v5, :cond_2

    .line 142
    .line 143
    invoke-virtual {v11, v4}, Lf0/h;->R(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_2
    iget v4, v11, Lf0/h;->s0:I

    .line 148
    .line 149
    if-eq v4, v5, :cond_3

    .line 150
    .line 151
    invoke-virtual/range {p0 .. p0}, Lf0/d;->A()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_3

    .line 156
    .line 157
    invoke-virtual/range {p0 .. p0}, Lf0/d;->q()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    iget v5, v11, Lf0/h;->s0:I

    .line 162
    .line 163
    sub-int/2addr v4, v5

    .line 164
    invoke-virtual {v11, v4}, Lf0/h;->R(I)V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lf0/d;->A()Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-eqz v4, :cond_4

    .line 173
    .line 174
    iget v4, v11, Lf0/h;->q0:F

    .line 175
    .line 176
    invoke-virtual/range {p0 .. p0}, Lf0/d;->q()I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    int-to-float v5, v5

    .line 181
    mul-float v4, v4, v5

    .line 182
    .line 183
    add-float v4, v4, v19

    .line 184
    .line 185
    float-to-int v4, v4

    .line 186
    invoke-virtual {v11, v4}, Lf0/h;->R(I)V

    .line 187
    .line 188
    .line 189
    :cond_4
    :goto_3
    const/4 v14, 0x1

    .line 190
    goto :goto_4

    .line 191
    :cond_5
    move-object/from16 v22, v5

    .line 192
    .line 193
    instance-of v4, v11, Lf0/a;

    .line 194
    .line 195
    if-eqz v4, :cond_6

    .line 196
    .line 197
    check-cast v11, Lf0/a;

    .line 198
    .line 199
    invoke-virtual {v11}, Lf0/a;->U()I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-nez v4, :cond_6

    .line 204
    .line 205
    const/16 v18, 0x1

    .line 206
    .line 207
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 208
    .line 209
    move/from16 v4, v20

    .line 210
    .line 211
    move-object/from16 v11, v21

    .line 212
    .line 213
    move-object/from16 v5, v22

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_7
    move/from16 v20, v4

    .line 217
    .line 218
    move-object/from16 v22, v5

    .line 219
    .line 220
    move-object/from16 v21, v11

    .line 221
    .line 222
    if-eqz v14, :cond_9

    .line 223
    .line 224
    const/4 v4, 0x0

    .line 225
    :goto_5
    if-ge v4, v13, :cond_9

    .line 226
    .line 227
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    check-cast v5, Lf0/d;

    .line 232
    .line 233
    instance-of v6, v5, Lf0/h;

    .line 234
    .line 235
    if-eqz v6, :cond_8

    .line 236
    .line 237
    check-cast v5, Lf0/h;

    .line 238
    .line 239
    iget v6, v5, Lf0/h;->u0:I

    .line 240
    .line 241
    const/4 v11, 0x1

    .line 242
    if-ne v6, v11, :cond_8

    .line 243
    .line 244
    const/4 v6, 0x0

    .line 245
    invoke-static {v6, v5, v9, v2}, Lg0/h;->c(ILf0/d;Li0/f;Z)V

    .line 246
    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_8
    const/4 v6, 0x0

    .line 250
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_9
    const/4 v6, 0x0

    .line 254
    invoke-static {v6, v1, v9, v2}, Lg0/h;->c(ILf0/d;Li0/f;Z)V

    .line 255
    .line 256
    .line 257
    if-eqz v18, :cond_b

    .line 258
    .line 259
    const/4 v4, 0x0

    .line 260
    :goto_7
    if-ge v4, v13, :cond_b

    .line 261
    .line 262
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    check-cast v5, Lf0/d;

    .line 267
    .line 268
    instance-of v6, v5, Lf0/a;

    .line 269
    .line 270
    if-eqz v6, :cond_a

    .line 271
    .line 272
    check-cast v5, Lf0/a;

    .line 273
    .line 274
    invoke-virtual {v5}, Lf0/a;->U()I

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    if-nez v6, :cond_a

    .line 279
    .line 280
    invoke-virtual {v5}, Lf0/a;->T()Z

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    if-eqz v6, :cond_a

    .line 285
    .line 286
    const/4 v6, 0x1

    .line 287
    invoke-static {v6, v5, v9, v2}, Lg0/h;->c(ILf0/d;Li0/f;Z)V

    .line 288
    .line 289
    .line 290
    goto :goto_8

    .line 291
    :cond_a
    const/4 v6, 0x1

    .line 292
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 293
    .line 294
    goto :goto_7

    .line 295
    :cond_b
    const/4 v6, 0x1

    .line 296
    if-ne v15, v6, :cond_c

    .line 297
    .line 298
    invoke-virtual/range {p0 .. p0}, Lf0/d;->k()I

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    const/4 v5, 0x0

    .line 303
    invoke-virtual {v1, v5, v4}, Lf0/d;->K(II)V

    .line 304
    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_c
    const/4 v5, 0x0

    .line 308
    invoke-virtual {v10, v5}, Lf0/c;->l(I)V

    .line 309
    .line 310
    .line 311
    iput v5, v1, Lf0/d;->Z:I

    .line 312
    .line 313
    :goto_9
    const/4 v4, 0x0

    .line 314
    const/4 v5, 0x0

    .line 315
    const/4 v6, 0x0

    .line 316
    :goto_a
    if-ge v4, v13, :cond_12

    .line 317
    .line 318
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v11

    .line 322
    check-cast v11, Lf0/d;

    .line 323
    .line 324
    instance-of v14, v11, Lf0/h;

    .line 325
    .line 326
    if-eqz v14, :cond_10

    .line 327
    .line 328
    check-cast v11, Lf0/h;

    .line 329
    .line 330
    iget v14, v11, Lf0/h;->u0:I

    .line 331
    .line 332
    if-nez v14, :cond_11

    .line 333
    .line 334
    iget v5, v11, Lf0/h;->r0:I

    .line 335
    .line 336
    const/4 v14, -0x1

    .line 337
    if-eq v5, v14, :cond_d

    .line 338
    .line 339
    invoke-virtual {v11, v5}, Lf0/h;->R(I)V

    .line 340
    .line 341
    .line 342
    goto :goto_b

    .line 343
    :cond_d
    iget v5, v11, Lf0/h;->s0:I

    .line 344
    .line 345
    if-eq v5, v14, :cond_e

    .line 346
    .line 347
    invoke-virtual/range {p0 .. p0}, Lf0/d;->B()Z

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    if-eqz v5, :cond_e

    .line 352
    .line 353
    invoke-virtual/range {p0 .. p0}, Lf0/d;->k()I

    .line 354
    .line 355
    .line 356
    move-result v5

    .line 357
    iget v14, v11, Lf0/h;->s0:I

    .line 358
    .line 359
    sub-int/2addr v5, v14

    .line 360
    invoke-virtual {v11, v5}, Lf0/h;->R(I)V

    .line 361
    .line 362
    .line 363
    goto :goto_b

    .line 364
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lf0/d;->B()Z

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    if-eqz v5, :cond_f

    .line 369
    .line 370
    iget v5, v11, Lf0/h;->q0:F

    .line 371
    .line 372
    invoke-virtual/range {p0 .. p0}, Lf0/d;->k()I

    .line 373
    .line 374
    .line 375
    move-result v14

    .line 376
    int-to-float v14, v14

    .line 377
    mul-float v5, v5, v14

    .line 378
    .line 379
    add-float v5, v5, v19

    .line 380
    .line 381
    float-to-int v5, v5

    .line 382
    invoke-virtual {v11, v5}, Lf0/h;->R(I)V

    .line 383
    .line 384
    .line 385
    :cond_f
    :goto_b
    const/4 v5, 0x1

    .line 386
    goto :goto_c

    .line 387
    :cond_10
    instance-of v14, v11, Lf0/a;

    .line 388
    .line 389
    if-eqz v14, :cond_11

    .line 390
    .line 391
    check-cast v11, Lf0/a;

    .line 392
    .line 393
    invoke-virtual {v11}, Lf0/a;->U()I

    .line 394
    .line 395
    .line 396
    move-result v11

    .line 397
    const/4 v14, 0x1

    .line 398
    if-ne v11, v14, :cond_11

    .line 399
    .line 400
    const/4 v6, 0x1

    .line 401
    :cond_11
    :goto_c
    add-int/lit8 v4, v4, 0x1

    .line 402
    .line 403
    goto :goto_a

    .line 404
    :cond_12
    if-eqz v5, :cond_14

    .line 405
    .line 406
    const/4 v4, 0x0

    .line 407
    :goto_d
    if-ge v4, v13, :cond_14

    .line 408
    .line 409
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    check-cast v5, Lf0/d;

    .line 414
    .line 415
    instance-of v11, v5, Lf0/h;

    .line 416
    .line 417
    if-eqz v11, :cond_13

    .line 418
    .line 419
    check-cast v5, Lf0/h;

    .line 420
    .line 421
    iget v11, v5, Lf0/h;->u0:I

    .line 422
    .line 423
    if-nez v11, :cond_13

    .line 424
    .line 425
    const/4 v11, 0x1

    .line 426
    invoke-static {v11, v5, v9}, Lg0/h;->i(ILf0/d;Li0/f;)V

    .line 427
    .line 428
    .line 429
    :cond_13
    add-int/lit8 v4, v4, 0x1

    .line 430
    .line 431
    goto :goto_d

    .line 432
    :cond_14
    const/4 v4, 0x0

    .line 433
    invoke-static {v4, v1, v9}, Lg0/h;->i(ILf0/d;Li0/f;)V

    .line 434
    .line 435
    .line 436
    if-eqz v6, :cond_16

    .line 437
    .line 438
    const/4 v4, 0x0

    .line 439
    :goto_e
    if-ge v4, v13, :cond_16

    .line 440
    .line 441
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    check-cast v5, Lf0/d;

    .line 446
    .line 447
    instance-of v6, v5, Lf0/a;

    .line 448
    .line 449
    if-eqz v6, :cond_15

    .line 450
    .line 451
    check-cast v5, Lf0/a;

    .line 452
    .line 453
    invoke-virtual {v5}, Lf0/a;->U()I

    .line 454
    .line 455
    .line 456
    move-result v6

    .line 457
    const/4 v11, 0x1

    .line 458
    if-ne v6, v11, :cond_15

    .line 459
    .line 460
    invoke-virtual {v5}, Lf0/a;->T()Z

    .line 461
    .line 462
    .line 463
    move-result v6

    .line 464
    if-eqz v6, :cond_15

    .line 465
    .line 466
    invoke-static {v11, v5, v9}, Lg0/h;->i(ILf0/d;Li0/f;)V

    .line 467
    .line 468
    .line 469
    :cond_15
    add-int/lit8 v4, v4, 0x1

    .line 470
    .line 471
    goto :goto_e

    .line 472
    :cond_16
    const/4 v4, 0x0

    .line 473
    :goto_f
    if-ge v4, v13, :cond_1a

    .line 474
    .line 475
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v5

    .line 479
    check-cast v5, Lf0/d;

    .line 480
    .line 481
    invoke-virtual {v5}, Lf0/d;->z()Z

    .line 482
    .line 483
    .line 484
    move-result v6

    .line 485
    if-eqz v6, :cond_19

    .line 486
    .line 487
    invoke-static {v5}, Lg0/h;->a(Lf0/d;)Z

    .line 488
    .line 489
    .line 490
    move-result v6

    .line 491
    if-eqz v6, :cond_19

    .line 492
    .line 493
    sget-object v6, Lg0/h;->a:Lg0/b;

    .line 494
    .line 495
    invoke-static {v5, v9, v6}, Lf0/e;->V(Lf0/d;Li0/f;Lg0/b;)V

    .line 496
    .line 497
    .line 498
    instance-of v6, v5, Lf0/h;

    .line 499
    .line 500
    if-eqz v6, :cond_18

    .line 501
    .line 502
    move-object v6, v5

    .line 503
    check-cast v6, Lf0/h;

    .line 504
    .line 505
    iget v6, v6, Lf0/h;->u0:I

    .line 506
    .line 507
    if-nez v6, :cond_17

    .line 508
    .line 509
    const/4 v6, 0x0

    .line 510
    invoke-static {v6, v5, v9}, Lg0/h;->i(ILf0/d;Li0/f;)V

    .line 511
    .line 512
    .line 513
    goto :goto_10

    .line 514
    :cond_17
    const/4 v6, 0x0

    .line 515
    invoke-static {v6, v5, v9, v2}, Lg0/h;->c(ILf0/d;Li0/f;Z)V

    .line 516
    .line 517
    .line 518
    goto :goto_10

    .line 519
    :cond_18
    const/4 v6, 0x0

    .line 520
    invoke-static {v6, v5, v9, v2}, Lg0/h;->c(ILf0/d;Li0/f;Z)V

    .line 521
    .line 522
    .line 523
    invoke-static {v6, v5, v9}, Lg0/h;->i(ILf0/d;Li0/f;)V

    .line 524
    .line 525
    .line 526
    :cond_19
    :goto_10
    add-int/lit8 v4, v4, 0x1

    .line 527
    .line 528
    goto :goto_f

    .line 529
    :cond_1a
    const/4 v2, 0x0

    .line 530
    :goto_11
    if-ge v2, v3, :cond_1e

    .line 531
    .line 532
    iget-object v4, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 533
    .line 534
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    check-cast v4, Lf0/d;

    .line 539
    .line 540
    invoke-virtual {v4}, Lf0/d;->z()Z

    .line 541
    .line 542
    .line 543
    move-result v5

    .line 544
    if-eqz v5, :cond_1c

    .line 545
    .line 546
    instance-of v5, v4, Lf0/h;

    .line 547
    .line 548
    if-nez v5, :cond_1c

    .line 549
    .line 550
    instance-of v5, v4, Lf0/a;

    .line 551
    .line 552
    if-nez v5, :cond_1c

    .line 553
    .line 554
    instance-of v5, v4, Lf0/g;

    .line 555
    .line 556
    if-nez v5, :cond_1c

    .line 557
    .line 558
    iget-boolean v5, v4, Lf0/d;->F:Z

    .line 559
    .line 560
    if-nez v5, :cond_1c

    .line 561
    .line 562
    const/4 v5, 0x0

    .line 563
    invoke-virtual {v4, v5}, Lf0/d;->j(I)I

    .line 564
    .line 565
    .line 566
    move-result v6

    .line 567
    const/4 v5, 0x1

    .line 568
    invoke-virtual {v4, v5}, Lf0/d;->j(I)I

    .line 569
    .line 570
    .line 571
    move-result v9

    .line 572
    const/4 v11, 0x3

    .line 573
    if-ne v6, v11, :cond_1b

    .line 574
    .line 575
    iget v6, v4, Lf0/d;->r:I

    .line 576
    .line 577
    if-eq v6, v5, :cond_1b

    .line 578
    .line 579
    if-ne v9, v11, :cond_1b

    .line 580
    .line 581
    iget v6, v4, Lf0/d;->s:I

    .line 582
    .line 583
    if-eq v6, v5, :cond_1b

    .line 584
    .line 585
    goto :goto_12

    .line 586
    :cond_1b
    new-instance v5, Lg0/b;

    .line 587
    .line 588
    invoke-direct {v5}, Lg0/b;-><init>()V

    .line 589
    .line 590
    .line 591
    iget-object v6, v1, Lf0/e;->u0:Li0/f;

    .line 592
    .line 593
    invoke-static {v4, v6, v5}, Lf0/e;->V(Lf0/d;Li0/f;Lg0/b;)V

    .line 594
    .line 595
    .line 596
    :cond_1c
    :goto_12
    add-int/lit8 v2, v2, 0x1

    .line 597
    .line 598
    goto :goto_11

    .line 599
    :cond_1d
    move/from16 v20, v4

    .line 600
    .line 601
    move-object/from16 v22, v5

    .line 602
    .line 603
    move-object/from16 v21, v11

    .line 604
    .line 605
    :cond_1e
    iget-object v2, v1, Lf0/e;->w0:Ld0/c;

    .line 606
    .line 607
    const/4 v5, 0x2

    .line 608
    if-le v3, v5, :cond_1f

    .line 609
    .line 610
    if-eq v8, v5, :cond_20

    .line 611
    .line 612
    if-ne v7, v5, :cond_1f

    .line 613
    .line 614
    goto :goto_13

    .line 615
    :cond_1f
    move/from16 v25, v3

    .line 616
    .line 617
    move v4, v7

    .line 618
    move-object/from16 v23, v10

    .line 619
    .line 620
    move/from16 v5, v20

    .line 621
    .line 622
    move v3, v0

    .line 623
    move/from16 v29, v8

    .line 624
    .line 625
    move-object v8, v2

    .line 626
    move/from16 v2, v29

    .line 627
    .line 628
    goto/16 :goto_35

    .line 629
    .line 630
    :cond_20
    :goto_13
    iget v9, v1, Lf0/e;->D0:I

    .line 631
    .line 632
    const/16 v11, 0x400

    .line 633
    .line 634
    invoke-static {v9, v11}, Lf0/j;->c(II)Z

    .line 635
    .line 636
    .line 637
    move-result v9

    .line 638
    if-eqz v9, :cond_1f

    .line 639
    .line 640
    iget-object v9, v1, Lf0/e;->u0:Li0/f;

    .line 641
    .line 642
    iget-object v11, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 643
    .line 644
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 645
    .line 646
    .line 647
    move-result v12

    .line 648
    const/4 v13, 0x0

    .line 649
    :goto_14
    if-ge v13, v12, :cond_23

    .line 650
    .line 651
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v14

    .line 655
    check-cast v14, Lf0/d;

    .line 656
    .line 657
    const/4 v15, 0x0

    .line 658
    aget v6, v22, v15

    .line 659
    .line 660
    const/16 v17, 0x1

    .line 661
    .line 662
    aget v5, v22, v17

    .line 663
    .line 664
    iget-object v4, v14, Lf0/d;->p0:[I

    .line 665
    .line 666
    move-object/from16 v23, v10

    .line 667
    .line 668
    aget v10, v4, v15

    .line 669
    .line 670
    aget v4, v4, v17

    .line 671
    .line 672
    invoke-static {v6, v5, v10, v4}, Lg0/h;->h(IIII)Z

    .line 673
    .line 674
    .line 675
    move-result v4

    .line 676
    if-nez v4, :cond_21

    .line 677
    .line 678
    :goto_15
    move/from16 v26, v0

    .line 679
    .line 680
    move/from16 v25, v3

    .line 681
    .line 682
    move/from16 v24, v7

    .line 683
    .line 684
    move/from16 v27, v8

    .line 685
    .line 686
    move-object v8, v2

    .line 687
    goto/16 :goto_2e

    .line 688
    .line 689
    :cond_21
    instance-of v4, v14, Lf0/g;

    .line 690
    .line 691
    if-eqz v4, :cond_22

    .line 692
    .line 693
    goto :goto_15

    .line 694
    :cond_22
    add-int/lit8 v13, v13, 0x1

    .line 695
    .line 696
    move-object/from16 v10, v23

    .line 697
    .line 698
    const/4 v5, 0x2

    .line 699
    goto :goto_14

    .line 700
    :cond_23
    move-object/from16 v23, v10

    .line 701
    .line 702
    const/4 v4, 0x0

    .line 703
    const/4 v5, 0x0

    .line 704
    const/4 v6, 0x0

    .line 705
    const/4 v10, 0x0

    .line 706
    const/4 v13, 0x0

    .line 707
    const/4 v14, 0x0

    .line 708
    const/4 v15, 0x0

    .line 709
    :goto_16
    if-ge v4, v12, :cond_34

    .line 710
    .line 711
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v24

    .line 715
    move/from16 v25, v3

    .line 716
    .line 717
    move-object/from16 v3, v24

    .line 718
    .line 719
    check-cast v3, Lf0/d;

    .line 720
    .line 721
    move/from16 v24, v7

    .line 722
    .line 723
    const/16 v16, 0x0

    .line 724
    .line 725
    aget v7, v22, v16

    .line 726
    .line 727
    move/from16 v26, v0

    .line 728
    .line 729
    const/16 v17, 0x1

    .line 730
    .line 731
    aget v0, v22, v17

    .line 732
    .line 733
    move/from16 v27, v8

    .line 734
    .line 735
    iget-object v8, v3, Lf0/d;->p0:[I

    .line 736
    .line 737
    move-object/from16 v28, v2

    .line 738
    .line 739
    aget v2, v8, v16

    .line 740
    .line 741
    aget v8, v8, v17

    .line 742
    .line 743
    invoke-static {v7, v0, v2, v8}, Lg0/h;->h(IIII)Z

    .line 744
    .line 745
    .line 746
    move-result v0

    .line 747
    if-nez v0, :cond_24

    .line 748
    .line 749
    iget-object v0, v1, Lf0/e;->L0:Lg0/b;

    .line 750
    .line 751
    invoke-static {v3, v9, v0}, Lf0/e;->V(Lf0/d;Li0/f;Lg0/b;)V

    .line 752
    .line 753
    .line 754
    :cond_24
    instance-of v0, v3, Lf0/h;

    .line 755
    .line 756
    if-eqz v0, :cond_28

    .line 757
    .line 758
    move-object v2, v3

    .line 759
    check-cast v2, Lf0/h;

    .line 760
    .line 761
    iget v7, v2, Lf0/h;->u0:I

    .line 762
    .line 763
    if-nez v7, :cond_26

    .line 764
    .line 765
    if-nez v10, :cond_25

    .line 766
    .line 767
    new-instance v10, Ljava/util/ArrayList;

    .line 768
    .line 769
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .line 771
    .line 772
    :cond_25
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    :cond_26
    iget v7, v2, Lf0/h;->u0:I

    .line 776
    .line 777
    const/4 v8, 0x1

    .line 778
    if-ne v7, v8, :cond_28

    .line 779
    .line 780
    if-nez v5, :cond_27

    .line 781
    .line 782
    new-instance v5, Ljava/util/ArrayList;

    .line 783
    .line 784
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .line 786
    .line 787
    :cond_27
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    :cond_28
    instance-of v2, v3, Lf0/i;

    .line 791
    .line 792
    if-eqz v2, :cond_2f

    .line 793
    .line 794
    instance-of v2, v3, Lf0/a;

    .line 795
    .line 796
    if-eqz v2, :cond_2c

    .line 797
    .line 798
    move-object v2, v3

    .line 799
    check-cast v2, Lf0/a;

    .line 800
    .line 801
    invoke-virtual {v2}, Lf0/a;->U()I

    .line 802
    .line 803
    .line 804
    move-result v7

    .line 805
    if-nez v7, :cond_2a

    .line 806
    .line 807
    if-nez v6, :cond_29

    .line 808
    .line 809
    new-instance v6, Ljava/util/ArrayList;

    .line 810
    .line 811
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .line 813
    .line 814
    :cond_29
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    :cond_2a
    invoke-virtual {v2}, Lf0/a;->U()I

    .line 818
    .line 819
    .line 820
    move-result v7

    .line 821
    const/4 v8, 0x1

    .line 822
    if-ne v7, v8, :cond_2f

    .line 823
    .line 824
    if-nez v13, :cond_2b

    .line 825
    .line 826
    new-instance v13, Ljava/util/ArrayList;

    .line 827
    .line 828
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .line 830
    .line 831
    :cond_2b
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    .line 833
    .line 834
    goto :goto_17

    .line 835
    :cond_2c
    move-object v2, v3

    .line 836
    check-cast v2, Lf0/i;

    .line 837
    .line 838
    if-nez v6, :cond_2d

    .line 839
    .line 840
    new-instance v6, Ljava/util/ArrayList;

    .line 841
    .line 842
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .line 844
    .line 845
    :cond_2d
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    .line 847
    .line 848
    if-nez v13, :cond_2e

    .line 849
    .line 850
    new-instance v13, Ljava/util/ArrayList;

    .line 851
    .line 852
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 853
    .line 854
    .line 855
    :cond_2e
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    :cond_2f
    :goto_17
    iget-object v2, v3, Lf0/d;->I:Lf0/c;

    .line 859
    .line 860
    iget-object v2, v2, Lf0/c;->f:Lf0/c;

    .line 861
    .line 862
    if-nez v2, :cond_31

    .line 863
    .line 864
    iget-object v2, v3, Lf0/d;->K:Lf0/c;

    .line 865
    .line 866
    iget-object v2, v2, Lf0/c;->f:Lf0/c;

    .line 867
    .line 868
    if-nez v2, :cond_31

    .line 869
    .line 870
    if-nez v0, :cond_31

    .line 871
    .line 872
    instance-of v2, v3, Lf0/a;

    .line 873
    .line 874
    if-nez v2, :cond_31

    .line 875
    .line 876
    if-nez v14, :cond_30

    .line 877
    .line 878
    new-instance v14, Ljava/util/ArrayList;

    .line 879
    .line 880
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .line 882
    .line 883
    :cond_30
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    .line 885
    .line 886
    :cond_31
    iget-object v2, v3, Lf0/d;->J:Lf0/c;

    .line 887
    .line 888
    iget-object v2, v2, Lf0/c;->f:Lf0/c;

    .line 889
    .line 890
    if-nez v2, :cond_33

    .line 891
    .line 892
    iget-object v2, v3, Lf0/d;->L:Lf0/c;

    .line 893
    .line 894
    iget-object v2, v2, Lf0/c;->f:Lf0/c;

    .line 895
    .line 896
    if-nez v2, :cond_33

    .line 897
    .line 898
    iget-object v2, v3, Lf0/d;->M:Lf0/c;

    .line 899
    .line 900
    iget-object v2, v2, Lf0/c;->f:Lf0/c;

    .line 901
    .line 902
    if-nez v2, :cond_33

    .line 903
    .line 904
    if-nez v0, :cond_33

    .line 905
    .line 906
    instance-of v0, v3, Lf0/a;

    .line 907
    .line 908
    if-nez v0, :cond_33

    .line 909
    .line 910
    if-nez v15, :cond_32

    .line 911
    .line 912
    new-instance v15, Ljava/util/ArrayList;

    .line 913
    .line 914
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .line 916
    .line 917
    :cond_32
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    .line 919
    .line 920
    :cond_33
    add-int/lit8 v4, v4, 0x1

    .line 921
    .line 922
    move/from16 v7, v24

    .line 923
    .line 924
    move/from16 v3, v25

    .line 925
    .line 926
    move/from16 v0, v26

    .line 927
    .line 928
    move/from16 v8, v27

    .line 929
    .line 930
    move-object/from16 v2, v28

    .line 931
    .line 932
    goto/16 :goto_16

    .line 933
    .line 934
    :cond_34
    move/from16 v26, v0

    .line 935
    .line 936
    move-object/from16 v28, v2

    .line 937
    .line 938
    move/from16 v25, v3

    .line 939
    .line 940
    move/from16 v24, v7

    .line 941
    .line 942
    move/from16 v27, v8

    .line 943
    .line 944
    new-instance v0, Ljava/util/ArrayList;

    .line 945
    .line 946
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 947
    .line 948
    .line 949
    if-eqz v5, :cond_35

    .line 950
    .line 951
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 952
    .line 953
    .line 954
    move-result-object v2

    .line 955
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 956
    .line 957
    .line 958
    move-result v3

    .line 959
    if-eqz v3, :cond_35

    .line 960
    .line 961
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v3

    .line 965
    check-cast v3, Lf0/h;

    .line 966
    .line 967
    const/4 v4, 0x0

    .line 968
    const/4 v5, 0x0

    .line 969
    invoke-static {v3, v4, v0, v5}, Lg0/h;->b(Lf0/d;ILjava/util/ArrayList;Lg0/n;)Lg0/n;

    .line 970
    .line 971
    .line 972
    goto :goto_18

    .line 973
    :cond_35
    const/4 v4, 0x0

    .line 974
    const/4 v5, 0x0

    .line 975
    if-eqz v6, :cond_36

    .line 976
    .line 977
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 978
    .line 979
    .line 980
    move-result-object v2

    .line 981
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 982
    .line 983
    .line 984
    move-result v3

    .line 985
    if-eqz v3, :cond_36

    .line 986
    .line 987
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 988
    .line 989
    .line 990
    move-result-object v3

    .line 991
    check-cast v3, Lf0/i;

    .line 992
    .line 993
    invoke-static {v3, v4, v0, v5}, Lg0/h;->b(Lf0/d;ILjava/util/ArrayList;Lg0/n;)Lg0/n;

    .line 994
    .line 995
    .line 996
    move-result-object v6

    .line 997
    invoke-virtual {v3, v4, v6, v0}, Lf0/i;->R(ILg0/n;Ljava/util/ArrayList;)V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v6, v0}, Lg0/n;->a(Ljava/util/ArrayList;)V

    .line 1001
    .line 1002
    .line 1003
    const/4 v4, 0x0

    .line 1004
    const/4 v5, 0x0

    .line 1005
    goto :goto_19

    .line 1006
    :cond_36
    const/4 v2, 0x2

    .line 1007
    invoke-virtual {v1, v2}, Lf0/d;->i(I)Lf0/c;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v3

    .line 1011
    iget-object v2, v3, Lf0/c;->a:Ljava/util/HashSet;

    .line 1012
    .line 1013
    if-eqz v2, :cond_37

    .line 1014
    .line 1015
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v2

    .line 1019
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1020
    .line 1021
    .line 1022
    move-result v3

    .line 1023
    if-eqz v3, :cond_37

    .line 1024
    .line 1025
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v3

    .line 1029
    check-cast v3, Lf0/c;

    .line 1030
    .line 1031
    iget-object v3, v3, Lf0/c;->d:Lf0/d;

    .line 1032
    .line 1033
    const/4 v4, 0x0

    .line 1034
    const/4 v5, 0x0

    .line 1035
    invoke-static {v3, v4, v0, v5}, Lg0/h;->b(Lf0/d;ILjava/util/ArrayList;Lg0/n;)Lg0/n;

    .line 1036
    .line 1037
    .line 1038
    goto :goto_1a

    .line 1039
    :cond_37
    const/4 v2, 0x4

    .line 1040
    invoke-virtual {v1, v2}, Lf0/d;->i(I)Lf0/c;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v2

    .line 1044
    iget-object v2, v2, Lf0/c;->a:Ljava/util/HashSet;

    .line 1045
    .line 1046
    if-eqz v2, :cond_38

    .line 1047
    .line 1048
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v2

    .line 1052
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1053
    .line 1054
    .line 1055
    move-result v3

    .line 1056
    if-eqz v3, :cond_38

    .line 1057
    .line 1058
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v3

    .line 1062
    check-cast v3, Lf0/c;

    .line 1063
    .line 1064
    iget-object v3, v3, Lf0/c;->d:Lf0/d;

    .line 1065
    .line 1066
    const/4 v4, 0x0

    .line 1067
    const/4 v5, 0x0

    .line 1068
    invoke-static {v3, v4, v0, v5}, Lg0/h;->b(Lf0/d;ILjava/util/ArrayList;Lg0/n;)Lg0/n;

    .line 1069
    .line 1070
    .line 1071
    goto :goto_1b

    .line 1072
    :cond_38
    const/4 v2, 0x7

    .line 1073
    invoke-virtual {v1, v2}, Lf0/d;->i(I)Lf0/c;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v3

    .line 1077
    iget-object v3, v3, Lf0/c;->a:Ljava/util/HashSet;

    .line 1078
    .line 1079
    if-eqz v3, :cond_39

    .line 1080
    .line 1081
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v3

    .line 1085
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1086
    .line 1087
    .line 1088
    move-result v4

    .line 1089
    if-eqz v4, :cond_39

    .line 1090
    .line 1091
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v4

    .line 1095
    check-cast v4, Lf0/c;

    .line 1096
    .line 1097
    iget-object v4, v4, Lf0/c;->d:Lf0/d;

    .line 1098
    .line 1099
    const/4 v5, 0x0

    .line 1100
    const/4 v6, 0x0

    .line 1101
    invoke-static {v4, v5, v0, v6}, Lg0/h;->b(Lf0/d;ILjava/util/ArrayList;Lg0/n;)Lg0/n;

    .line 1102
    .line 1103
    .line 1104
    goto :goto_1c

    .line 1105
    :cond_39
    const/4 v5, 0x0

    .line 1106
    const/4 v6, 0x0

    .line 1107
    if-eqz v14, :cond_3a

    .line 1108
    .line 1109
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v3

    .line 1113
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1114
    .line 1115
    .line 1116
    move-result v4

    .line 1117
    if-eqz v4, :cond_3a

    .line 1118
    .line 1119
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v4

    .line 1123
    check-cast v4, Lf0/d;

    .line 1124
    .line 1125
    invoke-static {v4, v5, v0, v6}, Lg0/h;->b(Lf0/d;ILjava/util/ArrayList;Lg0/n;)Lg0/n;

    .line 1126
    .line 1127
    .line 1128
    goto :goto_1d

    .line 1129
    :cond_3a
    if-eqz v10, :cond_3b

    .line 1130
    .line 1131
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v3

    .line 1135
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1136
    .line 1137
    .line 1138
    move-result v4

    .line 1139
    if-eqz v4, :cond_3b

    .line 1140
    .line 1141
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v4

    .line 1145
    check-cast v4, Lf0/h;

    .line 1146
    .line 1147
    const/4 v5, 0x1

    .line 1148
    invoke-static {v4, v5, v0, v6}, Lg0/h;->b(Lf0/d;ILjava/util/ArrayList;Lg0/n;)Lg0/n;

    .line 1149
    .line 1150
    .line 1151
    goto :goto_1e

    .line 1152
    :cond_3b
    const/4 v5, 0x1

    .line 1153
    if-eqz v13, :cond_3c

    .line 1154
    .line 1155
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v3

    .line 1159
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1160
    .line 1161
    .line 1162
    move-result v4

    .line 1163
    if-eqz v4, :cond_3c

    .line 1164
    .line 1165
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v4

    .line 1169
    check-cast v4, Lf0/i;

    .line 1170
    .line 1171
    invoke-static {v4, v5, v0, v6}, Lg0/h;->b(Lf0/d;ILjava/util/ArrayList;Lg0/n;)Lg0/n;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v7

    .line 1175
    invoke-virtual {v4, v5, v7, v0}, Lf0/i;->R(ILg0/n;Ljava/util/ArrayList;)V

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v7, v0}, Lg0/n;->a(Ljava/util/ArrayList;)V

    .line 1179
    .line 1180
    .line 1181
    const/4 v5, 0x1

    .line 1182
    const/4 v6, 0x0

    .line 1183
    goto :goto_1f

    .line 1184
    :cond_3c
    const/4 v3, 0x3

    .line 1185
    invoke-virtual {v1, v3}, Lf0/d;->i(I)Lf0/c;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v4

    .line 1189
    iget-object v3, v4, Lf0/c;->a:Ljava/util/HashSet;

    .line 1190
    .line 1191
    if-eqz v3, :cond_3d

    .line 1192
    .line 1193
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v3

    .line 1197
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1198
    .line 1199
    .line 1200
    move-result v4

    .line 1201
    if-eqz v4, :cond_3d

    .line 1202
    .line 1203
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v4

    .line 1207
    check-cast v4, Lf0/c;

    .line 1208
    .line 1209
    iget-object v4, v4, Lf0/c;->d:Lf0/d;

    .line 1210
    .line 1211
    const/4 v5, 0x1

    .line 1212
    const/4 v6, 0x0

    .line 1213
    invoke-static {v4, v5, v0, v6}, Lg0/h;->b(Lf0/d;ILjava/util/ArrayList;Lg0/n;)Lg0/n;

    .line 1214
    .line 1215
    .line 1216
    goto :goto_20

    .line 1217
    :cond_3d
    const/4 v3, 0x6

    .line 1218
    invoke-virtual {v1, v3}, Lf0/d;->i(I)Lf0/c;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v3

    .line 1222
    iget-object v3, v3, Lf0/c;->a:Ljava/util/HashSet;

    .line 1223
    .line 1224
    if-eqz v3, :cond_3e

    .line 1225
    .line 1226
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v3

    .line 1230
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1231
    .line 1232
    .line 1233
    move-result v4

    .line 1234
    if-eqz v4, :cond_3e

    .line 1235
    .line 1236
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v4

    .line 1240
    check-cast v4, Lf0/c;

    .line 1241
    .line 1242
    iget-object v4, v4, Lf0/c;->d:Lf0/d;

    .line 1243
    .line 1244
    const/4 v5, 0x1

    .line 1245
    const/4 v6, 0x0

    .line 1246
    invoke-static {v4, v5, v0, v6}, Lg0/h;->b(Lf0/d;ILjava/util/ArrayList;Lg0/n;)Lg0/n;

    .line 1247
    .line 1248
    .line 1249
    goto :goto_21

    .line 1250
    :cond_3e
    const/4 v3, 0x5

    .line 1251
    invoke-virtual {v1, v3}, Lf0/d;->i(I)Lf0/c;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v4

    .line 1255
    iget-object v3, v4, Lf0/c;->a:Ljava/util/HashSet;

    .line 1256
    .line 1257
    if-eqz v3, :cond_3f

    .line 1258
    .line 1259
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v3

    .line 1263
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1264
    .line 1265
    .line 1266
    move-result v4

    .line 1267
    if-eqz v4, :cond_3f

    .line 1268
    .line 1269
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v4

    .line 1273
    check-cast v4, Lf0/c;

    .line 1274
    .line 1275
    iget-object v4, v4, Lf0/c;->d:Lf0/d;

    .line 1276
    .line 1277
    const/4 v5, 0x1

    .line 1278
    const/4 v6, 0x0

    .line 1279
    invoke-static {v4, v5, v0, v6}, Lg0/h;->b(Lf0/d;ILjava/util/ArrayList;Lg0/n;)Lg0/n;

    .line 1280
    .line 1281
    .line 1282
    goto :goto_22

    .line 1283
    :cond_3f
    invoke-virtual {v1, v2}, Lf0/d;->i(I)Lf0/c;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v2

    .line 1287
    iget-object v2, v2, Lf0/c;->a:Ljava/util/HashSet;

    .line 1288
    .line 1289
    if-eqz v2, :cond_40

    .line 1290
    .line 1291
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v2

    .line 1295
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1296
    .line 1297
    .line 1298
    move-result v3

    .line 1299
    if-eqz v3, :cond_40

    .line 1300
    .line 1301
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v3

    .line 1305
    check-cast v3, Lf0/c;

    .line 1306
    .line 1307
    iget-object v3, v3, Lf0/c;->d:Lf0/d;

    .line 1308
    .line 1309
    const/4 v4, 0x1

    .line 1310
    const/4 v5, 0x0

    .line 1311
    invoke-static {v3, v4, v0, v5}, Lg0/h;->b(Lf0/d;ILjava/util/ArrayList;Lg0/n;)Lg0/n;

    .line 1312
    .line 1313
    .line 1314
    goto :goto_23

    .line 1315
    :cond_40
    const/4 v4, 0x1

    .line 1316
    const/4 v5, 0x0

    .line 1317
    if-eqz v15, :cond_41

    .line 1318
    .line 1319
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v2

    .line 1323
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1324
    .line 1325
    .line 1326
    move-result v3

    .line 1327
    if-eqz v3, :cond_41

    .line 1328
    .line 1329
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v3

    .line 1333
    check-cast v3, Lf0/d;

    .line 1334
    .line 1335
    invoke-static {v3, v4, v0, v5}, Lg0/h;->b(Lf0/d;ILjava/util/ArrayList;Lg0/n;)Lg0/n;

    .line 1336
    .line 1337
    .line 1338
    goto :goto_24

    .line 1339
    :cond_41
    const/4 v2, 0x0

    .line 1340
    :goto_25
    if-ge v2, v12, :cond_47

    .line 1341
    .line 1342
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v3

    .line 1346
    check-cast v3, Lf0/d;

    .line 1347
    .line 1348
    iget-object v4, v3, Lf0/d;->p0:[I

    .line 1349
    .line 1350
    const/4 v5, 0x0

    .line 1351
    aget v6, v4, v5

    .line 1352
    .line 1353
    const/4 v5, 0x3

    .line 1354
    if-ne v6, v5, :cond_46

    .line 1355
    .line 1356
    const/4 v6, 0x1

    .line 1357
    aget v4, v4, v6

    .line 1358
    .line 1359
    if-ne v4, v5, :cond_46

    .line 1360
    .line 1361
    iget v4, v3, Lf0/d;->n0:I

    .line 1362
    .line 1363
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1364
    .line 1365
    .line 1366
    move-result v6

    .line 1367
    const/4 v7, 0x0

    .line 1368
    :goto_26
    if-ge v7, v6, :cond_43

    .line 1369
    .line 1370
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v8

    .line 1374
    check-cast v8, Lg0/n;

    .line 1375
    .line 1376
    iget v9, v8, Lg0/n;->b:I

    .line 1377
    .line 1378
    if-ne v4, v9, :cond_42

    .line 1379
    .line 1380
    goto :goto_27

    .line 1381
    :cond_42
    add-int/lit8 v7, v7, 0x1

    .line 1382
    .line 1383
    goto :goto_26

    .line 1384
    :cond_43
    const/4 v8, 0x0

    .line 1385
    :goto_27
    iget v3, v3, Lf0/d;->o0:I

    .line 1386
    .line 1387
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1388
    .line 1389
    .line 1390
    move-result v4

    .line 1391
    const/4 v6, 0x0

    .line 1392
    :goto_28
    if-ge v6, v4, :cond_45

    .line 1393
    .line 1394
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v7

    .line 1398
    check-cast v7, Lg0/n;

    .line 1399
    .line 1400
    iget v9, v7, Lg0/n;->b:I

    .line 1401
    .line 1402
    if-ne v3, v9, :cond_44

    .line 1403
    .line 1404
    goto :goto_29

    .line 1405
    :cond_44
    add-int/lit8 v6, v6, 0x1

    .line 1406
    .line 1407
    goto :goto_28

    .line 1408
    :cond_45
    const/4 v7, 0x0

    .line 1409
    :goto_29
    if-eqz v8, :cond_46

    .line 1410
    .line 1411
    if-eqz v7, :cond_46

    .line 1412
    .line 1413
    const/4 v3, 0x0

    .line 1414
    invoke-virtual {v8, v3, v7}, Lg0/n;->c(ILg0/n;)V

    .line 1415
    .line 1416
    .line 1417
    const/4 v3, 0x2

    .line 1418
    iput v3, v7, Lg0/n;->c:I

    .line 1419
    .line 1420
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1421
    .line 1422
    .line 1423
    :cond_46
    add-int/lit8 v2, v2, 0x1

    .line 1424
    .line 1425
    goto :goto_25

    .line 1426
    :cond_47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1427
    .line 1428
    .line 1429
    move-result v2

    .line 1430
    const/4 v3, 0x1

    .line 1431
    if-gt v2, v3, :cond_48

    .line 1432
    .line 1433
    move-object/from16 v8, v28

    .line 1434
    .line 1435
    goto/16 :goto_2e

    .line 1436
    .line 1437
    :cond_48
    const/4 v2, 0x0

    .line 1438
    aget v3, v22, v2

    .line 1439
    .line 1440
    const/4 v2, 0x2

    .line 1441
    if-ne v3, v2, :cond_4c

    .line 1442
    .line 1443
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v2

    .line 1447
    const/4 v3, 0x0

    .line 1448
    const/4 v4, 0x0

    .line 1449
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1450
    .line 1451
    .line 1452
    move-result v5

    .line 1453
    if-eqz v5, :cond_4b

    .line 1454
    .line 1455
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v5

    .line 1459
    check-cast v5, Lg0/n;

    .line 1460
    .line 1461
    iget v6, v5, Lg0/n;->c:I

    .line 1462
    .line 1463
    const/4 v7, 0x1

    .line 1464
    if-ne v6, v7, :cond_49

    .line 1465
    .line 1466
    goto :goto_2a

    .line 1467
    :cond_49
    move-object/from16 v8, v28

    .line 1468
    .line 1469
    const/4 v6, 0x0

    .line 1470
    invoke-virtual {v5, v8, v6}, Lg0/n;->b(Ld0/c;I)I

    .line 1471
    .line 1472
    .line 1473
    move-result v9

    .line 1474
    if-le v9, v3, :cond_4a

    .line 1475
    .line 1476
    move-object v4, v5

    .line 1477
    move v3, v9

    .line 1478
    :cond_4a
    move-object/from16 v28, v8

    .line 1479
    .line 1480
    goto :goto_2a

    .line 1481
    :cond_4b
    move-object/from16 v8, v28

    .line 1482
    .line 1483
    const/4 v7, 0x1

    .line 1484
    if-eqz v4, :cond_4d

    .line 1485
    .line 1486
    invoke-virtual {v1, v7}, Lf0/d;->M(I)V

    .line 1487
    .line 1488
    .line 1489
    invoke-virtual {v1, v3}, Lf0/d;->O(I)V

    .line 1490
    .line 1491
    .line 1492
    goto :goto_2b

    .line 1493
    :cond_4c
    move-object/from16 v8, v28

    .line 1494
    .line 1495
    const/4 v7, 0x1

    .line 1496
    :cond_4d
    const/4 v4, 0x0

    .line 1497
    :goto_2b
    aget v2, v22, v7

    .line 1498
    .line 1499
    const/4 v3, 0x2

    .line 1500
    if-ne v2, v3, :cond_51

    .line 1501
    .line 1502
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v0

    .line 1506
    const/4 v2, 0x0

    .line 1507
    const/4 v3, 0x0

    .line 1508
    :cond_4e
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1509
    .line 1510
    .line 1511
    move-result v5

    .line 1512
    if-eqz v5, :cond_50

    .line 1513
    .line 1514
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v5

    .line 1518
    check-cast v5, Lg0/n;

    .line 1519
    .line 1520
    iget v6, v5, Lg0/n;->c:I

    .line 1521
    .line 1522
    if-nez v6, :cond_4f

    .line 1523
    .line 1524
    goto :goto_2c

    .line 1525
    :cond_4f
    const/4 v6, 0x1

    .line 1526
    invoke-virtual {v5, v8, v6}, Lg0/n;->b(Ld0/c;I)I

    .line 1527
    .line 1528
    .line 1529
    move-result v7

    .line 1530
    if-le v7, v2, :cond_4e

    .line 1531
    .line 1532
    move-object v3, v5

    .line 1533
    move v2, v7

    .line 1534
    goto :goto_2c

    .line 1535
    :cond_50
    const/4 v6, 0x1

    .line 1536
    if-eqz v3, :cond_51

    .line 1537
    .line 1538
    invoke-virtual {v1, v6}, Lf0/d;->N(I)V

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v1, v2}, Lf0/d;->L(I)V

    .line 1542
    .line 1543
    .line 1544
    goto :goto_2d

    .line 1545
    :cond_51
    const/4 v3, 0x0

    .line 1546
    :goto_2d
    if-nez v4, :cond_52

    .line 1547
    .line 1548
    if-eqz v3, :cond_53

    .line 1549
    .line 1550
    :cond_52
    move/from16 v2, v27

    .line 1551
    .line 1552
    const/4 v3, 0x2

    .line 1553
    goto :goto_2f

    .line 1554
    :cond_53
    :goto_2e
    move/from16 v5, v20

    .line 1555
    .line 1556
    move/from16 v4, v24

    .line 1557
    .line 1558
    move/from16 v3, v26

    .line 1559
    .line 1560
    move/from16 v2, v27

    .line 1561
    .line 1562
    goto :goto_35

    .line 1563
    :goto_2f
    if-ne v2, v3, :cond_55

    .line 1564
    .line 1565
    invoke-virtual/range {p0 .. p0}, Lf0/d;->q()I

    .line 1566
    .line 1567
    .line 1568
    move-result v0

    .line 1569
    move/from16 v3, v26

    .line 1570
    .line 1571
    if-ge v3, v0, :cond_54

    .line 1572
    .line 1573
    if-lez v3, :cond_54

    .line 1574
    .line 1575
    invoke-virtual {v1, v3}, Lf0/d;->O(I)V

    .line 1576
    .line 1577
    .line 1578
    const/4 v4, 0x1

    .line 1579
    iput-boolean v4, v1, Lf0/e;->E0:Z

    .line 1580
    .line 1581
    goto :goto_31

    .line 1582
    :cond_54
    invoke-virtual/range {p0 .. p0}, Lf0/d;->q()I

    .line 1583
    .line 1584
    .line 1585
    move-result v0

    .line 1586
    :goto_30
    move/from16 v4, v24

    .line 1587
    .line 1588
    const/4 v3, 0x2

    .line 1589
    goto :goto_32

    .line 1590
    :cond_55
    move/from16 v3, v26

    .line 1591
    .line 1592
    :goto_31
    move v0, v3

    .line 1593
    goto :goto_30

    .line 1594
    :goto_32
    if-ne v4, v3, :cond_57

    .line 1595
    .line 1596
    invoke-virtual/range {p0 .. p0}, Lf0/d;->k()I

    .line 1597
    .line 1598
    .line 1599
    move-result v3

    .line 1600
    move/from16 v5, v20

    .line 1601
    .line 1602
    if-ge v5, v3, :cond_56

    .line 1603
    .line 1604
    if-lez v5, :cond_56

    .line 1605
    .line 1606
    invoke-virtual {v1, v5}, Lf0/d;->L(I)V

    .line 1607
    .line 1608
    .line 1609
    const/4 v3, 0x1

    .line 1610
    iput-boolean v3, v1, Lf0/e;->F0:Z

    .line 1611
    .line 1612
    goto :goto_33

    .line 1613
    :cond_56
    invoke-virtual/range {p0 .. p0}, Lf0/d;->k()I

    .line 1614
    .line 1615
    .line 1616
    move-result v3

    .line 1617
    goto :goto_34

    .line 1618
    :cond_57
    move/from16 v5, v20

    .line 1619
    .line 1620
    :goto_33
    move v3, v5

    .line 1621
    :goto_34
    move v5, v3

    .line 1622
    move v3, v0

    .line 1623
    const/4 v0, 0x1

    .line 1624
    goto :goto_36

    .line 1625
    :goto_35
    const/4 v0, 0x0

    .line 1626
    :goto_36
    const/16 v6, 0x40

    .line 1627
    .line 1628
    invoke-virtual {v1, v6}, Lf0/e;->W(I)Z

    .line 1629
    .line 1630
    .line 1631
    move-result v7

    .line 1632
    if-nez v7, :cond_59

    .line 1633
    .line 1634
    const/16 v7, 0x80

    .line 1635
    .line 1636
    invoke-virtual {v1, v7}, Lf0/e;->W(I)Z

    .line 1637
    .line 1638
    .line 1639
    move-result v7

    .line 1640
    if-eqz v7, :cond_58

    .line 1641
    .line 1642
    goto :goto_37

    .line 1643
    :cond_58
    const/4 v7, 0x0

    .line 1644
    goto :goto_38

    .line 1645
    :cond_59
    :goto_37
    const/4 v7, 0x1

    .line 1646
    :goto_38
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1647
    .line 1648
    .line 1649
    const/4 v9, 0x0

    .line 1650
    iput-boolean v9, v8, Ld0/c;->g:Z

    .line 1651
    .line 1652
    iget v10, v1, Lf0/e;->D0:I

    .line 1653
    .line 1654
    if-eqz v10, :cond_5a

    .line 1655
    .line 1656
    if-eqz v7, :cond_5a

    .line 1657
    .line 1658
    const/4 v7, 0x1

    .line 1659
    iput-boolean v7, v8, Ld0/c;->g:Z

    .line 1660
    .line 1661
    goto :goto_39

    .line 1662
    :cond_5a
    const/4 v7, 0x1

    .line 1663
    :goto_39
    iget-object v10, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 1664
    .line 1665
    aget v11, v22, v9

    .line 1666
    .line 1667
    const/4 v12, 0x2

    .line 1668
    if-eq v11, v12, :cond_5c

    .line 1669
    .line 1670
    aget v11, v22, v7

    .line 1671
    .line 1672
    if-ne v11, v12, :cond_5b

    .line 1673
    .line 1674
    goto :goto_3a

    .line 1675
    :cond_5b
    const/4 v7, 0x0

    .line 1676
    goto :goto_3b

    .line 1677
    :cond_5c
    :goto_3a
    const/4 v7, 0x1

    .line 1678
    :goto_3b
    iput v9, v1, Lf0/e;->z0:I

    .line 1679
    .line 1680
    iput v9, v1, Lf0/e;->A0:I

    .line 1681
    .line 1682
    move/from16 v11, v25

    .line 1683
    .line 1684
    const/4 v9, 0x0

    .line 1685
    :goto_3c
    if-ge v9, v11, :cond_5e

    .line 1686
    .line 1687
    iget-object v12, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 1688
    .line 1689
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v12

    .line 1693
    check-cast v12, Lf0/d;

    .line 1694
    .line 1695
    instance-of v13, v12, Lf0/e;

    .line 1696
    .line 1697
    if-eqz v13, :cond_5d

    .line 1698
    .line 1699
    check-cast v12, Lf0/e;

    .line 1700
    .line 1701
    invoke-virtual {v12}, Lf0/e;->U()V

    .line 1702
    .line 1703
    .line 1704
    :cond_5d
    add-int/lit8 v9, v9, 0x1

    .line 1705
    .line 1706
    goto :goto_3c

    .line 1707
    :cond_5e
    invoke-virtual {v1, v6}, Lf0/e;->W(I)Z

    .line 1708
    .line 1709
    .line 1710
    move-result v9

    .line 1711
    move v12, v0

    .line 1712
    const/4 v0, 0x0

    .line 1713
    const/4 v13, 0x1

    .line 1714
    :goto_3d
    if-eqz v13, :cond_72

    .line 1715
    .line 1716
    const/4 v14, 0x1

    .line 1717
    add-int/lit8 v15, v0, 0x1

    .line 1718
    .line 1719
    :try_start_0
    invoke-virtual {v8}, Ld0/c;->t()V

    .line 1720
    .line 1721
    .line 1722
    const/4 v14, 0x0

    .line 1723
    iput v14, v1, Lf0/e;->z0:I

    .line 1724
    .line 1725
    iput v14, v1, Lf0/e;->A0:I

    .line 1726
    .line 1727
    invoke-virtual {v1, v8}, Lf0/d;->g(Ld0/c;)V

    .line 1728
    .line 1729
    .line 1730
    const/4 v0, 0x0

    .line 1731
    :goto_3e
    if-ge v0, v11, :cond_5f

    .line 1732
    .line 1733
    iget-object v14, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 1734
    .line 1735
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1736
    .line 1737
    .line 1738
    move-result-object v14

    .line 1739
    check-cast v14, Lf0/d;

    .line 1740
    .line 1741
    invoke-virtual {v14, v8}, Lf0/d;->g(Ld0/c;)V

    .line 1742
    .line 1743
    .line 1744
    add-int/lit8 v0, v0, 0x1

    .line 1745
    .line 1746
    goto :goto_3e

    .line 1747
    :catch_0
    move-exception v0

    .line 1748
    move/from16 v20, v12

    .line 1749
    .line 1750
    const/4 v6, 0x0

    .line 1751
    :goto_3f
    const/4 v14, 0x5

    .line 1752
    goto/16 :goto_46

    .line 1753
    .line 1754
    :cond_5f
    invoke-virtual {v1, v8}, Lf0/e;->S(Ld0/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1755
    .line 1756
    .line 1757
    :try_start_1
    iget-object v0, v1, Lf0/e;->G0:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    .line 1758
    .line 1759
    if-eqz v0, :cond_60

    .line 1760
    .line 1761
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1762
    .line 1763
    .line 1764
    move-result-object v0

    .line 1765
    if-eqz v0, :cond_60

    .line 1766
    .line 1767
    iget-object v0, v1, Lf0/e;->G0:Ljava/lang/ref/WeakReference;

    .line 1768
    .line 1769
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v0

    .line 1773
    check-cast v0, Lf0/c;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1774
    .line 1775
    move-object/from16 v14, v23

    .line 1776
    .line 1777
    :try_start_3
    invoke-virtual {v8, v14}, Ld0/c;->k(Ljava/lang/Object;)Ld0/g;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v13

    .line 1781
    iget-object v6, v1, Lf0/e;->w0:Ld0/c;

    .line 1782
    .line 1783
    invoke-virtual {v6, v0}, Ld0/c;->k(Ljava/lang/Object;)Ld0/g;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1787
    move/from16 v20, v12

    .line 1788
    .line 1789
    move-object/from16 v23, v14

    .line 1790
    .line 1791
    const/4 v12, 0x5

    .line 1792
    const/4 v14, 0x0

    .line 1793
    :try_start_4
    invoke-virtual {v6, v0, v13, v14, v12}, Ld0/c;->f(Ld0/g;Ld0/g;II)V

    .line 1794
    .line 1795
    .line 1796
    const/4 v6, 0x0

    .line 1797
    iput-object v6, v1, Lf0/e;->G0:Ljava/lang/ref/WeakReference;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1798
    .line 1799
    goto :goto_41

    .line 1800
    :catch_1
    move-exception v0

    .line 1801
    :goto_40
    const/4 v6, 0x0

    .line 1802
    const/4 v13, 0x1

    .line 1803
    goto :goto_3f

    .line 1804
    :catch_2
    move-exception v0

    .line 1805
    move/from16 v20, v12

    .line 1806
    .line 1807
    move-object/from16 v23, v14

    .line 1808
    .line 1809
    goto :goto_40

    .line 1810
    :catch_3
    move-exception v0

    .line 1811
    move/from16 v20, v12

    .line 1812
    .line 1813
    goto :goto_40

    .line 1814
    :cond_60
    move/from16 v20, v12

    .line 1815
    .line 1816
    :goto_41
    :try_start_5
    iget-object v0, v1, Lf0/e;->I0:Ljava/lang/ref/WeakReference;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 1817
    .line 1818
    if-eqz v0, :cond_61

    .line 1819
    .line 1820
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v0

    .line 1824
    if-eqz v0, :cond_61

    .line 1825
    .line 1826
    iget-object v0, v1, Lf0/e;->I0:Ljava/lang/ref/WeakReference;

    .line 1827
    .line 1828
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v0

    .line 1832
    check-cast v0, Lf0/c;

    .line 1833
    .line 1834
    iget-object v6, v1, Lf0/d;->L:Lf0/c;

    .line 1835
    .line 1836
    invoke-virtual {v8, v6}, Ld0/c;->k(Ljava/lang/Object;)Ld0/g;

    .line 1837
    .line 1838
    .line 1839
    move-result-object v6

    .line 1840
    iget-object v12, v1, Lf0/e;->w0:Ld0/c;

    .line 1841
    .line 1842
    invoke-virtual {v12, v0}, Ld0/c;->k(Ljava/lang/Object;)Ld0/g;

    .line 1843
    .line 1844
    .line 1845
    move-result-object v0

    .line 1846
    const/4 v13, 0x0

    .line 1847
    const/4 v14, 0x5

    .line 1848
    invoke-virtual {v12, v6, v0, v13, v14}, Ld0/c;->f(Ld0/g;Ld0/g;II)V

    .line 1849
    .line 1850
    .line 1851
    const/4 v6, 0x0

    .line 1852
    iput-object v6, v1, Lf0/e;->I0:Ljava/lang/ref/WeakReference;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1853
    .line 1854
    :cond_61
    :try_start_7
    iget-object v0, v1, Lf0/e;->H0:Ljava/lang/ref/WeakReference;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 1855
    .line 1856
    if-eqz v0, :cond_62

    .line 1857
    .line 1858
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v0

    .line 1862
    if-eqz v0, :cond_62

    .line 1863
    .line 1864
    iget-object v0, v1, Lf0/e;->H0:Ljava/lang/ref/WeakReference;

    .line 1865
    .line 1866
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v0

    .line 1870
    check-cast v0, Lf0/c;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 1871
    .line 1872
    move-object/from16 v6, v21

    .line 1873
    .line 1874
    :try_start_9
    invoke-virtual {v8, v6}, Ld0/c;->k(Ljava/lang/Object;)Ld0/g;

    .line 1875
    .line 1876
    .line 1877
    move-result-object v12

    .line 1878
    iget-object v13, v1, Lf0/e;->w0:Ld0/c;

    .line 1879
    .line 1880
    invoke-virtual {v13, v0}, Ld0/c;->k(Ljava/lang/Object;)Ld0/g;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 1884
    move-object/from16 v21, v6

    .line 1885
    .line 1886
    const/4 v6, 0x5

    .line 1887
    const/4 v14, 0x0

    .line 1888
    :try_start_a
    invoke-virtual {v13, v0, v12, v14, v6}, Ld0/c;->f(Ld0/g;Ld0/g;II)V

    .line 1889
    .line 1890
    .line 1891
    const/4 v6, 0x0

    .line 1892
    iput-object v6, v1, Lf0/e;->H0:Ljava/lang/ref/WeakReference;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 1893
    .line 1894
    goto :goto_42

    .line 1895
    :catch_4
    move-exception v0

    .line 1896
    move-object/from16 v21, v6

    .line 1897
    .line 1898
    goto :goto_40

    .line 1899
    :cond_62
    :goto_42
    :try_start_b
    iget-object v0, v1, Lf0/e;->J0:Ljava/lang/ref/WeakReference;

    .line 1900
    .line 1901
    if-eqz v0, :cond_63

    .line 1902
    .line 1903
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1904
    .line 1905
    .line 1906
    move-result-object v0

    .line 1907
    if-eqz v0, :cond_63

    .line 1908
    .line 1909
    iget-object v0, v1, Lf0/e;->J0:Ljava/lang/ref/WeakReference;

    .line 1910
    .line 1911
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1912
    .line 1913
    .line 1914
    move-result-object v0

    .line 1915
    check-cast v0, Lf0/c;

    .line 1916
    .line 1917
    iget-object v6, v1, Lf0/d;->K:Lf0/c;

    .line 1918
    .line 1919
    invoke-virtual {v8, v6}, Ld0/c;->k(Ljava/lang/Object;)Ld0/g;

    .line 1920
    .line 1921
    .line 1922
    move-result-object v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 1923
    :try_start_c
    iget-object v12, v1, Lf0/e;->w0:Ld0/c;

    .line 1924
    .line 1925
    invoke-virtual {v12, v0}, Ld0/c;->k(Ljava/lang/Object;)Ld0/g;

    .line 1926
    .line 1927
    .line 1928
    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 1929
    const/4 v13, 0x0

    .line 1930
    const/4 v14, 0x5

    .line 1931
    :try_start_d
    invoke-virtual {v12, v6, v0, v13, v14}, Ld0/c;->f(Ld0/g;Ld0/g;II)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 1932
    .line 1933
    .line 1934
    const/4 v6, 0x0

    .line 1935
    :try_start_e
    iput-object v6, v1, Lf0/e;->J0:Ljava/lang/ref/WeakReference;

    .line 1936
    .line 1937
    goto :goto_45

    .line 1938
    :catch_5
    move-exception v0

    .line 1939
    :goto_43
    const/4 v13, 0x1

    .line 1940
    goto :goto_46

    .line 1941
    :catch_6
    move-exception v0

    .line 1942
    const/4 v6, 0x0

    .line 1943
    goto :goto_43

    .line 1944
    :catch_7
    move-exception v0

    .line 1945
    goto :goto_44

    .line 1946
    :catch_8
    move-exception v0

    .line 1947
    :goto_44
    const/4 v6, 0x0

    .line 1948
    const/4 v14, 0x5

    .line 1949
    goto :goto_43

    .line 1950
    :cond_63
    const/4 v6, 0x0

    .line 1951
    const/4 v14, 0x5

    .line 1952
    :goto_45
    invoke-virtual {v8}, Ld0/c;->p()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 1953
    .line 1954
    .line 1955
    const/4 v13, 0x1

    .line 1956
    goto :goto_47

    .line 1957
    :catch_9
    move-exception v0

    .line 1958
    move/from16 v20, v12

    .line 1959
    .line 1960
    goto :goto_44

    .line 1961
    :goto_46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1962
    .line 1963
    .line 1964
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1965
    .line 1966
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1967
    .line 1968
    .line 1969
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1970
    .line 1971
    .line 1972
    :goto_47
    sget-object v0, Lf0/j;->a:[Z

    .line 1973
    .line 1974
    if-eqz v13, :cond_67

    .line 1975
    .line 1976
    const/4 v12, 0x0

    .line 1977
    const/4 v13, 0x2

    .line 1978
    aput-boolean v12, v0, v13

    .line 1979
    .line 1980
    const/16 v12, 0x40

    .line 1981
    .line 1982
    invoke-virtual {v1, v12}, Lf0/e;->W(I)Z

    .line 1983
    .line 1984
    .line 1985
    move-result v13

    .line 1986
    invoke-virtual {v1, v8, v13}, Lf0/d;->Q(Ld0/c;Z)V

    .line 1987
    .line 1988
    .line 1989
    iget-object v6, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 1990
    .line 1991
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1992
    .line 1993
    .line 1994
    move-result v6

    .line 1995
    const/4 v12, 0x0

    .line 1996
    const/16 v18, 0x0

    .line 1997
    .line 1998
    :goto_48
    if-ge v12, v6, :cond_66

    .line 1999
    .line 2000
    iget-object v14, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 2001
    .line 2002
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v14

    .line 2006
    check-cast v14, Lf0/d;

    .line 2007
    .line 2008
    invoke-virtual {v14, v8, v13}, Lf0/d;->Q(Ld0/c;Z)V

    .line 2009
    .line 2010
    .line 2011
    move/from16 v25, v6

    .line 2012
    .line 2013
    iget v6, v14, Lf0/d;->h:I

    .line 2014
    .line 2015
    move/from16 v26, v13

    .line 2016
    .line 2017
    const/4 v13, -0x1

    .line 2018
    if-ne v6, v13, :cond_64

    .line 2019
    .line 2020
    iget v6, v14, Lf0/d;->i:I

    .line 2021
    .line 2022
    if-eq v6, v13, :cond_65

    .line 2023
    .line 2024
    :cond_64
    const/16 v18, 0x1

    .line 2025
    .line 2026
    :cond_65
    add-int/lit8 v12, v12, 0x1

    .line 2027
    .line 2028
    move/from16 v6, v25

    .line 2029
    .line 2030
    move/from16 v13, v26

    .line 2031
    .line 2032
    const/4 v14, 0x5

    .line 2033
    goto :goto_48

    .line 2034
    :cond_66
    const/4 v13, -0x1

    .line 2035
    goto :goto_4a

    .line 2036
    :cond_67
    const/4 v13, -0x1

    .line 2037
    invoke-virtual {v1, v8, v9}, Lf0/d;->Q(Ld0/c;Z)V

    .line 2038
    .line 2039
    .line 2040
    const/4 v6, 0x0

    .line 2041
    :goto_49
    if-ge v6, v11, :cond_68

    .line 2042
    .line 2043
    iget-object v12, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 2044
    .line 2045
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2046
    .line 2047
    .line 2048
    move-result-object v12

    .line 2049
    check-cast v12, Lf0/d;

    .line 2050
    .line 2051
    invoke-virtual {v12, v8, v9}, Lf0/d;->Q(Ld0/c;Z)V

    .line 2052
    .line 2053
    .line 2054
    add-int/lit8 v6, v6, 0x1

    .line 2055
    .line 2056
    goto :goto_49

    .line 2057
    :cond_68
    const/16 v18, 0x0

    .line 2058
    .line 2059
    :goto_4a
    const/16 v6, 0x8

    .line 2060
    .line 2061
    if-eqz v7, :cond_6b

    .line 2062
    .line 2063
    if-ge v15, v6, :cond_6b

    .line 2064
    .line 2065
    const/4 v12, 0x2

    .line 2066
    aget-boolean v0, v0, v12

    .line 2067
    .line 2068
    if-eqz v0, :cond_6b

    .line 2069
    .line 2070
    const/4 v0, 0x0

    .line 2071
    const/4 v12, 0x0

    .line 2072
    const/4 v14, 0x0

    .line 2073
    :goto_4b
    if-ge v0, v11, :cond_69

    .line 2074
    .line 2075
    iget-object v13, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 2076
    .line 2077
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v13

    .line 2081
    check-cast v13, Lf0/d;

    .line 2082
    .line 2083
    iget v6, v13, Lf0/d;->Y:I

    .line 2084
    .line 2085
    invoke-virtual {v13}, Lf0/d;->q()I

    .line 2086
    .line 2087
    .line 2088
    move-result v26

    .line 2089
    add-int v6, v26, v6

    .line 2090
    .line 2091
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    .line 2092
    .line 2093
    .line 2094
    move-result v12

    .line 2095
    iget v6, v13, Lf0/d;->Z:I

    .line 2096
    .line 2097
    invoke-virtual {v13}, Lf0/d;->k()I

    .line 2098
    .line 2099
    .line 2100
    move-result v13

    .line 2101
    add-int/2addr v13, v6

    .line 2102
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    .line 2103
    .line 2104
    .line 2105
    move-result v14

    .line 2106
    add-int/lit8 v0, v0, 0x1

    .line 2107
    .line 2108
    const/16 v6, 0x8

    .line 2109
    .line 2110
    const/4 v13, -0x1

    .line 2111
    goto :goto_4b

    .line 2112
    :cond_69
    iget v0, v1, Lf0/d;->b0:I

    .line 2113
    .line 2114
    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    .line 2115
    .line 2116
    .line 2117
    move-result v0

    .line 2118
    iget v6, v1, Lf0/d;->c0:I

    .line 2119
    .line 2120
    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    .line 2121
    .line 2122
    .line 2123
    move-result v6

    .line 2124
    const/4 v12, 0x2

    .line 2125
    if-ne v2, v12, :cond_6a

    .line 2126
    .line 2127
    invoke-virtual/range {p0 .. p0}, Lf0/d;->q()I

    .line 2128
    .line 2129
    .line 2130
    move-result v13

    .line 2131
    if-ge v13, v0, :cond_6a

    .line 2132
    .line 2133
    invoke-virtual {v1, v0}, Lf0/d;->O(I)V

    .line 2134
    .line 2135
    .line 2136
    const/4 v13, 0x0

    .line 2137
    aput v12, v22, v13

    .line 2138
    .line 2139
    const/16 v18, 0x1

    .line 2140
    .line 2141
    const/16 v20, 0x1

    .line 2142
    .line 2143
    :cond_6a
    if-ne v4, v12, :cond_6b

    .line 2144
    .line 2145
    invoke-virtual/range {p0 .. p0}, Lf0/d;->k()I

    .line 2146
    .line 2147
    .line 2148
    move-result v0

    .line 2149
    if-ge v0, v6, :cond_6b

    .line 2150
    .line 2151
    invoke-virtual {v1, v6}, Lf0/d;->L(I)V

    .line 2152
    .line 2153
    .line 2154
    const/4 v6, 0x1

    .line 2155
    aput v12, v22, v6

    .line 2156
    .line 2157
    const/16 v18, 0x1

    .line 2158
    .line 2159
    const/16 v20, 0x1

    .line 2160
    .line 2161
    :cond_6b
    iget v0, v1, Lf0/d;->b0:I

    .line 2162
    .line 2163
    invoke-virtual/range {p0 .. p0}, Lf0/d;->q()I

    .line 2164
    .line 2165
    .line 2166
    move-result v6

    .line 2167
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 2168
    .line 2169
    .line 2170
    move-result v0

    .line 2171
    invoke-virtual/range {p0 .. p0}, Lf0/d;->q()I

    .line 2172
    .line 2173
    .line 2174
    move-result v6

    .line 2175
    if-le v0, v6, :cond_6c

    .line 2176
    .line 2177
    invoke-virtual {v1, v0}, Lf0/d;->O(I)V

    .line 2178
    .line 2179
    .line 2180
    const/4 v6, 0x1

    .line 2181
    const/4 v12, 0x0

    .line 2182
    aput v6, v22, v12

    .line 2183
    .line 2184
    const/16 v17, 0x1

    .line 2185
    .line 2186
    const/16 v18, 0x1

    .line 2187
    .line 2188
    goto :goto_4c

    .line 2189
    :cond_6c
    const/4 v6, 0x1

    .line 2190
    move/from16 v17, v20

    .line 2191
    .line 2192
    :goto_4c
    iget v0, v1, Lf0/d;->c0:I

    .line 2193
    .line 2194
    invoke-virtual/range {p0 .. p0}, Lf0/d;->k()I

    .line 2195
    .line 2196
    .line 2197
    move-result v12

    .line 2198
    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    .line 2199
    .line 2200
    .line 2201
    move-result v0

    .line 2202
    invoke-virtual/range {p0 .. p0}, Lf0/d;->k()I

    .line 2203
    .line 2204
    .line 2205
    move-result v12

    .line 2206
    if-le v0, v12, :cond_6d

    .line 2207
    .line 2208
    invoke-virtual {v1, v0}, Lf0/d;->L(I)V

    .line 2209
    .line 2210
    .line 2211
    aput v6, v22, v6

    .line 2212
    .line 2213
    const/4 v0, 0x1

    .line 2214
    const/16 v18, 0x1

    .line 2215
    .line 2216
    goto :goto_4d

    .line 2217
    :cond_6d
    move/from16 v0, v17

    .line 2218
    .line 2219
    :goto_4d
    if-nez v0, :cond_70

    .line 2220
    .line 2221
    const/4 v12, 0x0

    .line 2222
    aget v13, v22, v12

    .line 2223
    .line 2224
    const/4 v14, 0x2

    .line 2225
    if-ne v13, v14, :cond_6e

    .line 2226
    .line 2227
    if-lez v3, :cond_6e

    .line 2228
    .line 2229
    invoke-virtual/range {p0 .. p0}, Lf0/d;->q()I

    .line 2230
    .line 2231
    .line 2232
    move-result v13

    .line 2233
    if-le v13, v3, :cond_6e

    .line 2234
    .line 2235
    iput-boolean v6, v1, Lf0/e;->E0:Z

    .line 2236
    .line 2237
    aput v6, v22, v12

    .line 2238
    .line 2239
    invoke-virtual {v1, v3}, Lf0/d;->O(I)V

    .line 2240
    .line 2241
    .line 2242
    const/4 v0, 0x1

    .line 2243
    const/16 v18, 0x1

    .line 2244
    .line 2245
    :cond_6e
    aget v12, v22, v6

    .line 2246
    .line 2247
    const/4 v13, 0x2

    .line 2248
    if-ne v12, v13, :cond_6f

    .line 2249
    .line 2250
    if-lez v5, :cond_6f

    .line 2251
    .line 2252
    invoke-virtual/range {p0 .. p0}, Lf0/d;->k()I

    .line 2253
    .line 2254
    .line 2255
    move-result v12

    .line 2256
    if-le v12, v5, :cond_6f

    .line 2257
    .line 2258
    iput-boolean v6, v1, Lf0/e;->F0:Z

    .line 2259
    .line 2260
    aput v6, v22, v6

    .line 2261
    .line 2262
    invoke-virtual {v1, v5}, Lf0/d;->L(I)V

    .line 2263
    .line 2264
    .line 2265
    const/16 v0, 0x8

    .line 2266
    .line 2267
    const/4 v6, 0x1

    .line 2268
    const/4 v12, 0x1

    .line 2269
    goto :goto_4f

    .line 2270
    :cond_6f
    :goto_4e
    move v12, v0

    .line 2271
    move/from16 v6, v18

    .line 2272
    .line 2273
    const/16 v0, 0x8

    .line 2274
    .line 2275
    goto :goto_4f

    .line 2276
    :cond_70
    const/4 v13, 0x2

    .line 2277
    goto :goto_4e

    .line 2278
    :goto_4f
    if-le v15, v0, :cond_71

    .line 2279
    .line 2280
    const/4 v6, 0x0

    .line 2281
    :cond_71
    move v13, v6

    .line 2282
    move v0, v15

    .line 2283
    const/16 v6, 0x40

    .line 2284
    .line 2285
    goto/16 :goto_3d

    .line 2286
    .line 2287
    :cond_72
    move/from16 v20, v12

    .line 2288
    .line 2289
    iput-object v10, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 2290
    .line 2291
    if-eqz v20, :cond_73

    .line 2292
    .line 2293
    const/4 v3, 0x0

    .line 2294
    aput v2, v22, v3

    .line 2295
    .line 2296
    const/4 v2, 0x1

    .line 2297
    aput v4, v22, v2

    .line 2298
    .line 2299
    :cond_73
    iget-object v0, v8, Ld0/c;->l:Lv3/f;

    .line 2300
    .line 2301
    invoke-virtual {v1, v0}, Lf0/e;->F(Lv3/f;)V

    .line 2302
    .line 2303
    .line 2304
    return-void
.end method

.method public final W(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lf0/e;->D0:I

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method

.method public final n(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lf0/d;->j:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ":{\n"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "  actualWidth:"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lf0/d;->U:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, "\n"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "  actualHeight:"

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v2, p0, Lf0/d;->V:I

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lf0/d;

    .line 86
    .line 87
    invoke-virtual {v1, p1}, Lf0/d;->n(Ljava/lang/StringBuilder;)V

    .line 88
    .line 89
    .line 90
    const-string v1, ",\n"

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    const-string v0, "}"

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    return-void
.end method
