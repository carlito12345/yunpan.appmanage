.class public final Ls1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/l;


# instance fields
.field public b:I

.field public c:F

.field public d:F

.field public e:Ls1/i;

.field public f:Ls1/i;

.field public g:Ls1/i;

.field public h:Ls1/i;

.field public i:Z

.field public j:Ls1/q;

.field public k:Ljava/nio/ByteBuffer;

.field public l:Ljava/nio/ByteBuffer;

.field public m:J

.field public n:J

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Ls1/r;->c:F

    .line 7
    .line 8
    iput v0, p0, Ls1/r;->d:F

    .line 9
    .line 10
    sget-object v0, Ls1/i;->e:Ls1/i;

    .line 11
    .line 12
    iput-object v0, p0, Ls1/r;->e:Ls1/i;

    .line 13
    .line 14
    iput-object v0, p0, Ls1/r;->f:Ls1/i;

    .line 15
    .line 16
    iput-object v0, p0, Ls1/r;->g:Ls1/i;

    .line 17
    .line 18
    iput-object v0, p0, Ls1/r;->h:Ls1/i;

    .line 19
    .line 20
    sget-object v0, Ls1/l;->a:Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    iput-object v0, p0, Ls1/r;->k:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    iput-object v0, p0, Ls1/r;->l:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    const/4 v0, -0x1

    .line 27
    iput v0, p0, Ls1/r;->b:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .locals 8

    .line 1
    iget-object v0, p0, Ls1/r;->j:Ls1/q;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v1, v0, Ls1/q;->k:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ltz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-static {v1}, La9/o;->t(Z)V

    .line 15
    .line 16
    .line 17
    iget v1, v0, Ls1/q;->k:I

    .line 18
    .line 19
    iget v4, v0, Ls1/q;->b:I

    .line 20
    .line 21
    mul-int v1, v1, v4

    .line 22
    .line 23
    iget-object v5, v0, Ls1/q;->i:Ls1/o;

    .line 24
    .line 25
    invoke-interface {v5}, Ls1/o;->n()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    mul-int v6, v6, v1

    .line 30
    .line 31
    if-lez v6, :cond_3

    .line 32
    .line 33
    iget-object v1, p0, Ls1/r;->k:Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ge v1, v6, :cond_1

    .line 40
    .line 41
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p0, Ls1/r;->k:Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget-object v1, p0, Ls1/r;->k:Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 59
    .line 60
    .line 61
    :goto_1
    iget-object v1, p0, Ls1/r;->k:Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    iget v7, v0, Ls1/q;->k:I

    .line 64
    .line 65
    if-ltz v7, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const/4 v3, 0x0

    .line 69
    :goto_2
    invoke-static {v3}, La9/o;->t(Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-interface {v5}, Ls1/o;->n()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    mul-int v7, v7, v4

    .line 81
    .line 82
    div-int/2addr v3, v7

    .line 83
    iget v7, v0, Ls1/q;->k:I

    .line 84
    .line 85
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-interface {v5, v1, v3}, Ls1/o;->p(Ljava/nio/ByteBuffer;I)V

    .line 90
    .line 91
    .line 92
    iget v1, v0, Ls1/q;->k:I

    .line 93
    .line 94
    sub-int/2addr v1, v3

    .line 95
    iput v1, v0, Ls1/q;->k:I

    .line 96
    .line 97
    invoke-interface {v5}, Ls1/o;->g()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    mul-int v3, v3, v4

    .line 102
    .line 103
    invoke-interface {v5}, Ls1/o;->g()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    iget v0, v0, Ls1/q;->k:I

    .line 108
    .line 109
    mul-int v0, v0, v4

    .line 110
    .line 111
    invoke-static {v1, v3, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Ls1/r;->k:Ljava/nio/ByteBuffer;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 117
    .line 118
    .line 119
    iget-wide v0, p0, Ls1/r;->n:J

    .line 120
    .line 121
    int-to-long v2, v6

    .line 122
    add-long/2addr v0, v2

    .line 123
    iput-wide v0, p0, Ls1/r;->n:J

    .line 124
    .line 125
    iget-object v0, p0, Ls1/r;->k:Ljava/nio/ByteBuffer;

    .line 126
    .line 127
    iput-object v0, p0, Ls1/r;->l:Ljava/nio/ByteBuffer;

    .line 128
    .line 129
    :cond_3
    iget-object v0, p0, Ls1/r;->l:Ljava/nio/ByteBuffer;

    .line 130
    .line 131
    sget-object v1, Ls1/l;->a:Ljava/nio/ByteBuffer;

    .line 132
    .line 133
    iput-object v1, p0, Ls1/r;->l:Ljava/nio/ByteBuffer;

    .line 134
    .line 135
    return-object v0
.end method

.method public final b()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Ls1/r;->o:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Ls1/r;->j:Ls1/q;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v3, v0, Ls1/q;->k:I

    .line 12
    .line 13
    if-ltz v3, :cond_0

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    :goto_0
    invoke-static {v3}, La9/o;->t(Z)V

    .line 19
    .line 20
    .line 21
    iget v3, v0, Ls1/q;->k:I

    .line 22
    .line 23
    iget v4, v0, Ls1/q;->b:I

    .line 24
    .line 25
    mul-int v3, v3, v4

    .line 26
    .line 27
    iget-object v0, v0, Ls1/q;->i:Ls1/o;

    .line 28
    .line 29
    invoke-interface {v0}, Ls1/o;->n()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    mul-int v0, v0, v3

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    :cond_1
    const/4 v1, 0x1

    .line 38
    :cond_2
    return v1
.end method

.method public final c(Ls1/i;)Ls1/i;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p1, Ls1/i;->c:I

    .line 3
    .line 4
    if-eq v1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ls1/k;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ls1/k;-><init>(Ls1/i;)V

    .line 13
    .line 14
    .line 15
    throw v0

    .line 16
    :cond_1
    :goto_0
    iget v0, p0, Ls1/r;->b:I

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    if-ne v0, v2, :cond_2

    .line 20
    .line 21
    iget v0, p1, Ls1/i;->a:I

    .line 22
    .line 23
    :cond_2
    iput-object p1, p0, Ls1/r;->e:Ls1/i;

    .line 24
    .line 25
    new-instance v2, Ls1/i;

    .line 26
    .line 27
    iget p1, p1, Ls1/i;->b:I

    .line 28
    .line 29
    invoke-direct {v2, v0, p1, v1}, Ls1/i;-><init>(III)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Ls1/r;->f:Ls1/i;

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Ls1/r;->i:Z

    .line 36
    .line 37
    return-object v2
.end method

.method public final d(Ls1/j;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ls1/r;->g()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    iget-object p1, p0, Ls1/r;->e:Ls1/i;

    .line 9
    .line 10
    iput-object p1, p0, Ls1/r;->g:Ls1/i;

    .line 11
    .line 12
    iget-object v1, p0, Ls1/r;->f:Ls1/i;

    .line 13
    .line 14
    iput-object v1, p0, Ls1/r;->h:Ls1/i;

    .line 15
    .line 16
    iget-boolean v2, p0, Ls1/r;->i:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    new-instance v2, Ls1/q;

    .line 21
    .line 22
    iget v4, p1, Ls1/i;->a:I

    .line 23
    .line 24
    iget v6, p0, Ls1/r;->c:F

    .line 25
    .line 26
    iget v7, p0, Ls1/r;->d:F

    .line 27
    .line 28
    iget v8, v1, Ls1/i;->a:I

    .line 29
    .line 30
    iget v1, p1, Ls1/i;->c:I

    .line 31
    .line 32
    const/4 v3, 0x4

    .line 33
    if-ne v1, v3, :cond_0

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    const/4 v9, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v9, 0x0

    .line 39
    :goto_0
    iget v5, p1, Ls1/i;->b:I

    .line 40
    .line 41
    move-object v3, v2

    .line 42
    invoke-direct/range {v3 .. v9}, Ls1/q;-><init>(IIFFIZ)V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Ls1/r;->j:Ls1/q;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object p1, p0, Ls1/r;->j:Ls1/q;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iput v0, p1, Ls1/q;->j:I

    .line 53
    .line 54
    iput v0, p1, Ls1/q;->k:I

    .line 55
    .line 56
    iput v0, p1, Ls1/q;->l:I

    .line 57
    .line 58
    iput v0, p1, Ls1/q;->m:I

    .line 59
    .line 60
    iput v0, p1, Ls1/q;->n:I

    .line 61
    .line 62
    iput v0, p1, Ls1/q;->o:I

    .line 63
    .line 64
    iput v0, p1, Ls1/q;->p:I

    .line 65
    .line 66
    const-wide/16 v1, 0x0

    .line 67
    .line 68
    iput-wide v1, p1, Ls1/q;->q:D

    .line 69
    .line 70
    iget-object p1, p1, Ls1/q;->i:Ls1/o;

    .line 71
    .line 72
    invoke-interface {p1}, Ls1/o;->flush()V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_1
    sget-object p1, Ls1/l;->a:Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    iput-object p1, p0, Ls1/r;->l:Ljava/nio/ByteBuffer;

    .line 78
    .line 79
    const-wide/16 v1, 0x0

    .line 80
    .line 81
    iput-wide v1, p0, Ls1/r;->m:J

    .line 82
    .line 83
    iput-wide v1, p0, Ls1/r;->n:J

    .line 84
    .line 85
    iput-boolean v0, p0, Ls1/r;->o:Z

    .line 86
    .line 87
    return-void
.end method

.method public final e(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Ls1/r;->j:Ls1/q;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-wide v2, p0, Ls1/r;->m:J

    .line 18
    .line 19
    int-to-long v4, v1

    .line 20
    add-long/2addr v2, v4

    .line 21
    iput-wide v2, p0, Ls1/r;->m:J

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, v0, Ls1/q;->i:Ls1/o;

    .line 28
    .line 29
    invoke-interface {v2}, Ls1/o;->n()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget v4, v0, Ls1/q;->b:I

    .line 34
    .line 35
    mul-int v3, v3, v4

    .line 36
    .line 37
    div-int v3, v1, v3

    .line 38
    .line 39
    invoke-interface {v2, v3}, Ls1/o;->o(I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v2, p1, v1}, Ls1/o;->l(Ljava/nio/ByteBuffer;I)V

    .line 43
    .line 44
    .line 45
    iget p1, v0, Ls1/q;->j:I

    .line 46
    .line 47
    add-int/2addr p1, v3

    .line 48
    iput p1, v0, Ls1/q;->j:I

    .line 49
    .line 50
    invoke-virtual {v0}, Ls1/q;->b()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final f()V
    .locals 11

    .line 1
    iget-object v0, p0, Ls1/r;->j:Ls1/q;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v1, v0, Ls1/q;->j:I

    .line 6
    .line 7
    iget v2, v0, Ls1/q;->c:F

    .line 8
    .line 9
    iget v3, v0, Ls1/q;->d:F

    .line 10
    .line 11
    div-float/2addr v2, v3

    .line 12
    float-to-double v4, v2

    .line 13
    iget v2, v0, Ls1/q;->e:F

    .line 14
    .line 15
    mul-float v2, v2, v3

    .line 16
    .line 17
    float-to-double v2, v2

    .line 18
    iget v6, v0, Ls1/q;->o:I

    .line 19
    .line 20
    sub-int v7, v1, v6

    .line 21
    .line 22
    iget v8, v0, Ls1/q;->k:I

    .line 23
    .line 24
    int-to-double v9, v7

    .line 25
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    .line 26
    .line 27
    .line 28
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 29
    .line 30
    .line 31
    div-double/2addr v9, v4

    .line 32
    int-to-double v4, v6

    .line 33
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 34
    .line 35
    .line 36
    add-double/2addr v9, v4

    .line 37
    iget-wide v4, v0, Ls1/q;->q:D

    .line 38
    .line 39
    add-double/2addr v9, v4

    .line 40
    iget v4, v0, Ls1/q;->l:I

    .line 41
    .line 42
    int-to-double v4, v4

    .line 43
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 44
    .line 45
    .line 46
    add-double/2addr v9, v4

    .line 47
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 48
    .line 49
    .line 50
    div-double/2addr v9, v2

    .line 51
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 52
    .line 53
    add-double/2addr v9, v2

    .line 54
    double-to-int v2, v9

    .line 55
    add-int/2addr v8, v2

    .line 56
    const-wide/16 v2, 0x0

    .line 57
    .line 58
    iput-wide v2, v0, Ls1/q;->q:D

    .line 59
    .line 60
    iget v2, v0, Ls1/q;->h:I

    .line 61
    .line 62
    mul-int/lit8 v2, v2, 0x2

    .line 63
    .line 64
    add-int v3, v2, v1

    .line 65
    .line 66
    iget-object v4, v0, Ls1/q;->i:Ls1/o;

    .line 67
    .line 68
    invoke-interface {v4, v3}, Ls1/o;->o(I)V

    .line 69
    .line 70
    .line 71
    iget v3, v0, Ls1/q;->b:I

    .line 72
    .line 73
    mul-int v1, v1, v3

    .line 74
    .line 75
    invoke-interface {v4, v1, v2}, Ls1/o;->b(II)V

    .line 76
    .line 77
    .line 78
    iget v1, v0, Ls1/q;->j:I

    .line 79
    .line 80
    add-int/2addr v2, v1

    .line 81
    iput v2, v0, Ls1/q;->j:I

    .line 82
    .line 83
    invoke-virtual {v0}, Ls1/q;->b()V

    .line 84
    .line 85
    .line 86
    iget v1, v0, Ls1/q;->k:I

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    if-le v1, v8, :cond_0

    .line 90
    .line 91
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    iput v1, v0, Ls1/q;->k:I

    .line 96
    .line 97
    :cond_0
    iput v2, v0, Ls1/q;->j:I

    .line 98
    .line 99
    iput v2, v0, Ls1/q;->o:I

    .line 100
    .line 101
    iput v2, v0, Ls1/q;->l:I

    .line 102
    .line 103
    :cond_1
    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Ls1/r;->o:Z

    .line 105
    .line 106
    return-void
.end method

.method public final g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/r;->f:Ls1/i;

    .line 2
    .line 3
    iget v0, v0, Ls1/i;->a:I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    iget v0, p0, Ls1/r;->c:F

    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    sub-float/2addr v0, v1

    .line 13
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const v2, 0x38d1b717    # 1.0E-4f

    .line 18
    .line 19
    .line 20
    cmpg-float v0, v0, v2

    .line 21
    .line 22
    if-gez v0, :cond_0

    .line 23
    .line 24
    iget v0, p0, Ls1/r;->d:F

    .line 25
    .line 26
    sub-float/2addr v0, v1

    .line 27
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    cmpg-float v0, v0, v2

    .line 32
    .line 33
    if-gez v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Ls1/r;->f:Ls1/i;

    .line 36
    .line 37
    iget v0, v0, Ls1/i;->a:I

    .line 38
    .line 39
    iget-object v1, p0, Ls1/r;->e:Ls1/i;

    .line 40
    .line 41
    iget v1, v1, Ls1/i;->a:I

    .line 42
    .line 43
    if-ne v0, v1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 49
    :goto_1
    return v0
.end method

.method public final h(J)J
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Ls1/r;->n:J

    .line 4
    .line 5
    const-wide/16 v3, 0x400

    .line 6
    .line 7
    cmp-long v5, v1, v3

    .line 8
    .line 9
    if-ltz v5, :cond_1

    .line 10
    .line 11
    iget-wide v1, v0, Ls1/r;->m:J

    .line 12
    .line 13
    iget-object v3, v0, Ls1/r;->j:Ls1/q;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget v4, v3, Ls1/q;->j:I

    .line 19
    .line 20
    iget v5, v3, Ls1/q;->b:I

    .line 21
    .line 22
    mul-int v4, v4, v5

    .line 23
    .line 24
    iget-object v3, v3, Ls1/q;->i:Ls1/o;

    .line 25
    .line 26
    invoke-interface {v3}, Ls1/o;->n()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    mul-int v3, v3, v4

    .line 31
    .line 32
    int-to-long v3, v3

    .line 33
    sub-long v9, v1, v3

    .line 34
    .line 35
    iget-object v1, v0, Ls1/r;->h:Ls1/i;

    .line 36
    .line 37
    iget v1, v1, Ls1/i;->a:I

    .line 38
    .line 39
    iget-object v2, v0, Ls1/r;->g:Ls1/i;

    .line 40
    .line 41
    iget v2, v2, Ls1/i;->a:I

    .line 42
    .line 43
    if-ne v1, v2, :cond_0

    .line 44
    .line 45
    iget-wide v7, v0, Ls1/r;->n:J

    .line 46
    .line 47
    sget-object v11, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 48
    .line 49
    move-wide/from16 v5, p1

    .line 50
    .line 51
    invoke-static/range {v5 .. v11}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-wide v3, v0, Ls1/r;->n:J

    .line 57
    .line 58
    int-to-long v5, v2

    .line 59
    mul-long v13, v3, v5

    .line 60
    .line 61
    int-to-long v1, v1

    .line 62
    mul-long v15, v9, v1

    .line 63
    .line 64
    sget-object v17, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 65
    .line 66
    move-wide/from16 v11, p1

    .line 67
    .line 68
    invoke-static/range {v11 .. v17}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move-wide/from16 v1, p1

    .line 74
    .line 75
    long-to-double v1, v1

    .line 76
    iget v3, v0, Ls1/r;->c:F

    .line 77
    .line 78
    float-to-double v3, v3

    .line 79
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 80
    .line 81
    .line 82
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 83
    .line 84
    .line 85
    div-double/2addr v1, v3

    .line 86
    double-to-long v1, v1

    .line 87
    :goto_0
    return-wide v1
.end method

.method public final reset()V
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    iput v0, p0, Ls1/r;->c:F

    .line 4
    .line 5
    iput v0, p0, Ls1/r;->d:F

    .line 6
    .line 7
    sget-object v0, Ls1/i;->e:Ls1/i;

    .line 8
    .line 9
    iput-object v0, p0, Ls1/r;->e:Ls1/i;

    .line 10
    .line 11
    iput-object v0, p0, Ls1/r;->f:Ls1/i;

    .line 12
    .line 13
    iput-object v0, p0, Ls1/r;->g:Ls1/i;

    .line 14
    .line 15
    iput-object v0, p0, Ls1/r;->h:Ls1/i;

    .line 16
    .line 17
    sget-object v0, Ls1/l;->a:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    iput-object v0, p0, Ls1/r;->k:Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    iput-object v0, p0, Ls1/r;->l:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    iput v0, p0, Ls1/r;->b:I

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Ls1/r;->i:Z

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Ls1/r;->j:Ls1/q;

    .line 31
    .line 32
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    iput-wide v1, p0, Ls1/r;->m:J

    .line 35
    .line 36
    iput-wide v1, p0, Ls1/r;->n:J

    .line 37
    .line 38
    iput-boolean v0, p0, Ls1/r;->o:Z

    .line 39
    .line 40
    return-void
.end method
