.class public abstract Lth/c;
.super Lvh/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvh/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lwh/o;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lwh/n;->a:Ls9/a;

    .line 2
    .line 3
    if-eq p1, v0, :cond_6

    .line 4
    .line 5
    sget-object v0, Lwh/n;->d:Ls5/c;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lwh/n;->b:Ls5/c;

    .line 11
    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    move-object p1, p0

    .line 15
    check-cast p1, Lsh/r;

    .line 16
    .line 17
    iget-object p1, p1, Lsh/r;->a:Lsh/f;

    .line 18
    .line 19
    iget-object p1, p1, Lsh/f;->a:Lsh/e;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-object p1, Lth/e;->a:Lth/e;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    sget-object v0, Lwh/n;->c:Ls9/a;

    .line 28
    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    sget-object p1, Lwh/b;->b:Lwh/b;

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_2
    sget-object v0, Lwh/n;->e:Ls9/a;

    .line 35
    .line 36
    if-ne p1, v0, :cond_3

    .line 37
    .line 38
    move-object p1, p0

    .line 39
    check-cast p1, Lsh/r;

    .line 40
    .line 41
    iget-object p1, p1, Lsh/r;->b:Lsh/p;

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_3
    sget-object v0, Lwh/n;->f:Ls5/c;

    .line 45
    .line 46
    if-ne p1, v0, :cond_4

    .line 47
    .line 48
    move-object p1, p0

    .line 49
    check-cast p1, Lsh/r;

    .line 50
    .line 51
    iget-object p1, p1, Lsh/r;->a:Lsh/f;

    .line 52
    .line 53
    iget-object p1, p1, Lsh/f;->a:Lsh/e;

    .line 54
    .line 55
    invoke-virtual {p1}, Lsh/e;->m()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    invoke-static {v0, v1}, Lsh/e;->w(J)Lsh/e;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_4
    sget-object v0, Lwh/n;->g:Ls9/a;

    .line 65
    .line 66
    if-ne p1, v0, :cond_5

    .line 67
    .line 68
    move-object p1, p0

    .line 69
    check-cast p1, Lsh/r;

    .line 70
    .line 71
    iget-object p1, p1, Lsh/r;->a:Lsh/f;

    .line 72
    .line 73
    iget-object p1, p1, Lsh/f;->b:Lsh/g;

    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_5
    invoke-super {p0, p1}, Lvh/b;->c(Lwh/o;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1

    .line 81
    :cond_6
    :goto_0
    move-object p1, p0

    .line 82
    check-cast p1, Lsh/r;

    .line 83
    .line 84
    iget-object p1, p1, Lsh/r;->c:Lsh/o;

    .line 85
    .line 86
    return-object p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lth/c;

    .line 2
    .line 3
    invoke-virtual {p0}, Lth/c;->m()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p1}, Lth/c;->m()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-static {v0, v1, v2, v3}, Lif/a;->m(JJ)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    move-object v0, p0

    .line 18
    check-cast v0, Lsh/r;

    .line 19
    .line 20
    iget-object v1, v0, Lsh/r;->a:Lsh/f;

    .line 21
    .line 22
    iget-object v2, v1, Lsh/f;->b:Lsh/g;

    .line 23
    .line 24
    iget v2, v2, Lsh/g;->d:I

    .line 25
    .line 26
    check-cast p1, Lsh/r;

    .line 27
    .line 28
    iget-object v3, p1, Lsh/r;->a:Lsh/f;

    .line 29
    .line 30
    iget-object v4, v3, Lsh/f;->b:Lsh/g;

    .line 31
    .line 32
    iget v4, v4, Lsh/g;->d:I

    .line 33
    .line 34
    sub-int/2addr v2, v4

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Lsh/f;->n(Lth/b;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    iget-object v0, v0, Lsh/r;->c:Lsh/o;

    .line 44
    .line 45
    invoke-virtual {v0}, Lsh/o;->m()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object p1, p1, Lsh/r;->c:Lsh/o;

    .line 50
    .line 51
    invoke-virtual {p1}, Lsh/o;->m()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    iget-object p1, v1, Lsh/f;->a:Lsh/e;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    sget-object p1, Lth/e;->a:Lth/e;

    .line 67
    .line 68
    iget-object v0, v3, Lsh/f;->a:Lsh/e;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    move v0, v2

    .line 79
    :cond_1
    :goto_0
    return v0
.end method

.method public i(Lwh/m;)I
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
    move-object v0, p0

    .line 21
    check-cast v0, Lsh/r;

    .line 22
    .line 23
    iget-object v0, v0, Lsh/r;->a:Lsh/f;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lsh/f;->i(Lwh/m;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_0
    move-object p1, p0

    .line 31
    check-cast p1, Lsh/r;

    .line 32
    .line 33
    iget-object p1, p1, Lsh/r;->b:Lsh/p;

    .line 34
    .line 35
    iget p1, p1, Lsh/p;->a:I

    .line 36
    .line 37
    return p1

    .line 38
    :cond_1
    new-instance v0, Lwh/q;

    .line 39
    .line 40
    const-string v1, "Field too large for an int: "

    .line 41
    .line 42
    invoke-static {v1, p1}, Lorg/bouncycastle/jcajce/provider/digest/a;->f(Ljava/lang/String;Lwh/m;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_2
    invoke-super {p0, p1}, Lvh/b;->i(Lwh/m;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    return p1
.end method

.method public final m()J
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lsh/r;

    .line 3
    .line 4
    iget-object v1, v0, Lsh/r;->a:Lsh/f;

    .line 5
    .line 6
    iget-object v2, v1, Lsh/f;->a:Lsh/e;

    .line 7
    .line 8
    invoke-virtual {v2}, Lsh/e;->m()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    const-wide/32 v4, 0x15180

    .line 13
    .line 14
    .line 15
    mul-long v2, v2, v4

    .line 16
    .line 17
    iget-object v1, v1, Lsh/f;->b:Lsh/g;

    .line 18
    .line 19
    invoke-virtual {v1}, Lsh/g;->x()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    int-to-long v4, v1

    .line 24
    add-long/2addr v2, v4

    .line 25
    iget-object v0, v0, Lsh/r;->b:Lsh/p;

    .line 26
    .line 27
    iget v0, v0, Lsh/p;->a:I

    .line 28
    .line 29
    int-to-long v0, v0

    .line 30
    sub-long/2addr v2, v0

    .line 31
    return-wide v2
.end method
