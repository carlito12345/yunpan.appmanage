.class public final Lz7/s;
.super Lz7/p;
.source "SourceFile"


# instance fields
.field public final a:Lb8/n;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lz7/p;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb8/n;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lb8/n;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lz7/s;->a:Lb8/n;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lz7/p;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lz7/s;->n()Lz7/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eq p1, p0, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Lz7/s;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lz7/s;

    .line 8
    .line 9
    iget-object p1, p1, Lz7/s;->a:Lb8/n;

    .line 10
    .line 11
    iget-object v0, p0, Lz7/s;->a:Lb8/n;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    :goto_1
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lz7/s;->a:Lb8/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final j(Ljava/lang/String;Lz7/p;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p2, Lz7/r;->a:Lz7/r;

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lz7/s;->a:Lb8/n;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lb8/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    new-instance v0, Lz7/t;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lz7/t;-><init>(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p2, Lz7/r;->a:Lz7/r;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lz7/t;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Lz7/t;-><init>(Ljava/lang/Number;)V

    .line 9
    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :goto_0
    invoke-virtual {p0, p1, p2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p2, Lz7/r;->a:Lz7/r;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lz7/t;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Lz7/t;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :goto_0
    invoke-virtual {p0, p1, p2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final n()Lz7/s;
    .locals 6

    .line 1
    new-instance v0, Lz7/s;

    .line 2
    .line 3
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lz7/s;->a:Lb8/n;

    .line 7
    .line 8
    invoke-virtual {v1}, Lb8/n;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lb8/l;

    .line 13
    .line 14
    iget-object v1, v1, Lb8/l;->b:Ljava/util/Map;

    .line 15
    .line 16
    check-cast v1, Lb8/n;

    .line 17
    .line 18
    iget-object v2, v1, Lb8/n;->f:Lb8/m;

    .line 19
    .line 20
    iget-object v2, v2, Lb8/m;->d:Lb8/m;

    .line 21
    .line 22
    iget v3, v1, Lb8/n;->e:I

    .line 23
    .line 24
    :goto_0
    iget-object v4, v1, Lb8/n;->f:Lb8/m;

    .line 25
    .line 26
    if-eq v2, v4, :cond_0

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v4, 0x0

    .line 31
    :goto_1
    if-eqz v4, :cond_3

    .line 32
    .line 33
    iget-object v4, v1, Lb8/n;->f:Lb8/m;

    .line 34
    .line 35
    if-eq v2, v4, :cond_2

    .line 36
    .line 37
    iget v4, v1, Lb8/n;->e:I

    .line 38
    .line 39
    if-ne v4, v3, :cond_1

    .line 40
    .line 41
    iget-object v4, v2, Lb8/m;->d:Lb8/m;

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lz7/p;

    .line 54
    .line 55
    invoke-virtual {v2}, Lz7/p;->a()Lz7/p;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v5, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 60
    .line 61
    .line 62
    move-object v2, v4

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_3
    return-object v0
.end method

.method public final o(Ljava/lang/String;)Lz7/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lz7/s;->a:Lb8/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lb8/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lz7/p;

    .line 8
    .line 9
    return-object p1
.end method

.method public final p(Ljava/lang/String;)Lz7/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lz7/s;->a:Lb8/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lb8/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lz7/o;

    .line 8
    .line 9
    return-object p1
.end method

.method public final q(Ljava/lang/String;)Lz7/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lz7/s;->a:Lb8/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lb8/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lz7/s;

    .line 8
    .line 9
    return-object p1
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz7/s;->a:Lb8/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lb8/n;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lz7/p;

    .line 8
    .line 9
    return-void
.end method
