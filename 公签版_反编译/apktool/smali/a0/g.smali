.class public final La0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const/16 p1, 0x40

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const/16 p1, 0x3f

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    shl-int/2addr p1, v1

    .line 23
    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 24
    .line 25
    iput v0, p0, La0/g;->c:I

    .line 26
    .line 27
    new-array p1, p1, [Ljava/lang/Object;

    .line 28
    .line 29
    iput-object p1, p0, La0/g;->d:Ljava/lang/Object;

    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x7

    .line 36
    iput p1, p0, La0/g;->c:I

    .line 37
    .line 38
    const/16 p1, 0x8

    .line 39
    .line 40
    new-array p1, p1, [I

    .line 41
    .line 42
    iput-object p1, p0, La0/g;->d:Ljava/lang/Object;

    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    const/16 p1, 0xf

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    rsub-int/lit8 p1, p1, 0x20

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    shl-int p1, v0, p1

    .line 58
    .line 59
    add-int/lit8 v0, p1, -0x1

    .line 60
    .line 61
    iput v0, p0, La0/g;->a:I

    .line 62
    .line 63
    int-to-float v0, p1

    .line 64
    const/high16 v1, 0x3f400000    # 0.75f

    .line 65
    .line 66
    mul-float v1, v1, v0

    .line 67
    .line 68
    float-to-int v0, v1

    .line 69
    iput v0, p0, La0/g;->c:I

    .line 70
    .line 71
    new-array p1, p1, [Ljava/lang/Object;

    .line 72
    .line 73
    iput-object p1, p0, La0/g;->d:Ljava/lang/Object;

    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lgc/b;)V
    .locals 8

    .line 1
    iget-object v0, p0, La0/g;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Ljava/lang/Object;

    .line 4
    .line 5
    iget v1, p0, La0/g;->a:I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const v3, -0x61c88647

    .line 12
    .line 13
    .line 14
    mul-int v2, v2, v3

    .line 15
    .line 16
    ushr-int/lit8 v4, v2, 0x10

    .line 17
    .line 18
    xor-int/2addr v2, v4

    .line 19
    and-int/2addr v2, v1

    .line 20
    aget-object v4, v0, v2

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    and-int/2addr v2, v1

    .line 34
    aget-object v4, v0, v2

    .line 35
    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    :goto_0
    aput-object p1, v0, v2

    .line 47
    .line 48
    iget p1, p0, La0/g;->b:I

    .line 49
    .line 50
    add-int/lit8 p1, p1, 0x1

    .line 51
    .line 52
    iput p1, p0, La0/g;->b:I

    .line 53
    .line 54
    iget v0, p0, La0/g;->c:I

    .line 55
    .line 56
    if-lt p1, v0, :cond_7

    .line 57
    .line 58
    iget-object v0, p0, La0/g;->d:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, [Ljava/lang/Object;

    .line 61
    .line 62
    array-length v1, v0

    .line 63
    shl-int/lit8 v2, v1, 0x1

    .line 64
    .line 65
    add-int/lit8 v4, v2, -0x1

    .line 66
    .line 67
    new-array v5, v2, [Ljava/lang/Object;

    .line 68
    .line 69
    :goto_1
    add-int/lit8 v6, p1, -0x1

    .line 70
    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 74
    .line 75
    aget-object p1, v0, v1

    .line 76
    .line 77
    if-nez p1, :cond_3

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    mul-int p1, p1, v3

    .line 85
    .line 86
    ushr-int/lit8 v7, p1, 0x10

    .line 87
    .line 88
    xor-int/2addr p1, v7

    .line 89
    and-int/2addr p1, v4

    .line 90
    aget-object v7, v5, p1

    .line 91
    .line 92
    if-eqz v7, :cond_5

    .line 93
    .line 94
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 95
    .line 96
    and-int/2addr p1, v4

    .line 97
    aget-object v7, v5, p1

    .line 98
    .line 99
    if-nez v7, :cond_4

    .line 100
    .line 101
    :cond_5
    aget-object v7, v0, v1

    .line 102
    .line 103
    aput-object v7, v5, p1

    .line 104
    .line 105
    move p1, v6

    .line 106
    goto :goto_1

    .line 107
    :cond_6
    iput v4, p0, La0/g;->a:I

    .line 108
    .line 109
    int-to-float p1, v2

    .line 110
    const/high16 v0, 0x3f400000    # 0.75f

    .line 111
    .line 112
    mul-float p1, p1, v0

    .line 113
    .line 114
    float-to-int p1, p1

    .line 115
    iput p1, p0, La0/g;->c:I

    .line 116
    .line 117
    iput-object v5, p0, La0/g;->d:Ljava/lang/Object;

    .line 118
    .line 119
    :cond_7
    return-void
.end method

.method public b(I)V
    .locals 6

    .line 1
    iget-object v0, p0, La0/g;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    iget v1, p0, La0/g;->b:I

    .line 6
    .line 7
    aput p1, v0, v1

    .line 8
    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    iget p1, p0, La0/g;->c:I

    .line 12
    .line 13
    and-int/2addr p1, v1

    .line 14
    iput p1, p0, La0/g;->b:I

    .line 15
    .line 16
    iget v1, p0, La0/g;->a:I

    .line 17
    .line 18
    if-ne p1, v1, :cond_0

    .line 19
    .line 20
    array-length p1, v0

    .line 21
    sub-int v2, p1, v1

    .line 22
    .line 23
    shl-int/lit8 v3, p1, 0x1

    .line 24
    .line 25
    new-array v4, v3, [I

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-static {v0, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, La0/g;->d:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, [I

    .line 34
    .line 35
    iget v1, p0, La0/g;->a:I

    .line 36
    .line 37
    invoke-static {v0, v5, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    iput-object v4, p0, La0/g;->d:Ljava/lang/Object;

    .line 41
    .line 42
    iput v5, p0, La0/g;->a:I

    .line 43
    .line 44
    iput p1, p0, La0/g;->b:I

    .line 45
    .line 46
    add-int/lit8 v3, v3, -0x1

    .line 47
    .line 48
    iput v3, p0, La0/g;->c:I

    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public c()V
    .locals 7

    .line 1
    iget-object v0, p0, La0/g;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Ljava/lang/Object;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    iget v2, p0, La0/g;->a:I

    .line 7
    .line 8
    sub-int v3, v1, v2

    .line 9
    .line 10
    shl-int/lit8 v4, v1, 0x1

    .line 11
    .line 12
    if-ltz v4, :cond_0

    .line 13
    .line 14
    new-array v5, v4, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    invoke-static {v6, v2, v1, v0, v5}, Lje/i;->d0(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, La0/g;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, [Ljava/lang/Object;

    .line 23
    .line 24
    iget v2, p0, La0/g;->a:I

    .line 25
    .line 26
    invoke-static {v3, v6, v2, v0, v5}, Lje/i;->d0(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object v5, p0, La0/g;->d:Ljava/lang/Object;

    .line 30
    .line 31
    iput v6, p0, La0/g;->a:I

    .line 32
    .line 33
    iput v1, p0, La0/g;->b:I

    .line 34
    .line 35
    add-int/lit8 v4, v4, -0x1

    .line 36
    .line 37
    iput v4, p0, La0/g;->c:I

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 41
    .line 42
    const-string v1, "Max array capacity exceeded"

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public d(II[Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, La0/g;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, La0/g;->b:I

    .line 6
    .line 7
    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 8
    .line 9
    :goto_1
    and-int/2addr v0, p2

    .line 10
    aget-object v1, p3, v0

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    aput-object p2, p3, p1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const v3, -0x61c88647

    .line 23
    .line 24
    .line 25
    mul-int v2, v2, v3

    .line 26
    .line 27
    ushr-int/lit8 v3, v2, 0x10

    .line 28
    .line 29
    xor-int/2addr v2, v3

    .line 30
    and-int/2addr v2, p2

    .line 31
    if-gt p1, v0, :cond_1

    .line 32
    .line 33
    if-ge p1, v2, :cond_2

    .line 34
    .line 35
    if-le v2, v0, :cond_3

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    if-lt p1, v2, :cond_3

    .line 39
    .line 40
    if-le v2, v0, :cond_3

    .line 41
    .line 42
    :cond_2
    :goto_2
    aput-object v1, p3, p1

    .line 43
    .line 44
    move p1, v0

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_1
.end method

.method public e(I)V
    .locals 5

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, La0/g;->g()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-gt p1, v0, :cond_5

    .line 9
    .line 10
    iget v0, p0, La0/g;->b:I

    .line 11
    .line 12
    if-ge p1, v0, :cond_1

    .line 13
    .line 14
    sub-int v1, v0, p1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    :goto_0
    move v2, v1

    .line 19
    :goto_1
    const/4 v3, 0x0

    .line 20
    if-ge v2, v0, :cond_2

    .line 21
    .line 22
    iget-object v4, p0, La0/g;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v4, [Ljava/lang/Object;

    .line 25
    .line 26
    aput-object v3, v4, v2

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget v0, p0, La0/g;->b:I

    .line 32
    .line 33
    sub-int v1, v0, v1

    .line 34
    .line 35
    sub-int/2addr p1, v1

    .line 36
    sub-int/2addr v0, v1

    .line 37
    iput v0, p0, La0/g;->b:I

    .line 38
    .line 39
    if-lez p1, :cond_4

    .line 40
    .line 41
    iget-object v0, p0, La0/g;->d:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, [Ljava/lang/Object;

    .line 44
    .line 45
    array-length v0, v0

    .line 46
    iput v0, p0, La0/g;->b:I

    .line 47
    .line 48
    sub-int p1, v0, p1

    .line 49
    .line 50
    move v1, p1

    .line 51
    :goto_2
    if-ge v1, v0, :cond_3

    .line 52
    .line 53
    iget-object v2, p0, La0/g;->d:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v2, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object v3, v2, v1

    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    iput p1, p0, La0/g;->b:I

    .line 63
    .line 64
    :cond_4
    return-void

    .line 65
    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 68
    .line 69
    .line 70
    goto :goto_4

    .line 71
    :goto_3
    throw p1

    .line 72
    :goto_4
    goto :goto_3
.end method

.method public f(I)V
    .locals 4

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, La0/g;->g()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-gt p1, v0, :cond_5

    .line 9
    .line 10
    iget-object v0, p0, La0/g;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, [Ljava/lang/Object;

    .line 13
    .line 14
    array-length v0, v0

    .line 15
    iget v1, p0, La0/g;->a:I

    .line 16
    .line 17
    sub-int v2, v0, v1

    .line 18
    .line 19
    if-ge p1, v2, :cond_1

    .line 20
    .line 21
    add-int v0, v1, p1

    .line 22
    .line 23
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 24
    if-ge v1, v0, :cond_2

    .line 25
    .line 26
    iget-object v3, p0, La0/g;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object v2, v3, v1

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget v1, p0, La0/g;->a:I

    .line 36
    .line 37
    sub-int/2addr v0, v1

    .line 38
    sub-int/2addr p1, v0

    .line 39
    add-int/2addr v1, v0

    .line 40
    iget v0, p0, La0/g;->c:I

    .line 41
    .line 42
    and-int/2addr v0, v1

    .line 43
    iput v0, p0, La0/g;->a:I

    .line 44
    .line 45
    if-lez p1, :cond_4

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    :goto_1
    if-ge v0, p1, :cond_3

    .line 49
    .line 50
    iget-object v1, p0, La0/g;->d:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object v2, v1, v0

    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    iput p1, p0, La0/g;->a:I

    .line 60
    .line 61
    :cond_4
    return-void

    .line 62
    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :goto_2
    throw p1

    .line 69
    :goto_3
    goto :goto_2
.end method

.method public g()I
    .locals 2

    .line 1
    iget v0, p0, La0/g;->b:I

    .line 2
    .line 3
    iget v1, p0, La0/g;->a:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget v1, p0, La0/g;->c:I

    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    return v0
.end method
