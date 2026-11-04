.class public final Lhd/f;
.super Lgd/b;
.source "SourceFile"


# instance fields
.field public M0:Ldd/f;

.field public final t0:I


# direct methods
.method public constructor <init>(Lvc/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgd/b;-><init>(Lvc/f;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lhd/f;->t0:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final s0(II[B)I
    .locals 2

    .line 1
    const/4 p2, 0x4

    .line 2
    iget v0, p0, Lhd/f;->t0:I

    .line 3
    .line 4
    if-eq v0, p2, :cond_2

    .line 5
    .line 6
    const/4 p2, 0x5

    .line 7
    if-eq v0, p2, :cond_1

    .line 8
    .line 9
    const/4 p2, 0x6

    .line 10
    if-eq v0, p2, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Ldd/c;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {p2, v0, v1}, Ldd/c;-><init>(IZ)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    new-instance p2, Ldd/g;

    .line 23
    .line 24
    invoke-direct {p2}, Ldd/g;-><init>()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    new-instance p2, Ldd/b;

    .line 29
    .line 30
    invoke-direct {p2}, Ldd/b;-><init>()V

    .line 31
    .line 32
    .line 33
    :goto_0
    if-eqz p2, :cond_3

    .line 34
    .line 35
    iget v0, p0, Lgd/b;->X:I

    .line 36
    .line 37
    invoke-interface {p2, p1, v0, p3}, Lvc/g;->i(II[B)I

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    add-int/2addr p3, p1

    .line 42
    iput-object p2, p0, Lhd/f;->M0:Ldd/f;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    move p3, p1

    .line 46
    :goto_1
    sub-int/2addr p3, p1

    .line 47
    return p3
.end method

.method public final t0([B)I
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Trans2QueryPathInformationResponse["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lgd/b;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "]"

    .line 15
    .line 16
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method
