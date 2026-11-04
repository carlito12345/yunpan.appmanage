.class public final Lsh/r;
.super Lth/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Lsh/f;

.field public final b:Lsh/p;

.field public final c:Lsh/o;


# direct methods
.method public constructor <init>(Lsh/f;Lsh/o;Lsh/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lth/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsh/r;->a:Lsh/f;

    .line 5
    .line 6
    iput-object p3, p0, Lsh/r;->b:Lsh/p;

    .line 7
    .line 8
    iput-object p2, p0, Lsh/r;->c:Lsh/o;

    .line 9
    .line 10
    return-void
.end method

.method public static n(JILsh/o;)Lsh/r;
    .locals 3

    .line 1
    invoke-virtual {p3}, Lsh/o;->n()Lxh/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    int-to-long v1, p2

    .line 6
    invoke-static {p0, p1, v1, v2}, Lsh/d;->n(JJ)Lsh/d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lxh/h;->a(Lsh/d;)Lsh/p;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0, p1, p2, v0}, Lsh/f;->r(JILsh/p;)Lsh/f;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance p1, Lsh/r;

    .line 19
    .line 20
    invoke-direct {p1, p0, p3, v0}, Lsh/r;-><init>(Lsh/f;Lsh/o;Lsh/p;)V

    .line 21
    .line 22
    .line 23
    return-object p1
.end method

.method public static o(Lsh/f;Lsh/o;Lsh/p;)Lsh/r;
    .locals 5

    .line 1
    const-string v0, "localDateTime"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lif/a;->t0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "zone"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lif/a;->t0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p1, Lsh/p;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance p2, Lsh/r;

    .line 16
    .line 17
    move-object v0, p1

    .line 18
    check-cast v0, Lsh/p;

    .line 19
    .line 20
    invoke-direct {p2, p0, p1, v0}, Lsh/r;-><init>(Lsh/f;Lsh/o;Lsh/p;)V

    .line 21
    .line 22
    .line 23
    return-object p2

    .line 24
    :cond_0
    invoke-virtual {p1}, Lsh/o;->n()Lxh/h;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p0}, Lxh/h;->c(Lsh/f;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x1

    .line 37
    const/4 v4, 0x0

    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Lsh/p;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Lxh/h;->b(Lsh/f;)Lxh/e;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iget-object v0, p2, Lxh/e;->c:Lsh/p;

    .line 58
    .line 59
    iget v0, v0, Lsh/p;->a:I

    .line 60
    .line 61
    iget-object v1, p2, Lxh/e;->b:Lsh/p;

    .line 62
    .line 63
    iget v1, v1, Lsh/p;->a:I

    .line 64
    .line 65
    sub-int/2addr v0, v1

    .line 66
    int-to-long v0, v0

    .line 67
    invoke-static {v4, v0, v1}, Lsh/c;->a(IJ)Lsh/c;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-wide v0, v0, Lsh/c;->a:J

    .line 72
    .line 73
    invoke-virtual {p0, v0, v1}, Lsh/f;->t(J)Lsh/f;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    iget-object p2, p2, Lxh/e;->c:Lsh/p;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    if-eqz p2, :cond_3

    .line 81
    .line 82
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    const-string v0, "offset"

    .line 94
    .line 95
    invoke-static {p2, v0}, Lif/a;->t0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    check-cast p2, Lsh/p;

    .line 99
    .line 100
    :goto_0
    new-instance v0, Lsh/r;

    .line 101
    .line 102
    invoke-direct {v0, p0, p1, p2}, Lsh/r;-><init>(Lsh/f;Lsh/o;Lsh/p;)V

    .line 103
    .line 104
    .line 105
    return-object v0
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
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1, p0}, Lsh/l;-><init>(BLjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public final a(JLwh/m;)Lwh/j;
    .locals 6

    .line 1
    instance-of v0, p3, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lwh/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x1c

    .line 13
    .line 14
    iget-object v3, p0, Lsh/r;->a:Lsh/f;

    .line 15
    .line 16
    iget-object v4, p0, Lsh/r;->c:Lsh/o;

    .line 17
    .line 18
    if-eq v1, v2, :cond_2

    .line 19
    .line 20
    const/16 v2, 0x1d

    .line 21
    .line 22
    iget-object v5, p0, Lsh/r;->b:Lsh/p;

    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v3, p1, p2, p3}, Lsh/f;->v(JLwh/m;)Lsh/f;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1, v4, v5}, Lsh/r;->o(Lsh/f;Lsh/o;Lsh/p;)Lsh/r;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p3, v0, Lwh/a;->b:Lwh/r;

    .line 36
    .line 37
    invoke-virtual {p3, p1, p2, v0}, Lwh/r;->a(JLwh/m;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {p1}, Lsh/p;->r(I)Lsh/p;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, v5}, Lsh/p;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-nez p2, :cond_1

    .line 50
    .line 51
    invoke-virtual {v4}, Lsh/o;->n()Lxh/h;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2, v3, p1}, Lxh/h;->d(Lsh/f;Lsh/p;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    new-instance p2, Lsh/r;

    .line 62
    .line 63
    invoke-direct {p2, v3, v4, p1}, Lsh/r;-><init>(Lsh/f;Lsh/o;Lsh/p;)V

    .line 64
    .line 65
    .line 66
    move-object p1, p2

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move-object p1, p0

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object p3, v3, Lsh/f;->b:Lsh/g;

    .line 71
    .line 72
    iget p3, p3, Lsh/g;->d:I

    .line 73
    .line 74
    invoke-static {p1, p2, p3, v4}, Lsh/r;->n(JILsh/o;)Lsh/r;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-interface {p3, p0, p1, p2}, Lwh/m;->g(Lwh/j;J)Lwh/j;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lsh/r;

    .line 84
    .line 85
    :goto_0
    return-object p1
.end method

.method public final b(Lwh/m;)J
    .locals 2

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lwh/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x1c

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/16 v1, 0x1d

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lsh/r;->a:Lsh/f;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lsh/f;->b(Lwh/m;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    return-wide v0

    .line 27
    :cond_0
    iget-object p1, p0, Lsh/r;->b:Lsh/p;

    .line 28
    .line 29
    iget p1, p1, Lsh/p;->a:I

    .line 30
    .line 31
    int-to-long v0, p1

    .line 32
    return-wide v0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lth/c;->m()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    return-wide v0

    .line 38
    :cond_2
    invoke-interface {p1, p0}, Lwh/m;->a(Lwh/k;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
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
    iget-object p1, p0, Lsh/r;->a:Lsh/f;

    .line 6
    .line 7
    iget-object p1, p1, Lsh/f;->a:Lsh/e;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lth/c;->c(Lwh/o;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final d(Lwh/m;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p0}, Lwh/m;->f(Lwh/k;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    return p1
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
    instance-of v1, p1, Lsh/r;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lsh/r;

    .line 11
    .line 12
    iget-object v1, p1, Lsh/r;->a:Lsh/f;

    .line 13
    .line 14
    iget-object v3, p0, Lsh/r;->a:Lsh/f;

    .line 15
    .line 16
    invoke-virtual {v3, v1}, Lsh/f;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lsh/r;->b:Lsh/p;

    .line 23
    .line 24
    iget-object v3, p1, Lsh/r;->b:Lsh/p;

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Lsh/p;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lsh/r;->c:Lsh/o;

    .line 33
    .line 34
    iget-object p1, p1, Lsh/r;->c:Lsh/o;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Lsh/o;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    .line 45
    :cond_2
    return v2
.end method

.method public final f(Lwh/m;)Lwh/r;
    .locals 1

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lwh/a;->F:Lwh/a;

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lwh/a;->G:Lwh/a;

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lsh/r;->a:Lsh/f;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lsh/f;->f(Lwh/m;)Lwh/r;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_1
    :goto_0
    check-cast p1, Lwh/a;

    .line 22
    .line 23
    iget-object p1, p1, Lwh/a;->b:Lwh/r;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_2
    invoke-interface {p1, p0}, Lwh/m;->c(Lwh/k;)Lwh/r;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public final h(Lsh/e;)Lwh/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lsh/r;->a:Lsh/f;

    .line 2
    .line 3
    iget-object v0, v0, Lsh/f;->b:Lsh/g;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lsh/f;->q(Lsh/e;Lsh/g;)Lsh/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lsh/r;->c:Lsh/o;

    .line 10
    .line 11
    iget-object v1, p0, Lsh/r;->b:Lsh/p;

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lsh/r;->o(Lsh/f;Lsh/o;Lsh/p;)Lsh/r;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lsh/r;->a:Lsh/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsh/f;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lsh/r;->b:Lsh/p;

    .line 8
    .line 9
    iget v1, v1, Lsh/p;->a:I

    .line 10
    .line 11
    xor-int/2addr v0, v1

    .line 12
    iget-object v1, p0, Lsh/r;->c:Lsh/o;

    .line 13
    .line 14
    invoke-virtual {v1}, Lsh/o;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x3

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    xor-int/2addr v0, v1

    .line 24
    return v0
.end method

.method public final i(Lwh/m;)I
    .locals 2

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lwh/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x1c

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/16 v1, 0x1d

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lsh/r;->a:Lsh/f;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lsh/f;->i(Lwh/m;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_0
    iget-object p1, p0, Lsh/r;->b:Lsh/p;

    .line 28
    .line 29
    iget p1, p1, Lsh/p;->a:I

    .line 30
    .line 31
    return p1

    .line 32
    :cond_1
    new-instance v0, Lsh/a;

    .line 33
    .line 34
    const-string v1, "Field too large for an int: "

    .line 35
    .line 36
    invoke-static {v1, p1}, Lorg/bouncycastle/jcajce/provider/digest/a;->f(Ljava/lang/String;Lwh/m;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_2
    invoke-super {p0, p1}, Lth/c;->i(Lwh/m;)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1
.end method

.method public final bridge synthetic j(JLwh/b;)Lwh/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lsh/r;->p(JLwh/b;)Lsh/r;

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
    invoke-virtual {p0, p1, p2, p3}, Lsh/r;->p(JLwh/b;)Lsh/r;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-wide/16 v0, 0x1

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1, p3}, Lsh/r;->p(JLwh/b;)Lsh/r;

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
    invoke-virtual {p0, p1, p2, p3}, Lsh/r;->p(JLwh/b;)Lsh/r;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public final p(JLwh/b;)Lsh/r;
    .locals 4

    .line 1
    instance-of v0, p3, Lwh/b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lwh/b;->c:Lwh/b;

    .line 6
    .line 7
    invoke-virtual {p3, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lsh/r;->b:Lsh/p;

    .line 12
    .line 13
    iget-object v2, p0, Lsh/r;->c:Lsh/o;

    .line 14
    .line 15
    iget-object v3, p0, Lsh/r;->a:Lsh/f;

    .line 16
    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lwh/b;->g:Lwh/b;

    .line 20
    .line 21
    if-eq p3, v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3, p1, p2, p3}, Lsh/f;->s(JLwh/b;)Lsh/f;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1, v2, v1}, Lsh/r;->o(Lsh/f;Lsh/o;Lsh/p;)Lsh/r;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_0
    invoke-virtual {v3, p1, p2, p3}, Lsh/f;->s(JLwh/b;)Lsh/f;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p2, "localDateTime"

    .line 37
    .line 38
    invoke-static {p1, p2}, Lif/a;->t0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p2, "offset"

    .line 42
    .line 43
    invoke-static {v1, p2}, Lif/a;->t0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string p2, "zone"

    .line 47
    .line 48
    invoke-static {v2, p2}, Lif/a;->t0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lth/b;->m(Lsh/p;)J

    .line 52
    .line 53
    .line 54
    move-result-wide p2

    .line 55
    iget-object p1, p1, Lsh/f;->b:Lsh/g;

    .line 56
    .line 57
    iget p1, p1, Lsh/g;->d:I

    .line 58
    .line 59
    invoke-static {p2, p3, p1, v2}, Lsh/r;->n(JILsh/o;)Lsh/r;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lsh/r;->j(JLwh/b;)Lwh/j;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lsh/r;

    .line 72
    .line 73
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lsh/r;->a:Lsh/f;

    .line 7
    .line 8
    invoke-virtual {v1}, Lsh/f;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lsh/r;->b:Lsh/p;

    .line 16
    .line 17
    iget-object v2, v1, Lsh/p;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v2, p0, Lsh/r;->c:Lsh/o;

    .line 27
    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v0, 0x5b

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lsh/o;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 v0, 0x5d

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_0
    return-object v0
.end method
