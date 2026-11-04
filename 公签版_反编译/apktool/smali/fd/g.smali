.class public final Lfd/g;
.super Led/a;
.source "SourceFile"

# interfaces
.implements Lad/e;


# instance fields
.field public final L:I

.field public final M:I

.field public final N:I

.field public final O:I

.field public final P:I

.field public final R:B

.field public S:I

.field public final T:I


# direct methods
.method public constructor <init>(Lvc/f;Ljava/lang/String;IIII)V
    .locals 1

    .line 1
    const/16 v0, -0x5e

    .line 2
    .line 3
    invoke-direct {p0, p1, v0, p2}, Led/a;-><init>(Lvc/f;BLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    or-int/lit16 p1, p4, 0x89

    .line 7
    .line 8
    iput p1, p0, Lfd/g;->T:I

    .line 9
    .line 10
    const/16 p1, 0x80

    .line 11
    .line 12
    iput p1, p0, Lfd/g;->L:I

    .line 13
    .line 14
    iput p5, p0, Lfd/g;->M:I

    .line 15
    .line 16
    and-int/lit8 p1, p3, 0x40

    .line 17
    .line 18
    const/16 p2, 0x40

    .line 19
    .line 20
    const/4 p4, 0x3

    .line 21
    const/4 p5, 0x2

    .line 22
    const/16 v0, 0x10

    .line 23
    .line 24
    if-ne p1, p2, :cond_1

    .line 25
    .line 26
    and-int/lit8 p1, p3, 0x10

    .line 27
    .line 28
    if-ne p1, v0, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x5

    .line 31
    iput p1, p0, Lfd/g;->N:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x4

    .line 35
    iput p1, p0, Lfd/g;->N:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    and-int/lit8 p1, p3, 0x10

    .line 39
    .line 40
    if-ne p1, v0, :cond_3

    .line 41
    .line 42
    const/16 p1, 0x20

    .line 43
    .line 44
    and-int/2addr p3, p1

    .line 45
    if-ne p3, p1, :cond_2

    .line 46
    .line 47
    iput p5, p0, Lfd/g;->N:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iput p4, p0, Lfd/g;->N:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const/4 p1, 0x1

    .line 54
    iput p1, p0, Lfd/g;->N:I

    .line 55
    .line 56
    :goto_0
    or-int/lit8 p1, p6, 0x40

    .line 57
    .line 58
    iput p1, p0, Lfd/g;->O:I

    .line 59
    .line 60
    iput p5, p0, Lfd/g;->P:I

    .line 61
    .line 62
    iput-byte p4, p0, Lfd/g;->R:B

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final M(Lvc/b;)Lad/d;
    .locals 1

    .line 1
    new-instance v0, Lfd/h;

    .line 2
    .line 3
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lfd/h;-><init>(Lvc/f;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Led/c;->s(Lad/d;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final b()Lad/d;
    .locals 1

    .line 1
    iget-object v0, p0, Led/c;->w:Led/c;

    .line 2
    check-cast v0, Lfd/h;

    return-object v0
.end method

.method public final b()Lhe/d;
    .locals 1

    .line 3
    iget-object v0, p0, Led/c;->w:Led/c;

    .line 4
    check-cast v0, Lfd/h;

    return-object v0
.end method

.method public final g0()Led/c;
    .locals 1

    .line 1
    iget-object v0, p0, Led/c;->w:Led/c;

    .line 2
    .line 3
    check-cast v0, Lfd/h;

    .line 4
    .line 5
    return-object v0
.end method

.method public final i0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final k0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final o0(I[B)I
    .locals 3

    .line 1
    iget-object v0, p0, Led/c;->t:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Led/c;->r0(Ljava/lang/String;I[B)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-boolean v0, p0, Led/c;->n:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Led/c;->t:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    mul-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, p1

    .line 21
    :goto_0
    int-to-long v0, v0

    .line 22
    iget v2, p0, Lfd/g;->S:I

    .line 23
    .line 24
    invoke-static {v0, v1, p2, v2}, Lrd/a;->e(J[BI)V

    .line 25
    .line 26
    .line 27
    return p1
.end method

.method public final q0(I[B)I
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
    iput v0, p0, Lfd/g;->S:I

    .line 7
    .line 8
    add-int/lit8 v0, p1, 0x3

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    int-to-long v2, v2

    .line 12
    invoke-static {v2, v3, p2, v0}, Lrd/a;->f(J[BI)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v0, p1, 0x7

    .line 16
    .line 17
    int-to-long v1, v1

    .line 18
    invoke-static {v1, v2, p2, v0}, Lrd/a;->f(J[BI)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, p1, 0xb

    .line 22
    .line 23
    iget v1, p0, Lfd/g;->T:I

    .line 24
    .line 25
    int-to-long v1, v1

    .line 26
    invoke-static {v1, v2, p2, v0}, Lrd/a;->f(J[BI)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v0, p1, 0xf

    .line 30
    .line 31
    const-wide/16 v1, 0x0

    .line 32
    .line 33
    invoke-static {v1, v2, p2, v0}, Lrd/a;->g(J[BI)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, p1, 0x17

    .line 37
    .line 38
    iget v1, p0, Lfd/g;->L:I

    .line 39
    .line 40
    int-to-long v1, v1

    .line 41
    invoke-static {v1, v2, p2, v0}, Lrd/a;->f(J[BI)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v0, p1, 0x1b

    .line 45
    .line 46
    iget v1, p0, Lfd/g;->M:I

    .line 47
    .line 48
    int-to-long v1, v1

    .line 49
    invoke-static {v1, v2, p2, v0}, Lrd/a;->f(J[BI)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v0, p1, 0x1f

    .line 53
    .line 54
    iget v1, p0, Lfd/g;->N:I

    .line 55
    .line 56
    int-to-long v1, v1

    .line 57
    invoke-static {v1, v2, p2, v0}, Lrd/a;->f(J[BI)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v0, p1, 0x23

    .line 61
    .line 62
    iget v1, p0, Lfd/g;->O:I

    .line 63
    .line 64
    int-to-long v1, v1

    .line 65
    invoke-static {v1, v2, p2, v0}, Lrd/a;->f(J[BI)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v0, p1, 0x27

    .line 69
    .line 70
    iget v1, p0, Lfd/g;->P:I

    .line 71
    .line 72
    int-to-long v1, v1

    .line 73
    invoke-static {v1, v2, p2, v0}, Lrd/a;->f(J[BI)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v0, p1, 0x2b

    .line 77
    .line 78
    add-int/lit8 v1, p1, 0x2c

    .line 79
    .line 80
    iget-byte v2, p0, Lfd/g;->R:B

    .line 81
    .line 82
    aput-byte v2, p2, v0

    .line 83
    .line 84
    sub-int/2addr v1, p1

    .line 85
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
    invoke-super {p0}, Led/a;->toString()Ljava/lang/String;

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
    const-string v4, ",rootDirectoryFid=0,desiredAccess=0x"

    .line 25
    .line 26
    invoke-static {v2, v3, v4, v1}, Landroid/support/v4/media/session/a;->E(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 27
    .line 28
    .line 29
    iget v2, p0, Lfd/g;->T:I

    .line 30
    .line 31
    const/4 v4, 0x4

    .line 32
    const-string v5, ",allocationSize=0,extFileAttributes=0x"

    .line 33
    .line 34
    invoke-static {v2, v4, v5, v1}, Landroid/support/v4/media/session/a;->E(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 35
    .line 36
    .line 37
    iget v2, p0, Lfd/g;->L:I

    .line 38
    .line 39
    const-string v5, ",shareAccess=0x"

    .line 40
    .line 41
    invoke-static {v2, v4, v5, v1}, Landroid/support/v4/media/session/a;->E(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 42
    .line 43
    .line 44
    iget v2, p0, Lfd/g;->M:I

    .line 45
    .line 46
    const-string v5, ",createDisposition=0x"

    .line 47
    .line 48
    invoke-static {v2, v4, v5, v1}, Landroid/support/v4/media/session/a;->E(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 49
    .line 50
    .line 51
    iget v2, p0, Lfd/g;->N:I

    .line 52
    .line 53
    const-string v5, ",createOptions=0x"

    .line 54
    .line 55
    invoke-static {v2, v4, v5, v1}, Landroid/support/v4/media/session/a;->E(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 56
    .line 57
    .line 58
    iget v2, p0, Lfd/g;->O:I

    .line 59
    .line 60
    const/16 v5, 0x8

    .line 61
    .line 62
    const-string v6, ",impersonationLevel=0x"

    .line 63
    .line 64
    invoke-static {v2, v5, v6, v1}, Landroid/support/v4/media/session/a;->E(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 65
    .line 66
    .line 67
    iget v2, p0, Lfd/g;->P:I

    .line 68
    .line 69
    const-string v5, ",securityFlags=0x"

    .line 70
    .line 71
    invoke-static {v2, v4, v5, v1}, Landroid/support/v4/media/session/a;->E(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 72
    .line 73
    .line 74
    iget-byte v2, p0, Lfd/g;->R:B

    .line 75
    .line 76
    const-string v4, ",name="

    .line 77
    .line 78
    invoke-static {v2, v3, v4, v1}, Landroid/support/v4/media/session/a;->E(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Led/c;->t:Ljava/lang/String;

    .line 82
    .line 83
    const-string v3, "]"

    .line 84
    .line 85
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object v0
.end method
