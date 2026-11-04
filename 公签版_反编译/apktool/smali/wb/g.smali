.class public final Lwb/g;
.super Lwb/c;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public e:Lbd/e;

.field public f:Lbd/e;

.field public g:Lu1/p;


# direct methods
.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;Lmb/g;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lwb/c;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;Lmb/g;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lwb/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    new-instance p2, Lu1/p;

    .line 13
    .line 14
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTabWidth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-direct {p2, v0}, Lu1/p;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lwb/g;->g:Lu1/p;

    .line 22
    .line 23
    iget-boolean p1, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->Y0:Z

    .line 24
    .line 25
    iput-boolean p1, p2, Lu1/p;->b:Z

    .line 26
    .line 27
    new-instance p1, Lbd/e;

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    invoke-direct {p1, p2}, Lbd/e;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lwb/g;->e:Lbd/e;

    .line 34
    .line 35
    new-instance p1, Lbd/e;

    .line 36
    .line 37
    invoke-direct {p1, p2}, Lbd/e;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lwb/g;->f:Lbd/e;

    .line 41
    .line 42
    iget-object p2, p0, Lwb/g;->e:Lbd/e;

    .line 43
    .line 44
    invoke-virtual {p0, p2, p1}, Lwb/g;->u(Lbd/e;Lbd/e;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static v(Ljava/util/List;)I
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    float-to-int p0, p0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-static {p0}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    throw p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 2
    .line 3
    iget-object v0, v0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final c(Lmb/g;IIIILjava/lang/CharSequence;)V
    .locals 6

    .line 1
    move p1, p2

    .line 2
    :goto_0
    if-gt p1, p4, :cond_2

    .line 3
    .line 4
    if-ne p1, p2, :cond_1

    .line 5
    .line 6
    if-ne p4, p2, :cond_0

    .line 7
    .line 8
    iget-object p6, p0, Lwb/g;->f:Lbd/e;

    .line 9
    .line 10
    invoke-virtual {p6, p1}, Lbd/e;->d(I)I

    .line 11
    .line 12
    .line 13
    move-result p6

    .line 14
    invoke-virtual {p0}, Lwb/c;->t()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 19
    .line 20
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTextPaint()Leb/c;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lwb/g;->v(Ljava/util/List;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lwb/g;->f:Lbd/e;

    .line 28
    .line 29
    invoke-virtual {v1, p1, v0}, Lbd/e;->g(II)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lwb/g;->e:Lbd/e;

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Lbd/e;->d(I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget-object v3, p0, Lwb/c;->b:Lmb/g;

    .line 39
    .line 40
    invoke-virtual {v3, p1}, Lmb/g;->o(I)Lmb/h;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v4, p0, Lwb/g;->g:Lu1/p;

    .line 45
    .line 46
    iget-object v5, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 47
    .line 48
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTextPaint()Leb/c;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v4, v3, p3, p5, v5}, Lu1/p;->d(Ljava/lang/CharSequence;IILeb/c;)F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    float-to-int v3, v3

    .line 57
    add-int/2addr v2, v3

    .line 58
    sub-int/2addr v0, p6

    .line 59
    add-int/2addr v0, v2

    .line 60
    invoke-virtual {v1, p1, v0}, Lbd/e;->g(II)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    iget-object p6, p0, Lwb/g;->e:Lbd/e;

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, p1, v0}, Lwb/g;->w(IZ)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-virtual {p6, p1, v0}, Lbd/e;->g(II)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    iget-object p6, p0, Lwb/g;->e:Lbd/e;

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, p1, v0}, Lwb/g;->w(IZ)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p6, p1, v0}, Lbd/e;->b(II)V

    .line 83
    .line 84
    .line 85
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    return-void
.end method

.method public final d()I
    .locals 2

    .line 1
    iget-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 2
    .line 3
    iget-object v0, v0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 10
    .line 11
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    mul-int v1, v1, v0

    .line 16
    .line 17
    return v1
.end method

.method public final e(II[F)[F
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    array-length v1, p3

    .line 5
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    :cond_0
    new-array p3, v0, [F

    .line 8
    .line 9
    :cond_1
    iget-object v0, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->K(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    const/4 v1, 0x0

    .line 17
    aput v0, p3, v1

    .line 18
    .line 19
    iget-object v0, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 20
    .line 21
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderer()Ltb/l;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Ltb/l;->d(I)Leb/o;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1, p2}, Leb/o;->f(I)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    aput p1, p3, v0

    .line 35
    .line 36
    return-object p3
.end method

.method public final f(ILandroid/util/SparseArray;)Lwb/j;
    .locals 2

    .line 1
    new-instance v0, La2/k1;

    .line 2
    .line 3
    iget-object v1, p0, Lwb/c;->b:Lmb/g;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1, p1, p2}, La2/k1;-><init>(Lwb/c;Lmb/g;ILandroid/util/SparseArray;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final g(II)J
    .locals 2

    .line 1
    iget-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 2
    .line 3
    iget-object v0, v0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v1, p1, 0x1

    .line 10
    .line 11
    if-lt v1, v0, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lwb/c;->b:Lmb/g;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lmb/g;->o(I)Lmb/h;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget p2, p2, Lmb/h;->c:I

    .line 20
    .line 21
    invoke-static {p1, p2}, Lsb/h;->g(II)J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    return-wide p1

    .line 26
    :cond_0
    iget-object p1, p0, Lwb/c;->b:Lmb/g;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lmb/g;->o(I)Lmb/h;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget p1, p1, Lmb/h;->c:I

    .line 33
    .line 34
    if-le p2, p1, :cond_1

    .line 35
    .line 36
    move p2, p1

    .line 37
    :cond_1
    invoke-static {v1, p2}, Lsb/h;->g(II)J

    .line 38
    .line 39
    .line 40
    move-result-wide p1

    .line 41
    return-wide p1
.end method

.method public final h(I)I
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public final i(Lh5/m;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 2
    .line 3
    iget-object v0, v0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    sub-int/2addr v0, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    iget-object v4, p1, Lh5/m;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, [I

    .line 16
    .line 17
    array-length v5, v4

    .line 18
    if-ge v3, v5, :cond_0

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v5, 0x0

    .line 23
    :goto_1
    if-eqz v5, :cond_3

    .line 24
    .line 25
    array-length v5, v4

    .line 26
    if-ge v3, v5, :cond_1

    .line 27
    .line 28
    add-int/lit8 v5, v3, 0x1

    .line 29
    .line 30
    aget v3, v4, v3

    .line 31
    .line 32
    if-le v3, v0, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    move v5, v3

    .line 36
    :goto_2
    move v3, v0

    .line 37
    :cond_2
    iget-object v4, p0, Lwb/g;->e:Lbd/e;

    .line 38
    .line 39
    invoke-virtual {p0, v3, v2}, Lwb/g;->w(IZ)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    invoke-virtual {v4, v3, v6}, Lbd/e;->g(II)V

    .line 44
    .line 45
    .line 46
    move v3, v5

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    return-void
.end method

.method public final j(Lmb/g;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final k(Lmb/g;IIIILjava/lang/StringBuilder;)V
    .locals 4

    .line 1
    if-ge p2, p4, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lwb/g;->e:Lbd/e;

    .line 4
    .line 5
    add-int/lit8 v0, p2, 0x1

    .line 6
    .line 7
    add-int/lit8 v1, p4, 0x1

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lbd/e;->f(II)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lwb/g;->f:Lbd/e;

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Lbd/e;->f(II)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    if-ne p2, p4, :cond_1

    .line 19
    .line 20
    iget-object p4, p0, Lwb/g;->f:Lbd/e;

    .line 21
    .line 22
    invoke-virtual {p4, p2}, Lbd/e;->d(I)I

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    invoke-virtual {p0}, Lwb/c;->t()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 31
    .line 32
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTextPaint()Leb/c;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lwb/g;->v(Ljava/util/List;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v1, p0, Lwb/g;->f:Lbd/e;

    .line 40
    .line 41
    invoke-virtual {v1, p2, v0}, Lbd/e;->g(II)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lwb/g;->e:Lbd/e;

    .line 45
    .line 46
    invoke-virtual {v1, p2}, Lbd/e;->d(I)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iget-object v3, p0, Lwb/g;->g:Lu1/p;

    .line 51
    .line 52
    sub-int/2addr p5, p3

    .line 53
    iget-object p3, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 54
    .line 55
    invoke-virtual {p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTextPaint()Leb/c;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-virtual {v3, p6, p1, p5, p3}, Lu1/p;->d(Ljava/lang/CharSequence;IILeb/c;)F

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    float-to-int p1, p1

    .line 64
    sub-int/2addr v2, p1

    .line 65
    sub-int/2addr v0, p4

    .line 66
    add-int/2addr v0, v2

    .line 67
    invoke-virtual {v1, p2, v0}, Lbd/e;->g(II)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object p3, p0, Lwb/g;->e:Lbd/e;

    .line 72
    .line 73
    invoke-virtual {p0, p2, p1}, Lwb/g;->w(IZ)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-virtual {p3, p2, p1}, Lbd/e;->g(II)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method public final l(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lmb/g;->n()Lmb/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lmb/a;->z(I)Lmb/b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget p1, p1, Lmb/b;->b:I

    .line 16
    .line 17
    return p1
.end method

.method public final m()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 3
    .line 4
    iput-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 5
    .line 6
    iput-object v0, p0, Lwb/g;->e:Lbd/e;

    .line 7
    .line 8
    iput-object v0, p0, Lwb/g;->f:Lbd/e;

    .line 9
    .line 10
    return-void
.end method

.method public final n(FF)Leb/j;
    .locals 3

    .line 1
    iget-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 2
    .line 3
    iget-object v0, v0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    iget-object v1, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 12
    .line 13
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    div-float/2addr p2, v1

    .line 19
    float-to-int p2, p2

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    iget-object v0, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 30
    .line 31
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderer()Ltb/l;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p2}, Ltb/l;->d(I)Leb/o;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Leb/o;->g(F)Leb/h;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v0, Leb/j;

    .line 44
    .line 45
    iget-object v1, p1, Leb/h;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lwb/i;

    .line 48
    .line 49
    iget-boolean v2, p1, Leb/h;->b:Z

    .line 50
    .line 51
    iget p1, p1, Leb/h;->a:I

    .line 52
    .line 53
    invoke-direct {v0, p2, p1, v1, v2}, Leb/j;-><init>(IILwb/i;Z)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public final o(II)J
    .locals 1

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    if-gez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-static {p1, p1}, Lsb/h;->g(II)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    return-wide p1

    .line 11
    :cond_0
    iget-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lmb/g;->o(I)Lmb/h;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Lmb/h;->c:I

    .line 18
    .line 19
    if-le p2, v0, :cond_1

    .line 20
    .line 21
    move p2, v0

    .line 22
    :cond_1
    invoke-static {p1, p2}, Lsb/h;->g(II)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    return-wide p1
.end method

.method public final p(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 2
    .line 3
    iget-object v0, v0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final q(I)Lwb/h;
    .locals 2

    .line 1
    new-instance v0, Lwb/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lwb/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Lwb/h;->a:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, v0, Lwb/h;->d:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lwb/h;->b:Z

    .line 13
    .line 14
    iput-boolean v1, v0, Lwb/h;->c:Z

    .line 15
    .line 16
    iget-object v1, p0, Lwb/c;->b:Lmb/g;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lmb/g;->o(I)Lmb/h;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget p1, p1, Lmb/h;->c:I

    .line 23
    .line 24
    iput p1, v0, Lwb/h;->e:I

    .line 25
    .line 26
    invoke-virtual {p0}, Lwb/c;->t()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, v0, Lwb/h;->f:Ljava/util/List;

    .line 31
    .line 32
    return-object v0
.end method

.method public final r()I
    .locals 4

    .line 1
    iget-object v0, p0, Lwb/g;->e:Lbd/e;

    .line 2
    .line 3
    iget v1, v0, Lbd/e;->c:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const v0, 0xccccccc

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget v1, v0, Lbd/e;->d:I

    .line 12
    .line 13
    iget v2, v0, Lbd/e;->f:I

    .line 14
    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    iput v1, v0, Lbd/e;->f:I

    .line 18
    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    iput v1, v0, Lbd/e;->g:I

    .line 21
    .line 22
    iget-object v1, v0, Lbd/e;->k:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lsb/a;

    .line 25
    .line 26
    :goto_0
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget v2, v0, Lbd/e;->g:I

    .line 29
    .line 30
    iget v3, v1, Lsb/a;->c:I

    .line 31
    .line 32
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iput v2, v0, Lbd/e;->g:I

    .line 37
    .line 38
    iget-object v1, v1, Lsb/a;->d:Lsb/a;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget v0, v0, Lbd/e;->g:I

    .line 42
    .line 43
    :goto_1
    return v0
.end method

.method public final u(Lbd/e;Lbd/e;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v6, Leb/c;

    .line 7
    .line 8
    iget-object v0, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 9
    .line 10
    iget-boolean v0, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->Y0:Z

    .line 11
    .line 12
    invoke-direct {v6, v0}, Leb/c;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 16
    .line 17
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTextPaint()Leb/c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6}, Leb/c;->c()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lwb/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    iget-object v5, p0, Lwb/g;->g:Lu1/p;

    .line 34
    .line 35
    new-instance v3, Ls3/d0;

    .line 36
    .line 37
    new-instance v0, Lha/o;

    .line 38
    .line 39
    const/16 v1, 0x12

    .line 40
    .line 41
    invoke-direct {v0, v8, v1, p0}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const/4 v9, 0x1

    .line 45
    invoke-direct {v3, v9, v0}, Ls3/d0;-><init>(ILwb/b;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lwb/f;

    .line 49
    .line 50
    move-object v1, v0

    .line 51
    move-object v2, p0

    .line 52
    move-object v4, p1

    .line 53
    move-object v7, p2

    .line 54
    invoke-direct/range {v1 .. v8}, Lwb/f;-><init>(Lwb/g;Ls3/d0;Lbd/e;Lu1/p;Leb/c;Lbd/e;I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 58
    .line 59
    invoke-virtual {p1, v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->setLayoutBusy(Z)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lwb/c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final w(IZ)I
    .locals 4

    .line 1
    iget-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lmb/g;->o(I)Lmb/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lwb/c;->t()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 12
    .line 13
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTextPaint()Leb/c;

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lwb/g;->v(Ljava/util/List;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    iget-object p2, p0, Lwb/g;->f:Lbd/e;

    .line 23
    .line 24
    invoke-virtual {p2, p1, v1}, Lbd/e;->b(II)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p2, p0, Lwb/g;->f:Lbd/e;

    .line 29
    .line 30
    invoke-virtual {p2, p1, v1}, Lbd/e;->g(II)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object p1, p0, Lwb/g;->g:Lu1/p;

    .line 34
    .line 35
    iget p2, v0, Lmb/h;->c:I

    .line 36
    .line 37
    iget-object v2, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 38
    .line 39
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTextPaint()Leb/c;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {p1, v0, v3, p2, v2}, Lu1/p;->d(Ljava/lang/CharSequence;IILeb/c;)F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    float-to-int p1, p1

    .line 49
    add-int/2addr p1, v1

    .line 50
    return p1
.end method
