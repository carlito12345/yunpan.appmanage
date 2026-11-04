.class public final Lce/g0;
.super Lce/a;
.source "SourceFile"


# static fields
.field public static final O:I

.field public static final P:Z


# instance fields
.field public final F:[B

.field public final G:[B

.field public final H:[B

.field public final I:I

.field public final K:Ljava/lang/String;

.field public final L:Ljava/lang/String;

.field public final M:Lce/y0;

.field public final N:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "jcifs.smb1.smb.client.SessionSetupAndX.TreeConnectAndX"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput v0, Lce/g0;->O:I

    .line 9
    .line 10
    const-string v0, "jcifs.smb1.smb.client.disablePlainTextPasswords"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lwd/a;->a(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sput-boolean v0, Lce/g0;->P:Z

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lce/y0;Lce/q;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-direct {p0, p2}, Lce/a;-><init>(Lce/q;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lce/g0;->H:[B

    .line 6
    .line 7
    const/16 p2, 0x73

    .line 8
    .line 9
    iput-byte p2, p0, Lce/q;->c:B

    .line 10
    .line 11
    iput-object p1, p0, Lce/g0;->M:Lce/y0;

    .line 12
    .line 13
    iput-object p3, p0, Lce/g0;->N:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object p2, p1, Lce/y0;->h:Lce/b1;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object p2, p1, Lce/y0;->h:Lce/b1;

    .line 21
    .line 22
    iget v0, p2, Lce/b1;->B:I

    .line 23
    .line 24
    iput v0, p0, Lce/g0;->I:I

    .line 25
    .line 26
    iget-object p2, p2, Lce/b1;->w:Lce/a1;

    .line 27
    .line 28
    iget v1, p2, Lce/a1;->g:I

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    const-string v3, "Unsupported credential type"

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-ne v1, v4, :cond_9

    .line 35
    .line 36
    instance-of v1, p3, Lce/p;

    .line 37
    .line 38
    if-eqz v1, :cond_7

    .line 39
    .line 40
    check-cast p3, Lce/p;

    .line 41
    .line 42
    sget-object v1, Lce/p;->l:Lce/p;

    .line 43
    .line 44
    if-ne p3, v1, :cond_0

    .line 45
    .line 46
    new-array p1, v2, [B

    .line 47
    .line 48
    iput-object p1, p0, Lce/g0;->F:[B

    .line 49
    .line 50
    new-array p1, v2, [B

    .line 51
    .line 52
    iput-object p1, p0, Lce/g0;->G:[B

    .line 53
    .line 54
    const p1, 0x7fffffff

    .line 55
    .line 56
    .line 57
    and-int/2addr p1, v0

    .line 58
    iput p1, p0, Lce/g0;->I:I

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-boolean v0, p2, Lce/a1;->h:Z

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object p2, p2, Lce/a1;->p:[B

    .line 66
    .line 67
    invoke-virtual {p3, p2}, Lce/p;->b([B)[B

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    iput-object p2, p0, Lce/g0;->F:[B

    .line 72
    .line 73
    iget-object p1, p1, Lce/y0;->h:Lce/b1;

    .line 74
    .line 75
    iget-object p1, p1, Lce/b1;->w:Lce/a1;

    .line 76
    .line 77
    iget-object p1, p1, Lce/a1;->p:[B

    .line 78
    .line 79
    invoke-virtual {p3, p1}, Lce/p;->h([B)[B

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lce/g0;->G:[B

    .line 84
    .line 85
    array-length p2, p2

    .line 86
    if-nez p2, :cond_4

    .line 87
    .line 88
    array-length p1, p1

    .line 89
    if-eqz p1, :cond_1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 93
    .line 94
    const-string p2, "Null setup prohibited."

    .line 95
    .line 96
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_2
    sget-boolean p1, Lce/g0;->P:Z

    .line 101
    .line 102
    if-nez p1, :cond_6

    .line 103
    .line 104
    iget-boolean p1, p0, Lce/q;->q:Z

    .line 105
    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    iget-object p1, p3, Lce/p;->c:Ljava/lang/String;

    .line 109
    .line 110
    new-array p2, v2, [B

    .line 111
    .line 112
    iput-object p2, p0, Lce/g0;->F:[B

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    add-int/2addr p2, v4

    .line 119
    mul-int/lit8 p2, p2, 0x2

    .line 120
    .line 121
    new-array p2, p2, [B

    .line 122
    .line 123
    iput-object p2, p0, Lce/g0;->G:[B

    .line 124
    .line 125
    iget-boolean v0, p0, Lce/q;->q:Z

    .line 126
    .line 127
    invoke-virtual {p0, p1, p2, v2, v0}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    iget-object p1, p3, Lce/p;->c:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    add-int/2addr p2, v4

    .line 138
    mul-int/lit8 p2, p2, 0x2

    .line 139
    .line 140
    new-array p2, p2, [B

    .line 141
    .line 142
    iput-object p2, p0, Lce/g0;->F:[B

    .line 143
    .line 144
    new-array v0, v2, [B

    .line 145
    .line 146
    iput-object v0, p0, Lce/g0;->G:[B

    .line 147
    .line 148
    iget-boolean v0, p0, Lce/q;->q:Z

    .line 149
    .line 150
    invoke-virtual {p0, p1, p2, v2, v0}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 151
    .line 152
    .line 153
    :cond_4
    :goto_0
    iget-object p1, p3, Lce/p;->b:Ljava/lang/String;

    .line 154
    .line 155
    iput-object p1, p0, Lce/g0;->K:Ljava/lang/String;

    .line 156
    .line 157
    iget-boolean p2, p0, Lce/q;->q:Z

    .line 158
    .line 159
    if-eqz p2, :cond_5

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iput-object p1, p0, Lce/g0;->K:Ljava/lang/String;

    .line 166
    .line 167
    :cond_5
    iget-object p1, p3, Lce/p;->a:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iput-object p1, p0, Lce/g0;->L:Ljava/lang/String;

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 177
    .line 178
    const-string p2, "Plain text passwords are disabled"

    .line 179
    .line 180
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1

    .line 184
    :cond_7
    instance-of p1, p3, [B

    .line 185
    .line 186
    if-eqz p1, :cond_8

    .line 187
    .line 188
    check-cast p3, [B

    .line 189
    .line 190
    iput-object p3, p0, Lce/g0;->H:[B

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_8
    new-instance p1, Lce/r0;

    .line 194
    .line 195
    invoke-direct {p1, v3}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p1

    .line 199
    :cond_9
    if-nez v1, :cond_c

    .line 200
    .line 201
    instance-of p1, p3, Lce/p;

    .line 202
    .line 203
    if-eqz p1, :cond_b

    .line 204
    .line 205
    check-cast p3, Lce/p;

    .line 206
    .line 207
    new-array p1, v2, [B

    .line 208
    .line 209
    iput-object p1, p0, Lce/g0;->F:[B

    .line 210
    .line 211
    new-array p1, v2, [B

    .line 212
    .line 213
    iput-object p1, p0, Lce/g0;->G:[B

    .line 214
    .line 215
    iget-object p1, p3, Lce/p;->b:Ljava/lang/String;

    .line 216
    .line 217
    iput-object p1, p0, Lce/g0;->K:Ljava/lang/String;

    .line 218
    .line 219
    iget-boolean p2, p0, Lce/q;->q:Z

    .line 220
    .line 221
    if-eqz p2, :cond_a

    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    iput-object p1, p0, Lce/g0;->K:Ljava/lang/String;

    .line 228
    .line 229
    :cond_a
    iget-object p1, p3, Lce/p;->a:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    iput-object p1, p0, Lce/g0;->L:Ljava/lang/String;

    .line 236
    .line 237
    :goto_1
    return-void

    .line 238
    :cond_b
    new-instance p1, Lce/r0;

    .line 239
    .line 240
    invoke-direct {p1, v3}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw p1

    .line 244
    :cond_c
    new-instance p1, Lce/r0;

    .line 245
    .line 246
    const-string p2, "Unsupported"

    .line 247
    .line 248
    invoke-direct {p1, p2}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw p1
.end method


# virtual methods
.method public final d(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final i(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final o(I[B)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lce/g0;->H:[B

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
    iget-object v1, p0, Lce/g0;->F:[B

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
    iget-object v2, p0, Lce/g0;->G:[B

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
    iget-boolean v0, p0, Lce/q;->q:Z

    .line 30
    .line 31
    iget-object v2, p0, Lce/g0;->K:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, v2, p2, v1, v0}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v0, v1

    .line 38
    iget-boolean v1, p0, Lce/q;->q:Z

    .line 39
    .line 40
    iget-object v2, p0, Lce/g0;->L:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0, v2, p2, v0, v1}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/2addr v0, v1

    .line 47
    :goto_0
    iget-object v1, p0, Lce/g0;->M:Lce/y0;

    .line 48
    .line 49
    iget-object v2, v1, Lce/y0;->h:Lce/b1;

    .line 50
    .line 51
    iget-boolean v2, p0, Lce/q;->q:Z

    .line 52
    .line 53
    sget-object v3, Lce/q0;->w0:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p0, v3, p2, v0, v2}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    add-int/2addr v2, v0

    .line 60
    iget-object v0, v1, Lce/y0;->h:Lce/b1;

    .line 61
    .line 62
    iget-boolean v0, p0, Lce/q;->q:Z

    .line 63
    .line 64
    sget-object v1, Lce/q0;->x0:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p0, v1, p2, v2, v0}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    add-int/2addr p2, v2

    .line 71
    sub-int/2addr p2, p1

    .line 72
    return p2
.end method

.method public final t(I[B)I
    .locals 4

    .line 1
    iget-object v0, p0, Lce/g0;->M:Lce/y0;

    .line 2
    .line 3
    iget-object v1, v0, Lce/y0;->h:Lce/b1;

    .line 4
    .line 5
    iget v1, v1, Lce/b1;->z:I

    .line 6
    .line 7
    int-to-long v1, v1

    .line 8
    invoke-static {v1, v2, p2, p1}, Lce/q;->q(J[BI)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v1, p1, 0x2

    .line 12
    .line 13
    iget-object v2, v0, Lce/y0;->h:Lce/b1;

    .line 14
    .line 15
    iget v2, v2, Lce/b1;->y:I

    .line 16
    .line 17
    int-to-long v2, v2

    .line 18
    invoke-static {v2, v3, p2, v1}, Lce/q;->q(J[BI)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, p1, 0x4

    .line 22
    .line 23
    iget-object v0, v0, Lce/y0;->h:Lce/b1;

    .line 24
    .line 25
    const-wide/16 v2, 0x1

    .line 26
    .line 27
    invoke-static {v2, v3, p2, v1}, Lce/q;->q(J[BI)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v0, p1, 0x6

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    int-to-long v2, v1

    .line 34
    invoke-static {v2, v3, p2, v0}, Lce/q;->r(J[BI)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, p1, 0xa

    .line 38
    .line 39
    iget-object v2, p0, Lce/g0;->H:[B

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    array-length v2, v2

    .line 44
    int-to-long v2, v2

    .line 45
    invoke-static {v2, v3, p2, v0}, Lce/q;->q(J[BI)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v0, p1, 0xc

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v2, p0, Lce/g0;->F:[B

    .line 52
    .line 53
    array-length v2, v2

    .line 54
    int-to-long v2, v2

    .line 55
    invoke-static {v2, v3, p2, v0}, Lce/q;->q(J[BI)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v0, p1, 0xc

    .line 59
    .line 60
    iget-object v2, p0, Lce/g0;->G:[B

    .line 61
    .line 62
    array-length v2, v2

    .line 63
    int-to-long v2, v2

    .line 64
    invoke-static {v2, v3, p2, v0}, Lce/q;->q(J[BI)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v0, p1, 0xe

    .line 68
    .line 69
    :goto_0
    add-int/lit8 v2, v0, 0x1

    .line 70
    .line 71
    aput-byte v1, p2, v0

    .line 72
    .line 73
    add-int/lit8 v3, v0, 0x2

    .line 74
    .line 75
    aput-byte v1, p2, v2

    .line 76
    .line 77
    add-int/lit8 v2, v0, 0x3

    .line 78
    .line 79
    aput-byte v1, p2, v3

    .line 80
    .line 81
    add-int/lit8 v3, v0, 0x4

    .line 82
    .line 83
    aput-byte v1, p2, v2

    .line 84
    .line 85
    iget v1, p0, Lce/g0;->I:I

    .line 86
    .line 87
    int-to-long v1, v1

    .line 88
    invoke-static {v1, v2, p2, v3}, Lce/q;->r(J[BI)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v0, v0, 0x8

    .line 92
    .line 93
    sub-int/2addr v0, p1

    .line 94
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

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
    invoke-super {p0}, Lce/a;->toString()Ljava/lang/String;

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
    iget-object v2, p0, Lce/g0;->M:Lce/y0;

    .line 23
    .line 24
    iget-object v3, v2, Lce/y0;->h:Lce/b1;

    .line 25
    .line 26
    iget v3, v3, Lce/b1;->z:I

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, ",maxMpxCount="

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, v2, Lce/y0;->h:Lce/b1;

    .line 37
    .line 38
    iget v2, v2, Lce/b1;->y:I

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, ",VC_NUMBER=1,sessionKey=0,lmHash.length="

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lce/g0;->F:[B

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    if-nez v2, :cond_0

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    array-length v2, v2

    .line 56
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, ",ntHash.length="

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lce/g0;->G:[B

    .line 65
    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    array-length v3, v2

    .line 70
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v2, ",capabilities="

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v2, p0, Lce/g0;->I:I

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, ",accountName="

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lce/g0;->K:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v2, ",primaryDomain="

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lce/g0;->L:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, ",NATIVE_OS="

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    sget-object v2, Lce/q0;->w0:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v2, ",NATIVE_LANMAN="

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    sget-object v2, Lce/q0;->x0:Ljava/lang/String;

    .line 119
    .line 120
    const-string v3, "]"

    .line 121
    .line 122
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-object v0
.end method

.method public final v(B)I
    .locals 1

    .line 1
    const/16 v0, 0x75

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget p1, Lce/g0;->O:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method
