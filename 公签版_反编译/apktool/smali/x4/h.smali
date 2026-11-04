.class public final Lx4/h;
.super Lx4/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lx4/u;Lx4/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lx4/p;-><init>(Lx4/u;Lx4/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final c(Lx4/a;)I
    .locals 3

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lx4/p;

    .line 3
    .line 4
    iget-object v1, v0, Lx4/p;->a:Lx4/u;

    .line 5
    .line 6
    iget-object v2, p0, Lx4/p;->a:Lx4/u;

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Lx4/a;->b(Lx4/a;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lx4/p;->b:Lx4/r;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v2, Lx4/r;->a:Lx4/t;

    .line 18
    .line 19
    iget-object v0, v0, Lx4/p;->b:Lx4/r;

    .line 20
    .line 21
    iget-object v0, v0, Lx4/r;->a:Lx4/t;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lx4/a;->b(Lx4/a;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    :goto_0
    if-eqz v1, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    check-cast p1, Lx4/h;

    .line 31
    .line 32
    iget-object v0, v2, Lx4/r;->b:Lx4/t;

    .line 33
    .line 34
    iget-object p1, p1, Lx4/p;->b:Lx4/r;

    .line 35
    .line 36
    iget-object p1, p1, Lx4/r;->b:Lx4/t;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lx4/a;->b(Lx4/a;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "field"

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ly4/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lx4/p;->b:Lx4/r;

    .line 2
    .line 3
    iget-object v0, v0, Lx4/r;->b:Lx4/t;

    .line 4
    .line 5
    iget-object v0, v0, Lx4/t;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Ly4/c;->e(Ljava/lang/String;)Ly4/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
