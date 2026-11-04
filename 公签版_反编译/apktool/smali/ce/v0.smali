.class public Lce/v0;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final a:Lce/t0;

.field public final b:Z

.field public final c:I

.field public final d:I

.field public final e:I

.field public f:J

.field public g:[B

.field public final h:Lce/n0;

.field public final i:Lce/o0;

.field public final j:Lce/m0;

.field public final k:Lce/p0;


# direct methods
.method public constructor <init>(Lce/t0;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    iput-object v0, p0, Lce/v0;->g:[B

    .line 8
    .line 9
    iput-object p1, p0, Lce/v0;->a:Lce/t0;

    .line 10
    .line 11
    iput p2, p0, Lce/v0;->c:I

    .line 12
    .line 13
    ushr-int/lit8 v0, p2, 0x10

    .line 14
    .line 15
    const v1, 0xffff

    .line 16
    .line 17
    .line 18
    and-int/2addr v0, v1

    .line 19
    iput v0, p0, Lce/v0;->d:I

    .line 20
    .line 21
    instance-of v0, p1, Lce/w0;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p1, Lce/t0;->p:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "\\pipe\\"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p1, Lce/t0;->p:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v1, 0x5

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p1, Lce/t0;->p:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v0, Lce/v1;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "\\pipe"

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p1, Lce/t0;->p:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v0, v1}, Lce/v1;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lce/s1;

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    invoke-direct {v1, v2}, Lce/s1;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    iget v0, p0, Lce/v0;->d:I

    .line 75
    .line 76
    or-int/lit8 v0, v0, 0x2

    .line 77
    .line 78
    const/16 v1, 0x80

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-virtual {p1, p2, v0, v1, v2}, Lce/t0;->z(IIII)V

    .line 82
    .line 83
    .line 84
    iget p2, p0, Lce/v0;->c:I

    .line 85
    .line 86
    and-int/lit8 p2, p2, -0x51

    .line 87
    .line 88
    iput p2, p0, Lce/v0;->c:I

    .line 89
    .line 90
    iget-object p1, p1, Lce/t0;->n:Lce/c1;

    .line 91
    .line 92
    iget-object p1, p1, Lce/c1;->f:Lce/y0;

    .line 93
    .line 94
    iget-object p1, p1, Lce/y0;->h:Lce/b1;

    .line 95
    .line 96
    iget p2, p1, Lce/b1;->z:I

    .line 97
    .line 98
    add-int/lit8 p2, p2, -0x46

    .line 99
    .line 100
    iput p2, p0, Lce/v0;->e:I

    .line 101
    .line 102
    const/16 p2, 0x10

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lce/b1;->q(I)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    iput-boolean p1, p0, Lce/v0;->b:Z

    .line 109
    .line 110
    if-eqz p1, :cond_1

    .line 111
    .line 112
    new-instance p1, Lce/n0;

    .line 113
    .line 114
    invoke-direct {p1}, Lce/n0;-><init>()V

    .line 115
    .line 116
    .line 117
    iput-object p1, p0, Lce/v0;->h:Lce/n0;

    .line 118
    .line 119
    new-instance p1, Lce/o0;

    .line 120
    .line 121
    invoke-direct {p1}, Lce/o0;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object p1, p0, Lce/v0;->i:Lce/o0;

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    new-instance p1, Lce/m0;

    .line 128
    .line 129
    invoke-direct {p1}, Lce/m0;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object p1, p0, Lce/v0;->j:Lce/m0;

    .line 133
    .line 134
    new-instance p1, Lce/p0;

    .line 135
    .line 136
    invoke-direct {p1}, Lce/p0;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object p1, p0, Lce/v0;->k:Lce/p0;

    .line 140
    .line 141
    :goto_0
    return-void
.end method


# virtual methods
.method public final A(III[B)V
    .locals 10

    .line 1
    if-gtz p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lce/v0;->g:[B

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    invoke-virtual {p0}, Lce/v0;->r()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lce/t0;->x:Lde/d;

    .line 12
    .line 13
    sget v0, Lde/d;->b:I

    .line 14
    .line 15
    iget-object v1, p0, Lce/v0;->a:Lce/t0;

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    if-lt v0, v2, :cond_1

    .line 19
    .line 20
    sget-object v0, Lce/t0;->x:Lde/d;

    .line 21
    .line 22
    iget v2, v1, Lce/t0;->q:I

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    :cond_1
    iget v0, p0, Lce/v0;->e:I

    .line 28
    .line 29
    if-le p2, v0, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v0, p2

    .line 33
    :goto_0
    iget-boolean v2, p0, Lce/v0;->b:Z

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    iget v2, v1, Lce/t0;->q:I

    .line 39
    .line 40
    iget-wide v4, p0, Lce/v0;->f:J

    .line 41
    .line 42
    sub-int v6, p2, v0

    .line 43
    .line 44
    iget-object v7, p0, Lce/v0;->h:Lce/n0;

    .line 45
    .line 46
    iput v2, v7, Lce/n0;->F:I

    .line 47
    .line 48
    iput-wide v4, v7, Lce/n0;->M:J

    .line 49
    .line 50
    iput v6, v7, Lce/n0;->G:I

    .line 51
    .line 52
    iput-object p4, v7, Lce/n0;->L:[B

    .line 53
    .line 54
    iput p1, v7, Lce/n0;->K:I

    .line 55
    .line 56
    iput v0, v7, Lce/n0;->H:I

    .line 57
    .line 58
    iput-object v3, v7, Lce/q;->y:Lce/r;

    .line 59
    .line 60
    and-int/lit8 v6, p3, 0x1

    .line 61
    .line 62
    if-eqz v6, :cond_3

    .line 63
    .line 64
    iput v2, v7, Lce/n0;->F:I

    .line 65
    .line 66
    iput-wide v4, v7, Lce/n0;->M:J

    .line 67
    .line 68
    iput p2, v7, Lce/n0;->G:I

    .line 69
    .line 70
    iput-object p4, v7, Lce/n0;->L:[B

    .line 71
    .line 72
    iput p1, v7, Lce/n0;->K:I

    .line 73
    .line 74
    iput v0, v7, Lce/n0;->H:I

    .line 75
    .line 76
    iput-object v3, v7, Lce/q;->y:Lce/r;

    .line 77
    .line 78
    const/16 v0, 0x8

    .line 79
    .line 80
    iput v0, v7, Lce/n0;->O:I

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const/4 v0, 0x0

    .line 84
    iput v0, v7, Lce/n0;->O:I

    .line 85
    .line 86
    :goto_1
    iget-object v0, p0, Lce/v0;->i:Lce/o0;

    .line 87
    .line 88
    invoke-virtual {v1, v7, v0}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 89
    .line 90
    .line 91
    iget-wide v2, p0, Lce/v0;->f:J

    .line 92
    .line 93
    iget-wide v4, v0, Lce/o0;->F:J

    .line 94
    .line 95
    add-long/2addr v2, v4

    .line 96
    iput-wide v2, p0, Lce/v0;->f:J

    .line 97
    .line 98
    int-to-long v2, p2

    .line 99
    sub-long/2addr v2, v4

    .line 100
    long-to-int p2, v2

    .line 101
    int-to-long v2, p1

    .line 102
    add-long/2addr v2, v4

    .line 103
    long-to-int p1, v2

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    iget v2, v1, Lce/t0;->q:I

    .line 106
    .line 107
    iget-wide v4, p0, Lce/v0;->f:J

    .line 108
    .line 109
    sub-int v6, p2, v0

    .line 110
    .line 111
    iget-object v7, p0, Lce/v0;->j:Lce/m0;

    .line 112
    .line 113
    iput v2, v7, Lce/m0;->C:I

    .line 114
    .line 115
    const-wide v8, 0xffffffffL

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    and-long/2addr v8, v4

    .line 121
    long-to-int v2, v8

    .line 122
    iput v2, v7, Lce/m0;->E:I

    .line 123
    .line 124
    iput v6, v7, Lce/m0;->F:I

    .line 125
    .line 126
    iput-object p4, v7, Lce/m0;->H:[B

    .line 127
    .line 128
    iput p1, v7, Lce/m0;->G:I

    .line 129
    .line 130
    iput v0, v7, Lce/m0;->D:I

    .line 131
    .line 132
    iput-object v3, v7, Lce/q;->y:Lce/r;

    .line 133
    .line 134
    iget-object v0, p0, Lce/v0;->k:Lce/p0;

    .line 135
    .line 136
    iget-wide v2, v0, Lce/p0;->C:J

    .line 137
    .line 138
    add-long/2addr v4, v2

    .line 139
    iput-wide v4, p0, Lce/v0;->f:J

    .line 140
    .line 141
    int-to-long v4, p2

    .line 142
    sub-long/2addr v4, v2

    .line 143
    long-to-int p2, v4

    .line 144
    int-to-long v4, p1

    .line 145
    add-long/2addr v4, v2

    .line 146
    long-to-int p1, v4

    .line 147
    invoke-virtual {v1, v7, v0}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 148
    .line 149
    .line 150
    :goto_2
    if-gtz p2, :cond_1

    .line 151
    .line 152
    return-void

    .line 153
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 154
    .line 155
    const-string p2, "Bad file descriptor"

    .line 156
    .line 157
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :goto_3
    throw p1

    .line 162
    :goto_4
    goto :goto_3
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lce/v0;->a:Lce/t0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lce/t0;->b()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lce/v0;->g:[B

    .line 8
    .line 9
    return-void
.end method

.method public final r()V
    .locals 5

    .line 1
    iget-object v0, p0, Lce/v0;->a:Lce/t0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lce/t0;->v()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lce/v0;->d:I

    .line 10
    .line 11
    or-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iget v3, p0, Lce/v0;->c:I

    .line 15
    .line 16
    const/16 v4, 0x80

    .line 17
    .line 18
    invoke-virtual {v0, v3, v1, v4, v2}, Lce/t0;->z(IIII)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lce/v0;->g:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lce/v0;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lce/v0;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    .line 4
    iget-object v0, p0, Lce/v0;->a:Lce/t0;

    invoke-virtual {v0}, Lce/t0;->v()Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lce/w0;

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lce/v1;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\pipe"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lce/t0;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lce/v1;-><init>(Ljava/lang/String;)V

    new-instance v2, Lce/s1;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lce/s1;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lce/t0;->F(Lce/q;Lce/q;)V

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p2, p3, v0, p1}, Lce/v0;->A(III[B)V

    return-void
.end method
