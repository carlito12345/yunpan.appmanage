.class public final enum Lwh/f;
.super Lwh/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "WEEK_BASED_YEAR"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {p0, v0, v1}, Lwh/g;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(Lwh/k;)J
    .locals 2

    .line 1
    invoke-interface {p1, p0}, Lwh/k;->d(Lwh/m;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lsh/e;->q(Lwh/k;)Lsh/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lwh/g;->i(Lsh/e;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    int-to-long v0, p1

    .line 16
    return-wide v0

    .line 17
    :cond_0
    new-instance p1, Lwh/q;

    .line 18
    .line 19
    const-string v0, "Unsupported field: WeekBasedYear"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final c(Lwh/k;)Lwh/r;
    .locals 0

    .line 1
    sget-object p1, Lwh/a;->D:Lwh/a;

    .line 2
    .line 3
    iget-object p1, p1, Lwh/a;->b:Lwh/r;

    .line 4
    .line 5
    return-object p1
.end method

.method public final d()Lwh/r;
    .locals 1

    .line 1
    sget-object v0, Lwh/a;->D:Lwh/a;

    .line 2
    .line 3
    iget-object v0, v0, Lwh/a;->b:Lwh/r;

    .line 4
    .line 5
    return-object v0
.end method

.method public final f(Lwh/k;)Z
    .locals 1

    .line 1
    sget-object v0, Lwh/a;->x:Lwh/a;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lwh/k;->d(Lwh/m;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lth/d;->a(Lwh/k;)Lth/d;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lth/e;->a:Lth/e;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lth/d;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public final g(Lwh/j;J)Lwh/j;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lwh/f;->f(Lwh/k;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lwh/a;->D:Lwh/a;

    .line 8
    .line 9
    iget-object v0, v0, Lwh/a;->b:Lwh/r;

    .line 10
    .line 11
    sget-object v1, Lwh/g;->c:Lwh/f;

    .line 12
    .line 13
    invoke-virtual {v0, p2, p3, v1}, Lwh/r;->a(JLwh/m;)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-static {p1}, Lsh/e;->q(Lwh/k;)Lsh/e;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    sget-object v0, Lwh/a;->r:Lwh/a;

    .line 22
    .line 23
    invoke-virtual {p3, v0}, Lsh/e;->i(Lwh/m;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {p3}, Lwh/g;->h(Lsh/e;)I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    const/16 v2, 0x35

    .line 32
    .line 33
    if-ne p3, v2, :cond_0

    .line 34
    .line 35
    invoke-static {p2}, Lwh/g;->j(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/16 v3, 0x34

    .line 40
    .line 41
    if-ne v2, v3, :cond_0

    .line 42
    .line 43
    const/16 p3, 0x34

    .line 44
    .line 45
    :cond_0
    const/4 v2, 0x1

    .line 46
    const/4 v3, 0x4

    .line 47
    invoke-static {p2, v2, v3}, Lsh/e;->v(III)Lsh/e;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2, v0}, Lsh/e;->i(Lwh/m;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    sub-int/2addr v1, v0

    .line 56
    sub-int/2addr p3, v2

    .line 57
    mul-int/lit8 p3, p3, 0x7

    .line 58
    .line 59
    add-int/2addr p3, v1

    .line 60
    int-to-long v0, p3

    .line 61
    invoke-virtual {p2, v0, v1}, Lsh/e;->y(J)Lsh/e;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-interface {p1, p2}, Lwh/j;->h(Lsh/e;)Lwh/j;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :cond_1
    new-instance p1, Lwh/q;

    .line 71
    .line 72
    const-string p2, "Unsupported field: WeekBasedYear"

    .line 73
    .line 74
    invoke-direct {p1, p2}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "WeekBasedYear"

    .line 2
    .line 3
    return-object v0
.end method
