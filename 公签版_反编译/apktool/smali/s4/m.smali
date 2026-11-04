.class public final Ls4/m;
.super Ls4/h;
.source "SourceFile"


# instance fields
.field public e:[Ls4/u;


# direct methods
.method public constructor <init>(Lw4/p;Lw4/l;)V
    .locals 1

    .line 1
    sget-object v0, Ls4/k;->b:Ls4/j;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2}, Ls4/h;-><init>(Ls4/j;Lw4/p;Lw4/l;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p2, Lb5/c;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    array-length p1, p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Ls4/m;->e:[Ls4/u;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string p2, "registers.size() == 0"

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final b()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ls4/m;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls4/m;->e:[Ls4/u;

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v4, v0, v2

    .line 12
    .line 13
    invoke-virtual {v4}, Ls4/l;->b()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    add-int/2addr v3, v4

    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return v3
.end method

.method public final g()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Ls4/h;->d:Lw4/l;

    .line 2
    .line 3
    iget-object v1, v0, Lb5/c;->b:[Ljava/lang/Object;

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const/16 v3, 0x64

    .line 9
    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    if-ge v3, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Lw4/k;

    .line 22
    .line 23
    iget-object v6, v5, Lw4/k;->b:Ly4/c;

    .line 24
    .line 25
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {v4, v6}, Lw4/k;->d(ILy4/c;)Lw4/k;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    sget-object v7, Lw4/p;->a:Lw4/p;

    .line 33
    .line 34
    invoke-static {v7, v6, v5}, Ls4/h;->h(Lw4/p;Lw4/k;Lw4/k;)Ls4/u;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    const/16 v7, 0xa

    .line 41
    .line 42
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {v6}, Ls4/l;->g()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Lw4/k;->c()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    add-int/2addr v4, v5

    .line 57
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method

.method public final i(Ls4/j;)Ls4/h;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string v0, "unsupported"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final j(I)Ls4/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/h;->d:Lw4/l;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lw4/l;->j(I)Lw4/l;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ls4/m;->k(Lw4/l;)Ls4/h;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final k(Lw4/l;)Ls4/h;
    .locals 2

    .line 1
    new-instance v0, Ls4/m;

    .line 2
    .line 3
    iget-object v1, p0, Ls4/h;->c:Lw4/p;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Ls4/m;-><init>(Lw4/p;Lw4/l;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final l(Lb5/b;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ls4/m;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls4/m;->e:[Ls4/u;

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget-object v3, v0, v2

    .line 11
    .line 12
    invoke-virtual {v3, p1}, Ls4/l;->l(Lb5/b;)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 8

    .line 1
    iget-object v0, p0, Ls4/m;->e:[Ls4/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Ls4/h;->d:Lw4/l;

    .line 7
    .line 8
    iget-object v1, v0, Lb5/c;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    new-array v2, v1, [Ls4/u;

    .line 12
    .line 13
    iput-object v2, p0, Ls4/m;->e:[Ls4/u;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Lw4/k;

    .line 24
    .line 25
    iget-object v5, p0, Ls4/m;->e:[Ls4/u;

    .line 26
    .line 27
    iget-object v6, v4, Lw4/k;->b:Ly4/c;

    .line 28
    .line 29
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v6}, Lw4/k;->d(ILy4/c;)Lw4/k;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    sget-object v7, Lw4/p;->a:Lw4/p;

    .line 37
    .line 38
    invoke-static {v7, v6, v4}, Ls4/h;->h(Lw4/p;Lw4/k;Lw4/k;)Ls4/u;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    aput-object v6, v5, v2

    .line 43
    .line 44
    invoke-virtual {v4}, Lw4/k;->c()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    add-int/2addr v3, v4

    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method
