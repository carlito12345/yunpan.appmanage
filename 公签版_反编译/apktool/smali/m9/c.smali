.class public final Lm9/c;
.super Lfg/m;
.source "SourceFile"


# instance fields
.field public final a:Lk9/d;

.field public final synthetic b:Lm9/d;


# direct methods
.method public constructor <init>(Lm9/d;Lfg/j;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lm9/c;->b:Lm9/d;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lfg/m;-><init>(Lfg/x;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lk9/d;

    .line 7
    .line 8
    invoke-direct {p2}, Lk9/d;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lm9/c;->a:Lk9/d;

    .line 12
    .line 13
    invoke-virtual {p1}, Lm9/d;->contentLength()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p2, Lk9/d;->b:J

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final write(Lfg/i;J)V
    .locals 10

    .line 1
    invoke-super {p0, p1, p2, p3}, Lfg/m;->write(Lfg/i;J)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm9/c;->a:Lk9/d;

    .line 5
    .line 6
    iget-wide v0, p1, Lk9/d;->b:J

    .line 7
    .line 8
    iput-wide v0, p1, Lk9/d;->b:J

    .line 9
    .line 10
    iget-wide v2, p1, Lk9/d;->c:J

    .line 11
    .line 12
    add-long/2addr v2, p2

    .line 13
    iput-wide v2, p1, Lk9/d;->c:J

    .line 14
    .line 15
    iget-wide v2, p1, Lk9/d;->e:J

    .line 16
    .line 17
    add-long/2addr v2, p2

    .line 18
    iput-wide v2, p1, Lk9/d;->e:J

    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide p2

    .line 24
    iget-wide v2, p1, Lk9/d;->f:J

    .line 25
    .line 26
    sub-long v2, p2, v2

    .line 27
    .line 28
    const-wide/16 v4, 0x12c

    .line 29
    .line 30
    cmp-long v6, v2, v4

    .line 31
    .line 32
    if-ltz v6, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-wide v4, p1, Lk9/d;->c:J

    .line 36
    .line 37
    cmp-long v6, v4, v0

    .line 38
    .line 39
    if-nez v6, :cond_4

    .line 40
    .line 41
    :goto_0
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    cmp-long v6, v2, v4

    .line 44
    .line 45
    if-nez v6, :cond_1

    .line 46
    .line 47
    const-wide/16 v2, 0x1

    .line 48
    .line 49
    :cond_1
    iget-wide v6, p1, Lk9/d;->c:J

    .line 50
    .line 51
    long-to-float v6, v6

    .line 52
    const/high16 v7, 0x3f800000    # 1.0f

    .line 53
    .line 54
    mul-float v6, v6, v7

    .line 55
    .line 56
    long-to-float v0, v0

    .line 57
    div-float/2addr v6, v0

    .line 58
    iput v6, p1, Lk9/d;->a:F

    .line 59
    .line 60
    iget-wide v0, p1, Lk9/d;->e:J

    .line 61
    .line 62
    const-wide/16 v6, 0x3e8

    .line 63
    .line 64
    mul-long v0, v0, v6

    .line 65
    .line 66
    div-long/2addr v0, v2

    .line 67
    iget-object v2, p1, Lk9/d;->g:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/16 v1, 0xa

    .line 81
    .line 82
    if-le v0, v1, :cond_2

    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    move-wide v6, v4

    .line 93
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Ljava/lang/Long;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 106
    .line 107
    .line 108
    move-result-wide v8

    .line 109
    long-to-float v1, v8

    .line 110
    long-to-float v3, v6

    .line 111
    add-float/2addr v3, v1

    .line 112
    float-to-long v6, v3

    .line 113
    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    int-to-long v0, v0

    .line 119
    div-long/2addr v6, v0

    .line 120
    iput-wide v6, p1, Lk9/d;->d:J

    .line 121
    .line 122
    iput-wide p2, p1, Lk9/d;->f:J

    .line 123
    .line 124
    iput-wide v4, p1, Lk9/d;->e:J

    .line 125
    .line 126
    iget-object p2, p0, Lm9/c;->b:Lm9/d;

    .line 127
    .line 128
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    new-instance p3, Ly7/b;

    .line 132
    .line 133
    const/16 v0, 0x11

    .line 134
    .line 135
    const/4 v1, 0x0

    .line 136
    invoke-direct {p3, v0, p2, p1, v1}, Ly7/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 137
    .line 138
    .line 139
    sget-object p1, Lb9/a;->a:Lb9/b;

    .line 140
    .line 141
    iget-object p1, p1, Lb9/b;->a:Landroid/os/Handler;

    .line 142
    .line 143
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    .line 145
    .line 146
    :cond_4
    return-void
.end method
