.class public final Luh/n;
.super Lvh/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lsh/e;

.field public final synthetic b:Lsh/d;

.field public final synthetic c:Lth/d;

.field public final synthetic d:Lsh/o;


# direct methods
.method public constructor <init>(Lsh/e;Lsh/d;Lth/d;Lsh/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luh/n;->a:Lsh/e;

    .line 2
    .line 3
    iput-object p2, p0, Luh/n;->b:Lsh/d;

    .line 4
    .line 5
    iput-object p3, p0, Luh/n;->c:Lth/d;

    .line 6
    .line 7
    iput-object p4, p0, Luh/n;->d:Lsh/o;

    .line 8
    .line 9
    invoke-direct {p0}, Lvh/b;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(Lwh/m;)J
    .locals 2

    .line 1
    iget-object v0, p0, Luh/n;->a:Lsh/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lwh/m;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lsh/e;->b(Lwh/m;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    :cond_0
    iget-object v0, p0, Luh/n;->b:Lsh/d;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lsh/d;->b(Lwh/m;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0
.end method

.method public final c(Lwh/o;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lwh/n;->b:Ls5/c;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Luh/n;->c:Lth/d;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object v0, Lwh/n;->a:Ls9/a;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Luh/n;->d:Lsh/o;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    sget-object v0, Lwh/n;->c:Ls9/a;

    .line 16
    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Luh/n;->b:Lsh/d;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lsh/d;->c(Lwh/o;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_2
    invoke-interface {p1, p0}, Lwh/o;->b(Lwh/k;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public final d(Lwh/m;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Luh/n;->a:Lsh/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lwh/m;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lsh/e;->d(Lwh/m;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    iget-object v0, p0, Luh/n;->b:Lsh/d;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lsh/d;->d(Lwh/m;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public final f(Lwh/m;)Lwh/r;
    .locals 2

    .line 1
    iget-object v0, p0, Luh/n;->a:Lsh/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lwh/m;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lsh/e;->f(Lwh/m;)Lwh/r;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    iget-object v0, p0, Luh/n;->b:Lsh/d;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lvh/b;->f(Lwh/m;)Lwh/r;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
