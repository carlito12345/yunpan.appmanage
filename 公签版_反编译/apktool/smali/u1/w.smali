.class public final Lu1/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:I

.field public c:Z

.field public d:J

.field public final synthetic e:Lu1/x;


# direct methods
.method public constructor <init>(Lu1/x;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu1/w;->e:Lu1/x;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lu1/w;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lu1/w;->e:Lu1/x;

    .line 2
    .line 3
    iget-object v1, v0, Lu1/x;->a:Ly1/x;

    .line 4
    .line 5
    invoke-virtual {v1}, Ly1/x;->K()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, v0, Lu1/x;->a:Ly1/x;

    .line 10
    .line 11
    invoke-virtual {v2}, Ly1/x;->I()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iget-object v4, v0, Lu1/x;->f:Lu1/b0;

    .line 16
    .line 17
    const/4 v5, 0x4

    .line 18
    if-eqz v3, :cond_3

    .line 19
    .line 20
    invoke-virtual {v2}, Ly1/x;->J()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v6, 0x1

    .line 25
    if-eq v3, v6, :cond_3

    .line 26
    .line 27
    invoke-virtual {v2}, Ly1/x;->J()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eq v2, v5, :cond_3

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    if-ne v1, v6, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-object v2, v0, Lu1/x;->d:Lu1/z;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    iget-boolean v7, p0, Lu1/w;->c:Z

    .line 48
    .line 49
    iget v8, p0, Lu1/w;->a:I

    .line 50
    .line 51
    if-eqz v7, :cond_1

    .line 52
    .line 53
    iget v7, p0, Lu1/w;->b:I

    .line 54
    .line 55
    if-ne v7, v1, :cond_1

    .line 56
    .line 57
    iget-wide v6, p0, Lu1/w;->d:J

    .line 58
    .line 59
    sub-long/2addr v2, v6

    .line 60
    int-to-long v6, v8

    .line 61
    cmp-long v1, v2, v6

    .line 62
    .line 63
    if-ltz v1, :cond_2

    .line 64
    .line 65
    new-instance v1, Lu1/y;

    .line 66
    .line 67
    invoke-direct {v1, v5, v8}, Lu1/y;-><init>(II)V

    .line 68
    .line 69
    .line 70
    iget-object v0, v0, Lu1/x;->c:Ly1/t;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    new-instance v2, Ly1/k;

    .line 76
    .line 77
    const/4 v3, 0x2

    .line 78
    const/16 v4, 0x3eb

    .line 79
    .line 80
    invoke-direct {v2, v3, v1, v4}, Ly1/k;-><init>(ILjava/lang/Exception;I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v0, Ly1/t;->a:Ly1/x;

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ly1/x;->c0(Ly1/k;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iput-boolean v6, p0, Lu1/w;->c:Z

    .line 90
    .line 91
    iput-wide v2, p0, Lu1/w;->d:J

    .line 92
    .line 93
    iput v1, p0, Lu1/w;->b:I

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Lu1/b0;->e(I)V

    .line 96
    .line 97
    .line 98
    iget-object v0, v4, Lu1/b0;->a:Landroid/os/Handler;

    .line 99
    .line 100
    int-to-long v1, v8

    .line 101
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_0
    return-void

    .line 105
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lu1/w;->c:Z

    .line 106
    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    invoke-virtual {v4, v5}, Lu1/b0;->e(I)V

    .line 110
    .line 111
    .line 112
    :cond_4
    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lu1/w;->c:Z

    .line 114
    .line 115
    return-void
.end method
