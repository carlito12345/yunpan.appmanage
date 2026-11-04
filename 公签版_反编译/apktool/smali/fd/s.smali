.class public final Lfd/s;
.super Led/a;
.source "SourceFile"


# instance fields
.field public final L:[B

.field public final M:[B

.field public final N:[B

.field public final O:Ljava/lang/String;

.field public final P:Ljava/lang/String;

.field public final R:Lfd/j;

.field public final S:I


# direct methods
.method public constructor <init>(Lvc/b;Lfd/j;Led/c;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x73

    .line 6
    .line 7
    invoke-direct {p0, v0, v1, p3}, Led/a;-><init>(Lvc/f;BLed/c;)V

    .line 8
    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    iput-object p3, p0, Lfd/s;->N:[B

    .line 12
    .line 13
    iput-object p2, p0, Lfd/s;->R:Lfd/j;

    .line 14
    .line 15
    iget p3, p2, Lfd/j;->O:I

    .line 16
    .line 17
    iput p3, p0, Lfd/s;->S:I

    .line 18
    .line 19
    iget-object p2, p2, Lfd/j;->H:Lfd/b;

    .line 20
    .line 21
    iget v0, p2, Lfd/b;->g:I

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    const-string v2, "?"

    .line 25
    .line 26
    const-string v3, ""

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-ne v0, v1, :cond_c

    .line 30
    .line 31
    instance-of v0, p4, Lvd/j;

    .line 32
    .line 33
    if-eqz v0, :cond_9

    .line 34
    .line 35
    check-cast p4, Lvd/j;

    .line 36
    .line 37
    invoke-virtual {p4}, Lvd/j;->d()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    new-array p1, v4, [B

    .line 44
    .line 45
    iput-object p1, p0, Lfd/s;->L:[B

    .line 46
    .line 47
    new-array p1, v4, [B

    .line 48
    .line 49
    iput-object p1, p0, Lfd/s;->M:[B

    .line 50
    .line 51
    const p1, 0x7fffffff

    .line 52
    .line 53
    .line 54
    and-int/2addr p1, p3

    .line 55
    iput p1, p0, Lfd/s;->S:I

    .line 56
    .line 57
    invoke-virtual {p4}, Lvd/j;->f()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    iget-object p1, p4, Lvd/j;->c:Ljava/lang/String;

    .line 64
    .line 65
    iput-object p1, p0, Lfd/s;->O:Ljava/lang/String;

    .line 66
    .line 67
    iget-boolean p2, p0, Led/c;->n:Z

    .line 68
    .line 69
    if-eqz p2, :cond_0

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lfd/s;->O:Ljava/lang/String;

    .line 76
    .line 77
    :cond_0
    iget-object p1, p4, Lvd/j;->b:Ljava/lang/String;

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :cond_1
    iput-object v2, p0, Lfd/s;->P:Ljava/lang/String;

    .line 86
    .line 87
    goto/16 :goto_1

    .line 88
    .line 89
    :cond_2
    iput-object v3, p0, Lfd/s;->O:Ljava/lang/String;

    .line 90
    .line 91
    iput-object v3, p0, Lfd/s;->P:Ljava/lang/String;

    .line 92
    .line 93
    goto/16 :goto_1

    .line 94
    .line 95
    :cond_3
    iget-object p3, p4, Lvd/j;->c:Ljava/lang/String;

    .line 96
    .line 97
    iput-object p3, p0, Lfd/s;->O:Ljava/lang/String;

    .line 98
    .line 99
    iget-boolean v0, p0, Led/c;->n:Z

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    iput-object p3, p0, Lfd/s;->O:Ljava/lang/String;

    .line 108
    .line 109
    :cond_4
    iget-object p3, p4, Lvd/j;->b:Ljava/lang/String;

    .line 110
    .line 111
    if-eqz p3, :cond_5

    .line 112
    .line 113
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    :cond_5
    iput-object v2, p0, Lfd/s;->P:Ljava/lang/String;

    .line 118
    .line 119
    iget-boolean p3, p2, Lfd/b;->h:Z

    .line 120
    .line 121
    if-eqz p3, :cond_7

    .line 122
    .line 123
    iget-object p3, p2, Lfd/b;->p:[B

    .line 124
    .line 125
    invoke-virtual {p4, p1, p3}, Lvd/j;->b(Lvc/b;[B)[B

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    iput-object p3, p0, Lfd/s;->L:[B

    .line 130
    .line 131
    iget-object p2, p2, Lfd/b;->p:[B

    .line 132
    .line 133
    invoke-virtual {p4, p1, p2}, Lvd/j;->c(Lvc/b;[B)[B

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iput-object p1, p0, Lfd/s;->M:[B

    .line 138
    .line 139
    array-length p2, p3

    .line 140
    if-nez p2, :cond_10

    .line 141
    .line 142
    array-length p1, p1

    .line 143
    if-eqz p1, :cond_6

    .line 144
    .line 145
    goto/16 :goto_1

    .line 146
    .line 147
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 148
    .line 149
    const-string p2, "Null setup prohibited."

    .line 150
    .line 151
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p1

    .line 155
    :cond_7
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Lwc/a;

    .line 160
    .line 161
    iget-boolean p1, p1, Lwc/a;->v:Z

    .line 162
    .line 163
    if-nez p1, :cond_8

    .line 164
    .line 165
    iget-object p1, p4, Lvd/j;->d:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    add-int/2addr p2, v1

    .line 172
    mul-int/lit8 p2, p2, 0x2

    .line 173
    .line 174
    new-array p2, p2, [B

    .line 175
    .line 176
    iput-object p2, p0, Lfd/s;->L:[B

    .line 177
    .line 178
    new-array p3, v4, [B

    .line 179
    .line 180
    iput-object p3, p0, Lfd/s;->M:[B

    .line 181
    .line 182
    invoke-virtual {p0, p1, v4, p2}, Led/c;->r0(Ljava/lang/String;I[B)I

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    .line 187
    .line 188
    const-string p2, "Plain text passwords are disabled"

    .line 189
    .line 190
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p1

    .line 194
    :cond_9
    instance-of p1, p4, [B

    .line 195
    .line 196
    if-eqz p1, :cond_a

    .line 197
    .line 198
    check-cast p4, [B

    .line 199
    .line 200
    iput-object p4, p0, Lfd/s;->N:[B

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_a
    new-instance p1, Lvd/r;

    .line 204
    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string p3, "Unsupported credential type "

    .line 208
    .line 209
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    if-eqz p4, :cond_b

    .line 213
    .line 214
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    move-result-object p3

    .line 218
    goto :goto_0

    .line 219
    :cond_b
    const-string p3, "NULL"

    .line 220
    .line 221
    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    invoke-direct {p1, p2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw p1

    .line 232
    :cond_c
    if-nez v0, :cond_12

    .line 233
    .line 234
    instance-of p1, p4, Lvd/j;

    .line 235
    .line 236
    if-eqz p1, :cond_11

    .line 237
    .line 238
    check-cast p4, Lvd/j;

    .line 239
    .line 240
    new-array p1, v4, [B

    .line 241
    .line 242
    iput-object p1, p0, Lfd/s;->L:[B

    .line 243
    .line 244
    new-array p1, v4, [B

    .line 245
    .line 246
    iput-object p1, p0, Lfd/s;->M:[B

    .line 247
    .line 248
    invoke-virtual {p4}, Lvd/j;->d()Z

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    if-nez p1, :cond_f

    .line 253
    .line 254
    iget-object p1, p4, Lvd/j;->c:Ljava/lang/String;

    .line 255
    .line 256
    iput-object p1, p0, Lfd/s;->O:Ljava/lang/String;

    .line 257
    .line 258
    iget-boolean p2, p0, Led/c;->n:Z

    .line 259
    .line 260
    if-eqz p2, :cond_d

    .line 261
    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    iput-object p1, p0, Lfd/s;->O:Ljava/lang/String;

    .line 267
    .line 268
    :cond_d
    iget-object p1, p4, Lvd/j;->b:Ljava/lang/String;

    .line 269
    .line 270
    if-eqz p1, :cond_e

    .line 271
    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    :cond_e
    iput-object v2, p0, Lfd/s;->P:Ljava/lang/String;

    .line 277
    .line 278
    goto :goto_1

    .line 279
    :cond_f
    iput-object v3, p0, Lfd/s;->O:Ljava/lang/String;

    .line 280
    .line 281
    iput-object v3, p0, Lfd/s;->P:Ljava/lang/String;

    .line 282
    .line 283
    :cond_10
    :goto_1
    return-void

    .line 284
    :cond_11
    new-instance p1, Lvd/r;

    .line 285
    .line 286
    const-string p2, "Unsupported credential type"

    .line 287
    .line 288
    invoke-direct {p1, p2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    throw p1

    .line 292
    :cond_12
    new-instance p1, Lvd/r;

    .line 293
    .line 294
    const-string p2, "Unsupported"

    .line 295
    .line 296
    invoke-direct {p1, p2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw p1
.end method


# virtual methods
.method public final i0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final k0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final o0(I[B)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lfd/s;->N:[B

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    invoke-static {v1, v0, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    .line 9
    .line 10
    array-length v0, v1

    .line 11
    add-int/2addr v0, p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lfd/s;->L:[B

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    invoke-static {v1, v0, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    array-length v1, v1

    .line 20
    add-int/2addr v1, p1

    .line 21
    iget-object v2, p0, Lfd/s;->M:[B

    .line 22
    .line 23
    array-length v3, v2

    .line 24
    invoke-static {v2, v0, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    array-length v0, v2

    .line 28
    add-int/2addr v1, v0

    .line 29
    iget-object v0, p0, Lfd/s;->O:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1, p2}, Led/c;->r0(Ljava/lang/String;I[B)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v0, v1

    .line 36
    iget-object v1, p0, Lfd/s;->P:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0, v1, v0, p2}, Led/c;->r0(Ljava/lang/String;I[B)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    :goto_0
    iget-object v1, p0, Led/c;->x:Lvc/f;

    .line 44
    .line 45
    move-object v2, v1

    .line 46
    check-cast v2, Lwc/a;

    .line 47
    .line 48
    iget-object v2, v2, Lwc/a;->J:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0, v2, v0, p2}, Led/c;->r0(Ljava/lang/String;I[B)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    add-int/2addr v2, v0

    .line 55
    check-cast v1, Lwc/a;

    .line 56
    .line 57
    iget-object v0, v1, Lwc/a;->K:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p0, v0, v2, p2}, Led/c;->r0(Ljava/lang/String;I[B)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    add-int/2addr p2, v2

    .line 64
    sub-int/2addr p2, p1

    .line 65
    return p2
.end method

.method public final q0(I[B)I
    .locals 4

    .line 1
    iget-object v0, p0, Lfd/s;->R:Lfd/j;

    .line 2
    .line 3
    iget v1, v0, Lfd/j;->L:I

    .line 4
    .line 5
    int-to-long v1, v1

    .line 6
    invoke-static {v1, v2, p2, p1}, Lrd/a;->e(J[BI)V

    .line 7
    .line 8
    .line 9
    add-int/lit8 v1, p1, 0x2

    .line 10
    .line 11
    iget v0, v0, Lfd/j;->K:I

    .line 12
    .line 13
    int-to-long v2, v0

    .line 14
    invoke-static {v2, v3, p2, v1}, Lrd/a;->e(J[BI)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v0, p1, 0x4

    .line 18
    .line 19
    iget-object v1, p0, Led/c;->x:Lvc/f;

    .line 20
    .line 21
    check-cast v1, Lwc/a;

    .line 22
    .line 23
    iget v1, v1, Lwc/a;->L:I

    .line 24
    .line 25
    int-to-long v1, v1

    .line 26
    invoke-static {v1, v2, p2, v0}, Lrd/a;->e(J[BI)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v0, p1, 0x6

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    int-to-long v2, v1

    .line 33
    invoke-static {v2, v3, p2, v0}, Lrd/a;->f(J[BI)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, p1, 0xa

    .line 37
    .line 38
    iget-object v2, p0, Lfd/s;->N:[B

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    array-length v2, v2

    .line 43
    int-to-long v2, v2

    .line 44
    invoke-static {v2, v3, p2, v0}, Lrd/a;->e(J[BI)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v0, p1, 0xc

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v2, p0, Lfd/s;->L:[B

    .line 51
    .line 52
    array-length v2, v2

    .line 53
    int-to-long v2, v2

    .line 54
    invoke-static {v2, v3, p2, v0}, Lrd/a;->e(J[BI)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v0, p1, 0xc

    .line 58
    .line 59
    iget-object v2, p0, Lfd/s;->M:[B

    .line 60
    .line 61
    array-length v2, v2

    .line 62
    int-to-long v2, v2

    .line 63
    invoke-static {v2, v3, p2, v0}, Lrd/a;->e(J[BI)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 v0, p1, 0xe

    .line 67
    .line 68
    :goto_0
    add-int/lit8 v2, v0, 0x1

    .line 69
    .line 70
    aput-byte v1, p2, v0

    .line 71
    .line 72
    add-int/lit8 v3, v0, 0x2

    .line 73
    .line 74
    aput-byte v1, p2, v2

    .line 75
    .line 76
    add-int/lit8 v2, v0, 0x3

    .line 77
    .line 78
    aput-byte v1, p2, v3

    .line 79
    .line 80
    add-int/lit8 v3, v0, 0x4

    .line 81
    .line 82
    aput-byte v1, p2, v2

    .line 83
    .line 84
    iget v1, p0, Lfd/s;->S:I

    .line 85
    .line 86
    int-to-long v1, v1

    .line 87
    invoke-static {v1, v2, p2, v3}, Lrd/a;->f(J[BI)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v0, v0, 0x8

    .line 91
    .line 92
    sub-int/2addr v0, p1

    .line 93
    return v0
.end method

.method public final s0(Lvc/f;B)I
    .locals 1

    .line 1
    const/16 v0, 0x75

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    const-string p2, "SessionSetupAndX.TreeConnectAndX"

    .line 6
    .line 7
    check-cast p1, Lwc/a;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lwc/a;->a(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "SmbComSessionSetupAndX["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Led/a;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",snd_buf_size="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lfd/s;->R:Lfd/j;

    .line 23
    .line 24
    iget v3, v2, Lfd/j;->L:I

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, ",maxMpxCount="

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v2, v2, Lfd/j;->K:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, ",VC_NUMBER="

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Led/c;->x:Lvc/f;

    .line 45
    .line 46
    check-cast v2, Lwc/a;

    .line 47
    .line 48
    iget v3, v2, Lwc/a;->L:I

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v3, ",sessionKey=0,lmHash.length="

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v3, p0, Lfd/s;->L:[B

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    if-nez v3, :cond_0

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    array-length v3, v3

    .line 66
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, ",ntHash.length="

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lfd/s;->M:[B

    .line 75
    .line 76
    if-nez v3, :cond_1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    array-length v4, v3

    .line 80
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v3, ",capabilities="

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v3, p0, Lfd/s;->S:I

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v3, ",accountName="

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Lfd/s;->O:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, ",primaryDomain="

    .line 104
    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v3, p0, Lfd/s;->P:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v3, ",NATIVE_OS="

    .line 114
    .line 115
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v3, v2, Lwc/a;->J:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v3, ",NATIVE_LANMAN="

    .line 124
    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v2, v2, Lwc/a;->K:Ljava/lang/String;

    .line 129
    .line 130
    const-string v3, "]"

    .line 131
    .line 132
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-object v0
.end method
