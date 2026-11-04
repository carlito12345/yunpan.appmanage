.class public final Lw4/r;
.super Lw4/f;
.source "SourceFile"


# instance fields
.field public final e:Ly4/e;


# direct methods
.method public constructor <init>(Lw4/n;Lw4/p;Lw4/l;Ly4/e;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lw4/f;-><init>(Lw4/n;Lw4/p;Lw4/k;Lw4/l;)V

    .line 3
    .line 4
    .line 5
    const/4 p2, 0x6

    .line 6
    iget p1, p1, Lw4/n;->e:I

    .line 7
    .line 8
    if-ne p1, p2, :cond_1

    .line 9
    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    iput-object p4, p0, Lw4/r;->e:Ly4/e;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 16
    .line 17
    const-string p2, "catches == null"

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string p3, "opcode with invalid branchingness: "

    .line 26
    .line 27
    invoke-static {p1, p3}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p2
.end method

.method public static e(Ly4/e;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "catch"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-object v1, p0

    .line 14
    check-cast v1, Lb5/c;

    .line 15
    .line 16
    iget-object v1, v1, Lb5/c;->b:[Ljava/lang/Object;

    .line 17
    .line 18
    array-length v1, v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_0

    .line 21
    .line 22
    const-string v3, " "

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, v2}, Ly4/e;->b(I)Ly4/c;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ly4/c;->a()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final b(Lw4/e;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lw4/e;->i(Lw4/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c()Ly4/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lw4/r;->e:Ly4/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw4/r;->e:Ly4/e;

    .line 2
    .line 3
    invoke-static {v0}, Lw4/r;->e(Ly4/e;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
