.class public final Lhd/a;
.super Lgd/a;
.source "SourceFile"


# instance fields
.field public final P0:Lbd/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lvc/f;)V
    .locals 2

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {p0, p2, v0, v1}, Lgd/a;-><init>(Lvc/f;BB)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Lbd/c;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p2, p1, v0}, Lbd/c;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lhd/a;->P0:Lbd/c;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lgd/a;->V:I

    .line 18
    .line 19
    iput p1, p0, Lgd/a;->X:I

    .line 20
    .line 21
    const/16 p1, 0x1000

    .line 22
    .line 23
    iput p1, p0, Lgd/a;->Y:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final t0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

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
    const-string v2, "Trans2GetDfsReferral["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lgd/a;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",maxReferralLevel=0x3,filename="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Led/c;->t:Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, "]"

    .line 25
    .line 26
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public final u0([B)I
    .locals 2

    .line 1
    iget-object v0, p0, Lhd/a;->P0:Lbd/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1}, Lbd/c;->c(I[B)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public final v0(I[B)I
    .locals 2

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    iget-byte v1, p0, Lgd/a;->t0:B

    .line 4
    .line 5
    aput-byte v1, p2, p1

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    aput-byte p1, p2, v0

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    return p1
.end method
