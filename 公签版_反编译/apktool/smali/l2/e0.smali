.class public final Ll2/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/o;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Lf2/u0;

.field public g:Ll2/j0;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ll2/e0;->a:I

    .line 5
    .line 6
    iput p2, p0, Ll2/e0;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Ll2/e0;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Ll2/o;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c(Ll2/q;)V
    .locals 3

    .line 1
    check-cast p1, Lf2/u0;

    .line 2
    .line 3
    iput-object p1, p0, Ll2/e0;->f:Lf2/u0;

    .line 4
    .line 5
    const/16 v0, 0x400

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v0, v1}, Lf2/u0;->z(II)Ll2/j0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Ll2/e0;->g:Ll2/j0;

    .line 13
    .line 14
    new-instance v0, Lr1/o;

    .line 15
    .line 16
    invoke-direct {v0}, Lr1/o;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Ll2/e0;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v1}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iput-object v2, v0, Lr1/o;->m:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, v0, Lr1/o;->n:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v1, Lr1/p;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Lr1/p;-><init>(Lr1/o;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v1}, Ll2/j0;->g(Lr1/p;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Ll2/e0;->f:Lf2/u0;

    .line 42
    .line 43
    invoke-virtual {p1}, Lf2/u0;->q()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Ll2/e0;->f:Lf2/u0;

    .line 47
    .line 48
    new-instance v0, Ll2/f0;

    .line 49
    .line 50
    invoke-direct {v0}, Ll2/f0;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lf2/u0;->s(Ll2/c0;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    iput p1, p0, Ll2/e0;->e:I

    .line 58
    .line 59
    return-void
.end method

.method public final d(Ll2/p;Ldd/c;)I
    .locals 9

    .line 1
    iget p2, p0, Ll2/e0;->e:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq p2, v2, :cond_1

    .line 7
    .line 8
    if-ne p2, v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    iget-object p2, p0, Ll2/e0;->g:Ll2/j0;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/16 v3, 0x400

    .line 23
    .line 24
    invoke-interface {p2, p1, v3, v2}, Ll2/j0;->e(Lr1/h;IZ)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x0

    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    iput v1, p0, Ll2/e0;->e:I

    .line 32
    .line 33
    iget-object v2, p0, Ll2/e0;->g:Ll2/j0;

    .line 34
    .line 35
    iget v6, p0, Ll2/e0;->d:I

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    invoke-interface/range {v2 .. v8}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 43
    .line 44
    .line 45
    iput p2, p0, Ll2/e0;->d:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget v0, p0, Ll2/e0;->d:I

    .line 49
    .line 50
    add-int/2addr v0, p1

    .line 51
    iput v0, p0, Ll2/e0;->d:I

    .line 52
    .line 53
    :goto_0
    return p2
.end method

.method public final e(JJ)V
    .locals 2

    .line 1
    const-wide/16 p3, 0x0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    cmp-long v1, p1, p3

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget p1, p0, Ll2/e0;->e:I

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iput v0, p0, Ll2/e0;->e:I

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Ll2/e0;->d:I

    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 2
    .line 3
    sget-object v0, Lu7/y0;->e:Lu7/y0;

    .line 4
    .line 5
    return-object v0
.end method

.method public final g(Ll2/p;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, Ll2/e0;->b:I

    .line 4
    .line 5
    iget v3, p0, Ll2/e0;->a:I

    .line 6
    .line 7
    const/4 v4, -0x1

    .line 8
    if-eq v3, v4, :cond_0

    .line 9
    .line 10
    if-eq v2, v4, :cond_0

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v4, 0x0

    .line 15
    :goto_0
    invoke-static {v4}, La9/o;->t(Z)V

    .line 16
    .line 17
    .line 18
    new-instance v4, Lu1/q;

    .line 19
    .line 20
    invoke-direct {v4, v2}, Lu1/q;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iget-object v5, v4, Lu1/q;->a:[B

    .line 24
    .line 25
    check-cast p1, Ll2/l;

    .line 26
    .line 27
    invoke-virtual {p1, v5, v1, v2, v1}, Ll2/l;->c([BIIZ)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Lu1/q;->I()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-ne p1, v3, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_1
    return v0
.end method
