.class public final Le3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le3/i;


# instance fields
.field public final a:J

.field public final b:I

.field public final c:J

.field public final d:I

.field public final e:J

.field public final f:J

.field public final g:[J


# direct methods
.method public constructor <init>(JIJIJ[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Le3/k;->a:J

    .line 5
    .line 6
    iput p3, p0, Le3/k;->b:I

    .line 7
    .line 8
    iput-wide p4, p0, Le3/k;->c:J

    .line 9
    .line 10
    iput p6, p0, Le3/k;->d:I

    .line 11
    .line 12
    iput-wide p7, p0, Le3/k;->e:J

    .line 13
    .line 14
    iput-object p9, p0, Le3/k;->g:[J

    .line 15
    .line 16
    const-wide/16 p3, -0x1

    .line 17
    .line 18
    cmp-long p5, p7, p3

    .line 19
    .line 20
    if-nez p5, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    add-long p3, p1, p7

    .line 24
    .line 25
    :goto_0
    iput-wide p3, p0, Le3/k;->f:J

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le3/k;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final b()J
    .locals 4

    .line 1
    iget v0, p0, Le3/k;->b:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    iget-wide v2, p0, Le3/k;->a:J

    .line 5
    .line 6
    add-long/2addr v2, v0

    .line 7
    return-wide v2
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le3/k;->g:[J

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final d(J)J
    .locals 13

    .line 1
    iget-wide v0, p0, Le3/k;->a:J

    .line 2
    .line 3
    sub-long/2addr p1, v0

    .line 4
    invoke-virtual {p0}, Le3/k;->c()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget v0, p0, Le3/k;->b:I

    .line 11
    .line 12
    int-to-long v0, v0

    .line 13
    cmp-long v2, p1, v0

    .line 14
    .line 15
    if-gtz v2, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-object v0, p0, Le3/k;->g:[J

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    long-to-double p1, p1

    .line 24
    const-wide/high16 v1, 0x4070000000000000L    # 256.0

    .line 25
    .line 26
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    .line 27
    .line 28
    .line 29
    mul-double p1, p1, v1

    .line 30
    .line 31
    iget-wide v1, p0, Le3/k;->e:J

    .line 32
    .line 33
    long-to-double v1, v1

    .line 34
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 35
    .line 36
    .line 37
    div-double/2addr p1, v1

    .line 38
    double-to-long v1, p1

    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-static {v0, v1, v2, v3}, Lu1/f0;->d([JJZ)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    int-to-long v2, v1

    .line 45
    iget-wide v4, p0, Le3/k;->c:J

    .line 46
    .line 47
    mul-long v2, v2, v4

    .line 48
    .line 49
    const-wide/16 v6, 0x64

    .line 50
    .line 51
    div-long/2addr v2, v6

    .line 52
    aget-wide v8, v0, v1

    .line 53
    .line 54
    add-int/lit8 v10, v1, 0x1

    .line 55
    .line 56
    int-to-long v11, v10

    .line 57
    mul-long v4, v4, v11

    .line 58
    .line 59
    div-long/2addr v4, v6

    .line 60
    const/16 v6, 0x63

    .line 61
    .line 62
    if-ne v1, v6, :cond_1

    .line 63
    .line 64
    const-wide/16 v0, 0x100

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    aget-wide v6, v0, v10

    .line 68
    .line 69
    move-wide v0, v6

    .line 70
    :goto_0
    cmp-long v6, v8, v0

    .line 71
    .line 72
    if-nez v6, :cond_2

    .line 73
    .line 74
    const-wide/16 p1, 0x0

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    long-to-double v6, v8

    .line 78
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 79
    .line 80
    .line 81
    sub-double/2addr p1, v6

    .line 82
    sub-long/2addr v0, v8

    .line 83
    long-to-double v0, v0

    .line 84
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 85
    .line 86
    .line 87
    div-double/2addr p1, v0

    .line 88
    :goto_1
    sub-long/2addr v4, v2

    .line 89
    long-to-double v0, v4

    .line 90
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 91
    .line 92
    .line 93
    mul-double p1, p1, v0

    .line 94
    .line 95
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 96
    .line 97
    .line 98
    move-result-wide p1

    .line 99
    add-long/2addr p1, v2

    .line 100
    return-wide p1

    .line 101
    :cond_3
    :goto_2
    const-wide/16 p1, 0x0

    .line 102
    .line 103
    return-wide p1
.end method

.method public final synthetic e()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final f(J)Ll2/b0;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Le3/k;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, v0, Le3/k;->b:I

    .line 8
    .line 9
    iget-wide v3, v0, Le3/k;->a:J

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ll2/b0;

    .line 14
    .line 15
    new-instance v5, Ll2/d0;

    .line 16
    .line 17
    int-to-long v6, v2

    .line 18
    add-long/2addr v3, v6

    .line 19
    const-wide/16 v6, 0x0

    .line 20
    .line 21
    invoke-direct {v5, v6, v7, v3, v4}, Ll2/d0;-><init>(JJ)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v5, v5}, Ll2/b0;-><init>(Ll2/d0;Ll2/d0;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_0
    const-wide/16 v10, 0x0

    .line 29
    .line 30
    iget-wide v12, v0, Le3/k;->c:J

    .line 31
    .line 32
    move-wide/from16 v8, p1

    .line 33
    .line 34
    invoke-static/range {v8 .. v13}, Lu1/f0;->h(JJJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    long-to-double v7, v5

    .line 39
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    .line 40
    .line 41
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    .line 42
    .line 43
    .line 44
    mul-double v7, v7, v9

    .line 45
    .line 46
    iget-wide v11, v0, Le3/k;->c:J

    .line 47
    .line 48
    long-to-double v11, v11

    .line 49
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    .line 50
    .line 51
    .line 52
    div-double/2addr v7, v11

    .line 53
    const-wide/16 v11, 0x0

    .line 54
    .line 55
    cmpg-double v1, v7, v11

    .line 56
    .line 57
    if-gtz v1, :cond_1

    .line 58
    .line 59
    :goto_0
    const-wide/high16 v7, 0x4070000000000000L    # 256.0

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    cmpl-double v1, v7, v9

    .line 63
    .line 64
    if-ltz v1, :cond_2

    .line 65
    .line 66
    const-wide/high16 v7, 0x4070000000000000L    # 256.0

    .line 67
    .line 68
    const-wide/high16 v11, 0x4070000000000000L    # 256.0

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    double-to-int v1, v7

    .line 72
    iget-object v9, v0, Le3/k;->g:[J

    .line 73
    .line 74
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    aget-wide v10, v9, v1

    .line 78
    .line 79
    long-to-double v10, v10

    .line 80
    const/16 v12, 0x63

    .line 81
    .line 82
    if-ne v1, v12, :cond_3

    .line 83
    .line 84
    const-wide/high16 v12, 0x4070000000000000L    # 256.0

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    add-int/lit8 v12, v1, 0x1

    .line 88
    .line 89
    aget-wide v13, v9, v12

    .line 90
    .line 91
    long-to-double v12, v13

    .line 92
    :goto_1
    int-to-double v14, v1

    .line 93
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    .line 94
    .line 95
    .line 96
    sub-double/2addr v7, v14

    .line 97
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    .line 98
    .line 99
    .line 100
    sub-double/2addr v12, v10

    .line 101
    mul-double v12, v12, v7

    .line 102
    .line 103
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    .line 104
    .line 105
    .line 106
    add-double v11, v12, v10

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :goto_2
    div-double/2addr v11, v7

    .line 110
    iget-wide v7, v0, Le3/k;->e:J

    .line 111
    .line 112
    long-to-double v9, v7

    .line 113
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    .line 114
    .line 115
    .line 116
    mul-double v11, v11, v9

    .line 117
    .line 118
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    .line 119
    .line 120
    .line 121
    move-result-wide v13

    .line 122
    int-to-long v1, v2

    .line 123
    const-wide/16 v9, 0x1

    .line 124
    .line 125
    sub-long v17, v7, v9

    .line 126
    .line 127
    move-wide v15, v1

    .line 128
    invoke-static/range {v13 .. v18}, Lu1/f0;->h(JJJ)J

    .line 129
    .line 130
    .line 131
    move-result-wide v1

    .line 132
    new-instance v7, Ll2/b0;

    .line 133
    .line 134
    new-instance v8, Ll2/d0;

    .line 135
    .line 136
    add-long/2addr v3, v1

    .line 137
    invoke-direct {v8, v5, v6, v3, v4}, Ll2/d0;-><init>(JJ)V

    .line 138
    .line 139
    .line 140
    invoke-direct {v7, v8, v8}, Ll2/b0;-><init>(Ll2/d0;Ll2/d0;)V

    .line 141
    .line 142
    .line 143
    return-object v7
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Le3/k;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le3/k;->c:J

    .line 2
    .line 3
    return-wide v0
.end method
