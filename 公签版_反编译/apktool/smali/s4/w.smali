.class public abstract Ls4/w;
.super Ls4/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lw4/p;)V
    .locals 2

    .line 1
    sget-object v0, Ls4/k;->b:Ls4/j;

    .line 2
    .line 3
    sget-object v1, Lw4/l;->c:Lw4/l;

    .line 4
    .line 5
    invoke-direct {p0, v0, p1, v1}, Ls4/h;-><init>(Ls4/j;Lw4/p;Lw4/l;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final i(Ls4/j;)Ls4/h;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string v0, "unsupported"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public j(I)Ls4/h;
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
    .locals 0

    .line 1
    return-void
.end method
