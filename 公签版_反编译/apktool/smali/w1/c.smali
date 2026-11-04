.class public abstract Lw1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/h;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/ArrayList;

.field public c:I

.field public d:Lw1/j;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lw1/c;->a:Z

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lw1/c;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final f(Lw1/x;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw1/c;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget p1, p0, Lw1/c;->c:I

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    iput p1, p0, Lw1/c;->c:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public g()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final k(I)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lw1/c;->d:Lw1/j;

    .line 3
    .line 4
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    iget v4, p0, Lw1/c;->c:I

    .line 9
    .line 10
    if-ge v3, v4, :cond_2

    .line 11
    .line 12
    iget-object v4, p0, Lw1/c;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lw1/x;

    .line 19
    .line 20
    iget-boolean v5, p0, Lw1/c;->a:Z

    .line 21
    .line 22
    check-cast v4, Li2/f;

    .line 23
    .line 24
    monitor-enter v4

    .line 25
    :try_start_0
    sget-object v6, Li2/f;->p:Lu7/y0;

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    iget v5, v1, Lw1/j;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/4 v5, 0x0

    .line 34
    :goto_1
    if-nez v5, :cond_1

    .line 35
    .line 36
    monitor-exit v4

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :try_start_1
    iget-wide v5, v4, Li2/f;->i:J

    .line 39
    .line 40
    int-to-long v7, p1

    .line 41
    add-long/2addr v5, v7

    .line 42
    iput-wide v5, v4, Li2/f;->i:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    monitor-exit v4

    .line 45
    :goto_2
    add-int/2addr v3, v0

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    throw p1

    .line 50
    :cond_2
    return-void
.end method

.method public final l()V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lw1/c;->d:Lw1/j;

    .line 3
    .line 4
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    iget v4, p0, Lw1/c;->c:I

    .line 9
    .line 10
    if-ge v3, v4, :cond_6

    .line 11
    .line 12
    iget-object v4, p0, Lw1/c;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lw1/x;

    .line 19
    .line 20
    iget-boolean v5, p0, Lw1/c;->a:Z

    .line 21
    .line 22
    check-cast v4, Li2/f;

    .line 23
    .line 24
    monitor-enter v4

    .line 25
    :try_start_0
    sget-object v6, Li2/f;->p:Lu7/y0;

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    iget v5, v1, Lw1/j;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/4 v5, 0x0

    .line 34
    :goto_1
    if-nez v5, :cond_1

    .line 35
    .line 36
    monitor-exit v4

    .line 37
    goto :goto_4

    .line 38
    :cond_1
    :try_start_1
    iget v5, v4, Li2/f;->g:I

    .line 39
    .line 40
    if-lez v5, :cond_2

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/4 v5, 0x0

    .line 45
    :goto_2
    invoke-static {v5}, La9/o;->t(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v5, v4, Li2/f;->d:Lu1/z;

    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v12

    .line 57
    iget-wide v5, v4, Li2/f;->h:J

    .line 58
    .line 59
    sub-long v5, v12, v5

    .line 60
    .line 61
    long-to-int v7, v5

    .line 62
    iget-wide v5, v4, Li2/f;->j:J

    .line 63
    .line 64
    int-to-long v8, v7

    .line 65
    add-long/2addr v5, v8

    .line 66
    iput-wide v5, v4, Li2/f;->j:J

    .line 67
    .line 68
    iget-wide v5, v4, Li2/f;->k:J

    .line 69
    .line 70
    iget-wide v8, v4, Li2/f;->i:J

    .line 71
    .line 72
    add-long/2addr v5, v8

    .line 73
    iput-wide v5, v4, Li2/f;->k:J

    .line 74
    .line 75
    if-lez v7, :cond_5

    .line 76
    .line 77
    long-to-float v5, v8

    .line 78
    const/high16 v6, 0x45fa0000    # 8000.0f

    .line 79
    .line 80
    mul-float v5, v5, v6

    .line 81
    .line 82
    int-to-float v6, v7

    .line 83
    div-float/2addr v5, v6

    .line 84
    iget-object v6, v4, Li2/f;->f:Li2/l;

    .line 85
    .line 86
    long-to-double v8, v8

    .line 87
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 88
    .line 89
    .line 90
    move-result-wide v8

    .line 91
    double-to-int v8, v8

    .line 92
    invoke-virtual {v6, v5, v8}, Li2/l;->a(FI)V

    .line 93
    .line 94
    .line 95
    iget-wide v5, v4, Li2/f;->j:J

    .line 96
    .line 97
    const-wide/16 v8, 0x7d0

    .line 98
    .line 99
    cmp-long v10, v5, v8

    .line 100
    .line 101
    if-gez v10, :cond_3

    .line 102
    .line 103
    iget-wide v5, v4, Li2/f;->k:J

    .line 104
    .line 105
    const-wide/32 v8, 0x80000

    .line 106
    .line 107
    .line 108
    cmp-long v10, v5, v8

    .line 109
    .line 110
    if-ltz v10, :cond_4

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    goto :goto_5

    .line 115
    :cond_3
    :goto_3
    iget-object v5, v4, Li2/f;->f:Li2/l;

    .line 116
    .line 117
    invoke-virtual {v5}, Li2/l;->b()F

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    float-to-long v5, v5

    .line 122
    iput-wide v5, v4, Li2/f;->l:J

    .line 123
    .line 124
    :cond_4
    iget-wide v8, v4, Li2/f;->i:J

    .line 125
    .line 126
    iget-wide v10, v4, Li2/f;->l:J

    .line 127
    .line 128
    move-object v6, v4

    .line 129
    invoke-virtual/range {v6 .. v11}, Li2/f;->b(IJJ)V

    .line 130
    .line 131
    .line 132
    iput-wide v12, v4, Li2/f;->h:J

    .line 133
    .line 134
    const-wide/16 v5, 0x0

    .line 135
    .line 136
    iput-wide v5, v4, Li2/f;->i:J

    .line 137
    .line 138
    :cond_5
    iget v5, v4, Li2/f;->g:I

    .line 139
    .line 140
    sub-int/2addr v5, v0

    .line 141
    iput v5, v4, Li2/f;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .line 143
    monitor-exit v4

    .line 144
    :goto_4
    add-int/2addr v3, v0

    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :goto_5
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    throw v0

    .line 149
    :cond_6
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lw1/c;->d:Lw1/j;

    .line 151
    .line 152
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lw1/c;->c:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lw1/c;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lw1/x;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public final n(Lw1/j;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-object p1, p0, Lw1/c;->d:Lw1/j;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    iget v3, p0, Lw1/c;->c:I

    .line 7
    .line 8
    if-ge v2, v3, :cond_3

    .line 9
    .line 10
    iget-object v3, p0, Lw1/c;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lw1/x;

    .line 17
    .line 18
    iget-boolean v4, p0, Lw1/c;->a:Z

    .line 19
    .line 20
    check-cast v3, Li2/f;

    .line 21
    .line 22
    monitor-enter v3

    .line 23
    :try_start_0
    sget-object v5, Li2/f;->p:Lu7/y0;

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    iget v4, p1, Lw1/j;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v4, 0x0

    .line 32
    :goto_1
    if-nez v4, :cond_1

    .line 33
    .line 34
    monitor-exit v3

    .line 35
    goto :goto_3

    .line 36
    :cond_1
    :try_start_1
    iget v4, v3, Li2/f;->g:I

    .line 37
    .line 38
    if-nez v4, :cond_2

    .line 39
    .line 40
    iget-object v4, v3, Li2/f;->d:Lu1/z;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    iput-wide v4, v3, Li2/f;->h:J

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_4

    .line 54
    :cond_2
    :goto_2
    iget v4, v3, Li2/f;->g:I

    .line 55
    .line 56
    add-int/2addr v4, v0

    .line 57
    iput v4, v3, Li2/f;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    monitor-exit v3

    .line 60
    :goto_3
    add-int/2addr v2, v0

    .line 61
    goto :goto_0

    .line 62
    :goto_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    throw p1

    .line 64
    :cond_3
    return-void
.end method
