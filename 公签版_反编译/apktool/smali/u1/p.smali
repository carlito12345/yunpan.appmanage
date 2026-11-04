.class public final Lu1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static f:Lu1/p;


# instance fields
.field public a:I

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10000

    .line 2
    new-array v0, v0, [F

    iput-object v0, p0, Lu1/p;->e:Ljava/lang/Object;

    const/16 v0, 0xa

    .line 3
    new-array v1, v0, [C

    iput-object v1, p0, Lu1/p;->d:Ljava/lang/Object;

    .line 4
    new-array v0, v0, [F

    iput-object v0, p0, Lu1/p;->c:Ljava/lang/Object;

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    iput p1, p0, Lu1/p;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Lu1/a;->h()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lu1/p;->c:Ljava/lang/Object;

    .line 9
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lu1/p;->d:Ljava/lang/Object;

    .line 10
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lu1/p;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lu1/p;->a:I

    .line 12
    new-instance v1, Ls1/f;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Ls1/f;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu1/p;
    .locals 2

    .line 1
    const-class v0, Lu1/p;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lu1/p;->f:Lu1/p;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lu1/p;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lu1/p;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lu1/p;->f:Lu1/p;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lu1/p;->f:Lu1/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p0
.end method


# virtual methods
.method public b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lu1/p;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lu1/p;->a:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public c(CLeb/c;)F
    .locals 5

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    const/16 p1, 0x20

    .line 7
    .line 8
    iget v0, p0, Lu1/p;->a:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    :goto_0
    iget-object v2, p0, Lu1/p;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, [F

    .line 15
    .line 16
    aget v3, v2, p1

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    cmpl-float v4, v3, v4

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    iget-object v3, p0, Lu1/p;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, [C

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    aput-char p1, v3, v4

    .line 29
    .line 30
    invoke-virtual {p2, v3, v4, v1}, Landroid/graphics/Paint;->measureText([CII)F

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    aput v3, v2, p1

    .line 35
    .line 36
    :cond_1
    int-to-float p1, v0

    .line 37
    mul-float v3, v3, p1

    .line 38
    .line 39
    return v3
.end method

.method public d(Ljava/lang/CharSequence;IILeb/c;)F
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :goto_0
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 4
    .line 5
    if-ge p2, p3, :cond_6

    .line 6
    .line 7
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    const v5, 0xd83c

    .line 13
    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    if-eq v3, v5, :cond_2

    .line 17
    .line 18
    const v5, 0xd83d

    .line 19
    .line 20
    .line 21
    if-eq v3, v5, :cond_2

    .line 22
    .line 23
    const v5, 0xd83e

    .line 24
    .line 25
    .line 26
    if-ne v3, v5, :cond_0

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_0
    iget-boolean v5, p0, Lu1/p;->b:Z

    .line 30
    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    invoke-static {v3}, Lmb/k;->f(C)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    invoke-static {v3}, Lmb/k;->d(C)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-ge v6, v5, :cond_5

    .line 48
    .line 49
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-virtual {p0, v5, p4}, Lu1/p;->c(CLeb/c;)F

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    mul-float v5, v5, v2

    .line 58
    .line 59
    float-to-double v7, v5

    .line 60
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 61
    .line 62
    .line 63
    move-result-wide v7

    .line 64
    double-to-long v7, v7

    .line 65
    add-long/2addr v0, v7

    .line 66
    add-int/lit8 v6, v6, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p0, v3, p4}, Lu1/p;->c(CLeb/c;)F

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    mul-float v3, v3, v2

    .line 74
    .line 75
    float-to-double v2, v3

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    :goto_2
    double-to-long v2, v2

    .line 81
    add-long/2addr v0, v2

    .line 82
    goto :goto_5

    .line 83
    :cond_2
    :goto_3
    add-int/lit8 v3, p2, 0x4

    .line 84
    .line 85
    if-gt v3, p3, :cond_3

    .line 86
    .line 87
    iget-object v5, p0, Lu1/p;->c:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v5, [F

    .line 90
    .line 91
    invoke-virtual {p4, p1, p2, v3, v5}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 92
    .line 93
    .line 94
    aget v3, v5, v6

    .line 95
    .line 96
    const/4 v7, 0x0

    .line 97
    cmpl-float v8, v3, v7

    .line 98
    .line 99
    if-lez v8, :cond_3

    .line 100
    .line 101
    aget v8, v5, v4

    .line 102
    .line 103
    cmpl-float v8, v8, v7

    .line 104
    .line 105
    if-nez v8, :cond_3

    .line 106
    .line 107
    const/4 v8, 0x2

    .line 108
    aget v8, v5, v8

    .line 109
    .line 110
    cmpl-float v8, v8, v7

    .line 111
    .line 112
    if-nez v8, :cond_3

    .line 113
    .line 114
    const/4 v8, 0x3

    .line 115
    aget v5, v5, v8

    .line 116
    .line 117
    cmpl-float v5, v5, v7

    .line 118
    .line 119
    if-nez v5, :cond_3

    .line 120
    .line 121
    add-int/lit8 p2, p2, 0x3

    .line 122
    .line 123
    mul-float v3, v3, v2

    .line 124
    .line 125
    float-to-double v2, v3

    .line 126
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 127
    .line 128
    .line 129
    move-result-wide v2

    .line 130
    goto :goto_2

    .line 131
    :cond_3
    add-int/lit8 v3, p2, 0x2

    .line 132
    .line 133
    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    sub-int/2addr v3, p2

    .line 138
    const/4 v5, 0x0

    .line 139
    :goto_4
    iget-object v7, p0, Lu1/p;->d:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v7, [C

    .line 142
    .line 143
    if-ge v5, v3, :cond_4

    .line 144
    .line 145
    add-int v8, p2, v5

    .line 146
    .line 147
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    aput-char v8, v7, v5

    .line 152
    .line 153
    add-int/lit8 v5, v5, 0x1

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_4
    invoke-virtual {p4, v7, v6, v3}, Landroid/graphics/Paint;->measureText([CII)F

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    mul-float v5, v5, v2

    .line 161
    .line 162
    float-to-double v5, v5

    .line 163
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 164
    .line 165
    .line 166
    move-result-wide v5

    .line 167
    double-to-long v5, v5

    .line 168
    add-long/2addr v0, v5

    .line 169
    add-int/lit8 v3, v3, -0x1

    .line 170
    .line 171
    add-int/2addr p2, v3

    .line 172
    :cond_5
    :goto_5
    add-int/2addr p2, v4

    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_6
    long-to-float p1, v0

    .line 176
    div-float/2addr p1, v2

    .line 177
    return p1
.end method

.method public e(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lu1/p;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lu1/o;

    .line 20
    .line 21
    iget-object v3, v2, Lu1/o;->a:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lu1/p;->e:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-boolean v1, p0, Lu1/p;->b:Z

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget v1, p0, Lu1/p;->a:I

    .line 41
    .line 42
    if-ne v1, p1, :cond_2

    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lu1/p;->b:Z

    .line 50
    .line 51
    iput p1, p0, Lu1/p;->a:I

    .line 52
    .line 53
    iget-object p1, p0, Lu1/p;->d:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lu1/o;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    new-instance v1, Lha/db;

    .line 78
    .line 79
    const/16 v2, 0x17

    .line 80
    .line 81
    invoke-direct {v1, v2, v0}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, v0, Lu1/o;->b:Ljava/util/concurrent/Executor;

    .line 85
    .line 86
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    return-void

    .line 91
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    goto :goto_4

    .line 93
    :goto_3
    throw p1

    .line 94
    :goto_4
    goto :goto_3
.end method
