.class public final Ly1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly1/k0;


# instance fields
.field public final a:Lba/n;

.field public final b:Ly1/f0;

.field public c:Ly1/a;

.field public d:Ly1/k0;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Ly1/f0;Lu1/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/h;->b:Ly1/f0;

    .line 5
    .line 6
    new-instance p1, Lba/n;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Lba/n;-><init>(Lu1/z;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Ly1/h;->a:Lba/n;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Ly1/h;->e:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Ly1/h;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ly1/h;->a:Lba/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lba/n;->a()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Ly1/h;->d:Ly1/k0;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ly1/k0;->a()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    :goto_0
    return-wide v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly1/h;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ly1/h;->a:Lba/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Ly1/h;->d:Ly1/k0;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ly1/k0;->b()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_0
    return v0
.end method

.method public final c()Lr1/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/h;->d:Ly1/k0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ly1/k0;->c()Lr1/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Ly1/h;->a:Lba/n;

    .line 11
    .line 12
    iget-object v0, v0, Lba/n;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lr1/h0;

    .line 15
    .line 16
    :goto_0
    return-object v0
.end method

.method public final d(Ly1/a;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ly1/a;->i()Ly1/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Ly1/h;->d:Ly1/k0;

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iput-object v0, p0, Ly1/h;->d:Ly1/k0;

    .line 14
    .line 15
    iput-object p1, p0, Ly1/h;->c:Ly1/a;

    .line 16
    .line 17
    iget-object p1, p0, Ly1/h;->a:Lba/n;

    .line 18
    .line 19
    iget-object p1, p1, Lba/n;->e:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lr1/h0;

    .line 22
    .line 23
    check-cast v0, La2/q1;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, La2/q1;->e(Lr1/h0;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "Multiple renderer media clocks enabled."

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Ly1/k;

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    const/16 v2, 0x3e8

    .line 40
    .line 41
    invoke-direct {v0, v1, p1, v2}, Ly1/k;-><init>(ILjava/lang/Exception;I)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Lr1/h0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/h;->d:Ly1/k0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ly1/k0;->e(Lr1/h0;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Ly1/h;->d:Ly1/k0;

    .line 9
    .line 10
    invoke-interface {p1}, Ly1/k0;->c()Lr1/h0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    iget-object v0, p0, Ly1/h;->a:Lba/n;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lba/n;->e(Lr1/h0;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
