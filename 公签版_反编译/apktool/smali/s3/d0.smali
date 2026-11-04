.class public final Ls3/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:I

.field public d:I

.field public final e:Ljava/io/Serializable;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ls3/d0;->a:I

    const/high16 v0, -0x80000000

    .line 12
    invoke-direct {p0, v0, p1, p2}, Ls3/d0;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Ls3/d0;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Ls3/d0;->e:Ljava/io/Serializable;

    .line 15
    iput p2, p0, Ls3/d0;->b:I

    .line 16
    iput p3, p0, Ls3/d0;->c:I

    .line 17
    iput v1, p0, Ls3/d0;->d:I

    .line 18
    iput-object v0, p0, Ls3/d0;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILwb/b;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ls3/d0;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ls3/d0;->c:I

    .line 8
    iput v0, p0, Ls3/d0;->d:I

    .line 9
    iput p1, p0, Ls3/d0;->b:I

    .line 10
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ls3/d0;->e:Ljava/io/Serializable;

    .line 11
    iput-object p2, p0, Ls3/d0;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ls3/d0;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls3/d0;->e:Ljava/io/Serializable;

    .line 3
    iput p2, p0, Ls3/d0;->c:I

    iput p2, p0, Ls3/d0;->b:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Ls3/d0;->d:I

    .line 5
    iput-object p0, p0, Ls3/d0;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 1
    iget v0, p0, Ls3/d0;->c:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Ls3/d0;->c:I

    .line 5
    .line 6
    iget p1, p0, Ls3/d0;->b:I

    .line 7
    .line 8
    sub-int v1, v0, p1

    .line 9
    .line 10
    iget-object v2, p0, Ls3/d0;->f:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Ls3/d0;

    .line 13
    .line 14
    iget v3, v2, Ls3/d0;->d:I

    .line 15
    .line 16
    if-le v1, v3, :cond_0

    .line 17
    .line 18
    sub-int/2addr v0, p1

    .line 19
    iput v0, v2, Ls3/d0;->d:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    iget v0, p0, Ls3/d0;->c:I

    .line 4
    .line 5
    iget v1, p0, Ls3/d0;->b:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    add-int v1, v0, p1

    .line 9
    .line 10
    xor-int/lit8 p1, p1, -0x1

    .line 11
    .line 12
    and-int/2addr p1, v1

    .line 13
    sub-int/2addr p1, v0

    .line 14
    invoke-virtual {p0, p1}, Ls3/d0;->a(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public c()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Ls3/d0;->b(I)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Ls3/d0;->e:Ljava/io/Serializable;

    .line 6
    .line 7
    check-cast v1, [B

    .line 8
    .line 9
    iget v2, p0, Ls3/d0;->c:I

    .line 10
    .line 11
    invoke-static {v2, v1}, La9/o;->D(I[B)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, v0}, Ls3/d0;->a(I)V

    .line 16
    .line 17
    .line 18
    return v1
.end method

.method public d()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Ls3/d0;->b(I)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Ls3/d0;->e:Ljava/io/Serializable;

    .line 6
    .line 7
    check-cast v1, [B

    .line 8
    .line 9
    iget v2, p0, Ls3/d0;->c:I

    .line 10
    .line 11
    invoke-static {v2, v1}, La9/o;->B(I[B)S

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, v0}, Ls3/d0;->a(I)V

    .line 16
    .line 17
    .line 18
    return v1
.end method

.method public e()I
    .locals 2

    .line 1
    iget-object v0, p0, Ls3/d0;->e:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    iget v1, p0, Ls3/d0;->c:I

    .line 6
    .line 7
    aget-byte v0, v0, v1

    .line 8
    .line 9
    and-int/lit16 v0, v0, 0xff

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0, v1}, Ls3/d0;->a(I)V

    .line 13
    .line 14
    .line 15
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Ls3/d0;->b(I)V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Ls3/d0;->c:I

    .line 6
    .line 7
    iget-object v1, p0, Ls3/d0;->e:Ljava/io/Serializable;

    .line 8
    .line 9
    check-cast v1, [B

    .line 10
    .line 11
    invoke-static {v0, v1}, La9/o;->D(I[B)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int/lit8 v0, v0, 0xc

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    add-int/lit8 v2, v2, -0x1

    .line 20
    .line 21
    mul-int/lit8 v2, v2, 0x2

    .line 22
    .line 23
    if-ltz v2, :cond_0

    .line 24
    .line 25
    const v3, 0xffff

    .line 26
    .line 27
    .line 28
    if-gt v2, v3, :cond_0

    .line 29
    .line 30
    :try_start_0
    new-instance v3, Ljava/lang/String;

    .line 31
    .line 32
    const-string v4, "UTF-16LE"

    .line 33
    .line 34
    invoke-direct {v3, v1, v0, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x2

    .line 38
    .line 39
    add-int/2addr v0, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v1, Lch/a;

    .line 42
    .line 43
    const-string v2, "invalid array conformance"

    .line 44
    .line 45
    invoke-direct {v1, v2}, Lch/a;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :catch_0
    :cond_1
    const/4 v3, 0x0

    .line 50
    :goto_0
    iget v1, p0, Ls3/d0;->c:I

    .line 51
    .line 52
    sub-int/2addr v0, v1

    .line 53
    invoke-virtual {p0, v0}, Ls3/d0;->a(I)V

    .line 54
    .line 55
    .line 56
    return-object v3
.end method

.method public g(I)Ls3/d0;
    .locals 3

    .line 1
    new-instance v0, Ls3/d0;

    .line 2
    .line 3
    iget-object v1, p0, Ls3/d0;->e:Ljava/io/Serializable;

    .line 4
    .line 5
    check-cast v1, [B

    .line 6
    .line 7
    iget v2, p0, Ls3/d0;->b:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ls3/d0;-><init>([BI)V

    .line 10
    .line 11
    .line 12
    iput p1, v0, Ls3/d0;->c:I

    .line 13
    .line 14
    iget-object p1, p0, Ls3/d0;->f:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Ls3/d0;

    .line 17
    .line 18
    iput-object p1, v0, Ls3/d0;->f:Ljava/lang/Object;

    .line 19
    .line 20
    return-object v0
.end method

.method public h(I)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Ls3/d0;->b(I)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Ls3/d0;->e:Ljava/io/Serializable;

    .line 6
    .line 7
    check-cast v1, [B

    .line 8
    .line 9
    iget v2, p0, Ls3/d0;->c:I

    .line 10
    .line 11
    invoke-static {p1, v2, v1}, La9/o;->H(II[B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ls3/d0;->a(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Ls3/d0;->h(I)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Ls3/d0;->h(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public j(I)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Ls3/d0;->b(I)V

    .line 3
    .line 4
    .line 5
    int-to-short p1, p1

    .line 6
    iget v1, p0, Ls3/d0;->c:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    and-int/lit16 v3, p1, 0xff

    .line 11
    .line 12
    int-to-byte v3, v3

    .line 13
    iget-object v4, p0, Ls3/d0;->e:Ljava/io/Serializable;

    .line 14
    .line 15
    check-cast v4, [B

    .line 16
    .line 17
    aput-byte v3, v4, v1

    .line 18
    .line 19
    shr-int/lit8 p1, p1, 0x8

    .line 20
    .line 21
    and-int/lit16 p1, p1, 0xff

    .line 22
    .line 23
    int-to-byte p1, p1

    .line 24
    aput-byte p1, v4, v2

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ls3/d0;->a(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public k(I)V
    .locals 2

    .line 1
    iget v0, p0, Ls3/d0;->c:I

    .line 2
    .line 3
    and-int/lit16 p1, p1, 0xff

    .line 4
    .line 5
    int-to-byte p1, p1

    .line 6
    iget-object v1, p0, Ls3/d0;->e:Ljava/io/Serializable;

    .line 7
    .line 8
    check-cast v1, [B

    .line 9
    .line 10
    aput-byte p1, v1, v0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Ls3/d0;->a(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Ls3/d0;->b(I)V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Ls3/d0;->c:I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v2, v1, 0x1

    .line 12
    .line 13
    iget-object v3, p0, Ls3/d0;->e:Ljava/io/Serializable;

    .line 14
    .line 15
    check-cast v3, [B

    .line 16
    .line 17
    invoke-static {v2, v0, v3}, La9/o;->H(II[B)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v4, v0, 0x4

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-static {v5, v4, v3}, La9/o;->H(II[B)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v4, v0, 0x8

    .line 27
    .line 28
    invoke-static {v2, v4, v3}, La9/o;->H(II[B)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, 0xc

    .line 32
    .line 33
    :try_start_0
    const-string v2, "UTF-16LE"

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    mul-int/lit8 v2, v1, 0x2

    .line 40
    .line 41
    invoke-static {p1, v5, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    mul-int/lit8 v1, v1, 0x2

    .line 45
    .line 46
    add-int/2addr v1, v0

    .line 47
    add-int/lit8 p1, v1, 0x1

    .line 48
    .line 49
    aput-byte v5, v3, v1

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x2

    .line 52
    .line 53
    aput-byte v5, v3, p1

    .line 54
    .line 55
    iget p1, p0, Ls3/d0;->c:I

    .line 56
    .line 57
    sub-int/2addr v1, p1

    .line 58
    invoke-virtual {p0, v1}, Ls3/d0;->a(I)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget v0, p0, Ls3/d0;->d:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Ls3/d0;->b:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v1, p0, Ls3/d0;->c:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    :goto_0
    iput v0, p0, Ls3/d0;->d:I

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Ls3/d0;->e:Ljava/io/Serializable;

    .line 21
    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v1, p0, Ls3/d0;->d:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Ls3/d0;->f:Ljava/lang/Object;

    .line 37
    .line 38
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget v0, p0, Ls3/d0;->d:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "generateNewId() must be called before retrieving ids."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public declared-synchronized o(Ljava/lang/Object;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ls3/d0;->e:Ljava/io/Serializable;

    .line 3
    .line 4
    check-cast v0, [Ljava/lang/Object;

    .line 5
    .line 6
    iget v1, p0, Ls3/d0;->c:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    iput v2, p0, Ls3/d0;->c:I

    .line 11
    .line 12
    aput-object p1, v0, v1

    .line 13
    .line 14
    iget p1, p0, Ls3/d0;->b:I

    .line 15
    .line 16
    if-ne v2, p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Ls3/d0;->f:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lwb/b;

    .line 21
    .line 22
    iget v1, p0, Ls3/d0;->d:I

    .line 23
    .line 24
    invoke-interface {p1, v1, v0}, Lwb/b;->h(I[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Ls3/d0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "start="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Ls3/d0;->b:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",index="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Ls3/d0;->c:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",length="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Ls3/d0;->f:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Ls3/d0;

    .line 41
    .line 42
    iget v1, v1, Ls3/d0;->d:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
