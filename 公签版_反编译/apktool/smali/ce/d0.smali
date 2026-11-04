.class public final Lce/d0;
.super Lce/a;
.source "SourceFile"


# static fields
.field public static final L:I


# instance fields
.field public F:J

.field public G:I

.field public H:I

.field public I:I

.field public K:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "jcifs.smb1.smb.client.ReadAndX.Close"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput v0, Lce/d0;->L:I

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lce/a;-><init>(Lce/q;)V

    const/16 v0, 0x2e

    .line 2
    iput-byte v0, p0, Lce/q;->c:B

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lce/a;-><init>(Lce/q;)V

    .line 4
    iput p1, p0, Lce/d0;->G:I

    .line 5
    iput-wide p3, p0, Lce/d0;->F:J

    .line 6
    iput p2, p0, Lce/d0;->I:I

    iput p2, p0, Lce/d0;->H:I

    const/16 p1, 0x2e

    .line 7
    iput-byte p1, p0, Lce/q;->c:B

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
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final t(I[B)I
    .locals 4

    .line 1
    iget v0, p0, Lce/d0;->G:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1, p2, p1}, Lce/q;->q(J[BI)V

    .line 5
    .line 6
    .line 7
    add-int/lit8 v0, p1, 0x2

    .line 8
    .line 9
    iget-wide v1, p0, Lce/d0;->F:J

    .line 10
    .line 11
    invoke-static {v1, v2, p2, v0}, Lce/q;->r(J[BI)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v0, p1, 0x6

    .line 15
    .line 16
    iget v1, p0, Lce/d0;->H:I

    .line 17
    .line 18
    int-to-long v1, v1

    .line 19
    invoke-static {v1, v2, p2, v0}, Lce/q;->q(J[BI)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, p1, 0x8

    .line 23
    .line 24
    iget v1, p0, Lce/d0;->I:I

    .line 25
    .line 26
    int-to-long v1, v1

    .line 27
    invoke-static {v1, v2, p2, v0}, Lce/q;->q(J[BI)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v0, p1, 0xa

    .line 31
    .line 32
    const/4 v1, -0x1

    .line 33
    int-to-long v1, v1

    .line 34
    invoke-static {v1, v2, p2, v0}, Lce/q;->r(J[BI)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, p1, 0xe

    .line 38
    .line 39
    iget v1, p0, Lce/d0;->K:I

    .line 40
    .line 41
    int-to-long v1, v1

    .line 42
    invoke-static {v1, v2, p2, v0}, Lce/q;->q(J[BI)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v0, p1, 0x10

    .line 46
    .line 47
    iget-wide v1, p0, Lce/d0;->F:J

    .line 48
    .line 49
    const/16 v3, 0x20

    .line 50
    .line 51
    shr-long/2addr v1, v3

    .line 52
    invoke-static {v1, v2, p2, v0}, Lce/q;->r(J[BI)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 p2, p1, 0x14

    .line 56
    .line 57
    sub-int/2addr p2, p1

    .line 58
    return p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "SmbComReadAndX["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lce/a;->toString()Ljava/lang/String;

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
    iget v2, p0, Lce/d0;->G:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",offset="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-wide v3, p0, Lce/d0;->F:J

    .line 33
    .line 34
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, ",maxCount="

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v3, p0, Lce/d0;->H:I

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, ",minCount="

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v3, p0, Lce/d0;->I:I

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, ",openTimeout=-1,remaining="

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v3, p0, Lce/d0;->K:I

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-wide v2, p0, Lce/d0;->F:J

    .line 71
    .line 72
    const-string v4, "]"

    .line 73
    .line 74
    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/media/session/a;->t(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v0
.end method

.method public final v(B)I
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    sget p1, Lce/d0;->L:I

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method
