.class public abstract Lei/h;
.super Lei/b;
.source "SourceFile"


# instance fields
.field public A:I

.field public final m:Lfi/d;

.field public final n:Ldi/a;

.field public final o:Lei/e;

.field public final p:Lei/g;

.field public final q:Lei/g;

.field public final r:I

.field public s:I

.field public t:I

.field public final u:I

.field public final v:[[I

.field public final w:[[I

.field public final x:[I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Lfi/d;Ldi/a;IIIII)V
    .locals 6

    .line 1
    invoke-direct {p0, p5}, Lei/b;-><init>(I)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lei/h;->s:I

    .line 3
    iput v0, p0, Lei/h;->t:I

    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [I

    const/16 v3, 0x80

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x4

    aput v3, v2, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lei/h;->w:[[I

    const/16 v2, 0x10

    .line 5
    new-array v2, v2, [I

    iput-object v2, p0, Lei/h;->x:[I

    .line 6
    iput v0, p0, Lei/h;->y:I

    const/4 v2, -0x1

    .line 7
    iput v2, p0, Lei/h;->z:I

    .line 8
    iput v0, p0, Lei/h;->A:I

    .line 9
    iput-object p1, p0, Lei/h;->m:Lfi/d;

    .line 10
    iput-object p2, p0, Lei/h;->n:Ldi/a;

    .line 11
    iput p7, p0, Lei/h;->r:I

    .line 12
    new-instance p1, Lei/e;

    invoke-direct {p1, p0, p3, p4}, Lei/e;-><init>(Lei/h;II)V

    iput-object p1, p0, Lei/h;->o:Lei/e;

    .line 13
    new-instance p1, Lei/g;

    invoke-direct {p1, p0, p5, p7}, Lei/g;-><init>(Lei/h;II)V

    iput-object p1, p0, Lei/h;->p:Lei/g;

    .line 14
    new-instance p1, Lei/g;

    invoke-direct {p1, p0, p5, p7}, Lei/g;-><init>(Lei/h;II)V

    iput-object p1, p0, Lei/h;->q:Lei/g;

    sub-int/2addr p6, v4

    .line 15
    invoke-static {p6}, Lei/h;->e(I)I

    move-result p1

    add-int/2addr p1, v4

    iput p1, p0, Lei/h;->u:I

    .line 16
    new-array p2, v1, [I

    aput p1, p2, v4

    aput v3, p2, v0

    invoke-static {v5, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lei/h;->v:[[I

    .line 17
    invoke-virtual {p0}, Lei/h;->a()V

    return-void
.end method

.method public static e(I)I
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    if-gt p0, v0, :cond_0

    .line 3
    .line 4
    if-ltz p0, :cond_0

    .line 5
    .line 6
    return p0

    .line 7
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    rsub-int/lit8 v1, v0, 0x1f

    .line 12
    .line 13
    shl-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    rsub-int/lit8 v0, v0, 0x1e

    .line 16
    .line 17
    ushr-int/2addr p0, v0

    .line 18
    and-int/lit8 p0, p0, 0x1

    .line 19
    .line 20
    add-int/2addr v1, p0

    .line 21
    return v1
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    invoke-super {p0}, Lei/b;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lei/h;->o:Lei/e;

    .line 7
    .line 8
    iget-object v2, v2, Lei/e;->c:[La/b;

    .line 9
    .line 10
    check-cast v2, [Lei/d;

    .line 11
    .line 12
    array-length v3, v2

    .line 13
    if-ge v1, v3, :cond_0

    .line 14
    .line 15
    aget-object v2, v2, v1

    .line 16
    .line 17
    iget-object v2, v2, La/b;->a:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, [S

    .line 20
    .line 21
    invoke-static {v2}, Lcom/bumptech/glide/c;->H([S)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p0, Lei/h;->p:Lei/g;

    .line 28
    .line 29
    invoke-virtual {v1}, Lei/g;->a()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lei/h;->q:Lei/g;

    .line 33
    .line 34
    invoke-virtual {v1}, Lei/g;->a()V

    .line 35
    .line 36
    .line 37
    iput v0, p0, Lei/h;->s:I

    .line 38
    .line 39
    iput v0, p0, Lei/h;->t:I

    .line 40
    .line 41
    iget v0, p0, Lei/h;->A:I

    .line 42
    .line 43
    iget v1, p0, Lei/h;->z:I

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    add-int/2addr v1, v0

    .line 48
    iput v1, p0, Lei/h;->A:I

    .line 49
    .line 50
    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lei/h;->z:I

    .line 52
    .line 53
    return-void
.end method

.method public final b()Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lei/h;->n:Ldi/a;

    .line 2
    .line 3
    iget v0, v0, Ldi/a;->g:I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lei/h;->c()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return v2

    .line 22
    :cond_1
    iget v0, p0, Lei/h;->A:I

    .line 23
    .line 24
    const v1, 0x1ffeef

    .line 25
    .line 26
    .line 27
    if-gt v0, v1, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lei/h;->m:Lfi/d;

    .line 30
    .line 31
    invoke-virtual {v0}, Lfi/d;->s0()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const v1, 0xffe6

    .line 36
    .line 37
    .line 38
    if-gt v0, v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Lei/h;->d()Z

    .line 41
    .line 42
    .line 43
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    return v2

    .line 47
    :cond_2
    return v3

    .line 48
    :catch_0
    new-instance v0, Ljava/lang/Error;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :goto_1
    throw v0

    .line 55
    :goto_2
    goto :goto_1
.end method

.method public final c()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lei/h;->n:Ldi/a;

    .line 2
    .line 3
    iget v1, v0, Ldi/a;->g:I

    .line 4
    .line 5
    iget v0, v0, Ldi/a;->h:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lei/h;->k(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lei/b;->c:Landroidx/leanback/widget/i;

    .line 15
    .line 16
    iget v1, v1, Landroidx/leanback/widget/i;->b:I

    .line 17
    .line 18
    iget-object v3, p0, Lei/b;->d:[[S

    .line 19
    .line 20
    aget-object v1, v3, v1

    .line 21
    .line 22
    iget-object v3, p0, Lei/h;->m:Lfi/d;

    .line 23
    .line 24
    invoke-virtual {v3, v1, v2, v2}, Lfi/d;->o0([SII)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lei/h;->o:Lei/e;

    .line 28
    .line 29
    iget-object v1, v1, Lei/e;->c:[La/b;

    .line 30
    .line 31
    check-cast v1, [Lei/d;

    .line 32
    .line 33
    aget-object v1, v1, v2

    .line 34
    .line 35
    invoke-virtual {v1}, Lei/d;->t()V

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lei/h;->z:I

    .line 39
    .line 40
    sub-int/2addr v1, v0

    .line 41
    iput v1, p0, Lei/h;->z:I

    .line 42
    .line 43
    iget v1, p0, Lei/h;->A:I

    .line 44
    .line 45
    add-int/2addr v1, v0

    .line 46
    iput v1, p0, Lei/h;->A:I

    .line 47
    .line 48
    return v0

    .line 49
    :cond_0
    return v2
.end method

.method public final d()Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lei/h;->z:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    add-int/2addr v1, v2

    .line 7
    iget-object v3, v0, Lei/h;->n:Ldi/a;

    .line 8
    .line 9
    iget v4, v3, Ldi/a;->g:I

    .line 10
    .line 11
    sub-int/2addr v4, v1

    .line 12
    iget v1, v3, Ldi/a;->h:I

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    if-ge v4, v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-nez v1, :cond_1

    .line 21
    .line 22
    return v5

    .line 23
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lei/h;->j()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget v3, v3, Ldi/a;->g:I

    .line 28
    .line 29
    iget v4, v0, Lei/h;->z:I

    .line 30
    .line 31
    sub-int/2addr v3, v4

    .line 32
    iget v4, v0, Lei/b;->a:I

    .line 33
    .line 34
    and-int/2addr v3, v4

    .line 35
    iget v4, v0, Lei/h;->y:I

    .line 36
    .line 37
    iget-object v6, v0, Lei/b;->c:Landroidx/leanback/widget/i;

    .line 38
    .line 39
    const/4 v7, -0x1

    .line 40
    iget-object v8, v0, Lei/b;->d:[[S

    .line 41
    .line 42
    iget-object v9, v0, Lei/h;->m:Lfi/d;

    .line 43
    .line 44
    if-ne v4, v7, :cond_2

    .line 45
    .line 46
    iget v4, v6, Landroidx/leanback/widget/i;->b:I

    .line 47
    .line 48
    aget-object v4, v8, v4

    .line 49
    .line 50
    invoke-virtual {v9, v4, v3, v5}, Lfi/d;->o0([SII)V

    .line 51
    .line 52
    .line 53
    iget-object v3, v0, Lei/h;->o:Lei/e;

    .line 54
    .line 55
    iget-object v4, v3, Lei/e;->d:Lei/b;

    .line 56
    .line 57
    check-cast v4, Lei/h;

    .line 58
    .line 59
    iget v5, v4, Lei/h;->z:I

    .line 60
    .line 61
    add-int/2addr v5, v2

    .line 62
    iget-object v6, v4, Lei/h;->n:Ldi/a;

    .line 63
    .line 64
    invoke-virtual {v6, v5}, Ldi/a;->b(I)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    iget v6, v6, Ldi/a;->g:I

    .line 69
    .line 70
    iget v4, v4, Lei/h;->z:I

    .line 71
    .line 72
    sub-int/2addr v6, v4

    .line 73
    invoke-virtual {v3, v5, v6}, Lei/e;->b(II)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    iget-object v3, v3, Lei/e;->c:[La/b;

    .line 78
    .line 79
    check-cast v3, [Lei/d;

    .line 80
    .line 81
    aget-object v3, v3, v4

    .line 82
    .line 83
    invoke-virtual {v3}, Lei/d;->t()V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_8

    .line 87
    .line 88
    :cond_2
    iget v4, v6, Landroidx/leanback/widget/i;->b:I

    .line 89
    .line 90
    aget-object v4, v8, v4

    .line 91
    .line 92
    invoke-virtual {v9, v4, v3, v2}, Lfi/d;->o0([SII)V

    .line 93
    .line 94
    .line 95
    iget v4, v0, Lei/h;->y:I

    .line 96
    .line 97
    iget-object v7, v0, Lei/b;->e:[S

    .line 98
    .line 99
    const/4 v8, 0x4

    .line 100
    if-ge v4, v8, :cond_9

    .line 101
    .line 102
    iget v4, v6, Landroidx/leanback/widget/i;->b:I

    .line 103
    .line 104
    invoke-virtual {v9, v7, v4, v2}, Lfi/d;->o0([SII)V

    .line 105
    .line 106
    .line 107
    iget v4, v0, Lei/h;->y:I

    .line 108
    .line 109
    iget-object v7, v0, Lei/b;->f:[S

    .line 110
    .line 111
    if-nez v4, :cond_4

    .line 112
    .line 113
    iget v4, v6, Landroidx/leanback/widget/i;->b:I

    .line 114
    .line 115
    invoke-virtual {v9, v7, v4, v5}, Lfi/d;->o0([SII)V

    .line 116
    .line 117
    .line 118
    iget v4, v6, Landroidx/leanback/widget/i;->b:I

    .line 119
    .line 120
    iget-object v7, v0, Lei/b;->i:[[S

    .line 121
    .line 122
    aget-object v4, v7, v4

    .line 123
    .line 124
    if-ne v1, v2, :cond_3

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    const/4 v5, 0x1

    .line 128
    :goto_1
    invoke-virtual {v9, v4, v3, v5}, Lfi/d;->o0([SII)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_4
    iget-object v8, v0, Lei/b;->b:[I

    .line 133
    .line 134
    aget v10, v8, v4

    .line 135
    .line 136
    iget v11, v6, Landroidx/leanback/widget/i;->b:I

    .line 137
    .line 138
    invoke-virtual {v9, v7, v11, v2}, Lfi/d;->o0([SII)V

    .line 139
    .line 140
    .line 141
    iget-object v7, v0, Lei/b;->g:[S

    .line 142
    .line 143
    if-ne v4, v2, :cond_5

    .line 144
    .line 145
    iget v4, v6, Landroidx/leanback/widget/i;->b:I

    .line 146
    .line 147
    invoke-virtual {v9, v7, v4, v5}, Lfi/d;->o0([SII)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    iget v11, v6, Landroidx/leanback/widget/i;->b:I

    .line 152
    .line 153
    invoke-virtual {v9, v7, v11, v2}, Lfi/d;->o0([SII)V

    .line 154
    .line 155
    .line 156
    iget v7, v6, Landroidx/leanback/widget/i;->b:I

    .line 157
    .line 158
    add-int/lit8 v11, v4, -0x2

    .line 159
    .line 160
    iget-object v12, v0, Lei/b;->h:[S

    .line 161
    .line 162
    invoke-virtual {v9, v12, v7, v11}, Lfi/d;->o0([SII)V

    .line 163
    .line 164
    .line 165
    const/4 v7, 0x2

    .line 166
    const/4 v9, 0x3

    .line 167
    if-ne v4, v9, :cond_6

    .line 168
    .line 169
    aget v4, v8, v7

    .line 170
    .line 171
    aput v4, v8, v9

    .line 172
    .line 173
    :cond_6
    aget v4, v8, v2

    .line 174
    .line 175
    aput v4, v8, v7

    .line 176
    .line 177
    :goto_2
    aget v4, v8, v5

    .line 178
    .line 179
    aput v4, v8, v2

    .line 180
    .line 181
    aput v10, v8, v5

    .line 182
    .line 183
    :goto_3
    if-ne v1, v2, :cond_8

    .line 184
    .line 185
    iget v3, v6, Landroidx/leanback/widget/i;->b:I

    .line 186
    .line 187
    const/4 v4, 0x7

    .line 188
    if-ge v3, v4, :cond_7

    .line 189
    .line 190
    const/16 v3, 0x9

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_7
    const/16 v3, 0xb

    .line 194
    .line 195
    :goto_4
    iput v3, v6, Landroidx/leanback/widget/i;->b:I

    .line 196
    .line 197
    goto/16 :goto_8

    .line 198
    .line 199
    :cond_8
    iget-object v4, v0, Lei/h;->q:Lei/g;

    .line 200
    .line 201
    invoke-virtual {v4, v1, v3}, Lei/g;->b(II)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6}, Landroidx/leanback/widget/i;->l()V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_8

    .line 208
    .line 209
    :cond_9
    iget v4, v6, Landroidx/leanback/widget/i;->b:I

    .line 210
    .line 211
    invoke-virtual {v9, v7, v4, v5}, Lfi/d;->o0([SII)V

    .line 212
    .line 213
    .line 214
    iget v4, v0, Lei/h;->y:I

    .line 215
    .line 216
    sub-int/2addr v4, v8

    .line 217
    iget-object v5, v0, Lei/b;->c:Landroidx/leanback/widget/i;

    .line 218
    .line 219
    invoke-virtual {v5}, Landroidx/leanback/widget/i;->m()V

    .line 220
    .line 221
    .line 222
    iget-object v5, v0, Lei/h;->p:Lei/g;

    .line 223
    .line 224
    invoke-virtual {v5, v1, v3}, Lei/g;->b(II)V

    .line 225
    .line 226
    .line 227
    invoke-static {v4}, Lei/h;->e(I)I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    const/4 v5, 0x6

    .line 232
    const/4 v6, 0x3

    .line 233
    const/4 v7, 0x2

    .line 234
    if-ge v1, v5, :cond_a

    .line 235
    .line 236
    add-int/lit8 v5, v1, -0x2

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_a
    const/4 v5, 0x3

    .line 240
    :goto_5
    iget-object v8, v0, Lei/b;->j:[[S

    .line 241
    .line 242
    aget-object v5, v8, v5

    .line 243
    .line 244
    iget-object v8, v0, Lei/h;->m:Lfi/d;

    .line 245
    .line 246
    invoke-virtual {v8, v5, v3}, Lfi/d;->p0([SI)V

    .line 247
    .line 248
    .line 249
    const/4 v5, 0x4

    .line 250
    const/4 v9, 0x1

    .line 251
    const/4 v10, 0x0

    .line 252
    if-lt v3, v5, :cond_10

    .line 253
    .line 254
    ushr-int/lit8 v11, v3, 0x1

    .line 255
    .line 256
    add-int/lit8 v12, v11, -0x1

    .line 257
    .line 258
    and-int/lit8 v13, v3, 0x1

    .line 259
    .line 260
    or-int/2addr v13, v7

    .line 261
    shl-int v12, v13, v12

    .line 262
    .line 263
    sub-int v12, v4, v12

    .line 264
    .line 265
    const/16 v13, 0xe

    .line 266
    .line 267
    if-ge v3, v13, :cond_c

    .line 268
    .line 269
    iget-object v11, v0, Lei/b;->k:[[S

    .line 270
    .line 271
    sub-int/2addr v3, v5

    .line 272
    aget-object v3, v11, v3

    .line 273
    .line 274
    array-length v5, v3

    .line 275
    or-int/2addr v5, v12

    .line 276
    const/4 v11, 0x1

    .line 277
    :cond_b
    and-int/lit8 v12, v5, 0x1

    .line 278
    .line 279
    ushr-int/2addr v5, v9

    .line 280
    invoke-virtual {v8, v3, v11, v12}, Lfi/d;->o0([SII)V

    .line 281
    .line 282
    .line 283
    shl-int/2addr v11, v9

    .line 284
    or-int/2addr v11, v12

    .line 285
    if-ne v5, v9, :cond_b

    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_c
    ushr-int/lit8 v3, v12, 0x4

    .line 289
    .line 290
    add-int/lit8 v11, v11, -0x5

    .line 291
    .line 292
    :goto_6
    iget v5, v8, Lfi/d;->m:I

    .line 293
    .line 294
    ushr-int/2addr v5, v9

    .line 295
    iput v5, v8, Lfi/d;->m:I

    .line 296
    .line 297
    iget-wide v13, v8, Lfi/d;->l:J

    .line 298
    .line 299
    add-int/lit8 v11, v11, -0x1

    .line 300
    .line 301
    ushr-int v15, v3, v11

    .line 302
    .line 303
    and-int/2addr v15, v9

    .line 304
    rsub-int/lit8 v15, v15, 0x0

    .line 305
    .line 306
    and-int/2addr v15, v5

    .line 307
    move/from16 v16, v3

    .line 308
    .line 309
    int-to-long v2, v15

    .line 310
    add-long/2addr v13, v2

    .line 311
    iput-wide v13, v8, Lfi/d;->l:J

    .line 312
    .line 313
    const/high16 v2, -0x1000000

    .line 314
    .line 315
    and-int/2addr v2, v5

    .line 316
    if-nez v2, :cond_d

    .line 317
    .line 318
    shl-int/lit8 v2, v5, 0x8

    .line 319
    .line 320
    iput v2, v8, Lfi/d;->m:I

    .line 321
    .line 322
    invoke-virtual {v8}, Lfi/d;->t0()V

    .line 323
    .line 324
    .line 325
    :cond_d
    if-nez v11, :cond_f

    .line 326
    .line 327
    and-int/lit8 v2, v12, 0xf

    .line 328
    .line 329
    iget-object v3, v0, Lei/b;->l:[S

    .line 330
    .line 331
    array-length v5, v3

    .line 332
    or-int/2addr v2, v5

    .line 333
    const/4 v5, 0x1

    .line 334
    :cond_e
    and-int/lit8 v11, v2, 0x1

    .line 335
    .line 336
    ushr-int/2addr v2, v9

    .line 337
    invoke-virtual {v8, v3, v5, v11}, Lfi/d;->o0([SII)V

    .line 338
    .line 339
    .line 340
    shl-int/2addr v5, v9

    .line 341
    or-int/2addr v5, v11

    .line 342
    if-ne v2, v9, :cond_e

    .line 343
    .line 344
    iget v2, v0, Lei/h;->t:I

    .line 345
    .line 346
    sub-int/2addr v2, v9

    .line 347
    iput v2, v0, Lei/h;->t:I

    .line 348
    .line 349
    goto :goto_7

    .line 350
    :cond_f
    move/from16 v3, v16

    .line 351
    .line 352
    const/4 v2, 0x1

    .line 353
    goto :goto_6

    .line 354
    :cond_10
    :goto_7
    iget-object v2, v0, Lei/b;->b:[I

    .line 355
    .line 356
    aget v3, v2, v7

    .line 357
    .line 358
    aput v3, v2, v6

    .line 359
    .line 360
    aget v3, v2, v9

    .line 361
    .line 362
    aput v3, v2, v7

    .line 363
    .line 364
    aget v3, v2, v10

    .line 365
    .line 366
    aput v3, v2, v9

    .line 367
    .line 368
    aput v4, v2, v10

    .line 369
    .line 370
    iget v2, v0, Lei/h;->s:I

    .line 371
    .line 372
    sub-int/2addr v2, v9

    .line 373
    iput v2, v0, Lei/h;->s:I

    .line 374
    .line 375
    :goto_8
    iget v2, v0, Lei/h;->z:I

    .line 376
    .line 377
    sub-int/2addr v2, v1

    .line 378
    iput v2, v0, Lei/h;->z:I

    .line 379
    .line 380
    iget v2, v0, Lei/h;->A:I

    .line 381
    .line 382
    add-int/2addr v2, v1

    .line 383
    iput v2, v0, Lei/h;->A:I

    .line 384
    .line 385
    const/4 v1, 0x1

    .line 386
    return v1
.end method

.method public final f(ILandroidx/leanback/widget/i;I)I
    .locals 4

    .line 1
    iget v0, p2, Landroidx/leanback/widget/i;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lei/b;->d:[[S

    .line 4
    .line 5
    aget-object v0, v1, v0

    .line 6
    .line 7
    aget-short v0, v0, p3

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v0, v1}, Lfi/d;->q0(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v2, p2, Landroidx/leanback/widget/i;->b:I

    .line 15
    .line 16
    iget-object v3, p0, Lei/b;->e:[S

    .line 17
    .line 18
    aget-short v2, v3, v2

    .line 19
    .line 20
    invoke-static {v2, v1}, Lfi/d;->q0(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v1, v0

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v1, v0, p2, p3}, Lei/h;->g(IILandroidx/leanback/widget/i;I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iget-object v0, p0, Lei/h;->q:Lei/g;

    .line 31
    .line 32
    iget-object v0, v0, Lei/g;->f:[[I

    .line 33
    .line 34
    aget-object p3, v0, p3

    .line 35
    .line 36
    add-int/lit8 p1, p1, -0x2

    .line 37
    .line 38
    aget p1, p3, p1

    .line 39
    .line 40
    add-int/2addr p1, p2

    .line 41
    return p1
.end method

.method public final g(IILandroidx/leanback/widget/i;I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lei/b;->f:[S

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iget p2, p3, Landroidx/leanback/widget/i;->b:I

    .line 8
    .line 9
    aget-short p2, v1, p2

    .line 10
    .line 11
    invoke-static {p2, v0}, Lfi/d;->q0(II)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    iget p3, p3, Landroidx/leanback/widget/i;->b:I

    .line 16
    .line 17
    iget-object v0, p0, Lei/b;->i:[[S

    .line 18
    .line 19
    aget-object p3, v0, p3

    .line 20
    .line 21
    aget-short p3, p3, p4

    .line 22
    .line 23
    invoke-static {p3, v2}, Lfi/d;->q0(II)I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    add-int/2addr p3, p2

    .line 28
    add-int/2addr p3, p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget p4, p3, Landroidx/leanback/widget/i;->b:I

    .line 31
    .line 32
    aget-short p4, v1, p4

    .line 33
    .line 34
    invoke-static {p4, v2}, Lfi/d;->q0(II)I

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    add-int/2addr p4, p1

    .line 39
    iget-object p1, p0, Lei/b;->g:[S

    .line 40
    .line 41
    if-ne p2, v2, :cond_1

    .line 42
    .line 43
    iget p2, p3, Landroidx/leanback/widget/i;->b:I

    .line 44
    .line 45
    aget-short p1, p1, p2

    .line 46
    .line 47
    invoke-static {p1, v0}, Lfi/d;->q0(II)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    add-int p3, p1, p4

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget v0, p3, Landroidx/leanback/widget/i;->b:I

    .line 55
    .line 56
    aget-short p1, p1, v0

    .line 57
    .line 58
    invoke-static {p1, v2}, Lfi/d;->q0(II)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iget p3, p3, Landroidx/leanback/widget/i;->b:I

    .line 63
    .line 64
    iget-object v0, p0, Lei/b;->h:[S

    .line 65
    .line 66
    aget-short p3, v0, p3

    .line 67
    .line 68
    add-int/lit8 p2, p2, -0x2

    .line 69
    .line 70
    invoke-static {p3, p2}, Lfi/d;->q0(II)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    add-int/2addr p2, p1

    .line 75
    add-int p3, p2, p4

    .line 76
    .line 77
    :goto_0
    return p3
.end method

.method public final h(IIII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lei/h;->p:Lei/g;

    .line 2
    .line 3
    iget-object v0, v0, Lei/g;->f:[[I

    .line 4
    .line 5
    aget-object p4, v0, p4

    .line 6
    .line 7
    add-int/lit8 v0, p3, -0x2

    .line 8
    .line 9
    aget p4, p4, v0

    .line 10
    .line 11
    add-int/2addr p4, p1

    .line 12
    const/4 p1, 0x6

    .line 13
    if-ge p3, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x3

    .line 17
    :goto_0
    const/16 p1, 0x80

    .line 18
    .line 19
    if-ge p2, p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lei/h;->w:[[I

    .line 22
    .line 23
    aget-object p1, p1, v0

    .line 24
    .line 25
    aget p1, p1, p2

    .line 26
    .line 27
    add-int/2addr p4, p1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-static {p2}, Lei/h;->e(I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object p3, p0, Lei/h;->v:[[I

    .line 34
    .line 35
    aget-object p3, p3, v0

    .line 36
    .line 37
    aget p1, p3, p1

    .line 38
    .line 39
    and-int/lit8 p2, p2, 0xf

    .line 40
    .line 41
    iget-object p3, p0, Lei/h;->x:[I

    .line 42
    .line 43
    aget p2, p3, p2

    .line 44
    .line 45
    add-int/2addr p1, p2

    .line 46
    add-int/2addr p4, p1

    .line 47
    :goto_1
    return p4
.end method

.method public final i()Landroidx/room/s;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lei/h;->z:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iput v1, v0, Lei/h;->z:I

    .line 8
    .line 9
    iget-object v1, v0, Lei/h;->n:Ldi/a;

    .line 10
    .line 11
    iget v2, v1, Ldi/a;->l:I

    .line 12
    .line 13
    packed-switch v2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget-object v2, v1, Ldi/a;->o:Landroidx/room/s;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    iput v3, v2, Landroidx/room/s;->b:I

    .line 20
    .line 21
    invoke-virtual {v1}, Ldi/a;->f()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iget v5, v1, Ldi/a;->c:I

    .line 26
    .line 27
    iget v6, v1, Ldi/a;->d:I

    .line 28
    .line 29
    if-ge v4, v5, :cond_1

    .line 30
    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    goto/16 :goto_e

    .line 34
    .line 35
    :cond_0
    if-le v6, v4, :cond_2

    .line 36
    .line 37
    move v6, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v4, v5

    .line 40
    :cond_2
    :goto_0
    iget v5, v1, Ldi/a;->g:I

    .line 41
    .line 42
    iget-object v7, v1, Ldi/a;->m:Ldi/b;

    .line 43
    .line 44
    iget-object v8, v1, Ldi/a;->e:[B

    .line 45
    .line 46
    invoke-virtual {v7, v5, v8}, Ldi/b;->a(I[B)V

    .line 47
    .line 48
    .line 49
    iget v5, v1, Ldi/a;->s:I

    .line 50
    .line 51
    iget-object v9, v7, Ldi/b;->b:[I

    .line 52
    .line 53
    iget v10, v7, Ldi/b;->f:I

    .line 54
    .line 55
    aget v9, v9, v10

    .line 56
    .line 57
    sub-int v9, v5, v9

    .line 58
    .line 59
    iget-object v10, v7, Ldi/b;->c:[I

    .line 60
    .line 61
    iget v11, v7, Ldi/b;->g:I

    .line 62
    .line 63
    aget v10, v10, v11

    .line 64
    .line 65
    sub-int v10, v5, v10

    .line 66
    .line 67
    iget-object v11, v7, Ldi/b;->d:[I

    .line 68
    .line 69
    iget v12, v7, Ldi/b;->h:I

    .line 70
    .line 71
    aget v11, v11, v12

    .line 72
    .line 73
    invoke-virtual {v7, v5}, Ldi/b;->b(I)V

    .line 74
    .line 75
    .line 76
    iget v5, v1, Ldi/a;->r:I

    .line 77
    .line 78
    iget-object v7, v1, Ldi/a;->n:[I

    .line 79
    .line 80
    aput v11, v7, v5

    .line 81
    .line 82
    iget-object v12, v2, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v12, [I

    .line 85
    .line 86
    iget-object v13, v2, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v13, [I

    .line 89
    .line 90
    iget v14, v1, Ldi/a;->q:I

    .line 91
    .line 92
    if-ge v9, v14, :cond_3

    .line 93
    .line 94
    iget v15, v1, Ldi/a;->g:I

    .line 95
    .line 96
    sub-int v16, v15, v9

    .line 97
    .line 98
    aget-byte v5, v8, v16

    .line 99
    .line 100
    aget-byte v15, v8, v15

    .line 101
    .line 102
    if-ne v5, v15, :cond_3

    .line 103
    .line 104
    const/4 v5, 0x2

    .line 105
    aput v5, v13, v3

    .line 106
    .line 107
    add-int/lit8 v15, v9, -0x1

    .line 108
    .line 109
    aput v15, v12, v3

    .line 110
    .line 111
    const/4 v15, 0x1

    .line 112
    iput v15, v2, Landroidx/room/s;->b:I

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    const/4 v5, 0x0

    .line 116
    :goto_1
    if-eq v9, v10, :cond_4

    .line 117
    .line 118
    if-ge v10, v14, :cond_4

    .line 119
    .line 120
    iget v3, v1, Ldi/a;->g:I

    .line 121
    .line 122
    sub-int v17, v3, v10

    .line 123
    .line 124
    aget-byte v15, v8, v17

    .line 125
    .line 126
    aget-byte v3, v8, v3

    .line 127
    .line 128
    if-ne v15, v3, :cond_4

    .line 129
    .line 130
    iget v3, v2, Landroidx/room/s;->b:I

    .line 131
    .line 132
    add-int/lit8 v5, v3, 0x1

    .line 133
    .line 134
    iput v5, v2, Landroidx/room/s;->b:I

    .line 135
    .line 136
    add-int/lit8 v5, v10, -0x1

    .line 137
    .line 138
    aput v5, v12, v3

    .line 139
    .line 140
    move v9, v10

    .line 141
    const/4 v5, 0x3

    .line 142
    :cond_4
    iget v3, v2, Landroidx/room/s;->b:I

    .line 143
    .line 144
    if-lez v3, :cond_5

    .line 145
    .line 146
    iget v3, v1, Ldi/a;->g:I

    .line 147
    .line 148
    invoke-static {v8, v3, v9, v5, v4}, Lcom/bumptech/glide/d;->A([BIIII)I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    iget v3, v2, Landroidx/room/s;->b:I

    .line 153
    .line 154
    const/4 v9, 0x1

    .line 155
    sub-int/2addr v3, v9

    .line 156
    aput v5, v13, v3

    .line 157
    .line 158
    if-lt v5, v6, :cond_5

    .line 159
    .line 160
    goto/16 :goto_e

    .line 161
    .line 162
    :cond_5
    const/4 v3, 0x3

    .line 163
    if-ge v5, v3, :cond_6

    .line 164
    .line 165
    const/4 v15, 0x3

    .line 166
    goto :goto_2

    .line 167
    :cond_6
    move v15, v5

    .line 168
    :goto_2
    iget v3, v1, Ldi/a;->p:I

    .line 169
    .line 170
    :goto_3
    iget v5, v1, Ldi/a;->s:I

    .line 171
    .line 172
    sub-int/2addr v5, v11

    .line 173
    add-int/lit8 v9, v3, -0x1

    .line 174
    .line 175
    if-eqz v3, :cond_19

    .line 176
    .line 177
    if-lt v5, v14, :cond_7

    .line 178
    .line 179
    goto/16 :goto_e

    .line 180
    .line 181
    :cond_7
    iget v3, v1, Ldi/a;->r:I

    .line 182
    .line 183
    sub-int v10, v3, v5

    .line 184
    .line 185
    if-le v5, v3, :cond_8

    .line 186
    .line 187
    move v3, v14

    .line 188
    goto :goto_4

    .line 189
    :cond_8
    const/4 v3, 0x0

    .line 190
    :goto_4
    add-int/2addr v10, v3

    .line 191
    aget v11, v7, v10

    .line 192
    .line 193
    iget v3, v1, Ldi/a;->g:I

    .line 194
    .line 195
    add-int v10, v3, v15

    .line 196
    .line 197
    sub-int v17, v10, v5

    .line 198
    .line 199
    aget-byte v0, v8, v17

    .line 200
    .line 201
    aget-byte v10, v8, v10

    .line 202
    .line 203
    if-ne v0, v10, :cond_a

    .line 204
    .line 205
    sub-int v0, v3, v5

    .line 206
    .line 207
    aget-byte v0, v8, v0

    .line 208
    .line 209
    aget-byte v10, v8, v3

    .line 210
    .line 211
    if-ne v0, v10, :cond_a

    .line 212
    .line 213
    const/4 v0, 0x1

    .line 214
    invoke-static {v8, v3, v5, v0, v4}, Lcom/bumptech/glide/d;->A([BIIII)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-le v3, v15, :cond_b

    .line 219
    .line 220
    iget v10, v2, Landroidx/room/s;->b:I

    .line 221
    .line 222
    aput v3, v13, v10

    .line 223
    .line 224
    add-int/lit8 v5, v5, -0x1

    .line 225
    .line 226
    aput v5, v12, v10

    .line 227
    .line 228
    add-int/2addr v10, v0

    .line 229
    iput v10, v2, Landroidx/room/s;->b:I

    .line 230
    .line 231
    if-lt v3, v6, :cond_9

    .line 232
    .line 233
    goto/16 :goto_e

    .line 234
    .line 235
    :cond_9
    move v15, v3

    .line 236
    goto :goto_5

    .line 237
    :cond_a
    const/4 v0, 0x1

    .line 238
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    .line 239
    .line 240
    move v3, v9

    .line 241
    goto :goto_3

    .line 242
    :pswitch_0
    iget-object v2, v1, Ldi/a;->o:Landroidx/room/s;

    .line 243
    .line 244
    const/4 v0, 0x0

    .line 245
    iput v0, v2, Landroidx/room/s;->b:I

    .line 246
    .line 247
    invoke-virtual {v1}, Ldi/a;->d()I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    iget v4, v1, Ldi/a;->c:I

    .line 252
    .line 253
    iget v5, v1, Ldi/a;->d:I

    .line 254
    .line 255
    if-ge v3, v4, :cond_d

    .line 256
    .line 257
    if-nez v3, :cond_c

    .line 258
    .line 259
    goto/16 :goto_e

    .line 260
    .line 261
    :cond_c
    if-le v5, v3, :cond_e

    .line 262
    .line 263
    move v5, v3

    .line 264
    goto :goto_6

    .line 265
    :cond_d
    move v3, v4

    .line 266
    :cond_e
    :goto_6
    iget v4, v1, Ldi/a;->g:I

    .line 267
    .line 268
    iget-object v6, v1, Ldi/a;->m:Ldi/b;

    .line 269
    .line 270
    iget-object v7, v1, Ldi/a;->e:[B

    .line 271
    .line 272
    invoke-virtual {v6, v4, v7}, Ldi/b;->a(I[B)V

    .line 273
    .line 274
    .line 275
    iget v4, v1, Ldi/a;->s:I

    .line 276
    .line 277
    iget-object v8, v6, Ldi/b;->b:[I

    .line 278
    .line 279
    iget v9, v6, Ldi/b;->f:I

    .line 280
    .line 281
    aget v8, v8, v9

    .line 282
    .line 283
    sub-int v8, v4, v8

    .line 284
    .line 285
    iget-object v9, v6, Ldi/b;->c:[I

    .line 286
    .line 287
    iget v10, v6, Ldi/b;->g:I

    .line 288
    .line 289
    aget v9, v9, v10

    .line 290
    .line 291
    sub-int v9, v4, v9

    .line 292
    .line 293
    iget-object v10, v6, Ldi/b;->d:[I

    .line 294
    .line 295
    iget v11, v6, Ldi/b;->h:I

    .line 296
    .line 297
    aget v10, v10, v11

    .line 298
    .line 299
    invoke-virtual {v6, v4}, Ldi/b;->b(I)V

    .line 300
    .line 301
    .line 302
    const/4 v4, 0x1

    .line 303
    iget-object v6, v2, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v6, [I

    .line 306
    .line 307
    iget-object v11, v2, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v11, [I

    .line 310
    .line 311
    iget v12, v1, Ldi/a;->q:I

    .line 312
    .line 313
    if-ge v8, v12, :cond_f

    .line 314
    .line 315
    iget v13, v1, Ldi/a;->g:I

    .line 316
    .line 317
    sub-int v14, v13, v8

    .line 318
    .line 319
    aget-byte v14, v7, v14

    .line 320
    .line 321
    aget-byte v13, v7, v13

    .line 322
    .line 323
    if-ne v14, v13, :cond_f

    .line 324
    .line 325
    const/4 v13, 0x2

    .line 326
    aput v13, v11, v0

    .line 327
    .line 328
    add-int/lit8 v14, v8, -0x1

    .line 329
    .line 330
    aput v14, v6, v0

    .line 331
    .line 332
    iput v4, v2, Landroidx/room/s;->b:I

    .line 333
    .line 334
    goto :goto_7

    .line 335
    :cond_f
    const/4 v13, 0x0

    .line 336
    :goto_7
    const/4 v14, 0x3

    .line 337
    if-eq v8, v9, :cond_10

    .line 338
    .line 339
    if-ge v9, v12, :cond_10

    .line 340
    .line 341
    iget v15, v1, Ldi/a;->g:I

    .line 342
    .line 343
    sub-int v16, v15, v9

    .line 344
    .line 345
    aget-byte v0, v7, v16

    .line 346
    .line 347
    aget-byte v15, v7, v15

    .line 348
    .line 349
    if-ne v0, v15, :cond_10

    .line 350
    .line 351
    iget v0, v2, Landroidx/room/s;->b:I

    .line 352
    .line 353
    add-int/lit8 v8, v0, 0x1

    .line 354
    .line 355
    iput v8, v2, Landroidx/room/s;->b:I

    .line 356
    .line 357
    add-int/lit8 v8, v9, -0x1

    .line 358
    .line 359
    aput v8, v6, v0

    .line 360
    .line 361
    move v8, v9

    .line 362
    const/4 v13, 0x3

    .line 363
    :cond_10
    iget v0, v2, Landroidx/room/s;->b:I

    .line 364
    .line 365
    if-lez v0, :cond_11

    .line 366
    .line 367
    iget v0, v1, Ldi/a;->g:I

    .line 368
    .line 369
    invoke-static {v7, v0, v8, v13, v3}, Lcom/bumptech/glide/d;->A([BIIII)I

    .line 370
    .line 371
    .line 372
    move-result v13

    .line 373
    iget v0, v2, Landroidx/room/s;->b:I

    .line 374
    .line 375
    sub-int/2addr v0, v4

    .line 376
    aput v13, v11, v0

    .line 377
    .line 378
    if-lt v13, v5, :cond_11

    .line 379
    .line 380
    invoke-virtual {v1, v5, v10}, Ldi/a;->k(II)V

    .line 381
    .line 382
    .line 383
    goto/16 :goto_e

    .line 384
    .line 385
    :cond_11
    if-ge v13, v14, :cond_12

    .line 386
    .line 387
    goto :goto_8

    .line 388
    :cond_12
    move v14, v13

    .line 389
    :goto_8
    iget v0, v1, Ldi/a;->r:I

    .line 390
    .line 391
    shl-int/2addr v0, v4

    .line 392
    add-int/lit8 v8, v0, 0x1

    .line 393
    .line 394
    iget v9, v1, Ldi/a;->p:I

    .line 395
    .line 396
    const/4 v13, 0x0

    .line 397
    const/4 v15, 0x0

    .line 398
    :goto_9
    iget v4, v1, Ldi/a;->s:I

    .line 399
    .line 400
    sub-int/2addr v4, v10

    .line 401
    add-int/lit8 v17, v9, -0x1

    .line 402
    .line 403
    move/from16 v18, v10

    .line 404
    .line 405
    iget-object v10, v1, Ldi/a;->n:[I

    .line 406
    .line 407
    if-eqz v9, :cond_13

    .line 408
    .line 409
    if-lt v4, v12, :cond_14

    .line 410
    .line 411
    :cond_13
    const/4 v1, 0x0

    .line 412
    goto/16 :goto_d

    .line 413
    .line 414
    :cond_14
    iget v9, v1, Ldi/a;->r:I

    .line 415
    .line 416
    sub-int v19, v9, v4

    .line 417
    .line 418
    if-le v4, v9, :cond_15

    .line 419
    .line 420
    move v9, v12

    .line 421
    goto :goto_a

    .line 422
    :cond_15
    const/4 v9, 0x0

    .line 423
    :goto_a
    add-int v19, v19, v9

    .line 424
    .line 425
    const/4 v9, 0x1

    .line 426
    shl-int/lit8 v19, v19, 0x1

    .line 427
    .line 428
    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    .line 429
    .line 430
    .line 431
    move-result v9

    .line 432
    move/from16 v20, v12

    .line 433
    .line 434
    iget v12, v1, Ldi/a;->g:I

    .line 435
    .line 436
    add-int v21, v12, v9

    .line 437
    .line 438
    sub-int v22, v21, v4

    .line 439
    .line 440
    move/from16 v23, v13

    .line 441
    .line 442
    aget-byte v13, v7, v22

    .line 443
    .line 444
    move/from16 v22, v15

    .line 445
    .line 446
    aget-byte v15, v7, v21

    .line 447
    .line 448
    if-ne v13, v15, :cond_17

    .line 449
    .line 450
    add-int/lit8 v9, v9, 0x1

    .line 451
    .line 452
    invoke-static {v7, v12, v4, v9, v3}, Lcom/bumptech/glide/d;->A([BIIII)I

    .line 453
    .line 454
    .line 455
    move-result v9

    .line 456
    if-le v9, v14, :cond_17

    .line 457
    .line 458
    iget v12, v2, Landroidx/room/s;->b:I

    .line 459
    .line 460
    aput v9, v11, v12

    .line 461
    .line 462
    add-int/lit8 v13, v4, -0x1

    .line 463
    .line 464
    aput v13, v6, v12

    .line 465
    .line 466
    const/4 v13, 0x1

    .line 467
    add-int/2addr v12, v13

    .line 468
    iput v12, v2, Landroidx/room/s;->b:I

    .line 469
    .line 470
    if-lt v9, v5, :cond_16

    .line 471
    .line 472
    aget v1, v10, v19

    .line 473
    .line 474
    aput v1, v10, v0

    .line 475
    .line 476
    add-int/lit8 v19, v19, 0x1

    .line 477
    .line 478
    aget v0, v10, v19

    .line 479
    .line 480
    aput v0, v10, v8

    .line 481
    .line 482
    goto :goto_e

    .line 483
    :cond_16
    move v14, v9

    .line 484
    goto :goto_b

    .line 485
    :cond_17
    const/4 v13, 0x1

    .line 486
    :goto_b
    iget v12, v1, Ldi/a;->g:I

    .line 487
    .line 488
    add-int/2addr v12, v9

    .line 489
    sub-int v4, v12, v4

    .line 490
    .line 491
    aget-byte v4, v7, v4

    .line 492
    .line 493
    and-int/lit16 v4, v4, 0xff

    .line 494
    .line 495
    aget-byte v12, v7, v12

    .line 496
    .line 497
    and-int/lit16 v12, v12, 0xff

    .line 498
    .line 499
    if-ge v4, v12, :cond_18

    .line 500
    .line 501
    aput v18, v10, v0

    .line 502
    .line 503
    add-int/lit8 v19, v19, 0x1

    .line 504
    .line 505
    aget v0, v10, v19

    .line 506
    .line 507
    move v10, v0

    .line 508
    move v15, v9

    .line 509
    move/from16 v0, v19

    .line 510
    .line 511
    goto :goto_c

    .line 512
    :cond_18
    aput v18, v10, v8

    .line 513
    .line 514
    aget v4, v10, v19

    .line 515
    .line 516
    move v10, v4

    .line 517
    move/from16 v23, v9

    .line 518
    .line 519
    move/from16 v8, v19

    .line 520
    .line 521
    move/from16 v15, v22

    .line 522
    .line 523
    :goto_c
    move/from16 v9, v17

    .line 524
    .line 525
    move/from16 v12, v20

    .line 526
    .line 527
    move/from16 v13, v23

    .line 528
    .line 529
    goto/16 :goto_9

    .line 530
    .line 531
    :goto_d
    aput v1, v10, v8

    .line 532
    .line 533
    aput v1, v10, v0

    .line 534
    .line 535
    :cond_19
    :goto_e
    return-object v2

    .line 536
    nop

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract j()I
.end method

.method public final k(I)V
    .locals 1

    .line 1
    iget v0, p0, Lei/h;->z:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lei/h;->z:I

    .line 5
    .line 6
    iget-object v0, p0, Lei/h;->n:Ldi/a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ldi/a;->j(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
