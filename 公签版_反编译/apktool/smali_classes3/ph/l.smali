.class public Lph/l;
.super Lph/q;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lj$/lang/Iterable;


# static fields
.field public static final g:Ljava/util/List;

.field public static final h:Lph/k;

.field public static final i:Ljava/lang/String;


# instance fields
.field public final d:Lqh/f0;

.field public e:Lph/k;

.field public f:Lph/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lph/l;->g:Ljava/util/List;

    .line 6
    .line 7
    new-instance v0, Lph/k;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1}, Lph/k;-><init>(I)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lph/l;->h:Lph/k;

    .line 14
    .line 15
    const-string v0, "\\s+"

    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 18
    .line 19
    .line 20
    const-string v0, "/baseUri"

    .line 21
    .line 22
    sput-object v0, Lph/l;->i:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lqh/f0;Ljava/lang/String;Lph/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lph/q;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lnh/b;->d0(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lph/l;->h:Lph/k;

    .line 8
    .line 9
    iput-object v0, p0, Lph/l;->e:Lph/k;

    .line 10
    .line 11
    iput-object p3, p0, Lph/l;->f:Lph/c;

    .line 12
    .line 13
    iput-object p1, p0, Lph/l;->d:Lqh/f0;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lph/l;->F(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static C(Ljava/lang/StringBuilder;Lph/x;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lph/p;->A()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p1, Lph/q;->a:Lph/l;

    .line 6
    .line 7
    instance-of v2, v1, Lph/l;

    .line 8
    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :cond_0
    iget-object v3, v1, Lph/l;->d:Lqh/f0;

    .line 13
    .line 14
    iget v3, v3, Lqh/f0;->d:I

    .line 15
    .line 16
    and-int/lit8 v3, v3, 0x40

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, v1, Lph/q;->a:Lph/l;

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    const/4 v3, 0x6

    .line 26
    if-ge v2, v3, :cond_2

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    :cond_2
    instance-of p1, p1, Lph/d;

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    invoke-static {p0}, Lph/x;->D(Ljava/lang/StringBuilder;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-static {p0, v0, p1}, Loh/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void
.end method


# virtual methods
.method public final A(Lph/q;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lnh/b;->d0(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lph/q;->a:Lph/l;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lph/q;->x(Lph/q;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-object p0, p1, Lph/q;->a:Lph/l;

    .line 12
    .line 13
    invoke-virtual {p0}, Lph/l;->h()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lph/l;->e:Lph/k;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lph/l;->e:Lph/k;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    iput v0, p1, Lph/q;->b:I

    .line 30
    .line 31
    return-void
.end method

.method public final B(Ljava/lang/String;)Lph/l;
    .locals 5

    .line 1
    iget-object v0, p0, Lph/l;->d:Lqh/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lqh/f0;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lph/q;->t()Lph/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v1, Lph/h;->k:Lqh/e0;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lqh/e0;

    .line 15
    .line 16
    new-instance v2, Lqh/c;

    .line 17
    .line 18
    invoke-direct {v2}, Lqh/c;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Lqh/e0;-><init>(Lqh/c;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    new-instance v2, Lph/l;

    .line 25
    .line 26
    iget-object v3, v1, Lqh/e0;->d:Lqh/h0;

    .line 27
    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    iget-object v3, v1, Lqh/e0;->a:Lqh/c;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v3, Lqh/h0;

    .line 36
    .line 37
    sget-object v4, Lqh/h0;->c:Lqh/h0;

    .line 38
    .line 39
    invoke-direct {v3, v4}, Lqh/h0;-><init>(Lqh/h0;)V

    .line 40
    .line 41
    .line 42
    iput-object v3, v1, Lqh/e0;->d:Lqh/h0;

    .line 43
    .line 44
    :cond_1
    iget-object v3, v1, Lqh/e0;->d:Lqh/h0;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Loh/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget-object v1, v1, Lqh/e0;->c:Lqh/d0;

    .line 54
    .line 55
    iget-boolean v1, v1, Lqh/d0;->a:Z

    .line 56
    .line 57
    invoke-virtual {v3, p1, v4, v0, v1}, Lqh/h0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lqh/f0;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lph/l;->d()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-direct {v2, p1, v0, v1}, Lph/l;-><init>(Lqh/f0;Ljava/lang/String;Lph/c;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v2}, Lph/l;->A(Lph/q;)V

    .line 70
    .line 71
    .line 72
    return-object v2
.end method

.method public final D()Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lph/l;->e:Lph/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lph/l;->g:Ljava/util/List;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lph/l;->c()Lph/c;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lph/c;->l()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "jsoup.childEls"

    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    const-string v3, "jsoup.childElsMod"

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/util/List;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Integer;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v4, p0, Lph/l;->e:Lph/k;

    .line 53
    .line 54
    invoke-virtual {v4}, Lph/k;->b()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-ne v0, v4, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 v2, 0x0

    .line 62
    :goto_0
    if-nez v2, :cond_2

    .line 63
    .line 64
    const-class v0, Lph/l;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lph/l;->H(Ljava/lang/Class;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p0}, Lph/l;->c()Lph/c;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lph/c;->l()Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v4, Ljava/lang/ref/WeakReference;

    .line 79
    .line 80
    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lph/l;->e:Lph/k;

    .line 87
    .line 88
    invoke-virtual {v1}, Lph/k;->b()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :cond_2
    return-object v2
.end method

.method public E()Lph/l;
    .locals 1

    .line 1
    invoke-super {p0}, Lph/q;->f()Lph/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lph/l;

    .line 6
    .line 7
    return-object v0
.end method

.method public final F(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lph/l;->c()Lph/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lph/l;->i:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lph/c;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final G()I
    .locals 5

    .line 1
    iget-object v0, p0, Lph/q;->a:Lph/l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lph/l;->D()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-ne v4, p0, :cond_1

    .line 23
    .line 24
    move v1, v3

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    :goto_1
    return v1
.end method

.method public final H(Ljava/lang/Class;)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lph/l;->e:Lph/k;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/hierynomus/smbj/auth/a;

    .line 8
    .line 9
    const/4 v2, 0x6

    .line 10
    invoke-direct {v1, v2, p1}, Lcom/hierynomus/smbj/auth/a;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lmg/b;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {v1, v2, p1}, Lmg/b;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, La2/n;

    .line 32
    .line 33
    const/4 v2, 0x5

    .line 34
    invoke-direct {v1, v2}, La2/n;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lj$/util/stream/Collectors;->collectingAndThen(Lj$/util/stream/Collector;Ljava/util/function/Function;)Lj$/util/stream/Collector;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Ljava/util/List;

    .line 46
    .line 47
    return-object p1
.end method

.method public final I()Lph/l;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lph/q;->i()Lph/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    if-eqz v0, :cond_1

    .line 6
    .line 7
    instance-of v1, v0, Lph/l;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lph/l;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lph/q;->n()Lph/q;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public J(Loh/a;Lph/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lph/l;->e:Lph/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "</"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget p2, p2, Lph/g;->f:I

    .line 16
    .line 17
    iget-object v0, p0, Lph/l;->d:Lqh/f0;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-ne p2, v1, :cond_0

    .line 21
    .line 22
    iget-object p2, v0, Lqh/f0;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, p2}, Lph/a;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p2, v0, Lqh/f0;->b:Ljava/lang/String;

    .line 30
    .line 31
    :goto_0
    invoke-virtual {p1, p2}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/16 p2, 0x3e

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Loh/a;->a(C)Loh/a;

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final K()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Loh/f;->b()Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lph/l;->e:Lph/k;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lph/l;->e:Lph/k;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lph/q;

    .line 21
    .line 22
    instance-of v3, v2, Lph/x;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    check-cast v2, Lph/x;

    .line 27
    .line 28
    invoke-static {v0, v2}, Lph/l;->C(Ljava/lang/StringBuilder;Lph/x;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const-string v3, "br"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Lph/q;->l(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-static {v0}, Lph/x;->D(Ljava/lang/StringBuilder;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    const-string v2, " "

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-static {v0}, Loh/f;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

.method public final L(Ljava/lang/String;)Lrh/e;
    .locals 3

    .line 1
    invoke-static {p1}, Lnh/b;->b0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lrh/v;->R(Ljava/lang/String;)Lrh/p;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lrh/p;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-class v1, Lph/l;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lrh/p;->e()V

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v1}, Lq4/a;->b0(Lph/q;Ljava/lang/Class;)Lj$/util/stream/Stream;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lrh/f;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-direct {v1, p1, p0, v2}, Lrh/f;-><init>(Lrh/p;Lph/l;I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lrh/p;->e()V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v1}, Lq4/a;->b0(Lph/q;Ljava/lang/Class;)Lj$/util/stream/Stream;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lrh/f;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-direct {v1, p1, p0, v2}, Lrh/f;-><init>(Lrh/p;Lph/l;I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :goto_0
    new-instance v0, Lah/a;

    .line 52
    .line 53
    const/4 v1, 0x7

    .line 54
    invoke-direct {v0, v1}, Lah/a;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lj$/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lrh/e;

    .line 66
    .line 67
    return-object p1
.end method

.method public final M()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Loh/f;->b()Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ll5/y;

    .line 6
    .line 7
    const/16 v2, 0xb

    .line 8
    .line 9
    invoke-direct {v1, v2, v0}, Ll5/y;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v1, p0}, Lorg/bouncycastle/jcajce/provider/digest/a;->a(Lrh/u;Lph/q;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Loh/f;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public final c()Lph/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lph/l;->f:Lph/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lph/c;

    .line 6
    .line 7
    invoke-direct {v0}, Lph/c;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lph/l;->f:Lph/c;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lph/l;->f:Lph/c;

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lph/l;->E()Lph/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    .line 1
    move-object v0, p0

    .line 2
    :goto_0
    if-eqz v0, :cond_1

    .line 3
    .line 4
    iget-object v1, v0, Lph/l;->f:Lph/c;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget-object v2, Lph/l;->i:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lph/c;->g(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v3, -0x1

    .line 15
    if-eq v1, v3, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lph/l;->f:Lph/c;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lph/c;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, v0, Lph/q;->a:Lph/l;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string v0, ""

    .line 28
    .line 29
    :goto_1
    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lph/l;->e:Lph/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic f()Lph/q;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lph/l;->E()Lph/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    const-class v0, Lph/l;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lq4/a;->b0(Lph/q;Ljava/lang/Class;)Lj$/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final g(Lph/q;)Lph/q;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lph/q;->g(Lph/q;)Lph/q;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lph/l;

    .line 6
    .line 7
    new-instance v0, Lph/k;

    .line 8
    .line 9
    iget-object v1, p0, Lph/l;->e:Lph/k;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-direct {v0, v1}, Lph/k;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p1, Lph/l;->e:Lph/k;

    .line 19
    .line 20
    iget-object v1, p0, Lph/l;->e:Lph/k;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lph/l;->f:Lph/c;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lph/c;->c()Lph/c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p1, Lph/l;->f:Lph/c;

    .line 34
    .line 35
    invoke-virtual {v0}, Lph/c;->l()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "jsoup.childEls"

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_0
    return-object p1
.end method

.method public final h()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lph/l;->e:Lph/k;

    .line 2
    .line 3
    sget-object v1, Lph/l;->h:Lph/k;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lph/k;

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-direct {v0, v1}, Lph/k;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lph/l;->e:Lph/k;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lph/l;->e:Lph/k;

    .line 16
    .line 17
    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lph/r;

    .line 2
    .line 3
    const-class v1, Lph/l;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lph/r;-><init>(Lph/q;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lph/l;->f:Lph/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lph/l;->d:Lqh/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lqh/f0;->b:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lph/l;->e:Lph/k;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, La2/n;

    .line 8
    .line 9
    const/4 v2, 0x6

    .line 10
    invoke-direct {v1, v2}, La2/n;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, ""

    .line 18
    .line 19
    invoke-static {v1}, Loh/f;->k(Ljava/lang/String;)Lj$/util/stream/Collector;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lph/l;->d:Lqh/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lqh/f0;->c:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public s(Loh/a;Lph/g;)V
    .locals 5

    .line 1
    iget v0, p2, Lph/g;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lph/l;->d:Lqh/f0;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    .line 8
    iget-object v0, v1, Lqh/f0;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v2, v0}, Lph/a;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, v1, Lqh/f0;->b:Ljava/lang/String;

    .line 16
    .line 17
    :goto_0
    const/16 v1, 0x3c

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Loh/a;->a(C)Loh/a;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lph/l;->f:Lph/c;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1, p1, p2}, Lph/c;->f(Loh/a;Lph/g;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Lph/l;->e:Lph/k;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/16 v3, 0x3e

    .line 40
    .line 41
    if-eqz v1, :cond_8

    .line 42
    .line 43
    iget-object v1, p0, Lph/l;->d:Lqh/f0;

    .line 44
    .line 45
    iget p2, p2, Lph/g;->f:I

    .line 46
    .line 47
    if-eq p2, v2, :cond_3

    .line 48
    .line 49
    iget-object p2, v1, Lqh/f0;->a:Ljava/lang/String;

    .line 50
    .line 51
    const-string v4, "http://www.w3.org/1999/xhtml"

    .line 52
    .line 53
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 p2, 0x0

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    :goto_1
    const/4 p2, 0x1

    .line 63
    :goto_2
    if-eqz p2, :cond_6

    .line 64
    .line 65
    const/16 v4, 0x20

    .line 66
    .line 67
    invoke-virtual {v1, v4}, Lqh/f0;->b(I)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-nez v4, :cond_5

    .line 72
    .line 73
    invoke-virtual {v1}, Lqh/f0;->c()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_6

    .line 78
    .line 79
    iget v4, v1, Lqh/f0;->d:I

    .line 80
    .line 81
    and-int/2addr v4, v2

    .line 82
    if-eqz v4, :cond_4

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_4
    invoke-virtual {v1}, Lqh/f0;->d()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_6

    .line 90
    .line 91
    :cond_5
    :goto_3
    const-string p2, " />"

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_6
    if-nez p2, :cond_7

    .line 98
    .line 99
    iget p2, v1, Lqh/f0;->d:I

    .line 100
    .line 101
    and-int/2addr p2, v2

    .line 102
    if-eqz p2, :cond_7

    .line 103
    .line 104
    invoke-virtual {p1, v3}, Loh/a;->a(C)Loh/a;

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_7
    const-string p2, "></"

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1, v0}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1, v3}, Loh/a;->a(C)Loh/a;

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_8
    invoke-virtual {p1, v3}, Loh/a;->a(C)Loh/a;

    .line 123
    .line 124
    .line 125
    :goto_4
    return-void
.end method

.method public final synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 2
    invoke-static {p0}, Lj$/lang/Iterable$-CC;->$default$spliterator(Ljava/lang/Iterable;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 1
    invoke-static {p0}, Lj$/lang/Iterable$-CC;->$default$spliterator(Ljava/lang/Iterable;)Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lph/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lph/q;->a:Lph/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Lph/q;
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    :goto_0
    iget-object v1, v0, Lph/q;->a:Lph/l;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    return-object v0
.end method
