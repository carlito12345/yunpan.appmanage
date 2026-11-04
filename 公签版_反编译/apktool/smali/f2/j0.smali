.class public final Lf2/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/p;


# instance fields
.field public final a:Lh2/p;

.field public final b:Lr1/r0;


# direct methods
.method public constructor <init>(Lh2/p;Lr1/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf2/j0;->a:Lh2/p;

    .line 5
    .line 6
    iput-object p2, p0, Lf2/j0;->b:Lr1/r0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lr1/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/j0;->b:Lr1/r0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/j0;->a:Lh2/p;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lh2/p;->b(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(I)Lr1/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/j0;->a:Lh2/p;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lh2/p;->e(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lf2/j0;->b:Lr1/r0;

    .line 8
    .line 9
    iget-object v0, v0, Lr1/r0;->d:[Lr1/p;

    .line 10
    .line 11
    aget-object p1, v0, p1

    .line 12
    .line 13
    return-object p1
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/j0;->a:Lh2/p;

    .line 2
    .line 3
    invoke-interface {v0}, Lh2/p;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/j0;->a:Lh2/p;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lh2/p;->e(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lf2/j0;->m(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    instance-of v0, p1, Lf2/j0;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    check-cast p1, Lf2/j0;

    .line 13
    .line 14
    iget-object v0, p0, Lf2/j0;->b:Lr1/r0;

    .line 15
    .line 16
    iget-object p1, p1, Lf2/j0;->b:Lr1/r0;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lr1/r0;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/j0;->a:Lh2/p;

    .line 2
    .line 3
    invoke-interface {v0}, Lh2/p;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/j0;->a:Lh2/p;

    .line 2
    .line 3
    invoke-interface {v0}, Lh2/p;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final h()Lr1/p;
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/j0;->a:Lh2/p;

    .line 2
    .line 3
    invoke-interface {v0}, Lh2/p;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lf2/j0;->b:Lr1/r0;

    .line 8
    .line 9
    iget-object v1, v1, Lr1/r0;->d:[Lr1/p;

    .line 10
    .line 11
    aget-object v0, v1, v0

    .line 12
    .line 13
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/j0;->a:Lh2/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lf2/j0;->b:Lr1/r0;

    .line 10
    .line 11
    invoke-virtual {v1}, Lr1/r0;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    return v1
.end method

.method public final i(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/j0;->a:Lh2/p;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lh2/p;->i(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/j0;->a:Lh2/p;

    .line 2
    .line 3
    invoke-interface {v0}, Lh2/p;->j()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/j0;->a:Lh2/p;

    .line 2
    .line 3
    invoke-interface {v0}, Lh2/p;->k()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final l(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/j0;->a:Lh2/p;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lh2/p;->l(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/j0;->a:Lh2/p;

    .line 2
    .line 3
    invoke-interface {v0}, Lh2/p;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final m(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lf2/j0;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lf2/j0;

    .line 12
    .line 13
    iget-object v0, p0, Lf2/j0;->a:Lh2/p;

    .line 14
    .line 15
    iget-object p1, p1, Lf2/j0;->a:Lh2/p;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method
