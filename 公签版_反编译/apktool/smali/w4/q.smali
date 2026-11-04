.class public final Lw4/q;
.super Lw4/c;
.source "SourceFile"


# instance fields
.field public final f:Ly4/e;


# direct methods
.method public constructor <init>(Lw4/n;Lw4/p;Lw4/l;Ly4/e;Lx4/a;)V
    .locals 6

    .line 1
    const/4 v3, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v4, p3

    .line 6
    move-object v5, p5

    .line 7
    invoke-direct/range {v0 .. v5}, Lw4/c;-><init>(Lw4/n;Lw4/p;Lw4/k;Lw4/l;Lx4/a;)V

    .line 8
    .line 9
    .line 10
    const/4 p2, 0x6

    .line 11
    iget p1, p1, Lw4/n;->e:I

    .line 12
    .line 13
    if-ne p1, p2, :cond_1

    .line 14
    .line 15
    if-eqz p4, :cond_0

    .line 16
    .line 17
    iput-object p4, p0, Lw4/q;->f:Ly4/e;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 21
    .line 22
    const-string p2, "catches == null"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string p3, "opcode with invalid branchingness: "

    .line 31
    .line 32
    invoke-static {p1, p3}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p2
.end method


# virtual methods
.method public final b(Lw4/e;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lw4/e;->a(Lw4/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c()Ly4/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lw4/q;->f:Ly4/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lw4/c;->e:Lx4/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lb5/h;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v0, Lx4/t;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    check-cast v0, Lx4/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Lx4/t;->e()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    const-string v0, " "

    .line 18
    .line 19
    invoke-static {v1, v0}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lw4/q;->f:Ly4/e;

    .line 24
    .line 25
    invoke-static {v1}, Lw4/r;->e(Ly4/e;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
