.class public final Lce/n;
.super Lce/j0;
.source "SourceFile"


# instance fields
.field public M0:I

.field public N0:I

.field public final synthetic t0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lce/n;->t0:I

    invoke-direct {p0}, Lce/j0;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lce/n;->t0:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "TransPeekNamedPipeResponse["

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0}, Lce/j0;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "]"

    .line 20
    .line 21
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "NetShareEnumResponse["

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-super {p0}, Lce/j0;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ",status="

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v2, p0, Lce/j0;->Y:I

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, ",converter="

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget v2, p0, Lce/n;->M0:I

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, ",entriesReturned="

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v2, p0, Lce/j0;->Z:I

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v2, ",totalAvailableEntries="

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget v2, p0, Lce/n;->N0:I

    .line 81
    .line 82
    const-string v3, "]"

    .line 83
    .line 84
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-object v0

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final v(II[B)I
    .locals 5

    .line 1
    iget p2, p0, Lce/n;->t0:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :pswitch_0
    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lce/q;->q:Z

    .line 10
    .line 11
    iget v0, p0, Lce/j0;->Z:I

    .line 12
    .line 13
    new-array v0, v0, [Lce/z0;

    .line 14
    .line 15
    iput-object v0, p0, Lce/j0;->h0:[Lce/g;

    .line 16
    .line 17
    move v1, p1

    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget v2, p0, Lce/j0;->Z:I

    .line 20
    .line 21
    if-ge v0, v2, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lce/j0;->h0:[Lce/g;

    .line 24
    .line 25
    new-instance v3, Lce/z0;

    .line 26
    .line 27
    invoke-direct {v3}, Lce/z0;-><init>()V

    .line 28
    .line 29
    .line 30
    aput-object v3, v2, v0

    .line 31
    .line 32
    const/16 v2, 0xd

    .line 33
    .line 34
    invoke-virtual {p0, p3, v1, v2, p2}, Lce/q;->j([BIIZ)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iput-object v2, v3, Lce/z0;->a:Ljava/lang/String;

    .line 39
    .line 40
    add-int/lit8 v2, v1, 0xe

    .line 41
    .line 42
    invoke-static {v2, p3}, Lce/q;->f(I[B)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iput v2, v3, Lce/z0;->b:I

    .line 47
    .line 48
    add-int/lit8 v2, v1, 0x10

    .line 49
    .line 50
    invoke-static {v2, p3}, Lce/q;->g(I[B)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    add-int/lit8 v1, v1, 0x14

    .line 55
    .line 56
    const v4, 0xffff

    .line 57
    .line 58
    .line 59
    and-int/2addr v2, v4

    .line 60
    iget v4, p0, Lce/n;->M0:I

    .line 61
    .line 62
    sub-int/2addr v2, v4

    .line 63
    add-int/2addr v2, p1

    .line 64
    const/16 v4, 0x80

    .line 65
    .line 66
    invoke-virtual {p0, p3, v2, v4, p2}, Lce/q;->j([BIIZ)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iput-object v2, v3, Lce/z0;->c:Ljava/lang/String;

    .line 71
    .line 72
    sget v2, Lde/d;->b:I

    .line 73
    .line 74
    const/4 v3, 0x4

    .line 75
    if-lt v2, v3, :cond_0

    .line 76
    .line 77
    sget-object v2, Lce/q;->A:Lde/d;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    sub-int/2addr v1, p1

    .line 86
    return v1

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final w([B)I
    .locals 1

    .line 1
    iget v0, p0, Lce/n;->t0:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {v0, p1}, Lce/q;->f(I[B)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lce/n;->N0:I

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-static {v0, p1}, Lce/q;->f(I[B)I

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    invoke-static {v0, p1}, Lce/q;->f(I[B)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lce/n;->M0:I

    .line 23
    .line 24
    const/4 p1, 0x6

    .line 25
    return p1

    .line 26
    :pswitch_0
    const/4 v0, 0x0

    .line 27
    invoke-static {v0, p1}, Lce/q;->f(I[B)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lce/j0;->Y:I

    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    invoke-static {v0, p1}, Lce/q;->f(I[B)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lce/n;->M0:I

    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    invoke-static {v0, p1}, Lce/q;->f(I[B)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput v0, p0, Lce/j0;->Z:I

    .line 46
    .line 47
    const/4 v0, 0x6

    .line 48
    invoke-static {v0, p1}, Lce/q;->f(I[B)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, p0, Lce/n;->N0:I

    .line 53
    .line 54
    const/16 p1, 0x8

    .line 55
    .line 56
    return p1

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
