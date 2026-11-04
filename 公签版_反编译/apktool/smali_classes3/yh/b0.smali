.class public final Lyh/b0;
.super Lyh/p;
.source "SourceFile"


# instance fields
.field public final a:Lyh/b;

.field public b:Lyh/q;

.field public final c:Ljava/io/DataOutputStream;

.field public final d:[B

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Ljava/io/IOException;

.field public final i:[B


# direct methods
.method public constructor <init>(Lyh/q;Lyh/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lyh/p;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lyh/b0;->e:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lyh/b0;->f:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lyh/b0;->g:Z

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lyh/b0;->h:Ljava/io/IOException;

    .line 14
    .line 15
    new-array v0, v1, [B

    .line 16
    .line 17
    iput-object v0, p0, Lyh/b0;->i:[B

    .line 18
    .line 19
    iput-object p1, p0, Lyh/b0;->b:Lyh/q;

    .line 20
    .line 21
    new-instance v0, Ljava/io/DataOutputStream;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lyh/b0;->c:Ljava/io/DataOutputStream;

    .line 27
    .line 28
    iput-object p2, p0, Lyh/b0;->a:Lyh/b;

    .line 29
    .line 30
    const/high16 p1, 0x10000

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Lyh/b;->a(I)[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lyh/b0;->d:[B

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyh/b0;->b:Lyh/q;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lyh/b0;->g:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lyh/b0;->r()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lyh/b0;->b:Lyh/q;

    .line 13
    .line 14
    invoke-virtual {v0}, Lyh/q;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception v0

    .line 19
    iget-object v1, p0, Lyh/b0;->h:Ljava/io/IOException;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iput-object v0, p0, Lyh/b0;->h:Ljava/io/IOException;

    .line 24
    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lyh/b0;->b:Lyh/q;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lyh/b0;->h:Ljava/io/IOException;

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    return-void

    .line 33
    :cond_3
    throw v0
.end method

.method public final flush()V
    .locals 4

    .line 1
    iget-object v0, p0, Lyh/b0;->h:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lyh/b0;->g:Z

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    :try_start_0
    iget v0, p0, Lyh/b0;->e:I

    .line 10
    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lyh/b0;->c:Ljava/io/DataOutputStream;

    .line 14
    .line 15
    iget-boolean v2, p0, Lyh/b0;->f:Z

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x2

    .line 22
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v0, -0x1

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lyh/b0;->d:[B

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 34
    .line 35
    .line 36
    iput-boolean v3, p0, Lyh/b0;->f:Z

    .line 37
    .line 38
    iput v3, p0, Lyh/b0;->e:I

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lyh/b0;->b:Lyh/q;

    .line 41
    .line 42
    invoke-virtual {v0}, Lyh/q;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    iput-object v0, p0, Lyh/b0;->h:Ljava/io/IOException;

    .line 48
    .line 49
    throw v0

    .line 50
    :cond_2
    new-instance v0, Lyh/f0;

    .line 51
    .line 52
    const-string v1, "Stream finished or closed"

    .line 53
    .line 54
    invoke-direct {v0, v1}, Lyh/f0;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_3
    throw v0
.end method

.method public final r()V
    .locals 6

    .line 1
    iget-object v0, p0, Lyh/b0;->h:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lyh/b0;->g:Z

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    :try_start_0
    iget v0, p0, Lyh/b0;->e:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iget-object v2, p0, Lyh/b0;->d:[B

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    :try_start_1
    iget-object v4, p0, Lyh/b0;->c:Ljava/io/DataOutputStream;

    .line 18
    .line 19
    iget-boolean v5, p0, Lyh/b0;->f:Z

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v5, 0x2

    .line 26
    :goto_0
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v5, v0, -0x1

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v2, v1, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 35
    .line 36
    .line 37
    iput-boolean v1, p0, Lyh/b0;->f:Z

    .line 38
    .line 39
    iput v1, p0, Lyh/b0;->e:I

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lyh/b0;->b:Lyh/q;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lyh/q;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    .line 45
    .line 46
    iput-boolean v3, p0, Lyh/b0;->g:Z

    .line 47
    .line 48
    iget-object v0, p0, Lyh/b0;->a:Lyh/b;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lyh/b;->c([B)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    iput-object v0, p0, Lyh/b0;->h:Ljava/io/IOException;

    .line 56
    .line 57
    throw v0

    .line 58
    :cond_2
    new-instance v0, Lyh/f0;

    .line 59
    .line 60
    const-string v1, "Stream finished or closed"

    .line 61
    .line 62
    invoke-direct {v0, v1}, Lyh/f0;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_3
    throw v0
.end method

.method public final write(I)V
    .locals 2

    int-to-byte p1, p1

    .line 1
    iget-object v0, p0, Lyh/b0;->i:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lyh/b0;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 8

    .line 3
    iget-object v0, p0, Lyh/b0;->d:[B

    if-ltz p2, :cond_7

    if-ltz p3, :cond_7

    add-int v1, p2, p3

    if-ltz v1, :cond_7

    array-length v2, p1

    if-gt v1, v2, :cond_7

    .line 4
    iget-object v1, p0, Lyh/b0;->h:Ljava/io/IOException;

    if-nez v1, :cond_6

    .line 5
    iget-boolean v1, p0, Lyh/b0;->g:Z

    if-nez v1, :cond_5

    :goto_0
    if-lez p3, :cond_4

    .line 6
    :try_start_0
    iget v1, p0, Lyh/b0;->e:I

    const/high16 v2, 0x10000

    sub-int v1, v2, v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 7
    iget-object v5, p0, Lyh/b0;->c:Ljava/io/DataOutputStream;

    const/4 v6, 0x1

    if-ne v1, v2, :cond_1

    .line 8
    :try_start_1
    iget-boolean v2, p0, Lyh/b0;->f:Z

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v2, v1, -0x1

    .line 9
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 10
    invoke-virtual {v5, p1, p2, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 11
    iput-boolean v3, p0, Lyh/b0;->f:Z

    goto :goto_1

    .line 12
    :cond_1
    iget v7, p0, Lyh/b0;->e:I

    invoke-static {p1, p2, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget v7, p0, Lyh/b0;->e:I

    add-int/2addr v7, v1

    iput v7, p0, Lyh/b0;->e:I

    if-ne v7, v2, :cond_3

    .line 14
    iget-boolean v2, p0, Lyh/b0;->f:Z

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v2, v7, -0x1

    .line 15
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 16
    invoke-virtual {v5, v0, v3, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 17
    iput-boolean v3, p0, Lyh/b0;->f:Z

    .line 18
    iput v3, p0, Lyh/b0;->e:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    iput-object p1, p0, Lyh/b0;->h:Ljava/io/IOException;

    .line 20
    throw p1

    :cond_4
    return-void

    .line 21
    :cond_5
    new-instance p1, Lyh/f0;

    const-string p2, "Stream finished or closed"

    invoke-direct {p1, p2}, Lyh/f0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_6
    throw v1

    .line 23
    :cond_7
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
