.class public final Lce/f0;
.super Lce/q;
.source "SourceFile"


# instance fields
.field public final C:Ljava/lang/String;

.field public final D:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lce/q;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    iput-byte v0, p0, Lce/q;->c:B

    .line 6
    .line 7
    iput-object p1, p0, Lce/f0;->C:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lce/f0;->D:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final d(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final i(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final o(I[B)I
    .locals 4

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    aput-byte v1, p2, p1

    .line 5
    .line 6
    iget-boolean v2, p0, Lce/q;->q:Z

    .line 7
    .line 8
    iget-object v3, p0, Lce/f0;->C:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, v3, p2, v0, v2}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    add-int/2addr v2, v0

    .line 15
    add-int/lit8 v0, v2, 0x1

    .line 16
    .line 17
    aput-byte v1, p2, v2

    .line 18
    .line 19
    iget-boolean v1, p0, Lce/q;->q:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x2

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-byte v3, p2, v0

    .line 27
    .line 28
    move v0, v2

    .line 29
    :cond_0
    iget-object v2, p0, Lce/f0;->D:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, v2, p2, v0, v1}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    add-int/2addr p2, v0

    .line 36
    sub-int/2addr p2, p1

    .line 37
    return p2
.end method

.method public final t(I[B)I
    .locals 2

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1, p2, p1}, Lce/q;->q(J[BI)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
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
    const-string v2, "SmbComRename["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lce/q;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",searchAttributes=0x"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x16

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    invoke-static {v2, v3}, Lde/c;->c(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ",oldFileName="

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lce/f0;->C:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, ",newFileName="

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lce/f0;->D:Ljava/lang/String;

    .line 48
    .line 49
    const-string v3, "]"

    .line 50
    .line 51
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v0
.end method
