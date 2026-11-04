.class public final Lce/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:I

.field public static final f:Ljava/util/Random;

.field public static final g:Lde/d;

.field public static final h:[B

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static final l:Lce/p;

.field public static final m:Lce/p;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "jcifs.smb1.smb.lmCompatibility"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v1, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput v0, Lce/p;->e:I

    .line 9
    .line 10
    new-instance v0, Ljava/util/Random;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lce/p;->f:Ljava/util/Random;

    .line 16
    .line 17
    invoke-static {}, Lde/d;->r()Lde/d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lce/p;->g:Lde/d;

    .line 22
    .line 23
    const/16 v0, 0x8

    .line 24
    .line 25
    new-array v0, v0, [B

    .line 26
    .line 27
    fill-array-data v0, :array_0

    .line 28
    .line 29
    .line 30
    sput-object v0, Lce/p;->h:[B

    .line 31
    .line 32
    new-instance v0, Lce/p;

    .line 33
    .line 34
    const-string v1, ""

    .line 35
    .line 36
    invoke-direct {v0, v1, v1}, Lce/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lce/p;->l:Lce/p;

    .line 40
    .line 41
    new-instance v0, Lce/p;

    .line 42
    .line 43
    invoke-direct {v0, v1, v1}, Lce/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lce/p;->m:Lce/p;

    .line 47
    .line 48
    new-instance v0, Lce/p;

    .line 49
    .line 50
    const-string v1, "?"

    .line 51
    .line 52
    const-string v2, "GUEST"

    .line 53
    .line 54
    invoke-direct {v0, v1, v2}, Lce/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lce/p;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-direct {v0, v1}, Lce/p;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :array_0
    .array-data 1
        0x4bt
        0x47t
        0x53t
        0x21t
        0x40t
        0x23t
        0x24t
        0x25t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 2
    iput-object v2, p0, Lce/p;->d:[B

    .line 3
    iput-object v2, p0, Lce/p;->c:Ljava/lang/String;

    iput-object v2, p0, Lce/p;->b:Ljava/lang/String;

    iput-object v2, p0, Lce/p;->a:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 5
    new-array v3, v2, [C

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    if-eqz v6, :cond_1

    if-eq v6, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v4, 0x2

    .line 6
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    new-array v7, v1, [B

    aput-byte v6, v7, v0

    add-int/lit8 v6, v5, 0x1

    .line 7
    new-instance v8, Ljava/lang/String;

    const-string v9, "ASCII"

    invoke-direct {v8, v7, v0, v1, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v3, v5

    add-int/2addr v4, v1

    move v5, v6

    const/4 v6, 0x0

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x25

    if-ne v7, v8, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v5, 0x1

    .line 9
    aput-char v7, v3, v5

    move v5, v8

    :goto_1
    add-int/2addr v4, v1

    goto :goto_0

    .line 10
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3, v0, v5}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    .line 11
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v3, v2, :cond_6

    .line 12
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_4

    .line 13
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lce/p;->a:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    goto :goto_3

    :cond_4
    const/16 v6, 0x3a

    if-ne v5, v6, :cond_5

    add-int/2addr v1, v3

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lce/p;->c:Ljava/lang/String;

    goto :goto_4

    :cond_5
    :goto_3
    add-int/2addr v3, v1

    goto :goto_2

    .line 15
    :cond_6
    :goto_4
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lce/p;->b:Ljava/lang/String;

    .line 16
    :cond_7
    invoke-static {}, Lce/p;->i()V

    .line 17
    iget-object p1, p0, Lce/p;->a:Ljava/lang/String;

    if-nez p1, :cond_8

    sget-object p1, Lce/p;->i:Ljava/lang/String;

    iput-object p1, p0, Lce/p;->a:Ljava/lang/String;

    .line 18
    :cond_8
    iget-object p1, p0, Lce/p;->b:Ljava/lang/String;

    if-nez p1, :cond_9

    sget-object p1, Lce/p;->j:Ljava/lang/String;

    iput-object p1, p0, Lce/p;->b:Ljava/lang/String;

    .line 19
    :cond_9
    iget-object p1, p0, Lce/p;->c:Ljava/lang/String;

    if-nez p1, :cond_a

    sget-object p1, Lce/p;->k:Ljava/lang/String;

    iput-object p1, p0, Lce/p;->c:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lce/p;->d:[B

    const/16 v0, 0x40

    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 p1, v0, 0x1

    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 26
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 28
    :cond_1
    :goto_0
    iput-object p1, p0, Lce/p;->a:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lce/p;->b:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lce/p;->c:Ljava/lang/String;

    .line 31
    invoke-static {}, Lce/p;->i()V

    if-nez p1, :cond_2

    .line 32
    sget-object p1, Lce/p;->i:Ljava/lang/String;

    iput-object p1, p0, Lce/p;->a:Ljava/lang/String;

    :cond_2
    if-nez p2, :cond_3

    .line 33
    sget-object p1, Lce/p;->j:Ljava/lang/String;

    iput-object p1, p0, Lce/p;->b:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public static a([B[B[B)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    new-array v2, v1, [B

    .line 5
    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    new-array v4, v3, [B

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    :goto_0
    array-length v7, v0

    .line 13
    div-int/2addr v7, v1

    .line 14
    if-ge v6, v7, :cond_3

    .line 15
    .line 16
    mul-int/lit8 v7, v6, 0x7

    .line 17
    .line 18
    invoke-static {v0, v7, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    new-instance v7, Lde/a;

    .line 22
    .line 23
    invoke-direct {v7, v2}, Lde/a;-><init>([B)V

    .line 24
    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    :goto_1
    iget-object v9, v7, Lde/a;->c:[I

    .line 28
    .line 29
    const/4 v10, 0x2

    .line 30
    if-ge v8, v10, :cond_0

    .line 31
    .line 32
    mul-int/lit8 v10, v8, 0x4

    .line 33
    .line 34
    aget-byte v11, p1, v10

    .line 35
    .line 36
    and-int/lit16 v11, v11, 0xff

    .line 37
    .line 38
    shl-int/lit8 v11, v11, 0x18

    .line 39
    .line 40
    add-int/lit8 v12, v10, 0x1

    .line 41
    .line 42
    aget-byte v12, p1, v12

    .line 43
    .line 44
    and-int/lit16 v12, v12, 0xff

    .line 45
    .line 46
    shl-int/lit8 v12, v12, 0x10

    .line 47
    .line 48
    or-int/2addr v11, v12

    .line 49
    add-int/lit8 v12, v10, 0x2

    .line 50
    .line 51
    aget-byte v12, p1, v12

    .line 52
    .line 53
    and-int/lit16 v12, v12, 0xff

    .line 54
    .line 55
    shl-int/2addr v12, v3

    .line 56
    or-int/2addr v11, v12

    .line 57
    add-int/lit8 v10, v10, 0x3

    .line 58
    .line 59
    aget-byte v10, p1, v10

    .line 60
    .line 61
    and-int/lit16 v10, v10, 0xff

    .line 62
    .line 63
    or-int/2addr v10, v11

    .line 64
    aput v10, v9, v8

    .line 65
    .line 66
    add-int/lit8 v8, v8, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    aget v8, v9, v5

    .line 70
    .line 71
    const/4 v11, 0x1

    .line 72
    aget v12, v9, v11

    .line 73
    .line 74
    ushr-int/lit8 v13, v8, 0x4

    .line 75
    .line 76
    xor-int/2addr v13, v12

    .line 77
    const v14, 0xf0f0f0f

    .line 78
    .line 79
    .line 80
    and-int/2addr v13, v14

    .line 81
    xor-int/2addr v12, v13

    .line 82
    shl-int/lit8 v13, v13, 0x4

    .line 83
    .line 84
    xor-int/2addr v8, v13

    .line 85
    ushr-int/lit8 v13, v8, 0x10

    .line 86
    .line 87
    xor-int/2addr v13, v12

    .line 88
    const v15, 0xffff

    .line 89
    .line 90
    .line 91
    and-int/2addr v13, v15

    .line 92
    xor-int/2addr v12, v13

    .line 93
    shl-int/lit8 v13, v13, 0x10

    .line 94
    .line 95
    xor-int/2addr v8, v13

    .line 96
    ushr-int/lit8 v13, v12, 0x2

    .line 97
    .line 98
    xor-int/2addr v13, v8

    .line 99
    const v16, 0x33333333

    .line 100
    .line 101
    .line 102
    and-int v13, v13, v16

    .line 103
    .line 104
    xor-int/2addr v8, v13

    .line 105
    shl-int/2addr v13, v10

    .line 106
    xor-int/2addr v12, v13

    .line 107
    ushr-int/lit8 v13, v12, 0x8

    .line 108
    .line 109
    xor-int/2addr v13, v8

    .line 110
    const v17, 0xff00ff

    .line 111
    .line 112
    .line 113
    and-int v13, v13, v17

    .line 114
    .line 115
    xor-int/2addr v8, v13

    .line 116
    shl-int/2addr v13, v3

    .line 117
    xor-int/2addr v12, v13

    .line 118
    shl-int/lit8 v13, v12, 0x1

    .line 119
    .line 120
    ushr-int/lit8 v12, v12, 0x1f

    .line 121
    .line 122
    and-int/2addr v12, v11

    .line 123
    or-int/2addr v12, v13

    .line 124
    xor-int v13, v8, v12

    .line 125
    .line 126
    const v18, -0x55555556

    .line 127
    .line 128
    .line 129
    and-int v13, v13, v18

    .line 130
    .line 131
    xor-int/2addr v8, v13

    .line 132
    xor-int/2addr v12, v13

    .line 133
    shl-int/lit8 v13, v8, 0x1

    .line 134
    .line 135
    ushr-int/lit8 v8, v8, 0x1f

    .line 136
    .line 137
    and-int/2addr v8, v11

    .line 138
    or-int/2addr v8, v13

    .line 139
    const/4 v13, 0x0

    .line 140
    const/16 v19, 0x0

    .line 141
    .line 142
    :goto_2
    if-ge v13, v3, :cond_1

    .line 143
    .line 144
    shl-int/lit8 v20, v12, 0x1c

    .line 145
    .line 146
    ushr-int/lit8 v21, v12, 0x4

    .line 147
    .line 148
    or-int v20, v20, v21

    .line 149
    .line 150
    add-int/lit8 v21, v19, 0x1

    .line 151
    .line 152
    iget-object v1, v7, Lde/a;->a:[I

    .line 153
    .line 154
    aget v22, v1, v19

    .line 155
    .line 156
    xor-int v20, v20, v22

    .line 157
    .line 158
    sget-object v22, Lde/a;->o:[I

    .line 159
    .line 160
    and-int/lit8 v23, v20, 0x3f

    .line 161
    .line 162
    aget v23, v22, v23

    .line 163
    .line 164
    sget-object v24, Lde/a;->m:[I

    .line 165
    .line 166
    ushr-int/lit8 v25, v20, 0x8

    .line 167
    .line 168
    and-int/lit8 v25, v25, 0x3f

    .line 169
    .line 170
    aget v25, v24, v25

    .line 171
    .line 172
    or-int v23, v23, v25

    .line 173
    .line 174
    sget-object v25, Lde/a;->k:[I

    .line 175
    .line 176
    ushr-int/lit8 v26, v20, 0x10

    .line 177
    .line 178
    and-int/lit8 v26, v26, 0x3f

    .line 179
    .line 180
    aget v26, v25, v26

    .line 181
    .line 182
    or-int v23, v23, v26

    .line 183
    .line 184
    sget-object v26, Lde/a;->i:[I

    .line 185
    .line 186
    ushr-int/lit8 v20, v20, 0x18

    .line 187
    .line 188
    and-int/lit8 v20, v20, 0x3f

    .line 189
    .line 190
    aget v20, v26, v20

    .line 191
    .line 192
    or-int v20, v23, v20

    .line 193
    .line 194
    add-int/lit8 v23, v19, 0x2

    .line 195
    .line 196
    aget v21, v1, v21

    .line 197
    .line 198
    xor-int v21, v12, v21

    .line 199
    .line 200
    sget-object v27, Lde/a;->p:[I

    .line 201
    .line 202
    and-int/lit8 v28, v21, 0x3f

    .line 203
    .line 204
    aget v28, v27, v28

    .line 205
    .line 206
    or-int v20, v20, v28

    .line 207
    .line 208
    sget-object v28, Lde/a;->n:[I

    .line 209
    .line 210
    ushr-int/lit8 v29, v21, 0x8

    .line 211
    .line 212
    and-int/lit8 v29, v29, 0x3f

    .line 213
    .line 214
    aget v29, v28, v29

    .line 215
    .line 216
    or-int v20, v20, v29

    .line 217
    .line 218
    sget-object v29, Lde/a;->l:[I

    .line 219
    .line 220
    ushr-int/lit8 v30, v21, 0x10

    .line 221
    .line 222
    and-int/lit8 v30, v30, 0x3f

    .line 223
    .line 224
    aget v30, v29, v30

    .line 225
    .line 226
    or-int v20, v20, v30

    .line 227
    .line 228
    sget-object v30, Lde/a;->j:[I

    .line 229
    .line 230
    ushr-int/lit8 v21, v21, 0x18

    .line 231
    .line 232
    and-int/lit8 v21, v21, 0x3f

    .line 233
    .line 234
    aget v21, v30, v21

    .line 235
    .line 236
    or-int v20, v20, v21

    .line 237
    .line 238
    xor-int v8, v8, v20

    .line 239
    .line 240
    shl-int/lit8 v20, v8, 0x1c

    .line 241
    .line 242
    ushr-int/lit8 v21, v8, 0x4

    .line 243
    .line 244
    or-int v20, v20, v21

    .line 245
    .line 246
    add-int/lit8 v21, v19, 0x3

    .line 247
    .line 248
    aget v23, v1, v23

    .line 249
    .line 250
    xor-int v20, v20, v23

    .line 251
    .line 252
    and-int/lit8 v23, v20, 0x3f

    .line 253
    .line 254
    aget v22, v22, v23

    .line 255
    .line 256
    ushr-int/lit8 v23, v20, 0x8

    .line 257
    .line 258
    and-int/lit8 v23, v23, 0x3f

    .line 259
    .line 260
    aget v23, v24, v23

    .line 261
    .line 262
    or-int v22, v22, v23

    .line 263
    .line 264
    ushr-int/lit8 v23, v20, 0x10

    .line 265
    .line 266
    and-int/lit8 v23, v23, 0x3f

    .line 267
    .line 268
    aget v23, v25, v23

    .line 269
    .line 270
    or-int v22, v22, v23

    .line 271
    .line 272
    ushr-int/lit8 v20, v20, 0x18

    .line 273
    .line 274
    and-int/lit8 v20, v20, 0x3f

    .line 275
    .line 276
    aget v20, v26, v20

    .line 277
    .line 278
    or-int v20, v22, v20

    .line 279
    .line 280
    add-int/lit8 v19, v19, 0x4

    .line 281
    .line 282
    aget v1, v1, v21

    .line 283
    .line 284
    xor-int/2addr v1, v8

    .line 285
    and-int/lit8 v21, v1, 0x3f

    .line 286
    .line 287
    aget v21, v27, v21

    .line 288
    .line 289
    or-int v20, v20, v21

    .line 290
    .line 291
    ushr-int/lit8 v21, v1, 0x8

    .line 292
    .line 293
    and-int/lit8 v21, v21, 0x3f

    .line 294
    .line 295
    aget v21, v28, v21

    .line 296
    .line 297
    or-int v20, v20, v21

    .line 298
    .line 299
    ushr-int/lit8 v21, v1, 0x10

    .line 300
    .line 301
    and-int/lit8 v21, v21, 0x3f

    .line 302
    .line 303
    aget v21, v29, v21

    .line 304
    .line 305
    or-int v20, v20, v21

    .line 306
    .line 307
    ushr-int/lit8 v1, v1, 0x18

    .line 308
    .line 309
    and-int/lit8 v1, v1, 0x3f

    .line 310
    .line 311
    aget v1, v30, v1

    .line 312
    .line 313
    or-int v1, v20, v1

    .line 314
    .line 315
    xor-int/2addr v12, v1

    .line 316
    add-int/lit8 v13, v13, 0x1

    .line 317
    .line 318
    const/4 v1, 0x7

    .line 319
    goto/16 :goto_2

    .line 320
    .line 321
    :cond_1
    shl-int/lit8 v1, v12, 0x1f

    .line 322
    .line 323
    ushr-int/lit8 v7, v12, 0x1

    .line 324
    .line 325
    or-int/2addr v1, v7

    .line 326
    xor-int v7, v8, v1

    .line 327
    .line 328
    and-int v7, v7, v18

    .line 329
    .line 330
    xor-int/2addr v8, v7

    .line 331
    xor-int/2addr v1, v7

    .line 332
    shl-int/lit8 v7, v8, 0x1f

    .line 333
    .line 334
    ushr-int/2addr v8, v11

    .line 335
    or-int/2addr v7, v8

    .line 336
    ushr-int/lit8 v8, v7, 0x8

    .line 337
    .line 338
    xor-int/2addr v8, v1

    .line 339
    and-int v8, v8, v17

    .line 340
    .line 341
    xor-int/2addr v1, v8

    .line 342
    shl-int/2addr v8, v3

    .line 343
    xor-int/2addr v7, v8

    .line 344
    ushr-int/lit8 v8, v7, 0x2

    .line 345
    .line 346
    xor-int/2addr v8, v1

    .line 347
    and-int v8, v8, v16

    .line 348
    .line 349
    xor-int/2addr v1, v8

    .line 350
    shl-int/2addr v8, v10

    .line 351
    xor-int/2addr v7, v8

    .line 352
    ushr-int/lit8 v8, v1, 0x10

    .line 353
    .line 354
    xor-int/2addr v8, v7

    .line 355
    and-int/2addr v8, v15

    .line 356
    xor-int/2addr v7, v8

    .line 357
    shl-int/lit8 v8, v8, 0x10

    .line 358
    .line 359
    xor-int/2addr v1, v8

    .line 360
    ushr-int/lit8 v8, v1, 0x4

    .line 361
    .line 362
    xor-int/2addr v8, v7

    .line 363
    and-int/2addr v8, v14

    .line 364
    xor-int/2addr v7, v8

    .line 365
    shl-int/lit8 v8, v8, 0x4

    .line 366
    .line 367
    xor-int/2addr v1, v8

    .line 368
    aput v1, v9, v5

    .line 369
    .line 370
    aput v7, v9, v11

    .line 371
    .line 372
    const/4 v1, 0x0

    .line 373
    :goto_3
    if-ge v1, v10, :cond_2

    .line 374
    .line 375
    mul-int/lit8 v7, v1, 0x4

    .line 376
    .line 377
    aget v8, v9, v1

    .line 378
    .line 379
    ushr-int/lit8 v11, v8, 0x18

    .line 380
    .line 381
    int-to-byte v11, v11

    .line 382
    aput-byte v11, v4, v7

    .line 383
    .line 384
    add-int/lit8 v11, v7, 0x1

    .line 385
    .line 386
    ushr-int/lit8 v12, v8, 0x10

    .line 387
    .line 388
    int-to-byte v12, v12

    .line 389
    aput-byte v12, v4, v11

    .line 390
    .line 391
    add-int/lit8 v11, v7, 0x2

    .line 392
    .line 393
    ushr-int/lit8 v12, v8, 0x8

    .line 394
    .line 395
    int-to-byte v12, v12

    .line 396
    aput-byte v12, v4, v11

    .line 397
    .line 398
    add-int/lit8 v7, v7, 0x3

    .line 399
    .line 400
    int-to-byte v8, v8

    .line 401
    aput-byte v8, v4, v7

    .line 402
    .line 403
    add-int/lit8 v1, v1, 0x1

    .line 404
    .line 405
    goto :goto_3

    .line 406
    :cond_2
    mul-int/lit8 v1, v6, 0x8

    .line 407
    .line 408
    move-object/from16 v7, p2

    .line 409
    .line 410
    invoke-static {v4, v5, v7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    .line 412
    .line 413
    add-int/lit8 v6, v6, 0x1

    .line 414
    .line 415
    const/4 v1, 0x7

    .line 416
    goto/16 :goto_0

    .line 417
    .line 418
    :cond_3
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 4

    .line 1
    const-string v0, "UTF-16LE"

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    :try_start_0
    new-array v1, v1, [B

    .line 6
    .line 7
    new-instance v2, Lde/e;

    .line 8
    .line 9
    invoke-direct {v2}, Lde/e;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {v2, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 17
    .line 18
    .line 19
    new-instance p2, Lde/b;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-direct {p2, v2, v3}, Lde/b;-><init>([BI)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 49
    .line 50
    .line 51
    new-instance p0, Lde/b;

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/4 p2, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lde/b;-><init>([BI)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p3}, Ljava/security/MessageDigest;->update([B)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p4}, Ljava/security/MessageDigest;->update([B)V

    .line 65
    .line 66
    .line 67
    const/16 p1, 0x10

    .line 68
    .line 69
    const/4 p2, 0x0

    .line 70
    invoke-virtual {p0, v1, p2, p1}, Ljava/security/MessageDigest;->digest([BII)I

    .line 71
    .line 72
    .line 73
    const/16 p0, 0x8

    .line 74
    .line 75
    invoke-static {p4, p2, v1, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :catch_0
    move-exception p0

    .line 80
    sget p1, Lde/d;->b:I

    .line 81
    .line 82
    if-lez p1, :cond_0

    .line 83
    .line 84
    sget-object p1, Lce/p;->g:Lde/d;

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    const/4 p0, 0x0

    .line 90
    return-object p0
.end method

.method public static d(Ljava/lang/String;[B)[B
    .locals 5

    .line 1
    sget-object v0, Lce/p;->g:Lde/d;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    new-array v1, v1, [B

    .line 6
    .line 7
    const/16 v2, 0x18

    .line 8
    .line 9
    new-array v2, v2, [B

    .line 10
    .line 11
    :try_start_0
    const-string v3, "UTF-16LE"

    .line 12
    .line 13
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    sget v3, Lde/d;->b:I

    .line 20
    .line 21
    if-lez v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    new-instance v3, Lde/e;

    .line 28
    .line 29
    invoke-direct {v3}, Lde/e;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    const/16 v4, 0x10

    .line 37
    .line 38
    :try_start_1
    invoke-virtual {v3, v1, p0, v4}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_1
    move-exception p0

    .line 43
    sget v3, Lde/d;->b:I

    .line 44
    .line 45
    if-lez v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_1
    invoke-static {v1, p1, v2}, Lce/p;->a([B[B[B)V

    .line 51
    .line 52
    .line 53
    return-object v2
.end method

.method public static f(Ljava/lang/String;[B)[B
    .locals 5

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/16 v2, 0x15

    .line 6
    .line 7
    new-array v2, v2, [B

    .line 8
    .line 9
    const/16 v3, 0x18

    .line 10
    .line 11
    new-array v3, v3, [B

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v4, Lce/q0;->m0:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    array-length v4, p0

    .line 24
    if-le v4, v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v4

    .line 28
    :goto_0
    const/4 v4, 0x0

    .line 29
    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lce/p;->h:[B

    .line 33
    .line 34
    invoke-static {v1, p0, v2}, Lce/p;->a([B[B[B)V

    .line 35
    .line 36
    .line 37
    invoke-static {v2, p1, v3}, Lce/p;->a([B[B[B)V

    .line 38
    .line 39
    .line 40
    return-object v3

    .line 41
    :catch_0
    move-exception p0

    .line 42
    new-instance p1, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    const-string v0, "Try setting jcifs.smb1.encoding=US-ASCII"

    .line 45
    .line 46
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public static i()V
    .locals 3

    .line 1
    sget-object v0, Lce/p;->i:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lwd/a;->a:Ljava/util/Properties;

    .line 7
    .line 8
    const-string v1, "jcifs.smb1.smb.client.domain"

    .line 9
    .line 10
    const-string v2, "?"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sput-object v1, Lce/p;->i:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "jcifs.smb1.smb.client.username"

    .line 19
    .line 20
    const-string v2, "GUEST"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sput-object v1, Lce/p;->j:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "jcifs.smb1.smb.client.password"

    .line 29
    .line 30
    const-string v2, ""

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lce/p;->k:Ljava/lang/String;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final b([B)[B
    .locals 4

    .line 1
    iget-object v0, p0, Lce/p;->c:Ljava/lang/String;

    .line 2
    .line 3
    sget v1, Lce/p;->e:I

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_3

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v1, v2, :cond_2

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x5

    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    invoke-static {v0, p1}, Lce/p;->f(Ljava/lang/String;[B)[B

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    iget-object v1, p0, Lce/p;->d:[B

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    const/16 v1, 0x8

    .line 32
    .line 33
    new-array v1, v1, [B

    .line 34
    .line 35
    iput-object v1, p0, Lce/p;->d:[B

    .line 36
    .line 37
    sget-object v2, Lce/p;->f:Ljava/util/Random;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v1, p0, Lce/p;->b:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v2, p0, Lce/p;->d:[B

    .line 45
    .line 46
    iget-object v3, p0, Lce/p;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v3, v1, v0, p1, v2}, Lce/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_2
    invoke-static {v0, p1}, Lce/p;->d(Ljava/lang/String;[B)[B

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :cond_3
    invoke-static {v0, p1}, Lce/p;->f(Ljava/lang/String;[B)[B

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lce/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lce/p;

    .line 6
    .line 7
    iget-object v0, p1, Lce/p;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lce/p;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p1, Lce/p;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lce/p;->b:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lce/p;->c:Ljava/lang/String;

    .line 44
    .line 45
    iget-object p1, p1, Lce/p;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    return p1

    .line 55
    :cond_0
    const/4 p1, 0x0

    .line 56
    return p1
.end method

.method public final g([B)[B
    .locals 11

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x1

    .line 6
    sget v5, Lce/p;->e:I

    .line 7
    .line 8
    if-eqz v5, :cond_1

    .line 9
    .line 10
    if-eq v5, v4, :cond_1

    .line 11
    .line 12
    if-eq v5, v3, :cond_1

    .line 13
    .line 14
    if-eq v5, v2, :cond_0

    .line 15
    .line 16
    if-eq v5, v1, :cond_0

    .line 17
    .line 18
    if-eq v5, v0, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    return-object p1

    .line 22
    :cond_0
    new-instance p1, Lce/r0;

    .line 23
    .line 24
    const-string v0, "NTLMv2 requires extended security (jcifs.smb1.smb1.client.useExtendedSecurity must be true if jcifs.smb1.smb1.lmCompatibility >= 3)"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    const/16 v6, 0x28

    .line 31
    .line 32
    new-array v6, v6, [B

    .line 33
    .line 34
    const-string v7, "UTF-16LE"

    .line 35
    .line 36
    :try_start_0
    new-instance v8, Lde/e;

    .line 37
    .line 38
    invoke-direct {v8}, Lde/e;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v9, p0, Lce/p;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v9, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 48
    .line 49
    .line 50
    const/16 v9, 0x10

    .line 51
    .line 52
    const/4 v10, 0x0

    .line 53
    if-eqz v5, :cond_4

    .line 54
    .line 55
    if-eq v5, v4, :cond_4

    .line 56
    .line 57
    if-eq v5, v3, :cond_4

    .line 58
    .line 59
    if-eq v5, v2, :cond_2

    .line 60
    .line 61
    if-eq v5, v1, :cond_2

    .line 62
    .line 63
    if-eq v5, v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v8, v6, v10, v9}, Ljava/security/MessageDigest;->digest([BII)I

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p1

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    iget-object v0, p0, Lce/p;->d:[B

    .line 79
    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    const/16 v0, 0x8

    .line 83
    .line 84
    new-array v0, v0, [B

    .line 85
    .line 86
    iput-object v0, p0, Lce/p;->d:[B

    .line 87
    .line 88
    sget-object v1, Lce/p;->f:Ljava/util/Random;

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 91
    .line 92
    .line 93
    :cond_3
    new-instance v0, Lde/b;

    .line 94
    .line 95
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const/4 v2, 0x0

    .line 100
    invoke-direct {v0, v1, v2}, Lde/b;-><init>([BI)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lce/p;->b:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lce/p;->a:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    new-instance v1, Lde/b;

    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    invoke-direct {v1, v0, v2}, Lde/b;-><init>([BI)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 140
    .line 141
    .line 142
    iget-object v2, p0, Lce/p;->d:[B

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 145
    .line 146
    .line 147
    new-instance v2, Lde/b;

    .line 148
    .line 149
    const/4 v3, 0x0

    .line 150
    invoke-direct {v2, v0, v3}, Lde/b;-><init>([BI)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v6, v10, v9}, Ljava/security/MessageDigest;->digest([BII)I

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_4
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v8, v6, v10, v9}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .line 173
    .line 174
    :goto_0
    invoke-virtual {p0, p1}, Lce/p;->h([B)[B

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    const/16 v0, 0x18

    .line 179
    .line 180
    invoke-static {p1, v10, v6, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    .line 182
    .line 183
    return-object v6

    .line 184
    :goto_1
    new-instance v0, Lce/r0;

    .line 185
    .line 186
    const-string v1, ""

    .line 187
    .line 188
    invoke-direct {v0, v1, p1}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 189
    .line 190
    .line 191
    throw v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lce/p;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lce/p;->b:Ljava/lang/String;

    .line 8
    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    const-string v1, "?"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, "\\"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :cond_0
    return-object v2
.end method

.method public final h([B)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lce/p;->c:Ljava/lang/String;

    .line 2
    .line 3
    sget v1, Lce/p;->e:I

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x5

    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    invoke-static {v0, p1}, Lce/p;->d(Ljava/lang/String;[B)[B

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    new-array p1, p1, [B

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_1
    invoke-static {v0, p1}, Lce/p;->d(Ljava/lang/String;[B)[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lce/p;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lce/p;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
