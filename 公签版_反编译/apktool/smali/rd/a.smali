.class public abstract Lrd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lrd/a;->a:[B

    .line 9
    .line 10
    const/16 v0, 0x44

    .line 11
    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Lrd/a;->b:[B

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 1
        -0x1t
        0x53t
        0x4dt
        0x42t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 22
    :array_1
    .array-data 1
        -0x2t
        0x53t
        0x4dt
        0x42t
        0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static a(I[B)I
    .locals 1

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    add-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    aget-byte p0, p1, p0

    .line 8
    .line 9
    and-int/lit16 p0, p0, 0xff

    .line 10
    .line 11
    shl-int/lit8 p0, p0, 0x8

    .line 12
    .line 13
    add-int/2addr v0, p0

    .line 14
    return v0
.end method

.method public static b(I[B)I
    .locals 2

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    add-int/lit8 v1, p0, 0x1

    .line 6
    .line 7
    aget-byte v1, p1, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x8

    .line 12
    .line 13
    add-int/2addr v0, v1

    .line 14
    add-int/lit8 v1, p0, 0x2

    .line 15
    .line 16
    aget-byte v1, p1, v1

    .line 17
    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 19
    .line 20
    shl-int/lit8 v1, v1, 0x10

    .line 21
    .line 22
    add-int/2addr v0, v1

    .line 23
    add-int/lit8 p0, p0, 0x3

    .line 24
    .line 25
    aget-byte p0, p1, p0

    .line 26
    .line 27
    and-int/lit16 p0, p0, 0xff

    .line 28
    .line 29
    shl-int/lit8 p0, p0, 0x18

    .line 30
    .line 31
    add-int/2addr v0, p0

    .line 32
    return v0
.end method

.method public static c(I[B)J
    .locals 4

    .line 1
    invoke-static {p0, p1}, Lrd/a;->b(I[B)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const-wide v2, 0xffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr v0, v2

    .line 12
    add-int/lit8 p0, p0, 0x4

    .line 13
    .line 14
    invoke-static {p0, p1}, Lrd/a;->b(I[B)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    int-to-long p0, p0

    .line 19
    const/16 v2, 0x20

    .line 20
    .line 21
    shl-long/2addr p0, v2

    .line 22
    add-long/2addr v0, p0

    .line 23
    return-wide v0
.end method

.method public static d(I[B)J
    .locals 4

    .line 1
    invoke-static {p0, p1}, Lrd/a;->b(I[B)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 p0, p0, 0x4

    .line 6
    .line 7
    invoke-static {p0, p1}, Lrd/a;->b(I[B)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    int-to-long p0, p0

    .line 12
    const/16 v1, 0x20

    .line 13
    .line 14
    shl-long/2addr p0, v1

    .line 15
    int-to-long v0, v0

    .line 16
    const-wide v2, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr v0, v2

    .line 22
    or-long/2addr p0, v0

    .line 23
    const-wide/16 v0, 0x2710

    .line 24
    .line 25
    div-long/2addr p0, v0

    .line 26
    const-wide v0, 0xa9730b66800L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    sub-long/2addr p0, v0

    .line 32
    return-wide p0
.end method

.method public static e(J[BI)V
    .locals 1

    .line 1
    long-to-int v0, p0

    .line 2
    int-to-byte v0, v0

    .line 3
    aput-byte v0, p2, p3

    .line 4
    .line 5
    add-int/lit8 p3, p3, 0x1

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    shr-long/2addr p0, v0

    .line 10
    long-to-int p1, p0

    .line 11
    int-to-byte p0, p1

    .line 12
    aput-byte p0, p2, p3

    .line 13
    .line 14
    return-void
.end method

.method public static f(J[BI)V
    .locals 3

    .line 1
    long-to-int v0, p0

    .line 2
    int-to-byte v0, v0

    .line 3
    aput-byte v0, p2, p3

    .line 4
    .line 5
    add-int/lit8 v0, p3, 0x1

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    shr-long v1, p0, v1

    .line 10
    .line 11
    long-to-int v2, v1

    .line 12
    int-to-byte v1, v2

    .line 13
    aput-byte v1, p2, v0

    .line 14
    .line 15
    add-int/lit8 v0, p3, 0x2

    .line 16
    .line 17
    const/16 v1, 0x10

    .line 18
    .line 19
    shr-long v1, p0, v1

    .line 20
    .line 21
    long-to-int v2, v1

    .line 22
    int-to-byte v1, v2

    .line 23
    aput-byte v1, p2, v0

    .line 24
    .line 25
    add-int/lit8 p3, p3, 0x3

    .line 26
    .line 27
    const/16 v0, 0x18

    .line 28
    .line 29
    shr-long/2addr p0, v0

    .line 30
    long-to-int p1, p0

    .line 31
    int-to-byte p0, p1

    .line 32
    aput-byte p0, p2, p3

    .line 33
    .line 34
    return-void
.end method

.method public static g(J[BI)V
    .locals 3

    .line 1
    long-to-int v0, p0

    .line 2
    int-to-byte v0, v0

    .line 3
    aput-byte v0, p2, p3

    .line 4
    .line 5
    add-int/lit8 v0, p3, 0x1

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    shr-long v1, p0, v1

    .line 10
    .line 11
    long-to-int v2, v1

    .line 12
    int-to-byte v1, v2

    .line 13
    aput-byte v1, p2, v0

    .line 14
    .line 15
    add-int/lit8 v0, p3, 0x2

    .line 16
    .line 17
    const/16 v1, 0x10

    .line 18
    .line 19
    shr-long v1, p0, v1

    .line 20
    .line 21
    long-to-int v2, v1

    .line 22
    int-to-byte v1, v2

    .line 23
    aput-byte v1, p2, v0

    .line 24
    .line 25
    add-int/lit8 v0, p3, 0x3

    .line 26
    .line 27
    const/16 v1, 0x18

    .line 28
    .line 29
    shr-long v1, p0, v1

    .line 30
    .line 31
    long-to-int v2, v1

    .line 32
    int-to-byte v1, v2

    .line 33
    aput-byte v1, p2, v0

    .line 34
    .line 35
    add-int/lit8 v0, p3, 0x4

    .line 36
    .line 37
    const/16 v1, 0x20

    .line 38
    .line 39
    shr-long v1, p0, v1

    .line 40
    .line 41
    long-to-int v2, v1

    .line 42
    int-to-byte v1, v2

    .line 43
    aput-byte v1, p2, v0

    .line 44
    .line 45
    add-int/lit8 v0, p3, 0x5

    .line 46
    .line 47
    const/16 v1, 0x28

    .line 48
    .line 49
    shr-long v1, p0, v1

    .line 50
    .line 51
    long-to-int v2, v1

    .line 52
    int-to-byte v1, v2

    .line 53
    aput-byte v1, p2, v0

    .line 54
    .line 55
    add-int/lit8 v0, p3, 0x6

    .line 56
    .line 57
    const/16 v1, 0x30

    .line 58
    .line 59
    shr-long v1, p0, v1

    .line 60
    .line 61
    long-to-int v2, v1

    .line 62
    int-to-byte v1, v2

    .line 63
    aput-byte v1, p2, v0

    .line 64
    .line 65
    add-int/lit8 p3, p3, 0x7

    .line 66
    .line 67
    const/16 v0, 0x38

    .line 68
    .line 69
    shr-long/2addr p0, v0

    .line 70
    long-to-int p1, p0

    .line 71
    int-to-byte p0, p1

    .line 72
    aput-byte p0, p2, p3

    .line 73
    .line 74
    return-void
.end method

.method public static h(J[BI)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    const-wide v0, 0xa9730b66800L

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    add-long/2addr p0, v0

    .line 13
    const-wide/16 v0, 0x2710

    .line 14
    .line 15
    mul-long p0, p0, v0

    .line 16
    .line 17
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lrd/a;->g(J[BI)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
