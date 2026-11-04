.class public final Lqh/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final b:[C


# instance fields
.field public final a:Lqh/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lqh/s0;->b:[C

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 2
        0x2as
        0x7cs
        0x5fs
        0x2ds
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lqh/b;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lqh/b;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 10
    .line 11
    return-void
.end method

.method public static L(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x2d

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Loh/f;->g(C)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x5f

    .line 12
    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    invoke-static {p0}, Loh/f;->e(C)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x80

    .line 22
    .line 23
    if-lt p0, v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    :goto_1
    return p0
.end method

.method public static N(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/16 v0, 0x5c

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-static {}, Loh/f;->b()Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    array-length v2, p0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    :goto_0
    if-ge v4, v2, :cond_3

    .line 24
    .line 25
    aget-char v6, p0, v4

    .line 26
    .line 27
    if-ne v6, v0, :cond_1

    .line 28
    .line 29
    if-ne v5, v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :cond_2
    move v5, v6

    .line 40
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-static {v1}, Loh/f;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method


# virtual methods
.method public final A(CC)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-static {}, Loh/f;->b()Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lqh/s0;->a:Lqh/b;

    .line 6
    .line 7
    iget v2, v1, Lqh/b;->e:I

    .line 8
    .line 9
    iget v3, v1, Lqh/b;->d:I

    .line 10
    .line 11
    sub-int/2addr v2, v3

    .line 12
    const/16 v3, 0x400

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    if-ge v2, v3, :cond_0

    .line 16
    .line 17
    iput v4, v1, Lqh/b;->f:I

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Lqh/b;->A()V

    .line 20
    .line 21
    .line 22
    iget v2, v1, Lqh/b;->d:I

    .line 23
    .line 24
    iput v2, v1, Lqh/b;->h:I

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    :goto_0
    iget-object v7, p0, Lqh/s0;->a:Lqh/b;

    .line 32
    .line 33
    invoke-virtual {v7}, Lqh/b;->R()Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    goto :goto_5

    .line 40
    :cond_1
    iget-object v7, p0, Lqh/s0;->a:Lqh/b;

    .line 41
    .line 42
    invoke-virtual {v7}, Lqh/b;->K()C

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    const/16 v8, 0x5c

    .line 47
    .line 48
    const/4 v9, 0x1

    .line 49
    if-ne v1, v8, :cond_4

    .line 50
    .line 51
    const/16 v1, 0x51

    .line 52
    .line 53
    if-ne v7, v1, :cond_2

    .line 54
    .line 55
    const/4 v6, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/16 v1, 0x45

    .line 58
    .line 59
    if-ne v7, v1, :cond_3

    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    :cond_3
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_4
    const/16 v1, 0x27

    .line 67
    .line 68
    if-ne v7, v1, :cond_5

    .line 69
    .line 70
    if-eq v7, p1, :cond_5

    .line 71
    .line 72
    if-nez v2, :cond_5

    .line 73
    .line 74
    xor-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    const/16 v1, 0x22

    .line 78
    .line 79
    if-ne v7, v1, :cond_6

    .line 80
    .line 81
    if-eq v7, p1, :cond_6

    .line 82
    .line 83
    if-nez v3, :cond_6

    .line 84
    .line 85
    xor-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    :cond_6
    :goto_2
    if-nez v3, :cond_a

    .line 88
    .line 89
    if-nez v2, :cond_a

    .line 90
    .line 91
    if-eqz v6, :cond_7

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_7
    if-ne v7, p1, :cond_8

    .line 95
    .line 96
    add-int/lit8 v5, v5, 0x1

    .line 97
    .line 98
    if-le v5, v9, :cond_b

    .line 99
    .line 100
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_8
    if-ne v7, p2, :cond_9

    .line 105
    .line 106
    add-int/lit8 v5, v5, -0x1

    .line 107
    .line 108
    if-lez v5, :cond_b

    .line 109
    .line 110
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_9
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_a
    :goto_3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    :cond_b
    :goto_4
    if-gtz v5, :cond_d

    .line 122
    .line 123
    :goto_5
    invoke-static {v0}, Loh/f;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-gtz v5, :cond_c

    .line 128
    .line 129
    return-object p1

    .line 130
    :cond_c
    iget-object p2, p0, Lqh/s0;->a:Lqh/b;

    .line 131
    .line 132
    invoke-virtual {p2}, Lqh/b;->c0()V

    .line 133
    .line 134
    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v0, "Did not find balanced marker at \'"

    .line 138
    .line 139
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p1, "\'"

    .line 146
    .line 147
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    new-instance p2, Lnh/c;

    .line 155
    .line 156
    invoke-direct {p2, p1}, Lnh/c;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p2

    .line 160
    :cond_d
    move v1, v7

    .line 161
    goto/16 :goto_0
.end method

.method public final J()Ljava/lang/String;
    .locals 14

    .line 1
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqh/b;->R()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_10

    .line 8
    .line 9
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Lqh/b;->A()V

    .line 12
    .line 13
    .line 14
    iget v1, v0, Lqh/b;->d:I

    .line 15
    .line 16
    iget v2, v0, Lqh/b;->e:I

    .line 17
    .line 18
    iget-object v3, v0, Lqh/b;->c:[C

    .line 19
    .line 20
    move v4, v1

    .line 21
    :goto_0
    if-ge v4, v2, :cond_0

    .line 22
    .line 23
    aget-char v5, v3, v4

    .line 24
    .line 25
    invoke-static {v5}, Lqh/s0;->L(C)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iput v4, v0, Lqh/b;->d:I

    .line 35
    .line 36
    const-string v2, ""

    .line 37
    .line 38
    if-le v4, v1, :cond_1

    .line 39
    .line 40
    iget-object v3, v0, Lqh/b;->c:[C

    .line 41
    .line 42
    iget-object v0, v0, Lqh/b;->a:[Ljava/lang/String;

    .line 43
    .line 44
    sub-int/2addr v4, v1

    .line 45
    invoke-static {v3, v0, v1, v4}, Lqh/b;->J([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move-object v0, v2

    .line 51
    :goto_1
    iget-object v1, p0, Lqh/s0;->a:Lqh/b;

    .line 52
    .line 53
    invoke-virtual {v1}, Lqh/b;->Q()C

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/16 v3, 0x5c

    .line 58
    .line 59
    if-eq v1, v3, :cond_2

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_2
    invoke-static {}, Loh/f;->b()Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_3

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_2
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 78
    .line 79
    invoke-virtual {v0}, Lqh/b;->R()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_f

    .line 84
    .line 85
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 86
    .line 87
    invoke-virtual {v0}, Lqh/b;->Q()C

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-static {v0}, Lqh/s0;->L(C)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_4

    .line 96
    .line 97
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 98
    .line 99
    invoke-virtual {v0}, Lqh/b;->K()C

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    const v4, 0xfffd

    .line 108
    .line 109
    .line 110
    if-nez v0, :cond_5

    .line 111
    .line 112
    invoke-virtual {p0}, Lqh/s0;->r()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    if-ne v0, v3, :cond_f

    .line 120
    .line 121
    invoke-virtual {p0}, Lqh/s0;->r()V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 125
    .line 126
    invoke-virtual {v0}, Lqh/b;->R()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    const/16 v5, 0xc

    .line 131
    .line 132
    const/16 v6, 0xd

    .line 133
    .line 134
    const/16 v7, 0xa

    .line 135
    .line 136
    if-nez v0, :cond_7

    .line 137
    .line 138
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 139
    .line 140
    invoke-virtual {v0}, Lqh/b;->Q()C

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eq v0, v7, :cond_6

    .line 145
    .line 146
    if-eq v0, v6, :cond_6

    .line 147
    .line 148
    if-ne v0, v5, :cond_7

    .line 149
    .line 150
    :cond_6
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 151
    .line 152
    invoke-virtual {v0}, Lqh/b;->d0()V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_6

    .line 156
    .line 157
    :cond_7
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 158
    .line 159
    invoke-virtual {v0}, Lqh/b;->R()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_8

    .line 164
    .line 165
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_8
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 170
    .line 171
    invoke-virtual {v0}, Lqh/b;->K()C

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-static {v0}, Loh/f;->h(C)Z

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    if-nez v8, :cond_9

    .line 180
    .line 181
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_9
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 186
    .line 187
    invoke-virtual {v0}, Lqh/b;->d0()V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 191
    .line 192
    invoke-virtual {v0}, Lqh/b;->A()V

    .line 193
    .line 194
    .line 195
    iget v8, v0, Lqh/b;->d:I

    .line 196
    .line 197
    iget v9, v0, Lqh/b;->e:I

    .line 198
    .line 199
    iget-object v10, v0, Lqh/b;->c:[C

    .line 200
    .line 201
    move v11, v8

    .line 202
    :goto_3
    if-ge v11, v9, :cond_a

    .line 203
    .line 204
    sub-int v12, v11, v8

    .line 205
    .line 206
    const/4 v13, 0x6

    .line 207
    if-ge v12, v13, :cond_a

    .line 208
    .line 209
    aget-char v12, v10, v11

    .line 210
    .line 211
    invoke-static {v12}, Loh/f;->h(C)Z

    .line 212
    .line 213
    .line 214
    move-result v12

    .line 215
    if-eqz v12, :cond_a

    .line 216
    .line 217
    add-int/lit8 v11, v11, 0x1

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_a
    iput v11, v0, Lqh/b;->d:I

    .line 221
    .line 222
    if-le v11, v8, :cond_b

    .line 223
    .line 224
    iget-object v9, v0, Lqh/b;->c:[C

    .line 225
    .line 226
    iget-object v0, v0, Lqh/b;->a:[Ljava/lang/String;

    .line 227
    .line 228
    sub-int/2addr v11, v8

    .line 229
    invoke-static {v9, v0, v8, v11}, Lqh/b;->J([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    goto :goto_4

    .line 234
    :cond_b
    move-object v0, v2

    .line 235
    :goto_4
    const/16 v8, 0x10

    .line 236
    .line 237
    :try_start_0
    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 238
    .line 239
    .line 240
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    if-eqz v0, :cond_c

    .line 242
    .line 243
    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    if-eqz v8, :cond_c

    .line 248
    .line 249
    int-to-char v8, v0

    .line 250
    invoke-static {v8}, La2/p0;->t(C)Z

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    if-nez v8, :cond_c

    .line 255
    .line 256
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    :goto_5
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 264
    .line 265
    invoke-virtual {v0}, Lqh/b;->R()Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-nez v0, :cond_3

    .line 270
    .line 271
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 272
    .line 273
    invoke-virtual {v0}, Lqh/b;->Q()C

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-ne v0, v6, :cond_d

    .line 278
    .line 279
    invoke-virtual {p0}, Lqh/s0;->r()V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 283
    .line 284
    invoke-virtual {v0}, Lqh/b;->R()Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-nez v0, :cond_3

    .line 289
    .line 290
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 291
    .line 292
    invoke-virtual {v0}, Lqh/b;->Q()C

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-ne v0, v7, :cond_3

    .line 297
    .line 298
    invoke-virtual {p0}, Lqh/s0;->r()V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_2

    .line 302
    .line 303
    :cond_d
    const/16 v4, 0x20

    .line 304
    .line 305
    if-eq v0, v4, :cond_e

    .line 306
    .line 307
    const/16 v4, 0x9

    .line 308
    .line 309
    if-eq v0, v4, :cond_e

    .line 310
    .line 311
    if-eq v0, v7, :cond_e

    .line 312
    .line 313
    if-eq v0, v6, :cond_e

    .line 314
    .line 315
    if-ne v0, v5, :cond_3

    .line 316
    .line 317
    :cond_e
    invoke-virtual {p0}, Lqh/s0;->r()V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_2

    .line 321
    .line 322
    :catch_0
    move-exception v1

    .line 323
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 324
    .line 325
    const-string v3, "Invalid escape sequence: "

    .line 326
    .line 327
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    .line 333
    .line 334
    throw v2

    .line 335
    :cond_f
    :goto_6
    invoke-static {v1}, Loh/f;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    return-object v0

    .line 340
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 341
    .line 342
    const-string v1, "CSS identifier expected, but end of input found"

    .line 343
    .line 344
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    goto :goto_8

    .line 348
    :goto_7
    throw v0

    .line 349
    :goto_8
    goto :goto_7
.end method

.method public final K()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lqh/s0;->a:Lqh/b;

    .line 3
    .line 4
    invoke-virtual {v1}, Lqh/b;->Q()C

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Loh/f;->i(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lqh/s0;->r()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v0
.end method

.method public final M(C)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lqh/b;->V(C)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lqh/s0;->a:Lqh/b;

    .line 10
    .line 11
    invoke-virtual {p1}, Lqh/b;->K()C

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqh/b;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqh/b;->R()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Lqh/b;->r()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lqh/s0;->a:Lqh/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqh/b;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
