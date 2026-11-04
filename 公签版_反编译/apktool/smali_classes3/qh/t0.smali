.class public final Lqh/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final u:[C

.field public static final v:[I


# instance fields
.field public final a:Lqh/b;

.field public final b:Lph/k;

.field public c:Lqh/k3;

.field public d:Lqh/r0;

.field public e:Z

.field public final f:Lkf/d;

.field public final g:I

.field public final h:Lqh/o0;

.field public final i:Lqh/n0;

.field public j:Lqh/p0;

.field public final k:Lqh/j0;

.field public final l:Lqh/l0;

.field public final m:Lqh/k0;

.field public final n:Lqh/q0;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:I

.field public final s:[I

.field public final t:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    new-array v1, v1, [C

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    sput-object v1, Lqh/t0;->u:[C

    .line 10
    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    fill-array-data v0, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v0, Lqh/t0;->v:[I

    .line 17
    .line 18
    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    nop

    .line 35
    :array_1
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method public constructor <init>(Lqh/c;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lqh/k3;->a:Lqh/e1;

    .line 5
    .line 6
    iput-object v0, p0, Lqh/t0;->c:Lqh/k3;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lqh/t0;->d:Lqh/r0;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lqh/t0;->e:Z

    .line 13
    .line 14
    new-instance v1, Lkf/d;

    .line 15
    .line 16
    const/16 v2, 0xc

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v1, v2, v3}, Lkf/d;-><init>(IZ)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lqh/t0;->f:Lkf/d;

    .line 23
    .line 24
    new-instance v1, Lqh/j0;

    .line 25
    .line 26
    invoke-direct {v1}, Lqh/j0;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lqh/t0;->k:Lqh/j0;

    .line 30
    .line 31
    new-instance v1, Lqh/l0;

    .line 32
    .line 33
    invoke-direct {v1}, Lqh/l0;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lqh/t0;->l:Lqh/l0;

    .line 37
    .line 38
    new-instance v1, Lqh/k0;

    .line 39
    .line 40
    invoke-direct {v1}, Lqh/k0;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lqh/t0;->m:Lqh/k0;

    .line 44
    .line 45
    iput v0, p0, Lqh/t0;->r:I

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    new-array v1, v0, [I

    .line 49
    .line 50
    iput-object v1, p0, Lqh/t0;->s:[I

    .line 51
    .line 52
    const/4 v1, 0x2

    .line 53
    new-array v1, v1, [I

    .line 54
    .line 55
    iput-object v1, p0, Lqh/t0;->t:[I

    .line 56
    .line 57
    iput v0, p0, Lqh/t0;->g:I

    .line 58
    .line 59
    new-instance v0, Lqh/o0;

    .line 60
    .line 61
    invoke-direct {v0, p1}, Lqh/o0;-><init>(Lqh/c;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lqh/t0;->h:Lqh/o0;

    .line 65
    .line 66
    iput-object v0, p0, Lqh/t0;->j:Lqh/p0;

    .line 67
    .line 68
    new-instance v0, Lqh/n0;

    .line 69
    .line 70
    invoke-direct {v0, p1}, Lqh/n0;-><init>(Lqh/c;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lqh/t0;->i:Lqh/n0;

    .line 74
    .line 75
    new-instance v0, Lqh/q0;

    .line 76
    .line 77
    invoke-direct {v0, p1}, Lqh/q0;-><init>(Lqh/c;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lqh/t0;->n:Lqh/q0;

    .line 81
    .line 82
    iget-object v0, p1, Lqh/c;->b:Lqh/b;

    .line 83
    .line 84
    iput-object v0, p0, Lqh/t0;->a:Lqh/b;

    .line 85
    .line 86
    iget-object p1, p1, Lqh/c;->a:Lqh/e0;

    .line 87
    .line 88
    iget-object p1, p1, Lqh/e0;->b:Lph/k;

    .line 89
    .line 90
    iput-object p1, p0, Lqh/t0;->b:Lph/k;

    .line 91
    .line 92
    return-void
.end method


# virtual methods
.method public final a(Lqh/k3;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lqh/t0;->o(Lqh/k3;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lqh/t0;->a:Lqh/b;

    .line 5
    .line 6
    invoke-virtual {p1}, Lqh/b;->r()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lqh/t0;->b:Lph/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lph/k;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lba/h;

    .line 10
    .line 11
    const-string v2, "Invalid character reference: "

    .line 12
    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p2, p0, Lqh/t0;->a:Lqh/b;

    .line 22
    .line 23
    invoke-direct {v1, p2, p1}, Lba/h;-><init>(Lqh/b;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Character;Z)[I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    iget-object v4, v0, Lqh/t0;->a:Lqh/b;

    .line 6
    .line 7
    invoke-virtual {v4}, Lqh/b;->R()Z

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    const/4 v6, 0x0

    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    return-object v6

    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Character;->charValue()C

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    invoke-virtual {v4}, Lqh/b;->Q()C

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-ne v5, v7, :cond_1

    .line 26
    .line 27
    return-object v6

    .line 28
    :cond_1
    sget-object v5, Lqh/t0;->u:[C

    .line 29
    .line 30
    invoke-virtual {v4}, Lqh/b;->A()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Lqh/b;->R()Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-nez v7, :cond_2

    .line 38
    .line 39
    iget-object v7, v4, Lqh/b;->c:[C

    .line 40
    .line 41
    iget v8, v4, Lqh/b;->d:I

    .line 42
    .line 43
    aget-char v7, v7, v8

    .line 44
    .line 45
    invoke-static {v5, v7}, Ljava/util/Arrays;->binarySearch([CC)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-ltz v5, :cond_2

    .line 50
    .line 51
    return-object v6

    .line 52
    :cond_2
    iget v5, v4, Lqh/b;->e:I

    .line 53
    .line 54
    iget v7, v4, Lqh/b;->d:I

    .line 55
    .line 56
    sub-int/2addr v5, v7

    .line 57
    const/16 v7, 0x400

    .line 58
    .line 59
    if-ge v5, v7, :cond_3

    .line 60
    .line 61
    iput v2, v4, Lqh/b;->f:I

    .line 62
    .line 63
    :cond_3
    invoke-virtual {v4}, Lqh/b;->A()V

    .line 64
    .line 65
    .line 66
    iget v5, v4, Lqh/b;->d:I

    .line 67
    .line 68
    iput v5, v4, Lqh/b;->h:I

    .line 69
    .line 70
    const-string v5, "#"

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Lqh/b;->T(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    const/4 v7, -0x1

    .line 77
    const-string v8, ";"

    .line 78
    .line 79
    const-string v9, ""

    .line 80
    .line 81
    iget-object v10, v0, Lqh/t0;->s:[I

    .line 82
    .line 83
    if-eqz v5, :cond_e

    .line 84
    .line 85
    const-string v5, "X"

    .line 86
    .line 87
    invoke-virtual {v4, v5}, Lqh/b;->U(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_5

    .line 92
    .line 93
    invoke-virtual {v4}, Lqh/b;->A()V

    .line 94
    .line 95
    .line 96
    iget v11, v4, Lqh/b;->d:I

    .line 97
    .line 98
    iget v12, v4, Lqh/b;->e:I

    .line 99
    .line 100
    iget-object v13, v4, Lqh/b;->c:[C

    .line 101
    .line 102
    move v14, v11

    .line 103
    :goto_0
    if-ge v14, v12, :cond_4

    .line 104
    .line 105
    aget-char v15, v13, v14

    .line 106
    .line 107
    invoke-static {v15}, Loh/f;->h(C)Z

    .line 108
    .line 109
    .line 110
    move-result v15

    .line 111
    if-eqz v15, :cond_4

    .line 112
    .line 113
    add-int/2addr v14, v3

    .line 114
    goto :goto_0

    .line 115
    :cond_4
    iput v14, v4, Lqh/b;->d:I

    .line 116
    .line 117
    if-le v14, v11, :cond_7

    .line 118
    .line 119
    iget-object v9, v4, Lqh/b;->c:[C

    .line 120
    .line 121
    iget-object v12, v4, Lqh/b;->a:[Ljava/lang/String;

    .line 122
    .line 123
    sub-int/2addr v14, v11

    .line 124
    invoke-static {v9, v12, v11, v14}, Lqh/b;->J([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    goto :goto_2

    .line 129
    :cond_5
    invoke-virtual {v4}, Lqh/b;->A()V

    .line 130
    .line 131
    .line 132
    iget v11, v4, Lqh/b;->d:I

    .line 133
    .line 134
    iget v12, v4, Lqh/b;->e:I

    .line 135
    .line 136
    iget-object v13, v4, Lqh/b;->c:[C

    .line 137
    .line 138
    move v14, v11

    .line 139
    :goto_1
    if-ge v14, v12, :cond_6

    .line 140
    .line 141
    aget-char v15, v13, v14

    .line 142
    .line 143
    const/16 v1, 0x30

    .line 144
    .line 145
    if-lt v15, v1, :cond_6

    .line 146
    .line 147
    const/16 v1, 0x39

    .line 148
    .line 149
    if-gt v15, v1, :cond_6

    .line 150
    .line 151
    add-int/2addr v14, v3

    .line 152
    goto :goto_1

    .line 153
    :cond_6
    iput v14, v4, Lqh/b;->d:I

    .line 154
    .line 155
    if-le v14, v11, :cond_7

    .line 156
    .line 157
    iget-object v1, v4, Lqh/b;->c:[C

    .line 158
    .line 159
    iget-object v9, v4, Lqh/b;->a:[Ljava/lang/String;

    .line 160
    .line 161
    sub-int/2addr v14, v11

    .line 162
    invoke-static {v1, v9, v11, v14}, Lqh/b;->J([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    :cond_7
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_8

    .line 171
    .line 172
    const-string v1, "numeric reference with no numerals"

    .line 173
    .line 174
    new-array v2, v2, [Ljava/lang/Object;

    .line 175
    .line 176
    invoke-virtual {v0, v1, v2}, Lqh/t0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4}, Lqh/b;->c0()V

    .line 180
    .line 181
    .line 182
    return-object v6

    .line 183
    :cond_8
    iput v7, v4, Lqh/b;->h:I

    .line 184
    .line 185
    invoke-virtual {v4, v8}, Lqh/b;->T(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_9

    .line 190
    .line 191
    const-string v1, "missing semicolon on [&#%s]"

    .line 192
    .line 193
    new-array v4, v3, [Ljava/lang/Object;

    .line 194
    .line 195
    aput-object v9, v4, v2

    .line 196
    .line 197
    invoke-virtual {v0, v1, v4}, Lqh/t0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_9
    if-eqz v5, :cond_a

    .line 201
    .line 202
    const/16 v1, 0x10

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_a
    const/16 v1, 0xa

    .line 206
    .line 207
    :goto_3
    :try_start_0
    invoke-static {v9, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 212
    .line 213
    .line 214
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_4

    .line 216
    :catch_0
    nop

    .line 217
    const/4 v1, -0x1

    .line 218
    :goto_4
    if-eq v1, v7, :cond_d

    .line 219
    .line 220
    const v4, 0x10ffff

    .line 221
    .line 222
    .line 223
    if-le v1, v4, :cond_b

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_b
    const/16 v4, 0x80

    .line 227
    .line 228
    if-lt v1, v4, :cond_c

    .line 229
    .line 230
    const/16 v5, 0xa0

    .line 231
    .line 232
    if-ge v1, v5, :cond_c

    .line 233
    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    new-array v3, v3, [Ljava/lang/Object;

    .line 239
    .line 240
    aput-object v5, v3, v2

    .line 241
    .line 242
    const-string v5, "character [%s] is not a valid unicode code point"

    .line 243
    .line 244
    invoke-virtual {v0, v5, v3}, Lqh/t0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    sget-object v3, Lqh/t0;->v:[I

    .line 248
    .line 249
    sub-int/2addr v1, v4

    .line 250
    aget v1, v3, v1

    .line 251
    .line 252
    :cond_c
    aput v1, v10, v2

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_d
    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    new-array v3, v3, [Ljava/lang/Object;

    .line 260
    .line 261
    aput-object v1, v3, v2

    .line 262
    .line 263
    const-string v1, "character [%s] outside of valid range"

    .line 264
    .line 265
    invoke-virtual {v0, v1, v3}, Lqh/t0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    const v1, 0xfffd

    .line 269
    .line 270
    .line 271
    aput v1, v10, v2

    .line 272
    .line 273
    :goto_6
    return-object v10

    .line 274
    :cond_e
    invoke-virtual {v4}, Lqh/b;->A()V

    .line 275
    .line 276
    .line 277
    iget v1, v4, Lqh/b;->d:I

    .line 278
    .line 279
    :goto_7
    iget v5, v4, Lqh/b;->d:I

    .line 280
    .line 281
    iget v11, v4, Lqh/b;->e:I

    .line 282
    .line 283
    if-ge v5, v11, :cond_f

    .line 284
    .line 285
    iget-object v11, v4, Lqh/b;->c:[C

    .line 286
    .line 287
    aget-char v5, v11, v5

    .line 288
    .line 289
    invoke-static {v5}, Loh/f;->e(C)Z

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    if-eqz v5, :cond_f

    .line 294
    .line 295
    iget v5, v4, Lqh/b;->d:I

    .line 296
    .line 297
    add-int/2addr v5, v3

    .line 298
    iput v5, v4, Lqh/b;->d:I

    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_f
    :goto_8
    iget v5, v4, Lqh/b;->d:I

    .line 302
    .line 303
    iget v11, v4, Lqh/b;->e:I

    .line 304
    .line 305
    if-lt v5, v11, :cond_10

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_10
    iget-object v11, v4, Lqh/b;->c:[C

    .line 309
    .line 310
    aget-char v5, v11, v5

    .line 311
    .line 312
    invoke-static {v5}, Loh/f;->g(C)Z

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    if-eqz v5, :cond_11

    .line 317
    .line 318
    iget v5, v4, Lqh/b;->d:I

    .line 319
    .line 320
    add-int/2addr v5, v3

    .line 321
    iput v5, v4, Lqh/b;->d:I

    .line 322
    .line 323
    goto :goto_8

    .line 324
    :cond_11
    :goto_9
    iget-object v5, v4, Lqh/b;->c:[C

    .line 325
    .line 326
    iget-object v11, v4, Lqh/b;->a:[Ljava/lang/String;

    .line 327
    .line 328
    iget v12, v4, Lqh/b;->d:I

    .line 329
    .line 330
    sub-int/2addr v12, v1

    .line 331
    invoke-static {v5, v11, v1, v12}, Lqh/b;->J([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    const/16 v5, 0x3b

    .line 336
    .line 337
    invoke-virtual {v4, v5}, Lqh/b;->V(C)Z

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    sget-object v11, Lph/n;->a:[C

    .line 342
    .line 343
    sget-object v11, Lph/m;->f:Lph/m;

    .line 344
    .line 345
    iget-object v12, v11, Lph/m;->a:[Ljava/lang/String;

    .line 346
    .line 347
    invoke-static {v12, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 348
    .line 349
    .line 350
    move-result v12

    .line 351
    if-ltz v12, :cond_12

    .line 352
    .line 353
    iget-object v11, v11, Lph/m;->b:[I

    .line 354
    .line 355
    aget v11, v11, v12

    .line 356
    .line 357
    goto :goto_a

    .line 358
    :cond_12
    const/4 v11, -0x1

    .line 359
    :goto_a
    if-eq v11, v7, :cond_13

    .line 360
    .line 361
    goto :goto_c

    .line 362
    :cond_13
    sget-object v11, Lph/m;->g:Lph/m;

    .line 363
    .line 364
    iget-object v12, v11, Lph/m;->a:[Ljava/lang/String;

    .line 365
    .line 366
    invoke-static {v12, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 367
    .line 368
    .line 369
    move-result v12

    .line 370
    if-ltz v12, :cond_14

    .line 371
    .line 372
    iget-object v11, v11, Lph/m;->b:[I

    .line 373
    .line 374
    aget v11, v11, v12

    .line 375
    .line 376
    goto :goto_b

    .line 377
    :cond_14
    const/4 v11, -0x1

    .line 378
    :goto_b
    if-eq v11, v7, :cond_15

    .line 379
    .line 380
    if-eqz v5, :cond_15

    .line 381
    .line 382
    goto :goto_c

    .line 383
    :cond_15
    invoke-virtual {v4}, Lqh/b;->c0()V

    .line 384
    .line 385
    .line 386
    if-eqz v5, :cond_16

    .line 387
    .line 388
    const-string v5, "invalid named reference [%s]"

    .line 389
    .line 390
    new-array v11, v3, [Ljava/lang/Object;

    .line 391
    .line 392
    aput-object v1, v11, v2

    .line 393
    .line 394
    invoke-virtual {v0, v5, v11}, Lqh/t0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    :cond_16
    if-eqz p2, :cond_17

    .line 398
    .line 399
    return-object v6

    .line 400
    :cond_17
    sget-object v5, Lph/n;->c:Ljava/util/ArrayList;

    .line 401
    .line 402
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    :cond_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 407
    .line 408
    .line 409
    move-result v11

    .line 410
    if-eqz v11, :cond_19

    .line 411
    .line 412
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v11

    .line 416
    check-cast v11, Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 419
    .line 420
    .line 421
    move-result v12

    .line 422
    if-eqz v12, :cond_18

    .line 423
    .line 424
    move-object v9, v11

    .line 425
    :cond_19
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    if-eqz v1, :cond_1a

    .line 430
    .line 431
    return-object v6

    .line 432
    :cond_1a
    invoke-virtual {v4, v9}, Lqh/b;->T(Ljava/lang/String;)Z

    .line 433
    .line 434
    .line 435
    move-object v1, v9

    .line 436
    :goto_c
    if-eqz p2, :cond_1d

    .line 437
    .line 438
    invoke-virtual {v4}, Lqh/b;->X()Z

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    if-nez v5, :cond_1c

    .line 443
    .line 444
    invoke-virtual {v4}, Lqh/b;->R()Z

    .line 445
    .line 446
    .line 447
    move-result v5

    .line 448
    if-eqz v5, :cond_1b

    .line 449
    .line 450
    const/4 v5, 0x0

    .line 451
    goto :goto_d

    .line 452
    :cond_1b
    iget-object v5, v4, Lqh/b;->c:[C

    .line 453
    .line 454
    iget v9, v4, Lqh/b;->d:I

    .line 455
    .line 456
    aget-char v5, v5, v9

    .line 457
    .line 458
    invoke-static {v5}, Loh/f;->g(C)Z

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    :goto_d
    if-nez v5, :cond_1c

    .line 463
    .line 464
    const/4 v5, 0x3

    .line 465
    new-array v5, v5, [C

    .line 466
    .line 467
    fill-array-data v5, :array_0

    .line 468
    .line 469
    .line 470
    invoke-virtual {v4, v5}, Lqh/b;->W([C)Z

    .line 471
    .line 472
    .line 473
    move-result v5

    .line 474
    if-eqz v5, :cond_1d

    .line 475
    .line 476
    :cond_1c
    invoke-virtual {v4}, Lqh/b;->c0()V

    .line 477
    .line 478
    .line 479
    return-object v6

    .line 480
    :cond_1d
    iput v7, v4, Lqh/b;->h:I

    .line 481
    .line 482
    invoke-virtual {v4, v8}, Lqh/b;->T(Ljava/lang/String;)Z

    .line 483
    .line 484
    .line 485
    move-result v4

    .line 486
    if-nez v4, :cond_1e

    .line 487
    .line 488
    const-string v4, "missing semicolon on [&%s]"

    .line 489
    .line 490
    new-array v5, v3, [Ljava/lang/Object;

    .line 491
    .line 492
    aput-object v1, v5, v2

    .line 493
    .line 494
    invoke-virtual {v0, v4, v5}, Lqh/t0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    :cond_1e
    sget-object v4, Lph/n;->b:Ljava/util/HashMap;

    .line 498
    .line 499
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    check-cast v4, Ljava/lang/String;

    .line 504
    .line 505
    const/4 v5, 0x2

    .line 506
    iget-object v6, v0, Lqh/t0;->t:[I

    .line 507
    .line 508
    if-eqz v4, :cond_1f

    .line 509
    .line 510
    invoke-virtual {v4, v2}, Ljava/lang/String;->codePointAt(I)I

    .line 511
    .line 512
    .line 513
    move-result v7

    .line 514
    aput v7, v6, v2

    .line 515
    .line 516
    invoke-virtual {v4, v3}, Ljava/lang/String;->codePointAt(I)I

    .line 517
    .line 518
    .line 519
    move-result v4

    .line 520
    aput v4, v6, v3

    .line 521
    .line 522
    const/4 v4, 0x2

    .line 523
    goto :goto_f

    .line 524
    :cond_1f
    sget-object v4, Lph/m;->g:Lph/m;

    .line 525
    .line 526
    iget-object v8, v4, Lph/m;->a:[Ljava/lang/String;

    .line 527
    .line 528
    invoke-static {v8, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 529
    .line 530
    .line 531
    move-result v8

    .line 532
    if-ltz v8, :cond_20

    .line 533
    .line 534
    iget-object v4, v4, Lph/m;->b:[I

    .line 535
    .line 536
    aget v4, v4, v8

    .line 537
    .line 538
    goto :goto_e

    .line 539
    :cond_20
    const/4 v4, -0x1

    .line 540
    :goto_e
    if-eq v4, v7, :cond_21

    .line 541
    .line 542
    aput v4, v6, v2

    .line 543
    .line 544
    const/4 v4, 0x1

    .line 545
    goto :goto_f

    .line 546
    :cond_21
    const/4 v4, 0x0

    .line 547
    :goto_f
    if-ne v4, v3, :cond_22

    .line 548
    .line 549
    aget v1, v6, v2

    .line 550
    .line 551
    aput v1, v10, v2

    .line 552
    .line 553
    return-object v10

    .line 554
    :cond_22
    if-ne v4, v5, :cond_23

    .line 555
    .line 556
    return-object v6

    .line 557
    :cond_23
    const-string v2, "Unexpected characters returned for "

    .line 558
    .line 559
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    new-instance v2, Lnh/c;

    .line 564
    .line 565
    invoke-direct {v2, v1}, Lnh/c;-><init>(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    goto :goto_11

    .line 569
    :goto_10
    throw v2

    .line 570
    :goto_11
    goto :goto_10

    .line 571
    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method public final d(Z)Lqh/p0;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lqh/t0;->h:Lqh/o0;

    .line 4
    .line 5
    invoke-virtual {p1}, Lqh/o0;->n()Lqh/p0;

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lqh/t0;->i:Lqh/n0;

    .line 10
    .line 11
    invoke-virtual {p1}, Lqh/p0;->n()Lqh/p0;

    .line 12
    .line 13
    .line 14
    :goto_0
    iput-object p1, p0, Lqh/t0;->j:Lqh/p0;

    .line 15
    .line 16
    return-object p1
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lqh/t0;->f:Lkf/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkf/d;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(C)V
    .locals 2

    .line 1
    iget-object v0, p0, Lqh/t0;->k:Lqh/j0;

    .line 2
    .line 3
    iget-object v1, v0, Lqh/j0;->d:Lkf/d;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lkf/d;->m(C)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lqh/t0;->r:I

    .line 9
    .line 10
    iput p1, v0, Lqh/r0;->b:I

    .line 11
    .line 12
    iget-object p1, p0, Lqh/t0;->a:Lqh/b;

    .line 13
    .line 14
    invoke-virtual {p1}, Lqh/b;->a0()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, v0, Lqh/r0;->c:I

    .line 19
    .line 20
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lqh/t0;->k:Lqh/j0;

    .line 2
    .line 3
    iget-object v1, v0, Lqh/j0;->d:Lkf/d;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lkf/d;->n(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lqh/t0;->r:I

    .line 9
    .line 10
    iput p1, v0, Lqh/r0;->b:I

    .line 11
    .line 12
    iget-object p1, p0, Lqh/t0;->a:Lqh/b;

    .line 13
    .line 14
    invoke-virtual {p1}, Lqh/b;->a0()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, v0, Lqh/r0;->c:I

    .line 19
    .line 20
    return-void
.end method

.method public final h(Lqh/r0;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lqh/t0;->e:Z

    .line 3
    .line 4
    if-nez v1, :cond_2

    .line 5
    .line 6
    iput-object p1, p0, Lqh/t0;->d:Lqh/r0;

    .line 7
    .line 8
    iput-boolean v0, p0, Lqh/t0;->e:Z

    .line 9
    .line 10
    iget v1, p0, Lqh/t0;->q:I

    .line 11
    .line 12
    iput v1, p1, Lqh/r0;->b:I

    .line 13
    .line 14
    iget-object v1, p0, Lqh/t0;->a:Lqh/b;

    .line 15
    .line 16
    invoke-virtual {v1}, Lqh/b;->a0()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iput v2, p1, Lqh/r0;->c:I

    .line 21
    .line 22
    invoke-virtual {v1}, Lqh/b;->a0()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iput v2, p0, Lqh/t0;->r:I

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    iget v3, p1, Lqh/r0;->a:I

    .line 30
    .line 31
    if-ne v3, v2, :cond_0

    .line 32
    .line 33
    check-cast p1, Lqh/o0;

    .line 34
    .line 35
    iget-object p1, p1, Lqh/p0;->d:Lkf/d;

    .line 36
    .line 37
    invoke-virtual {p1}, Lkf/d;->R()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lqh/t0;->o:Ljava/lang/String;

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lqh/t0;->p:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v2, 0x3

    .line 48
    if-ne v3, v2, :cond_1

    .line 49
    .line 50
    check-cast p1, Lqh/n0;

    .line 51
    .line 52
    iget-object v2, p1, Lqh/p0;->g:Lph/c;

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-virtual {p1}, Lqh/p0;->m()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    aput-object p1, v0, v2

    .line 64
    .line 65
    iget-object p1, p0, Lqh/t0;->b:Lph/k;

    .line 66
    .line 67
    invoke-virtual {p1}, Lph/k;->a()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    new-instance v2, Lba/h;

    .line 74
    .line 75
    const-string v3, "Attributes incorrectly present on end tag [/%s]"

    .line 76
    .line 77
    invoke-direct {v2, v1, v3, v0}, Lba/h;-><init>(Lqh/b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    new-instance p1, Lnh/c;

    .line 85
    .line 86
    const-string v0, "Must be false"

    .line 87
    .line 88
    invoke-direct {p1, v0}, Lnh/c;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lqh/t0;->m:Lqh/k0;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lqh/t0;->h(Lqh/r0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lqh/t0;->l:Lqh/l0;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lqh/t0;->h(Lqh/r0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lqh/t0;->j:Lqh/p0;

    .line 2
    .line 3
    iget-object v1, v0, Lqh/p0;->h:Lkf/d;

    .line 4
    .line 5
    invoke-virtual {v1}, Lkf/d;->C()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lqh/p0;->l()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lqh/t0;->j:Lqh/p0;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lqh/t0;->h(Lqh/r0;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final l(Lqh/k3;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lqh/t0;->b:Lph/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lph/k;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lba/h;

    .line 10
    .line 11
    const-string v2, "Unexpectedly reached end of file (EOF) in input state [%s]"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    new-array v3, v3, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object p1, v3, v4

    .line 18
    .line 19
    iget-object p1, p0, Lqh/t0;->a:Lqh/b;

    .line 20
    .line 21
    invoke-direct {v1, p1, v2, v3}, Lba/h;-><init>(Lqh/b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final m(Lqh/k3;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lqh/t0;->b:Lph/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lph/k;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lba/h;

    .line 10
    .line 11
    iget-object v2, p0, Lqh/t0;->a:Lqh/b;

    .line 12
    .line 13
    invoke-virtual {v2}, Lqh/b;->Q()C

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x2

    .line 22
    new-array v4, v4, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    aput-object v3, v4, v5

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    aput-object p1, v4, v3

    .line 29
    .line 30
    const-string p1, "Unexpected character \'%s\' in input state [%s]"

    .line 31
    .line 32
    invoke-direct {v1, v2, p1, v4}, Lba/h;-><init>(Lqh/b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lqh/t0;->o:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lqh/t0;->j:Lqh/p0;

    .line 6
    .line 7
    iget-object v0, v0, Lqh/p0;->d:Lkf/d;

    .line 8
    .line 9
    invoke-virtual {v0}, Lkf/d;->R()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lqh/t0;->o:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public final o(Lqh/k3;)V
    .locals 1

    .line 1
    sget-object v0, Lqh/k3;->h:Lqh/i3;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lqh/t0;->a:Lqh/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lqh/b;->a0()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lqh/t0;->q:I

    .line 12
    .line 13
    :cond_0
    iput-object p1, p0, Lqh/t0;->c:Lqh/k3;

    .line 14
    .line 15
    return-void
.end method
