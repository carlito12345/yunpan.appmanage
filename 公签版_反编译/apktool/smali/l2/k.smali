.class public Ll2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/c0;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:J

.field public final e:I

.field public final f:J

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(JJIIZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Ll2/k;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Ll2/k;->b:J

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    if-ne p6, v0, :cond_0

    .line 10
    .line 11
    const/4 p6, 0x1

    .line 12
    :cond_0
    iput p6, p0, Ll2/k;->c:I

    .line 13
    .line 14
    iput p5, p0, Ll2/k;->e:I

    .line 15
    .line 16
    iput-boolean p7, p0, Ll2/k;->g:Z

    .line 17
    .line 18
    iput-boolean p8, p0, Ll2/k;->h:Z

    .line 19
    .line 20
    const-wide/16 p6, -0x1

    .line 21
    .line 22
    cmp-long p8, p1, p6

    .line 23
    .line 24
    if-nez p8, :cond_1

    .line 25
    .line 26
    iput-wide p6, p0, Ll2/k;->d:J

    .line 27
    .line 28
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    iput-wide p1, p0, Ll2/k;->f:J

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sub-long/2addr p1, p3

    .line 37
    iput-wide p1, p0, Ll2/k;->d:J

    .line 38
    .line 39
    const-wide/16 p3, 0x0

    .line 40
    .line 41
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide p1

    .line 45
    const-wide/32 p3, 0x7a1200

    .line 46
    .line 47
    .line 48
    mul-long p1, p1, p3

    .line 49
    .line 50
    int-to-long p3, p5

    .line 51
    div-long/2addr p1, p3

    .line 52
    iput-wide p1, p0, Ll2/k;->f:J

    .line 53
    .line 54
    :goto_0
    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Ll2/k;->d:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Ll2/k;->g:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ll2/k;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public final f(J)Ll2/b0;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Ll2/k;->b:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    iget-wide v5, v0, Ll2/k;->d:J

    .line 8
    .line 9
    const-wide/16 v7, -0x1

    .line 10
    .line 11
    cmp-long v9, v5, v7

    .line 12
    .line 13
    if-nez v9, :cond_0

    .line 14
    .line 15
    iget-boolean v9, v0, Ll2/k;->g:Z

    .line 16
    .line 17
    if-nez v9, :cond_0

    .line 18
    .line 19
    new-instance v5, Ll2/b0;

    .line 20
    .line 21
    new-instance v6, Ll2/d0;

    .line 22
    .line 23
    invoke-direct {v6, v3, v4, v1, v2}, Ll2/d0;-><init>(JJ)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v5, v6, v6}, Ll2/b0;-><init>(Ll2/d0;Ll2/d0;)V

    .line 27
    .line 28
    .line 29
    return-object v5

    .line 30
    :cond_0
    iget v9, v0, Ll2/k;->e:I

    .line 31
    .line 32
    int-to-long v10, v9

    .line 33
    mul-long v10, v10, p1

    .line 34
    .line 35
    const-wide/32 v12, 0x7a1200

    .line 36
    .line 37
    .line 38
    div-long/2addr v10, v12

    .line 39
    iget v14, v0, Ll2/k;->c:I

    .line 40
    .line 41
    int-to-long v14, v14

    .line 42
    div-long/2addr v10, v14

    .line 43
    mul-long v10, v10, v14

    .line 44
    .line 45
    cmp-long v16, v5, v7

    .line 46
    .line 47
    if-eqz v16, :cond_1

    .line 48
    .line 49
    sub-long v7, v5, v14

    .line 50
    .line 51
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 52
    .line 53
    .line 54
    move-result-wide v10

    .line 55
    :cond_1
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v7

    .line 59
    add-long/2addr v7, v1

    .line 60
    sub-long v10, v7, v1

    .line 61
    .line 62
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 63
    .line 64
    .line 65
    move-result-wide v10

    .line 66
    mul-long v10, v10, v12

    .line 67
    .line 68
    int-to-long v12, v9

    .line 69
    div-long/2addr v10, v12

    .line 70
    new-instance v12, Ll2/d0;

    .line 71
    .line 72
    invoke-direct {v12, v10, v11, v7, v8}, Ll2/d0;-><init>(JJ)V

    .line 73
    .line 74
    .line 75
    const-wide/16 v16, -0x1

    .line 76
    .line 77
    cmp-long v13, v5, v16

    .line 78
    .line 79
    if-eqz v13, :cond_3

    .line 80
    .line 81
    cmp-long v5, v10, p1

    .line 82
    .line 83
    if-gez v5, :cond_3

    .line 84
    .line 85
    add-long/2addr v7, v14

    .line 86
    iget-wide v5, v0, Ll2/k;->a:J

    .line 87
    .line 88
    cmp-long v10, v7, v5

    .line 89
    .line 90
    if-ltz v10, :cond_2

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    sub-long v1, v7, v1

    .line 94
    .line 95
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    const-wide/32 v3, 0x7a1200

    .line 100
    .line 101
    .line 102
    mul-long v1, v1, v3

    .line 103
    .line 104
    int-to-long v3, v9

    .line 105
    div-long/2addr v1, v3

    .line 106
    new-instance v3, Ll2/d0;

    .line 107
    .line 108
    invoke-direct {v3, v1, v2, v7, v8}, Ll2/d0;-><init>(JJ)V

    .line 109
    .line 110
    .line 111
    new-instance v1, Ll2/b0;

    .line 112
    .line 113
    invoke-direct {v1, v12, v3}, Ll2/b0;-><init>(Ll2/d0;Ll2/d0;)V

    .line 114
    .line 115
    .line 116
    return-object v1

    .line 117
    :cond_3
    :goto_0
    new-instance v1, Ll2/b0;

    .line 118
    .line 119
    invoke-direct {v1, v12, v12}, Ll2/b0;-><init>(Ll2/d0;Ll2/d0;)V

    .line 120
    .line 121
    .line 122
    return-object v1
.end method

.method public final h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ll2/k;->f:J

    .line 2
    .line 3
    return-wide v0
.end method
