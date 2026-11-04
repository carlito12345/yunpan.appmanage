.class public final La9/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    .line 1
    array-length p2, p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, La9/p;-><init>([BII)V

    return-void

    .line 2
    :pswitch_0
    array-length p2, p1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_1

    .line 4
    array-length v0, p1

    if-gt p2, v0, :cond_0

    .line 5
    iput-object p1, p0, La9/p;->a:[B

    .line 6
    iput p2, p0, La9/p;->b:I

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end > bytes.length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end < start"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, La9/p;->a:[B

    .line 11
    iput p2, p0, La9/p;->b:I

    add-int/2addr p2, p3

    .line 12
    array-length p1, p1

    if-gt p2, p1, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance p1, La9/q;

    invoke-direct {p1}, La9/q;-><init>()V

    throw p1
.end method


# virtual methods
.method public a()[B
    .locals 5

    .line 1
    iget v0, p0, La9/p;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    filled-new-array {v0}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, La9/p;->c([I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    aget v0, v0, v2

    .line 15
    .line 16
    new-array v3, v1, [B

    .line 17
    .line 18
    iget-object v4, p0, La9/p;->a:[B

    .line 19
    .line 20
    invoke-static {v4, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    return-object v3
.end method

.method public b()[La9/p;
    .locals 11

    .line 1
    iget-object v0, p0, La9/p;->a:[B

    .line 2
    .line 3
    iget v1, p0, La9/p;->b:I

    .line 4
    .line 5
    aget-byte v2, v0, v1

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    new-array v4, v3, [I

    .line 9
    .line 10
    add-int/2addr v1, v3

    .line 11
    const/4 v5, 0x0

    .line 12
    aput v1, v4, v5

    .line 13
    .line 14
    invoke-virtual {p0, v4}, La9/p;->c([I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v6, 0x5

    .line 19
    if-ne v2, v6, :cond_0

    .line 20
    .line 21
    new-array v0, v5, [La9/p;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    aget v2, v4, v5

    .line 25
    .line 26
    new-instance v6, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    :goto_0
    if-lez v1, :cond_1

    .line 32
    .line 33
    add-int/lit8 v7, v2, 0x1

    .line 34
    .line 35
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    aput v7, v4, v5

    .line 38
    .line 39
    invoke-virtual {p0, v4}, La9/p;->c([I)I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    aget v9, v4, v5

    .line 44
    .line 45
    sub-int v7, v9, v7

    .line 46
    .line 47
    sub-int/2addr v1, v7

    .line 48
    new-instance v10, La9/p;

    .line 49
    .line 50
    add-int/2addr v7, v3

    .line 51
    add-int/2addr v7, v8

    .line 52
    invoke-direct {v10, v0, v2, v7}, La9/p;-><init>([BII)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int v2, v9, v8

    .line 59
    .line 60
    sub-int/2addr v1, v8

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    new-array v0, v0, [La9/p;

    .line 67
    .line 68
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    return-object v0
.end method

.method public c([I)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    add-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    iget-object v3, p0, La9/p;->a:[B

    .line 7
    .line 8
    aget-byte v1, v3, v1

    .line 9
    .line 10
    and-int/lit16 v4, v1, 0xff

    .line 11
    .line 12
    and-int/lit16 v5, v1, 0x80

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    and-int/lit8 v1, v1, 0x7f

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    add-int/lit8 v5, v1, -0x1

    .line 20
    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    shl-int/lit8 v1, v4, 0x8

    .line 24
    .line 25
    add-int/lit8 v4, v2, 0x1

    .line 26
    .line 27
    aget-byte v2, v3, v2

    .line 28
    .line 29
    and-int/lit16 v2, v2, 0xff

    .line 30
    .line 31
    add-int/2addr v1, v2

    .line 32
    move v2, v4

    .line 33
    move v4, v1

    .line 34
    move v1, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    aput v2, p1, v0

    .line 37
    .line 38
    return v4
.end method

.method public d()I
    .locals 2

    .line 1
    iget-object v0, p0, La9/p;->a:[B

    .line 2
    .line 3
    iget v1, p0, La9/p;->b:I

    .line 4
    .line 5
    aget-byte v0, v0, v1

    .line 6
    .line 7
    and-int/lit16 v0, v0, 0xff

    .line 8
    .line 9
    return v0
.end method

.method public e()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, La9/p;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public f(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, La9/p;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    or-int/lit16 p1, p1, 0xa0

    .line 6
    .line 7
    and-int/lit16 p1, p1, 0xff

    .line 8
    .line 9
    if-ne v0, p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public g()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, La9/p;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, La9/p;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public i()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, La9/p;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public j()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, La9/p;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x30

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method
