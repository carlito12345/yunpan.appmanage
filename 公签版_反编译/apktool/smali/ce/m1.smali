.class public final Lce/m1;
.super Lce/j0;
.source "SourceFile"


# instance fields
.field public M0:Ljava/lang/Object;

.field public final synthetic t0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lce/m1;->t0:I

    .line 3
    invoke-direct {p0}, Lce/j0;-><init>()V

    const/16 v0, 0x32

    .line 4
    iput-byte v0, p0, Lce/q;->c:B

    const/4 v0, 0x3

    .line 5
    iput-byte v0, p0, Lce/j0;->S:B

    return-void
.end method

.method public constructor <init>(Lce/w0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lce/m1;->t0:I

    .line 1
    invoke-direct {p0}, Lce/j0;-><init>()V

    .line 2
    iput-object p1, p0, Lce/m1;->M0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lce/m1;->t0:I

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
    const-string v2, "TransTransactNamedPipeResponse["

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
    const-string v2, "Trans2QueryFSInformationResponse["

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
    const-string v3, "]"

    .line 43
    .line 44
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final v(II[B)I
    .locals 2

    .line 1
    iget v0, p0, Lce/m1;->t0:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lce/m1;->M0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lce/w0;

    .line 9
    .line 10
    iget-object v0, v0, Lce/w0;->B:Lce/u0;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast v0, Lce/w1;

    .line 15
    .line 16
    iget-object v1, v0, Lce/w1;->k:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lce/w1;->J(II[B)V

    .line 20
    .line 21
    .line 22
    iget-object p1, v0, Lce/w1;->k:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 25
    .line 26
    .line 27
    monitor-exit v1

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1

    .line 32
    :cond_0
    :goto_0
    return p2

    .line 33
    :pswitch_0
    new-instance p2, Lce/l1;

    .line 34
    .line 35
    invoke-direct {p2}, Lce/l1;-><init>()V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v0, p1, 0x4

    .line 39
    .line 40
    invoke-static {v0, p3}, Lce/q;->g(I[B)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p2, Lce/l1;->c:I

    .line 45
    .line 46
    add-int/lit8 v0, p1, 0x8

    .line 47
    .line 48
    invoke-static {v0, p3}, Lce/q;->g(I[B)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    int-to-long v0, v0

    .line 53
    iput-wide v0, p2, Lce/l1;->a:J

    .line 54
    .line 55
    add-int/lit8 v0, p1, 0xc

    .line 56
    .line 57
    invoke-static {v0, p3}, Lce/q;->g(I[B)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    int-to-long v0, v0

    .line 62
    iput-wide v0, p2, Lce/l1;->b:J

    .line 63
    .line 64
    add-int/lit8 v0, p1, 0x10

    .line 65
    .line 66
    invoke-static {v0, p3}, Lce/q;->f(I[B)I

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    iput p3, p2, Lce/l1;->d:I

    .line 71
    .line 72
    add-int/lit8 p3, p1, 0x14

    .line 73
    .line 74
    iput-object p2, p0, Lce/m1;->M0:Ljava/lang/Object;

    .line 75
    .line 76
    sub-int/2addr p3, p1

    .line 77
    return p3

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final w([B)I
    .locals 0

    .line 1
    iget p1, p0, Lce/m1;->t0:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
