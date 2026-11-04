.class public final Lzh/b;
.super Lbi/a;
.source "SourceFile"


# static fields
.field public static final d:[[J


# instance fields
.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/16 v2, 0x100

    .line 6
    .line 7
    aput v2, v0, v1

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x4

    .line 11
    aput v4, v0, v3

    .line 12
    .line 13
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 14
    .line 15
    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, [[J

    .line 20
    .line 21
    sput-object v0, Lzh/b;->d:[[J

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-ge v0, v4, :cond_4

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    :goto_1
    if-ge v5, v2, :cond_3

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    int-to-long v6, v5

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    sget-object v6, Lzh/b;->d:[[J

    .line 34
    .line 35
    add-int/lit8 v7, v0, -0x1

    .line 36
    .line 37
    aget-object v6, v6, v7

    .line 38
    .line 39
    aget-wide v7, v6, v5

    .line 40
    .line 41
    move-wide v6, v7

    .line 42
    :goto_2
    const/4 v8, 0x0

    .line 43
    :goto_3
    const/16 v9, 0x8

    .line 44
    .line 45
    if-ge v8, v9, :cond_2

    .line 46
    .line 47
    const-wide/16 v9, 0x1

    .line 48
    .line 49
    and-long v11, v6, v9

    .line 50
    .line 51
    cmp-long v13, v11, v9

    .line 52
    .line 53
    if-nez v13, :cond_1

    .line 54
    .line 55
    ushr-long/2addr v6, v1

    .line 56
    const-wide v9, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    xor-long/2addr v6, v9

    .line 62
    goto :goto_4

    .line 63
    :cond_1
    ushr-long/2addr v6, v1

    .line 64
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_2
    sget-object v8, Lzh/b;->d:[[J

    .line 68
    .line 69
    aget-object v8, v8, v0

    .line 70
    .line 71
    aput-wide v6, v8, v5

    .line 72
    .line 73
    add-int/lit8 v5, v5, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lbi/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lzh/b;->c:J

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    iput v0, p0, Lbi/a;->a:I

    .line 11
    .line 12
    const-string v0, "CRC64"

    .line 13
    .line 14
    iput-object v0, p0, Lbi/a;->b:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 8

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    iget-wide v2, p0, Lzh/b;->c:J

    .line 6
    .line 7
    const-wide/16 v4, -0x1

    .line 8
    .line 9
    xor-long/2addr v2, v4

    .line 10
    long-to-int v6, v2

    .line 11
    int-to-byte v6, v6

    .line 12
    const/4 v7, 0x0

    .line 13
    aput-byte v6, v1, v7

    .line 14
    .line 15
    ushr-long v6, v2, v0

    .line 16
    .line 17
    long-to-int v0, v6

    .line 18
    int-to-byte v0, v0

    .line 19
    const/4 v6, 0x1

    .line 20
    aput-byte v0, v1, v6

    .line 21
    .line 22
    const/16 v0, 0x10

    .line 23
    .line 24
    ushr-long v6, v2, v0

    .line 25
    .line 26
    long-to-int v0, v6

    .line 27
    int-to-byte v0, v0

    .line 28
    const/4 v6, 0x2

    .line 29
    aput-byte v0, v1, v6

    .line 30
    .line 31
    const/16 v0, 0x18

    .line 32
    .line 33
    ushr-long v6, v2, v0

    .line 34
    .line 35
    long-to-int v0, v6

    .line 36
    int-to-byte v0, v0

    .line 37
    const/4 v6, 0x3

    .line 38
    aput-byte v0, v1, v6

    .line 39
    .line 40
    const/16 v0, 0x20

    .line 41
    .line 42
    ushr-long v6, v2, v0

    .line 43
    .line 44
    long-to-int v0, v6

    .line 45
    int-to-byte v0, v0

    .line 46
    const/4 v6, 0x4

    .line 47
    aput-byte v0, v1, v6

    .line 48
    .line 49
    const/16 v0, 0x28

    .line 50
    .line 51
    ushr-long v6, v2, v0

    .line 52
    .line 53
    long-to-int v0, v6

    .line 54
    int-to-byte v0, v0

    .line 55
    const/4 v6, 0x5

    .line 56
    aput-byte v0, v1, v6

    .line 57
    .line 58
    const/16 v0, 0x30

    .line 59
    .line 60
    ushr-long v6, v2, v0

    .line 61
    .line 62
    long-to-int v0, v6

    .line 63
    int-to-byte v0, v0

    .line 64
    const/4 v6, 0x6

    .line 65
    aput-byte v0, v1, v6

    .line 66
    .line 67
    const/16 v0, 0x38

    .line 68
    .line 69
    ushr-long/2addr v2, v0

    .line 70
    long-to-int v0, v2

    .line 71
    int-to-byte v0, v0

    .line 72
    const/4 v2, 0x7

    .line 73
    aput-byte v0, v1, v2

    .line 74
    .line 75
    iput-wide v4, p0, Lzh/b;->c:J

    .line 76
    .line 77
    return-object v1
.end method

.method public final b([BII)V
    .locals 11

    .line 1
    add-int/2addr p3, p2

    .line 2
    add-int/lit8 v0, p3, -0x3

    .line 3
    .line 4
    :goto_0
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lzh/b;->d:[[J

    .line 6
    .line 7
    if-ge p2, v0, :cond_0

    .line 8
    .line 9
    iget-wide v3, p0, Lzh/b;->c:J

    .line 10
    .line 11
    long-to-int v5, v3

    .line 12
    const/4 v6, 0x3

    .line 13
    aget-object v6, v2, v6

    .line 14
    .line 15
    and-int/lit16 v7, v5, 0xff

    .line 16
    .line 17
    aget-byte v8, p1, p2

    .line 18
    .line 19
    and-int/lit16 v8, v8, 0xff

    .line 20
    .line 21
    xor-int/2addr v7, v8

    .line 22
    aget-wide v7, v6, v7

    .line 23
    .line 24
    const/4 v6, 0x2

    .line 25
    aget-object v6, v2, v6

    .line 26
    .line 27
    ushr-int/lit8 v9, v5, 0x8

    .line 28
    .line 29
    and-int/lit16 v9, v9, 0xff

    .line 30
    .line 31
    add-int/lit8 v10, p2, 0x1

    .line 32
    .line 33
    aget-byte v10, p1, v10

    .line 34
    .line 35
    and-int/lit16 v10, v10, 0xff

    .line 36
    .line 37
    xor-int/2addr v9, v10

    .line 38
    aget-wide v9, v6, v9

    .line 39
    .line 40
    xor-long/2addr v7, v9

    .line 41
    const/16 v6, 0x20

    .line 42
    .line 43
    ushr-long/2addr v3, v6

    .line 44
    xor-long/2addr v3, v7

    .line 45
    const/4 v6, 0x1

    .line 46
    aget-object v6, v2, v6

    .line 47
    .line 48
    ushr-int/lit8 v7, v5, 0x10

    .line 49
    .line 50
    and-int/lit16 v7, v7, 0xff

    .line 51
    .line 52
    add-int/lit8 v8, p2, 0x2

    .line 53
    .line 54
    aget-byte v8, p1, v8

    .line 55
    .line 56
    and-int/lit16 v8, v8, 0xff

    .line 57
    .line 58
    xor-int/2addr v7, v8

    .line 59
    aget-wide v7, v6, v7

    .line 60
    .line 61
    xor-long/2addr v3, v7

    .line 62
    aget-object v1, v2, v1

    .line 63
    .line 64
    ushr-int/lit8 v2, v5, 0x18

    .line 65
    .line 66
    and-int/lit16 v2, v2, 0xff

    .line 67
    .line 68
    add-int/lit8 v5, p2, 0x3

    .line 69
    .line 70
    aget-byte v5, p1, v5

    .line 71
    .line 72
    and-int/lit16 v5, v5, 0xff

    .line 73
    .line 74
    xor-int/2addr v2, v5

    .line 75
    aget-wide v5, v1, v2

    .line 76
    .line 77
    xor-long v1, v3, v5

    .line 78
    .line 79
    iput-wide v1, p0, Lzh/b;->c:J

    .line 80
    .line 81
    add-int/lit8 p2, p2, 0x4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    :goto_1
    if-ge p2, p3, :cond_1

    .line 85
    .line 86
    aget-object v0, v2, v1

    .line 87
    .line 88
    add-int/lit8 v3, p2, 0x1

    .line 89
    .line 90
    aget-byte p2, p1, p2

    .line 91
    .line 92
    and-int/lit16 p2, p2, 0xff

    .line 93
    .line 94
    iget-wide v4, p0, Lzh/b;->c:J

    .line 95
    .line 96
    long-to-int v6, v4

    .line 97
    and-int/lit16 v6, v6, 0xff

    .line 98
    .line 99
    xor-int/2addr p2, v6

    .line 100
    aget-wide v6, v0, p2

    .line 101
    .line 102
    const/16 p2, 0x8

    .line 103
    .line 104
    ushr-long/2addr v4, p2

    .line 105
    xor-long/2addr v4, v6

    .line 106
    iput-wide v4, p0, Lzh/b;->c:J

    .line 107
    .line 108
    move p2, v3

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    return-void
.end method
