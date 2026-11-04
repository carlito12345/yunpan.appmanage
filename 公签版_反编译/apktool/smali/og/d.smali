.class public final Log/d;
.super Ld/b;
.source "SourceFile"


# instance fields
.field public final d:J

.field public e:J

.field public final synthetic f:Log/e;


# direct methods
.method public constructor <init>(Log/e;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Log/d;->f:Log/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ld/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p2, p0, Log/d;->d:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final M()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Log/d;->e:J

    .line 2
    .line 3
    iget-wide v2, p0, Log/d;->d:J

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gez v4, :cond_0

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

.method public final b()I
    .locals 9

    .line 1
    iget-wide v0, p0, Log/d;->d:J

    .line 2
    .line 3
    iget-wide v2, p0, Log/d;->e:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    iget-object v2, p0, Log/d;->f:Log/e;

    .line 7
    .line 8
    iget-object v2, v2, Log/e;->c:Lrg/a;

    .line 9
    .line 10
    iget v3, v2, Lrg/a;->d:I

    .line 11
    .line 12
    int-to-long v3, v3

    .line 13
    iget-object v2, v2, Lrg/a;->a:Lxg/b;

    .line 14
    .line 15
    invoke-virtual {v2}, Lxg/b;->available()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    int-to-long v5, v2

    .line 20
    const-wide/16 v7, 0x8

    .line 21
    .line 22
    mul-long v5, v5, v7

    .line 23
    .line 24
    add-long/2addr v5, v3

    .line 25
    div-long/2addr v5, v7

    .line 26
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    long-to-int v1, v0

    .line 31
    return v1
.end method

.method public final f0([BII)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-wide v1, p0, Log/d;->d:J

    .line 6
    .line 7
    iget-wide v3, p0, Log/d;->e:J

    .line 8
    .line 9
    sub-long/2addr v1, v3

    .line 10
    int-to-long v3, p3

    .line 11
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    long-to-int p3, v1

    .line 16
    :goto_0
    if-ge v0, p3, :cond_6

    .line 17
    .line 18
    iget-object v1, p0, Log/d;->f:Log/e;

    .line 19
    .line 20
    iget-object v2, v1, Log/e;->c:Lrg/a;

    .line 21
    .line 22
    iget v3, v2, Lrg/a;->d:I

    .line 23
    .line 24
    const v4, 0xffff

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    iget-object v6, v1, Log/e;->e:Leb/h;

    .line 29
    .line 30
    if-lez v3, :cond_2

    .line 31
    .line 32
    const/16 v1, 0x8

    .line 33
    .line 34
    invoke-static {v2, v1}, Log/e;->K(Lrg/a;I)J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    long-to-int v2, v1

    .line 39
    int-to-byte v1, v2

    .line 40
    add-int v2, p2, v0

    .line 41
    .line 42
    iget v3, v6, Leb/h;->a:I

    .line 43
    .line 44
    iget-object v7, v6, Leb/h;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v7, [B

    .line 47
    .line 48
    aput-byte v1, v7, v3

    .line 49
    .line 50
    add-int/lit8 v7, v3, 0x1

    .line 51
    .line 52
    and-int/2addr v4, v7

    .line 53
    iget-boolean v7, v6, Leb/h;->b:Z

    .line 54
    .line 55
    if-nez v7, :cond_1

    .line 56
    .line 57
    if-ge v4, v3, :cond_1

    .line 58
    .line 59
    iput-boolean v5, v6, Leb/h;->b:Z

    .line 60
    .line 61
    :cond_1
    iput v4, v6, Leb/h;->a:I

    .line 62
    .line 63
    aput-byte v1, p1, v2

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    add-int v2, p2, v0

    .line 67
    .line 68
    sub-int v3, p3, v0

    .line 69
    .line 70
    iget-object v1, v1, Log/e;->d:Ljava/io/InputStream;

    .line 71
    .line 72
    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/4 v3, -0x1

    .line 77
    if-eq v1, v3, :cond_5

    .line 78
    .line 79
    move v3, v2

    .line 80
    :goto_1
    add-int v7, v2, v1

    .line 81
    .line 82
    if-ge v3, v7, :cond_4

    .line 83
    .line 84
    aget-byte v7, p1, v3

    .line 85
    .line 86
    iget v8, v6, Leb/h;->a:I

    .line 87
    .line 88
    iget-object v9, v6, Leb/h;->c:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v9, [B

    .line 91
    .line 92
    aput-byte v7, v9, v8

    .line 93
    .line 94
    add-int/lit8 v7, v8, 0x1

    .line 95
    .line 96
    and-int/2addr v7, v4

    .line 97
    iget-boolean v9, v6, Leb/h;->b:Z

    .line 98
    .line 99
    if-nez v9, :cond_3

    .line 100
    .line 101
    if-ge v7, v8, :cond_3

    .line 102
    .line 103
    iput-boolean v5, v6, Leb/h;->b:Z

    .line 104
    .line 105
    :cond_3
    iput v7, v6, Leb/h;->a:I

    .line 106
    .line 107
    add-int/lit8 v3, v3, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    move v5, v1

    .line 111
    :goto_2
    iget-wide v1, p0, Log/d;->e:J

    .line 112
    .line 113
    int-to-long v3, v5

    .line 114
    add-long/2addr v1, v3

    .line 115
    iput-wide v1, p0, Log/d;->e:J

    .line 116
    .line 117
    add-int/2addr v0, v5

    .line 118
    goto :goto_0

    .line 119
    :cond_5
    new-instance p1, Ljava/io/EOFException;

    .line 120
    .line 121
    const-string p2, "Truncated Deflate64 Stream"

    .line 122
    .line 123
    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :cond_6
    return p3
.end method

.method public final q0()I
    .locals 5

    .line 1
    iget-wide v0, p0, Log/d;->e:J

    .line 2
    .line 3
    iget-wide v2, p0, Log/d;->d:J

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gez v4, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    :goto_0
    return v0
.end method
