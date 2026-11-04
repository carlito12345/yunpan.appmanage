.class public final Lw4/i;
.super Lw4/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lw4/n;Lw4/p;Lw4/k;Lw4/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lw4/f;-><init>(Lw4/n;Lw4/p;Lw4/k;Lw4/l;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x5

    .line 5
    iget p1, p1, Lw4/n;->e:I

    .line 6
    .line 7
    if-eq p1, p2, :cond_2

    .line 8
    .line 9
    const/4 p2, 0x6

    .line 10
    if-eq p1, p2, :cond_2

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string p2, "can\'t mix branchingness with result"

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    return-void

    .line 27
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string p3, "opcode with invalid branchingness: "

    .line 30
    .line 31
    invoke-static {p1, p3}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p2
.end method


# virtual methods
.method public final b(Lw4/e;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lw4/e;->j(Lw4/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c()Ly4/e;
    .locals 1

    .line 1
    sget-object v0, Ly4/b;->c:Ly4/b;

    .line 2
    .line 3
    return-object v0
.end method
