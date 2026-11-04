.class public final Lfd/u;
.super Led/a;
.source "SourceFile"


# instance fields
.field public final L:Ljava/lang/String;

.field public M:[B

.field public N:I

.field public final O:Lvc/b;

.field public final P:Lfd/b;


# direct methods
.method public constructor <init>(Lvc/b;Lfd/b;Ljava/lang/String;Ljava/lang/String;Led/c;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x75

    .line 6
    .line 7
    invoke-direct {p0, v0, v1, p5}, Led/a;-><init>(Lvc/f;BLed/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lfd/u;->O:Lvc/b;

    .line 11
    .line 12
    iput-object p2, p0, Lfd/u;->P:Lfd/b;

    .line 13
    .line 14
    iput-object p3, p0, Led/c;->t:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p4, p0, Lfd/u;->L:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
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
    .locals 5

    .line 1
    iget-object v0, p0, Lfd/u;->L:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lfd/u;->P:Lfd/b;

    .line 4
    .line 5
    iget v1, v1, Lfd/b;->g:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lfd/u;->O:Lvc/b;

    .line 11
    .line 12
    invoke-interface {v1}, Lvc/b;->g()Lvd/a;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    instance-of v3, v3, Lvd/j;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Lvc/b;->g()Lvd/a;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lvd/j;

    .line 25
    .line 26
    iget-object v1, p0, Lfd/u;->M:[B

    .line 27
    .line 28
    iget v3, p0, Lfd/u;->N:I

    .line 29
    .line 30
    invoke-static {v1, v2, p2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lfd/u;->N:I

    .line 34
    .line 35
    add-int/2addr v1, p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 38
    .line 39
    aput-byte v2, p2, p1

    .line 40
    .line 41
    :goto_0
    iget-object v3, p0, Led/c;->t:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p0, v3, v1, p2}, Led/c;->r0(Ljava/lang/String;I[B)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    add-int/2addr v3, v1

    .line 48
    :try_start_0
    const-string v1, "ASCII"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-static {v1, v2, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    add-int/2addr v0, v3

    .line 66
    add-int/lit8 v1, v0, 0x1

    .line 67
    .line 68
    aput-byte v2, p2, v0

    .line 69
    .line 70
    sub-int/2addr v1, p1

    .line 71
    return v1

    .line 72
    :catch_0
    return v2
.end method

.method public final q0(I[B)I
    .locals 6

    .line 1
    iget-object v0, p0, Lfd/u;->P:Lfd/b;

    .line 2
    .line 3
    iget v1, v0, Lfd/b;->g:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lfd/u;->O:Lvc/b;

    .line 10
    .line 11
    invoke-interface {v1}, Lvc/b;->g()Lvd/a;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    instance-of v4, v4, Lvd/j;

    .line 16
    .line 17
    if-eqz v4, :cond_2

    .line 18
    .line 19
    invoke-interface {v1}, Lvc/b;->g()Lvd/a;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Lvd/j;

    .line 24
    .line 25
    iget-boolean v5, v0, Lfd/b;->h:Z

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    :try_start_0
    iget-object v0, v0, Lfd/b;->p:[B

    .line 30
    .line 31
    invoke-virtual {v4, v1, v0}, Lvd/j;->b(Lvc/b;[B)[B

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lfd/u;->M:[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    array-length v0, v0

    .line 38
    iput v0, p0, Lfd/u;->N:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    new-instance p2, Landroidx/fragment/app/b0;

    .line 43
    .line 44
    const-string v0, "Failed to encrypt password"

    .line 45
    .line 46
    const/16 v1, 0xa

    .line 47
    .line 48
    invoke-direct {p2, v1, v0, p1}, Landroidx/fragment/app/b0;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw p2

    .line 52
    :cond_0
    invoke-interface {v1}, Lvc/b;->e()Lvc/f;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lwc/a;

    .line 57
    .line 58
    iget-boolean v0, v0, Lwc/a;->v:Z

    .line 59
    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    iget-object v0, v4, Lvd/j;->d:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int/2addr v0, v3

    .line 69
    mul-int/lit8 v0, v0, 0x2

    .line 70
    .line 71
    new-array v0, v0, [B

    .line 72
    .line 73
    iput-object v0, p0, Lfd/u;->M:[B

    .line 74
    .line 75
    iget-object v1, v4, Lvd/j;->d:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p0, v1, v2, v0}, Led/c;->r0(Ljava/lang/String;I[B)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Lfd/u;->N:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    new-instance p1, Landroidx/fragment/app/b0;

    .line 85
    .line 86
    const-string p2, "Plain text passwords are disabled"

    .line 87
    .line 88
    const/16 v0, 0xa

    .line 89
    .line 90
    invoke-direct {p1, p2, v0}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_2
    iput v3, p0, Lfd/u;->N:I

    .line 95
    .line 96
    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 97
    .line 98
    aput-byte v2, p2, p1

    .line 99
    .line 100
    add-int/lit8 p1, p1, 0x2

    .line 101
    .line 102
    aput-byte v2, p2, v0

    .line 103
    .line 104
    iget v0, p0, Lfd/u;->N:I

    .line 105
    .line 106
    int-to-long v0, v0

    .line 107
    invoke-static {v0, v1, p2, p1}, Lrd/a;->e(J[BI)V

    .line 108
    .line 109
    .line 110
    const/4 p1, 0x4

    .line 111
    return p1
.end method

.method public final s0(Lvc/f;B)I
    .locals 1

    .line 1
    and-int/lit16 p2, p2, 0xff

    .line 2
    .line 3
    if-eqz p2, :cond_7

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p2, v0, :cond_6

    .line 7
    .line 8
    const/4 v0, 0x6

    .line 9
    if-eq p2, v0, :cond_5

    .line 10
    .line 11
    const/4 v0, 0x7

    .line 12
    if-eq p2, v0, :cond_4

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    if-eq p2, v0, :cond_3

    .line 17
    .line 18
    const/16 v0, 0x10

    .line 19
    .line 20
    if-eq p2, v0, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x25

    .line 23
    .line 24
    if-eq p2, v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x2d

    .line 27
    .line 28
    if-eq p2, v0, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    return p1

    .line 32
    :cond_0
    const-string p2, "TreeConnectAndX.OpenAndX"

    .line 33
    .line 34
    check-cast p1, Lwc/a;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lwc/a;->a(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_1
    const-string p2, "TreeConnectAndX.Transaction"

    .line 42
    .line 43
    check-cast p1, Lwc/a;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lwc/a;->a(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_2
    const-string p2, "TreeConnectAndX.CheckDirectory"

    .line 51
    .line 52
    check-cast p1, Lwc/a;

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lwc/a;->a(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    :cond_3
    const-string p2, "TreeConnectAndX.QueryInformation"

    .line 60
    .line 61
    check-cast p1, Lwc/a;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lwc/a;->a(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1

    .line 68
    :cond_4
    const-string p2, "TreeConnectAndX.Rename"

    .line 69
    .line 70
    check-cast p1, Lwc/a;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lwc/a;->a(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    return p1

    .line 77
    :cond_5
    const-string p2, "TreeConnectAndX.Delete"

    .line 78
    .line 79
    check-cast p1, Lwc/a;

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Lwc/a;->a(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    return p1

    .line 86
    :cond_6
    const-string p2, "TreeConnectAndX.DeleteDirectory"

    .line 87
    .line 88
    check-cast p1, Lwc/a;

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Lwc/a;->a(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    return p1

    .line 95
    :cond_7
    const-string p2, "TreeConnectAndX.CreateDirectory"

    .line 96
    .line 97
    check-cast p1, Lwc/a;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Lwc/a;->a(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    return p1
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
    const-string v2, "SmbComTreeConnectAndX["

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
    const-string v2, ",disconnectTid=false,passwordLength="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lfd/u;->N:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",password="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lfd/u;->M:[B

    .line 33
    .line 34
    iget v3, p0, Lfd/u;->N:I

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static {v2, v3, v4}, Lge/a;->m([BII)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ",path="

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Led/c;->t:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ",service="

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lfd/u;->L:Ljava/lang/String;

    .line 60
    .line 61
    const-string v3, "]"

    .line 62
    .line 63
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v0
.end method
