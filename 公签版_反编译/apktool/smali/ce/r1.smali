.class public final Lce/r1;
.super Lce/i0;
.source "SourceFile"


# instance fields
.field public final M0:I

.field public final N0:I

.field public final O0:J

.field public final P0:J


# direct methods
.method public constructor <init>(IIJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lce/i0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lce/r1;->M0:I

    .line 5
    .line 6
    iput p2, p0, Lce/r1;->N0:I

    .line 7
    .line 8
    iput-wide p3, p0, Lce/r1;->O0:J

    .line 9
    .line 10
    iput-wide p5, p0, Lce/r1;->P0:J

    .line 11
    .line 12
    const/16 p1, 0x32

    .line 13
    .line 14
    iput-byte p1, p0, Lce/q;->c:B

    .line 15
    .line 16
    const/16 p1, 0x8

    .line 17
    .line 18
    iput-byte p1, p0, Lce/i0;->X:B

    .line 19
    .line 20
    const/4 p1, 0x6

    .line 21
    iput p1, p0, Lce/i0;->R:I

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lce/i0;->S:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Trans2SetFileInformation["

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
    const-string v2, ",fid="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lce/r1;->M0:I

    .line 23
    .line 24
    const-string v3, "]"

    .line 25
    .line 26
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

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

.method public final v(I[B)I
    .locals 10

    .line 1
    iget-wide v0, p0, Lce/r1;->O0:J

    .line 2
    .line 3
    const-wide/16 v2, 0x2710

    .line 4
    .line 5
    const-wide v4, 0xa9730b66800L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide/16 v6, 0x0

    .line 11
    .line 12
    cmp-long v8, v0, v6

    .line 13
    .line 14
    if-eqz v8, :cond_0

    .line 15
    .line 16
    add-long/2addr v0, v4

    .line 17
    mul-long v0, v0, v2

    .line 18
    .line 19
    :cond_0
    invoke-static {v0, v1, p2, p1}, Lce/q;->s(J[BI)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, p1, 0x8

    .line 23
    .line 24
    invoke-static {v6, v7, p2, v0}, Lce/q;->s(J[BI)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v0, p1, 0x10

    .line 28
    .line 29
    iget-wide v8, p0, Lce/r1;->P0:J

    .line 30
    .line 31
    cmp-long v1, v8, v6

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    add-long/2addr v8, v4

    .line 36
    mul-long v8, v8, v2

    .line 37
    .line 38
    :cond_1
    invoke-static {v8, v9, p2, v0}, Lce/q;->s(J[BI)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v0, p1, 0x18

    .line 42
    .line 43
    invoke-static {v6, v7, p2, v0}, Lce/q;->s(J[BI)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v0, p1, 0x20

    .line 47
    .line 48
    iget v1, p0, Lce/r1;->N0:I

    .line 49
    .line 50
    or-int/lit16 v1, v1, 0x80

    .line 51
    .line 52
    int-to-long v1, v1

    .line 53
    invoke-static {v1, v2, p2, v0}, Lce/q;->q(J[BI)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v0, p1, 0x22

    .line 57
    .line 58
    invoke-static {v6, v7, p2, v0}, Lce/q;->s(J[BI)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 p2, p1, 0x28

    .line 62
    .line 63
    sub-int/2addr p2, p1

    .line 64
    return p2
.end method

.method public final w([B)I
    .locals 3

    .line 1
    iget v0, p0, Lce/r1;->M0:I

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
    const-wide/16 v1, 0x101

    .line 10
    .line 11
    invoke-static {v1, v2, p1, v0}, Lce/q;->q(J[BI)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    invoke-static {v1, v2, p1, v0}, Lce/q;->q(J[BI)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x6

    .line 21
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
