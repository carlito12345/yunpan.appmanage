.class public Lx0/e2;
.super Lx0/d2;
.source "SourceFile"


# instance fields
.field public n:Lp0/c;

.field public o:Lp0/c;

.field public p:Lp0/c;


# direct methods
.method public constructor <init>(Lx0/j2;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lx0/d2;-><init>(Lx0/j2;Landroid/view/WindowInsets;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lx0/e2;->n:Lp0/c;

    .line 6
    .line 7
    iput-object p1, p0, Lx0/e2;->o:Lp0/c;

    .line 8
    .line 9
    iput-object p1, p0, Lx0/e2;->p:Lp0/c;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public g()Lp0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/e2;->o:Lp0/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lx0/b2;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Lwa/f;->l(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lp0/c;->c(Landroid/graphics/Insets;)Lp0/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lx0/e2;->o:Lp0/c;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lx0/e2;->o:Lp0/c;

    .line 18
    .line 19
    return-object v0
.end method

.method public i()Lp0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/e2;->n:Lp0/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lx0/b2;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Lwa/f;->o(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lp0/c;->c(Landroid/graphics/Insets;)Lp0/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lx0/e2;->n:Lp0/c;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lx0/e2;->n:Lp0/c;

    .line 18
    .line 19
    return-object v0
.end method

.method public k()Lp0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/e2;->p:Lp0/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lx0/b2;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Lwa/f;->d(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lp0/c;->c(Landroid/graphics/Insets;)Lp0/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lx0/e2;->p:Lp0/c;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lx0/e2;->p:Lp0/c;

    .line 18
    .line 19
    return-object v0
.end method

.method public l(IIII)Lx0/j2;
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/b2;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lwa/f;->f(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-static {p2, p1}, Lx0/j2;->h(Landroid/view/View;Landroid/view/WindowInsets;)Lx0/j2;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public q(Lp0/c;)V
    .locals 0

    .line 1
    return-void
.end method
