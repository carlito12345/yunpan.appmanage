.class public final Lfd/t;
.super Led/a;
.source "SourceFile"


# instance fields
.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Z

.field public P:[B


# direct methods
.method public constructor <init>(Lvc/f;Led/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Led/a;-><init>(Lvc/f;Led/c;)V

    .line 2
    .line 3
    .line 4
    const-string p1, ""

    .line 5
    .line 6
    iput-object p1, p0, Lfd/t;->L:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lfd/t;->M:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lfd/t;->N:Ljava/lang/String;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lfd/t;->P:[B

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final i0(I[B)I
    .locals 5

    .line 1
    iget-boolean v0, p0, Led/c;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lfd/t;->P:[B

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p2, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lfd/t;->P:[B

    .line 13
    .line 14
    array-length v0, v0

    .line 15
    add-int/2addr v0, p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, p1

    .line 18
    :goto_0
    iget-boolean v1, p0, Led/c;->n:Z

    .line 19
    .line 20
    const/16 v2, 0xff

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget v1, p0, Led/c;->c:I

    .line 25
    .line 26
    sub-int v1, v0, v1

    .line 27
    .line 28
    rem-int/lit8 v1, v1, 0x2

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    add-int/lit8 v1, v0, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v1, v0

    .line 36
    :goto_1
    invoke-static {v1, v2, p2}, Lge/b;->b(II[B)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    new-instance v3, Ljava/lang/String;

    .line 41
    .line 42
    sget-object v4, Lge/b;->b:Ljava/nio/charset/Charset;

    .line 43
    .line 44
    invoke-direct {v3, p2, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-static {v0, v2, p2}, Lge/b;->a(II[B)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iget-object v2, p0, Led/c;->x:Lvc/f;

    .line 53
    .line 54
    invoke-static {p2, v0, v1, v2}, Lge/b;->c([BIILvc/f;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :goto_2
    iput-object v3, p0, Lfd/t;->L:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p0, v0, v3}, Led/c;->m0(ILjava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v1, v0

    .line 65
    iget-boolean v0, p0, Led/c;->n:Z

    .line 66
    .line 67
    invoke-virtual {p0, v1, p2, v0}, Led/c;->l0(I[BZ)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lfd/t;->M:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p0, v1, v0}, Led/c;->m0(ILjava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    add-int/2addr v0, v1

    .line 78
    iget-boolean v1, p0, Led/c;->p:Z

    .line 79
    .line 80
    if-nez v1, :cond_3

    .line 81
    .line 82
    iget-boolean v1, p0, Led/c;->n:Z

    .line 83
    .line 84
    invoke-virtual {p0, v0, p2, v1}, Led/c;->l0(I[BZ)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iput-object p2, p0, Lfd/t;->N:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p0, v0, p2}, Led/c;->m0(ILjava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    add-int/2addr v0, p2

    .line 95
    :cond_3
    sub-int/2addr v0, p1

    .line 96
    return v0
.end method

.method public final k0(I[B)I
    .locals 2

    .line 1
    aget-byte v0, p2, p1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    iput-boolean v1, p0, Lfd/t;->O:Z

    .line 10
    .line 11
    add-int/lit8 v0, p1, 0x2

    .line 12
    .line 13
    iget-boolean v1, p0, Led/c;->p:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-static {v0, p2}, Lrd/a;->a(I[B)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    add-int/lit8 v0, p1, 0x4

    .line 22
    .line 23
    new-array p2, p2, [B

    .line 24
    .line 25
    iput-object p2, p0, Lfd/t;->P:[B

    .line 26
    .line 27
    :cond_1
    sub-int/2addr v0, p1

    .line 28
    return v0
.end method

.method public final o0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final q0(I[B)I
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
    const-string v2, "SmbComSessionSetupAndXResponse["

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
    const-string v2, ",isLoggedInAsGuest="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean v2, p0, Lfd/t;->O:Z

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",nativeOs="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lfd/t;->L:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ",nativeLanMan="

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lfd/t;->M:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ",primaryDomain="

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lfd/t;->N:Ljava/lang/String;

    .line 53
    .line 54
    const-string v3, "]"

    .line 55
    .line 56
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method
