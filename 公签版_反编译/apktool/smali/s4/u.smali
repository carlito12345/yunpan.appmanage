.class public final Ls4/u;
.super Ls4/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ls4/j;Lw4/p;Lw4/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ls4/l;-><init>(Ls4/j;Lw4/p;Lw4/l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final i(Ls4/j;)Ls4/h;
    .locals 3

    .line 1
    new-instance v0, Ls4/u;

    .line 2
    .line 3
    iget-object v1, p0, Ls4/h;->c:Lw4/p;

    .line 4
    .line 5
    iget-object v2, p0, Ls4/h;->d:Lw4/l;

    .line 6
    .line 7
    invoke-direct {v0, p1, v1, v2}, Ls4/u;-><init>(Ls4/j;Lw4/p;Lw4/l;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final k(Lw4/l;)Ls4/h;
    .locals 3

    .line 1
    new-instance v0, Ls4/u;

    .line 2
    .line 3
    iget-object v1, p0, Ls4/h;->b:Ls4/j;

    .line 4
    .line 5
    iget-object v2, p0, Ls4/h;->c:Lw4/p;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Ls4/u;-><init>(Ls4/j;Lw4/p;Lw4/l;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
