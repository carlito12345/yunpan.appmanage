.class public final Lw4/h;
.super Lw4/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lw4/n;Lw4/p;Lw4/k;Lw4/l;Lx4/v;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lw4/c;-><init>(Lw4/n;Lw4/p;Lw4/k;Lw4/l;Lx4/a;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    iget p1, p1, Lw4/n;->e:I

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string p3, "opcode with invalid branchingness: "

    .line 13
    .line 14
    invoke-static {p1, p3}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p2
.end method


# virtual methods
.method public final b(Lw4/e;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lw4/e;->d(Lw4/h;)V

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
