.class public final Lyd/a;
.super Lxd/e;
.source "SourceFile"


# instance fields
.field public h:I

.field public final i:Ljava/lang/String;

.field public j:Lyd/d;

.field public final k:Lzd/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lyd/d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lyd/d;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lzd/a;

    .line 8
    .line 9
    invoke-direct {v1}, Lzd/a;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lxd/e;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lyd/a;->i:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lyd/a;->j:Lyd/d;

    .line 18
    .line 19
    iput-object v1, p0, Lyd/a;->k:Lzd/a;

    .line 20
    .line 21
    const/16 p1, 0xc8

    .line 22
    .line 23
    iput p1, v0, Lyd/d;->c:I

    .line 24
    .line 25
    new-instance p1, Lyd/e;

    .line 26
    .line 27
    invoke-direct {p1}, Lyd/e;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, v0, Lyd/d;->d:Ljava/lang/Object;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lxd/e;->b:I

    .line 34
    .line 35
    const/4 p1, 0x3

    .line 36
    iput p1, p0, Lxd/e;->c:I

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final t0(Ls3/d0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ls3/d0;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lyd/a;->j:Lyd/d;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lyd/d;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Lyd/d;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lyd/a;->j:Lyd/d;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lyd/a;->j:Lyd/d;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lyd/d;->s(Ls3/d0;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p1}, Ls3/d0;->c()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lyd/a;->k:Lzd/a;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ls3/d0;->c()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput v1, v0, Lzd/a;->b:I

    .line 40
    .line 41
    :cond_2
    invoke-virtual {p1}, Ls3/d0;->c()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p0, Lyd/a;->h:I

    .line 46
    .line 47
    return-void
.end method

.method public final v0(Ls3/d0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lyd/a;->i:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ls3/d0;->l(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0xc8

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ls3/d0;->h(I)V

    .line 9
    .line 10
    .line 11
    const v0, 0xffff

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ls3/d0;->h(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lyd/a;->j:Lyd/d;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ls3/d0;->i(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lyd/a;->j:Lyd/d;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lyd/d;->v(Ls3/d0;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lyd/a;->k:Lzd/a;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ls3/d0;->i(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget v0, v0, Lzd/a;->b:I

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ls3/d0;->h(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final w0()I
    .locals 1

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    return v0
.end method
