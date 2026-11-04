.class public final Lyh/a0;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public a:Lxg/b;

.field public final b:Lyh/b;

.field public final c:I

.field public final d:Lai/a;

.field public final e:Lbi/a;

.field public final f:Z

.field public g:Lyh/g;

.field public final h:Lci/a;

.field public i:Z

.field public j:Ljava/io/IOException;

.field public final k:[B


# direct methods
.method public constructor <init>(Lxg/b;ILyh/b;)V
    .locals 4

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    new-instance v1, Ljava/io/DataInputStream;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lyh/a0;->g:Lyh/g;

    .line 18
    .line 19
    new-instance v2, Lci/a;

    .line 20
    .line 21
    invoke-direct {v2}, Lci/a;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lyh/a0;->h:Lci/a;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    iput-boolean v2, p0, Lyh/a0;->i:Z

    .line 28
    .line 29
    iput-object v1, p0, Lyh/a0;->j:Ljava/io/IOException;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    new-array v3, v1, [B

    .line 33
    .line 34
    iput-object v3, p0, Lyh/a0;->k:[B

    .line 35
    .line 36
    iput-object p3, p0, Lyh/a0;->b:Lyh/b;

    .line 37
    .line 38
    iput-object p1, p0, Lyh/a0;->a:Lxg/b;

    .line 39
    .line 40
    iput p2, p0, Lyh/a0;->c:I

    .line 41
    .line 42
    iput-boolean v1, p0, Lyh/a0;->f:Z

    .line 43
    .line 44
    :goto_0
    const/4 p1, 0x6

    .line 45
    if-ge v2, p1, :cond_1

    .line 46
    .line 47
    aget-byte p1, v0, v2

    .line 48
    .line 49
    sget-object p2, Lyh/d0;->a:[B

    .line 50
    .line 51
    aget-byte p2, p2, v2

    .line 52
    .line 53
    if-ne p1, p2, :cond_0

    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Lyh/e0;

    .line 59
    .line 60
    invoke-direct {p1}, Lyh/e0;-><init>()V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_1
    const/4 p2, 0x2

    .line 65
    const/16 p3, 0x8

    .line 66
    .line 67
    invoke-static {p1, p2, p3, v0}, Lqf/c;->F(III[B)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_6

    .line 72
    .line 73
    :try_start_0
    invoke-static {p1, v0}, Lqf/c;->i(I[B)Lai/a;

    .line 74
    .line 75
    .line 76
    move-result-object p1
    :try_end_0
    .catch Lyh/c0; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    iput-object p1, p0, Lyh/a0;->d:Lai/a;

    .line 78
    .line 79
    iget p1, p1, Lai/a;->a:I

    .line 80
    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    if-eq p1, v1, :cond_4

    .line 84
    .line 85
    const/4 p2, 0x4

    .line 86
    if-eq p1, p2, :cond_3

    .line 87
    .line 88
    const/16 p2, 0xa

    .line 89
    .line 90
    if-ne p1, p2, :cond_2

    .line 91
    .line 92
    :try_start_1
    new-instance p2, Lzh/a;

    .line 93
    .line 94
    const/4 p3, 0x1

    .line 95
    invoke-direct {p2, p3}, Lzh/a;-><init>(I)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_0
    :cond_2
    new-instance p2, Lyh/c0;

    .line 100
    .line 101
    const-string p3, "Unsupported Check ID "

    .line 102
    .line 103
    invoke-static {p1, p3}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p2, p1}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p2

    .line 111
    :cond_3
    new-instance p2, Lzh/b;

    .line 112
    .line 113
    invoke-direct {p2}, Lzh/b;-><init>()V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    new-instance p2, Lzh/a;

    .line 118
    .line 119
    const/4 p1, 0x0

    .line 120
    invoke-direct {p2, p1}, Lzh/a;-><init>(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    new-instance p2, Lzh/c;

    .line 125
    .line 126
    invoke-direct {p2}, Lzh/c;-><init>()V

    .line 127
    .line 128
    .line 129
    :goto_1
    iput-object p2, p0, Lyh/a0;->e:Lbi/a;

    .line 130
    .line 131
    return-void

    .line 132
    :catch_1
    new-instance p1, Lyh/c0;

    .line 133
    .line 134
    const-string p2, "Unsupported options in XZ Stream Header"

    .line 135
    .line 136
    invoke-direct {p1, p2}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :cond_6
    new-instance p1, Lyh/h;

    .line 141
    .line 142
    const-string p2, "XZ Stream Header is corrupt"

    .line 143
    .line 144
    invoke-direct {p1, p2}, Lyh/h;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :goto_2
    throw p1

    .line 149
    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final A()V
    .locals 9

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    new-instance v1, Ljava/io/DataInputStream;

    .line 6
    .line 7
    iget-object v2, p0, Lyh/a0;->a:Lxg/b;

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 13
    .line 14
    .line 15
    const/16 v1, 0xa

    .line 16
    .line 17
    aget-byte v1, v0, v1

    .line 18
    .line 19
    sget-object v2, Lyh/d0;->b:[B

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aget-byte v4, v2, v3

    .line 23
    .line 24
    const-string v5, "XZ Stream Footer is corrupt"

    .line 25
    .line 26
    if-ne v1, v4, :cond_3

    .line 27
    .line 28
    const/16 v1, 0xb

    .line 29
    .line 30
    aget-byte v1, v0, v1

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    aget-byte v2, v2, v4

    .line 34
    .line 35
    if-ne v1, v2, :cond_3

    .line 36
    .line 37
    const/4 v1, 0x6

    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-static {v2, v1, v3, v0}, Lqf/c;->F(III[B)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    :try_start_0
    invoke-static {v1, v0}, Lqf/c;->i(I[B)Lai/a;

    .line 48
    .line 49
    .line 50
    move-result-object v1
    :try_end_0
    .catch Lyh/c0; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    const-wide/16 v5, 0x0

    .line 52
    .line 53
    iput-wide v5, v1, Lai/a;->b:J

    .line 54
    .line 55
    :goto_0
    if-ge v3, v2, :cond_0

    .line 56
    .line 57
    iget-wide v5, v1, Lai/a;->b:J

    .line 58
    .line 59
    add-int/lit8 v7, v3, 0x4

    .line 60
    .line 61
    aget-byte v7, v0, v7

    .line 62
    .line 63
    and-int/lit16 v7, v7, 0xff

    .line 64
    .line 65
    mul-int/lit8 v8, v3, 0x8

    .line 66
    .line 67
    shl-int/2addr v7, v8

    .line 68
    int-to-long v7, v7

    .line 69
    or-long/2addr v5, v7

    .line 70
    iput-wide v5, v1, Lai/a;->b:J

    .line 71
    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-wide v2, v1, Lai/a;->b:J

    .line 76
    .line 77
    const-wide/16 v5, 0x1

    .line 78
    .line 79
    add-long/2addr v2, v5

    .line 80
    const-wide/16 v5, 0x4

    .line 81
    .line 82
    mul-long v2, v2, v5

    .line 83
    .line 84
    iput-wide v2, v1, Lai/a;->b:J

    .line 85
    .line 86
    iget-object v0, p0, Lyh/a0;->d:Lai/a;

    .line 87
    .line 88
    iget v0, v0, Lai/a;->a:I

    .line 89
    .line 90
    iget v2, v1, Lai/a;->a:I

    .line 91
    .line 92
    if-ne v0, v2, :cond_1

    .line 93
    .line 94
    iget-object v0, p0, Lyh/a0;->h:Lci/a;

    .line 95
    .line 96
    iget-wide v2, v0, Lci/a;->e:J

    .line 97
    .line 98
    invoke-static {v2, v3}, Lqf/c;->C(J)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    add-int/2addr v2, v4

    .line 103
    int-to-long v2, v2

    .line 104
    iget-wide v4, v0, Lci/a;->d:J

    .line 105
    .line 106
    add-long/2addr v2, v4

    .line 107
    const-wide/16 v4, 0x7

    .line 108
    .line 109
    add-long/2addr v2, v4

    .line 110
    const-wide/16 v4, -0x4

    .line 111
    .line 112
    and-long/2addr v2, v4

    .line 113
    iget-wide v0, v1, Lai/a;->b:J

    .line 114
    .line 115
    cmp-long v4, v2, v0

    .line 116
    .line 117
    if-nez v4, :cond_1

    .line 118
    .line 119
    return-void

    .line 120
    :cond_1
    new-instance v0, Lyh/h;

    .line 121
    .line 122
    const-string v1, "XZ Stream Footer does not match Stream Header"

    .line 123
    .line 124
    invoke-direct {v0, v1}, Lyh/h;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :catch_0
    new-instance v0, Lyh/c0;

    .line 129
    .line 130
    const-string v1, "Unsupported options in XZ Stream Footer"

    .line 131
    .line 132
    invoke-direct {v0, v1}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_2
    new-instance v0, Lyh/h;

    .line 137
    .line 138
    invoke-direct {v0, v5}, Lyh/h;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :cond_3
    new-instance v0, Lyh/h;

    .line 143
    .line 144
    invoke-direct {v0, v5}, Lyh/h;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :goto_1
    throw v0

    .line 149
    :goto_2
    goto :goto_1
.end method

.method public final available()I
    .locals 2

    .line 1
    iget-object v0, p0, Lyh/a0;->a:Lxg/b;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lyh/a0;->j:Ljava/io/IOException;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lyh/a0;->g:Lyh/g;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, v0, Lyh/g;->c:Ljava/io/InputStream;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_0
    return v0

    .line 22
    :cond_1
    throw v0

    .line 23
    :cond_2
    new-instance v0, Lyh/f0;

    .line 24
    .line 25
    const-string v1, "Stream closed"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Lyh/f0;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lyh/a0;->r(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final r(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lyh/a0;->a:Lxg/b;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lyh/a0;->g:Lyh/g;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lyh/g;->close()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lyh/a0;->g:Lyh/g;

    .line 14
    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    :try_start_0
    iget-object p1, p0, Lyh/a0;->a:Lxg/b;

    .line 18
    .line 19
    invoke-virtual {p1}, Lxg/b;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    iput-object v1, p0, Lyh/a0;->a:Lxg/b;

    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    :goto_0
    iput-object v1, p0, Lyh/a0;->a:Lxg/b;

    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public final read()I
    .locals 4

    const/4 v0, 0x1

    .line 1
    iget-object v1, p0, Lyh/a0;->k:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lyh/a0;->read([BII)I

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
    .locals 10

    if-ltz p2, :cond_9

    if-ltz p3, :cond_9

    add-int v0, p2, p3

    if-ltz v0, :cond_9

    .line 2
    array-length v1, p1

    if-gt v0, v1, :cond_9

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lyh/a0;->a:Lxg/b;

    if-eqz v1, :cond_8

    .line 4
    iget-object v1, p0, Lyh/a0;->j:Ljava/io/IOException;

    if-nez v1, :cond_7

    .line 5
    iget-boolean v1, p0, Lyh/a0;->i:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    :goto_0
    if-lez p3, :cond_6

    .line 6
    :try_start_0
    iget-object v1, p0, Lyh/a0;->g:Lyh/g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lyh/a0;->h:Lci/a;

    if-nez v1, :cond_3

    .line 7
    :try_start_1
    new-instance v1, Lyh/g;

    iget-object v5, p0, Lyh/a0;->a:Lxg/b;

    iget-object v6, p0, Lyh/a0;->e:Lbi/a;

    iget-boolean v7, p0, Lyh/a0;->f:Z

    iget v8, p0, Lyh/a0;->c:I

    iget-object v9, p0, Lyh/a0;->b:Lyh/b;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lyh/g;-><init>(Lxg/b;Lbi/a;ZILyh/b;)V

    iput-object v1, p0, Lyh/a0;->g:Lyh/g;
    :try_end_1
    .catch Lyh/r; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 8
    :catch_1
    :try_start_2
    iget-object p1, p0, Lyh/a0;->a:Lxg/b;

    invoke-virtual {v3, p1}, Lci/a;->b(Lxg/b;)V

    .line 9
    invoke-virtual {p0}, Lyh/a0;->A()V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lyh/a0;->i:Z

    if-lez v0, :cond_2

    move v2, v0

    :cond_2
    return v2

    .line 11
    :cond_3
    :goto_1
    iget-object v1, p0, Lyh/a0;->g:Lyh/g;

    invoke-virtual {v1, p1, p2, p3}, Lyh/g;->read([BII)I

    move-result v1

    if-lez v1, :cond_4

    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_4
    if-ne v1, v2, :cond_1

    .line 12
    iget-object v1, p0, Lyh/a0;->g:Lyh/g;

    .line 13
    iget v4, v1, Lyh/g;->i:I

    int-to-long v4, v4

    .line 14
    iget-object v6, v1, Lyh/g;->b:Lyh/i;

    iget-wide v6, v6, Lyh/i;->a:J

    add-long/2addr v4, v6

    .line 15
    iget-object v6, v1, Lyh/g;->d:Lbi/a;

    iget v6, v6, Lbi/a;->a:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 16
    iget-wide v6, v1, Lyh/g;->j:J

    .line 17
    invoke-virtual {v3, v4, v5, v6, v7}, Lci/a;->a(JJ)V

    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lyh/a0;->g:Lyh/g;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 19
    :goto_2
    iput-object p1, p0, Lyh/a0;->j:Ljava/io/IOException;

    if-eqz v0, :cond_5

    goto :goto_3

    .line 20
    :cond_5
    throw p1

    :cond_6
    :goto_3
    return v0

    .line 21
    :cond_7
    throw v1

    .line 22
    :cond_8
    new-instance p1, Lyh/f0;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Lyh/f0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_9
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
