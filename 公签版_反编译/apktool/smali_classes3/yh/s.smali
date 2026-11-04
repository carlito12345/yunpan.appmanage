.class public final Lyh/s;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final a:Lyh/b;

.field public b:Ljava/io/DataInputStream;

.field public c:Ldi/c;

.field public d:Lfi/b;

.field public e:Lei/f;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/io/IOException;

.field public final l:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILyh/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lyh/s;->f:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lyh/s;->g:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lyh/s;->h:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lyh/s;->i:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lyh/s;->j:Z

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lyh/s;->k:Ljava/io/IOException;

    .line 18
    .line 19
    new-array v0, v1, [B

    .line 20
    .line 21
    iput-object v0, p0, Lyh/s;->l:[B

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iput-object p3, p0, Lyh/s;->a:Lyh/b;

    .line 27
    .line 28
    new-instance v0, Ljava/io/DataInputStream;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lyh/s;->b:Ljava/io/DataInputStream;

    .line 34
    .line 35
    new-instance p1, Lfi/b;

    .line 36
    .line 37
    invoke-direct {p1, p3}, Lfi/b;-><init>(Lyh/b;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lyh/s;->d:Lfi/b;

    .line 41
    .line 42
    new-instance p1, Ldi/c;

    .line 43
    .line 44
    invoke-static {p2}, Lyh/s;->A(I)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-direct {p1, p2, p3}, Ldi/c;-><init>(ILyh/b;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lyh/s;->c:Ldi/c;

    .line 52
    .line 53
    return-void
.end method

.method public static A(I)I
    .locals 2

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const v0, 0x7ffffff0

    .line 6
    .line 7
    .line 8
    if-gt p0, v0, :cond_0

    .line 9
    .line 10
    add-int/lit8 p0, p0, 0xf

    .line 11
    .line 12
    and-int/lit8 p0, p0, -0x10

    .line 13
    .line 14
    return p0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v1, "Unsupported dictionary size "

    .line 18
    .line 19
    invoke-static {p0, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method


# virtual methods
.method public final available()I
    .locals 2

    .line 1
    iget-object v0, p0, Lyh/s;->b:Ljava/io/DataInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lyh/s;->k:Ljava/io/IOException;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Lyh/s;->g:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lyh/s;->f:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v1, p0, Lyh/s;->f:I

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :goto_0
    return v0

    .line 27
    :cond_1
    throw v1

    .line 28
    :cond_2
    new-instance v0, Lyh/f0;

    .line 29
    .line 30
    const-string v1, "Stream closed"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lyh/f0;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lyh/s;->b:Ljava/io/DataInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lyh/s;->c:Ldi/c;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lyh/s;->a:Lyh/b;

    .line 11
    .line 12
    iget-object v0, v0, Ldi/c;->a:[B

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Lyh/b;->c([B)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lyh/s;->c:Ldi/c;

    .line 18
    .line 19
    iget-object v0, p0, Lyh/s;->d:Lfi/b;

    .line 20
    .line 21
    iget-object v0, v0, Lfi/b;->n:[B

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Lyh/b;->c([B)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lyh/s;->d:Lfi/b;

    .line 27
    .line 28
    :cond_0
    :try_start_0
    iget-object v0, p0, Lyh/s;->b:Ljava/io/DataInputStream;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lyh/s;->b:Ljava/io/DataInputStream;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    iput-object v1, p0, Lyh/s;->b:Ljava/io/DataInputStream;

    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public final r()V
    .locals 11

    .line 1
    iget-object v0, p0, Lyh/s;->b:Ljava/io/DataInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iput-boolean v1, p0, Lyh/s;->j:Z

    .line 11
    .line 12
    iget-object v0, p0, Lyh/s;->c:Ldi/c;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lyh/s;->a:Lyh/b;

    .line 17
    .line 18
    iget-object v0, v0, Ldi/c;->a:[B

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lyh/b;->c([B)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lyh/s;->c:Ldi/c;

    .line 25
    .line 26
    iget-object v2, p0, Lyh/s;->d:Lfi/b;

    .line 27
    .line 28
    iget-object v2, v2, Lfi/b;->n:[B

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lyh/b;->c([B)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lyh/s;->d:Lfi/b;

    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :cond_1
    const/16 v2, 0xe0

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    if-ge v0, v2, :cond_4

    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-boolean v4, p0, Lyh/s;->h:Z

    .line 45
    .line 46
    if-nez v4, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    new-instance v0, Lyh/h;

    .line 50
    .line 51
    invoke-direct {v0}, Lyh/h;-><init>()V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lyh/s;->i:Z

    .line 56
    .line 57
    iput-boolean v3, p0, Lyh/s;->h:Z

    .line 58
    .line 59
    iget-object v4, p0, Lyh/s;->c:Ldi/c;

    .line 60
    .line 61
    iput v3, v4, Ldi/c;->c:I

    .line 62
    .line 63
    iput v3, v4, Ldi/c;->d:I

    .line 64
    .line 65
    iput v3, v4, Ldi/c;->e:I

    .line 66
    .line 67
    iput v3, v4, Ldi/c;->f:I

    .line 68
    .line 69
    iget v5, v4, Ldi/c;->b:I

    .line 70
    .line 71
    sub-int/2addr v5, v1

    .line 72
    iget-object v4, v4, Ldi/c;->a:[B

    .line 73
    .line 74
    aput-byte v3, v4, v5

    .line 75
    .line 76
    :goto_1
    const/16 v4, 0x80

    .line 77
    .line 78
    if-lt v0, v4, :cond_c

    .line 79
    .line 80
    iput-boolean v1, p0, Lyh/s;->g:Z

    .line 81
    .line 82
    and-int/lit8 v4, v0, 0x1f

    .line 83
    .line 84
    shl-int/lit8 v4, v4, 0x10

    .line 85
    .line 86
    iput v4, p0, Lyh/s;->f:I

    .line 87
    .line 88
    iget-object v5, p0, Lyh/s;->b:Ljava/io/DataInputStream;

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    add-int/2addr v5, v1

    .line 95
    add-int/2addr v5, v4

    .line 96
    iput v5, p0, Lyh/s;->f:I

    .line 97
    .line 98
    iget-object v1, p0, Lyh/s;->b:Ljava/io/DataInputStream;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    add-int/lit8 v4, v1, 0x1

    .line 105
    .line 106
    const/16 v5, 0xc0

    .line 107
    .line 108
    if-lt v0, v5, :cond_7

    .line 109
    .line 110
    iput-boolean v3, p0, Lyh/s;->i:Z

    .line 111
    .line 112
    iget-object v0, p0, Lyh/s;->b:Ljava/io/DataInputStream;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-gt v0, v2, :cond_6

    .line 119
    .line 120
    div-int/lit8 v10, v0, 0x2d

    .line 121
    .line 122
    mul-int/lit8 v2, v10, 0x2d

    .line 123
    .line 124
    sub-int/2addr v0, v2

    .line 125
    div-int/lit8 v9, v0, 0x9

    .line 126
    .line 127
    mul-int/lit8 v2, v9, 0x9

    .line 128
    .line 129
    sub-int v8, v0, v2

    .line 130
    .line 131
    add-int v0, v8, v9

    .line 132
    .line 133
    const/4 v2, 0x4

    .line 134
    if-gt v0, v2, :cond_5

    .line 135
    .line 136
    new-instance v0, Lei/f;

    .line 137
    .line 138
    iget-object v6, p0, Lyh/s;->c:Ldi/c;

    .line 139
    .line 140
    iget-object v7, p0, Lyh/s;->d:Lfi/b;

    .line 141
    .line 142
    move-object v5, v0

    .line 143
    invoke-direct/range {v5 .. v10}, Lei/f;-><init>(Ldi/c;Lfi/a;III)V

    .line 144
    .line 145
    .line 146
    iput-object v0, p0, Lyh/s;->e:Lei/f;

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    new-instance v0, Lyh/h;

    .line 150
    .line 151
    invoke-direct {v0}, Lyh/h;-><init>()V

    .line 152
    .line 153
    .line 154
    throw v0

    .line 155
    :cond_6
    new-instance v0, Lyh/h;

    .line 156
    .line 157
    invoke-direct {v0}, Lyh/h;-><init>()V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_7
    iget-boolean v2, p0, Lyh/s;->i:Z

    .line 162
    .line 163
    if-nez v2, :cond_b

    .line 164
    .line 165
    const/16 v2, 0xa0

    .line 166
    .line 167
    if-lt v0, v2, :cond_8

    .line 168
    .line 169
    iget-object v0, p0, Lyh/s;->e:Lei/f;

    .line 170
    .line 171
    invoke-virtual {v0}, Lei/f;->a()V

    .line 172
    .line 173
    .line 174
    :cond_8
    :goto_2
    iget-object v0, p0, Lyh/s;->d:Lfi/b;

    .line 175
    .line 176
    iget-object v2, p0, Lyh/s;->b:Ljava/io/DataInputStream;

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    const/4 v3, 0x5

    .line 182
    if-lt v4, v3, :cond_a

    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-nez v3, :cond_9

    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    iput v3, v0, Lfi/a;->m:I

    .line 195
    .line 196
    const/4 v3, -0x1

    .line 197
    iput v3, v0, Lfi/a;->l:I

    .line 198
    .line 199
    add-int/lit8 v1, v1, -0x4

    .line 200
    .line 201
    iget-object v3, v0, Lfi/b;->n:[B

    .line 202
    .line 203
    array-length v4, v3

    .line 204
    sub-int/2addr v4, v1

    .line 205
    iput v4, v0, Lfi/b;->o:I

    .line 206
    .line 207
    invoke-virtual {v2, v3, v4, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_9
    new-instance v0, Lyh/h;

    .line 212
    .line 213
    invoke-direct {v0}, Lyh/h;-><init>()V

    .line 214
    .line 215
    .line 216
    throw v0

    .line 217
    :cond_a
    new-instance v0, Lyh/h;

    .line 218
    .line 219
    invoke-direct {v0}, Lyh/h;-><init>()V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :cond_b
    new-instance v0, Lyh/h;

    .line 224
    .line 225
    invoke-direct {v0}, Lyh/h;-><init>()V

    .line 226
    .line 227
    .line 228
    throw v0

    .line 229
    :cond_c
    const/4 v2, 0x2

    .line 230
    if-gt v0, v2, :cond_d

    .line 231
    .line 232
    iput-boolean v3, p0, Lyh/s;->g:Z

    .line 233
    .line 234
    iget-object v0, p0, Lyh/s;->b:Ljava/io/DataInputStream;

    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    add-int/2addr v0, v1

    .line 241
    iput v0, p0, Lyh/s;->f:I

    .line 242
    .line 243
    :goto_3
    return-void

    .line 244
    :cond_d
    new-instance v0, Lyh/h;

    .line 245
    .line 246
    invoke-direct {v0}, Lyh/h;-><init>()V

    .line 247
    .line 248
    .line 249
    throw v0
.end method

.method public final read()I
    .locals 4

    const/4 v0, 0x1

    .line 1
    iget-object v1, p0, Lyh/s;->l:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lyh/s;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v3, v0, 0xff

    :goto_0
    return v3
.end method

.method public final read([BII)I
    .locals 8

    if-ltz p2, :cond_e

    if-ltz p3, :cond_e

    add-int v0, p2, p3

    if-ltz v0, :cond_e

    .line 2
    array-length v1, p1

    if-gt v0, v1, :cond_e

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lyh/s;->b:Ljava/io/DataInputStream;

    if-eqz v1, :cond_d

    .line 4
    iget-object v1, p0, Lyh/s;->k:Ljava/io/IOException;

    if-nez v1, :cond_c

    .line 5
    iget-boolean v1, p0, Lyh/s;->j:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-lez p3, :cond_b

    .line 6
    :try_start_0
    iget v3, p0, Lyh/s;->f:I

    if-nez v3, :cond_4

    .line 7
    invoke-virtual {p0}, Lyh/s;->r()V

    .line 8
    iget-boolean v3, p0, Lyh/s;->j:Z

    if-eqz v3, :cond_4

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    return v2

    :catch_0
    move-exception p1

    goto/16 :goto_5

    .line 9
    :cond_4
    iget v3, p0, Lyh/s;->f:I

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 10
    iget-boolean v4, p0, Lyh/s;->g:Z

    if-nez v4, :cond_5

    .line 11
    iget-object v4, p0, Lyh/s;->c:Ldi/c;

    iget-object v5, p0, Lyh/s;->b:Ljava/io/DataInputStream;

    .line 12
    iget v6, v4, Ldi/c;->b:I

    .line 13
    iget v7, v4, Ldi/c;->d:I

    sub-int/2addr v6, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 14
    iget-object v6, v4, Ldi/c;->a:[B

    iget v7, v4, Ldi/c;->d:I

    invoke-virtual {v5, v6, v7, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 15
    iget v5, v4, Ldi/c;->d:I

    add-int/2addr v5, v3

    iput v5, v4, Ldi/c;->d:I

    .line 16
    iget v3, v4, Ldi/c;->e:I

    if-ge v3, v5, :cond_7

    .line 17
    iput v5, v4, Ldi/c;->e:I

    goto :goto_3

    .line 18
    :cond_5
    iget-object v4, p0, Lyh/s;->c:Ldi/c;

    .line 19
    iget v5, v4, Ldi/c;->d:I

    .line 20
    iget v6, v4, Ldi/c;->b:I

    sub-int v7, v6, v5

    if-gt v7, v3, :cond_6

    .line 21
    iput v6, v4, Ldi/c;->f:I

    goto :goto_2

    :cond_6
    add-int/2addr v5, v3

    .line 22
    iput v5, v4, Ldi/c;->f:I

    .line 23
    :goto_2
    iget-object v3, p0, Lyh/s;->e:Lei/f;

    invoke-virtual {v3}, Lei/f;->b()V

    .line 24
    :cond_7
    :goto_3
    iget-object v3, p0, Lyh/s;->c:Ldi/c;

    .line 25
    iget v4, v3, Ldi/c;->d:I

    .line 26
    iget v5, v3, Ldi/c;->c:I

    sub-int v6, v4, v5

    .line 27
    iget v7, v3, Ldi/c;->b:I

    if-ne v4, v7, :cond_8

    .line 28
    iput v0, v3, Ldi/c;->d:I

    .line 29
    :cond_8
    iget-object v4, v3, Ldi/c;->a:[B

    invoke-static {v4, v5, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget v4, v3, Ldi/c;->d:I

    iput v4, v3, Ldi/c;->c:I

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    add-int/2addr v1, v6

    .line 31
    iget v3, p0, Lyh/s;->f:I

    sub-int/2addr v3, v6

    iput v3, p0, Lyh/s;->f:I

    if-nez v3, :cond_2

    .line 32
    iget-object v3, p0, Lyh/s;->d:Lfi/b;

    .line 33
    iget v4, v3, Lfi/b;->o:I

    .line 34
    iget-object v5, v3, Lfi/b;->n:[B

    array-length v5, v5

    if-ne v4, v5, :cond_a

    iget v3, v3, Lfi/a;->m:I

    if-nez v3, :cond_a

    .line 35
    iget-object v3, p0, Lyh/s;->c:Ldi/c;

    .line 36
    iget v3, v3, Ldi/c;->g:I

    if-lez v3, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_a

    goto/16 :goto_0

    .line 37
    :cond_a
    new-instance p1, Lyh/h;

    invoke-direct {p1}, Lyh/h;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_5
    iput-object p1, p0, Lyh/s;->k:Ljava/io/IOException;

    .line 39
    throw p1

    :cond_b
    return v1

    .line 40
    :cond_c
    throw v1

    .line 41
    :cond_d
    new-instance p1, Lyh/f0;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Lyh/f0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method
