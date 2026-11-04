.class public final enum Lwh/d;
.super Lwh/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "QUARTER_OF_YEAR"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lwh/g;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(Lwh/k;)J
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
    sget-object v0, Lwh/a;->A:Lwh/a;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lwh/k;->b(Lwh/m;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, 0x2

    .line 14
    .line 15
    add-long/2addr v0, v2

    .line 16
    const-wide/16 v2, 0x3

    .line 17
    .line 18
    div-long/2addr v0, v2

    .line 19
    return-wide v0

    .line 20
    :cond_0
    new-instance p1, Lwh/q;

    .line 21
    .line 22
    const-string v0, "Unsupported field: QuarterOfYear"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public final d()Lwh/r;
    .locals 4

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    const-wide/16 v2, 0x4

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Lwh/r;->c(JJ)Lwh/r;

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
    sget-object v0, Lwh/a;->A:Lwh/a;

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
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lwh/d;->a(Lwh/k;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lwh/d;->d()Lwh/r;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, p2, p3, p0}, Lwh/r;->b(JLwh/m;)V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lwh/a;->A:Lwh/a;

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
    const-wide/16 v0, 0x3

    .line 20
    .line 21
    mul-long p2, p2, v0

    .line 22
    .line 23
    add-long/2addr p2, v3

    .line 24
    invoke-interface {p1, p2, p3, v2}, Lwh/j;->a(JLwh/m;)Lwh/j;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "QuarterOfYear"

    .line 2
    .line 3
    return-object v0
.end method
