.class public final Lci/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyh/h;

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public final f:Lbi/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lyh/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lyh/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    iput-wide v1, p0, Lci/a;->b:J

    .line 12
    .line 13
    iput-wide v1, p0, Lci/a;->c:J

    .line 14
    .line 15
    iput-wide v1, p0, Lci/a;->d:J

    .line 16
    .line 17
    iput-wide v1, p0, Lci/a;->e:J

    .line 18
    .line 19
    iput-object v0, p0, Lci/a;->a:Lyh/h;

    .line 20
    .line 21
    :try_start_0
    new-instance v0, Lzh/a;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-direct {v0, v1}, Lzh/a;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lci/a;->f:Lbi/a;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    new-instance v0, Lzh/a;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {v0, v1}, Lzh/a;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lci/a;->f:Lbi/a;

    .line 37
    .line 38
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v3, p3

    .line 6
    .line 7
    iget-wide v5, v0, Lci/a;->b:J

    .line 8
    .line 9
    const-wide/16 v7, 0x3

    .line 10
    .line 11
    add-long/2addr v7, v1

    .line 12
    const-wide/16 v9, -0x4

    .line 13
    .line 14
    and-long/2addr v7, v9

    .line 15
    add-long/2addr v5, v7

    .line 16
    iput-wide v5, v0, Lci/a;->b:J

    .line 17
    .line 18
    iget-wide v5, v0, Lci/a;->c:J

    .line 19
    .line 20
    add-long/2addr v5, v3

    .line 21
    iput-wide v5, v0, Lci/a;->c:J

    .line 22
    .line 23
    iget-wide v5, v0, Lci/a;->d:J

    .line 24
    .line 25
    invoke-static/range {p1 .. p2}, Lqf/c;->C(J)I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    invoke-static/range {p3 .. p4}, Lqf/c;->C(J)I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    add-int/2addr v8, v7

    .line 34
    int-to-long v7, v8

    .line 35
    add-long/2addr v5, v7

    .line 36
    iput-wide v5, v0, Lci/a;->d:J

    .line 37
    .line 38
    iget-wide v5, v0, Lci/a;->e:J

    .line 39
    .line 40
    const-wide/16 v7, 0x1

    .line 41
    .line 42
    add-long/2addr v5, v7

    .line 43
    iput-wide v5, v0, Lci/a;->e:J

    .line 44
    .line 45
    iget-wide v7, v0, Lci/a;->b:J

    .line 46
    .line 47
    const-wide/16 v11, 0x0

    .line 48
    .line 49
    cmp-long v13, v7, v11

    .line 50
    .line 51
    if-ltz v13, :cond_0

    .line 52
    .line 53
    iget-wide v7, v0, Lci/a;->c:J

    .line 54
    .line 55
    cmp-long v13, v7, v11

    .line 56
    .line 57
    if-ltz v13, :cond_0

    .line 58
    .line 59
    invoke-static {v5, v6}, Lqf/c;->C(J)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    add-int/lit8 v5, v5, 0x1

    .line 64
    .line 65
    int-to-long v5, v5

    .line 66
    iget-wide v7, v0, Lci/a;->d:J

    .line 67
    .line 68
    add-long/2addr v5, v7

    .line 69
    const-wide/16 v7, 0x7

    .line 70
    .line 71
    add-long/2addr v5, v7

    .line 72
    and-long/2addr v5, v9

    .line 73
    const-wide v13, 0x400000000L

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    cmp-long v15, v5, v13

    .line 79
    .line 80
    if-gtz v15, :cond_0

    .line 81
    .line 82
    iget-wide v5, v0, Lci/a;->b:J

    .line 83
    .line 84
    const-wide/16 v13, 0xc

    .line 85
    .line 86
    add-long/2addr v5, v13

    .line 87
    iget-wide v11, v0, Lci/a;->e:J

    .line 88
    .line 89
    invoke-static {v11, v12}, Lqf/c;->C(J)I

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    add-int/lit8 v11, v11, 0x1

    .line 94
    .line 95
    int-to-long v11, v11

    .line 96
    iget-wide v13, v0, Lci/a;->d:J

    .line 97
    .line 98
    add-long/2addr v11, v13

    .line 99
    add-long/2addr v11, v7

    .line 100
    and-long v7, v11, v9

    .line 101
    .line 102
    add-long/2addr v7, v5

    .line 103
    const-wide/16 v5, 0xc

    .line 104
    .line 105
    add-long/2addr v7, v5

    .line 106
    const-wide/16 v5, 0x0

    .line 107
    .line 108
    cmp-long v9, v7, v5

    .line 109
    .line 110
    if-ltz v9, :cond_0

    .line 111
    .line 112
    const/16 v5, 0x10

    .line 113
    .line 114
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v5, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    iget-object v2, v0, Lci/a;->f:Lbi/a;

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    array-length v3, v1

    .line 134
    const/4 v4, 0x0

    .line 135
    invoke-virtual {v2, v1, v4, v3}, Lbi/a;->b([BII)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_0
    iget-object v1, v0, Lci/a;->a:Lyh/h;

    .line 140
    .line 141
    throw v1
.end method

.method public final b(Lxg/b;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/zip/CRC32;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    .line 11
    .line 12
    invoke-direct {v2, p1, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Lqf/c;->k(Ljava/io/InputStream;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    iget-wide v5, p0, Lci/a;->e:J

    .line 20
    .line 21
    cmp-long p1, v3, v5

    .line 22
    .line 23
    if-nez p1, :cond_7

    .line 24
    .line 25
    new-instance p1, Lci/a;

    .line 26
    .line 27
    invoke-direct {p1}, Lci/a;-><init>()V

    .line 28
    .line 29
    .line 30
    const-wide/16 v3, 0x0

    .line 31
    .line 32
    :goto_0
    iget-wide v5, p0, Lci/a;->e:J

    .line 33
    .line 34
    const-string v7, "XZ Index is corrupt"

    .line 35
    .line 36
    cmp-long v8, v3, v5

    .line 37
    .line 38
    if-gez v8, :cond_1

    .line 39
    .line 40
    invoke-static {v2}, Lqf/c;->k(Ljava/io/InputStream;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    invoke-static {v2}, Lqf/c;->k(Ljava/io/InputStream;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v8

    .line 48
    :try_start_0
    invoke-virtual {p1, v5, v6, v8, v9}, Lci/a;->a(JJ)V
    :try_end_0
    .catch Lyh/f0; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    iget-wide v5, p1, Lci/a;->b:J

    .line 52
    .line 53
    iget-wide v8, p0, Lci/a;->b:J

    .line 54
    .line 55
    cmp-long v10, v5, v8

    .line 56
    .line 57
    if-gtz v10, :cond_0

    .line 58
    .line 59
    iget-wide v5, p1, Lci/a;->c:J

    .line 60
    .line 61
    iget-wide v8, p0, Lci/a;->c:J

    .line 62
    .line 63
    cmp-long v10, v5, v8

    .line 64
    .line 65
    if-gtz v10, :cond_0

    .line 66
    .line 67
    iget-wide v5, p1, Lci/a;->d:J

    .line 68
    .line 69
    iget-wide v8, p0, Lci/a;->d:J

    .line 70
    .line 71
    cmp-long v10, v5, v8

    .line 72
    .line 73
    if-gtz v10, :cond_0

    .line 74
    .line 75
    const-wide/16 v5, 0x1

    .line 76
    .line 77
    add-long/2addr v3, v5

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Lyh/h;

    .line 80
    .line 81
    invoke-direct {p1, v7}, Lyh/h;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :catch_0
    new-instance p1, Lyh/h;

    .line 86
    .line 87
    invoke-direct {p1, v7}, Lyh/h;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_1
    iget-wide v3, p1, Lci/a;->b:J

    .line 92
    .line 93
    iget-wide v5, p0, Lci/a;->b:J

    .line 94
    .line 95
    cmp-long v8, v3, v5

    .line 96
    .line 97
    if-nez v8, :cond_6

    .line 98
    .line 99
    iget-wide v3, p1, Lci/a;->c:J

    .line 100
    .line 101
    iget-wide v5, p0, Lci/a;->c:J

    .line 102
    .line 103
    cmp-long v8, v3, v5

    .line 104
    .line 105
    if-nez v8, :cond_6

    .line 106
    .line 107
    iget-wide v3, p1, Lci/a;->d:J

    .line 108
    .line 109
    iget-wide v5, p0, Lci/a;->d:J

    .line 110
    .line 111
    cmp-long v8, v3, v5

    .line 112
    .line 113
    if-nez v8, :cond_6

    .line 114
    .line 115
    iget-object p1, p1, Lci/a;->f:Lbi/a;

    .line 116
    .line 117
    invoke-virtual {p1}, Lbi/a;->a()[B

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object v3, p0, Lci/a;->f:Lbi/a;

    .line 122
    .line 123
    invoke-virtual {v3}, Lbi/a;->a()[B

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    new-instance p1, Ljava/io/DataInputStream;

    .line 134
    .line 135
    invoke-direct {p1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 136
    .line 137
    .line 138
    iget-wide v2, p0, Lci/a;->e:J

    .line 139
    .line 140
    invoke-static {v2, v3}, Lqf/c;->C(J)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    int-to-long v2, v2

    .line 147
    iget-wide v4, p0, Lci/a;->d:J

    .line 148
    .line 149
    add-long/2addr v2, v4

    .line 150
    const-wide/16 v4, 0x4

    .line 151
    .line 152
    add-long/2addr v2, v4

    .line 153
    sub-long/2addr v4, v2

    .line 154
    const-wide/16 v2, 0x3

    .line 155
    .line 156
    and-long/2addr v2, v4

    .line 157
    long-to-int v3, v2

    .line 158
    :goto_1
    if-lez v3, :cond_3

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-nez v2, :cond_2

    .line 165
    .line 166
    add-int/lit8 v3, v3, -0x1

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_2
    new-instance p1, Lyh/h;

    .line 170
    .line 171
    invoke-direct {p1, v7}, Lyh/h;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :cond_3
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    .line 176
    .line 177
    .line 178
    move-result-wide v2

    .line 179
    :goto_2
    const/4 v0, 0x4

    .line 180
    if-ge v1, v0, :cond_5

    .line 181
    .line 182
    mul-int/lit8 v0, v1, 0x8

    .line 183
    .line 184
    ushr-long v4, v2, v0

    .line 185
    .line 186
    const-wide/16 v8, 0xff

    .line 187
    .line 188
    and-long/2addr v4, v8

    .line 189
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    int-to-long v8, v0

    .line 194
    cmp-long v0, v4, v8

    .line 195
    .line 196
    if-nez v0, :cond_4

    .line 197
    .line 198
    add-int/lit8 v1, v1, 0x1

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_4
    new-instance p1, Lyh/h;

    .line 202
    .line 203
    invoke-direct {p1, v7}, Lyh/h;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p1

    .line 207
    :cond_5
    return-void

    .line 208
    :cond_6
    new-instance p1, Lyh/h;

    .line 209
    .line 210
    invoke-direct {p1, v7}, Lyh/h;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p1

    .line 214
    :cond_7
    new-instance p1, Lyh/h;

    .line 215
    .line 216
    const-string v0, "XZ Block Header or the start of XZ Index is corrupt"

    .line 217
    .line 218
    invoke-direct {p1, v0}, Lyh/h;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :goto_3
    throw p1

    .line 223
    :goto_4
    goto :goto_3
.end method
