.class public final Lsh/f;
.super Lth/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lsh/f;

.field public static final d:Lsh/f;


# instance fields
.field public final a:Lsh/e;

.field public final b:Lsh/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lsh/e;->d:Lsh/e;

    .line 2
    .line 3
    sget-object v1, Lsh/g;->e:Lsh/g;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lsh/f;->q(Lsh/e;Lsh/g;)Lsh/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lsh/f;->c:Lsh/f;

    .line 10
    .line 11
    sget-object v0, Lsh/e;->e:Lsh/e;

    .line 12
    .line 13
    sget-object v1, Lsh/g;->f:Lsh/g;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lsh/f;->q(Lsh/e;Lsh/g;)Lsh/f;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lsh/f;->d:Lsh/f;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lsh/e;Lsh/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lth/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsh/f;->a:Lsh/e;

    .line 5
    .line 6
    iput-object p2, p0, Lsh/f;->b:Lsh/g;

    .line 7
    .line 8
    return-void
.end method

.method public static q(Lsh/e;Lsh/g;)Lsh/f;
    .locals 1

    .line 1
    const-string v0, "date"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lif/a;->t0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "time"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lif/a;->t0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lsh/f;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lsh/f;-><init>(Lsh/e;Lsh/g;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static r(JILsh/p;)Lsh/f;
    .locals 4

    .line 1
    const-string v0, "offset"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lif/a;->t0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p3, p3, Lsh/p;->a:I

    .line 7
    .line 8
    int-to-long v0, p3

    .line 9
    add-long/2addr p0, v0

    .line 10
    const-wide/32 v0, 0x15180

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1, v0, v1}, Lif/a;->C(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const p3, 0x15180

    .line 18
    .line 19
    .line 20
    invoke-static {p3, p0, p1}, Lif/a;->D(IJ)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {v0, v1}, Lsh/e;->w(J)Lsh/e;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    int-to-long v0, p0

    .line 29
    sget-object p0, Lsh/g;->e:Lsh/g;

    .line 30
    .line 31
    sget-object p0, Lwh/a;->j:Lwh/a;

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Lwh/a;->h(J)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lwh/a;->c:Lwh/a;

    .line 37
    .line 38
    int-to-long v2, p2

    .line 39
    invoke-virtual {p0, v2, v3}, Lwh/a;->h(J)V

    .line 40
    .line 41
    .line 42
    const-wide/16 v2, 0xe10

    .line 43
    .line 44
    div-long v2, v0, v2

    .line 45
    .line 46
    long-to-int p0, v2

    .line 47
    mul-int/lit16 p3, p0, 0xe10

    .line 48
    .line 49
    int-to-long v2, p3

    .line 50
    sub-long/2addr v0, v2

    .line 51
    const-wide/16 v2, 0x3c

    .line 52
    .line 53
    div-long v2, v0, v2

    .line 54
    .line 55
    long-to-int p3, v2

    .line 56
    mul-int/lit8 v2, p3, 0x3c

    .line 57
    .line 58
    int-to-long v2, v2

    .line 59
    sub-long/2addr v0, v2

    .line 60
    long-to-int v1, v0

    .line 61
    invoke-static {p0, p3, v1, p2}, Lsh/g;->n(IIII)Lsh/g;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    new-instance p2, Lsh/f;

    .line 66
    .line 67
    invoke-direct {p2, p1, p0}, Lsh/f;-><init>(Lsh/e;Lsh/g;)V

    .line 68
    .line 69
    .line 70
    return-object p2
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InvalidObjectException;

    .line 2
    .line 3
    const-string v1, "Deserialization via serialization delegate"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lsh/l;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1, p0}, Lsh/l;-><init>(BLjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(JLwh/m;)Lwh/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lsh/f;->v(JLwh/m;)Lsh/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final b(Lwh/m;)J
    .locals 2

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lwh/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lwh/a;->i()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lsh/f;->b:Lsh/g;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lsh/g;->b(Lwh/m;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lsh/f;->a:Lsh/e;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lsh/e;->b(Lwh/m;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    :goto_0
    return-wide v0

    .line 28
    :cond_1
    invoke-interface {p1, p0}, Lwh/m;->a(Lwh/k;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    return-wide v0
.end method

.method public final c(Lwh/o;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lwh/n;->f:Ls5/c;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lsh/f;->a:Lsh/e;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lth/b;->c(Lwh/o;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lth/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lsh/f;->n(Lth/b;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final d(Lwh/m;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    check-cast p1, Lwh/a;

    .line 8
    .line 9
    invoke-virtual {p1}, Lwh/a;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lwh/a;->i()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :cond_1
    :goto_0
    return v1

    .line 24
    :cond_2
    if-eqz p1, :cond_3

    .line 25
    .line 26
    invoke-interface {p1, p0}, Lwh/m;->f(Lwh/k;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    const/4 v1, 0x0

    .line 34
    :goto_1
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lsh/f;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lsh/f;

    .line 11
    .line 12
    iget-object v1, p1, Lsh/f;->a:Lsh/e;

    .line 13
    .line 14
    iget-object v3, p0, Lsh/f;->a:Lsh/e;

    .line 15
    .line 16
    invoke-virtual {v3, v1}, Lsh/e;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lsh/f;->b:Lsh/g;

    .line 23
    .line 24
    iget-object p1, p1, Lsh/f;->b:Lsh/g;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lsh/g;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    .line 35
    :cond_2
    return v2
.end method

.method public final f(Lwh/m;)Lwh/r;
    .locals 1

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lwh/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lwh/a;->i()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lsh/f;->b:Lsh/g;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lvh/b;->f(Lwh/m;)Lwh/r;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lsh/f;->a:Lsh/e;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lsh/e;->f(Lwh/m;)Lwh/r;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    return-object p1

    .line 28
    :cond_1
    invoke-interface {p1, p0}, Lwh/m;->c(Lwh/k;)Lwh/r;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public final g(Lwh/j;)Lwh/j;
    .locals 3

    .line 1
    sget-object v0, Lwh/a;->x:Lwh/a;

    .line 2
    .line 3
    iget-object v1, p0, Lsh/f;->a:Lsh/e;

    .line 4
    .line 5
    invoke-virtual {v1}, Lsh/e;->m()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-interface {p1, v1, v2, v0}, Lwh/j;->a(JLwh/m;)Lwh/j;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lwh/a;->d:Lwh/a;

    .line 14
    .line 15
    iget-object v1, p0, Lsh/f;->b:Lsh/g;

    .line 16
    .line 17
    invoke-virtual {v1}, Lsh/g;->w()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-interface {p1, v1, v2, v0}, Lwh/j;->a(JLwh/m;)Lwh/j;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public final h(Lsh/e;)Lwh/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lsh/f;->b:Lsh/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lsh/f;->w(Lsh/e;Lsh/g;)Lsh/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lsh/f;->a:Lsh/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsh/e;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lsh/f;->b:Lsh/g;

    .line 8
    .line 9
    invoke-virtual {v1}, Lsh/g;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public final i(Lwh/m;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lwh/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lwh/a;->i()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lsh/f;->b:Lsh/g;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lsh/g;->i(Lwh/m;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lsh/f;->a:Lsh/e;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lsh/e;->i(Lwh/m;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    :goto_0
    return p1

    .line 28
    :cond_1
    invoke-super {p0, p1}, Lvh/b;->i(Lwh/m;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public final bridge synthetic j(JLwh/b;)Lwh/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lsh/f;->s(JLwh/b;)Lsh/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final l(JLwh/b;)Lwh/j;
    .locals 3

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const-wide p1, 0x7fffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lsh/f;->s(JLwh/b;)Lsh/f;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-wide/16 v0, 0x1

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1, p3}, Lsh/f;->s(JLwh/b;)Lsh/f;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    neg-long p1, p1

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lsh/f;->s(JLwh/b;)Lsh/f;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public final n(Lth/b;)I
    .locals 3

    .line 1
    instance-of v0, p1, Lsh/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lsh/f;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lsh/f;->o(Lsh/f;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    move-object v0, p1

    .line 13
    check-cast v0, Lsh/f;

    .line 14
    .line 15
    iget-object v1, v0, Lsh/f;->a:Lsh/e;

    .line 16
    .line 17
    iget-object v2, p0, Lsh/f;->a:Lsh/e;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Lsh/e;->n(Lth/a;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lsh/f;->b:Lsh/g;

    .line 26
    .line 27
    iget-object v0, v0, Lsh/f;->b:Lsh/g;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lsh/g;->m(Lsh/g;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    sget-object v0, Lth/e;->a:Lth/e;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    check-cast p1, Lsh/f;

    .line 44
    .line 45
    iget-object p1, p1, Lsh/f;->a:Lsh/e;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    :cond_1
    return v1
.end method

.method public final o(Lsh/f;)I
    .locals 2

    .line 1
    iget-object v0, p1, Lsh/f;->a:Lsh/e;

    .line 2
    .line 3
    iget-object v1, p0, Lsh/f;->a:Lsh/e;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lsh/e;->o(Lsh/e;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lsh/f;->b:Lsh/g;

    .line 12
    .line 13
    iget-object p1, p1, Lsh/f;->b:Lsh/g;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lsh/g;->m(Lsh/g;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :cond_0
    return v0
.end method

.method public final p(Lsh/f;)Z
    .locals 7

    .line 1
    instance-of v0, p1, Lsh/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lsh/f;->o(Lsh/f;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-gez p1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_0
    return v1

    .line 15
    :cond_1
    iget-object v0, p0, Lsh/f;->a:Lsh/e;

    .line 16
    .line 17
    invoke-virtual {v0}, Lsh/e;->m()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    iget-object v0, p1, Lsh/f;->a:Lsh/e;

    .line 22
    .line 23
    invoke-virtual {v0}, Lsh/e;->m()J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    cmp-long v0, v3, v5

    .line 28
    .line 29
    if-ltz v0, :cond_2

    .line 30
    .line 31
    cmp-long v0, v3, v5

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lsh/f;->b:Lsh/g;

    .line 36
    .line 37
    invoke-virtual {v0}, Lsh/g;->w()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    iget-object p1, p1, Lsh/f;->b:Lsh/g;

    .line 42
    .line 43
    invoke-virtual {p1}, Lsh/g;->w()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    cmp-long p1, v3, v5

    .line 48
    .line 49
    if-gez p1, :cond_3

    .line 50
    .line 51
    :cond_2
    const/4 v1, 0x1

    .line 52
    :cond_3
    return v1
.end method

.method public final s(JLwh/b;)Lsh/f;
    .locals 21

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-wide/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    instance-of v1, v0, Lwh/b;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, v10, Lsh/f;->b:Lsh/g;

    .line 16
    .line 17
    iget-object v3, v10, Lsh/f;->a:Lsh/e;

    .line 18
    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v8, v9, v0}, Lsh/e;->x(JLwh/b;)Lsh/e;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v10, v0, v2}, Lsh/f;->w(Lsh/e;Lsh/g;)Lsh/f;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :pswitch_0
    const-wide/16 v0, 0x100

    .line 32
    .line 33
    div-long v4, v8, v0

    .line 34
    .line 35
    invoke-virtual {v3, v4, v5}, Lsh/e;->y(J)Lsh/e;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v10, v3, v2}, Lsh/f;->w(Lsh/e;Lsh/g;)Lsh/f;

    .line 40
    .line 41
    .line 42
    move-result-object v11

    .line 43
    rem-long v0, v8, v0

    .line 44
    .line 45
    const-wide/16 v2, 0xc

    .line 46
    .line 47
    mul-long v13, v0, v2

    .line 48
    .line 49
    iget-object v12, v11, Lsh/f;->a:Lsh/e;

    .line 50
    .line 51
    const-wide/16 v19, 0x0

    .line 52
    .line 53
    const-wide/16 v15, 0x0

    .line 54
    .line 55
    const-wide/16 v17, 0x0

    .line 56
    .line 57
    invoke-virtual/range {v11 .. v20}, Lsh/f;->u(Lsh/e;JJJJ)Lsh/f;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0

    .line 62
    :pswitch_1
    iget-object v1, v10, Lsh/f;->a:Lsh/e;

    .line 63
    .line 64
    const-wide/16 v11, 0x0

    .line 65
    .line 66
    const-wide/16 v4, 0x0

    .line 67
    .line 68
    const-wide/16 v6, 0x0

    .line 69
    .line 70
    move-object/from16 v0, p0

    .line 71
    .line 72
    move-wide/from16 v2, p1

    .line 73
    .line 74
    move-wide v8, v11

    .line 75
    invoke-virtual/range {v0 .. v9}, Lsh/f;->u(Lsh/e;JJJJ)Lsh/f;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0

    .line 80
    :pswitch_2
    iget-object v1, v10, Lsh/f;->a:Lsh/e;

    .line 81
    .line 82
    const-wide/16 v11, 0x0

    .line 83
    .line 84
    const-wide/16 v2, 0x0

    .line 85
    .line 86
    const-wide/16 v6, 0x0

    .line 87
    .line 88
    move-object/from16 v0, p0

    .line 89
    .line 90
    move-wide/from16 v4, p1

    .line 91
    .line 92
    move-wide v8, v11

    .line 93
    invoke-virtual/range {v0 .. v9}, Lsh/f;->u(Lsh/e;JJJJ)Lsh/f;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0

    .line 98
    :pswitch_3
    invoke-virtual/range {p0 .. p2}, Lsh/f;->t(J)Lsh/f;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    return-object v0

    .line 103
    :pswitch_4
    const-wide/32 v0, 0x5265c00

    .line 104
    .line 105
    .line 106
    div-long v4, v8, v0

    .line 107
    .line 108
    invoke-virtual {v3, v4, v5}, Lsh/e;->y(J)Lsh/e;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v10, v3, v2}, Lsh/f;->w(Lsh/e;Lsh/g;)Lsh/f;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    rem-long v0, v8, v0

    .line 117
    .line 118
    const-wide/32 v2, 0xf4240

    .line 119
    .line 120
    .line 121
    mul-long v19, v0, v2

    .line 122
    .line 123
    iget-object v12, v11, Lsh/f;->a:Lsh/e;

    .line 124
    .line 125
    const-wide/16 v17, 0x0

    .line 126
    .line 127
    const-wide/16 v13, 0x0

    .line 128
    .line 129
    const-wide/16 v15, 0x0

    .line 130
    .line 131
    invoke-virtual/range {v11 .. v20}, Lsh/f;->u(Lsh/e;JJJJ)Lsh/f;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0

    .line 136
    :pswitch_5
    const-wide v0, 0x141dd76000L

    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    div-long v4, v8, v0

    .line 142
    .line 143
    invoke-virtual {v3, v4, v5}, Lsh/e;->y(J)Lsh/e;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v10, v3, v2}, Lsh/f;->w(Lsh/e;Lsh/g;)Lsh/f;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    rem-long v0, v8, v0

    .line 152
    .line 153
    const-wide/16 v2, 0x3e8

    .line 154
    .line 155
    mul-long v19, v0, v2

    .line 156
    .line 157
    iget-object v12, v11, Lsh/f;->a:Lsh/e;

    .line 158
    .line 159
    const-wide/16 v17, 0x0

    .line 160
    .line 161
    const-wide/16 v13, 0x0

    .line 162
    .line 163
    const-wide/16 v15, 0x0

    .line 164
    .line 165
    invoke-virtual/range {v11 .. v20}, Lsh/f;->u(Lsh/e;JJJJ)Lsh/f;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    return-object v0

    .line 170
    :pswitch_6
    iget-object v1, v10, Lsh/f;->a:Lsh/e;

    .line 171
    .line 172
    const-wide/16 v6, 0x0

    .line 173
    .line 174
    const-wide/16 v2, 0x0

    .line 175
    .line 176
    const-wide/16 v4, 0x0

    .line 177
    .line 178
    move-object/from16 v0, p0

    .line 179
    .line 180
    move-wide/from16 v8, p1

    .line 181
    .line 182
    invoke-virtual/range {v0 .. v9}, Lsh/f;->u(Lsh/e;JJJJ)Lsh/f;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    return-object v0

    .line 187
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-virtual/range {p0 .. p3}, Lsh/f;->j(JLwh/b;)Lwh/j;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Lsh/f;

    .line 195
    .line 196
    return-object v0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t(J)Lsh/f;
    .locals 10

    .line 1
    const-wide/16 v2, 0x0

    .line 2
    .line 3
    const-wide/16 v4, 0x0

    .line 4
    .line 5
    iget-object v1, p0, Lsh/f;->a:Lsh/e;

    .line 6
    .line 7
    const-wide/16 v8, 0x0

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-wide v6, p1

    .line 11
    invoke-virtual/range {v0 .. v9}, Lsh/f;->u(Lsh/e;JJJJ)Lsh/f;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lsh/f;->a:Lsh/e;

    .line 7
    .line 8
    invoke-virtual {v1}, Lsh/e;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x54

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lsh/f;->b:Lsh/g;

    .line 21
    .line 22
    invoke-virtual {v1}, Lsh/g;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public final u(Lsh/e;JJJJ)Lsh/f;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    or-long v2, p2, p4

    .line 6
    .line 7
    or-long v2, v2, p6

    .line 8
    .line 9
    or-long v2, v2, p8

    .line 10
    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    iget-object v6, v0, Lsh/f;->b:Lsh/g;

    .line 14
    .line 15
    cmp-long v7, v2, v4

    .line 16
    .line 17
    if-nez v7, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v1, v6}, Lsh/f;->w(Lsh/e;Lsh/g;)Lsh/f;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    return-object v1

    .line 24
    :cond_0
    const-wide v2, 0x4e94914f0000L

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    div-long v4, p8, v2

    .line 30
    .line 31
    const-wide/32 v7, 0x15180

    .line 32
    .line 33
    .line 34
    div-long v9, p6, v7

    .line 35
    .line 36
    add-long/2addr v9, v4

    .line 37
    const-wide/16 v4, 0x5a0

    .line 38
    .line 39
    div-long v11, p4, v4

    .line 40
    .line 41
    add-long/2addr v11, v9

    .line 42
    const-wide/16 v9, 0x18

    .line 43
    .line 44
    div-long v13, p2, v9

    .line 45
    .line 46
    add-long/2addr v13, v11

    .line 47
    const/4 v11, 0x1

    .line 48
    int-to-long v11, v11

    .line 49
    mul-long v13, v13, v11

    .line 50
    .line 51
    rem-long v15, p8, v2

    .line 52
    .line 53
    rem-long v7, p6, v7

    .line 54
    .line 55
    const-wide/32 v17, 0x3b9aca00

    .line 56
    .line 57
    .line 58
    mul-long v7, v7, v17

    .line 59
    .line 60
    add-long/2addr v7, v15

    .line 61
    rem-long v4, p4, v4

    .line 62
    .line 63
    const-wide v15, 0xdf8475800L

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    mul-long v4, v4, v15

    .line 69
    .line 70
    add-long/2addr v4, v7

    .line 71
    rem-long v7, p2, v9

    .line 72
    .line 73
    const-wide v9, 0x34630b8a000L

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    mul-long v7, v7, v9

    .line 79
    .line 80
    add-long/2addr v7, v4

    .line 81
    invoke-virtual {v6}, Lsh/g;->w()J

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    mul-long v7, v7, v11

    .line 86
    .line 87
    add-long/2addr v7, v4

    .line 88
    invoke-static {v7, v8, v2, v3}, Lif/a;->C(JJ)J

    .line 89
    .line 90
    .line 91
    move-result-wide v9

    .line 92
    add-long/2addr v9, v13

    .line 93
    rem-long/2addr v7, v2

    .line 94
    add-long/2addr v7, v2

    .line 95
    rem-long/2addr v7, v2

    .line 96
    cmp-long v2, v7, v4

    .line 97
    .line 98
    if-nez v2, :cond_1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    invoke-static {v7, v8}, Lsh/g;->p(J)Lsh/g;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    :goto_0
    invoke-virtual {v1, v9, v10}, Lsh/e;->y(J)Lsh/e;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1, v6}, Lsh/f;->w(Lsh/e;Lsh/g;)Lsh/f;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    return-object v1
.end method

.method public final v(JLwh/m;)Lsh/f;
    .locals 3

    .line 1
    instance-of v0, p3, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lwh/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lwh/a;->i()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lsh/f;->b:Lsh/g;

    .line 13
    .line 14
    iget-object v2, p0, Lsh/f;->a:Lsh/e;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2, p3}, Lsh/g;->y(JLwh/m;)Lsh/g;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, v2, p1}, Lsh/f;->w(Lsh/e;Lsh/g;)Lsh/f;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    invoke-virtual {v2, p1, p2, p3}, Lsh/e;->C(JLwh/m;)Lsh/e;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1, v1}, Lsh/f;->w(Lsh/e;Lsh/g;)Lsh/f;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_1
    invoke-interface {p3, p0, p1, p2}, Lwh/m;->g(Lwh/j;J)Lwh/j;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lsh/f;

    .line 41
    .line 42
    return-object p1
.end method

.method public final w(Lsh/e;Lsh/g;)Lsh/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lsh/f;->a:Lsh/e;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lsh/f;->b:Lsh/g;

    .line 6
    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Lsh/f;

    .line 11
    .line 12
    invoke-direct {v0, p1, p2}, Lsh/f;-><init>(Lsh/e;Lsh/g;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
