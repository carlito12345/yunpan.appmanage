.class public final Lod/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lod/b;
.implements Lod/c;


# instance fields
.field public a:[I

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lod/d;->a:[I

    .line 3
    iput-object p2, p0, Lod/d;->b:[B

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final c(I[B)I
    .locals 7

    .line 1
    iget-object v0, p0, Lod/d;->a:[I

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    int-to-long v3, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-wide v3, v1

    .line 11
    :goto_0
    invoke-static {v3, v4, p2, p1}, Lrd/a;->e(J[BI)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lod/d;->b:[B

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    array-length v0, v0

    .line 19
    int-to-long v1, v0

    .line 20
    :cond_1
    add-int/lit8 v0, p1, 0x2

    .line 21
    .line 22
    invoke-static {v1, v2, p2, v0}, Lrd/a;->e(J[BI)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, p1, 0x4

    .line 26
    .line 27
    iget-object v1, p0, Lod/d;->a:[I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    array-length v3, v1

    .line 33
    const/4 v4, 0x0

    .line 34
    :goto_1
    if-ge v4, v3, :cond_2

    .line 35
    .line 36
    aget v5, v1, v4

    .line 37
    .line 38
    int-to-long v5, v5

    .line 39
    invoke-static {v5, v6, p2, v0}, Lrd/a;->e(J[BI)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x2

    .line 43
    .line 44
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object v1, p0, Lod/d;->b:[B

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    array-length v3, v1

    .line 52
    invoke-static {v1, v2, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lod/d;->b:[B

    .line 56
    .line 57
    array-length p2, p2

    .line 58
    add-int/2addr v0, p2

    .line 59
    :cond_3
    sub-int/2addr v0, p1

    .line 60
    return v0
.end method

.method public final i(II[B)I
    .locals 6

    .line 1
    invoke-static {p1, p3}, Lrd/a;->a(I[B)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    add-int/lit8 v0, p1, 0x2

    .line 6
    .line 7
    invoke-static {v0, p3}, Lrd/a;->a(I[B)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v1, p1, 0x4

    .line 12
    .line 13
    new-array v2, p2, [I

    .line 14
    .line 15
    iput-object v2, p0, Lod/d;->a:[I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, p2, :cond_0

    .line 20
    .line 21
    iget-object v4, p0, Lod/d;->a:[I

    .line 22
    .line 23
    invoke-static {v1, p3}, Lrd/a;->a(I[B)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    aput v5, v4, v3

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x2

    .line 30
    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-array p2, v0, [B

    .line 35
    .line 36
    iput-object p2, p0, Lod/d;->b:[B

    .line 37
    .line 38
    invoke-static {p3, v1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    add-int/2addr v1, v0

    .line 42
    sub-int/2addr v1, p1

    .line 43
    return v1
.end method

.method public final size()I
    .locals 3

    .line 1
    iget-object v0, p0, Lod/d;->a:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    mul-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    add-int/lit8 v0, v0, 0x4

    .line 12
    .line 13
    iget-object v2, p0, Lod/d;->b:[B

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    array-length v1, v2

    .line 18
    :cond_1
    add-int/2addr v0, v1

    .line 19
    return v0
.end method
