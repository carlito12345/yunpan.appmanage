.class public Lce/u0;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public a:J

.field public final b:I

.field public final c:I

.field public final d:I

.field public e:[B

.field public final f:Lce/t0;


# direct methods
.method public constructor <init>(Lce/t0;I)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [B

    iput-object v0, p0, Lce/u0;->e:[B

    .line 5
    iput-object p1, p0, Lce/u0;->f:Lce/t0;

    const v0, 0xffff

    and-int v1, p2, v0

    .line 6
    iput v1, p0, Lce/u0;->c:I

    ushr-int/lit8 v1, p2, 0x10

    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lce/u0;->d:I

    .line 8
    iget v1, p1, Lce/t0;->r:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    const/16 v1, 0x80

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1, p2, v0, v1, v2}, Lce/t0;->z(IIII)V

    const v0, 0xffaf

    and-int/2addr p2, v0

    .line 10
    iput p2, p0, Lce/u0;->c:I

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lce/t0;->c()V

    .line 12
    :goto_0
    iget-object p1, p1, Lce/t0;->n:Lce/c1;

    iget-object p1, p1, Lce/c1;->f:Lce/y0;

    iget-object p1, p1, Lce/y0;->h:Lce/b1;

    iget p2, p1, Lce/b1;->A:I

    add-int/lit8 p2, p2, -0x46

    iget-object p1, p1, Lce/b1;->w:Lce/a1;

    iget p1, p1, Lce/a1;->b:I

    add-int/lit8 p1, p1, -0x46

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lce/u0;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lce/t0;

    invoke-direct {v0, p1}, Lce/t0;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lce/u0;-><init>(Lce/t0;I)V

    return-void
.end method

.method public static A(Lce/r0;)Ljava/io/IOException;
    .locals 2

    .line 1
    iget-object v0, p0, Lce/r0;->b:Ljava/lang/Exception;

    .line 2
    .line 3
    instance-of v1, v0, Lee/c;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object p0, v0

    .line 8
    check-cast p0, Lee/c;

    .line 9
    .line 10
    iget-object v0, p0, Lee/c;->a:Ljava/lang/Throwable;

    .line 11
    .line 12
    :cond_0
    instance-of v1, v0, Ljava/lang/InterruptedException;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    new-instance p0, Ljava/io/InterruptedIOException;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {p0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 26
    .line 27
    .line 28
    :cond_1
    return-object p0
.end method


# virtual methods
.method public available()I
    .locals 6

    .line 1
    iget-object v0, p0, Lce/u0;->f:Lce/t0;

    .line 2
    .line 3
    iget v1, v0, Lce/t0;->r:I

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    :try_start_0
    move-object v1, v0

    .line 12
    check-cast v1, Lce/w0;

    .line 13
    .line 14
    iget v2, v1, Lce/w0;->D:I

    .line 15
    .line 16
    const/high16 v4, 0xff0000

    .line 17
    .line 18
    and-int/2addr v2, v4

    .line 19
    const/16 v4, 0x80

    .line 20
    .line 21
    const/16 v5, 0x20

    .line 22
    .line 23
    invoke-virtual {v0, v5, v2, v4, v3}, Lce/t0;->z(IIII)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lce/t1;

    .line 27
    .line 28
    iget-object v4, v0, Lce/t0;->p:Ljava/lang/String;

    .line 29
    .line 30
    iget v5, v0, Lce/t0;->q:I

    .line 31
    .line 32
    invoke-direct {v2, v4, v5}, Lce/t1;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lce/n;

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    invoke-direct {v4, v5}, Lce/n;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, v4}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 42
    .line 43
    .line 44
    iget v1, v4, Lce/n;->M0:I

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    if-eq v1, v2, :cond_2

    .line 48
    .line 49
    const/4 v2, 0x4

    .line 50
    if-ne v1, v2, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget v0, v4, Lce/n;->N0:I

    .line 54
    .line 55
    return v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_0
    iput-boolean v3, v0, Lce/t0;->s:Z
    :try_end_0
    .catch Lce/r0; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    return v3

    .line 61
    :goto_1
    invoke-static {v0}, Lce/u0;->A(Lce/r0;)Ljava/io/IOException;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    throw v0
.end method

.method public final close()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lce/u0;->f:Lce/t0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lce/t0;->b()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lce/u0;->e:[B
    :try_end_0
    .catch Lce/r0; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lce/u0;->A(Lce/r0;)Ljava/io/IOException;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    throw v0
.end method

.method public final r(II[B)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gtz p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-wide v1, p0, Lce/u0;->a:J

    .line 6
    .line 7
    iget-object v3, p0, Lce/u0;->e:[B

    .line 8
    .line 9
    if-eqz v3, :cond_a

    .line 10
    .line 11
    iget v3, p0, Lce/u0;->d:I

    .line 12
    .line 13
    iget-object v4, p0, Lce/u0;->f:Lce/t0;

    .line 14
    .line 15
    iget v5, p0, Lce/u0;->c:I

    .line 16
    .line 17
    const/16 v6, 0x80

    .line 18
    .line 19
    invoke-virtual {v4, v5, v3, v6, v0}, Lce/t0;->z(IIII)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lce/t0;->x:Lde/d;

    .line 23
    .line 24
    sget v0, Lde/d;->b:I

    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    if-lt v0, v3, :cond_1

    .line 28
    .line 29
    sget-object v0, Lce/t0;->x:Lde/d;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    :cond_1
    new-instance v0, Lce/e0;

    .line 35
    .line 36
    invoke-direct {v0, p3, p1}, Lce/e0;-><init>([BI)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget p1, p0, Lce/u0;->b:I

    .line 40
    .line 41
    if-le p2, p1, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    move p1, p2

    .line 45
    :goto_0
    sget-object p3, Lce/t0;->x:Lde/d;

    .line 46
    .line 47
    sget p3, Lde/d;->b:I

    .line 48
    .line 49
    if-lt p3, v3, :cond_4

    .line 50
    .line 51
    sget-object p3, Lce/t0;->x:Lde/d;

    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    :cond_4
    const/16 p3, 0x10

    .line 57
    .line 58
    :try_start_0
    new-instance v5, Lce/d0;

    .line 59
    .line 60
    iget v6, v4, Lce/t0;->q:I

    .line 61
    .line 62
    iget-wide v7, p0, Lce/u0;->a:J

    .line 63
    .line 64
    invoke-direct {v5, v6, p1, v7, v8}, Lce/d0;-><init>(IIJ)V

    .line 65
    .line 66
    .line 67
    iget v6, v4, Lce/t0;->r:I

    .line 68
    .line 69
    if-ne v6, p3, :cond_5

    .line 70
    .line 71
    const/16 v6, 0x400

    .line 72
    .line 73
    iput v6, v5, Lce/d0;->K:I

    .line 74
    .line 75
    iput v6, v5, Lce/d0;->H:I

    .line 76
    .line 77
    iput v6, v5, Lce/d0;->I:I

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception p1

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    :goto_1
    invoke-virtual {v4, v5, v0}, Lce/t0;->F(Lce/q;Lce/q;)V
    :try_end_0
    .catch Lce/r0; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    iget p3, v0, Lce/e0;->I:I

    .line 86
    .line 87
    if-gtz p3, :cond_7

    .line 88
    .line 89
    iget-wide p1, p0, Lce/u0;->a:J

    .line 90
    .line 91
    sub-long/2addr p1, v1

    .line 92
    const-wide/16 v0, 0x0

    .line 93
    .line 94
    cmp-long p3, p1, v0

    .line 95
    .line 96
    if-lez p3, :cond_6

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_6
    const-wide/16 p1, -0x1

    .line 100
    .line 101
    :goto_2
    long-to-int p2, p1

    .line 102
    return p2

    .line 103
    :cond_7
    iget-wide v5, p0, Lce/u0;->a:J

    .line 104
    .line 105
    int-to-long v7, p3

    .line 106
    add-long/2addr v5, v7

    .line 107
    iput-wide v5, p0, Lce/u0;->a:J

    .line 108
    .line 109
    sub-int/2addr p2, p3

    .line 110
    iget v7, v0, Lce/e0;->G:I

    .line 111
    .line 112
    add-int/2addr v7, p3

    .line 113
    iput v7, v0, Lce/e0;->G:I

    .line 114
    .line 115
    if-lez p2, :cond_8

    .line 116
    .line 117
    if-eq p3, p1, :cond_2

    .line 118
    .line 119
    :cond_8
    sub-long/2addr v5, v1

    .line 120
    long-to-int p1, v5

    .line 121
    return p1

    .line 122
    :goto_3
    iget p2, v4, Lce/t0;->r:I

    .line 123
    .line 124
    if-ne p2, p3, :cond_9

    .line 125
    .line 126
    const p2, -0x3ffffeb5    # -2.000079f

    .line 127
    .line 128
    .line 129
    iget p3, p1, Lce/r0;->a:I

    .line 130
    .line 131
    if-ne p3, p2, :cond_9

    .line 132
    .line 133
    const/4 p1, -0x1

    .line 134
    return p1

    .line 135
    :cond_9
    invoke-static {p1}, Lce/u0;->A(Lce/r0;)Ljava/io/IOException;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    throw p1

    .line 140
    :cond_a
    new-instance p1, Ljava/io/IOException;

    .line 141
    .line 142
    const-string p2, "Bad file descriptor"

    .line 143
    .line 144
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_5

    .line 148
    :goto_4
    throw p1

    .line 149
    :goto_5
    goto :goto_4
.end method

.method public read()I
    .locals 3

    .line 1
    iget-object v0, p0, Lce/u0;->e:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lce/u0;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lce/u0;->e:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lce/u0;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 0

    .line 4
    invoke-virtual {p0, p2, p3, p1}, Lce/u0;->r(II[B)I

    move-result p1

    return p1
.end method

.method public final skip(J)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-lez v2, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lce/u0;->a:J

    .line 8
    .line 9
    add-long/2addr v0, p1

    .line 10
    iput-wide v0, p0, Lce/u0;->a:J

    .line 11
    .line 12
    return-wide p1

    .line 13
    :cond_0
    return-wide v0
.end method
