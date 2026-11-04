.class public final Lce/d1;
.super Lce/i0;
.source "SourceFile"


# static fields
.field public static final P0:I

.field public static final Q0:I


# instance fields
.field public final M0:I

.field public final N0:I

.field public final O0:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "jcifs.smb1.smb.client.listSize"

    .line 2
    .line 3
    const v1, 0xffff

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sput v0, Lce/d1;->P0:I

    .line 11
    .line 12
    const-string v0, "jcifs.smb1.smb.client.listCount"

    .line 13
    .line 14
    const/16 v1, 0xc8

    .line 15
    .line 16
    invoke-static {v1, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sput v0, Lce/d1;->Q0:I

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lce/i0;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "\\"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iput-object p1, p0, Lce/q;->x:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lce/q;->x:Ljava/lang/String;

    .line 20
    .line 21
    :goto_0
    const-string p1, "*"

    .line 22
    .line 23
    iput-object p1, p0, Lce/d1;->O0:Ljava/lang/String;

    .line 24
    .line 25
    const/16 p1, 0x16

    .line 26
    .line 27
    iput p1, p0, Lce/d1;->M0:I

    .line 28
    .line 29
    const/16 p1, 0x32

    .line 30
    .line 31
    iput-byte p1, p0, Lce/q;->c:B

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-byte p1, p0, Lce/i0;->X:B

    .line 35
    .line 36
    const/16 p1, 0x104

    .line 37
    .line 38
    iput p1, p0, Lce/d1;->N0:I

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lce/i0;->P:I

    .line 42
    .line 43
    const/16 p1, 0xa

    .line 44
    .line 45
    iput p1, p0, Lce/i0;->R:I

    .line 46
    .line 47
    sget p1, Lce/d1;->P0:I

    .line 48
    .line 49
    iput p1, p0, Lce/i0;->S:I

    .line 50
    .line 51
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
    const-string v2, "Trans2FindFirst2["

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
    const-string v2, ",searchAttributes=0x"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lce/d1;->M0:I

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    const-string v4, ",searchCount="

    .line 26
    .line 27
    invoke-static {v2, v3, v4, v1}, Landroid/support/v4/media/session/a;->y(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 28
    .line 29
    .line 30
    sget v2, Lce/d1;->Q0:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ",flags=0x"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-static {v2, v3}, Lde/c;->c(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, ",informationLevel=0x"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v2, p0, Lce/d1;->N0:I

    .line 54
    .line 55
    const/4 v3, 0x3

    .line 56
    const-string v4, ",searchStorageType=0,filename="

    .line 57
    .line 58
    invoke-static {v2, v3, v4, v1}, Landroid/support/v4/media/session/a;->y(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lce/q;->x:Ljava/lang/String;

    .line 62
    .line 63
    const-string v3, "]"

    .line 64
    .line 65
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
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
    .locals 5

    .line 1
    iget v0, p0, Lce/d1;->M0:I

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
    sget v0, Lce/d1;->Q0:I

    .line 9
    .line 10
    int-to-long v0, v0

    .line 11
    const/4 v3, 0x2

    .line 12
    invoke-static {v0, v1, p1, v3}, Lce/q;->q(J[BI)V

    .line 13
    .line 14
    .line 15
    int-to-long v0, v2

    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-static {v0, v1, p1, v2}, Lce/q;->q(J[BI)V

    .line 18
    .line 19
    .line 20
    iget v2, p0, Lce/d1;->N0:I

    .line 21
    .line 22
    int-to-long v2, v2

    .line 23
    const/4 v4, 0x6

    .line 24
    invoke-static {v2, v3, p1, v4}, Lce/q;->q(J[BI)V

    .line 25
    .line 26
    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    invoke-static {v0, v1, p1, v2}, Lce/q;->r(J[BI)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lce/q;->x:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lce/d1;->O0:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-boolean v1, p0, Lce/q;->q:Z

    .line 52
    .line 53
    const/16 v2, 0xc

    .line 54
    .line 55
    invoke-virtual {p0, v0, p1, v2, v1}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    add-int/2addr p1, v2

    .line 60
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
