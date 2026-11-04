.class public final Lyh/w;
.super Lyh/p;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/OutputStream;

.field public final b:Lyh/b;

.field public c:Ldi/a;

.field public final d:Lfi/f;

.field public e:Lei/h;

.field public final f:J

.field public g:J

.field public h:Z

.field public i:Ljava/io/IOException;

.field public final j:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lyh/t;)V
    .locals 11

    .line 1
    sget-object v10, Lyh/b;->a:Lyh/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lyh/p;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lyh/w;->g:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lyh/w;->h:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lyh/w;->i:Ljava/io/IOException;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    new-array v1, v0, [B

    .line 18
    .line 19
    iput-object v1, p0, Lyh/w;->j:[B

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-wide/16 v1, -0x1

    .line 25
    .line 26
    iput-wide v1, p0, Lyh/w;->f:J

    .line 27
    .line 28
    iput-object v10, p0, Lyh/w;->b:Lyh/b;

    .line 29
    .line 30
    iput-object p1, p0, Lyh/w;->a:Ljava/io/OutputStream;

    .line 31
    .line 32
    new-instance v1, Lfi/f;

    .line 33
    .line 34
    invoke-direct {v1, p1}, Lfi/f;-><init>(Ljava/io/OutputStream;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lyh/w;->d:Lfi/f;

    .line 38
    .line 39
    iget v5, p2, Lyh/t;->a:I

    .line 40
    .line 41
    iget v2, p2, Lyh/t;->b:I

    .line 42
    .line 43
    iget v3, p2, Lyh/t;->c:I

    .line 44
    .line 45
    iget v4, p2, Lyh/t;->d:I

    .line 46
    .line 47
    iget p1, p2, Lyh/t;->e:I

    .line 48
    .line 49
    iget v7, p2, Lyh/t;->f:I

    .line 50
    .line 51
    iget v8, p2, Lyh/t;->g:I

    .line 52
    .line 53
    iget v9, p2, Lyh/t;->h:I

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    if-eq p1, v0, :cond_1

    .line 57
    .line 58
    const/4 p2, 0x2

    .line 59
    if-ne p1, p2, :cond_0

    .line 60
    .line 61
    new-instance p1, Lei/j;

    .line 62
    .line 63
    move-object v0, p1

    .line 64
    invoke-direct/range {v0 .. v10}, Lei/j;-><init>(Lfi/d;IIIIIIIILyh/b;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_1
    new-instance p1, Lei/i;

    .line 75
    .line 76
    move-object v0, p1

    .line 77
    invoke-direct/range {v0 .. v10}, Lei/i;-><init>(Lfi/d;IIIIIIIILyh/b;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    iput-object p1, p0, Lyh/w;->e:Lei/h;

    .line 81
    .line 82
    iget-object p1, p1, Lei/h;->n:Ldi/a;

    .line 83
    .line 84
    iput-object p1, p0, Lyh/w;->c:Ldi/a;

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyh/w;->a:Ljava/io/OutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lyh/w;->r()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :try_start_1
    iget-object v0, p0, Lyh/w;->a:Ljava/io/OutputStream;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_1
    move-exception v0

    .line 15
    iget-object v1, p0, Lyh/w;->i:Ljava/io/IOException;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iput-object v0, p0, Lyh/w;->i:Ljava/io/IOException;

    .line 20
    .line 21
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lyh/w;->a:Ljava/io/OutputStream;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lyh/w;->i:Ljava/io/IOException;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    throw v0
.end method

.method public final flush()V
    .locals 2

    .line 1
    new-instance v0, Lyh/f0;

    .line 2
    .line 3
    const-string v1, "LZMAOutputStream does not support flushing"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lyh/f0;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final r()V
    .locals 6

    .line 1
    const-string v0, "Expected uncompressed size ("

    .line 2
    .line 3
    iget-boolean v1, p0, Lyh/w;->h:Z

    .line 4
    .line 5
    if-nez v1, :cond_7

    .line 6
    .line 7
    iget-object v1, p0, Lyh/w;->i:Ljava/io/IOException;

    .line 8
    .line 9
    if-nez v1, :cond_6

    .line 10
    .line 11
    const-wide/16 v1, -0x1

    .line 12
    .line 13
    iget-wide v3, p0, Lyh/w;->f:J

    .line 14
    .line 15
    cmp-long v5, v3, v1

    .line 16
    .line 17
    if-eqz v5, :cond_1

    .line 18
    .line 19
    :try_start_0
    iget-wide v1, p0, Lyh/w;->g:J

    .line 20
    .line 21
    cmp-long v5, v3, v1

    .line 22
    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v1, Lyh/f0;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ") doesn\'t equal the number of bytes written to the stream ("

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-wide v3, p0, Lyh/w;->g:J

    .line 42
    .line 43
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ")"

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {v1, v0}, Lyh/f0;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto :goto_4

    .line 61
    :cond_1
    :goto_0
    iget-object v0, p0, Lyh/w;->c:Ldi/a;

    .line 62
    .line 63
    iget v1, v0, Ldi/a;->j:I

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    sub-int/2addr v1, v2

    .line 67
    iput v1, v0, Ldi/a;->h:I

    .line 68
    .line 69
    iput-boolean v2, v0, Ldi/a;->i:Z

    .line 70
    .line 71
    invoke-virtual {v0}, Ldi/a;->h()V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lyh/w;->e:Lei/h;

    .line 75
    .line 76
    iget-object v1, v0, Lei/h;->n:Ldi/a;

    .line 77
    .line 78
    iget v1, v1, Ldi/a;->g:I

    .line 79
    .line 80
    const/4 v3, -0x1

    .line 81
    if-eq v1, v3, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {v0}, Lei/h;->c()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_3

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lei/h;->d()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    :goto_2
    iget-object v0, p0, Lyh/w;->d:Lfi/f;

    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    :goto_3
    const/4 v3, 0x5

    .line 102
    if-ge v1, v3, :cond_5

    .line 103
    .line 104
    invoke-virtual {v0}, Lfi/d;->t0()V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    iput-boolean v2, p0, Lyh/w;->h:Z

    .line 114
    .line 115
    iget-object v0, p0, Lyh/w;->e:Lei/h;

    .line 116
    .line 117
    iget-object v1, p0, Lyh/w;->b:Lyh/b;

    .line 118
    .line 119
    iget-object v0, v0, Lei/h;->n:Ldi/a;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ldi/a;->i(Lyh/b;)V

    .line 122
    .line 123
    .line 124
    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lyh/w;->e:Lei/h;

    .line 126
    .line 127
    iput-object v0, p0, Lyh/w;->c:Ldi/a;

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :goto_4
    iput-object v0, p0, Lyh/w;->i:Ljava/io/IOException;

    .line 131
    .line 132
    throw v0

    .line 133
    :cond_6
    throw v1

    .line 134
    :cond_7
    :goto_5
    return-void
.end method

.method public final write(I)V
    .locals 2

    int-to-byte p1, p1

    .line 1
    iget-object v0, p0, Lyh/w;->j:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lyh/w;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 7

    if-ltz p2, :cond_8

    if-ltz p3, :cond_8

    add-int v0, p2, p3

    if-ltz v0, :cond_8

    .line 3
    array-length v1, p1

    if-gt v0, v1, :cond_8

    .line 4
    iget-object v0, p0, Lyh/w;->i:Ljava/io/IOException;

    if-nez v0, :cond_7

    .line 5
    iget-boolean v0, p0, Lyh/w;->h:Z

    if-nez v0, :cond_6

    const-wide/16 v0, -0x1

    .line 6
    iget-wide v2, p0, Lyh/w;->f:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    iget-wide v0, p0, Lyh/w;->g:J

    sub-long v0, v2, v0

    int-to-long v4, p3

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lyh/f0;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Expected uncompressed input size ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bytes) was exceeded"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lyh/f0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    iget-wide v0, p0, Lyh/w;->g:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lyh/w;->g:J

    :cond_2
    :goto_1
    if-lez p3, :cond_5

    .line 9
    :try_start_0
    iget-object v0, p0, Lyh/w;->c:Ldi/a;

    invoke-virtual {v0, p2, p3, p1}, Ldi/a;->a(II[B)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 10
    iget-object v0, p0, Lyh/w;->e:Lei/h;

    .line 11
    iget-object v1, v0, Lei/h;->n:Ldi/a;

    .line 12
    iget v1, v1, Ldi/a;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v0}, Lei/h;->c()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lei/h;->d()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    iput-object p1, p0, Lyh/w;->i:Ljava/io/IOException;

    .line 16
    throw p1

    :cond_5
    return-void

    .line 17
    :cond_6
    new-instance p1, Lyh/f0;

    const-string p2, "Stream finished or closed"

    invoke-direct {p1, p2}, Lyh/f0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_7
    throw v0

    .line 19
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
