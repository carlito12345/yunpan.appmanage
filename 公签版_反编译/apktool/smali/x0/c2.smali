.class public Lx0/c2;
.super Lx0/b2;
.source "SourceFile"


# instance fields
.field public m:Lp0/c;


# direct methods
.method public constructor <init>(Lx0/j2;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lx0/b2;-><init>(Lx0/j2;Landroid/view/WindowInsets;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lx0/c2;->m:Lp0/c;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public b()Lx0/j2;
    .locals 2

    .line 1
    iget-object v0, p0, Lx0/b2;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {v0}, Lwa/h;->f(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1, v0}, Lx0/j2;->h(Landroid/view/View;Landroid/view/WindowInsets;)Lx0/j2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public c()Lx0/j2;
    .locals 2

    .line 1
    iget-object v0, p0, Lx0/b2;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {v0}, Lta/p;->c(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1, v0}, Lx0/j2;->h(Landroid/view/View;Landroid/view/WindowInsets;)Lx0/j2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final h()Lp0/c;
    .locals 4

    .line 1
    iget-object v0, p0, Lx0/c2;->m:Lp0/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lx0/b2;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Lwa/h;->b(Landroid/view/WindowInsets;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lx0/b2;->c:Landroid/view/WindowInsets;

    .line 12
    .line 13
    invoke-static {v1}, Lwa/h;->v(Landroid/view/WindowInsets;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lx0/b2;->c:Landroid/view/WindowInsets;

    .line 18
    .line 19
    invoke-static {v2}, Lwa/h;->y(Landroid/view/WindowInsets;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lx0/b2;->c:Landroid/view/WindowInsets;

    .line 24
    .line 25
    invoke-static {v3}, Lwa/h;->z(Landroid/view/WindowInsets;)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-static {v0, v1, v2, v3}, Lp0/c;->b(IIII)Lp0/c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lx0/c2;->m:Lp0/c;

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lx0/c2;->m:Lp0/c;

    .line 36
    .line 37
    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/b2;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {v0}, Lwa/h;->t(Landroid/view/WindowInsets;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public q(Lp0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0/c2;->m:Lp0/c;

    .line 2
    .line 3
    return-void
.end method
