.class public abstract Ly3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls5/c;

.field public static final b:[B

.field public static final c:[B

.field public static final d:[B

.field public static final e:[B

.field public static final f:[B

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B

.field public static final j:[B


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-instance v1, Ls5/c;

    .line 3
    .line 4
    const/16 v2, 0x1b

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ls5/c;-><init>(I)V

    .line 7
    .line 8
    .line 9
    sput-object v1, Ly3/c;->a:Ls5/c;

    .line 10
    .line 11
    new-array v1, v0, [B

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    sput-object v1, Ly3/c;->b:[B

    .line 17
    .line 18
    new-array v1, v0, [B

    .line 19
    .line 20
    fill-array-data v1, :array_1

    .line 21
    .line 22
    .line 23
    sput-object v1, Ly3/c;->c:[B

    .line 24
    .line 25
    new-array v1, v0, [B

    .line 26
    .line 27
    fill-array-data v1, :array_2

    .line 28
    .line 29
    .line 30
    sput-object v1, Ly3/c;->d:[B

    .line 31
    .line 32
    new-array v1, v0, [B

    .line 33
    .line 34
    fill-array-data v1, :array_3

    .line 35
    .line 36
    .line 37
    sput-object v1, Ly3/c;->e:[B

    .line 38
    .line 39
    new-array v1, v0, [B

    .line 40
    .line 41
    fill-array-data v1, :array_4

    .line 42
    .line 43
    .line 44
    sput-object v1, Ly3/c;->f:[B

    .line 45
    .line 46
    new-array v1, v0, [B

    .line 47
    .line 48
    fill-array-data v1, :array_5

    .line 49
    .line 50
    .line 51
    sput-object v1, Ly3/c;->g:[B

    .line 52
    .line 53
    new-array v1, v0, [B

    .line 54
    .line 55
    fill-array-data v1, :array_6

    .line 56
    .line 57
    .line 58
    sput-object v1, Ly3/c;->h:[B

    .line 59
    .line 60
    new-array v1, v0, [B

    .line 61
    .line 62
    fill-array-data v1, :array_7

    .line 63
    .line 64
    .line 65
    sput-object v1, Ly3/c;->i:[B

    .line 66
    .line 67
    new-array v0, v0, [B

    .line 68
    .line 69
    fill-array-data v0, :array_8

    .line 70
    .line 71
    .line 72
    sput-object v0, Ly3/c;->j:[B

    .line 73
    .line 74
    return-void

    .line 75
    :array_0
    .array-data 1
        0x70t
        0x72t
        0x6ft
        0x0t
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_1
    .array-data 1
        0x70t
        0x72t
        0x6dt
        0x0t
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_2
    .array-data 1
        0x30t
        0x31t
        0x35t
        0x0t
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_3
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x0t
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :array_4
    .array-data 1
        0x30t
        0x30t
        0x39t
        0x0t
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_5
    .array-data 1
        0x30t
        0x30t
        0x35t
        0x0t
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_6
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x0t
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_7
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x0t
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_8
    .array-data 1
        0x30t
        0x30t
        0x32t
        0x0t
    .end array-data
.end method

.method public static a([B)[B
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, Ljava/util/zip/Deflater;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v1, v2}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v4, Ljava/util/zip/DeflaterOutputStream;

    .line 14
    .line 15
    invoke-direct {v4, v3, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    :try_start_1
    invoke-virtual {v4, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    .line 20
    .line 21
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :catchall_1
    move-exception p0

    .line 35
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_2
    move-exception v3

    .line 40
    :try_start_4
    const-class v4, Ljava/lang/Throwable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 41
    .line 42
    :try_start_5
    const-string v5, "addSuppressed"

    .line 43
    .line 44
    new-array v6, v2, [Ljava/lang/Class;

    .line 45
    .line 46
    aput-object v4, v6, v0

    .line 47
    .line 48
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    new-array v2, v2, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object v3, v2, v0

    .line 55
    .line 56
    invoke-virtual {v4, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 57
    .line 58
    .line 59
    :catch_0
    :goto_0
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 60
    :goto_1
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public static b([Lba/s;[B)[B
    .locals 11

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    aget-object v4, p0, v2

    .line 8
    .line 9
    iget-object v5, v4, Lba/s;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, v4, Lba/s;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v5, v6, p1}, Ly3/c;->d(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    sget-object v6, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    array-length v5, v5

    .line 24
    add-int/lit8 v5, v5, 0x10

    .line 25
    .line 26
    iget v6, v4, Lba/s;->e:I

    .line 27
    .line 28
    mul-int/lit8 v6, v6, 0x2

    .line 29
    .line 30
    add-int/2addr v6, v5

    .line 31
    iget v5, v4, Lba/s;->f:I

    .line 32
    .line 33
    add-int/2addr v6, v5

    .line 34
    iget v4, v4, Lba/s;->g:I

    .line 35
    .line 36
    mul-int/lit8 v4, v4, 0x2

    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x7

    .line 39
    .line 40
    and-int/lit8 v4, v4, -0x8

    .line 41
    .line 42
    div-int/lit8 v4, v4, 0x8

    .line 43
    .line 44
    add-int/2addr v4, v6

    .line 45
    add-int/2addr v3, v4

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 50
    .line 51
    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 52
    .line 53
    .line 54
    sget-object v2, Ly3/c;->f:[B

    .line 55
    .line 56
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    array-length v2, p0

    .line 63
    const/4 v4, 0x0

    .line 64
    :goto_1
    if-ge v4, v2, :cond_5

    .line 65
    .line 66
    aget-object v5, p0, v4

    .line 67
    .line 68
    iget-object v6, v5, Lba/s;->a:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v7, v5, Lba/s;->b:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v6, v7, p1}, Ly3/c;->d(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-static {v0, v5, v6}, Ly3/c;->p(Ljava/io/ByteArrayOutputStream;Lba/s;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v5}, Ly3/c;->r(Ljava/io/ByteArrayOutputStream;Lba/s;)V

    .line 80
    .line 81
    .line 82
    iget-object v6, v5, Lba/s;->h:Ljava/io/Serializable;

    .line 83
    .line 84
    check-cast v6, [I

    .line 85
    .line 86
    array-length v7, v6

    .line 87
    const/4 v8, 0x0

    .line 88
    const/4 v9, 0x0

    .line 89
    :goto_2
    if-ge v8, v7, :cond_1

    .line 90
    .line 91
    aget v10, v6, v8

    .line 92
    .line 93
    sub-int v9, v10, v9

    .line 94
    .line 95
    invoke-static {v0, v9}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v8, v8, 0x1

    .line 99
    .line 100
    move v9, v10

    .line 101
    goto :goto_2

    .line 102
    :cond_1
    invoke-static {v0, v5}, Ly3/c;->q(Ljava/io/ByteArrayOutputStream;Lba/s;)V

    .line 103
    .line 104
    .line 105
    add-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    array-length v2, p0

    .line 109
    const/4 v4, 0x0

    .line 110
    :goto_3
    if-ge v4, v2, :cond_3

    .line 111
    .line 112
    aget-object v5, p0, v4

    .line 113
    .line 114
    iget-object v6, v5, Lba/s;->a:Ljava/lang/String;

    .line 115
    .line 116
    iget-object v7, v5, Lba/s;->b:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v6, v7, p1}, Ly3/c;->d(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-static {v0, v5, v6}, Ly3/c;->p(Ljava/io/ByteArrayOutputStream;Lba/s;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    add-int/lit8 v4, v4, 0x1

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_3
    array-length p1, p0

    .line 129
    const/4 v2, 0x0

    .line 130
    :goto_4
    if-ge v2, p1, :cond_5

    .line 131
    .line 132
    aget-object v4, p0, v2

    .line 133
    .line 134
    invoke-static {v0, v4}, Ly3/c;->r(Ljava/io/ByteArrayOutputStream;Lba/s;)V

    .line 135
    .line 136
    .line 137
    iget-object v5, v4, Lba/s;->h:Ljava/io/Serializable;

    .line 138
    .line 139
    check-cast v5, [I

    .line 140
    .line 141
    array-length v6, v5

    .line 142
    const/4 v7, 0x0

    .line 143
    const/4 v8, 0x0

    .line 144
    :goto_5
    if-ge v7, v6, :cond_4

    .line 145
    .line 146
    aget v9, v5, v7

    .line 147
    .line 148
    sub-int v8, v9, v8

    .line 149
    .line 150
    invoke-static {v0, v8}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 151
    .line 152
    .line 153
    add-int/lit8 v7, v7, 0x1

    .line 154
    .line 155
    move v8, v9

    .line 156
    goto :goto_5

    .line 157
    :cond_4
    invoke-static {v0, v4}, Ly3/c;->q(Ljava/io/ByteArrayOutputStream;Lba/s;)V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v2, v2, 0x1

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    if-ne p0, v3, :cond_6

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    return-object p0

    .line 174
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string p1, "The bytes saved do not match expectation. actual="

    .line 177
    .line 178
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string p1, " expected="

    .line 189
    .line 190
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 201
    .line 202
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    goto :goto_7

    .line 206
    :goto_6
    throw p1

    .line 207
    :goto_7
    goto :goto_6
.end method

.method public static c(Ljava/io/File;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    array-length v2, p0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    :goto_0
    if-ge v3, v2, :cond_2

    .line 20
    .line 21
    aget-object v5, p0, v3

    .line 22
    .line 23
    invoke-static {v5}, Ly3/c;->c(Ljava/io/File;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v4, 0x0

    .line 34
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return v4

    .line 38
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 39
    .line 40
    .line 41
    return v1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Ly3/c;->h:[B

    .line 2
    .line 3
    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v2, Ly3/c;->g:[B

    .line 8
    .line 9
    const-string v3, "!"

    .line 10
    .line 11
    const-string v4, ":"

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    :goto_0
    move-object v1, v4

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v1, v3

    .line 25
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-gtz v5, :cond_4

    .line 30
    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :cond_3
    :goto_2
    return-object p1

    .line 53
    :cond_4
    const-string v5, "classes.dex"

    .line 54
    .line 55
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_5

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-nez v5, :cond_a

    .line 67
    .line 68
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_6

    .line 73
    .line 74
    goto :goto_5

    .line 75
    :cond_6
    const-string v1, ".apk"

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_7

    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_7
    invoke-static {p0}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_8

    .line 93
    .line 94
    :goto_3
    move-object v3, v4

    .line 95
    goto :goto_4

    .line 96
    :cond_8
    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_9

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_9
    :goto_4
    invoke-static {v3, p1, p0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :cond_a
    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_b

    .line 113
    .line 114
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    goto :goto_6

    .line 119
    :cond_b
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-eqz p0, :cond_c

    .line 124
    .line 125
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    :cond_c
    :goto_6
    return-object p1
.end method

.method public static e(Landroid/content/pm/PackageInfo;Ljava/io/File;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Ljava/io/File;

    .line 4
    .line 5
    const-string v3, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 6
    .line 7
    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance p1, Ljava/io/DataOutputStream;

    .line 11
    .line 12
    new-instance v3, Ljava/io/FileOutputStream;

    .line 13
    .line 14
    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    .line 19
    .line 20
    :try_start_1
    iget-wide v2, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 21
    .line 22
    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_1
    move-exception p1

    .line 35
    :try_start_4
    const-class v2, Ljava/lang/Throwable;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 36
    .line 37
    :try_start_5
    const-string v3, "addSuppressed"

    .line 38
    .line 39
    new-array v4, v1, [Ljava/lang/Class;

    .line 40
    .line 41
    aput-object v2, v4, v0

    .line 42
    .line 43
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object p1, v1, v0

    .line 50
    .line 51
    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 52
    .line 53
    .line 54
    :catch_0
    :goto_0
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 55
    :catch_1
    :goto_1
    return-void
.end method

.method public static f(ILjava/io/InputStream;)[B
    .locals 3

    .line 1
    new-array v0, p0, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p0, :cond_1

    .line 5
    .line 6
    sub-int v2, p0, v1

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ltz v2, :cond_0

    .line 13
    .line 14
    add-int/2addr v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p1, "Not enough bytes to read: "

    .line 17
    .line 18
    invoke-static {p0, p1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    return-object v0
.end method

.method public static g(Ljava/io/ByteArrayInputStream;I)[I
    .locals 5

    .line 1
    new-array v0, p1, [I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v1, p1, :cond_0

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-static {v3, p0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    long-to-int v4, v3

    .line 13
    add-int/2addr v2, v4

    .line 14
    aput v2, v0, v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v0
.end method

.method public static h(Ljava/io/FileInputStream;II)[B
    .locals 8

    .line 1
    new-instance v0, Ljava/util/zip/Inflater;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-array v1, p2, [B

    .line 7
    .line 8
    const/16 v2, 0x800

    .line 9
    .line 10
    new-array v2, v2, [B

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-nez v6, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-nez v6, :cond_1

    .line 26
    .line 27
    if-ge v4, p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-ltz v6, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3, v6}, Ljava/util/zip/Inflater;->setInput([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    sub-int v7, p2, v5

    .line 39
    .line 40
    :try_start_1
    invoke-virtual {v0, v1, v5, v7}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 41
    .line 42
    .line 43
    move-result v7
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    add-int/2addr v5, v7

    .line 45
    add-int/2addr v4, v6

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string p2, "Invalid zip data. Stream ended after $totalBytesRead bytes. Expected "

    .line 66
    .line 67
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, " bytes"

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_1
    if-ne v4, p1, :cond_3

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    .line 91
    .line 92
    .line 93
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    if-eqz p0, :cond_2

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 97
    .line 98
    .line 99
    return-object v1

    .line 100
    :cond_2
    :try_start_3
    const-string p0, "Inflater did not finish"

    .line 101
    .line 102
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string p2, "Didn\'t read enough bytes during decompression. expected="

    .line 114
    .line 115
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, " actual="

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 134
    .line 135
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :goto_2
    throw p0

    .line 144
    :goto_3
    goto :goto_2
.end method

.method public static i(Ljava/io/FileInputStream;[B[B[Lba/s;)[Lba/s;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Ly3/c;->i:[B

    .line 4
    .line 5
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const-string v4, "Unsupported meta version"

    .line 10
    .line 11
    const-string v5, "Content found after the end of file"

    .line 12
    .line 13
    const-string v6, "addSuppressed"

    .line 14
    .line 15
    const-class v7, Ljava/lang/Throwable;

    .line 16
    .line 17
    const/4 v8, 0x4

    .line 18
    if-eqz v3, :cond_3

    .line 19
    .line 20
    sget-object v3, Ly3/c;->d:[B

    .line 21
    .line 22
    invoke-static {v3, p2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-static {v1, p0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    long-to-int p2, p1

    .line 39
    invoke-static {v8, p0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    invoke-static {v8, p0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v8

    .line 47
    long-to-int p1, v8

    .line 48
    long-to-int v3, v2

    .line 49
    invoke-static {p0, p1, v3}, Ly3/c;->h(Ljava/io/FileInputStream;II)[B

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-gtz p0, :cond_0

    .line 58
    .line 59
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 62
    .line 63
    .line 64
    :try_start_0
    invoke-static {p0, p2, p3}, Ly3/c;->j(Ljava/io/ByteArrayInputStream;I[Lba/s;)[Lba/s;

    .line 65
    .line 66
    .line 67
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 69
    .line 70
    .line 71
    return-object p1

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_1
    move-exception p0

    .line 78
    :try_start_2
    new-array p2, v1, [Ljava/lang/Class;

    .line 79
    .line 80
    aput-object v7, p2, v0

    .line 81
    .line 82
    invoke-virtual {v7, v6, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    new-array p3, v1, [Ljava/lang/Object;

    .line 87
    .line 88
    aput-object p0, p3, v0

    .line 89
    .line 90
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    .line 92
    .line 93
    :catch_0
    :goto_0
    throw p1

    .line 94
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    const-string p1, "Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher"

    .line 109
    .line 110
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0

    .line 114
    :cond_3
    sget-object v2, Ly3/c;->j:[B

    .line 115
    .line 116
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    const/4 p1, 0x2

    .line 123
    invoke-static {p1, p0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v2

    .line 127
    long-to-int p1, v2

    .line 128
    invoke-static {v8, p0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    invoke-static {v8, p0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 133
    .line 134
    .line 135
    move-result-wide v8

    .line 136
    long-to-int v4, v8

    .line 137
    long-to-int v3, v2

    .line 138
    invoke-static {p0, v4, v3}, Ly3/c;->h(Ljava/io/FileInputStream;II)[B

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    if-gtz p0, :cond_4

    .line 147
    .line 148
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 149
    .line 150
    invoke-direct {p0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 151
    .line 152
    .line 153
    :try_start_3
    invoke-static {p0, p2, p1, p3}, Ly3/c;->k(Ljava/io/ByteArrayInputStream;[BI[Lba/s;)[Lba/s;

    .line 154
    .line 155
    .line 156
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 157
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 158
    .line 159
    .line 160
    return-object p1

    .line 161
    :catchall_2
    move-exception p1

    .line 162
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catchall_3
    move-exception p0

    .line 167
    :try_start_5
    new-array p2, v1, [Ljava/lang/Class;

    .line 168
    .line 169
    aput-object v7, p2, v0

    .line 170
    .line 171
    invoke-virtual {v7, v6, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    new-array p3, v1, [Ljava/lang/Object;

    .line 176
    .line 177
    aput-object p0, p3, v0

    .line 178
    .line 179
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 180
    .line 181
    .line 182
    :catch_1
    :goto_1
    throw p1

    .line 183
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 184
    .line 185
    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p0

    .line 189
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 190
    .line 191
    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw p0
.end method

.method public static j(Ljava/io/ByteArrayInputStream;I[Lba/s;)[Lba/s;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-array p0, v1, [Lba/s;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    array-length v0, p2

    .line 12
    if-ne p1, v0, :cond_4

    .line 13
    .line 14
    new-array v0, p1, [Ljava/lang/String;

    .line 15
    .line 16
    new-array v2, p1, [I

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, p1, :cond_1

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    invoke-static {v4, p0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    long-to-int v6, v5

    .line 27
    invoke-static {v4, p0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    long-to-int v5, v4

    .line 32
    aput v5, v2, v3

    .line 33
    .line 34
    new-instance v4, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v6, p0}, Ly3/c;->f(ILjava/io/InputStream;)[B

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    sget-object v6, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 41
    .line 42
    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 43
    .line 44
    .line 45
    aput-object v4, v0, v3

    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    if-ge v1, p1, :cond_3

    .line 51
    .line 52
    aget-object v3, p2, v1

    .line 53
    .line 54
    iget-object v4, v3, Lba/s;->b:Ljava/lang/String;

    .line 55
    .line 56
    aget-object v5, v0, v1

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    aget v4, v2, v1

    .line 65
    .line 66
    iput v4, v3, Lba/s;->e:I

    .line 67
    .line 68
    invoke-static {p0, v4}, Ly3/c;->g(Ljava/io/ByteArrayInputStream;I)[I

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    iput-object v4, v3, Lba/s;->h:Ljava/io/Serializable;

    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string p1, "Order of dexfiles in metadata did not match baseline"

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_3
    return-object p2

    .line 86
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    const-string p1, "Mismatched number of dex files found in metadata"

    .line 89
    .line 90
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :goto_2
    throw p0

    .line 95
    :goto_3
    goto :goto_2
.end method

.method public static k(Ljava/io/ByteArrayInputStream;[BI[Lba/s;)[Lba/s;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-array p0, v1, [Lba/s;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    array-length v0, p3

    .line 12
    if-ne p2, v0, :cond_9

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-ge v0, p2, :cond_8

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-static {v2, p0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 19
    .line 20
    .line 21
    invoke-static {v2, p0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    long-to-int v4, v3

    .line 26
    new-instance v3, Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v4, p0}, Ly3/c;->f(ILjava/io/InputStream;)[B

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    sget-object v5, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 33
    .line 34
    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 35
    .line 36
    .line 37
    const/4 v4, 0x4

    .line 38
    invoke-static {v4, p0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    invoke-static {v2, p0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    long-to-int v2, v6

    .line 47
    array-length v6, p3

    .line 48
    const/4 v7, 0x0

    .line 49
    if-gtz v6, :cond_1

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_1
    const-string v6, "!"

    .line 53
    .line 54
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-gez v6, :cond_2

    .line 59
    .line 60
    const-string v6, ":"

    .line 61
    .line 62
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    :cond_2
    if-lez v6, :cond_3

    .line 67
    .line 68
    add-int/lit8 v6, v6, 0x1

    .line 69
    .line 70
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move-object v6, v3

    .line 76
    :goto_1
    const/4 v8, 0x0

    .line 77
    :goto_2
    array-length v9, p3

    .line 78
    if-ge v8, v9, :cond_5

    .line 79
    .line 80
    aget-object v9, p3, v8

    .line 81
    .line 82
    iget-object v9, v9, Lba/s;->b:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    if-eqz v9, :cond_4

    .line 89
    .line 90
    aget-object v7, p3, v8

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    :goto_3
    if-eqz v7, :cond_7

    .line 97
    .line 98
    iput-wide v4, v7, Lba/s;->d:J

    .line 99
    .line 100
    invoke-static {p0, v2}, Ly3/c;->g(Ljava/io/ByteArrayInputStream;I)[I

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    sget-object v4, Ly3/c;->h:[B

    .line 105
    .line 106
    invoke-static {p1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_6

    .line 111
    .line 112
    iput v2, v7, Lba/s;->e:I

    .line 113
    .line 114
    iput-object v3, v7, Lba/s;->h:Ljava/io/Serializable;

    .line 115
    .line 116
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_7
    const-string p0, "Missing profile key: "

    .line 120
    .line 121
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :cond_8
    return-object p3

    .line 132
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    const-string p1, "Mismatched number of dex files found in metadata"

    .line 135
    .line 136
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :goto_4
    throw p0

    .line 141
    :goto_5
    goto :goto_4
.end method

.method public static l(Ljava/io/FileInputStream;[BLjava/lang/String;)[Lba/s;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Ly3/c;->e:[B

    .line 4
    .line 5
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-static {v1, p0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    long-to-int p1, v2

    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-static {v2, p0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-static {v2, p0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    long-to-int v2, v5

    .line 26
    long-to-int v4, v3

    .line 27
    invoke-static {p0, v2, v4}, Ly3/c;->h(Ljava/io/FileInputStream;II)[B

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-gtz p0, :cond_0

    .line 36
    .line 37
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 38
    .line 39
    invoke-direct {p0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-static {p0, p2, p1}, Ly3/c;->n(Ljava/io/ByteArrayInputStream;Ljava/lang/String;I)[Lba/s;

    .line 43
    .line 44
    .line 45
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_1
    move-exception p0

    .line 56
    const-class p2, Ljava/lang/Throwable;

    .line 57
    .line 58
    :try_start_2
    const-string v2, "addSuppressed"

    .line 59
    .line 60
    new-array v3, v1, [Ljava/lang/Class;

    .line 61
    .line 62
    aput-object p2, v3, v0

    .line 63
    .line 64
    invoke-virtual {p2, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object p0, v1, v0

    .line 71
    .line 72
    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    .line 74
    .line 75
    :catch_0
    :goto_0
    throw p1

    .line 76
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    const-string p1, "Content found after the end of file"

    .line 79
    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    const-string p1, "Unsupported version"

    .line 87
    .line 88
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0
.end method

.method public static m(ILjava/io/InputStream;)J
    .locals 6

    .line 1
    invoke-static {p0, p1}, Ly3/c;->f(ILjava/io/InputStream;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, p0, :cond_0

    .line 9
    .line 10
    aget-byte v3, p1, v2

    .line 11
    .line 12
    and-int/lit16 v3, v3, 0xff

    .line 13
    .line 14
    int-to-long v3, v3

    .line 15
    mul-int/lit8 v5, v2, 0x8

    .line 16
    .line 17
    shl-long/2addr v3, v5

    .line 18
    add-long/2addr v0, v3

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-wide v0
.end method

.method public static n(Ljava/io/ByteArrayInputStream;Ljava/lang/String;I)[Lba/s;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    new-array v0, v3, [Lba/s;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-array v2, v1, [Lba/s;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    const/4 v5, 0x2

    .line 19
    if-ge v4, v1, :cond_1

    .line 20
    .line 21
    invoke-static {v5, v0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v6

    .line 25
    long-to-int v7, v6

    .line 26
    invoke-static {v5, v0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    long-to-int v13, v5

    .line 31
    const/4 v5, 0x4

    .line 32
    invoke-static {v5, v0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v8

    .line 36
    invoke-static {v5, v0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v11

    .line 40
    invoke-static {v5, v0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    new-instance v18, Lba/s;

    .line 45
    .line 46
    new-instance v10, Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v7, v0}, Ly3/c;->f(ILjava/io/InputStream;)[B

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    sget-object v14, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 53
    .line 54
    invoke-direct {v10, v7, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 55
    .line 56
    .line 57
    long-to-int v14, v8

    .line 58
    long-to-int v15, v5

    .line 59
    new-array v5, v13, [I

    .line 60
    .line 61
    new-instance v17, Ljava/util/TreeMap;

    .line 62
    .line 63
    invoke-direct/range {v17 .. v17}, Ljava/util/TreeMap;-><init>()V

    .line 64
    .line 65
    .line 66
    move-object/from16 v8, v18

    .line 67
    .line 68
    move-object/from16 v9, p1

    .line 69
    .line 70
    move-object/from16 v16, v5

    .line 71
    .line 72
    invoke-direct/range {v8 .. v17}, Lba/s;-><init>(Ljava/lang/String;Ljava/lang/String;JIII[ILjava/util/TreeMap;)V

    .line 73
    .line 74
    .line 75
    aput-object v18, v2, v4

    .line 76
    .line 77
    add-int/lit8 v4, v4, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const/4 v4, 0x0

    .line 81
    :goto_1
    if-ge v4, v1, :cond_e

    .line 82
    .line 83
    aget-object v6, v2, v4

    .line 84
    .line 85
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    iget v8, v6, Lba/s;->f:I

    .line 90
    .line 91
    sub-int/2addr v7, v8

    .line 92
    const/4 v8, 0x0

    .line 93
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    iget-object v10, v6, Lba/s;->i:Ljava/io/Serializable;

    .line 98
    .line 99
    check-cast v10, Ljava/util/TreeMap;

    .line 100
    .line 101
    const/4 v11, 0x7

    .line 102
    if-le v9, v7, :cond_7

    .line 103
    .line 104
    invoke-static {v5, v0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v12

    .line 108
    long-to-int v9, v12

    .line 109
    add-int/2addr v8, v9

    .line 110
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    const/4 v12, 0x1

    .line 115
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    invoke-virtual {v10, v9, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    invoke-static {v5, v0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 123
    .line 124
    .line 125
    move-result-wide v9

    .line 126
    long-to-int v10, v9

    .line 127
    :goto_2
    if-lez v10, :cond_2

    .line 128
    .line 129
    invoke-static {v5, v0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 130
    .line 131
    .line 132
    invoke-static {v12, v0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 133
    .line 134
    .line 135
    move-result-wide v13

    .line 136
    long-to-int v9, v13

    .line 137
    const/4 v13, 0x6

    .line 138
    if-ne v9, v13, :cond_3

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_3
    if-ne v9, v11, :cond_4

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_4
    :goto_3
    if-lez v9, :cond_6

    .line 145
    .line 146
    invoke-static {v12, v0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 147
    .line 148
    .line 149
    invoke-static {v12, v0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 150
    .line 151
    .line 152
    move-result-wide v13

    .line 153
    long-to-int v14, v13

    .line 154
    :goto_4
    if-lez v14, :cond_5

    .line 155
    .line 156
    invoke-static {v5, v0}, Ly3/c;->m(ILjava/io/InputStream;)J

    .line 157
    .line 158
    .line 159
    add-int/lit8 v14, v14, -0x1

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_5
    add-int/lit8 v9, v9, -0x1

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_6
    :goto_5
    add-int/lit8 v10, v10, -0x1

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    if-ne v8, v7, :cond_d

    .line 173
    .line 174
    iget v7, v6, Lba/s;->e:I

    .line 175
    .line 176
    invoke-static {v0, v7}, Ly3/c;->g(Ljava/io/ByteArrayInputStream;I)[I

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    iput-object v7, v6, Lba/s;->h:Ljava/io/Serializable;

    .line 181
    .line 182
    iget v6, v6, Lba/s;->g:I

    .line 183
    .line 184
    mul-int/lit8 v7, v6, 0x2

    .line 185
    .line 186
    add-int/2addr v7, v11

    .line 187
    and-int/lit8 v7, v7, -0x8

    .line 188
    .line 189
    div-int/lit8 v7, v7, 0x8

    .line 190
    .line 191
    invoke-static {v7, v0}, Ly3/c;->f(ILjava/io/InputStream;)[B

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    invoke-static {v7}, Lvb/b;->f([B)Ljava/util/BitSet;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    const/4 v8, 0x0

    .line 200
    :goto_6
    if-ge v8, v6, :cond_c

    .line 201
    .line 202
    invoke-virtual {v7, v8}, Ljava/util/BitSet;->get(I)Z

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    if-eqz v9, :cond_8

    .line 207
    .line 208
    const/4 v9, 0x2

    .line 209
    goto :goto_7

    .line 210
    :cond_8
    const/4 v9, 0x0

    .line 211
    :goto_7
    add-int v11, v8, v6

    .line 212
    .line 213
    invoke-virtual {v7, v11}, Ljava/util/BitSet;->get(I)Z

    .line 214
    .line 215
    .line 216
    move-result v11

    .line 217
    if-eqz v11, :cond_9

    .line 218
    .line 219
    or-int/lit8 v9, v9, 0x4

    .line 220
    .line 221
    :cond_9
    if-eqz v9, :cond_b

    .line 222
    .line 223
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    invoke-virtual {v10, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    check-cast v11, Ljava/lang/Integer;

    .line 232
    .line 233
    if-nez v11, :cond_a

    .line 234
    .line 235
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v11

    .line 239
    :cond_a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v12

    .line 243
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v11

    .line 247
    or-int/2addr v9, v11

    .line 248
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    invoke-virtual {v10, v12, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 259
    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 263
    .line 264
    const-string v1, "Read too much data during profile line parse"

    .line 265
    .line 266
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v0

    .line 270
    :cond_e
    return-object v2
.end method

.method public static o(Ljava/io/ByteArrayOutputStream;[B[Lba/s;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v8, 0x3

    .line 8
    sget-object v9, Ly3/c;->d:[B

    .line 9
    .line 10
    invoke-static {v1, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 11
    .line 12
    .line 13
    move-result v10

    .line 14
    const/4 v11, 0x4

    .line 15
    const/4 v12, 0x0

    .line 16
    const/4 v13, 0x1

    .line 17
    if-eqz v10, :cond_10

    .line 18
    .line 19
    const-string v1, "addSuppressed"

    .line 20
    .line 21
    const-class v10, Ljava/lang/Throwable;

    .line 22
    .line 23
    new-instance v14, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v14, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v15, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v15, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    .line 37
    .line 38
    :try_start_0
    array-length v4, v2

    .line 39
    invoke-static {v3, v4}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 40
    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x2

    .line 44
    :goto_0
    array-length v6, v2

    .line 45
    if-ge v4, v6, :cond_0

    .line 46
    .line 47
    aget-object v6, v2, v4

    .line 48
    .line 49
    iget-wide v7, v6, Lba/s;->c:J

    .line 50
    .line 51
    invoke-static {v3, v7, v8, v11}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 52
    .line 53
    .line 54
    iget-wide v7, v6, Lba/s;->d:J

    .line 55
    .line 56
    invoke-static {v3, v7, v8, v11}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 57
    .line 58
    .line 59
    iget v7, v6, Lba/s;->g:I

    .line 60
    .line 61
    int-to-long v7, v7

    .line 62
    invoke-static {v3, v7, v8, v11}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 63
    .line 64
    .line 65
    iget-object v7, v6, Lba/s;->a:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v6, v6, Lba/s;->b:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v7, v6, v9}, Ly3/c;->d(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    add-int/lit8 v5, v5, 0xe

    .line 74
    .line 75
    sget-object v7, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 76
    .line 77
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    array-length v8, v8

    .line 82
    invoke-static {v3, v8}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 83
    .line 84
    .line 85
    add-int/2addr v5, v8

    .line 86
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 91
    .line 92
    .line 93
    add-int/2addr v4, v13

    .line 94
    const/4 v8, 0x3

    .line 95
    goto :goto_0

    .line 96
    :goto_1
    move-object v2, v0

    .line 97
    goto/16 :goto_12

    .line 98
    .line 99
    :catchall_0
    move-exception v0

    .line 100
    goto :goto_1

    .line 101
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    array-length v6, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    const-string v7, ", does not match actual size "

    .line 107
    .line 108
    const-string v8, "Expected size "

    .line 109
    .line 110
    if-ne v5, v6, :cond_f

    .line 111
    .line 112
    :try_start_1
    new-instance v5, Ly3/j;

    .line 113
    .line 114
    invoke-direct {v5, v13, v4, v12}, Ly3/j;-><init>(I[BZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 124
    .line 125
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    .line 127
    .line 128
    const/4 v4, 0x0

    .line 129
    const/4 v5, 0x0

    .line 130
    :goto_2
    :try_start_2
    array-length v6, v2

    .line 131
    if-ge v4, v6, :cond_2

    .line 132
    .line 133
    aget-object v6, v2, v4

    .line 134
    .line 135
    invoke-static {v3, v4}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 136
    .line 137
    .line 138
    add-int/2addr v5, v11

    .line 139
    iget v9, v6, Lba/s;->e:I

    .line 140
    .line 141
    invoke-static {v3, v9}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 142
    .line 143
    .line 144
    iget v9, v6, Lba/s;->e:I

    .line 145
    .line 146
    const/16 v16, 0x2

    .line 147
    .line 148
    mul-int/lit8 v9, v9, 0x2

    .line 149
    .line 150
    add-int/2addr v5, v9

    .line 151
    iget-object v6, v6, Lba/s;->h:Ljava/io/Serializable;

    .line 152
    .line 153
    check-cast v6, [I

    .line 154
    .line 155
    array-length v9, v6

    .line 156
    const/16 v17, 0x0

    .line 157
    .line 158
    :goto_3
    if-ge v12, v9, :cond_1

    .line 159
    .line 160
    aget v18, v6, v12

    .line 161
    .line 162
    sub-int v11, v18, v17

    .line 163
    .line 164
    invoke-static {v3, v11}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 165
    .line 166
    .line 167
    add-int/2addr v12, v13

    .line 168
    move/from16 v17, v18

    .line 169
    .line 170
    const/4 v11, 0x4

    .line 171
    goto :goto_3

    .line 172
    :cond_1
    add-int/2addr v4, v13

    .line 173
    const/4 v11, 0x4

    .line 174
    const/4 v12, 0x0

    .line 175
    goto :goto_2

    .line 176
    :goto_4
    move-object v2, v0

    .line 177
    goto/16 :goto_10

    .line 178
    .line 179
    :catchall_1
    move-exception v0

    .line 180
    goto :goto_4

    .line 181
    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    array-length v6, v4

    .line 186
    if-ne v5, v6, :cond_e

    .line 187
    .line 188
    new-instance v5, Ly3/j;

    .line 189
    .line 190
    const/4 v6, 0x3

    .line 191
    invoke-direct {v5, v6, v4, v13}, Ly3/j;-><init>(I[BZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 201
    .line 202
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 203
    .line 204
    .line 205
    const/4 v4, 0x0

    .line 206
    const/4 v5, 0x0

    .line 207
    :goto_5
    :try_start_3
    array-length v6, v2

    .line 208
    if-ge v4, v6, :cond_4

    .line 209
    .line 210
    aget-object v6, v2, v4

    .line 211
    .line 212
    iget-object v9, v6, Lba/s;->i:Ljava/io/Serializable;

    .line 213
    .line 214
    check-cast v9, Ljava/util/TreeMap;

    .line 215
    .line 216
    invoke-virtual {v9}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    const/4 v11, 0x0

    .line 225
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    if-eqz v12, :cond_3

    .line 230
    .line 231
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v12

    .line 235
    check-cast v12, Ljava/util/Map$Entry;

    .line 236
    .line 237
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v12

    .line 241
    check-cast v12, Ljava/lang/Integer;

    .line 242
    .line 243
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    or-int/2addr v11, v12

    .line 248
    goto :goto_6

    .line 249
    :cond_3
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 250
    .line 251
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 252
    .line 253
    .line 254
    :try_start_4
    invoke-static {v9, v6}, Ly3/c;->q(Ljava/io/ByteArrayOutputStream;Lba/s;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 258
    .line 259
    .line 260
    move-result-object v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 261
    :try_start_5
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 262
    .line 263
    .line 264
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 265
    .line 266
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 267
    .line 268
    .line 269
    :try_start_6
    invoke-static {v9, v6}, Ly3/c;->r(Ljava/io/ByteArrayOutputStream;Lba/s;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 273
    .line 274
    .line 275
    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 276
    :try_start_7
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 277
    .line 278
    .line 279
    invoke-static {v3, v4}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 280
    .line 281
    .line 282
    array-length v9, v12

    .line 283
    const/16 v16, 0x2

    .line 284
    .line 285
    add-int/lit8 v9, v9, 0x2

    .line 286
    .line 287
    array-length v13, v6

    .line 288
    add-int/2addr v9, v13

    .line 289
    add-int/lit8 v5, v5, 0x6

    .line 290
    .line 291
    move-object/from16 p1, v7

    .line 292
    .line 293
    move-object v13, v8

    .line 294
    int-to-long v7, v9

    .line 295
    move-object/from16 v18, v13

    .line 296
    .line 297
    const/4 v13, 0x4

    .line 298
    invoke-static {v3, v7, v8, v13}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 299
    .line 300
    .line 301
    invoke-static {v3, v11}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3, v12}, Ljava/io/OutputStream;->write([B)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 308
    .line 309
    .line 310
    add-int/2addr v5, v9

    .line 311
    const/4 v6, 0x1

    .line 312
    add-int/2addr v4, v6

    .line 313
    move-object/from16 v7, p1

    .line 314
    .line 315
    move-object/from16 v8, v18

    .line 316
    .line 317
    const/4 v13, 0x1

    .line 318
    goto :goto_5

    .line 319
    :catchall_2
    move-exception v0

    .line 320
    move-object v2, v0

    .line 321
    goto/16 :goto_e

    .line 322
    .line 323
    :catchall_3
    move-exception v0

    .line 324
    move-object v2, v0

    .line 325
    :try_start_8
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 326
    .line 327
    .line 328
    goto :goto_7

    .line 329
    :catchall_4
    move-exception v0

    .line 330
    move-object v4, v0

    .line 331
    const/4 v5, 0x1

    .line 332
    :try_start_9
    new-array v0, v5, [Ljava/lang/Class;

    .line 333
    .line 334
    const/4 v6, 0x0

    .line 335
    aput-object v10, v0, v6

    .line 336
    .line 337
    invoke-virtual {v10, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    new-array v7, v5, [Ljava/lang/Object;

    .line 342
    .line 343
    aput-object v4, v7, v6

    .line 344
    .line 345
    invoke-virtual {v0, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 346
    .line 347
    .line 348
    :catch_0
    :goto_7
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 349
    :catchall_5
    move-exception v0

    .line 350
    move-object v2, v0

    .line 351
    :try_start_b
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 352
    .line 353
    .line 354
    goto :goto_8

    .line 355
    :catchall_6
    move-exception v0

    .line 356
    move-object v4, v0

    .line 357
    const/4 v5, 0x1

    .line 358
    :try_start_c
    new-array v0, v5, [Ljava/lang/Class;

    .line 359
    .line 360
    const/4 v6, 0x0

    .line 361
    aput-object v10, v0, v6

    .line 362
    .line 363
    invoke-virtual {v10, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    new-array v7, v5, [Ljava/lang/Object;

    .line 368
    .line 369
    aput-object v4, v7, v6

    .line 370
    .line 371
    invoke-virtual {v0, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 372
    .line 373
    .line 374
    :catch_1
    :goto_8
    :try_start_d
    throw v2

    .line 375
    :cond_4
    move-object/from16 p1, v7

    .line 376
    .line 377
    move-object/from16 v18, v8

    .line 378
    .line 379
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    array-length v4, v2

    .line 384
    if-ne v5, v4, :cond_d

    .line 385
    .line 386
    new-instance v4, Ly3/j;

    .line 387
    .line 388
    const/4 v5, 0x4

    .line 389
    const/4 v6, 0x1

    .line 390
    invoke-direct {v4, v5, v2, v6}, Ly3/j;-><init>(I[BZ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 391
    .line 392
    .line 393
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    int-to-long v1, v5

    .line 400
    add-long/2addr v1, v1

    .line 401
    const-wide/16 v3, 0x4

    .line 402
    .line 403
    add-long/2addr v1, v3

    .line 404
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 405
    .line 406
    .line 407
    move-result v6

    .line 408
    mul-int/lit8 v6, v6, 0x10

    .line 409
    .line 410
    int-to-long v6, v6

    .line 411
    add-long/2addr v1, v6

    .line 412
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 413
    .line 414
    .line 415
    move-result v6

    .line 416
    int-to-long v6, v6

    .line 417
    invoke-static {v0, v6, v7, v5}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 418
    .line 419
    .line 420
    const/4 v5, 0x0

    .line 421
    :goto_9
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 422
    .line 423
    .line 424
    move-result v6

    .line 425
    if-ge v5, v6, :cond_b

    .line 426
    .line 427
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v6

    .line 431
    check-cast v6, Ly3/j;

    .line 432
    .line 433
    iget v7, v6, Ly3/j;->a:I

    .line 434
    .line 435
    const/4 v8, 0x1

    .line 436
    if-eq v7, v8, :cond_9

    .line 437
    .line 438
    const/4 v8, 0x2

    .line 439
    const/4 v9, 0x3

    .line 440
    if-eq v7, v8, :cond_8

    .line 441
    .line 442
    if-eq v7, v9, :cond_7

    .line 443
    .line 444
    const/4 v10, 0x4

    .line 445
    if-eq v7, v10, :cond_6

    .line 446
    .line 447
    const/4 v10, 0x5

    .line 448
    if-ne v7, v10, :cond_5

    .line 449
    .line 450
    move-wide v10, v3

    .line 451
    :goto_a
    const/4 v7, 0x4

    .line 452
    goto :goto_b

    .line 453
    :cond_5
    const/4 v0, 0x0

    .line 454
    throw v0

    .line 455
    :cond_6
    const-wide/16 v10, 0x3

    .line 456
    .line 457
    goto :goto_a

    .line 458
    :cond_7
    const-wide/16 v10, 0x2

    .line 459
    .line 460
    goto :goto_a

    .line 461
    :cond_8
    const-wide/16 v10, 0x1

    .line 462
    .line 463
    goto :goto_a

    .line 464
    :cond_9
    const/4 v8, 0x2

    .line 465
    const/4 v9, 0x3

    .line 466
    const/4 v7, 0x4

    .line 467
    const-wide/16 v10, 0x0

    .line 468
    .line 469
    :goto_b
    invoke-static {v0, v10, v11, v7}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 470
    .line 471
    .line 472
    invoke-static {v0, v1, v2, v7}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 473
    .line 474
    .line 475
    iget-object v7, v6, Ly3/j;->b:[B

    .line 476
    .line 477
    iget-boolean v6, v6, Ly3/j;->c:Z

    .line 478
    .line 479
    if-eqz v6, :cond_a

    .line 480
    .line 481
    array-length v6, v7

    .line 482
    int-to-long v10, v6

    .line 483
    invoke-static {v7}, Ly3/c;->a([B)[B

    .line 484
    .line 485
    .line 486
    move-result-object v6

    .line 487
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    array-length v7, v6

    .line 491
    int-to-long v12, v7

    .line 492
    const/4 v7, 0x4

    .line 493
    invoke-static {v0, v12, v13, v7}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 494
    .line 495
    .line 496
    invoke-static {v0, v10, v11, v7}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 497
    .line 498
    .line 499
    array-length v6, v6

    .line 500
    int-to-long v10, v6

    .line 501
    add-long/2addr v1, v10

    .line 502
    const/4 v6, 0x1

    .line 503
    const-wide/16 v10, 0x0

    .line 504
    .line 505
    goto :goto_c

    .line 506
    :cond_a
    const/4 v6, 0x4

    .line 507
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    array-length v10, v7

    .line 511
    int-to-long v10, v10

    .line 512
    invoke-static {v0, v10, v11, v6}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 513
    .line 514
    .line 515
    const-wide/16 v10, 0x0

    .line 516
    .line 517
    invoke-static {v0, v10, v11, v6}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 518
    .line 519
    .line 520
    array-length v6, v7

    .line 521
    int-to-long v6, v6

    .line 522
    add-long/2addr v1, v6

    .line 523
    const/4 v6, 0x1

    .line 524
    :goto_c
    add-int/2addr v5, v6

    .line 525
    goto :goto_9

    .line 526
    :cond_b
    const/4 v6, 0x1

    .line 527
    const/4 v12, 0x0

    .line 528
    :goto_d
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 529
    .line 530
    .line 531
    move-result v1

    .line 532
    if-ge v12, v1, :cond_c

    .line 533
    .line 534
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    check-cast v1, [B

    .line 539
    .line 540
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 541
    .line 542
    .line 543
    add-int/2addr v12, v6

    .line 544
    goto :goto_d

    .line 545
    :cond_c
    return v6

    .line 546
    :cond_d
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 547
    .line 548
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .line 550
    .line 551
    move-object/from16 v6, v18

    .line 552
    .line 553
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    move-object/from16 v7, p1

    .line 560
    .line 561
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    array-length v2, v2

    .line 565
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 573
    .line 574
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 578
    :goto_e
    :try_start_f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 579
    .line 580
    .line 581
    goto :goto_f

    .line 582
    :catchall_7
    move-exception v0

    .line 583
    move-object v3, v0

    .line 584
    const/4 v4, 0x1

    .line 585
    :try_start_10
    new-array v0, v4, [Ljava/lang/Class;

    .line 586
    .line 587
    const/4 v5, 0x0

    .line 588
    aput-object v10, v0, v5

    .line 589
    .line 590
    invoke-virtual {v10, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    new-array v1, v4, [Ljava/lang/Object;

    .line 595
    .line 596
    aput-object v3, v1, v5

    .line 597
    .line 598
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    .line 599
    .line 600
    .line 601
    :catch_2
    :goto_f
    throw v2

    .line 602
    :cond_e
    move-object v6, v8

    .line 603
    :try_start_11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 604
    .line 605
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    array-length v2, v4

    .line 618
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 626
    .line 627
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 631
    :goto_10
    :try_start_12
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 632
    .line 633
    .line 634
    goto :goto_11

    .line 635
    :catchall_8
    move-exception v0

    .line 636
    move-object v3, v0

    .line 637
    const/4 v4, 0x1

    .line 638
    :try_start_13
    new-array v0, v4, [Ljava/lang/Class;

    .line 639
    .line 640
    const/4 v5, 0x0

    .line 641
    aput-object v10, v0, v5

    .line 642
    .line 643
    invoke-virtual {v10, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    new-array v1, v4, [Ljava/lang/Object;

    .line 648
    .line 649
    aput-object v3, v1, v5

    .line 650
    .line 651
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    .line 652
    .line 653
    .line 654
    :catch_3
    :goto_11
    throw v2

    .line 655
    :cond_f
    move-object v6, v8

    .line 656
    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 657
    .line 658
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    array-length v2, v4

    .line 671
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 679
    .line 680
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 684
    :goto_12
    :try_start_15
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 685
    .line 686
    .line 687
    goto :goto_13

    .line 688
    :catchall_9
    move-exception v0

    .line 689
    move-object v3, v0

    .line 690
    const/4 v4, 0x1

    .line 691
    :try_start_16
    new-array v0, v4, [Ljava/lang/Class;

    .line 692
    .line 693
    const/4 v5, 0x0

    .line 694
    aput-object v10, v0, v5

    .line 695
    .line 696
    invoke-virtual {v10, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    new-array v1, v4, [Ljava/lang/Object;

    .line 701
    .line 702
    aput-object v3, v1, v5

    .line 703
    .line 704
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4

    .line 705
    .line 706
    .line 707
    :catch_4
    :goto_13
    throw v2

    .line 708
    :cond_10
    sget-object v3, Ly3/c;->e:[B

    .line 709
    .line 710
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 711
    .line 712
    .line 713
    move-result v4

    .line 714
    if-eqz v4, :cond_11

    .line 715
    .line 716
    invoke-static {v2, v3}, Ly3/c;->b([Lba/s;[B)[B

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    array-length v2, v2

    .line 721
    int-to-long v2, v2

    .line 722
    const/4 v4, 0x1

    .line 723
    invoke-static {v0, v2, v3, v4}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 724
    .line 725
    .line 726
    array-length v2, v1

    .line 727
    int-to-long v2, v2

    .line 728
    const/4 v4, 0x4

    .line 729
    invoke-static {v0, v2, v3, v4}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 730
    .line 731
    .line 732
    invoke-static {v1}, Ly3/c;->a([B)[B

    .line 733
    .line 734
    .line 735
    move-result-object v1

    .line 736
    array-length v2, v1

    .line 737
    int-to-long v2, v2

    .line 738
    invoke-static {v0, v2, v3, v4}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 742
    .line 743
    .line 744
    const/4 v3, 0x1

    .line 745
    return v3

    .line 746
    :cond_11
    const/4 v3, 0x1

    .line 747
    sget-object v4, Ly3/c;->g:[B

    .line 748
    .line 749
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 750
    .line 751
    .line 752
    move-result v5

    .line 753
    if-eqz v5, :cond_15

    .line 754
    .line 755
    array-length v1, v2

    .line 756
    int-to-long v5, v1

    .line 757
    invoke-static {v0, v5, v6, v3}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 758
    .line 759
    .line 760
    array-length v1, v2

    .line 761
    const/4 v6, 0x0

    .line 762
    :goto_14
    if-ge v6, v1, :cond_14

    .line 763
    .line 764
    aget-object v3, v2, v6

    .line 765
    .line 766
    iget-object v5, v3, Lba/s;->i:Ljava/io/Serializable;

    .line 767
    .line 768
    check-cast v5, Ljava/util/TreeMap;

    .line 769
    .line 770
    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    .line 771
    .line 772
    .line 773
    move-result v5

    .line 774
    const/4 v7, 0x4

    .line 775
    mul-int/lit8 v5, v5, 0x4

    .line 776
    .line 777
    iget-object v7, v3, Lba/s;->b:Ljava/lang/String;

    .line 778
    .line 779
    iget-object v8, v3, Lba/s;->a:Ljava/lang/String;

    .line 780
    .line 781
    invoke-static {v8, v7, v4}, Ly3/c;->d(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v7

    .line 785
    sget-object v8, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 786
    .line 787
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 788
    .line 789
    .line 790
    move-result-object v9

    .line 791
    array-length v9, v9

    .line 792
    invoke-static {v0, v9}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 793
    .line 794
    .line 795
    iget-object v9, v3, Lba/s;->h:Ljava/io/Serializable;

    .line 796
    .line 797
    check-cast v9, [I

    .line 798
    .line 799
    array-length v9, v9

    .line 800
    invoke-static {v0, v9}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 801
    .line 802
    .line 803
    int-to-long v9, v5

    .line 804
    const/4 v5, 0x4

    .line 805
    invoke-static {v0, v9, v10, v5}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 806
    .line 807
    .line 808
    iget-wide v9, v3, Lba/s;->c:J

    .line 809
    .line 810
    invoke-static {v0, v9, v10, v5}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 814
    .line 815
    .line 816
    move-result-object v5

    .line 817
    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 818
    .line 819
    .line 820
    iget-object v5, v3, Lba/s;->i:Ljava/io/Serializable;

    .line 821
    .line 822
    check-cast v5, Ljava/util/TreeMap;

    .line 823
    .line 824
    invoke-virtual {v5}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 825
    .line 826
    .line 827
    move-result-object v5

    .line 828
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 829
    .line 830
    .line 831
    move-result-object v5

    .line 832
    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 833
    .line 834
    .line 835
    move-result v7

    .line 836
    if-eqz v7, :cond_12

    .line 837
    .line 838
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v7

    .line 842
    check-cast v7, Ljava/lang/Integer;

    .line 843
    .line 844
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 845
    .line 846
    .line 847
    move-result v7

    .line 848
    invoke-static {v0, v7}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 849
    .line 850
    .line 851
    const/4 v7, 0x0

    .line 852
    invoke-static {v0, v7}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 853
    .line 854
    .line 855
    goto :goto_15

    .line 856
    :cond_12
    iget-object v3, v3, Lba/s;->h:Ljava/io/Serializable;

    .line 857
    .line 858
    check-cast v3, [I

    .line 859
    .line 860
    array-length v5, v3

    .line 861
    const/4 v7, 0x0

    .line 862
    :goto_16
    if-ge v7, v5, :cond_13

    .line 863
    .line 864
    aget v8, v3, v7

    .line 865
    .line 866
    invoke-static {v0, v8}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 867
    .line 868
    .line 869
    const/4 v8, 0x1

    .line 870
    add-int/2addr v7, v8

    .line 871
    goto :goto_16

    .line 872
    :cond_13
    const/4 v8, 0x1

    .line 873
    add-int/2addr v6, v8

    .line 874
    goto :goto_14

    .line 875
    :cond_14
    const/4 v8, 0x1

    .line 876
    return v8

    .line 877
    :cond_15
    const/4 v8, 0x1

    .line 878
    sget-object v3, Ly3/c;->f:[B

    .line 879
    .line 880
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 881
    .line 882
    .line 883
    move-result v4

    .line 884
    if-eqz v4, :cond_16

    .line 885
    .line 886
    invoke-static {v2, v3}, Ly3/c;->b([Lba/s;[B)[B

    .line 887
    .line 888
    .line 889
    move-result-object v1

    .line 890
    array-length v2, v2

    .line 891
    int-to-long v2, v2

    .line 892
    invoke-static {v0, v2, v3, v8}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 893
    .line 894
    .line 895
    array-length v2, v1

    .line 896
    int-to-long v2, v2

    .line 897
    const/4 v4, 0x4

    .line 898
    invoke-static {v0, v2, v3, v4}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 899
    .line 900
    .line 901
    invoke-static {v1}, Ly3/c;->a([B)[B

    .line 902
    .line 903
    .line 904
    move-result-object v1

    .line 905
    array-length v2, v1

    .line 906
    int-to-long v2, v2

    .line 907
    invoke-static {v0, v2, v3, v4}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 911
    .line 912
    .line 913
    const/4 v1, 0x1

    .line 914
    return v1

    .line 915
    :cond_16
    sget-object v3, Ly3/c;->h:[B

    .line 916
    .line 917
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 918
    .line 919
    .line 920
    move-result v1

    .line 921
    if-eqz v1, :cond_1a

    .line 922
    .line 923
    array-length v1, v2

    .line 924
    invoke-static {v0, v1}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 925
    .line 926
    .line 927
    array-length v1, v2

    .line 928
    const/4 v6, 0x0

    .line 929
    :goto_17
    if-ge v6, v1, :cond_19

    .line 930
    .line 931
    aget-object v4, v2, v6

    .line 932
    .line 933
    iget-object v5, v4, Lba/s;->a:Ljava/lang/String;

    .line 934
    .line 935
    iget-object v7, v4, Lba/s;->b:Ljava/lang/String;

    .line 936
    .line 937
    invoke-static {v5, v7, v3}, Ly3/c;->d(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    move-result-object v5

    .line 941
    sget-object v7, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 942
    .line 943
    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 944
    .line 945
    .line 946
    move-result-object v8

    .line 947
    array-length v8, v8

    .line 948
    invoke-static {v0, v8}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 949
    .line 950
    .line 951
    iget-object v8, v4, Lba/s;->i:Ljava/io/Serializable;

    .line 952
    .line 953
    check-cast v8, Ljava/util/TreeMap;

    .line 954
    .line 955
    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    .line 956
    .line 957
    .line 958
    move-result v9

    .line 959
    invoke-static {v0, v9}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 960
    .line 961
    .line 962
    iget-object v9, v4, Lba/s;->h:Ljava/io/Serializable;

    .line 963
    .line 964
    check-cast v9, [I

    .line 965
    .line 966
    array-length v9, v9

    .line 967
    invoke-static {v0, v9}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 968
    .line 969
    .line 970
    iget-wide v9, v4, Lba/s;->c:J

    .line 971
    .line 972
    const/4 v11, 0x4

    .line 973
    invoke-static {v0, v9, v10, v11}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 974
    .line 975
    .line 976
    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 977
    .line 978
    .line 979
    move-result-object v5

    .line 980
    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 981
    .line 982
    .line 983
    invoke-virtual {v8}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 984
    .line 985
    .line 986
    move-result-object v5

    .line 987
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 988
    .line 989
    .line 990
    move-result-object v5

    .line 991
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 992
    .line 993
    .line 994
    move-result v7

    .line 995
    if-eqz v7, :cond_17

    .line 996
    .line 997
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-result-object v7

    .line 1001
    check-cast v7, Ljava/lang/Integer;

    .line 1002
    .line 1003
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 1004
    .line 1005
    .line 1006
    move-result v7

    .line 1007
    invoke-static {v0, v7}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 1008
    .line 1009
    .line 1010
    goto :goto_18

    .line 1011
    :cond_17
    iget-object v4, v4, Lba/s;->h:Ljava/io/Serializable;

    .line 1012
    .line 1013
    check-cast v4, [I

    .line 1014
    .line 1015
    array-length v5, v4

    .line 1016
    const/4 v7, 0x0

    .line 1017
    :goto_19
    if-ge v7, v5, :cond_18

    .line 1018
    .line 1019
    aget v8, v4, v7

    .line 1020
    .line 1021
    invoke-static {v0, v8}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 1022
    .line 1023
    .line 1024
    const/4 v8, 0x1

    .line 1025
    add-int/2addr v7, v8

    .line 1026
    goto :goto_19

    .line 1027
    :cond_18
    const/4 v8, 0x1

    .line 1028
    add-int/2addr v6, v8

    .line 1029
    goto :goto_17

    .line 1030
    :cond_19
    const/4 v8, 0x1

    .line 1031
    return v8

    .line 1032
    :cond_1a
    const/4 v1, 0x0

    .line 1033
    return v1
.end method

.method public static p(Ljava/io/ByteArrayOutputStream;Lba/s;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    array-length v1, v1

    .line 8
    invoke-static {p0, v1}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 9
    .line 10
    .line 11
    iget v1, p1, Lba/s;->e:I

    .line 12
    .line 13
    invoke-static {p0, v1}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 14
    .line 15
    .line 16
    iget v1, p1, Lba/s;->f:I

    .line 17
    .line 18
    int-to-long v1, v1

    .line 19
    const/4 v3, 0x4

    .line 20
    invoke-static {p0, v1, v2, v3}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 21
    .line 22
    .line 23
    iget-wide v1, p1, Lba/s;->c:J

    .line 24
    .line 25
    invoke-static {p0, v1, v2, v3}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 26
    .line 27
    .line 28
    iget p1, p1, Lba/s;->g:I

    .line 29
    .line 30
    int-to-long v1, p1

    .line 31
    invoke-static {p0, v1, v2, v3}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static q(Ljava/io/ByteArrayOutputStream;Lba/s;)V
    .locals 8

    .line 1
    iget v0, p1, Lba/s;->g:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x7

    .line 6
    .line 7
    and-int/lit8 v0, v0, -0x8

    .line 8
    .line 9
    div-int/lit8 v0, v0, 0x8

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    iget-object v1, p1, Lba/s;->i:Ljava/io/Serializable;

    .line 14
    .line 15
    check-cast v1, Ljava/util/TreeMap;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    and-int/lit8 v4, v2, 0x2

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    div-int/lit8 v4, v3, 0x8

    .line 63
    .line 64
    aget-byte v6, v0, v4

    .line 65
    .line 66
    rem-int/lit8 v7, v3, 0x8

    .line 67
    .line 68
    shl-int v7, v5, v7

    .line 69
    .line 70
    or-int/2addr v6, v7

    .line 71
    int-to-byte v6, v6

    .line 72
    aput-byte v6, v0, v4

    .line 73
    .line 74
    :cond_1
    and-int/lit8 v2, v2, 0x4

    .line 75
    .line 76
    if-eqz v2, :cond_0

    .line 77
    .line 78
    iget v2, p1, Lba/s;->g:I

    .line 79
    .line 80
    add-int/2addr v3, v2

    .line 81
    div-int/lit8 v2, v3, 0x8

    .line 82
    .line 83
    aget-byte v4, v0, v2

    .line 84
    .line 85
    rem-int/lit8 v3, v3, 0x8

    .line 86
    .line 87
    shl-int v3, v5, v3

    .line 88
    .line 89
    or-int/2addr v3, v4

    .line 90
    int-to-byte v3, v3

    .line 91
    aput-byte v3, v0, v2

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public static r(Ljava/io/ByteArrayOutputStream;Lba/s;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lba/s;->i:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast p1, Ljava/util/TreeMap;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/util/Map$Entry;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    and-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    sub-int v1, v3, v1

    .line 53
    .line 54
    invoke-static {p0, v1}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v0}, Ly3/c;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 58
    .line 59
    .line 60
    move v1, v3

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method public static s(Landroid/content/Context;Ljava/util/concurrent/Executor;Ly3/b;Z)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    const/4 v9, 0x6

    .line 6
    const/4 v10, 0x1

    .line 7
    const/4 v11, 0x0

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 21
    .line 22
    .line 23
    move-result-object v12

    .line 24
    new-instance v0, Ljava/io/File;

    .line 25
    .line 26
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :try_start_0
    invoke-virtual {v0, v2, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v14
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1c

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object v15

    .line 47
    const-string v7, "addSuppressed"

    .line 48
    .line 49
    const-class v5, Ljava/lang/Throwable;

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    if-nez p3, :cond_4

    .line 53
    .line 54
    new-instance v0, Ljava/io/File;

    .line 55
    .line 56
    const-string v3, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 57
    .line 58
    invoke-direct {v0, v15, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_0

    .line 66
    .line 67
    move-object/from16 v18, v12

    .line 68
    .line 69
    :goto_0
    const/4 v0, 0x0

    .line 70
    goto :goto_3

    .line 71
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    .line 72
    .line 73
    new-instance v13, Ljava/io/FileInputStream;

    .line 74
    .line 75
    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {v3, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    .line 80
    .line 81
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    .line 82
    .line 83
    .line 84
    move-result-wide v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 86
    .line 87
    .line 88
    move-object/from16 v18, v12

    .line 89
    .line 90
    iget-wide v11, v14, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 91
    .line 92
    cmp-long v0, v16, v11

    .line 93
    .line 94
    if-nez v0, :cond_1

    .line 95
    .line 96
    const/4 v0, 0x1

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    const/4 v0, 0x0

    .line 99
    :goto_1
    if-eqz v0, :cond_2

    .line 100
    .line 101
    const/4 v3, 0x2

    .line 102
    invoke-interface {v8, v3, v4}, Ly3/b;->c(ILjava/io/Serializable;)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :catch_0
    move-object/from16 v18, v12

    .line 107
    .line 108
    :catch_1
    nop

    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    move-object/from16 v18, v12

    .line 112
    .line 113
    move-object v11, v0

    .line 114
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :catchall_1
    move-exception v0

    .line 119
    move-object v3, v0

    .line 120
    :try_start_5
    new-array v0, v10, [Ljava/lang/Class;

    .line 121
    .line 122
    const/4 v12, 0x0

    .line 123
    aput-object v5, v0, v12

    .line 124
    .line 125
    invoke-virtual {v5, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-array v13, v10, [Ljava/lang/Object;

    .line 130
    .line 131
    aput-object v3, v13, v12

    .line 132
    .line 133
    move-object v3, v13

    .line 134
    invoke-virtual {v0, v11, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 135
    .line 136
    .line 137
    :catch_2
    :goto_2
    :try_start_6
    throw v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 138
    :cond_2
    :goto_3
    if-nez v0, :cond_3

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    const/4 v2, 0x0

    .line 145
    invoke-static {v1, v2}, Ly3/i;->c(Landroid/content/Context;Z)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_33

    .line 149
    .line 150
    :cond_4
    move-object/from16 v18, v12

    .line 151
    .line 152
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 156
    .line 157
    const/16 v3, 0x13

    .line 158
    .line 159
    const/4 v11, 0x3

    .line 160
    if-ge v0, v3, :cond_5

    .line 161
    .line 162
    new-instance v0, Lfa/v;

    .line 163
    .line 164
    invoke-direct {v0, v8, v11, v4, v9}, Lfa/v;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 165
    .line 166
    .line 167
    move-object/from16 v12, p1

    .line 168
    .line 169
    invoke-interface {v12, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 170
    .line 171
    .line 172
    :goto_5
    const/4 v6, 0x1

    .line 173
    const/4 v12, 0x0

    .line 174
    goto/16 :goto_31

    .line 175
    .line 176
    :cond_5
    move-object/from16 v12, p1

    .line 177
    .line 178
    new-instance v3, Ljava/io/File;

    .line 179
    .line 180
    new-instance v4, Ljava/io/File;

    .line 181
    .line 182
    const-string v13, "/data/misc/profiles/cur/0"

    .line 183
    .line 184
    invoke-direct {v4, v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string v2, "primary.prof"

    .line 188
    .line 189
    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    new-instance v13, Ly3/a;

    .line 193
    .line 194
    const-string v4, "dexopt/baseline.prof"

    .line 195
    .line 196
    move-object v2, v13

    .line 197
    move-object/from16 v19, v3

    .line 198
    .line 199
    move-object/from16 v3, v18

    .line 200
    .line 201
    move-object/from16 v20, v4

    .line 202
    .line 203
    const/4 v9, 0x0

    .line 204
    move-object/from16 v4, p1

    .line 205
    .line 206
    move-object v12, v5

    .line 207
    move-object/from16 v5, p2

    .line 208
    .line 209
    move-object/from16 v21, v7

    .line 210
    .line 211
    move-object/from16 v7, v19

    .line 212
    .line 213
    invoke-direct/range {v2 .. v7}, Ly3/a;-><init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Ly3/b;Ljava/lang/String;Ljava/io/File;)V

    .line 214
    .line 215
    .line 216
    iget-object v2, v13, Ly3/a;->d:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v2, [B

    .line 219
    .line 220
    if-nez v2, :cond_6

    .line 221
    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v13, v11, v0}, Ly3/a;->c(ILjava/io/Serializable;)V

    .line 227
    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->canWrite()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    const/4 v3, 0x4

    .line 235
    if-nez v0, :cond_7

    .line 236
    .line 237
    invoke-virtual {v13, v3, v9}, Ly3/a;->c(ILjava/io/Serializable;)V

    .line 238
    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_7
    iput-boolean v10, v13, Ly3/a;->a:Z

    .line 242
    .line 243
    sget-object v4, Ly3/c;->b:[B

    .line 244
    .line 245
    move-object/from16 v5, v18

    .line 246
    .line 247
    move-object/from16 v0, v20

    .line 248
    .line 249
    :try_start_7
    invoke-virtual {v13, v5, v0}, Ly3/a;->b(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 250
    .line 251
    .line 252
    move-result-object v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 253
    move-object v6, v0

    .line 254
    goto :goto_7

    .line 255
    :catch_3
    move-exception v0

    .line 256
    move-object v6, v0

    .line 257
    const/4 v7, 0x7

    .line 258
    invoke-interface {v8, v7, v6}, Ly3/b;->c(ILjava/io/Serializable;)V

    .line 259
    .line 260
    .line 261
    goto :goto_6

    .line 262
    :catch_4
    move-exception v0

    .line 263
    move-object v6, v0

    .line 264
    const/4 v7, 0x6

    .line 265
    invoke-interface {v8, v7, v6}, Ly3/b;->c(ILjava/io/Serializable;)V

    .line 266
    .line 267
    .line 268
    :goto_6
    move-object v6, v9

    .line 269
    :goto_7
    const-string v7, "Invalid magic"

    .line 270
    .line 271
    const/16 v11, 0x8

    .line 272
    .line 273
    if-eqz v6, :cond_9

    .line 274
    .line 275
    :try_start_8
    invoke-static {v3, v6}, Ly3/c;->f(ILjava/io/InputStream;)[B

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-eqz v0, :cond_8

    .line 284
    .line 285
    invoke-static {v3, v6}, Ly3/c;->f(ILjava/io/InputStream;)[B

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    iget-object v10, v13, Ly3/a;->g:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v10, Ljava/lang/String;

    .line 292
    .line 293
    invoke-static {v6, v0, v10}, Ly3/c;->l(Ljava/io/FileInputStream;[BLjava/lang/String;)[Lba/s;

    .line 294
    .line 295
    .line 296
    move-result-object v10
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 297
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 298
    .line 299
    .line 300
    goto :goto_e

    .line 301
    :catch_5
    move-exception v0

    .line 302
    move-object v6, v0

    .line 303
    const/4 v9, 0x7

    .line 304
    invoke-interface {v8, v9, v6}, Ly3/b;->c(ILjava/io/Serializable;)V

    .line 305
    .line 306
    .line 307
    goto :goto_e

    .line 308
    :catchall_2
    move-exception v0

    .line 309
    :goto_8
    move-object v1, v0

    .line 310
    goto :goto_f

    .line 311
    :catch_6
    move-exception v0

    .line 312
    goto :goto_a

    .line 313
    :goto_9
    const/4 v9, 0x7

    .line 314
    goto :goto_c

    .line 315
    :cond_8
    :try_start_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 316
    .line 317
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 321
    :goto_a
    :try_start_b
    invoke-interface {v8, v11, v0}, Ly3/b;->c(ILjava/io/Serializable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 322
    .line 323
    .line 324
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 325
    .line 326
    .line 327
    goto :goto_d

    .line 328
    :catch_7
    move-exception v0

    .line 329
    move-object v6, v0

    .line 330
    const/4 v9, 0x7

    .line 331
    :goto_b
    invoke-interface {v8, v9, v6}, Ly3/b;->c(ILjava/io/Serializable;)V

    .line 332
    .line 333
    .line 334
    goto :goto_d

    .line 335
    :catchall_3
    move-exception v0

    .line 336
    const/4 v9, 0x7

    .line 337
    goto :goto_8

    .line 338
    :catch_8
    move-exception v0

    .line 339
    goto :goto_9

    .line 340
    :goto_c
    :try_start_d
    invoke-interface {v8, v9, v0}, Ly3/b;->c(ILjava/io/Serializable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 341
    .line 342
    .line 343
    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 344
    .line 345
    .line 346
    goto :goto_d

    .line 347
    :catch_9
    move-exception v0

    .line 348
    move-object v6, v0

    .line 349
    goto :goto_b

    .line 350
    :goto_d
    const/4 v10, 0x0

    .line 351
    :goto_e
    iput-object v10, v13, Ly3/a;->h:Ljava/lang/Object;

    .line 352
    .line 353
    goto :goto_11

    .line 354
    :goto_f
    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 355
    .line 356
    .line 357
    goto :goto_10

    .line 358
    :catch_a
    move-exception v0

    .line 359
    move-object v2, v0

    .line 360
    const/4 v3, 0x7

    .line 361
    invoke-interface {v8, v3, v2}, Ly3/b;->c(ILjava/io/Serializable;)V

    .line 362
    .line 363
    .line 364
    :goto_10
    throw v1

    .line 365
    :cond_9
    :goto_11
    iget-object v0, v13, Ly3/a;->h:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast v0, [Lba/s;

    .line 368
    .line 369
    if-eqz v0, :cond_f

    .line 370
    .line 371
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 372
    .line 373
    const/16 v9, 0x18

    .line 374
    .line 375
    if-lt v6, v9, :cond_f

    .line 376
    .line 377
    const/16 v10, 0x21

    .line 378
    .line 379
    if-le v6, v10, :cond_a

    .line 380
    .line 381
    goto/16 :goto_19

    .line 382
    .line 383
    :cond_a
    if-eq v6, v9, :cond_b

    .line 384
    .line 385
    const/16 v9, 0x19

    .line 386
    .line 387
    if-eq v6, v9, :cond_b

    .line 388
    .line 389
    packed-switch v6, :pswitch_data_0

    .line 390
    .line 391
    .line 392
    goto :goto_19

    .line 393
    :cond_b
    :pswitch_0
    :try_start_10
    const-string v6, "dexopt/baseline.profm"

    .line 394
    .line 395
    invoke-virtual {v13, v5, v6}, Ly3/a;->b(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 396
    .line 397
    .line 398
    move-result-object v5
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_b

    .line 399
    if-eqz v5, :cond_d

    .line 400
    .line 401
    :try_start_11
    sget-object v6, Ly3/c;->c:[B

    .line 402
    .line 403
    invoke-static {v3, v5}, Ly3/c;->f(ILjava/io/InputStream;)[B

    .line 404
    .line 405
    .line 406
    move-result-object v9

    .line 407
    invoke-static {v6, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 408
    .line 409
    .line 410
    move-result v6

    .line 411
    if-eqz v6, :cond_c

    .line 412
    .line 413
    invoke-static {v3, v5}, Ly3/c;->f(ILjava/io/InputStream;)[B

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-static {v5, v3, v2, v0}, Ly3/c;->i(Ljava/io/FileInputStream;[B[B[Lba/s;)[Lba/s;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    iput-object v0, v13, Ly3/a;->h:Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 422
    .line 423
    :try_start_12
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_b

    .line 424
    .line 425
    .line 426
    move-object v0, v13

    .line 427
    goto :goto_18

    .line 428
    :catch_b
    move-exception v0

    .line 429
    const/4 v2, 0x0

    .line 430
    goto :goto_14

    .line 431
    :catch_c
    move-exception v0

    .line 432
    const/4 v2, 0x7

    .line 433
    goto :goto_15

    .line 434
    :catch_d
    move-exception v0

    .line 435
    goto :goto_16

    .line 436
    :catchall_4
    move-exception v0

    .line 437
    move-object v2, v0

    .line 438
    goto :goto_12

    .line 439
    :cond_c
    :try_start_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 440
    .line 441
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 445
    :goto_12
    :try_start_14
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 446
    .line 447
    .line 448
    goto :goto_13

    .line 449
    :catchall_5
    move-exception v0

    .line 450
    move-object v3, v0

    .line 451
    :try_start_15
    invoke-static {v2, v3}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 452
    .line 453
    .line 454
    :goto_13
    throw v2

    .line 455
    :cond_d
    if-eqz v5, :cond_e

    .line 456
    .line 457
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_b

    .line 458
    .line 459
    .line 460
    goto :goto_17

    .line 461
    :goto_14
    iput-object v2, v13, Ly3/a;->h:Ljava/lang/Object;

    .line 462
    .line 463
    invoke-interface {v8, v11, v0}, Ly3/b;->c(ILjava/io/Serializable;)V

    .line 464
    .line 465
    .line 466
    goto :goto_17

    .line 467
    :goto_15
    invoke-interface {v8, v2, v0}, Ly3/b;->c(ILjava/io/Serializable;)V

    .line 468
    .line 469
    .line 470
    goto :goto_17

    .line 471
    :goto_16
    const/16 v2, 0x9

    .line 472
    .line 473
    invoke-interface {v8, v2, v0}, Ly3/b;->c(ILjava/io/Serializable;)V

    .line 474
    .line 475
    .line 476
    :cond_e
    :goto_17
    const/4 v0, 0x0

    .line 477
    :goto_18
    if-eqz v0, :cond_f

    .line 478
    .line 479
    move-object v2, v0

    .line 480
    goto :goto_1a

    .line 481
    :cond_f
    :goto_19
    move-object v2, v13

    .line 482
    :goto_1a
    iget-object v0, v2, Ly3/a;->c:Ljava/lang/Object;

    .line 483
    .line 484
    move-object v3, v0

    .line 485
    check-cast v3, Ly3/b;

    .line 486
    .line 487
    iget-object v0, v2, Ly3/a;->h:Ljava/lang/Object;

    .line 488
    .line 489
    check-cast v0, [Lba/s;

    .line 490
    .line 491
    const-string v5, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    .line 492
    .line 493
    if-eqz v0, :cond_11

    .line 494
    .line 495
    iget-object v6, v2, Ly3/a;->d:Ljava/lang/Object;

    .line 496
    .line 497
    check-cast v6, [B

    .line 498
    .line 499
    if-nez v6, :cond_10

    .line 500
    .line 501
    goto :goto_1b

    .line 502
    :cond_10
    iget-boolean v7, v2, Ly3/a;->a:Z

    .line 503
    .line 504
    if-eqz v7, :cond_13

    .line 505
    .line 506
    :try_start_16
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 507
    .line 508
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_e

    .line 509
    .line 510
    .line 511
    :try_start_17
    invoke-virtual {v7, v4}, Ljava/io/OutputStream;->write([B)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v7, v6}, Ljava/io/OutputStream;->write([B)V

    .line 515
    .line 516
    .line 517
    invoke-static {v7, v6, v0}, Ly3/c;->o(Ljava/io/ByteArrayOutputStream;[B[Lba/s;)Z

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    if-nez v0, :cond_12

    .line 522
    .line 523
    const/4 v0, 0x5

    .line 524
    const/4 v4, 0x0

    .line 525
    invoke-interface {v3, v0, v4}, Ly3/b;->c(ILjava/io/Serializable;)V

    .line 526
    .line 527
    .line 528
    iput-object v4, v2, Ly3/a;->h:Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 529
    .line 530
    :try_start_18
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_18} :catch_e

    .line 531
    .line 532
    .line 533
    :cond_11
    :goto_1b
    move-object/from16 v9, v21

    .line 534
    .line 535
    goto :goto_23

    .line 536
    :catch_e
    move-exception v0

    .line 537
    move-object/from16 v9, v21

    .line 538
    .line 539
    goto :goto_20

    .line 540
    :catch_f
    move-exception v0

    .line 541
    move-object/from16 v9, v21

    .line 542
    .line 543
    :goto_1c
    const/4 v4, 0x7

    .line 544
    goto :goto_21

    .line 545
    :catchall_6
    move-exception v0

    .line 546
    move-object v4, v0

    .line 547
    goto :goto_1e

    .line 548
    :cond_12
    :try_start_19
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    iput-object v0, v2, Ly3/a;->e:Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 553
    .line 554
    :try_start_1a
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_1a} :catch_e

    .line 555
    .line 556
    .line 557
    move-object/from16 v9, v21

    .line 558
    .line 559
    :goto_1d
    const/4 v3, 0x0

    .line 560
    goto :goto_22

    .line 561
    :goto_1e
    :try_start_1b
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 562
    .line 563
    .line 564
    :catch_10
    move-object/from16 v9, v21

    .line 565
    .line 566
    goto :goto_1f

    .line 567
    :catchall_7
    move-exception v0

    .line 568
    move-object v6, v0

    .line 569
    const/4 v7, 0x1

    .line 570
    :try_start_1c
    new-array v0, v7, [Ljava/lang/Class;

    .line 571
    .line 572
    const/4 v8, 0x0

    .line 573
    aput-object v12, v0, v8
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10

    .line 574
    .line 575
    move-object/from16 v9, v21

    .line 576
    .line 577
    :try_start_1d
    invoke-virtual {v12, v9, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    new-array v10, v7, [Ljava/lang/Object;

    .line 582
    .line 583
    aput-object v6, v10, v8

    .line 584
    .line 585
    invoke-virtual {v0, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_11

    .line 586
    .line 587
    .line 588
    :catch_11
    :goto_1f
    :try_start_1e
    throw v4
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_13
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_1e} :catch_12

    .line 589
    :catch_12
    move-exception v0

    .line 590
    goto :goto_20

    .line 591
    :catch_13
    move-exception v0

    .line 592
    goto :goto_1c

    .line 593
    :goto_20
    invoke-interface {v3, v11, v0}, Ly3/b;->c(ILjava/io/Serializable;)V

    .line 594
    .line 595
    .line 596
    goto :goto_1d

    .line 597
    :goto_21
    invoke-interface {v3, v4, v0}, Ly3/b;->c(ILjava/io/Serializable;)V

    .line 598
    .line 599
    .line 600
    goto :goto_1d

    .line 601
    :goto_22
    iput-object v3, v2, Ly3/a;->h:Ljava/lang/Object;

    .line 602
    .line 603
    goto :goto_23

    .line 604
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 605
    .line 606
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    throw v0

    .line 610
    :goto_23
    iget-object v0, v2, Ly3/a;->e:Ljava/lang/Object;

    .line 611
    .line 612
    check-cast v0, [B

    .line 613
    .line 614
    if-nez v0, :cond_14

    .line 615
    .line 616
    const/4 v6, 0x1

    .line 617
    :goto_24
    const/4 v12, 0x0

    .line 618
    goto/16 :goto_30

    .line 619
    .line 620
    :cond_14
    iget-boolean v3, v2, Ly3/a;->a:Z

    .line 621
    .line 622
    if-eqz v3, :cond_18

    .line 623
    .line 624
    :try_start_1f
    new-instance v3, Ljava/io/ByteArrayInputStream;
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_19
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .line 625
    .line 626
    :try_start_20
    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_20} :catch_1a
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_19
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    .line 627
    .line 628
    .line 629
    :try_start_21
    new-instance v4, Ljava/io/FileOutputStream;

    .line 630
    .line 631
    iget-object v0, v2, Ly3/a;->f:Ljava/lang/Object;

    .line 632
    .line 633
    check-cast v0, Ljava/io/File;

    .line 634
    .line 635
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    .line 636
    .line 637
    .line 638
    const/16 v0, 0x200

    .line 639
    .line 640
    :try_start_22
    new-array v0, v0, [B

    .line 641
    .line 642
    :goto_25
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 643
    .line 644
    .line 645
    move-result v5

    .line 646
    if-lez v5, :cond_15

    .line 647
    .line 648
    const/4 v6, 0x0

    .line 649
    invoke-virtual {v4, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 650
    .line 651
    .line 652
    goto :goto_25

    .line 653
    :cond_15
    const/4 v5, 0x0

    .line 654
    const/4 v6, 0x1

    .line 655
    invoke-virtual {v2, v6, v5}, Ly3/a;->c(ILjava/io/Serializable;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    .line 656
    .line 657
    .line 658
    :try_start_23
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    .line 659
    .line 660
    .line 661
    :try_start_24
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_24} :catch_15
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_14
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    .line 662
    .line 663
    .line 664
    iput-object v5, v2, Ly3/a;->e:Ljava/lang/Object;

    .line 665
    .line 666
    iput-object v5, v2, Ly3/a;->h:Ljava/lang/Object;

    .line 667
    .line 668
    const/4 v6, 0x1

    .line 669
    const/4 v12, 0x1

    .line 670
    goto/16 :goto_30

    .line 671
    .line 672
    :catchall_8
    move-exception v0

    .line 673
    const/4 v1, 0x0

    .line 674
    goto/16 :goto_34

    .line 675
    .line 676
    :catch_14
    move-exception v0

    .line 677
    const/4 v3, 0x7

    .line 678
    const/4 v6, 0x1

    .line 679
    goto :goto_2d

    .line 680
    :catch_15
    move-exception v0

    .line 681
    const/4 v3, 0x0

    .line 682
    const/4 v4, 0x6

    .line 683
    const/4 v6, 0x1

    .line 684
    goto :goto_2f

    .line 685
    :catchall_9
    move-exception v0

    .line 686
    move-object v4, v0

    .line 687
    const/4 v6, 0x1

    .line 688
    goto :goto_28

    .line 689
    :catchall_a
    move-exception v0

    .line 690
    move-object v5, v0

    .line 691
    :try_start_25
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    .line 692
    .line 693
    .line 694
    const/4 v6, 0x1

    .line 695
    goto :goto_27

    .line 696
    :catchall_b
    move-exception v0

    .line 697
    move-object v4, v0

    .line 698
    const/4 v6, 0x1

    .line 699
    :try_start_26
    new-array v0, v6, [Ljava/lang/Class;

    .line 700
    .line 701
    const/4 v7, 0x0

    .line 702
    aput-object v12, v0, v7

    .line 703
    .line 704
    invoke-virtual {v12, v9, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    new-array v8, v6, [Ljava/lang/Object;

    .line 709
    .line 710
    aput-object v4, v8, v7

    .line 711
    .line 712
    invoke-virtual {v0, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_16
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    .line 713
    .line 714
    .line 715
    goto :goto_27

    .line 716
    :goto_26
    move-object v4, v0

    .line 717
    goto :goto_28

    .line 718
    :catch_16
    :goto_27
    :try_start_27
    throw v5
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_c

    .line 719
    :catchall_c
    move-exception v0

    .line 720
    goto :goto_26

    .line 721
    :catchall_d
    move-exception v0

    .line 722
    const/4 v6, 0x1

    .line 723
    goto :goto_26

    .line 724
    :goto_28
    :try_start_28
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    .line 725
    .line 726
    .line 727
    goto :goto_29

    .line 728
    :catchall_e
    move-exception v0

    .line 729
    move-object v3, v0

    .line 730
    :try_start_29
    invoke-static {v4, v3}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 731
    .line 732
    .line 733
    :goto_29
    throw v4
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_29} :catch_18
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_17
    .catchall {:try_start_29 .. :try_end_29} :catchall_8

    .line 734
    :catch_17
    move-exception v0

    .line 735
    :goto_2a
    const/4 v3, 0x7

    .line 736
    goto :goto_2d

    .line 737
    :catch_18
    move-exception v0

    .line 738
    :goto_2b
    const/4 v3, 0x0

    .line 739
    :goto_2c
    const/4 v4, 0x6

    .line 740
    goto :goto_2f

    .line 741
    :catch_19
    move-exception v0

    .line 742
    const/4 v6, 0x1

    .line 743
    goto :goto_2a

    .line 744
    :catch_1a
    move-exception v0

    .line 745
    const/4 v6, 0x1

    .line 746
    goto :goto_2b

    .line 747
    :goto_2d
    :try_start_2a
    invoke-virtual {v2, v3, v0}, Ly3/a;->c(ILjava/io/Serializable;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_f

    .line 748
    .line 749
    .line 750
    const/4 v3, 0x0

    .line 751
    :goto_2e
    iput-object v3, v2, Ly3/a;->e:Ljava/lang/Object;

    .line 752
    .line 753
    iput-object v3, v2, Ly3/a;->h:Ljava/lang/Object;

    .line 754
    .line 755
    goto/16 :goto_24

    .line 756
    .line 757
    :catchall_f
    move-exception v0

    .line 758
    const/4 v3, 0x0

    .line 759
    move-object v1, v3

    .line 760
    goto :goto_34

    .line 761
    :catch_1b
    move-exception v0

    .line 762
    const/4 v3, 0x0

    .line 763
    const/4 v6, 0x1

    .line 764
    goto :goto_2c

    .line 765
    :goto_2f
    :try_start_2b
    invoke-virtual {v2, v4, v0}, Ly3/a;->c(ILjava/io/Serializable;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_8

    .line 766
    .line 767
    .line 768
    goto :goto_2e

    .line 769
    :goto_30
    if-eqz v12, :cond_16

    .line 770
    .line 771
    invoke-static {v14, v15}, Ly3/c;->e(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    .line 772
    .line 773
    .line 774
    :cond_16
    :goto_31
    if-eqz v12, :cond_17

    .line 775
    .line 776
    if-eqz p3, :cond_17

    .line 777
    .line 778
    const/4 v10, 0x1

    .line 779
    goto :goto_32

    .line 780
    :cond_17
    const/4 v10, 0x0

    .line 781
    :goto_32
    invoke-static {v1, v10}, Ly3/i;->c(Landroid/content/Context;Z)V

    .line 782
    .line 783
    .line 784
    :goto_33
    return-void

    .line 785
    :goto_34
    iput-object v1, v2, Ly3/a;->e:Ljava/lang/Object;

    .line 786
    .line 787
    iput-object v1, v2, Ly3/a;->h:Ljava/lang/Object;

    .line 788
    .line 789
    throw v0

    .line 790
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 791
    .line 792
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    throw v0

    .line 796
    :catch_1c
    move-exception v0

    .line 797
    move-object v2, v0

    .line 798
    const/4 v3, 0x7

    .line 799
    invoke-interface {v8, v3, v2}, Ly3/b;->c(ILjava/io/Serializable;)V

    .line 800
    .line 801
    .line 802
    const/4 v2, 0x0

    .line 803
    invoke-static {v1, v2}, Ly3/i;->c(Landroid/content/Context;Z)V

    .line 804
    .line 805
    .line 806
    return-void

    .line 807
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static t(Ljava/io/ByteArrayOutputStream;JI)V
    .locals 6

    .line 1
    new-array v0, p3, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p3, :cond_0

    .line 5
    .line 6
    mul-int/lit8 v2, v1, 0x8

    .line 7
    .line 8
    shr-long v2, p1, v2

    .line 9
    .line 10
    const-wide/16 v4, 0xff

    .line 11
    .line 12
    and-long/2addr v2, v4

    .line 13
    long-to-int v3, v2

    .line 14
    int-to-byte v2, v3

    .line 15
    aput-byte v2, v0, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static u(Ljava/io/ByteArrayOutputStream;I)V
    .locals 2

    .line 1
    int-to-long v0, p1

    .line 2
    const/4 p1, 0x2

    .line 3
    invoke-static {p0, v0, v1, p1}, Ly3/c;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
