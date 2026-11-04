.class public abstract Lqh/p0;
.super Lqh/r0;
.source "SourceFile"


# instance fields
.field public final d:Lkf/d;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Lph/c;

.field public final h:Lkf/d;

.field public final i:Lkf/d;

.field public j:Z


# direct methods
.method public constructor <init>(ILqh/c;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lqh/r0;-><init>(I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lkf/d;

    .line 5
    .line 6
    const/16 v0, 0xc

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {p1, v0, v1}, Lkf/d;-><init>(IZ)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lqh/p0;->d:Lkf/d;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lqh/p0;->f:Z

    .line 16
    .line 17
    new-instance v0, Lkf/d;

    .line 18
    .line 19
    const/16 v1, 0xc

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v0, v1, v2}, Lkf/d;-><init>(IZ)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lqh/p0;->h:Lkf/d;

    .line 26
    .line 27
    new-instance v0, Lkf/d;

    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Lkf/d;-><init>(IZ)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lqh/p0;->i:Lkf/d;

    .line 33
    .line 34
    iput-boolean p1, p0, Lqh/p0;->j:Z

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic g()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lqh/p0;->n()Lqh/p0;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final h(CII)V
    .locals 0

    .line 1
    iget-object p2, p0, Lqh/p0;->i:Lkf/d;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lkf/d;->m(C)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(II[I)V
    .locals 4

    .line 1
    array-length p1, p3

    .line 2
    const/4 p2, 0x0

    .line 3
    :goto_0
    if-ge p2, p1, :cond_2

    .line 4
    .line 5
    aget v0, p3, p2

    .line 6
    .line 7
    iget-object v1, p0, Lqh/p0;->i:Lkf/d;

    .line 8
    .line 9
    iget-object v2, v1, Lkf/d;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v2, v1, Lkf/d;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-static {}, Loh/f;->b()Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iput-object v2, v1, Lkf/d;->c:Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v3, v1, Lkf/d;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    iput-object v2, v1, Lkf/d;->b:Ljava/lang/Object;

    .line 40
    .line 41
    iget-object v1, v1, Lkf/d;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, v1, Lkf/d;->b:Ljava/lang/Object;

    .line 58
    .line 59
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0xfffd

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lqh/p0;->d:Lkf/d;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lkf/d;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lkf/d;->R()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Loh/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lqh/p0;->e:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqh/p0;->d:Lkf/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkf/d;->reset()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lkf/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {v0}, Lkf/d;->R()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Loh/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lqh/p0;->e:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public final l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lqh/p0;->g:Lph/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lph/c;

    .line 6
    .line 7
    invoke-direct {v0}, Lph/c;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lqh/p0;->g:Lph/c;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lqh/p0;->h:Lkf/d;

    .line 13
    .line 14
    invoke-virtual {v0}, Lkf/d;->C()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lqh/p0;->i:Lkf/d;

    .line 19
    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    iget-object v1, p0, Lqh/p0;->g:Lph/c;

    .line 23
    .line 24
    iget v1, v1, Lph/c;->a:I

    .line 25
    .line 26
    const/16 v3, 0x200

    .line 27
    .line 28
    if-ge v1, v3, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0}, Lkf/d;->R()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    invoke-virtual {v2}, Lkf/d;->C()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-virtual {v2}, Lkf/d;->R()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-boolean v3, p0, Lqh/p0;->j:Z

    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    const-string v3, ""

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v3, 0x0

    .line 63
    :goto_0
    iget-object v4, p0, Lqh/p0;->g:Lph/c;

    .line 64
    .line 65
    invoke-virtual {v4, v1, v3}, Lph/c;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {v0}, Lkf/d;->reset()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lkf/d;->reset()V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lqh/p0;->j:Z

    .line 76
    .line 77
    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lqh/p0;->e:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lqh/p0;->e:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Lnh/c;

    .line 15
    .line 16
    const-string v1, "Must be false"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lnh/c;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public n()Lqh/p0;
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lqh/r0;->b:I

    .line 3
    .line 4
    iput v0, p0, Lqh/r0;->c:I

    .line 5
    .line 6
    iget-object v0, p0, Lqh/p0;->d:Lkf/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Lkf/d;->reset()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lqh/p0;->e:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lqh/p0;->f:Z

    .line 16
    .line 17
    iput-object v0, p0, Lqh/p0;->g:Lph/c;

    .line 18
    .line 19
    iget-object v0, p0, Lqh/p0;->h:Lkf/d;

    .line 20
    .line 21
    invoke-virtual {v0}, Lkf/d;->reset()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lqh/p0;->i:Lkf/d;

    .line 25
    .line 26
    invoke-virtual {v0}, Lkf/d;->reset()V

    .line 27
    .line 28
    .line 29
    iput-boolean v1, p0, Lqh/p0;->j:Z

    .line 30
    .line 31
    return-object p0
.end method

.method public final o()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lqh/p0;->d:Lkf/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkf/d;->R()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v0, "[unset]"

    .line 14
    .line 15
    :cond_0
    return-object v0
.end method
