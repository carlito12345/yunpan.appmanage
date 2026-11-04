.class public final Ls1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/o;


# instance fields
.field public final a:[F

.field public b:[F

.field public c:[F

.field public d:[F

.field public e:D

.field public f:D

.field public g:D

.field public final synthetic h:Ls1/q;


# direct methods
.method public constructor <init>(Ls1/q;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ls1/n;->h:Ls1/q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Ls1/q;->h:I

    .line 7
    .line 8
    new-array v1, v0, [F

    .line 9
    .line 10
    iput-object v1, p0, Ls1/n;->a:[F

    .line 11
    .line 12
    iget p1, p1, Ls1/q;->b:I

    .line 13
    .line 14
    mul-int v1, v0, p1

    .line 15
    .line 16
    new-array v1, v1, [F

    .line 17
    .line 18
    iput-object v1, p0, Ls1/n;->b:[F

    .line 19
    .line 20
    mul-int v1, v0, p1

    .line 21
    .line 22
    new-array v1, v1, [F

    .line 23
    .line 24
    iput-object v1, p0, Ls1/n;->c:[F

    .line 25
    .line 26
    mul-int v0, v0, p1

    .line 27
    .line 28
    new-array p1, v0, [F

    .line 29
    .line 30
    iput-object p1, p0, Ls1/n;->d:[F

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(IJJ)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, v0, Ls1/n;->h:Ls1/q;

    .line 4
    .line 5
    iget v3, v2, Ls1/q;->b:I

    .line 6
    .line 7
    if-ge v1, v3, :cond_0

    .line 8
    .line 9
    iget-object v4, v0, Ls1/n;->c:[F

    .line 10
    .line 11
    iget v5, v2, Ls1/q;->k:I

    .line 12
    .line 13
    mul-int v5, v5, v3

    .line 14
    .line 15
    add-int/2addr v5, v1

    .line 16
    iget-object v6, v0, Ls1/n;->d:[F

    .line 17
    .line 18
    mul-int v7, p1, v3

    .line 19
    .line 20
    add-int/2addr v7, v1

    .line 21
    aget v8, v6, v7

    .line 22
    .line 23
    add-int/2addr v7, v3

    .line 24
    aget v3, v6, v7

    .line 25
    .line 26
    iget v6, v2, Ls1/q;->n:I

    .line 27
    .line 28
    int-to-long v6, v6

    .line 29
    mul-long v6, v6, p2

    .line 30
    .line 31
    iget v2, v2, Ls1/q;->m:I

    .line 32
    .line 33
    int-to-long v9, v2

    .line 34
    mul-long v9, v9, p4

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    int-to-long v11, v2

    .line 39
    mul-long v11, v11, p4

    .line 40
    .line 41
    sub-long v6, v11, v6

    .line 42
    .line 43
    sub-long/2addr v11, v9

    .line 44
    long-to-float v2, v6

    .line 45
    mul-float v2, v2, v8

    .line 46
    .line 47
    sub-long v6, v11, v6

    .line 48
    .line 49
    long-to-float v6, v6

    .line 50
    mul-float v6, v6, v3

    .line 51
    .line 52
    add-float/2addr v6, v2

    .line 53
    long-to-float v2, v11

    .line 54
    div-float/2addr v6, v2

    .line 55
    aput v6, v4, v5

    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method public final b(II)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Ls1/n;->h:Ls1/q;

    .line 3
    .line 4
    iget v1, v1, Ls1/q;->b:I

    .line 5
    .line 6
    mul-int v1, v1, p2

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Ls1/n;->b:[F

    .line 11
    .line 12
    add-int v2, p1, v0

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput v3, v1, v2

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public final c(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Ls1/n;->h:Ls1/q;

    .line 2
    .line 3
    iget v1, v0, Ls1/q;->h:I

    .line 4
    .line 5
    div-int/2addr v1, p2

    .line 6
    iget v0, v0, Ls1/q;->b:I

    .line 7
    .line 8
    mul-int p2, p2, v0

    .line 9
    .line 10
    mul-int p1, p1, v0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_1

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_1
    if-ge v5, p2, :cond_0

    .line 20
    .line 21
    iget-object v6, p0, Ls1/n;->b:[F

    .line 22
    .line 23
    invoke-static {v2, p2, p1, v5}, Lorg/bouncycastle/jcajce/provider/digest/a;->b(IIII)I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    aget v6, v6, v7

    .line 28
    .line 29
    float-to-double v6, v6

    .line 30
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 31
    .line 32
    .line 33
    add-double/2addr v3, v6

    .line 34
    add-int/lit8 v5, v5, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    int-to-double v5, p2

    .line 38
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 39
    .line 40
    .line 41
    div-double/2addr v3, v5

    .line 42
    iget-object v5, p0, Ls1/n;->a:[F

    .line 43
    .line 44
    double-to-float v3, v3

    .line 45
    aput v3, v5, v2

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method

.method public final d(III)I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/n;->b:[F

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Ls1/n;->s([FIII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-wide v0, p0, Ls1/n;->e:D

    .line 2
    .line 3
    iput-wide v0, p0, Ls1/n;->g:D

    .line 4
    .line 5
    return-void
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/n;->b:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public final flush()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Ls1/n;->g:D

    .line 4
    .line 5
    iput-wide v0, p0, Ls1/n;->e:D

    .line 6
    .line 7
    iput-wide v0, p0, Ls1/n;->f:D

    .line 8
    .line 9
    return-void
.end method

.method public final g()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/n;->c:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/n;->c:[F

    .line 2
    .line 3
    iget-object v1, p0, Ls1/n;->h:Ls1/q;

    .line 4
    .line 5
    iget v1, v1, Ls1/q;->k:I

    .line 6
    .line 7
    invoke-virtual {p0, v1, p1, v0}, Ls1/n;->r(II[F)[F

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Ls1/n;->c:[F

    .line 12
    .line 13
    return-void
.end method

.method public final i()Z
    .locals 10

    .line 1
    iget-wide v0, p0, Ls1/n;->e:D

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    cmpl-double v5, v0, v2

    .line 7
    .line 8
    if-eqz v5, :cond_3

    .line 9
    .line 10
    iget-object v2, p0, Ls1/n;->h:Ls1/q;

    .line 11
    .line 12
    iget v2, v2, Ls1/q;->p:I

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-wide v2, p0, Ls1/n;->f:D

    .line 18
    .line 19
    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    .line 20
    .line 21
    mul-double v7, v0, v5

    .line 22
    .line 23
    cmpl-double v9, v2, v7

    .line 24
    .line 25
    if-lez v9, :cond_1

    .line 26
    .line 27
    return v4

    .line 28
    :cond_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 29
    .line 30
    mul-double v0, v0, v2

    .line 31
    .line 32
    iget-wide v2, p0, Ls1/n;->g:D

    .line 33
    .line 34
    mul-double v2, v2, v5

    .line 35
    .line 36
    cmpg-double v5, v0, v2

    .line 37
    .line 38
    if-gtz v5, :cond_2

    .line 39
    .line 40
    return v4

    .line 41
    :cond_2
    const/4 v0, 0x1

    .line 42
    return v0

    .line 43
    :cond_3
    :goto_0
    return v4
.end method

.method public final j()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/n;->d:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(IIIII)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    iget-object v3, v0, Ls1/n;->c:[F

    .line 6
    .line 7
    iget-object v4, v0, Ls1/n;->b:[F

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    :goto_0
    if-ge v6, v2, :cond_1

    .line 12
    .line 13
    mul-int v7, p3, v2

    .line 14
    .line 15
    add-int/2addr v7, v6

    .line 16
    mul-int v8, p5, v2

    .line 17
    .line 18
    add-int/2addr v8, v6

    .line 19
    mul-int v9, p4, v2

    .line 20
    .line 21
    add-int/2addr v9, v6

    .line 22
    const/4 v10, 0x0

    .line 23
    :goto_1
    if-ge v10, v1, :cond_0

    .line 24
    .line 25
    aget v11, v4, v9

    .line 26
    .line 27
    sub-int v12, v1, v10

    .line 28
    .line 29
    int-to-float v12, v12

    .line 30
    mul-float v11, v11, v12

    .line 31
    .line 32
    aget v12, v4, v8

    .line 33
    .line 34
    int-to-float v13, v10

    .line 35
    mul-float v12, v12, v13

    .line 36
    .line 37
    add-float/2addr v12, v11

    .line 38
    int-to-float v11, v1

    .line 39
    div-float/2addr v12, v11

    .line 40
    aput v12, v3, v7

    .line 41
    .line 42
    add-int/2addr v7, v2

    .line 43
    add-int/2addr v9, v2

    .line 44
    add-int/2addr v8, v2

    .line 45
    add-int/lit8 v10, v10, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method public final l(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ls1/n;->b:[F

    .line 6
    .line 7
    iget-object v2, p0, Ls1/n;->h:Ls1/q;

    .line 8
    .line 9
    iget v3, v2, Ls1/q;->j:I

    .line 10
    .line 11
    iget v2, v2, Ls1/q;->b:I

    .line 12
    .line 13
    mul-int v3, v3, v2

    .line 14
    .line 15
    div-int/lit8 v2, p2, 0x4

    .line 16
    .line 17
    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, p2

    .line 25
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final m(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/n;->d:[F

    .line 2
    .line 3
    iget-object v1, p0, Ls1/n;->h:Ls1/q;

    .line 4
    .line 5
    iget v1, v1, Ls1/q;->l:I

    .line 6
    .line 7
    invoke-virtual {p0, v1, p1, v0}, Ls1/n;->r(II[F)[F

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Ls1/n;->d:[F

    .line 12
    .line 13
    return-void
.end method

.method public final n()I
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    return v0
.end method

.method public final o(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/n;->b:[F

    .line 2
    .line 3
    iget-object v1, p0, Ls1/n;->h:Ls1/q;

    .line 4
    .line 5
    iget v1, v1, Ls1/q;->j:I

    .line 6
    .line 7
    invoke-virtual {p0, v1, p1, v0}, Ls1/n;->r(II[F)[F

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Ls1/n;->b:[F

    .line 12
    .line 13
    return-void
.end method

.method public final p(Ljava/nio/ByteBuffer;I)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ls1/n;->c:[F

    .line 6
    .line 7
    iget-object v2, p0, Ls1/n;->h:Ls1/q;

    .line 8
    .line 9
    iget v3, v2, Ls1/q;->b:I

    .line 10
    .line 11
    mul-int v3, v3, p2

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v0, v1, v4, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    mul-int/lit8 p2, p2, 0x4

    .line 22
    .line 23
    iget v1, v2, Ls1/q;->b:I

    .line 24
    .line 25
    mul-int p2, p2, v1

    .line 26
    .line 27
    add-int/2addr p2, v0

    .line 28
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final q(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/n;->a:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, p1, p2}, Ls1/n;->s([FIII)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public final r(II[F)[F
    .locals 2

    .line 1
    array-length v0, p3

    .line 2
    iget-object v1, p0, Ls1/n;->h:Ls1/q;

    .line 3
    .line 4
    iget v1, v1, Ls1/q;->b:I

    .line 5
    .line 6
    div-int/2addr v0, v1

    .line 7
    add-int/2addr p1, p2

    .line 8
    if-gt p1, v0, :cond_0

    .line 9
    .line 10
    return-object p3

    .line 11
    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 12
    .line 13
    div-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    add-int/2addr v0, p2

    .line 16
    mul-int v0, v0, v1

    .line 17
    .line 18
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public final s([FIII)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ls1/n;->h:Ls1/q;

    .line 4
    .line 5
    iget v1, v1, Ls1/q;->b:I

    .line 6
    .line 7
    mul-int v1, v1, p2

    .line 8
    .line 9
    const/16 v3, 0xff

    .line 10
    .line 11
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 12
    .line 13
    move/from16 v3, p3

    .line 14
    .line 15
    move-wide v8, v4

    .line 16
    const/16 v4, 0xff

    .line 17
    .line 18
    const/4 v10, 0x0

    .line 19
    const-wide/16 v11, 0x0

    .line 20
    .line 21
    move/from16 v5, p4

    .line 22
    .line 23
    :goto_0
    if-gt v3, v5, :cond_3

    .line 24
    .line 25
    const/4 v13, 0x0

    .line 26
    const-wide/16 v14, 0x0

    .line 27
    .line 28
    :goto_1
    if-ge v13, v3, :cond_0

    .line 29
    .line 30
    add-int v16, v1, v13

    .line 31
    .line 32
    aget v16, p1, v16

    .line 33
    .line 34
    add-int v17, v1, v3

    .line 35
    .line 36
    add-int v17, v17, v13

    .line 37
    .line 38
    aget v17, p1, v17

    .line 39
    .line 40
    sub-float v16, v16, v17

    .line 41
    .line 42
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    float-to-double v6, v2

    .line 47
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 48
    .line 49
    .line 50
    add-double/2addr v14, v6

    .line 51
    add-int/lit8 v13, v13, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    int-to-double v6, v10

    .line 55
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 56
    .line 57
    .line 58
    mul-double v6, v6, v14

    .line 59
    .line 60
    move v13, v1

    .line 61
    int-to-double v1, v3

    .line 62
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 63
    .line 64
    .line 65
    mul-double v18, v8, v1

    .line 66
    .line 67
    cmpg-double v20, v6, v18

    .line 68
    .line 69
    if-gez v20, :cond_1

    .line 70
    .line 71
    move v10, v3

    .line 72
    move-wide v8, v14

    .line 73
    :cond_1
    int-to-double v6, v4

    .line 74
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 75
    .line 76
    .line 77
    mul-double v6, v6, v14

    .line 78
    .line 79
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 80
    .line 81
    .line 82
    mul-double v1, v1, v11

    .line 83
    .line 84
    cmpl-double v18, v6, v1

    .line 85
    .line 86
    if-lez v18, :cond_2

    .line 87
    .line 88
    move v4, v3

    .line 89
    move-wide v11, v14

    .line 90
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    move v1, v13

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    int-to-double v1, v10

    .line 95
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 96
    .line 97
    .line 98
    div-double/2addr v8, v1

    .line 99
    iput-wide v8, v0, Ls1/n;->e:D

    .line 100
    .line 101
    int-to-double v1, v4

    .line 102
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 103
    .line 104
    .line 105
    div-double/2addr v11, v1

    .line 106
    iput-wide v11, v0, Ls1/n;->f:D

    .line 107
    .line 108
    return v10
.end method
