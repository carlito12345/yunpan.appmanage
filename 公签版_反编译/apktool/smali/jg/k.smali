.class public final Ljg/k;
.super Ljg/d;
.source "SourceFile"


# static fields
.field public static final c:[B


# instance fields
.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Ljg/k;->c:[B

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    .line 1
    const-class v0, Lyh/t;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-class v2, Ljava/lang/Number;

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    iput p1, p0, Ljg/k;->b:I

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-array p1, v3, [Ljava/lang/Class;

    .line 14
    .line 15
    aput-object v2, p1, v4

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljg/d;-><init>([Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    new-array p1, v1, [Ljava/lang/Class;

    .line 22
    .line 23
    aput-object v0, p1, v4

    .line 24
    .line 25
    aput-object v2, p1, v3

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljg/d;-><init>([Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    new-array p1, v1, [Ljava/lang/Class;

    .line 32
    .line 33
    aput-object v0, p1, v4

    .line 34
    .line 35
    aput-object v2, p1, v3

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljg/d;-><init>([Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_2
    new-array p1, v3, [Ljava/lang/Class;

    .line 42
    .line 43
    aput-object v2, p1, v4

    .line 44
    .line 45
    invoke-direct {p0, p1}, Ljg/d;-><init>([Ljava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_3
    new-array p1, v3, [Ljava/lang/Class;

    .line 50
    .line 51
    aput-object v2, p1, v4

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljg/d;-><init>([Ljava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_4
    new-array p1, v4, [Ljava/lang/Class;

    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljg/d;-><init>([Ljava/lang/Class;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_5
    new-array p1, v3, [Ljava/lang/Class;

    .line 64
    .line 65
    aput-object v2, p1, v4

    .line 66
    .line 67
    invoke-direct {p0, p1}, Ljg/d;-><init>([Ljava/lang/Class;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_6
    new-array p1, v3, [Ljava/lang/Class;

    .line 72
    .line 73
    const-class v0, Ljg/a;

    .line 74
    .line 75
    aput-object v0, p1, v4

    .line 76
    .line 77
    invoke-direct {p0, p1}, Ljg/d;-><init>([Ljava/lang/Class;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static f(Ljg/g;)I
    .locals 3

    .line 1
    iget-object p0, p0, Ljg/g;->d:[B

    .line 2
    .line 3
    if-eqz p0, :cond_4

    .line 4
    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-lt v0, v1, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    aget-byte p0, p0, v0

    .line 11
    .line 12
    and-int/lit16 v0, p0, 0xff

    .line 13
    .line 14
    and-int/lit16 v2, p0, 0xc0

    .line 15
    .line 16
    if-nez v2, :cond_2

    .line 17
    .line 18
    const/16 v2, 0x28

    .line 19
    .line 20
    if-gt v0, v2, :cond_1

    .line 21
    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    const/4 p0, -0x1

    .line 25
    return p0

    .line 26
    :cond_0
    and-int/2addr p0, v1

    .line 27
    or-int/lit8 p0, p0, 0x2

    .line 28
    .line 29
    div-int/lit8 v0, v0, 0x2

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0xb

    .line 32
    .line 33
    shl-int/2addr p0, v0

    .line 34
    return p0

    .line 35
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 36
    .line 37
    const-string v0, "Dictionary larger than 4GiB maximum size"

    .line 38
    .line 39
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 44
    .line 45
    const-string v0, "Unsupported LZMA2 property bits"

    .line 46
    .line 47
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 52
    .line 53
    const-string v0, "LZMA2 properties too short"

    .line 54
    .line 55
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 60
    .line 61
    const-string v0, "Missing LZMA2 properties"

    .line 62
    .line 63
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0
.end method

.method public static g(Ljg/g;)I
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/4 v3, 0x4

    .line 5
    if-ge v2, v3, :cond_0

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    add-int/2addr v3, v2

    .line 9
    iget-object v4, p0, Ljg/g;->d:[B

    .line 10
    .line 11
    aget-byte v4, v4, v3

    .line 12
    .line 13
    int-to-long v4, v4

    .line 14
    const-wide/16 v6, 0xff

    .line 15
    .line 16
    and-long/2addr v4, v6

    .line 17
    mul-int/lit8 v2, v2, 0x8

    .line 18
    .line 19
    shl-long/2addr v4, v2

    .line 20
    or-long/2addr v0, v4

    .line 21
    move v2, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    long-to-int p0, v0

    .line 24
    return p0
.end method

.method public static h(I[B[B)[B
    .locals 10

    .line 1
    :try_start_0
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    new-array v2, v1, [B

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    :goto_0
    const-wide/16 v5, 0x1

    .line 14
    .line 15
    shl-long v7, v5, p0

    .line 16
    .line 17
    cmp-long v9, v3, v7

    .line 18
    .line 19
    if-gez v9, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 28
    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    :goto_1
    if-ge v7, v1, :cond_1

    .line 32
    .line 33
    aget-byte v8, v2, v7

    .line 34
    .line 35
    add-int/lit8 v8, v8, 0x1

    .line 36
    .line 37
    int-to-byte v8, v8

    .line 38
    aput-byte v8, v2, v7

    .line 39
    .line 40
    if-eqz v8, :cond_0

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_2
    add-long/2addr v3, v5

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p2, "SHA-256 is unsupported by your Java implementation"

    .line 57
    .line 58
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    goto :goto_4

    .line 62
    :goto_3
    throw p1

    .line 63
    :goto_4
    goto :goto_3
.end method

.method public static i([C)[B
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    new-array v0, v0, [B

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/InputStream;JLjg/g;[BI)Ljava/io/InputStream;
    .locals 10

    .line 1
    move-object v0, p1

    .line 2
    move-object v1, p2

    .line 3
    move-object v2, p5

    .line 4
    move/from16 v3, p7

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v6, 0x1

    .line 8
    move-object v7, p0

    .line 9
    iget v5, v7, Ljg/k;->b:I

    .line 10
    .line 11
    packed-switch v5, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v5, v2, Ljg/g;->d:[B

    .line 15
    .line 16
    if-eqz v5, :cond_6

    .line 17
    .line 18
    array-length v8, v5

    .line 19
    if-lt v8, v6, :cond_5

    .line 20
    .line 21
    aget-byte v4, v5, v4

    .line 22
    .line 23
    invoke-static {p5}, Ljg/k;->g(Ljg/g;)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const v2, 0x7ffffff0

    .line 28
    .line 29
    .line 30
    if-gt v5, v2, :cond_4

    .line 31
    .line 32
    sget v0, Lyh/v;->k:I

    .line 33
    .line 34
    if-ltz v5, :cond_3

    .line 35
    .line 36
    if-gt v5, v2, :cond_3

    .line 37
    .line 38
    and-int/lit16 v0, v4, 0xff

    .line 39
    .line 40
    const/16 v2, 0xe0

    .line 41
    .line 42
    if-gt v0, v2, :cond_2

    .line 43
    .line 44
    rem-int/lit8 v0, v0, 0x2d

    .line 45
    .line 46
    div-int/lit8 v2, v0, 0x9

    .line 47
    .line 48
    mul-int/lit8 v8, v2, 0x9

    .line 49
    .line 50
    sub-int/2addr v0, v8

    .line 51
    if-ltz v0, :cond_1

    .line 52
    .line 53
    const/16 v8, 0x8

    .line 54
    .line 55
    if-gt v0, v8, :cond_1

    .line 56
    .line 57
    if-ltz v2, :cond_1

    .line 58
    .line 59
    const/4 v8, 0x4

    .line 60
    if-gt v2, v8, :cond_1

    .line 61
    .line 62
    invoke-static {v5}, Lyh/v;->r(I)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    div-int/lit16 v8, v8, 0x400

    .line 67
    .line 68
    add-int/lit8 v8, v8, 0xa

    .line 69
    .line 70
    const/16 v9, 0x600

    .line 71
    .line 72
    add-int/2addr v0, v2

    .line 73
    shl-int v0, v9, v0

    .line 74
    .line 75
    div-int/lit16 v0, v0, 0x400

    .line 76
    .line 77
    add-int/2addr v0, v8

    .line 78
    if-gt v0, v3, :cond_0

    .line 79
    .line 80
    new-instance v8, Lyh/v;

    .line 81
    .line 82
    move-object v0, v8

    .line 83
    move-object v1, p2

    .line 84
    move-wide v2, p3

    .line 85
    invoke-direct/range {v0 .. v5}, Lyh/v;-><init>(Ljava/io/InputStream;JBI)V

    .line 86
    .line 87
    .line 88
    iput-boolean v6, v8, Lyh/v;->g:Z

    .line 89
    .line 90
    return-object v8

    .line 91
    :cond_0
    new-instance v1, Lhg/b;

    .line 92
    .line 93
    int-to-long v4, v0

    .line 94
    invoke-direct {v1, v4, v5, v3}, Lhg/b;-><init>(JI)V

    .line 95
    .line 96
    .line 97
    throw v1

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    const-string v1, "Invalid lc or lp"

    .line 101
    .line 102
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_2
    new-instance v0, Lyh/h;

    .line 107
    .line 108
    const-string v1, "Invalid LZMA properties byte"

    .line 109
    .line 110
    invoke-direct {v0, v1}, Lyh/h;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_3
    new-instance v0, Lyh/c0;

    .line 115
    .line 116
    const-string v1, "LZMA dictionary is too big for this implementation"

    .line 117
    .line 118
    invoke-direct {v0, v1}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    :cond_4
    new-instance v1, Ljava/io/IOException;

    .line 123
    .line 124
    const-string v2, "Dictionary larger than 4GiB maximum size used in "

    .line 125
    .line 126
    invoke-static {v2, p1}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v1

    .line 134
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 135
    .line 136
    const-string v1, "LZMA properties too short"

    .line 137
    .line 138
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 143
    .line 144
    const-string v1, "Missing LZMA properties"

    .line 145
    .line 146
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :pswitch_0
    :try_start_0
    invoke-static {p5}, Ljg/k;->f(Ljg/g;)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    invoke-static {v0}, Lyh/s;->A(I)I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    div-int/lit16 v2, v2, 0x400

    .line 159
    .line 160
    add-int/lit8 v2, v2, 0x68

    .line 161
    .line 162
    if-gt v2, v3, :cond_7

    .line 163
    .line 164
    new-instance v2, Lyh/s;

    .line 165
    .line 166
    sget-object v3, Lyh/b;->a:Lyh/b;

    .line 167
    .line 168
    invoke-direct {v2, p2, v0, v3}, Lyh/s;-><init>(Ljava/io/InputStream;ILyh/b;)V

    .line 169
    .line 170
    .line 171
    return-object v2

    .line 172
    :catch_0
    move-exception v0

    .line 173
    goto :goto_0

    .line 174
    :cond_7
    new-instance v0, Lhg/b;

    .line 175
    .line 176
    int-to-long v1, v2

    .line 177
    invoke-direct {v0, v1, v2, v3}, Lhg/b;-><init>(JI)V

    .line 178
    .line 179
    .line 180
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    new-instance v1, Ljava/io/IOException;

    .line 182
    .line 183
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    throw v1

    .line 187
    :pswitch_1
    iget-object v0, v2, Ljg/g;->d:[B

    .line 188
    .line 189
    invoke-static {v0}, Lzg/a;->b(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_8

    .line 194
    .line 195
    const/4 v0, 0x1

    .line 196
    goto :goto_1

    .line 197
    :cond_8
    aget-byte v0, v0, v4

    .line 198
    .line 199
    and-int/lit16 v0, v0, 0xff

    .line 200
    .line 201
    add-int/2addr v0, v6

    .line 202
    :goto_1
    if-lt v0, v6, :cond_9

    .line 203
    .line 204
    const/16 v2, 0x100

    .line 205
    .line 206
    if-gt v0, v2, :cond_9

    .line 207
    .line 208
    sget-object v2, Lyh/b;->a:Lyh/b;

    .line 209
    .line 210
    new-instance v2, Lyh/j;

    .line 211
    .line 212
    invoke-direct {v2, p2, v0}, Lyh/j;-><init>(Ljava/io/InputStream;I)V

    .line 213
    .line 214
    .line 215
    return-object v2

    .line 216
    :cond_9
    new-instance v1, Lyh/c0;

    .line 217
    .line 218
    const-string v2, "Delta distance must be in the range [1, 256]: "

    .line 219
    .line 220
    invoke-static {v0, v2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-direct {v1, v0}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v1

    .line 228
    :pswitch_2
    new-instance v0, Log/a;

    .line 229
    .line 230
    invoke-direct {v0, p2}, Log/a;-><init>(Ljava/io/InputStream;)V

    .line 231
    .line 232
    .line 233
    return-object v0

    .line 234
    :pswitch_3
    return-object v1

    .line 235
    :pswitch_4
    new-instance v0, Lng/b;

    .line 236
    .line 237
    invoke-direct {v0, p2}, Lng/b;-><init>(Ljava/io/InputStream;)V

    .line 238
    .line 239
    .line 240
    return-object v0

    .line 241
    :pswitch_5
    new-instance v3, Ljg/b;

    .line 242
    .line 243
    move-object/from16 v4, p6

    .line 244
    .line 245
    invoke-direct {v3, p2, p5, p1, v4}, Ljg/b;-><init>(Ljava/io/InputStream;Ljg/g;Ljava/lang/String;[B)V

    .line 246
    .line 247
    .line 248
    return-object v3

    .line 249
    :pswitch_6
    new-instance v0, Ljava/util/zip/Inflater;

    .line 250
    .line 251
    invoke-direct {v0, v6}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 252
    .line 253
    .line 254
    new-instance v2, Ljava/util/zip/InflaterInputStream;

    .line 255
    .line 256
    new-instance v3, Ljava/io/SequenceInputStream;

    .line 257
    .line 258
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 259
    .line 260
    sget-object v5, Ljg/k;->c:[B

    .line 261
    .line 262
    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 263
    .line 264
    .line 265
    invoke-direct {v3, p2, v4}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 266
    .line 267
    .line 268
    invoke-direct {v2, v3, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 269
    .line 270
    .line 271
    new-instance v1, Lfh/c;

    .line 272
    .line 273
    invoke-direct {v1, v2, v0}, Lfh/c;-><init>(Ljava/util/zip/InflaterInputStream;Ljava/util/zip/Inflater;)V

    .line 274
    .line 275
    .line 276
    return-object v1

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 4

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/high16 v2, 0x800000

    .line 5
    .line 6
    iget v3, p0, Ljg/k;->b:I

    .line 7
    .line 8
    packed-switch v3, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :pswitch_0
    invoke-super {p0, p1, p2}, Ljg/d;->b(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :pswitch_1
    new-instance v0, Lrg/c;

    .line 17
    .line 18
    new-instance v1, Lyh/w;

    .line 19
    .line 20
    instance-of v3, p2, Lyh/t;

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    check-cast p2, Lyh/t;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v3, Lyh/t;

    .line 28
    .line 29
    invoke-direct {v3}, Lyh/t;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {v2, p2}, Ljg/d;->e(ILjava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-virtual {v3, p2}, Lyh/t;->c(I)V

    .line 37
    .line 38
    .line 39
    move-object p2, v3

    .line 40
    :goto_0
    invoke-direct {v1, p1, p2}, Lyh/w;-><init>(Ljava/io/OutputStream;Lyh/t;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Lrg/c;-><init>(Lyh/p;)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :pswitch_2
    instance-of v0, p2, Lyh/t;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    check-cast p2, Lyh/t;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance v0, Lyh/t;

    .line 55
    .line 56
    invoke-direct {v0}, Lyh/t;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {v2, p2}, Ljg/d;->e(ILjava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    invoke-virtual {v0, p2}, Lyh/t;->c(I)V

    .line 64
    .line 65
    .line 66
    move-object p2, v0

    .line 67
    :goto_1
    new-instance v0, Lyh/q;

    .line 68
    .line 69
    invoke-direct {v0, p1}, Lyh/q;-><init>(Ljava/io/OutputStream;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    sget-object p1, Lyh/b;->a:Lyh/b;

    .line 76
    .line 77
    invoke-virtual {p2, v0, p1}, Lyh/t;->b(Lyh/q;Lyh/b;)Lyh/p;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :pswitch_3
    invoke-static {v1, p2}, Ljg/d;->e(ILjava/lang/Object;)I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    :try_start_0
    new-instance v0, Lyh/k;

    .line 87
    .line 88
    invoke-direct {v0, p2}, Lyh/k;-><init>(I)V

    .line 89
    .line 90
    .line 91
    new-instance p2, Lyh/q;

    .line 92
    .line 93
    invoke-direct {p2, p1}, Lyh/q;-><init>(Ljava/io/OutputStream;)V

    .line 94
    .line 95
    .line 96
    sget-object p1, Lyh/b;->a:Lyh/b;

    .line 97
    .line 98
    new-instance p1, Lyh/l;

    .line 99
    .line 100
    invoke-direct {p1, p2, v0}, Lyh/l;-><init>(Lyh/q;Lyh/k;)V
    :try_end_0
    .catch Lyh/c0; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    return-object p1

    .line 104
    :catch_0
    move-exception p1

    .line 105
    new-instance p2, Ljava/io/IOException;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p2

    .line 115
    :pswitch_4
    return-object p1

    .line 116
    :pswitch_5
    invoke-static {v0, p2}, Ljg/d;->e(ILjava/lang/Object;)I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    new-instance v0, Lng/d;

    .line 121
    .line 122
    invoke-direct {v0, p1, p2}, Lng/d;-><init>(Ljava/io/OutputStream;I)V

    .line 123
    .line 124
    .line 125
    return-object v0

    .line 126
    :pswitch_6
    new-instance v0, Ljg/c;

    .line 127
    .line 128
    check-cast p2, Ljg/a;

    .line 129
    .line 130
    invoke-direct {v0, p2, p1}, Ljg/c;-><init>(Ljg/a;Ljava/io/OutputStream;)V

    .line 131
    .line 132
    .line 133
    return-object v0

    .line 134
    :pswitch_7
    invoke-static {v0, p2}, Ljg/d;->e(ILjava/lang/Object;)I

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    new-instance v0, Ljava/util/zip/Deflater;

    .line 139
    .line 140
    invoke-direct {v0, p2, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 141
    .line 142
    .line 143
    new-instance p2, Ljava/util/zip/DeflaterOutputStream;

    .line 144
    .line 145
    invoke-direct {p2, p1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 146
    .line 147
    .line 148
    new-instance p1, Ljg/j;

    .line 149
    .line 150
    invoke-direct {p1, p2, v0}, Ljg/j;-><init>(Ljava/util/zip/DeflaterOutputStream;Ljava/util/zip/Deflater;)V

    .line 151
    .line 152
    .line 153
    return-object p1

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public c(Ljava/lang/Object;)[B
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x4

    .line 3
    const/high16 v2, 0x800000

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    iget v5, p0, Ljg/k;->b:I

    .line 8
    .line 9
    packed-switch v5, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    invoke-super {p0, p1}, Ljg/d;->c(Ljava/lang/Object;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :pswitch_1
    instance-of v0, p1, Lyh/t;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    check-cast p1, Lyh/t;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lyh/t;

    .line 25
    .line 26
    invoke-direct {v0}, Lyh/t;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v2, p1}, Ljg/d;->e(ILjava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {v0, p1}, Lyh/t;->c(I)V

    .line 34
    .line 35
    .line 36
    move-object p1, v0

    .line 37
    :goto_0
    iget v0, p1, Lyh/t;->d:I

    .line 38
    .line 39
    const/4 v2, 0x5

    .line 40
    mul-int/lit8 v0, v0, 0x5

    .line 41
    .line 42
    iget v5, p1, Lyh/t;->c:I

    .line 43
    .line 44
    add-int/2addr v0, v5

    .line 45
    mul-int/lit8 v0, v0, 0x9

    .line 46
    .line 47
    iget v5, p1, Lyh/t;->b:I

    .line 48
    .line 49
    add-int/2addr v0, v5

    .line 50
    int-to-byte v0, v0

    .line 51
    iget p1, p1, Lyh/t;->a:I

    .line 52
    .line 53
    new-array v2, v2, [B

    .line 54
    .line 55
    aput-byte v0, v2, v3

    .line 56
    .line 57
    int-to-long v5, p1

    .line 58
    :goto_1
    if-ge v3, v1, :cond_1

    .line 59
    .line 60
    add-int/2addr v3, v4

    .line 61
    const-wide/16 v7, 0xff

    .line 62
    .line 63
    and-long/2addr v7, v5

    .line 64
    long-to-int p1, v7

    .line 65
    int-to-byte p1, p1

    .line 66
    aput-byte p1, v2, v3

    .line 67
    .line 68
    const/16 p1, 0x8

    .line 69
    .line 70
    shr-long/2addr v5, p1

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    return-object v2

    .line 73
    :pswitch_2
    instance-of v1, p1, Lyh/t;

    .line 74
    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    check-cast p1, Lyh/t;

    .line 78
    .line 79
    iget p1, p1, Lyh/t;->a:I

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    invoke-static {v2, p1}, Ljg/d;->e(ILjava/lang/Object;)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    rsub-int/lit8 v2, v1, 0x1e

    .line 91
    .line 92
    ushr-int/2addr p1, v2

    .line 93
    sub-int/2addr p1, v0

    .line 94
    rsub-int/lit8 v1, v1, 0x13

    .line 95
    .line 96
    mul-int/lit8 v1, v1, 0x2

    .line 97
    .line 98
    add-int/2addr v1, p1

    .line 99
    int-to-byte p1, v1

    .line 100
    new-array v0, v4, [B

    .line 101
    .line 102
    aput-byte p1, v0, v3

    .line 103
    .line 104
    return-object v0

    .line 105
    :pswitch_3
    invoke-static {v4, p1}, Ljg/d;->e(ILjava/lang/Object;)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    sub-int/2addr p1, v4

    .line 110
    int-to-byte p1, p1

    .line 111
    new-array v0, v4, [B

    .line 112
    .line 113
    aput-byte p1, v0, v3

    .line 114
    .line 115
    return-object v0

    .line 116
    :pswitch_4
    check-cast p1, Ljg/a;

    .line 117
    .line 118
    iget-object v2, p1, Ljg/a;->a:[B

    .line 119
    .line 120
    array-length v5, v2

    .line 121
    add-int/2addr v5, v0

    .line 122
    iget-object v6, p1, Ljg/a;->b:[B

    .line 123
    .line 124
    array-length v7, v6

    .line 125
    add-int/2addr v5, v7

    .line 126
    new-array v5, v5, [B

    .line 127
    .line 128
    array-length v7, v2

    .line 129
    if-nez v7, :cond_3

    .line 130
    .line 131
    const/4 v7, 0x0

    .line 132
    goto :goto_3

    .line 133
    :cond_3
    const/16 v7, 0x80

    .line 134
    .line 135
    :goto_3
    iget v8, p1, Ljg/a;->c:I

    .line 136
    .line 137
    or-int/2addr v7, v8

    .line 138
    array-length v8, v6

    .line 139
    if-nez v8, :cond_4

    .line 140
    .line 141
    const/4 v8, 0x0

    .line 142
    goto :goto_4

    .line 143
    :cond_4
    const/16 v8, 0x40

    .line 144
    .line 145
    :goto_4
    or-int/2addr v7, v8

    .line 146
    int-to-byte v7, v7

    .line 147
    aput-byte v7, v5, v3

    .line 148
    .line 149
    array-length v7, v2

    .line 150
    if-nez v7, :cond_5

    .line 151
    .line 152
    array-length v7, v6

    .line 153
    if-eqz v7, :cond_8

    .line 154
    .line 155
    :cond_5
    array-length v7, v2

    .line 156
    if-nez v7, :cond_6

    .line 157
    .line 158
    const/4 v7, 0x0

    .line 159
    goto :goto_5

    .line 160
    :cond_6
    array-length v7, v2

    .line 161
    sub-int/2addr v7, v4

    .line 162
    :goto_5
    shl-int/lit8 v1, v7, 0x4

    .line 163
    .line 164
    array-length v7, v6

    .line 165
    if-nez v7, :cond_7

    .line 166
    .line 167
    const/4 v7, 0x0

    .line 168
    goto :goto_6

    .line 169
    :cond_7
    array-length v7, v6

    .line 170
    sub-int/2addr v7, v4

    .line 171
    :goto_6
    or-int/2addr v1, v7

    .line 172
    int-to-byte v1, v1

    .line 173
    aput-byte v1, v5, v4

    .line 174
    .line 175
    array-length v1, v2

    .line 176
    invoke-static {v2, v3, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p1, Ljg/a;->a:[B

    .line 180
    .line 181
    array-length p1, p1

    .line 182
    add-int/2addr p1, v0

    .line 183
    array-length v0, v6

    .line 184
    invoke-static {v6, v3, v5, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    .line 186
    .line 187
    :cond_8
    return-object v5

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public d(Ljg/g;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Ljg/k;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ljg/d;->d(Ljg/g;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_0
    iget-object v0, p1, Ljg/g;->d:[B

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    array-length v1, v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-lt v1, v2, :cond_2

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    aget-byte v0, v0, v1

    .line 21
    .line 22
    and-int/lit16 v0, v0, 0xff

    .line 23
    .line 24
    div-int/lit8 v1, v0, 0x2d

    .line 25
    .line 26
    mul-int/lit8 v2, v1, 0x2d

    .line 27
    .line 28
    sub-int/2addr v0, v2

    .line 29
    div-int/lit8 v2, v0, 0x9

    .line 30
    .line 31
    mul-int/lit8 v3, v2, 0x9

    .line 32
    .line 33
    sub-int/2addr v0, v3

    .line 34
    new-instance v3, Lyh/t;

    .line 35
    .line 36
    invoke-direct {v3}, Lyh/t;-><init>()V

    .line 37
    .line 38
    .line 39
    if-ltz v1, :cond_1

    .line 40
    .line 41
    const/4 v4, 0x4

    .line 42
    if-gt v1, v4, :cond_1

    .line 43
    .line 44
    iput v1, v3, Lyh/t;->d:I

    .line 45
    .line 46
    if-ltz v0, :cond_0

    .line 47
    .line 48
    if-ltz v2, :cond_0

    .line 49
    .line 50
    if-gt v0, v4, :cond_0

    .line 51
    .line 52
    if-gt v2, v4, :cond_0

    .line 53
    .line 54
    add-int v1, v0, v2

    .line 55
    .line 56
    if-gt v1, v4, :cond_0

    .line 57
    .line 58
    iput v0, v3, Lyh/t;->b:I

    .line 59
    .line 60
    iput v2, v3, Lyh/t;->c:I

    .line 61
    .line 62
    invoke-static {p1}, Ljg/k;->g(Ljg/g;)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {v3, p1}, Lyh/t;->c(I)V

    .line 67
    .line 68
    .line 69
    return-object v3

    .line 70
    :cond_0
    new-instance p1, Lyh/c0;

    .line 71
    .line 72
    const-string v1, "lc + lp must not exceed 4: "

    .line 73
    .line 74
    const-string v3, " + "

    .line 75
    .line 76
    invoke-static {v1, v0, v2, v3}, Landroid/support/v4/media/session/a;->o(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {p1, v0}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_1
    new-instance p1, Lyh/c0;

    .line 85
    .line 86
    const-string v0, "pb must not exceed 4: "

    .line 87
    .line 88
    invoke-static {v1, v0}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p1, v0}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 97
    .line 98
    const-string v0, "LZMA properties too short"

    .line 99
    .line 100
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 105
    .line 106
    const-string v0, "Missing LZMA properties"

    .line 107
    .line 108
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :pswitch_1
    invoke-static {p1}, Ljg/k;->f(Ljg/g;)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    return-object p1

    .line 121
    :pswitch_2
    iget-object p1, p1, Ljg/g;->d:[B

    .line 122
    .line 123
    invoke-static {p1}, Lzg/a;->b(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    const/4 v1, 0x1

    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    const/4 v0, 0x0

    .line 132
    aget-byte p1, p1, v0

    .line 133
    .line 134
    and-int/lit16 p1, p1, 0xff

    .line 135
    .line 136
    add-int/2addr v1, p1

    .line 137
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
