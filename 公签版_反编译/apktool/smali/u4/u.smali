.class public final Lu4/u;
.super Lu4/s;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lx4/q;)V
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
    iget-object v0, v0, Lx4/p;->b:Lx4/r;

    .line 11
    .line 12
    iget-object v0, v0, Lx4/r;->a:Lx4/t;

    .line 13
    .line 14
    iget-object v1, p1, Lu4/f;->e:Lu4/z;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lu4/z;->o(Lx4/t;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lu4/s;->c:Lx4/p;

    .line 20
    .line 21
    check-cast v0, Lx4/q;

    .line 22
    .line 23
    iget-object v0, v0, Lx4/q;->c:Ly4/a;

    .line 24
    .line 25
    iget-object p1, p1, Lu4/f;->g:Lu4/z;

    .line 26
    .line 27
    monitor-enter p1

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p1}, Lu4/a0;->g()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p1, Lu4/z;->g:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Ljava/util/TreeMap;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lu4/y;

    .line 42
    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    new-instance v1, Lu4/y;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Lu4/y;-><init>(Ly4/a;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p1, Lu4/z;->g:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Ljava/util/TreeMap;

    .line 53
    .line 54
    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    monitor-exit p1

    .line 61
    return-void

    .line 62
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    .line 63
    .line 64
    const-string v1, "prototype == null"

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw v0
.end method

.method public final b()Lu4/q;
    .locals 1

    .line 1
    sget-object v0, Lu4/q;->i:Lu4/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Lu4/f;)I
    .locals 1

    .line 1
    iget-object p1, p1, Lu4/f;->g:Lu4/z;

    .line 2
    .line 3
    iget-object v0, p0, Lu4/s;->c:Lx4/p;

    .line 4
    .line 5
    check-cast v0, Lx4/q;

    .line 6
    .line 7
    iget-object v0, v0, Lx4/q;->c:Ly4/a;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lu4/a0;->f()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Lu4/z;->g:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Ljava/util/TreeMap;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lu4/y;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lu4/o;->e()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v0, "not found"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance p1, Ljava/lang/NullPointerException;

    .line 43
    .line 44
    const-string v0, "prototype == null"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "proto_idx"

    .line 2
    .line 3
    return-object v0
.end method
