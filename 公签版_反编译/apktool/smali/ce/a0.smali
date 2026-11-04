.class public final Lce/a0;
.super Lce/a;
.source "SourceFile"


# static fields
.field public static final H:I


# instance fields
.field public final F:I

.field public final G:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "jcifs.smb1.smb.client.OpenAndX.ReadAndX"

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
    sput v0, Lce/a0;->H:I

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lce/a;-><init>(Lce/q;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lce/q;->x:Ljava/lang/String;

    .line 6
    .line 7
    const/16 p1, 0x2d

    .line 8
    .line 9
    iput-byte p1, p0, Lce/q;->c:B

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    and-int/2addr p2, p1

    .line 13
    iput p2, p0, Lce/a0;->F:I

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-ne p2, p1, :cond_0

    .line 17
    .line 18
    iput v0, p0, Lce/a0;->F:I

    .line 19
    .line 20
    :cond_0
    iget p1, p0, Lce/a0;->F:I

    .line 21
    .line 22
    const/16 p2, 0x40

    .line 23
    .line 24
    or-int/2addr p1, p2

    .line 25
    and-int/lit8 p1, p1, -0x2

    .line 26
    .line 27
    iput p1, p0, Lce/a0;->F:I

    .line 28
    .line 29
    and-int/lit8 p1, p3, 0x40

    .line 30
    .line 31
    const/16 v1, 0x10

    .line 32
    .line 33
    if-ne p1, p2, :cond_2

    .line 34
    .line 35
    and-int/lit8 p1, p3, 0x10

    .line 36
    .line 37
    if-ne p1, v1, :cond_1

    .line 38
    .line 39
    const/16 p1, 0x12

    .line 40
    .line 41
    iput p1, p0, Lce/a0;->G:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iput v0, p0, Lce/a0;->G:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    and-int/lit8 p1, p3, 0x10

    .line 48
    .line 49
    if-ne p1, v1, :cond_4

    .line 50
    .line 51
    const/16 p1, 0x20

    .line 52
    .line 53
    and-int/lit8 p2, p3, 0x20

    .line 54
    .line 55
    if-ne p2, p1, :cond_3

    .line 56
    .line 57
    iput v1, p0, Lce/a0;->G:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/16 p1, 0x11

    .line 61
    .line 62
    iput p1, p0, Lce/a0;->G:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    const/4 p1, 0x1

    .line 66
    iput p1, p0, Lce/a0;->G:I

    .line 67
    .line 68
    :goto_0
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
    .locals 3

    .line 1
    iget-boolean v0, p0, Lce/q;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 v1, p1, 0x1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-byte v2, p2, p1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, p1

    .line 12
    :goto_0
    iget-object v2, p0, Lce/q;->x:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0, v2, p2, v1, v0}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    add-int/2addr p2, v1

    .line 19
    sub-int/2addr p2, p1

    .line 20
    return p2
.end method

.method public final t(I[B)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    int-to-long v1, v0

    .line 3
    invoke-static {v1, v2, p2, p1}, Lce/q;->q(J[BI)V

    .line 4
    .line 5
    .line 6
    add-int/lit8 v3, p1, 0x2

    .line 7
    .line 8
    iget v4, p0, Lce/a0;->F:I

    .line 9
    .line 10
    int-to-long v4, v4

    .line 11
    invoke-static {v4, v5, p2, v3}, Lce/q;->q(J[BI)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v3, p1, 0x4

    .line 15
    .line 16
    const/16 v4, 0x16

    .line 17
    .line 18
    int-to-long v4, v4

    .line 19
    invoke-static {v4, v5, p2, v3}, Lce/q;->q(J[BI)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v3, p1, 0x6

    .line 23
    .line 24
    invoke-static {v1, v2, p2, v3}, Lce/q;->q(J[BI)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v3, p1, 0x8

    .line 28
    .line 29
    invoke-static {v1, v2, p2, v3}, Lce/q;->r(J[BI)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v3, p1, 0xc

    .line 33
    .line 34
    iget v4, p0, Lce/a0;->G:I

    .line 35
    .line 36
    int-to-long v4, v4

    .line 37
    invoke-static {v4, v5, p2, v3}, Lce/q;->q(J[BI)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, p1, 0xe

    .line 41
    .line 42
    invoke-static {v1, v2, p2, v3}, Lce/q;->r(J[BI)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, p1, 0x12

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    :goto_0
    const/16 v3, 0x8

    .line 49
    .line 50
    if-ge v2, v3, :cond_0

    .line 51
    .line 52
    add-int/lit8 v3, v1, 0x1

    .line 53
    .line 54
    aput-byte v0, p2, v1

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    move v1, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    sub-int/2addr v1, p1

    .line 61
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "SmbComOpenAndX["

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
    const-string v2, ",flags=0x"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-static {v2, v3}, Lde/c;->c(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v4, ",desiredAccess=0x"

    .line 32
    .line 33
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v4, p0, Lce/a0;->F:I

    .line 37
    .line 38
    const/4 v5, 0x4

    .line 39
    const-string v6, ",searchAttributes=0x"

    .line 40
    .line 41
    invoke-static {v4, v5, v6, v1}, Landroid/support/v4/media/session/a;->y(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 42
    .line 43
    .line 44
    const/16 v4, 0x16

    .line 45
    .line 46
    const-string v6, ",fileAttributes=0x"

    .line 47
    .line 48
    invoke-static {v4, v5, v6, v1}, Landroid/support/v4/media/session/a;->y(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v5}, Lde/c;->c(II)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v4, ",creationTime="

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    new-instance v4, Ljava/util/Date;

    .line 64
    .line 65
    int-to-long v5, v2

    .line 66
    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v2, ",openFunction=0x"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget v2, p0, Lce/a0;->G:I

    .line 78
    .line 79
    const-string v4, ",allocationSize=0,fileName="

    .line 80
    .line 81
    invoke-static {v2, v3, v4, v1}, Landroid/support/v4/media/session/a;->y(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lce/q;->x:Ljava/lang/String;

    .line 85
    .line 86
    const-string v3, "]"

    .line 87
    .line 88
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object v0
.end method

.method public final v(B)I
    .locals 1

    .line 1
    const/16 v0, 0x2e

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget p1, Lce/a0;->H:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method
