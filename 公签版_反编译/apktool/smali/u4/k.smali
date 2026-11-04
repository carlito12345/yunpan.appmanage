.class public final Lu4/k;
.super Lu4/s;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lx4/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu4/s;-><init>(Lx4/p;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lu4/f;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lu4/f;->f:Lu4/z;

    .line 2
    .line 3
    iget-object v1, p0, Lu4/n;->b:Lx4/u;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lu4/z;->p(Lx4/u;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lu4/s;->c:Lx4/p;

    .line 9
    .line 10
    iget-object v1, v0, Lx4/p;->b:Lx4/r;

    .line 11
    .line 12
    iget-object v1, v1, Lx4/r;->a:Lx4/t;

    .line 13
    .line 14
    iget-object v2, p1, Lu4/f;->e:Lu4/z;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lu4/z;->o(Lx4/t;)V

    .line 17
    .line 18
    .line 19
    check-cast v0, Lx4/h;

    .line 20
    .line 21
    invoke-virtual {v0}, Lx4/h;->e()Ly4/c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object p1, p1, Lu4/f;->f:Lu4/z;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lu4/z;->q(Ly4/c;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final b()Lu4/q;
    .locals 1

    .line 1
    sget-object v0, Lu4/q;->h:Lu4/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Lu4/f;)I
    .locals 1

    .line 1
    iget-object p1, p1, Lu4/f;->f:Lu4/z;

    .line 2
    .line 3
    iget-object v0, p0, Lu4/s;->c:Lx4/p;

    .line 4
    .line 5
    check-cast v0, Lx4/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Lx4/h;->e()Ly4/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lu4/z;->n(Ly4/c;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "type_idx"

    .line 2
    .line 3
    return-object v0
.end method
