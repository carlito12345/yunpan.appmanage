.class public abstract Lid/c;
.super Lid/b;
.source "SourceFile"

# interfaces
.implements Lad/c;
.implements Lad/e;


# instance fields
.field public x:Lid/d;


# direct methods
.method public constructor <init>(Lvc/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lid/b;-><init>(Lvc/f;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final I()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lid/b;->r:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final bridge synthetic M(Lvc/b;)Lad/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lid/c;->r0(Lvc/b;)Lid/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final b()Lad/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lid/c;->x:Lid/d;

    return-object v0
.end method

.method public final b()Lhe/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lid/c;->x:Lid/d;

    return-object v0
.end method

.method public final c(I[B)I
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lid/b;->c(I[B)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-interface {p0}, Lad/c;->size()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget v0, p0, Lid/b;->c:I

    .line 10
    .line 11
    if-ne p2, v0, :cond_0

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x2

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    aput-object p2, v1, v2

    .line 29
    .line 30
    const/4 p2, 0x1

    .line 31
    aput-object v0, v1, p2

    .line 32
    .line 33
    const-string p2, "Wrong size calculation have %d expect %d"

    .line 34
    .line 35
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public final e0()Lad/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lid/b;->w:Lid/b;

    .line 2
    .line 3
    check-cast v0, Lid/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lid/b;->w:Lid/b;

    .line 9
    .line 10
    iget v1, v0, Lid/b;->b:I

    .line 11
    .line 12
    and-int/lit8 v1, v1, -0x5

    .line 13
    .line 14
    iput v1, v0, Lid/b;->b:I

    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method public final getNext()Lad/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lid/b;->w:Lid/b;

    .line 2
    .line 3
    check-cast v0, Lid/c;

    .line 4
    .line 5
    return-object v0
.end method

.method public final h()Lad/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lid/b;->w:Lid/b;

    .line 2
    .line 3
    check-cast v0, Lid/c;

    .line 4
    .line 5
    return-object v0
.end method

.method public abstract q0(Lvc/b;)Lid/d;
.end method

.method public final r0(Lvc/b;)Lid/d;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lid/c;->q0(Lvc/b;)Lid/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lid/b;->g:Lid/f;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lid/b;->i(Lad/h;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lid/c;->s(Lad/d;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lid/b;->w:Lid/b;

    .line 14
    .line 15
    check-cast v1, Lid/c;

    .line 16
    .line 17
    instance-of v2, v1, Lid/c;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lid/c;->r0(Lvc/b;)Lid/d;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, v0, Lid/b;->w:Lid/b;

    .line 26
    .line 27
    :cond_0
    return-object v0
.end method

.method public final s(Lad/d;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Lid/b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "Incompatible response"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :cond_1
    :goto_0
    check-cast p1, Lid/d;

    .line 17
    .line 18
    iput-object p1, p0, Lid/c;->x:Lid/d;

    .line 19
    .line 20
    return-void
.end method

.method public final u(Lad/c;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lid/b;->h:Lvc/f;

    .line 10
    .line 11
    check-cast v1, Lwc/a;

    .line 12
    .line 13
    iget-object v2, v1, Lwc/a;->p0:Ljava/util/HashSet;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    xor-int/2addr v0, v3

    .line 25
    :goto_0
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v0, v1, Lwc/a;->p0:Ljava/util/HashSet;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    xor-int/2addr p1, v3

    .line 46
    :goto_1
    if-eqz p1, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/4 v3, 0x0

    .line 50
    :goto_2
    return v3
.end method

.method public final v(I)V
    .locals 0

    .line 1
    iput p1, p0, Lid/b;->k:I

    .line 2
    .line 3
    return-void
.end method
