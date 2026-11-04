.class public final Lyd/c;
.super Lxd/e;
.source "SourceFile"


# instance fields
.field public h:I

.field public final i:Ljava/lang/String;

.field public j:I

.field public k:Lnh/b;

.field public final l:I

.field public m:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "\\\\"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lyd/h;

    .line 8
    .line 9
    invoke-direct {v0}, Lyd/h;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lxd/e;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lyd/c;->i:Ljava/lang/String;

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lyd/c;->j:I

    .line 19
    .line 20
    iput-object v0, p0, Lyd/c;->k:Lnh/b;

    .line 21
    .line 22
    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lyd/c;->l:I

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lyd/c;->m:I

    .line 27
    .line 28
    iput p1, p0, Lxd/e;->b:I

    .line 29
    .line 30
    const/4 p1, 0x3

    .line 31
    iput p1, p0, Lxd/e;->c:I

    .line 32
    .line 33
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
    iput v0, p0, Lyd/c;->j:I

    .line 6
    .line 7
    invoke-virtual {p1}, Ls3/d0;->c()I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ls3/d0;->c()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lyd/c;->k:Lnh/b;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Lyd/d;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-direct {v0, v1}, Lyd/d;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lyd/c;->k:Lnh/b;

    .line 27
    .line 28
    :cond_0
    iget-object p1, p1, Ls3/d0;->f:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Ls3/d0;

    .line 31
    .line 32
    iget-object v0, p0, Lyd/c;->k:Lnh/b;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lnh/b;->s(Ls3/d0;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p1}, Ls3/d0;->c()I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ls3/d0;->c()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lyd/c;->m:I

    .line 45
    .line 46
    invoke-virtual {p1}, Ls3/d0;->c()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lyd/c;->h:I

    .line 51
    .line 52
    return-void
.end method

.method public final v0(Ls3/d0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lyd/c;->i:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ls3/d0;->i(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ls3/d0;->l(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget v0, p0, Lyd/c;->j:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ls3/d0;->h(I)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lyd/c;->j:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ls3/d0;->h(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lyd/c;->k:Lnh/b;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ls3/d0;->i(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lyd/c;->k:Lnh/b;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object p1, p1, Ls3/d0;->f:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Ls3/d0;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lnh/b;->v(Ls3/d0;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget v0, p0, Lyd/c;->l:I

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ls3/d0;->h(I)V

    .line 40
    .line 41
    .line 42
    iget v0, p0, Lyd/c;->m:I

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ls3/d0;->h(I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final w0()I
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    return v0
.end method
