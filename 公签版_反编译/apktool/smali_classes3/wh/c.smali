.class public final enum Lwh/c;
.super Lwh/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "DAY_OF_QUARTER"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lwh/g;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(Lwh/k;)J
    .locals 5

    .line 1
    invoke-interface {p1, p0}, Lwh/k;->d(Lwh/m;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lwh/a;->w:Lwh/a;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lwh/k;->i(Lwh/m;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sget-object v1, Lwh/a;->A:Lwh/a;

    .line 14
    .line 15
    invoke-interface {p1, v1}, Lwh/k;->i(Lwh/m;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sget-object v2, Lwh/a;->D:Lwh/a;

    .line 20
    .line 21
    invoke-interface {p1, v2}, Lwh/k;->b(Lwh/m;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    sget-object p1, Lwh/g;->d:[I

    .line 26
    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 28
    .line 29
    div-int/lit8 v1, v1, 0x3

    .line 30
    .line 31
    sget-object v4, Lth/e;->a:Lth/e;

    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3}, Lth/e;->b(J)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v2, 0x0

    .line 45
    :goto_0
    add-int/2addr v1, v2

    .line 46
    aget p1, p1, v1

    .line 47
    .line 48
    sub-int/2addr v0, p1

    .line 49
    int-to-long v0, v0

    .line 50
    return-wide v0

    .line 51
    :cond_1
    new-instance p1, Lwh/q;

    .line 52
    .line 53
    const-string v0, "Unsupported field: DayOfQuarter"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public final c(Lwh/k;)Lwh/r;
    .locals 8

    .line 1
    invoke-interface {p1, p0}, Lwh/k;->d(Lwh/m;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    sget-object v0, Lwh/g;->a:Lwh/d;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lwh/k;->b(Lwh/m;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, 0x5b

    .line 14
    .line 15
    const-wide/16 v4, 0x1

    .line 16
    .line 17
    cmp-long v6, v0, v4

    .line 18
    .line 19
    if-nez v6, :cond_1

    .line 20
    .line 21
    sget-object v0, Lwh/a;->D:Lwh/a;

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lwh/k;->b(Lwh/m;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    sget-object p1, Lth/e;->a:Lth/e;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lth/e;->b(J)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-static {v4, v5, v2, v3}, Lwh/r;->c(JJ)Lwh/r;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-wide/16 v0, 0x5a

    .line 44
    .line 45
    invoke-static {v4, v5, v0, v1}, Lwh/r;->c(JJ)Lwh/r;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_0
    return-object p1

    .line 50
    :cond_1
    const-wide/16 v6, 0x2

    .line 51
    .line 52
    cmp-long p1, v0, v6

    .line 53
    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    invoke-static {v4, v5, v2, v3}, Lwh/r;->c(JJ)Lwh/r;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_2
    const-wide/16 v2, 0x3

    .line 62
    .line 63
    cmp-long p1, v0, v2

    .line 64
    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    const-wide/16 v2, 0x4

    .line 68
    .line 69
    cmp-long p1, v0, v2

    .line 70
    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {p0}, Lwh/c;->d()Lwh/r;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :cond_4
    :goto_1
    const-wide/16 v0, 0x5c

    .line 80
    .line 81
    invoke-static {v4, v5, v0, v1}, Lwh/r;->c(JJ)Lwh/r;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    :cond_5
    new-instance p1, Lwh/q;

    .line 87
    .line 88
    const-string v0, "Unsupported field: DayOfQuarter"

    .line 89
    .line 90
    invoke-direct {p1, v0}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method public final d()Lwh/r;
    .locals 4

    .line 1
    const-wide/16 v0, 0x5a

    .line 2
    .line 3
    const-wide/16 v2, 0x5c

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Lwh/r;->d(JJ)Lwh/r;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final f(Lwh/k;)Z
    .locals 1

    .line 1
    sget-object v0, Lwh/a;->w:Lwh/a;

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
    sget-object v0, Lwh/a;->A:Lwh/a;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lwh/k;->d(Lwh/m;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lwh/a;->D:Lwh/a;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Lwh/k;->d(Lwh/m;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Lth/d;->a(Lwh/k;)Lth/d;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v0, Lth/e;->a:Lth/e;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lth/d;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    return p1
.end method

.method public final g(Lwh/j;J)Lwh/j;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lwh/c;->a(Lwh/k;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lwh/c;->d()Lwh/r;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, p2, p3, p0}, Lwh/r;->b(JLwh/m;)V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lwh/a;->w:Lwh/a;

    .line 13
    .line 14
    invoke-interface {p1, v2}, Lwh/k;->b(Lwh/m;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    sub-long/2addr p2, v0

    .line 19
    add-long/2addr p2, v3

    .line 20
    invoke-interface {p1, p2, p3, v2}, Lwh/j;->a(JLwh/m;)Lwh/j;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "DayOfQuarter"

    .line 2
    .line 3
    return-object v0
.end method
