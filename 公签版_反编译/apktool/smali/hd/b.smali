.class public final Lhd/b;
.super Lgd/b;
.source "SourceFile"


# instance fields
.field public final t0:Lbd/d;


# direct methods
.method public constructor <init>(Lvc/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgd/b;-><init>(Lvc/f;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lbd/d;

    .line 5
    .line 6
    invoke-direct {p1}, Lbd/d;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lhd/b;->t0:Lbd/d;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final h0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final s0(II[B)I
    .locals 1

    .line 1
    iget-object v0, p0, Lhd/b;->t0:Lbd/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lbd/d;->i(II[B)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    add-int/2addr p2, p1

    .line 8
    sub-int/2addr p2, p1

    .line 9
    return p2
.end method

.method public final t0([B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Trans2GetDfsReferralResponse["

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
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",buffer="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lhd/b;->t0:Lbd/d;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "]"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method
