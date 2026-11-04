.class public final Lsh/k;
.super Lvh/b;
.source "SourceFile"

# interfaces
.implements Lwh/j;
.implements Lwh/l;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic c:I


# instance fields
.field public final a:Lsh/g;

.field public final b:Lsh/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lsh/g;->e:Lsh/g;

    .line 2
    .line 3
    sget-object v1, Lsh/p;->g:Lsh/p;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v2, Lsh/k;

    .line 9
    .line 10
    invoke-direct {v2, v0, v1}, Lsh/k;-><init>(Lsh/g;Lsh/p;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lsh/g;->f:Lsh/g;

    .line 14
    .line 15
    sget-object v1, Lsh/p;->f:Lsh/p;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v2, Lsh/k;

    .line 21
    .line 22
    invoke-direct {v2, v0, v1}, Lsh/k;-><init>(Lsh/g;Lsh/p;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Lsh/g;Lsh/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lvh/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "time"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lif/a;->t0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lsh/k;->a:Lsh/g;

    .line 10
    .line 11
    const-string p1, "offset"

    .line 12
    .line 13
    invoke-static {p2, p1}, Lif/a;->t0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lsh/k;->b:Lsh/p;

    .line 17
    .line 18
    return-void
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
    const/16 v1, 0x42

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Lsh/l;-><init>(BLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final a(JLwh/m;)Lwh/j;
    .locals 2

    .line 1
    instance-of v0, p3, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lwh/a;->G:Lwh/a;

    .line 6
    .line 7
    iget-object v1, p0, Lsh/k;->a:Lsh/g;

    .line 8
    .line 9
    if-ne p3, v0, :cond_0

    .line 10
    .line 11
    check-cast p3, Lwh/a;

    .line 12
    .line 13
    iget-object v0, p3, Lwh/a;->b:Lwh/r;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, p3}, Lwh/r;->a(JLwh/m;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Lsh/p;->r(I)Lsh/p;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, v1, p1}, Lsh/k;->n(Lsh/g;Lsh/p;)Lsh/k;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Lsh/g;->y(JLwh/m;)Lsh/g;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Lsh/k;->b:Lsh/p;

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Lsh/k;->n(Lsh/g;Lsh/p;)Lsh/k;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {p3, p0, p1, p2}, Lwh/m;->g(Lwh/j;J)Lwh/j;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lsh/k;

    .line 44
    .line 45
    :goto_0
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
    sget-object v0, Lwh/a;->G:Lwh/a;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lsh/k;->b:Lsh/p;

    .line 10
    .line 11
    iget p1, p1, Lsh/p;->a:I

    .line 12
    .line 13
    int-to-long v0, p1

    .line 14
    return-wide v0

    .line 15
    :cond_0
    iget-object v0, p0, Lsh/k;->a:Lsh/g;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lsh/g;->b(Lwh/m;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    :cond_1
    invoke-interface {p1, p0}, Lwh/m;->a(Lwh/k;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    return-wide v0
.end method

.method public final c(Lwh/o;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lwh/n;->c:Ls9/a;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lwh/b;->b:Lwh/b;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object v0, Lwh/n;->e:Ls9/a;

    .line 9
    .line 10
    if-eq p1, v0, :cond_5

    .line 11
    .line 12
    sget-object v0, Lwh/n;->d:Ls5/c;

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    sget-object v0, Lwh/n;->g:Ls9/a;

    .line 18
    .line 19
    if-ne p1, v0, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lsh/k;->a:Lsh/g;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_2
    sget-object v0, Lwh/n;->b:Ls5/c;

    .line 25
    .line 26
    if-eq p1, v0, :cond_4

    .line 27
    .line 28
    sget-object v0, Lwh/n;->f:Ls5/c;

    .line 29
    .line 30
    if-eq p1, v0, :cond_4

    .line 31
    .line 32
    sget-object v0, Lwh/n;->a:Ls9/a;

    .line 33
    .line 34
    if-ne p1, v0, :cond_3

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    invoke-super {p0, p1}, Lvh/b;->c(Lwh/o;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 43
    return-object p1

    .line 44
    :cond_5
    :goto_1
    iget-object p1, p0, Lsh/k;->b:Lsh/p;

    .line 45
    .line 46
    return-object p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 10

    .line 1
    check-cast p1, Lsh/k;

    .line 2
    .line 3
    iget-object v0, p1, Lsh/k;->b:Lsh/p;

    .line 4
    .line 5
    iget-object v1, p0, Lsh/k;->b:Lsh/p;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lsh/p;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v2, p1, Lsh/k;->a:Lsh/g;

    .line 12
    .line 13
    iget-object v3, p0, Lsh/k;->a:Lsh/g;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Lsh/g;->m(Lsh/g;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v3}, Lsh/g;->w()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    iget v0, v1, Lsh/p;->a:I

    .line 27
    .line 28
    int-to-long v0, v0

    .line 29
    const-wide/32 v6, 0x3b9aca00

    .line 30
    .line 31
    .line 32
    mul-long v0, v0, v6

    .line 33
    .line 34
    sub-long/2addr v4, v0

    .line 35
    invoke-virtual {v2}, Lsh/g;->w()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iget-object p1, p1, Lsh/k;->b:Lsh/p;

    .line 40
    .line 41
    iget p1, p1, Lsh/p;->a:I

    .line 42
    .line 43
    int-to-long v8, p1

    .line 44
    mul-long v8, v8, v6

    .line 45
    .line 46
    sub-long/2addr v0, v8

    .line 47
    invoke-static {v4, v5, v0, v1}, Lif/a;->m(JJ)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v3, v2}, Lsh/g;->m(Lsh/g;)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    :cond_1
    :goto_0
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
    move-object v0, p1

    .line 8
    check-cast v0, Lwh/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lwh/a;->i()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lwh/a;->G:Lwh/a;

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :cond_1
    :goto_0
    return v1

    .line 23
    :cond_2
    if-eqz p1, :cond_3

    .line 24
    .line 25
    invoke-interface {p1, p0}, Lwh/m;->f(Lwh/k;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    const/4 v1, 0x0

    .line 33
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
    instance-of v1, p1, Lsh/k;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lsh/k;

    .line 11
    .line 12
    iget-object v1, p1, Lsh/k;->a:Lsh/g;

    .line 13
    .line 14
    iget-object v3, p0, Lsh/k;->a:Lsh/g;

    .line 15
    .line 16
    invoke-virtual {v3, v1}, Lsh/g;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lsh/k;->b:Lsh/p;

    .line 23
    .line 24
    iget-object p1, p1, Lsh/k;->b:Lsh/p;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lsh/p;->equals(Ljava/lang/Object;)Z

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
    sget-object v0, Lwh/a;->G:Lwh/a;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lwh/a;

    .line 10
    .line 11
    iget-object p1, p1, Lwh/a;->b:Lwh/r;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object v0, p0, Lsh/k;->a:Lsh/g;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lvh/b;->f(Lwh/m;)Lwh/r;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_1
    invoke-interface {p1, p0}, Lwh/m;->c(Lwh/k;)Lwh/r;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public final g(Lwh/j;)Lwh/j;
    .locals 3

    .line 1
    sget-object v0, Lwh/a;->d:Lwh/a;

    .line 2
    .line 3
    iget-object v1, p0, Lsh/k;->a:Lsh/g;

    .line 4
    .line 5
    invoke-virtual {v1}, Lsh/g;->w()J

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
    sget-object v0, Lwh/a;->G:Lwh/a;

    .line 14
    .line 15
    iget-object v1, p0, Lsh/k;->b:Lsh/p;

    .line 16
    .line 17
    iget v1, v1, Lsh/p;->a:I

    .line 18
    .line 19
    int-to-long v1, v1

    .line 20
    invoke-interface {p1, v1, v2, v0}, Lwh/j;->a(JLwh/m;)Lwh/j;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final h(Lsh/e;)Lwh/j;
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lsh/e;->g(Lwh/j;)Lwh/j;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lsh/k;

    .line 6
    .line 7
    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lsh/k;->a:Lsh/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsh/g;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lsh/k;->b:Lsh/p;

    .line 8
    .line 9
    iget v1, v1, Lsh/p;->a:I

    .line 10
    .line 11
    xor-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public final bridge synthetic j(JLwh/b;)Lwh/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lsh/k;->m(JLwh/b;)Lsh/k;

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
    invoke-virtual {p0, p1, p2, p3}, Lsh/k;->m(JLwh/b;)Lsh/k;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-wide/16 v0, 0x1

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1, p3}, Lsh/k;->m(JLwh/b;)Lsh/k;

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
    invoke-virtual {p0, p1, p2, p3}, Lsh/k;->m(JLwh/b;)Lsh/k;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public final m(JLwh/b;)Lsh/k;
    .locals 1

    .line 1
    instance-of v0, p3, Lwh/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lsh/k;->a:Lsh/g;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lsh/g;->q(JLwh/b;)Lsh/g;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lsh/k;->b:Lsh/p;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lsh/k;->n(Lsh/g;Lsh/p;)Lsh/k;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lsh/k;->j(JLwh/b;)Lwh/j;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lsh/k;

    .line 26
    .line 27
    return-object p1
.end method

.method public final n(Lsh/g;Lsh/p;)Lsh/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lsh/k;->a:Lsh/g;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lsh/k;->b:Lsh/p;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Lsh/p;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Lsh/k;

    .line 15
    .line 16
    invoke-direct {v0, p1, p2}, Lsh/k;-><init>(Lsh/g;Lsh/p;)V

    .line 17
    .line 18
    .line 19
    return-object v0
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
    iget-object v1, p0, Lsh/k;->a:Lsh/g;

    .line 7
    .line 8
    invoke-virtual {v1}, Lsh/g;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lsh/k;->b:Lsh/p;

    .line 16
    .line 17
    iget-object v1, v1, Lsh/p;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
