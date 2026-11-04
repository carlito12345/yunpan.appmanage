.class public final Lwa/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/yunpan/appmanage/service/AccService;

.field public final b:Landroid/os/Handler;

.field public c:Lv8/a;

.field public d:Lv8/a;

.field public e:I

.field public f:J

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lwa/z;->b:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lwa/z;->c:Lv8/a;

    .line 17
    .line 18
    iput-object v0, p0, Lwa/z;->d:Lv8/a;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lwa/z;->e:I

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iput-wide v0, p0, Lwa/z;->f:J

    .line 28
    .line 29
    const-wide/16 v0, 0x0

    .line 30
    .line 31
    iput-wide v0, p0, Lwa/z;->g:J

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 7
    .line 8
    new-instance v1, Lv8/a;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lv8/a;-><init>(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "rotation_floating_window"

    .line 14
    .line 15
    iput-object v0, v1, Lv8/a;->h:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Landroid/view/View;

    .line 18
    .line 19
    iget-object v2, p0, Lwa/z;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 20
    .line 21
    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lv8/a;->k(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    const/16 v0, 0x28

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lv8/a;->a(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lv8/a;->e()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lwa/z;->d:Lv8/a;

    .line 36
    .line 37
    iget-object v0, v1, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 41
    .line 42
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 43
    .line 44
    const/16 v2, 0x18

    .line 45
    .line 46
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 47
    .line 48
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 49
    .line 50
    const/16 v3, 0x1a

    .line 51
    .line 52
    if-lt v2, v3, :cond_0

    .line 53
    .line 54
    const/16 v2, 0x7f6

    .line 55
    .line 56
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/16 v3, 0x16

    .line 60
    .line 61
    if-lt v2, v3, :cond_1

    .line 62
    .line 63
    const/16 v2, 0x7f0

    .line 64
    .line 65
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/16 v2, 0x7d6

    .line 69
    .line 70
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 71
    .line 72
    :goto_0
    const/4 v2, -0x3

    .line 73
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 74
    .line 75
    iput-object v0, v1, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 76
    .line 77
    invoke-virtual {v1}, Lv8/a;->e()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final b()V
    .locals 7

    .line 1
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 2
    .line 3
    iget-boolean v0, v0, Lwa/u;->Q:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lwa/z;->c:Lv8/a;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lwa/z;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 14
    .line 15
    new-instance v1, Lw8/b;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, v2}, Lw8/b;-><init>(I)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iput-boolean v2, v1, Lw8/b;->c:Z

    .line 23
    .line 24
    new-instance v2, Lv8/a;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Lv8/a;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    .line 27
    .line 28
    .line 29
    const v3, 0x7f0e0213

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lv8/a;->j(I)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static {v3, v3}, Ljava/lang/Math;->max(FF)F

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/high16 v5, 0x3f800000    # 1.0f

    .line 41
    .line 42
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const v6, 0x3e4ccccd    # 0.2f

    .line 47
    .line 48
    .line 49
    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    iget-object v5, v2, Lv8/a;->d:Landroid/view/WindowManager;

    .line 58
    .line 59
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    if-nez v5, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    new-instance v6, Landroid/util/DisplayMetrics;

    .line 67
    .line 68
    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 72
    .line 73
    .line 74
    iget v5, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 75
    .line 76
    int-to-float v5, v5

    .line 77
    mul-float v5, v5, v4

    .line 78
    .line 79
    float-to-int v4, v5

    .line 80
    iget v5, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 81
    .line 82
    int-to-float v5, v5

    .line 83
    mul-float v5, v5, v3

    .line 84
    .line 85
    float-to-int v3, v5

    .line 86
    iget-object v5, v2, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 87
    .line 88
    const v6, 0x800055

    .line 89
    .line 90
    .line 91
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 92
    .line 93
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 94
    .line 95
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 96
    .line 97
    invoke-virtual {v2}, Lv8/a;->e()V

    .line 98
    .line 99
    .line 100
    :goto_0
    invoke-virtual {v2, v1}, Lv8/a;->q(Lw8/b;)V

    .line 101
    .line 102
    .line 103
    new-instance v1, Lta/c;

    .line 104
    .line 105
    invoke-direct {v1, v0}, Lta/c;-><init>(Lcom/yunpan/appmanage/service/AccService;)V

    .line 106
    .line 107
    .line 108
    const v3, 0x1020006

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v3, v1}, Lv8/a;->m(ILv8/c;)V

    .line 112
    .line 113
    .line 114
    new-instance v1, Lta/c;

    .line 115
    .line 116
    invoke-direct {v1, v0}, Lta/c;-><init>(Lcom/yunpan/appmanage/service/AccService;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, v2, Lv8/a;->c:Lv8/h;

    .line 120
    .line 121
    if-nez v0, :cond_3

    .line 122
    .line 123
    const/4 v0, 0x0

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    :goto_1
    if-nez v0, :cond_4

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    const/16 v3, 0x10

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Lv8/a;->h(I)V

    .line 135
    .line 136
    .line 137
    const/4 v3, 0x1

    .line 138
    invoke-virtual {v0, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 139
    .line 140
    .line 141
    new-instance v3, Lv8/f;

    .line 142
    .line 143
    invoke-direct {v3, v2, v1}, Lv8/f;-><init>(Lv8/a;Lta/c;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 147
    .line 148
    .line 149
    :goto_2
    iput-object v2, p0, Lwa/z;->c:Lv8/a;

    .line 150
    .line 151
    invoke-virtual {v2}, Lv8/a;->d()V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public final c()V
    .locals 8

    .line 1
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 2
    .line 3
    iget-boolean v1, v0, Lwa/u;->P:Z

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget v1, p0, Lwa/z;->e:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    add-int/2addr v1, v2

    .line 11
    iput v1, p0, Lwa/z;->e:I

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    iget-wide v5, p0, Lwa/z;->f:J

    .line 18
    .line 19
    sub-long/2addr v3, v5

    .line 20
    const-wide/16 v5, 0x4e20

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    cmp-long v7, v3, v5

    .line 24
    .line 25
    if-lez v7, :cond_0

    .line 26
    .line 27
    iput v1, p0, Lwa/z;->e:I

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iput-wide v0, p0, Lwa/z;->f:J

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget v3, p0, Lwa/z;->e:I

    .line 37
    .line 38
    const/16 v4, 0xe

    .line 39
    .line 40
    if-le v3, v4, :cond_4

    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    iput-wide v3, p0, Lwa/z;->g:J

    .line 47
    .line 48
    iget-object v3, p0, Lwa/z;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 49
    .line 50
    new-instance v4, Lv8/a;

    .line 51
    .line 52
    invoke-direct {v4, v3}, Lv8/a;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    .line 53
    .line 54
    .line 55
    const-string v3, "rotation_floating_window_show_toast"

    .line 56
    .line 57
    iput-object v3, v4, Lv8/a;->h:Ljava/lang/String;

    .line 58
    .line 59
    const v3, 0x7f0e0216

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v3}, Lv8/a;->j(I)V

    .line 63
    .line 64
    .line 65
    const v3, 0x102000b

    .line 66
    .line 67
    .line 68
    const-string v5, "20\u79d2\u5185\u89e6\u53d115\u6b21\u5f3a\u5236\u65cb\u8f6c\uff0c\u5df2\u6682\u505c\u65cb\u8f6c\u4efb\u52a1\uff1a1\u5206\u949f"

    .line 69
    .line 70
    invoke-virtual {v4, v3, v5}, Lv8/a;->o(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/16 v3, 0x1e61

    .line 74
    .line 75
    invoke-virtual {v4, v3}, Lv8/a;->r(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Lv8/a;->d()V

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Lwa/z;->d:Lv8/a;

    .line 82
    .line 83
    iget-boolean v4, v3, Lv8/a;->f:Z

    .line 84
    .line 85
    if-eqz v4, :cond_3

    .line 86
    .line 87
    iget v0, v0, Lwa/u;->U:I

    .line 88
    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    const/4 v0, -0x1

    .line 92
    invoke-virtual {v3, v0}, Lv8/a;->n(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    if-ne v0, v2, :cond_2

    .line 97
    .line 98
    invoke-virtual {v3, v1}, Lv8/a;->n(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {v3, v2}, Lv8/a;->n(I)V

    .line 103
    .line 104
    .line 105
    :goto_0
    iget-object v0, p0, Lwa/z;->d:Lv8/a;

    .line 106
    .line 107
    const-wide/16 v1, 0x190

    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Lv8/a;->c(J)V

    .line 110
    .line 111
    .line 112
    :cond_3
    return-void

    .line 113
    :cond_4
    :goto_1
    iget-object v0, p0, Lwa/z;->d:Lv8/a;

    .line 114
    .line 115
    iget-boolean v1, v0, Lv8/a;->f:Z

    .line 116
    .line 117
    if-eqz v1, :cond_5

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    sget-object v1, Lv8/i;->a:Landroid/os/Handler;

    .line 121
    .line 122
    iget-object v2, v0, Lv8/a;->m:Ljava/lang/Runnable;

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    .line 126
    .line 127
    const-wide/16 v3, 0x1bc

    .line 128
    .line 129
    invoke-virtual {v0, v2, v3, v4}, Lv8/a;->i(Ljava/lang/Runnable;J)V

    .line 130
    .line 131
    .line 132
    :goto_2
    invoke-virtual {p0}, Lwa/z;->b()V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lwa/z;->g:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/32 v2, 0xea60

    .line 9
    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-gez v4, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 17
    .line 18
    iget-boolean v1, v0, Lwa/u;->R:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    const-wide/32 v3, 0x1d4c0

    .line 27
    .line 28
    .line 29
    cmp-long v5, v1, v3

    .line 30
    .line 31
    if-gez v5, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object v1, p0, Lwa/z;->b:Landroid/os/Handler;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-boolean v3, v0, Lwa/u;->S:Z

    .line 41
    .line 42
    const/4 v4, 0x6

    .line 43
    const-wide/16 v5, 0x190

    .line 44
    .line 45
    const/4 v7, 0x1

    .line 46
    const-string v8, "|"

    .line 47
    .line 48
    if-eqz v3, :cond_6

    .line 49
    .line 50
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lwa/z;->d:Lv8/a;

    .line 56
    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lwa/z;->a()V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v2, v0, Lwa/u;->O:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_4

    .line 69
    .line 70
    iget-object v0, v0, Lwa/u;->O:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    iget-object p1, p0, Lwa/z;->d:Lv8/a;

    .line 94
    .line 95
    iget-object v0, p1, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 96
    .line 97
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 98
    .line 99
    if-eq v0, v7, :cond_3

    .line 100
    .line 101
    invoke-virtual {p1, v7}, Lv8/a;->n(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lwa/z;->d:Lv8/a;

    .line 105
    .line 106
    iget-boolean p1, p1, Lv8/a;->f:Z

    .line 107
    .line 108
    if-nez p1, :cond_3

    .line 109
    .line 110
    invoke-virtual {p0}, Lwa/z;->c()V

    .line 111
    .line 112
    .line 113
    :cond_3
    new-instance p1, Lwa/x;

    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-direct {p1, p0, v0}, Lwa/x;-><init>(Lwa/z;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, p1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    .line 121
    .line 122
    goto/16 :goto_3

    .line 123
    .line 124
    :cond_4
    iget-object p1, p0, Lwa/z;->d:Lv8/a;

    .line 125
    .line 126
    iget-object v0, p1, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 127
    .line 128
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 129
    .line 130
    if-eq v0, v4, :cond_5

    .line 131
    .line 132
    invoke-virtual {p1, v4}, Lv8/a;->n(I)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lwa/z;->d:Lv8/a;

    .line 136
    .line 137
    iget-boolean p1, p1, Lv8/a;->f:Z

    .line 138
    .line 139
    if-nez p1, :cond_5

    .line 140
    .line 141
    invoke-virtual {p0}, Lwa/z;->c()V

    .line 142
    .line 143
    .line 144
    :cond_5
    new-instance p1, Lwa/x;

    .line 145
    .line 146
    const/4 v0, 0x1

    .line 147
    invoke-direct {p1, p0, v0}, Lwa/x;-><init>(Lwa/z;I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, p1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    .line 152
    .line 153
    goto/16 :goto_3

    .line 154
    .line 155
    :cond_6
    iget-boolean v3, v0, Lwa/u;->T:Z

    .line 156
    .line 157
    if-eqz v3, :cond_b

    .line 158
    .line 159
    iget-object v2, p0, Lwa/z;->d:Lv8/a;

    .line 160
    .line 161
    if-nez v2, :cond_7

    .line 162
    .line 163
    invoke-virtual {p0}, Lwa/z;->a()V

    .line 164
    .line 165
    .line 166
    :cond_7
    iget-object v2, v0, Lwa/u;->N:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-nez v2, :cond_9

    .line 173
    .line 174
    iget-object v0, v0, Lwa/u;->N:Ljava/lang/String;

    .line 175
    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_9

    .line 196
    .line 197
    iget-object p1, p0, Lwa/z;->d:Lv8/a;

    .line 198
    .line 199
    iget-object v0, p1, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 200
    .line 201
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 202
    .line 203
    if-eq v0, v4, :cond_8

    .line 204
    .line 205
    invoke-virtual {p1, v4}, Lv8/a;->n(I)V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lwa/z;->d:Lv8/a;

    .line 209
    .line 210
    iget-boolean p1, p1, Lv8/a;->f:Z

    .line 211
    .line 212
    if-nez p1, :cond_8

    .line 213
    .line 214
    invoke-virtual {p0}, Lwa/z;->c()V

    .line 215
    .line 216
    .line 217
    :cond_8
    new-instance p1, Lwa/x;

    .line 218
    .line 219
    const/4 v0, 0x2

    .line 220
    invoke-direct {p1, p0, v0}, Lwa/x;-><init>(Lwa/z;I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, p1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    .line 225
    .line 226
    goto/16 :goto_3

    .line 227
    .line 228
    :cond_9
    iget-object p1, p0, Lwa/z;->d:Lv8/a;

    .line 229
    .line 230
    iget-object v0, p1, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 231
    .line 232
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 233
    .line 234
    if-eq v0, v7, :cond_a

    .line 235
    .line 236
    invoke-virtual {p1, v7}, Lv8/a;->n(I)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lwa/z;->d:Lv8/a;

    .line 240
    .line 241
    iget-boolean p1, p1, Lv8/a;->f:Z

    .line 242
    .line 243
    if-nez p1, :cond_a

    .line 244
    .line 245
    invoke-virtual {p0}, Lwa/z;->c()V

    .line 246
    .line 247
    .line 248
    :cond_a
    new-instance p1, Lwa/x;

    .line 249
    .line 250
    const/4 v0, 0x3

    .line 251
    invoke-direct {p1, p0, v0}, Lwa/x;-><init>(Lwa/z;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, p1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    .line 256
    .line 257
    goto/16 :goto_3

    .line 258
    .line 259
    :cond_b
    :try_start_0
    iget-object v1, v0, Lwa/u;->N:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_d

    .line 266
    .line 267
    iget-object v1, v0, Lwa/u;->O:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-eqz v1, :cond_d

    .line 274
    .line 275
    iget-object p1, p0, Lwa/z;->d:Lv8/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    .line 277
    if-eqz p1, :cond_c

    .line 278
    .line 279
    :try_start_1
    invoke-virtual {p1}, Lv8/a;->b()V

    .line 280
    .line 281
    .line 282
    iget-object p1, p0, Lwa/z;->d:Lv8/a;

    .line 283
    .line 284
    invoke-virtual {p1}, Lv8/a;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 285
    .line 286
    .line 287
    :catch_0
    :try_start_2
    iput-object v2, p0, Lwa/z;->d:Lv8/a;

    .line 288
    .line 289
    goto :goto_0

    .line 290
    :catch_1
    move-exception p1

    .line 291
    goto/16 :goto_2

    .line 292
    .line 293
    :cond_c
    :goto_0
    iget-object p1, p0, Lwa/z;->c:Lv8/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 294
    .line 295
    if-eqz p1, :cond_15

    .line 296
    .line 297
    :try_start_3
    invoke-virtual {p1}, Lv8/a;->b()V

    .line 298
    .line 299
    .line 300
    iget-object p1, p0, Lwa/z;->c:Lv8/a;

    .line 301
    .line 302
    invoke-virtual {p1}, Lv8/a;->g()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 303
    .line 304
    .line 305
    :catch_2
    :try_start_4
    iput-object v2, p0, Lwa/z;->c:Lv8/a;

    .line 306
    .line 307
    goto/16 :goto_3

    .line 308
    .line 309
    :cond_d
    iget-object v1, p0, Lwa/z;->d:Lv8/a;

    .line 310
    .line 311
    if-nez v1, :cond_e

    .line 312
    .line 313
    invoke-virtual {p0}, Lwa/z;->a()V

    .line 314
    .line 315
    .line 316
    :cond_e
    iget-object v1, v0, Lwa/u;->N:Ljava/lang/String;

    .line 317
    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    const/4 v2, 0x0

    .line 338
    if-eqz v1, :cond_10

    .line 339
    .line 340
    iget-object p1, p0, Lwa/z;->d:Lv8/a;

    .line 341
    .line 342
    iget-object v0, p1, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 343
    .line 344
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 345
    .line 346
    if-eqz v0, :cond_f

    .line 347
    .line 348
    invoke-virtual {p1, v2}, Lv8/a;->n(I)V

    .line 349
    .line 350
    .line 351
    :cond_f
    invoke-virtual {p0}, Lwa/z;->c()V

    .line 352
    .line 353
    .line 354
    goto :goto_3

    .line 355
    :cond_10
    iget-object v1, v0, Lwa/u;->O:Ljava/lang/String;

    .line 356
    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 373
    .line 374
    .line 375
    move-result p1

    .line 376
    if-eqz p1, :cond_12

    .line 377
    .line 378
    iget-object p1, p0, Lwa/z;->d:Lv8/a;

    .line 379
    .line 380
    iget-object v0, p1, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 381
    .line 382
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 383
    .line 384
    if-eq v0, v7, :cond_11

    .line 385
    .line 386
    invoke-virtual {p1, v7}, Lv8/a;->n(I)V

    .line 387
    .line 388
    .line 389
    :cond_11
    invoke-virtual {p0}, Lwa/z;->c()V

    .line 390
    .line 391
    .line 392
    goto :goto_3

    .line 393
    :cond_12
    iget p1, v0, Lwa/u;->U:I

    .line 394
    .line 395
    if-nez p1, :cond_13

    .line 396
    .line 397
    iget-object p1, p0, Lwa/z;->d:Lv8/a;

    .line 398
    .line 399
    const/4 v0, -0x1

    .line 400
    invoke-virtual {p1, v0}, Lv8/a;->n(I)V

    .line 401
    .line 402
    .line 403
    goto :goto_1

    .line 404
    :cond_13
    if-ne p1, v7, :cond_14

    .line 405
    .line 406
    iget-object p1, p0, Lwa/z;->d:Lv8/a;

    .line 407
    .line 408
    invoke-virtual {p1, v2}, Lv8/a;->n(I)V

    .line 409
    .line 410
    .line 411
    goto :goto_1

    .line 412
    :cond_14
    iget-object p1, p0, Lwa/z;->d:Lv8/a;

    .line 413
    .line 414
    invoke-virtual {p1, v7}, Lv8/a;->n(I)V

    .line 415
    .line 416
    .line 417
    :goto_1
    iget-object p1, p0, Lwa/z;->d:Lv8/a;

    .line 418
    .line 419
    iget-boolean v0, p1, Lv8/a;->f:Z

    .line 420
    .line 421
    if-eqz v0, :cond_15

    .line 422
    .line 423
    invoke-virtual {p1, v5, v6}, Lv8/a;->c(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 424
    .line 425
    .line 426
    goto :goto_3

    .line 427
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 428
    .line 429
    .line 430
    :cond_15
    :goto_3
    return-void
.end method
