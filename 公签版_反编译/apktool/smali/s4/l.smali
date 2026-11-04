.class public abstract Ls4/l;
.super Ls4/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ls4/j;Lw4/p;Lw4/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ls4/h;-><init>(Ls4/j;Lw4/p;Lw4/l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/h;->b:Ls4/j;

    .line 2
    .line 3
    iget-object v0, v0, Ls4/j;->d:Ld/b;

    .line 4
    .line 5
    invoke-virtual {v0}, Ld/b;->i()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Ls4/h;->b:Ls4/j;

    .line 2
    .line 3
    iget-object v1, v0, Ls4/j;->d:Ld/b;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ls4/j;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v1, p0}, Ld/b;->O(Ls4/l;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, p0}, Ld/b;->P(Ls4/l;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const/16 v4, 0x64

    .line 23
    .line 24
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const/16 v0, 0x20

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    const-string v0, " // "

    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
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
    invoke-virtual {p0, p1}, Ls4/h;->k(Lw4/l;)Ls4/h;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final l(Lb5/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/h;->b:Ls4/j;

    .line 2
    .line 3
    iget-object v0, v0, Ls4/j;->d:Ld/b;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p0}, Ld/b;->z0(Lb5/b;Ls4/l;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
