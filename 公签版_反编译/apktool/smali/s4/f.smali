.class public final Ls4/f;
.super Ls4/w;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lw4/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls4/w;-><init>(Lw4/p;)V

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

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "code-address"

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(Lw4/l;)Ls4/h;
    .locals 1

    .line 1
    new-instance p1, Ls4/f;

    .line 2
    .line 3
    iget-object v0, p0, Ls4/h;->c:Lw4/p;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ls4/f;-><init>(Lw4/p;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method
