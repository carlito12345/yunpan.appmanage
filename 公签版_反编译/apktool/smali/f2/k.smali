.class public abstract Lf2/k;
.super Lf2/a;
.source "SourceFile"


# instance fields
.field public final h:Ljava/util/HashMap;

.field public i:Landroid/os/Handler;

.field public j:Lw1/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf2/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf2/k;->h:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/k;->h:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lf2/j;

    .line 22
    .line 23
    iget-object v2, v1, Lf2/j;->a:Lf2/a;

    .line 24
    .line 25
    iget-object v1, v1, Lf2/j;->b:Lf2/h;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lf2/a;->b(Lf2/d0;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/k;->h:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lf2/j;

    .line 22
    .line 23
    iget-object v2, v1, Lf2/j;->a:Lf2/a;

    .line 24
    .line 25
    iget-object v1, v1, Lf2/j;->b:Lf2/h;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lf2/a;->d(Lf2/d0;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/k;->h:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lf2/j;

    .line 22
    .line 23
    iget-object v1, v1, Lf2/j;->a:Lf2/a;

    .line 24
    .line 25
    invoke-virtual {v1}, Lf2/a;->i()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public o()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf2/k;->h:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lf2/j;

    .line 22
    .line 23
    iget-object v3, v2, Lf2/j;->a:Lf2/a;

    .line 24
    .line 25
    iget-object v4, v2, Lf2/j;->b:Lf2/h;

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Lf2/a;->n(Lf2/d0;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, v2, Lf2/j;->c:Lf2/i;

    .line 31
    .line 32
    iget-object v2, v2, Lf2/j;->a:Lf2/a;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Lf2/a;->q(Lf2/i0;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lf2/a;->p(Lb2/e;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public abstract s(Ljava/lang/Object;Lf2/c0;)Lf2/c0;
.end method

.method public t(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    return-wide p2
.end method

.method public u(ILjava/lang/Object;)I
    .locals 0

    .line 1
    return p1
.end method

.method public abstract v(Ljava/lang/Object;Lf2/a;Lr1/q0;)V
.end method

.method public final w(Ljava/lang/Object;Lf2/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf2/k;->h:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    xor-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    invoke-static {v1}, La9/o;->k(Z)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lf2/h;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lf2/h;-><init>(Lf2/k;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lf2/i;

    .line 18
    .line 19
    invoke-direct {v2, p0, p1}, Lf2/i;-><init>(Lf2/k;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lf2/j;

    .line 23
    .line 24
    invoke-direct {v3, p2, v1, v2}, Lf2/j;-><init>(Lf2/a;Lf2/h;Lf2/i;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lf2/k;->i:Landroid/os/Handler;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v0, p2, Lf2/a;->c:Lb2/d;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v3, Lf2/h0;

    .line 44
    .line 45
    invoke-direct {v3, p1, v2}, Lf2/h0;-><init>(Landroid/os/Handler;Lf2/i0;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, v0, Lb2/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    invoke-virtual {p1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lf2/k;->i:Landroid/os/Handler;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v0, p2, Lf2/a;->d:Lb2/d;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance v3, Lb2/c;

    .line 64
    .line 65
    invoke-direct {v3, p1, v2}, Lb2/c;-><init>(Landroid/os/Handler;Lb2/e;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, v0, Lb2/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    .line 70
    invoke-virtual {p1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lf2/k;->j:Lw1/x;

    .line 74
    .line 75
    iget-object v0, p0, Lf2/a;->g:Lz1/i;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v1, p1, v0}, Lf2/a;->j(Lf2/d0;Lw1/x;Lz1/i;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lf2/a;->b:Ljava/util/HashSet;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_0

    .line 90
    .line 91
    invoke-virtual {p2, v1}, Lf2/a;->b(Lf2/d0;)V

    .line 92
    .line 93
    .line 94
    :cond_0
    return-void
.end method
