.class public final Lce/n1;
.super Lce/i0;
.source "SourceFile"


# instance fields
.field public final M0:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lce/i0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lce/q;->x:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lce/n1;->M0:I

    .line 7
    .line 8
    const/16 p1, 0x32

    .line 9
    .line 10
    iput-byte p1, p0, Lce/q;->c:B

    .line 11
    .line 12
    const/4 p1, 0x5

    .line 13
    iput-byte p1, p0, Lce/i0;->X:B

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lce/i0;->P:I

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    iput p1, p0, Lce/i0;->R:I

    .line 20
    .line 21
    const/16 p1, 0x28

    .line 22
    .line 23
    iput p1, p0, Lce/i0;->S:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Trans2QueryPathInformation["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lce/i0;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",informationLevel=0x"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lce/n1;->M0:I

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    const-string v4, ",filename="

    .line 26
    .line 27
    invoke-static {v2, v3, v4, v1}, Landroid/support/v4/media/session/a;->y(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lce/q;->x:Ljava/lang/String;

    .line 31
    .line 32
    const-string v3, "]"

    .line 33
    .line 34
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public final v(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final w([B)I
    .locals 3

    .line 1
    iget v0, p0, Lce/n1;->M0:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, p1, v2}, Lce/q;->q(J[BI)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    aput-byte v2, p1, v0

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    aput-byte v2, p1, v0

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    aput-byte v2, p1, v0

    .line 16
    .line 17
    const/4 v0, 0x5

    .line 18
    aput-byte v2, p1, v0

    .line 19
    .line 20
    iget-object v0, p0, Lce/q;->x:Ljava/lang/String;

    .line 21
    .line 22
    iget-boolean v1, p0, Lce/q;->q:Z

    .line 23
    .line 24
    const/4 v2, 0x6

    .line 25
    invoke-virtual {p0, v0, p1, v2, v1}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    add-int/2addr p1, v2

    .line 30
    return p1
.end method

.method public final x(I[B)I
    .locals 2

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    iget-byte v1, p0, Lce/i0;->X:B

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
