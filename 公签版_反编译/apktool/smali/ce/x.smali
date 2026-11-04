.class public final Lce/x;
.super Lce/a;
.source "SourceFile"


# instance fields
.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public K:I

.field public L:I

.field public M:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 1

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
    const/16 p1, -0x5e

    .line 8
    .line 9
    iput-byte p1, p0, Lce/q;->c:B

    .line 10
    .line 11
    or-int/lit16 p1, p3, 0x89

    .line 12
    .line 13
    iput p1, p0, Lce/x;->M:I

    .line 14
    .line 15
    iput p5, p0, Lce/x;->F:I

    .line 16
    .line 17
    iput p4, p0, Lce/x;->G:I

    .line 18
    .line 19
    and-int/lit8 p1, p2, 0x40

    .line 20
    .line 21
    const/16 p3, 0x40

    .line 22
    .line 23
    const/16 p4, 0x10

    .line 24
    .line 25
    if-ne p1, p3, :cond_1

    .line 26
    .line 27
    and-int/lit8 p1, p2, 0x10

    .line 28
    .line 29
    if-ne p1, p4, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x5

    .line 32
    iput p1, p0, Lce/x;->H:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x4

    .line 36
    iput p1, p0, Lce/x;->H:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    and-int/lit8 p1, p2, 0x10

    .line 40
    .line 41
    if-ne p1, p4, :cond_3

    .line 42
    .line 43
    const/16 p1, 0x20

    .line 44
    .line 45
    and-int/2addr p2, p1

    .line 46
    if-ne p2, p1, :cond_2

    .line 47
    .line 48
    const/4 p1, 0x2

    .line 49
    iput p1, p0, Lce/x;->H:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 p1, 0x3

    .line 53
    iput p1, p0, Lce/x;->H:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 p1, 0x1

    .line 57
    iput p1, p0, Lce/x;->H:I

    .line 58
    .line 59
    :goto_0
    and-int/lit8 p1, p6, 0x1

    .line 60
    .line 61
    if-nez p1, :cond_4

    .line 62
    .line 63
    or-int/lit8 p1, p6, 0x40

    .line 64
    .line 65
    iput p1, p0, Lce/x;->I:I

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    iput p6, p0, Lce/x;->I:I

    .line 69
    .line 70
    :goto_1
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
    iget-object v0, p0, Lce/q;->x:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lce/q;->q:Z

    .line 4
    .line 5
    invoke-virtual {p0, v0, p2, p1, v1}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-boolean v0, p0, Lce/q;->q:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lce/q;->x:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    mul-int/lit8 v0, v0, 0x2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, p1

    .line 23
    :goto_0
    int-to-long v0, v0

    .line 24
    iget v2, p0, Lce/x;->K:I

    .line 25
    .line 26
    invoke-static {v0, v1, p2, v2}, Lce/q;->q(J[BI)V

    .line 27
    .line 28
    .line 29
    return p1
.end method

.method public final t(I[B)I
    .locals 4

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput-byte v1, p2, p1

    .line 5
    .line 6
    iput v0, p0, Lce/x;->K:I

    .line 7
    .line 8
    add-int/lit8 v0, p1, 0x3

    .line 9
    .line 10
    iget v2, p0, Lce/x;->L:I

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    invoke-static {v2, v3, p2, v0}, Lce/q;->r(J[BI)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v0, p1, 0x7

    .line 17
    .line 18
    int-to-long v1, v1

    .line 19
    invoke-static {v1, v2, p2, v0}, Lce/q;->r(J[BI)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, p1, 0xb

    .line 23
    .line 24
    iget v1, p0, Lce/x;->M:I

    .line 25
    .line 26
    int-to-long v1, v1

    .line 27
    invoke-static {v1, v2, p2, v0}, Lce/q;->r(J[BI)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v0, p1, 0xf

    .line 31
    .line 32
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    invoke-static {v1, v2, p2, v0}, Lce/q;->s(J[BI)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, p1, 0x17

    .line 38
    .line 39
    iget v1, p0, Lce/x;->F:I

    .line 40
    .line 41
    int-to-long v1, v1

    .line 42
    invoke-static {v1, v2, p2, v0}, Lce/q;->r(J[BI)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v0, p1, 0x1b

    .line 46
    .line 47
    iget v1, p0, Lce/x;->G:I

    .line 48
    .line 49
    int-to-long v1, v1

    .line 50
    invoke-static {v1, v2, p2, v0}, Lce/q;->r(J[BI)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v0, p1, 0x1f

    .line 54
    .line 55
    iget v1, p0, Lce/x;->H:I

    .line 56
    .line 57
    int-to-long v1, v1

    .line 58
    invoke-static {v1, v2, p2, v0}, Lce/q;->r(J[BI)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v0, p1, 0x23

    .line 62
    .line 63
    iget v1, p0, Lce/x;->I:I

    .line 64
    .line 65
    int-to-long v1, v1

    .line 66
    invoke-static {v1, v2, p2, v0}, Lce/q;->r(J[BI)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v0, p1, 0x27

    .line 70
    .line 71
    const/4 v1, 0x2

    .line 72
    int-to-long v1, v1

    .line 73
    invoke-static {v1, v2, p2, v0}, Lce/q;->r(J[BI)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v0, p1, 0x2b

    .line 77
    .line 78
    add-int/lit8 v1, p1, 0x2c

    .line 79
    .line 80
    const/4 v2, 0x3

    .line 81
    aput-byte v2, p2, v0

    .line 82
    .line 83
    sub-int/2addr v1, p1

    .line 84
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
    const-string v2, "SmbComNTCreateAndX["

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
    iget v2, p0, Lce/x;->L:I

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    const-string v4, ",rootDirectoryFid=0,desiredAccess=0x"

    .line 26
    .line 27
    invoke-static {v2, v3, v4, v1}, Landroid/support/v4/media/session/a;->y(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 28
    .line 29
    .line 30
    iget v2, p0, Lce/x;->M:I

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    const-string v5, ",allocationSize=0,extFileAttributes=0x"

    .line 34
    .line 35
    invoke-static {v2, v4, v5, v1}, Landroid/support/v4/media/session/a;->y(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lce/x;->F:I

    .line 39
    .line 40
    const-string v5, ",shareAccess=0x"

    .line 41
    .line 42
    invoke-static {v2, v4, v5, v1}, Landroid/support/v4/media/session/a;->y(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 43
    .line 44
    .line 45
    iget v2, p0, Lce/x;->G:I

    .line 46
    .line 47
    const-string v5, ",createDisposition=0x"

    .line 48
    .line 49
    invoke-static {v2, v4, v5, v1}, Landroid/support/v4/media/session/a;->y(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 50
    .line 51
    .line 52
    iget v2, p0, Lce/x;->H:I

    .line 53
    .line 54
    const-string v5, ",createOptions=0x"

    .line 55
    .line 56
    invoke-static {v2, v4, v5, v1}, Landroid/support/v4/media/session/a;->y(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 57
    .line 58
    .line 59
    iget v2, p0, Lce/x;->I:I

    .line 60
    .line 61
    const/16 v5, 0x8

    .line 62
    .line 63
    const-string v6, ",impersonationLevel=0x"

    .line 64
    .line 65
    invoke-static {v2, v5, v6, v1}, Landroid/support/v4/media/session/a;->y(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 66
    .line 67
    .line 68
    const-string v2, ",securityFlags=0x"

    .line 69
    .line 70
    invoke-static {v3, v4, v2, v1}, Landroid/support/v4/media/session/a;->y(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 71
    .line 72
    .line 73
    const/4 v2, 0x3

    .line 74
    const-string v4, ",name="

    .line 75
    .line 76
    invoke-static {v2, v3, v4, v1}, Landroid/support/v4/media/session/a;->y(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lce/q;->x:Ljava/lang/String;

    .line 80
    .line 81
    const-string v3, "]"

    .line 82
    .line 83
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v0
.end method
