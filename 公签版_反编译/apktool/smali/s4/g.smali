.class public final Ls4/g;
.super Ls4/l;
.source "SourceFile"


# instance fields
.field public final e:Lx4/a;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Ls4/j;Lw4/p;Lw4/l;Lx4/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ls4/l;-><init>(Ls4/j;Lw4/p;Lw4/l;)V

    .line 2
    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    iput-object p4, p0, Ls4/g;->e:Lx4/a;

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    iput p1, p0, Ls4/g;->f:I

    .line 10
    .line 11
    iput p1, p0, Ls4/g;->g:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 15
    .line 16
    const-string p2, "constant == null"

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/g;->e:Lx4/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lb5/h;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Ls4/g;->f:I

    .line 2
    .line 3
    if-ltz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const/16 v1, 0x14

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Ls4/g;->e:Lx4/a;

    .line 13
    .line 14
    invoke-virtual {v1}, Lx4/a;->d()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x40

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v1, p0, Ls4/g;->f:I

    .line 27
    .line 28
    const/high16 v2, 0x10000

    .line 29
    .line 30
    if-ge v1, v2, :cond_0

    .line 31
    .line 32
    invoke-static {v1}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v1}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    :cond_1
    const-string v0, ""

    .line 53
    .line 54
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ls4/g;->e:Lx4/a;

    .line 2
    .line 3
    instance-of v1, v0, Lx4/t;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lx4/t;

    .line 8
    .line 9
    invoke-virtual {v0}, Lx4/t;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-interface {v0}, Lb5/h;->a()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final i(Ls4/j;)Ls4/h;
    .locals 4

    .line 1
    new-instance v0, Ls4/g;

    .line 2
    .line 3
    iget-object v1, p0, Ls4/g;->e:Lx4/a;

    .line 4
    .line 5
    iget-object v2, p0, Ls4/h;->c:Lw4/p;

    .line 6
    .line 7
    iget-object v3, p0, Ls4/h;->d:Lw4/l;

    .line 8
    .line 9
    invoke-direct {v0, p1, v2, v3, v1}, Ls4/g;-><init>(Ls4/j;Lw4/p;Lw4/l;Lx4/a;)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Ls4/g;->f:I

    .line 13
    .line 14
    if-ltz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ls4/g;->o(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget p1, p0, Ls4/g;->g:I

    .line 20
    .line 21
    if-ltz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ls4/g;->n(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-object v0
.end method

.method public final k(Lw4/l;)Ls4/h;
    .locals 4

    .line 1
    new-instance v0, Ls4/g;

    .line 2
    .line 3
    iget-object v1, p0, Ls4/h;->b:Ls4/j;

    .line 4
    .line 5
    iget-object v2, p0, Ls4/h;->c:Lw4/p;

    .line 6
    .line 7
    iget-object v3, p0, Ls4/g;->e:Lx4/a;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p1, v3}, Ls4/g;-><init>(Ls4/j;Lw4/p;Lw4/l;Lx4/a;)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Ls4/g;->f:I

    .line 13
    .line 14
    if-ltz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ls4/g;->o(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget p1, p0, Ls4/g;->g:I

    .line 20
    .line 21
    if-ltz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ls4/g;->n(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-object v0
.end method

.method public final m()I
    .locals 3

    .line 1
    iget v0, p0, Ls4/g;->f:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "index not yet set for "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Ls4/g;->e:Lx4/a;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public final n(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget v0, p0, Ls4/g;->g:I

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Ls4/g;->g:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v0, "class index already set"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "index < 0"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public final o(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget v0, p0, Ls4/g;->f:I

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Ls4/g;->f:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v0, "index already set"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "index < 0"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method
