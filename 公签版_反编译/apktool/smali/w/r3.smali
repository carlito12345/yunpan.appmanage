.class public final Lw/r3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lw/r3;->c:Ljava/lang/Object;

    const/4 v0, 0x5

    .line 3
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lw/r3;->d:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lw/r3;->e:Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/yunpan/appmanage/carsdk/u;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object v0, p0, Lw/r3;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lw/r3;->d:Ljava/lang/Object;

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lw/r3;->e:Ljava/lang/Object;

    const/4 v1, 0x2

    .line 9
    new-array v2, v1, [I

    iput-object v2, p0, Lw/r3;->f:Ljava/lang/Object;

    .line 10
    new-array v1, v1, [I

    iput-object v1, p0, Lw/r3;->g:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lw/r3;->a:Ljava/lang/Object;

    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e001b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lw/r3;->b:Ljava/lang/Object;

    const v2, 0x7f0b020d

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lw/r3;->c:Ljava/lang/Object;

    .line 14
    const-class v1, Lw/r3;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/16 p1, 0x3ea

    .line 16
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p1, -0x2

    .line 17
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 18
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p1, -0x3

    .line 19
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const p1, 0x7f140004

    .line 20
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 p1, 0x18

    .line 21
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method public constructor <init>(Lk5/d;Lk5/d;Lk5/d;Lk5/d;Lh5/n;Lh5/n;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lh5/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lh5/m;-><init>(ILjava/lang/Object;)V

    const/16 v1, 0x96

    .line 24
    invoke-static {v1, v0}, Lb6/c;->a(ILb6/a;)Lv3/f;

    move-result-object v0

    iput-object v0, p0, Lw/r3;->g:Ljava/lang/Object;

    .line 25
    iput-object p1, p0, Lw/r3;->a:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Lw/r3;->b:Ljava/lang/Object;

    .line 27
    iput-object p3, p0, Lw/r3;->c:Ljava/lang/Object;

    .line 28
    iput-object p4, p0, Lw/r3;->d:Ljava/lang/Object;

    .line 29
    iput-object p5, p0, Lw/r3;->e:Ljava/lang/Object;

    .line 30
    iput-object p6, p0, Lw/r3;->f:Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/io/File;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    array-length v2, v1

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 11
    .line 12
    .line 13
    return v3

    .line 14
    :cond_0
    array-length v4, v1

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    :goto_0
    if-ge v5, v4, :cond_2

    .line 18
    .line 19
    aget-object v7, v1, v5

    .line 20
    .line 21
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    if-eqz v8, :cond_1

    .line 26
    .line 27
    invoke-static {v7}, Lw/r3;->b(Ljava/io/File;)Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-eqz v7, :cond_1

    .line 32
    .line 33
    add-int/lit8 v6, v6, 0x1

    .line 34
    .line 35
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    if-ne v2, v6, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    return v3

    .line 44
    :catch_0
    :cond_3
    return v0
.end method


# virtual methods
.method public a(J)V
    .locals 8

    .line 1
    const-string v0, "\u5747\u901f:"

    .line 2
    .line 3
    iget-object v1, p0, Lw/r3;->f:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lja/b;

    .line 6
    .line 7
    iget-object v1, v1, Lja/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 10
    .line 11
    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    cmp-long v3, p1, v1

    .line 15
    .line 16
    if-lez v3, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lw/r3;->f:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lja/b;

    .line 21
    .line 22
    iget-object v1, v1, Lja/b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    .line 24
    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lw/r3;->f:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lja/b;

    .line 30
    .line 31
    monitor-enter p1

    .line 32
    :try_start_0
    iget-object p2, p0, Lw/r3;->f:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p2, Lja/b;

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    iget-object v3, p0, Lw/r3;->f:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Lja/b;

    .line 43
    .line 44
    iget-wide v3, v3, Lja/b;->j:J

    .line 45
    .line 46
    sub-long/2addr v1, v3

    .line 47
    invoke-static {v1, v2}, Lha/v9;->b(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p2, Lja/b;->k:Ljava/lang/String;

    .line 52
    .line 53
    iget-object p2, p0, Lw/r3;->f:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p2, Lja/b;

    .line 56
    .line 57
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 58
    .line 59
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 60
    .line 61
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 62
    .line 63
    iget-object v2, p2, Lja/b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    long-to-double v2, v2

    .line 70
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 71
    .line 72
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 73
    .line 74
    .line 75
    mul-double v2, v2, v4

    .line 76
    .line 77
    :try_start_1
    iget-object v4, p0, Lw/r3;->f:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v4, Lja/b;

    .line 80
    .line 81
    iget-object v4, v4, Lja/b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 84
    .line 85
    .line 86
    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    long-to-double v4, v4

    .line 88
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 89
    .line 90
    .line 91
    div-double/2addr v2, v4

    .line 92
    :try_start_2
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iput-object v1, p2, Lja/b;->e:Ljava/lang/String;

    .line 97
    .line 98
    iget-object p2, p0, Lw/r3;->f:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p2, Lja/b;

    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lw/r3;->f:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, Lja/b;

    .line 110
    .line 111
    iget-object v0, v0, Lja/b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 114
    .line 115
    .line 116
    move-result-wide v4

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    iget-object v0, p0, Lw/r3;->f:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v0, Lja/b;

    .line 124
    .line 125
    iget-wide v6, v0, Lja/b;->j:J

    .line 126
    .line 127
    sub-long v6, v2, v6

    .line 128
    .line 129
    const-wide/16 v2, 0x0

    .line 130
    .line 131
    invoke-static/range {v2 .. v7}, Lha/v9;->a(JJJ)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v0, " MB/s"

    .line 139
    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p2, Lja/b;->d:Ljava/lang/String;

    .line 148
    .line 149
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    iget-object p1, p0, Lw/r3;->g:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast p1, Lcom/yunpan/appmanage/carsdk/u;

    .line 153
    .line 154
    const/16 p2, 0x12d

    .line 155
    .line 156
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :catchall_0
    move-exception p2

    .line 161
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    throw p2
.end method
