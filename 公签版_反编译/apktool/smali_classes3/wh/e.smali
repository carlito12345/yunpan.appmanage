.class public final enum Lwh/e;
.super Lwh/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "WEEK_OF_WEEK_BASED_YEAR"

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-static {p1}, Lwh/g;->h(Lsh/e;)I

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
    const-string v0, "Unsupported field: WeekOfWeekBasedYear"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final c(Lwh/k;)Lwh/r;
    .locals 4

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
    invoke-static {p1}, Lwh/g;->j(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    int-to-long v0, p1

    .line 20
    const-wide/16 v2, 0x1

    .line 21
    .line 22
    invoke-static {v2, v3, v0, v1}, Lwh/r;->c(JJ)Lwh/r;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance p1, Lwh/q;

    .line 28
    .line 29
    const-string v0, "Unsupported field: WeekOfWeekBasedYear"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public final d()Lwh/r;
    .locals 4

    .line 1
    const-wide/16 v0, 0x34

    .line 2
    .line 3
    const-wide/16 v2, 0x35

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
    .locals 9

    .line 1
    invoke-virtual {p0}, Lwh/e;->d()Lwh/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2, p3, p0}, Lwh/r;->b(JLwh/m;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lwh/e;->a(Lwh/k;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    sub-long v2, p2, v0

    .line 13
    .line 14
    xor-long v4, p2, v2

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    cmp-long v8, v4, v6

    .line 19
    .line 20
    if-gez v8, :cond_1

    .line 21
    .line 22
    xor-long v4, p2, v0

    .line 23
    .line 24
    cmp-long v8, v4, v6

    .line 25
    .line 26
    if-ltz v8, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    .line 30
    .line 31
    const-string v2, "Subtraction overflows a long: "

    .line 32
    .line 33
    const-string v3, " - "

    .line 34
    .line 35
    invoke-static {p2, p3, v2, v3}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_1
    :goto_0
    sget-object p2, Lwh/b;->d:Lwh/b;

    .line 51
    .line 52
    invoke-interface {p1, v2, v3, p2}, Lwh/j;->j(JLwh/b;)Lwh/j;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "WeekOfWeekBasedYear"

    .line 2
    .line 3
    return-object v0
.end method
