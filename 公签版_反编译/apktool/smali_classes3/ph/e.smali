.class public final Lph/e;
.super Lph/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lph/p;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Lph/q;->f()Lph/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lph/e;

    .line 6
    .line 7
    return-object v0
.end method

.method public final f()Lph/q;
    .locals 1

    .line 1
    invoke-super {p0}, Lph/q;->f()Lph/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lph/e;

    .line 6
    .line 7
    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "#comment"

    .line 2
    .line 3
    return-object v0
.end method

.method public final s(Loh/a;Lph/g;)V
    .locals 0

    .line 1
    const-string p2, "<!--"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lph/p;->A()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1, p2}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "-->"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Loh/a;->b(Ljava/lang/String;)Loh/a;

    .line 18
    .line 19
    .line 20
    return-void
.end method
