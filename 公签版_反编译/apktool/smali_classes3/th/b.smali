.class public abstract Lth/b;
.super Lvh/a;
.source "SourceFile"

# interfaces
.implements Lwh/l;
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
    sget-object v0, Lwh/n;->b:Ls5/c;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    move-object p1, p0

    .line 6
    check-cast p1, Lsh/f;

    .line 7
    .line 8
    iget-object p1, p1, Lsh/f;->a:Lsh/e;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object p1, Lth/e;->a:Lth/e;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object v0, Lwh/n;->c:Ls9/a;

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    sget-object p1, Lwh/b;->b:Lwh/b;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    sget-object v0, Lwh/n;->f:Ls5/c;

    .line 24
    .line 25
    if-ne p1, v0, :cond_2

    .line 26
    .line 27
    move-object p1, p0

    .line 28
    check-cast p1, Lsh/f;

    .line 29
    .line 30
    iget-object p1, p1, Lsh/f;->a:Lsh/e;

    .line 31
    .line 32
    invoke-virtual {p1}, Lsh/e;->m()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-static {v0, v1}, Lsh/e;->w(J)Lsh/e;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_2
    sget-object v0, Lwh/n;->g:Ls9/a;

    .line 42
    .line 43
    if-ne p1, v0, :cond_3

    .line 44
    .line 45
    move-object p1, p0

    .line 46
    check-cast p1, Lsh/f;

    .line 47
    .line 48
    iget-object p1, p1, Lsh/f;->b:Lsh/g;

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_3
    sget-object v0, Lwh/n;->d:Ls5/c;

    .line 52
    .line 53
    if-eq p1, v0, :cond_5

    .line 54
    .line 55
    sget-object v0, Lwh/n;->a:Ls9/a;

    .line 56
    .line 57
    if-eq p1, v0, :cond_5

    .line 58
    .line 59
    sget-object v0, Lwh/n;->e:Ls9/a;

    .line 60
    .line 61
    if-ne p1, v0, :cond_4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    invoke-super {p0, p1}, Lvh/b;->c(Lwh/o;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 70
    return-object p1
.end method

.method public final m(Lsh/p;)J
    .locals 5

    .line 1
    const-string v0, "offset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lif/a;->t0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    check-cast v0, Lsh/f;

    .line 8
    .line 9
    iget-object v1, v0, Lsh/f;->a:Lsh/e;

    .line 10
    .line 11
    invoke-virtual {v1}, Lsh/e;->m()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const-wide/32 v3, 0x15180

    .line 16
    .line 17
    .line 18
    mul-long v1, v1, v3

    .line 19
    .line 20
    iget-object v0, v0, Lsh/f;->b:Lsh/g;

    .line 21
    .line 22
    invoke-virtual {v0}, Lsh/g;->x()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-long v3, v0

    .line 27
    add-long/2addr v1, v3

    .line 28
    iget p1, p1, Lsh/p;->a:I

    .line 29
    .line 30
    int-to-long v3, p1

    .line 31
    sub-long/2addr v1, v3

    .line 32
    return-wide v1
.end method
