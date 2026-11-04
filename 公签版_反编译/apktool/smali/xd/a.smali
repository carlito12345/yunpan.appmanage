.class public final Lxd/a;
.super Lxd/e;
.source "SourceFile"


# static fields
.field public static final i:[Ljava/lang/String;


# instance fields
.field public final h:Lxd/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "0"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    const-string v1, "DCERPC_BIND_ERR_ABSTRACT_SYNTAX_NOT_SUPPORTED"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    const-string v1, "DCERPC_BIND_ERR_PROPOSED_TRANSFER_SYNTAXES_NOT_SUPPORTED"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    const-string v1, "DCERPC_BIND_ERR_LOCAL_LIMIT_EXCEEDED"

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sput-object v0, Lxd/a;->i:[Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lxd/b;Ld2/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxd/e;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxd/a;->h:Lxd/b;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 p1, 0xb

    .line 10
    .line 11
    iput p1, p0, Lxd/e;->b:I

    .line 12
    .line 13
    const/4 p1, 0x3

    .line 14
    iput p1, p0, Lxd/e;->c:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final t0(Ls3/d0;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ls3/d0;->d()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ls3/d0;->d()I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ls3/d0;->c()I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ls3/d0;->d()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1, v0}, Ls3/d0;->a(I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    invoke-virtual {p1, v0}, Ls3/d0;->b(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ls3/d0;->e()I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ls3/d0;->b(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ls3/d0;->d()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lxd/e;->g:I

    .line 32
    .line 33
    invoke-virtual {p1}, Ls3/d0;->d()I

    .line 34
    .line 35
    .line 36
    const/16 v0, 0x14

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ls3/d0;->a(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final v0(Ls3/d0;)V
    .locals 2

    .line 1
    const/16 v0, 0x10b8

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ls3/d0;->j(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ls3/d0;->j(I)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Ls3/d0;->h(I)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p1, v1}, Ls3/d0;->k(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ls3/d0;->k(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ls3/d0;->j(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ls3/d0;->j(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ls3/d0;->k(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ls3/d0;->k(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lxd/a;->h:Lxd/b;

    .line 33
    .line 34
    iget-object v1, v0, Lxd/b;->e:Lxd/f;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Lxd/f;->v(Ls3/d0;)V

    .line 37
    .line 38
    .line 39
    iget v1, v0, Lxd/b;->f:I

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ls3/d0;->j(I)V

    .line 42
    .line 43
    .line 44
    iget v0, v0, Lxd/b;->g:I

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ls3/d0;->j(I)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Lxd/c;->J0:Lxd/f;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lxd/f;->v(Ls3/d0;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x2

    .line 55
    invoke-virtual {p1, v0}, Ls3/d0;->h(I)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final w0()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final x0()Lch/a;
    .locals 3

    .line 1
    iget v0, p0, Lxd/e;->g:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lch/a;

    .line 6
    .line 7
    iget v1, p0, Lxd/e;->g:I

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    sget-object v2, Lxd/a;->i:[Ljava/lang/String;

    .line 13
    .line 14
    aget-object v1, v2, v1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v1, v2}, Lde/c;->c(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "0x"

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-direct {v0, v1}, Lch/a;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    return-object v0
.end method
