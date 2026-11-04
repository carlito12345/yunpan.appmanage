.class public final Lyh/v;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field public static final synthetic k:I


# instance fields
.field public a:Ljava/io/InputStream;

.field public final b:Lyh/b;

.field public c:Ldi/c;

.field public final d:Lfi/c;

.field public final e:Lei/f;

.field public f:Z

.field public g:Z

.field public final h:[B

.field public i:J

.field public j:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JBI)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lyh/v;->f:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lyh/v;->g:Z

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    iput-object v0, p0, Lyh/v;->h:[B

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lyh/v;->j:Ljava/io/IOException;

    .line 16
    .line 17
    sget-object v0, Lyh/b;->a:Lyh/b;

    .line 18
    .line 19
    const-wide/16 v1, -0x1

    .line 20
    .line 21
    cmp-long v3, p2, v1

    .line 22
    .line 23
    if-ltz v3, :cond_4

    .line 24
    .line 25
    and-int/lit16 p4, p4, 0xff

    .line 26
    .line 27
    const/16 v3, 0xe0

    .line 28
    .line 29
    if-gt p4, v3, :cond_3

    .line 30
    .line 31
    div-int/lit8 v9, p4, 0x2d

    .line 32
    .line 33
    mul-int/lit8 v3, v9, 0x2d

    .line 34
    .line 35
    sub-int/2addr p4, v3

    .line 36
    div-int/lit8 v8, p4, 0x9

    .line 37
    .line 38
    mul-int/lit8 v3, v8, 0x9

    .line 39
    .line 40
    sub-int v7, p4, v3

    .line 41
    .line 42
    if-ltz p5, :cond_2

    .line 43
    .line 44
    const p4, 0x7ffffff0

    .line 45
    .line 46
    .line 47
    if-gt p5, p4, :cond_2

    .line 48
    .line 49
    cmp-long p4, p2, v1

    .line 50
    .line 51
    if-ltz p4, :cond_1

    .line 52
    .line 53
    if-ltz v7, :cond_1

    .line 54
    .line 55
    const/16 p4, 0x8

    .line 56
    .line 57
    if-gt v7, p4, :cond_1

    .line 58
    .line 59
    if-ltz v8, :cond_1

    .line 60
    .line 61
    const/4 p4, 0x4

    .line 62
    if-gt v8, p4, :cond_1

    .line 63
    .line 64
    if-ltz v9, :cond_1

    .line 65
    .line 66
    if-gt v9, p4, :cond_1

    .line 67
    .line 68
    iput-object p1, p0, Lyh/v;->a:Ljava/io/InputStream;

    .line 69
    .line 70
    iput-object v0, p0, Lyh/v;->b:Lyh/b;

    .line 71
    .line 72
    invoke-static {p5}, Lyh/v;->r(I)I

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    const-wide/16 v1, 0x0

    .line 77
    .line 78
    cmp-long p5, p2, v1

    .line 79
    .line 80
    if-ltz p5, :cond_0

    .line 81
    .line 82
    int-to-long v1, p4

    .line 83
    cmp-long p5, v1, p2

    .line 84
    .line 85
    if-lez p5, :cond_0

    .line 86
    .line 87
    long-to-int p4, p2

    .line 88
    invoke-static {p4}, Lyh/v;->r(I)I

    .line 89
    .line 90
    .line 91
    move-result p4

    .line 92
    :cond_0
    new-instance p5, Ldi/c;

    .line 93
    .line 94
    invoke-static {p4}, Lyh/v;->r(I)I

    .line 95
    .line 96
    .line 97
    move-result p4

    .line 98
    invoke-direct {p5, p4, v0}, Ldi/c;-><init>(ILyh/b;)V

    .line 99
    .line 100
    .line 101
    iput-object p5, p0, Lyh/v;->c:Ldi/c;

    .line 102
    .line 103
    new-instance v6, Lfi/c;

    .line 104
    .line 105
    invoke-direct {v6, p1}, Lfi/c;-><init>(Ljava/io/InputStream;)V

    .line 106
    .line 107
    .line 108
    iput-object v6, p0, Lyh/v;->d:Lfi/c;

    .line 109
    .line 110
    new-instance p1, Lei/f;

    .line 111
    .line 112
    iget-object v5, p0, Lyh/v;->c:Ldi/c;

    .line 113
    .line 114
    move-object v4, p1

    .line 115
    invoke-direct/range {v4 .. v9}, Lei/f;-><init>(Ldi/c;Lfi/a;III)V

    .line 116
    .line 117
    .line 118
    iput-object p1, p0, Lyh/v;->e:Lei/f;

    .line 119
    .line 120
    iput-wide p2, p0, Lyh/v;->i:J

    .line 121
    .line 122
    return-void

    .line 123
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 126
    .line 127
    .line 128
    throw p1

    .line 129
    :cond_2
    new-instance p1, Lyh/c0;

    .line 130
    .line 131
    const-string p2, "LZMA dictionary is too big for this implementation"

    .line 132
    .line 133
    invoke-direct {p1, p2}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :cond_3
    new-instance p1, Lyh/h;

    .line 138
    .line 139
    const-string p2, "Invalid LZMA properties byte"

    .line 140
    .line 141
    invoke-direct {p1, p2}, Lyh/h;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p1

    .line 145
    :cond_4
    new-instance p1, Lyh/c0;

    .line 146
    .line 147
    const-string p2, "Uncompressed size is too big"

    .line 148
    .line 149
    invoke-direct {p1, p2}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p1
.end method

.method public static r(I)I
    .locals 1

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    const v0, 0x7ffffff0

    .line 4
    .line 5
    .line 6
    if-gt p0, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x1000

    .line 9
    .line 10
    if-ge p0, v0, :cond_0

    .line 11
    .line 12
    const/16 p0, 0x1000

    .line 13
    .line 14
    :cond_0
    add-int/lit8 p0, p0, 0xf

    .line 15
    .line 16
    and-int/lit8 p0, p0, -0x10

    .line 17
    .line 18
    return p0

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "LZMA dictionary is too big for this implementation"

    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lyh/v;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lyh/v;->c:Ldi/c;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lyh/v;->b:Lyh/b;

    .line 11
    .line 12
    iget-object v0, v0, Ldi/c;->a:[B

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Lyh/b;->c([B)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lyh/v;->c:Ldi/c;

    .line 18
    .line 19
    :cond_0
    :try_start_0
    iget-object v0, p0, Lyh/v;->a:Ljava/io/InputStream;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lyh/v;->a:Ljava/io/InputStream;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    iput-object v1, p0, Lyh/v;->a:Ljava/io/InputStream;

    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public final read()I
    .locals 4

    const/4 v0, 0x1

    .line 1
    iget-object v1, p0, Lyh/v;->h:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lyh/v;->read([BII)I

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
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-ltz p2, :cond_18

    if-ltz p3, :cond_18

    add-int v0, p2, p3

    if-ltz v0, :cond_18

    .line 2
    array-length v3, v2

    if-gt v0, v3, :cond_18

    const/4 v3, 0x0

    if-nez p3, :cond_0

    return v3

    .line 3
    :cond_0
    iget-object v0, v1, Lyh/v;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_17

    .line 4
    iget-object v0, v1, Lyh/v;->j:Ljava/io/IOException;

    if-nez v0, :cond_16

    .line 5
    iget-boolean v0, v1, Lyh/v;->f:Z

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    return v4

    :cond_1
    move/from16 v5, p2

    move/from16 v6, p3

    const/4 v7, 0x0

    :goto_0
    if-lez v6, :cond_15

    .line 6
    :try_start_0
    iget-wide v8, v1, Lyh/v;->i:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-ltz v0, :cond_2

    int-to-long v12, v6

    cmp-long v0, v8, v12

    if-gez v0, :cond_2

    long-to-int v0, v8

    goto :goto_1

    :cond_2
    move v0, v6

    .line 7
    :goto_1
    iget-object v8, v1, Lyh/v;->c:Ldi/c;

    .line 8
    iget v9, v8, Ldi/c;->d:I

    .line 9
    iget v12, v8, Ldi/c;->b:I

    sub-int v13, v12, v9

    if-gt v13, v0, :cond_3

    .line 10
    iput v12, v8, Ldi/c;->f:I

    goto :goto_2

    :cond_3
    add-int/2addr v9, v0

    .line 11
    iput v9, v8, Ldi/c;->f:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v8, 0x1

    const-wide/16 v12, -0x1

    .line 12
    :try_start_1
    iget-object v0, v1, Lyh/v;->e:Lei/f;

    invoke-virtual {v0}, Lei/f;->b()V
    :try_end_1
    .catch Lyh/h; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_c

    :catch_1
    move-exception v0

    .line 13
    :try_start_2
    iget-wide v14, v1, Lyh/v;->i:J

    cmp-long v9, v14, v12

    if-nez v9, :cond_14

    iget-object v9, v1, Lyh/v;->e:Lei/f;

    .line 14
    iget-object v9, v9, Lei/b;->b:[I

    .line 15
    aget v9, v9, v3

    if-ne v9, v4, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_14

    .line 16
    iput-boolean v8, v1, Lyh/v;->f:Z

    .line 17
    iget-object v0, v1, Lyh/v;->d:Lfi/c;

    invoke-virtual {v0}, Lfi/c;->q0()V

    .line 18
    :goto_4
    iget-object v0, v1, Lyh/v;->c:Ldi/c;

    .line 19
    iget v9, v0, Ldi/c;->d:I

    .line 20
    iget v14, v0, Ldi/c;->c:I

    sub-int v15, v9, v14

    .line 21
    iget v4, v0, Ldi/c;->b:I

    if-ne v9, v4, :cond_5

    .line 22
    iput v3, v0, Ldi/c;->d:I

    .line 23
    :cond_5
    iget-object v4, v0, Ldi/c;->a:[B

    invoke-static {v4, v14, v2, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    iget v4, v0, Ldi/c;->d:I

    iput v4, v0, Ldi/c;->c:I

    add-int/2addr v5, v15

    sub-int/2addr v6, v15

    add-int/2addr v7, v15

    .line 25
    iget-wide v3, v1, Lyh/v;->i:J

    cmp-long v0, v3, v10

    if-ltz v0, :cond_6

    int-to-long v14, v15

    sub-long/2addr v3, v14

    .line 26
    iput-wide v3, v1, Lyh/v;->i:J

    cmp-long v0, v3, v10

    if-nez v0, :cond_6

    .line 27
    iput-boolean v8, v1, Lyh/v;->f:Z

    .line 28
    :cond_6
    iget-boolean v0, v1, Lyh/v;->f:Z

    if-eqz v0, :cond_13

    .line 29
    iget-object v0, v1, Lyh/v;->c:Ldi/c;

    .line 30
    iget v2, v0, Ldi/c;->g:I

    if-lez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    if-nez v2, :cond_12

    .line 31
    iget-object v2, v1, Lyh/v;->d:Lfi/c;

    .line 32
    iget v2, v2, Lfi/a;->m:I

    if-nez v2, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_f

    .line 33
    iget-wide v2, v1, Lyh/v;->i:J

    cmp-long v4, v2, v12

    if-eqz v4, :cond_e

    iget-boolean v2, v1, Lyh/v;->g:Z

    if-eqz v2, :cond_e

    .line 34
    iget v2, v0, Ldi/c;->d:I

    .line 35
    iget v3, v0, Ldi/c;->b:I

    sub-int v4, v3, v2

    if-gt v4, v8, :cond_9

    .line 36
    iput v3, v0, Ldi/c;->f:I

    goto :goto_7

    :cond_9
    add-int/2addr v2, v8

    .line 37
    iput v2, v0, Ldi/c;->f:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 38
    :goto_7
    :try_start_3
    iget-object v0, v1, Lyh/v;->e:Lei/f;

    invoke-virtual {v0}, Lei/f;->b()V
    :try_end_3
    .catch Lyh/h; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    :catch_2
    move-exception v0

    .line 39
    :try_start_4
    iget-object v2, v1, Lyh/v;->e:Lei/f;

    .line 40
    iget-object v2, v2, Lei/b;->b:[I

    const/4 v3, 0x0

    .line 41
    aget v2, v2, v3

    const/4 v4, -0x1

    if-ne v2, v4, :cond_a

    const/4 v2, 0x1

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_d

    .line 42
    iget-object v0, v1, Lyh/v;->d:Lfi/c;

    invoke-virtual {v0}, Lfi/c;->q0()V

    .line 43
    iget-object v0, v1, Lyh/v;->d:Lfi/c;

    .line 44
    iget v0, v0, Lfi/a;->m:I

    if-nez v0, :cond_b

    const/4 v3, 0x1

    :cond_b
    if-eqz v3, :cond_c

    goto :goto_a

    .line 45
    :cond_c
    :goto_9
    new-instance v0, Lyh/h;

    invoke-direct {v0}, Lyh/h;-><init>()V

    throw v0

    .line 46
    :cond_d
    throw v0

    .line 47
    :cond_e
    new-instance v0, Lyh/h;

    invoke-direct {v0}, Lyh/h;-><init>()V

    throw v0

    :cond_f
    const/4 v4, -0x1

    .line 48
    :goto_a
    iget-object v0, v1, Lyh/v;->c:Ldi/c;

    if-eqz v0, :cond_10

    .line 49
    iget-object v2, v1, Lyh/v;->b:Lyh/b;

    .line 50
    iget-object v0, v0, Ldi/c;->a:[B

    invoke-virtual {v2, v0}, Lyh/b;->c([B)V

    const/4 v0, 0x0

    .line 51
    iput-object v0, v1, Lyh/v;->c:Ldi/c;

    :cond_10
    if-nez v7, :cond_11

    goto :goto_b

    :cond_11
    move v4, v7

    :goto_b
    return v4

    .line 52
    :cond_12
    new-instance v0, Lyh/h;

    invoke-direct {v0}, Lyh/h;-><init>()V

    throw v0

    :cond_13
    const/4 v3, 0x0

    const/4 v4, -0x1

    goto/16 :goto_0

    .line 53
    :cond_14
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 54
    :goto_c
    iput-object v0, v1, Lyh/v;->j:Ljava/io/IOException;

    .line 55
    throw v0

    :cond_15
    return v7

    .line 56
    :cond_16
    throw v0

    .line 57
    :cond_17
    new-instance v0, Lyh/f0;

    const-string v2, "Stream closed"

    invoke-direct {v0, v2}, Lyh/f0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method
