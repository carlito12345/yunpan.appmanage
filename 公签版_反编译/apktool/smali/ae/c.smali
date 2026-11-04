.class public final Lae/c;
.super Lae/e;
.source "SourceFile"


# instance fields
.field public final synthetic z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lae/c;->z:I

    .line 1
    invoke-direct {p0}, Lae/e;-><init>()V

    .line 2
    new-instance v0, Lae/b;

    invoke-direct {v0}, Lae/b;-><init>()V

    iput-object v0, p0, Lae/e;->r:Lae/b;

    return-void
.end method

.method public constructor <init>(Lae/b;I)V
    .locals 0

    iput p2, p0, Lae/c;->z:I

    packed-switch p2, :pswitch_data_0

    .line 3
    invoke-direct {p0}, Lae/e;-><init>()V

    .line 4
    iput-object p1, p0, Lae/e;->q:Lae/b;

    const/16 p1, 0x20

    .line 5
    iput p1, p0, Lae/e;->s:I

    return-void

    .line 6
    :pswitch_0
    invoke-direct {p0}, Lae/e;-><init>()V

    .line 7
    iput-object p1, p0, Lae/e;->q:Lae/b;

    const/16 p1, 0x21

    .line 8
    iput p1, p0, Lae/e;->s:I

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lae/e;->n:Z

    .line 10
    iput-boolean p1, p0, Lae/e;->p:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(I[B)I
    .locals 2

    .line 1
    iget v0, p0, Lae/c;->z:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lae/e;->e(I[B)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :pswitch_1
    iget-object v0, p0, Lae/e;->q:Lae/b;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lae/b;->a(I[B)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    add-int/2addr v0, p1

    .line 20
    invoke-static {v0, p2}, Lae/e;->b(I[B)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iput v1, p0, Lae/e;->s:I

    .line 25
    .line 26
    add-int/lit8 v1, v0, 0x2

    .line 27
    .line 28
    invoke-static {v1, p2}, Lae/e;->b(I[B)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iput p2, p0, Lae/e;->t:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x4

    .line 35
    .line 36
    sub-int/2addr v0, p1

    .line 37
    return v0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(I[B)I
    .locals 3

    .line 1
    iget v0, p0, Lae/c;->z:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :pswitch_0
    iget v0, p0, Lae/e;->e:I

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget v0, p0, Lae/e;->d:I

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    aget-byte v0, p2, p1

    .line 18
    .line 19
    add-int/lit8 p1, p1, 0x2

    .line 20
    .line 21
    invoke-static {p1, p2}, Lae/e;->c(I[B)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p2, p0, Lae/e;->b:[Lae/g;

    .line 28
    .line 29
    iget v0, p0, Lae/e;->a:I

    .line 30
    .line 31
    new-instance v1, Lae/g;

    .line 32
    .line 33
    iget-object v2, p0, Lae/e;->r:Lae/b;

    .line 34
    .line 35
    invoke-direct {v1, v2, p1}, Lae/g;-><init>(Lae/b;I)V

    .line 36
    .line 37
    .line 38
    aput-object v1, p2, v0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lae/e;->b:[Lae/g;

    .line 42
    .line 43
    iget p2, p0, Lae/e;->a:I

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    aput-object v0, p1, p2

    .line 47
    .line 48
    :goto_0
    const/4 p1, 0x6

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 51
    :goto_2
    return p1

    .line 52
    :pswitch_1
    const/4 p1, 0x0

    .line 53
    return p1

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(I[B)I
    .locals 4

    .line 1
    iget v0, p0, Lae/c;->z:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lae/e;->q:Lae/b;

    .line 7
    .line 8
    iget v1, v0, Lae/b;->c:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput v2, v0, Lae/b;->c:I

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lae/b;->b(I[B)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr v0, p1

    .line 18
    iget v2, p0, Lae/e;->s:I

    .line 19
    .line 20
    invoke-static {v2, v0, p2}, Lae/e;->h(II[B)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v0, 0x2

    .line 24
    .line 25
    iget v3, p0, Lae/e;->t:I

    .line 26
    .line 27
    invoke-static {v3, v2, p2}, Lae/e;->h(II[B)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x4

    .line 31
    .line 32
    sub-int/2addr v0, p1

    .line 33
    iget-object p1, p0, Lae/e;->q:Lae/b;

    .line 34
    .line 35
    iput v1, p1, Lae/b;->c:I

    .line 36
    .line 37
    return v0

    .line 38
    :pswitch_0
    const/4 p1, 0x0

    .line 39
    return p1

    .line 40
    :pswitch_1
    iget-object v0, p0, Lae/e;->q:Lae/b;

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2}, Lae/b;->b(I[B)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    add-int/2addr v0, p1

    .line 47
    iget v1, p0, Lae/e;->s:I

    .line 48
    .line 49
    invoke-static {v1, v0, p2}, Lae/e;->h(II[B)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v1, v0, 0x2

    .line 53
    .line 54
    iget v2, p0, Lae/e;->t:I

    .line 55
    .line 56
    invoke-static {v2, v1, p2}, Lae/e;->h(II[B)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x4

    .line 60
    .line 61
    sub-int/2addr v0, p1

    .line 62
    return v0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lae/c;->z:I

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
    const-string v2, "NodeStatusRequest["

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0}, Lae/e;->toString()Ljava/lang/String;

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
    const-string v2, "NameQueryResponse["

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-super {p0}, Lae/e;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ",addrEntry="

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lae/e;->b:[Lae/g;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, "]"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "NameQueryRequest["

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-super {p0}, Lae/e;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

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

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
