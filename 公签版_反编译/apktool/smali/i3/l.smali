.class public final Li3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/j0;


# instance fields
.field public final a:Ll2/j0;

.field public final b:Li3/h;

.field public final c:Lu1/q;

.field public d:I

.field public e:I

.field public f:[B

.field public g:Li3/j;

.field public h:Lr1/p;

.field public i:Z


# direct methods
.method public constructor <init>(Ll2/j0;Li3/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li3/l;->a:Ll2/j0;

    .line 5
    .line 6
    iput-object p2, p0, Li3/l;->b:Li3/h;

    .line 7
    .line 8
    new-instance p1, Lha/j2;

    .line 9
    .line 10
    const/16 p2, 0xa

    .line 11
    .line 12
    invoke-direct {p1, p2}, Lha/j2;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Li3/l;->d:I

    .line 17
    .line 18
    iput p1, p0, Li3/l;->e:I

    .line 19
    .line 20
    sget-object p1, Lu1/f0;->b:[B

    .line 21
    .line 22
    iput-object p1, p0, Li3/l;->f:[B

    .line 23
    .line 24
    new-instance p1, Lu1/q;

    .line 25
    .line 26
    invoke-direct {p1}, Lu1/q;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Li3/l;->c:Lu1/q;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a(ILu1/q;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p2, p1, v0}, Li3/l;->c(Lu1/q;II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final b(JIIILl2/i0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Li3/l;->g:Li3/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Li3/l;->a:Ll2/j0;

    .line 6
    .line 7
    move-wide v2, p1

    .line 8
    move v4, p3

    .line 9
    move v5, p4

    .line 10
    move v6, p5

    .line 11
    move-object v7, p6

    .line 12
    invoke-interface/range {v1 .. v7}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    if-nez p6, :cond_1

    .line 18
    .line 19
    const/4 p6, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p6, 0x0

    .line 22
    :goto_0
    const-string v1, "DRM on subtitles is not supported"

    .line 23
    .line 24
    invoke-static {v1, p6}, La9/o;->i(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    iget p6, p0, Li3/l;->e:I

    .line 28
    .line 29
    sub-int/2addr p6, p5

    .line 30
    sub-int/2addr p6, p4

    .line 31
    :try_start_0
    iget-object v1, p0, Li3/l;->g:Li3/j;

    .line 32
    .line 33
    iget-object v2, p0, Li3/l;->f:[B

    .line 34
    .line 35
    sget-object v5, Li3/i;->c:Li3/i;

    .line 36
    .line 37
    new-instance v6, Li3/k;

    .line 38
    .line 39
    invoke-direct {v6, p0, p1, p2, p3}, Li3/k;-><init>(Li3/l;JI)V

    .line 40
    .line 41
    .line 42
    move v3, p6

    .line 43
    move v4, p4

    .line 44
    invoke-interface/range {v1 .. v6}, Li3/j;->b([BIILi3/i;Lu1/f;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p1

    .line 49
    iget-boolean p2, p0, Li3/l;->i:Z

    .line 50
    .line 51
    if-eqz p2, :cond_3

    .line 52
    .line 53
    const-string p2, "Parsing subtitles failed, ignoring sample."

    .line 54
    .line 55
    invoke-static {p2, p1}, Lu1/a;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    add-int/2addr p6, p4

    .line 59
    iput p6, p0, Li3/l;->d:I

    .line 60
    .line 61
    iget p1, p0, Li3/l;->e:I

    .line 62
    .line 63
    if-ne p6, p1, :cond_2

    .line 64
    .line 65
    iput v0, p0, Li3/l;->d:I

    .line 66
    .line 67
    iput v0, p0, Li3/l;->e:I

    .line 68
    .line 69
    :cond_2
    return-void

    .line 70
    :cond_3
    throw p1
.end method

.method public final c(Lu1/q;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Li3/l;->g:Li3/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Li3/l;->a:Ll2/j0;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Ll2/j0;->c(Lu1/q;II)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p2}, Li3/l;->h(I)V

    .line 12
    .line 13
    .line 14
    iget-object p3, p0, Li3/l;->f:[B

    .line 15
    .line 16
    iget v0, p0, Li3/l;->e:I

    .line 17
    .line 18
    invoke-virtual {p1, v0, p2, p3}, Lu1/q;->l(II[B)V

    .line 19
    .line 20
    .line 21
    iget p1, p0, Li3/l;->e:I

    .line 22
    .line 23
    add-int/2addr p1, p2

    .line 24
    iput p1, p0, Li3/l;->e:I

    .line 25
    .line 26
    return-void
.end method

.method public final synthetic d(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(Lr1/h;IZ)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Li3/l;->f(Lr1/h;IZ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final f(Lr1/h;IZ)I
    .locals 2

    .line 1
    iget-object v0, p0, Li3/l;->g:Li3/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Li3/l;->a:Ll2/j0;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Ll2/j0;->f(Lr1/h;IZ)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-virtual {p0, p2}, Li3/l;->h(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Li3/l;->f:[B

    .line 16
    .line 17
    iget v1, p0, Li3/l;->e:I

    .line 18
    .line 19
    invoke-interface {p1, v0, v1, p2}, Lr1/h;->read([BII)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 p2, -0x1

    .line 24
    if-ne p1, p2, :cond_2

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    return p2

    .line 29
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_2
    iget p2, p0, Li3/l;->e:I

    .line 36
    .line 37
    add-int/2addr p2, p1

    .line 38
    iput p2, p0, Li3/l;->e:I

    .line 39
    .line 40
    return p1
.end method

.method public final g(Lr1/p;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lr1/p;->o:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lr1/p;->o:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Lr1/e0;->g(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x3

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-static {v1}, La9/o;->k(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Li3/l;->h:Lr1/p;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lr1/p;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Li3/l;->b:Li3/h;

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    iput-object p1, p0, Li3/l;->h:Lr1/p;

    .line 32
    .line 33
    invoke-interface {v2, p1}, Li3/h;->m(Lr1/p;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-interface {v2, p1}, Li3/h;->k(Lr1/p;)Li3/j;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v1, 0x0

    .line 45
    :goto_1
    iput-object v1, p0, Li3/l;->g:Li3/j;

    .line 46
    .line 47
    :cond_2
    iget-object v1, p0, Li3/l;->g:Li3/j;

    .line 48
    .line 49
    iget-object v3, p0, Li3/l;->a:Ll2/j0;

    .line 50
    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    invoke-interface {v3, p1}, Ll2/j0;->g(Lr1/p;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    new-instance v1, Lr1/o;

    .line 58
    .line 59
    invoke-direct {v1, p1}, Lr1/o;-><init>(Lr1/p;)V

    .line 60
    .line 61
    .line 62
    const-string v4, "application/x-media3-cues"

    .line 63
    .line 64
    invoke-static {v4}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iput-object v4, v1, Lr1/o;->n:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v0, v1, Lr1/o;->j:Ljava/lang/String;

    .line 71
    .line 72
    const-wide v4, 0x7fffffffffffffffL

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    iput-wide v4, v1, Lr1/o;->s:J

    .line 78
    .line 79
    invoke-interface {v2, p1}, Li3/h;->x(Lr1/p;)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput p1, v1, Lr1/o;->L:I

    .line 84
    .line 85
    new-instance p1, Lr1/p;

    .line 86
    .line 87
    invoke-direct {p1, v1}, Lr1/p;-><init>(Lr1/o;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v3, p1}, Ll2/j0;->g(Lr1/p;)V

    .line 91
    .line 92
    .line 93
    :goto_2
    return-void
.end method

.method public final h(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Li3/l;->f:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Li3/l;->e:I

    .line 5
    .line 6
    sub-int/2addr v0, v1

    .line 7
    if-lt v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Li3/l;->d:I

    .line 11
    .line 12
    sub-int/2addr v1, v0

    .line 13
    mul-int/lit8 v0, v1, 0x2

    .line 14
    .line 15
    add-int/2addr p1, v1

    .line 16
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object v0, p0, Li3/l;->f:[B

    .line 21
    .line 22
    array-length v2, v0

    .line 23
    if-gt p1, v2, :cond_1

    .line 24
    .line 25
    move-object p1, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-array p1, p1, [B

    .line 28
    .line 29
    :goto_0
    iget v2, p0, Li3/l;->d:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    iput v3, p0, Li3/l;->d:I

    .line 36
    .line 37
    iput v1, p0, Li3/l;->e:I

    .line 38
    .line 39
    iput-object p1, p0, Li3/l;->f:[B

    .line 40
    .line 41
    return-void
.end method
