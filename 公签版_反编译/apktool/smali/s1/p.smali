.class public final Ls1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/o;


# instance fields
.field public final a:[S

.field public b:[S

.field public c:[S

.field public d:[S

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Ls1/q;


# direct methods
.method public constructor <init>(Ls1/q;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ls1/p;->h:Ls1/q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Ls1/q;->h:I

    .line 7
    .line 8
    new-array v1, v0, [S

    .line 9
    .line 10
    iput-object v1, p0, Ls1/p;->a:[S

    .line 11
    .line 12
    iget p1, p1, Ls1/q;->b:I

    .line 13
    .line 14
    mul-int v1, v0, p1

    .line 15
    .line 16
    new-array v1, v1, [S

    .line 17
    .line 18
    iput-object v1, p0, Ls1/p;->b:[S

    .line 19
    .line 20
    mul-int v1, v0, p1

    .line 21
    .line 22
    new-array v1, v1, [S

    .line 23
    .line 24
    iput-object v1, p0, Ls1/p;->c:[S

    .line 25
    .line 26
    mul-int v0, v0, p1

    .line 27
    .line 28
    new-array p1, v0, [S

    .line 29
    .line 30
    iput-object p1, p0, Ls1/p;->d:[S

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
    iget-object v2, v0, Ls1/p;->h:Ls1/q;

    .line 4
    .line 5
    iget v3, v2, Ls1/q;->b:I

    .line 6
    .line 7
    if-ge v1, v3, :cond_0

    .line 8
    .line 9
    iget-object v4, v0, Ls1/p;->c:[S

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
    iget-object v6, v0, Ls1/p;->d:[S

    .line 17
    .line 18
    mul-int v7, p1, v3

    .line 19
    .line 20
    add-int/2addr v7, v1

    .line 21
    aget-short v8, v6, v7

    .line 22
    .line 23
    add-int/2addr v7, v3

    .line 24
    aget-short v3, v6, v7

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
    int-to-long v8, v8

    .line 45
    mul-long v8, v8, v6

    .line 46
    .line 47
    sub-long v6, v11, v6

    .line 48
    .line 49
    int-to-long v2, v3

    .line 50
    mul-long v6, v6, v2

    .line 51
    .line 52
    add-long/2addr v6, v8

    .line 53
    div-long/2addr v6, v11

    .line 54
    long-to-int v2, v6

    .line 55
    int-to-short v2, v2

    .line 56
    aput-short v2, v4, v5

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public final b(II)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Ls1/p;->h:Ls1/q;

    .line 4
    .line 5
    iget v2, v2, Ls1/q;->b:I

    .line 6
    .line 7
    mul-int v2, v2, p2

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Ls1/p;->b:[S

    .line 12
    .line 13
    add-int v3, p1, v1

    .line 14
    .line 15
    aput-short v0, v2, v3

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public final c(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Ls1/p;->b:[S

    .line 2
    .line 3
    iget-object v1, p0, Ls1/p;->h:Ls1/q;

    .line 4
    .line 5
    iget v2, v1, Ls1/q;->h:I

    .line 6
    .line 7
    div-int/2addr v2, p2

    .line 8
    iget v1, v1, Ls1/q;->b:I

    .line 9
    .line 10
    mul-int p2, p2, v1

    .line 11
    .line 12
    mul-int p1, p1, v1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v2, :cond_1

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    :goto_1
    if-ge v4, p2, :cond_0

    .line 21
    .line 22
    invoke-static {v3, p2, p1, v4}, Lorg/bouncycastle/jcajce/provider/digest/a;->b(IIII)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    aget-short v6, v0, v6

    .line 27
    .line 28
    add-int/2addr v5, v6

    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    div-int/2addr v5, p2

    .line 33
    iget-object v4, p0, Ls1/p;->a:[S

    .line 34
    .line 35
    int-to-short v5, v5

    .line 36
    aput-short v5, v4, v3

    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public final d(III)I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/p;->b:[S

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Ls1/p;->s([SIII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final e()V
    .locals 1

    .line 1
    iget v0, p0, Ls1/p;->e:I

    .line 2
    .line 3
    iput v0, p0, Ls1/p;->g:I

    .line 4
    .line 5
    return-void
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/p;->b:[S

    .line 2
    .line 3
    return-object v0
.end method

.method public final flush()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ls1/p;->g:I

    .line 3
    .line 4
    iput v0, p0, Ls1/p;->e:I

    .line 5
    .line 6
    iput v0, p0, Ls1/p;->f:I

    .line 7
    .line 8
    return-void
.end method

.method public final g()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/p;->c:[S

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/p;->c:[S

    .line 2
    .line 3
    iget-object v1, p0, Ls1/p;->h:Ls1/q;

    .line 4
    .line 5
    iget v1, v1, Ls1/q;->k:I

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1}, Ls1/p;->r([SII)[S

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Ls1/p;->c:[S

    .line 12
    .line 13
    return-void
.end method

.method public final i()Z
    .locals 4

    .line 1
    iget v0, p0, Ls1/p;->e:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v2, p0, Ls1/p;->h:Ls1/q;

    .line 7
    .line 8
    iget v2, v2, Ls1/q;->p:I

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v2, p0, Ls1/p;->f:I

    .line 14
    .line 15
    mul-int/lit8 v3, v0, 0x3

    .line 16
    .line 17
    if-le v2, v3, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    mul-int/lit8 v0, v0, 0x2

    .line 21
    .line 22
    iget v2, p0, Ls1/p;->g:I

    .line 23
    .line 24
    mul-int/lit8 v2, v2, 0x3

    .line 25
    .line 26
    if-gt v0, v2, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_3
    :goto_0
    return v1
.end method

.method public final j()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/p;->d:[S

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(IIIII)V
    .locals 10

    .line 1
    iget-object v0, p0, Ls1/p;->c:[S

    .line 2
    .line 3
    iget-object v1, p0, Ls1/p;->b:[S

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    if-ge v3, p2, :cond_1

    .line 8
    .line 9
    mul-int v4, p3, p2

    .line 10
    .line 11
    add-int/2addr v4, v3

    .line 12
    mul-int v5, p5, p2

    .line 13
    .line 14
    add-int/2addr v5, v3

    .line 15
    mul-int v6, p4, p2

    .line 16
    .line 17
    add-int/2addr v6, v3

    .line 18
    const/4 v7, 0x0

    .line 19
    :goto_1
    if-ge v7, p1, :cond_0

    .line 20
    .line 21
    aget-short v8, v1, v6

    .line 22
    .line 23
    sub-int v9, p1, v7

    .line 24
    .line 25
    mul-int v9, v9, v8

    .line 26
    .line 27
    aget-short v8, v1, v5

    .line 28
    .line 29
    mul-int v8, v8, v7

    .line 30
    .line 31
    add-int/2addr v8, v9

    .line 32
    div-int/2addr v8, p1

    .line 33
    int-to-short v8, v8

    .line 34
    aput-short v8, v0, v4

    .line 35
    .line 36
    add-int/2addr v4, p2

    .line 37
    add-int/2addr v6, p2

    .line 38
    add-int/2addr v5, p2

    .line 39
    add-int/lit8 v7, v7, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method public final l(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ls1/p;->b:[S

    .line 6
    .line 7
    iget-object v2, p0, Ls1/p;->h:Ls1/q;

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
    div-int/lit8 v2, p2, 0x2

    .line 16
    .line 17
    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

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
    iget-object v0, p0, Ls1/p;->d:[S

    .line 2
    .line 3
    iget-object v1, p0, Ls1/p;->h:Ls1/q;

    .line 4
    .line 5
    iget v1, v1, Ls1/q;->l:I

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1}, Ls1/p;->r([SII)[S

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Ls1/p;->d:[S

    .line 12
    .line 13
    return-void
.end method

.method public final n()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public final o(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/p;->b:[S

    .line 2
    .line 3
    iget-object v1, p0, Ls1/p;->h:Ls1/q;

    .line 4
    .line 5
    iget v1, v1, Ls1/q;->j:I

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1}, Ls1/p;->r([SII)[S

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Ls1/p;->b:[S

    .line 12
    .line 13
    return-void
.end method

.method public final p(Ljava/nio/ByteBuffer;I)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ls1/p;->c:[S

    .line 6
    .line 7
    iget-object v2, p0, Ls1/p;->h:Ls1/q;

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
    invoke-virtual {v0, v1, v4, v3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    mul-int/lit8 p2, p2, 0x2

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
    iget-object v0, p0, Ls1/p;->a:[S

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, p1, p2}, Ls1/p;->s([SIII)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public final r([SII)[S
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    iget-object v1, p0, Ls1/p;->h:Ls1/q;

    .line 3
    .line 4
    iget v1, v1, Ls1/q;->b:I

    .line 5
    .line 6
    div-int/2addr v0, v1

    .line 7
    add-int/2addr p2, p3

    .line 8
    if-gt p2, v0, :cond_0

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 12
    .line 13
    div-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    add-int/2addr v0, p3

    .line 16
    mul-int v0, v0, v1

    .line 17
    .line 18
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public final s([SIII)I
    .locals 9

    .line 1
    iget-object v0, p0, Ls1/p;->h:Ls1/q;

    .line 2
    .line 3
    iget v0, v0, Ls1/q;->b:I

    .line 4
    .line 5
    mul-int p2, p2, v0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/16 v1, 0xff

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_0
    if-gt p3, p4, :cond_3

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    :goto_1
    if-ge v5, p3, :cond_0

    .line 18
    .line 19
    add-int v7, p2, v5

    .line 20
    .line 21
    aget-short v7, p1, v7

    .line 22
    .line 23
    add-int v8, p2, p3

    .line 24
    .line 25
    add-int/2addr v8, v5

    .line 26
    aget-short v8, p1, v8

    .line 27
    .line 28
    sub-int/2addr v7, v8

    .line 29
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    add-int/2addr v6, v7

    .line 34
    add-int/lit8 v5, v5, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    mul-int v5, v6, v3

    .line 38
    .line 39
    mul-int v7, v2, p3

    .line 40
    .line 41
    if-ge v5, v7, :cond_1

    .line 42
    .line 43
    move v3, p3

    .line 44
    move v2, v6

    .line 45
    :cond_1
    mul-int v5, v6, v1

    .line 46
    .line 47
    mul-int v7, v4, p3

    .line 48
    .line 49
    if-le v5, v7, :cond_2

    .line 50
    .line 51
    move v1, p3

    .line 52
    move v4, v6

    .line 53
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    div-int/2addr v2, v3

    .line 57
    iput v2, p0, Ls1/p;->e:I

    .line 58
    .line 59
    div-int/2addr v4, v1

    .line 60
    iput v4, p0, Ls1/p;->f:I

    .line 61
    .line 62
    return v3
.end method
