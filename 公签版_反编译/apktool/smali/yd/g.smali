.class public final Lyd/g;
.super Lnh/b;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnh/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final s(Ls3/d0;)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ls3/d0;->b(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ls3/d0;->c()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Ls3/d0;->c()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, p0, Lyd/g;->c:I

    .line 14
    .line 15
    invoke-virtual {p1}, Ls3/d0;->c()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object p1, p1, Ls3/d0;->f:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Ls3/d0;

    .line 24
    .line 25
    invoke-virtual {p1}, Ls3/d0;->f()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lyd/g;->b:Ljava/lang/String;

    .line 30
    .line 31
    :cond_0
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object p1, p1, Ls3/d0;->f:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Ls3/d0;

    .line 36
    .line 37
    invoke-virtual {p1}, Ls3/d0;->f()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lyd/g;->d:Ljava/lang/String;

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final v(Ls3/d0;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ls3/d0;->b(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lyd/g;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ls3/d0;->i(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lyd/g;->c:I

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ls3/d0;->h(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lyd/g;->d:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ls3/d0;->i(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lyd/g;->b:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object p1, p1, Ls3/d0;->f:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ls3/d0;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ls3/d0;->l(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lyd/g;->d:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object p1, p1, Ls3/d0;->f:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Ls3/d0;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ls3/d0;->l(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method
