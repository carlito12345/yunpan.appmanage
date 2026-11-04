.class public final Ltb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ldb/q;


# instance fields
.field public final a:Lio/github/rosemoe/sora/widget/CodeEditor;

.field public b:Z

.field public c:Z

.field public d:J

.field public e:I

.field public f:[F


# direct methods
.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Ltb/d;->d:J

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Ltb/d;->b:Z

    .line 10
    .line 11
    iput-object p1, p0, Ltb/d;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 12
    .line 13
    iput p2, p0, Ltb/d;->e:I

    .line 14
    .line 15
    const-class p2, Ldb/x;

    .line 16
    .line 17
    invoke-virtual {p1, p2, p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->l0(Ljava/lang/Class;Ldb/q;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lbi/a;Lag/h;)V
    .locals 0

    .line 1
    check-cast p1, Ldb/x;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    iput-wide p1, p0, Ltb/d;->d:J

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Ltb/d;->b:Z

    .line 11
    .line 12
    return-void
.end method

.method public final run()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Ltb/d;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget v0, p0, Ltb/d;->e:I

    .line 7
    .line 8
    if-lez v0, :cond_2

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    iget-wide v4, p0, Ltb/d;->d:J

    .line 15
    .line 16
    sub-long/2addr v2, v4

    .line 17
    iget v0, p0, Ltb/d;->e:I

    .line 18
    .line 19
    int-to-long v4, v0

    .line 20
    const-wide/16 v6, 0x2

    .line 21
    .line 22
    mul-long v4, v4, v6

    .line 23
    .line 24
    iget-object v0, p0, Ltb/d;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 25
    .line 26
    cmp-long v6, v2, v4

    .line 27
    .line 28
    if-ltz v6, :cond_0

    .line 29
    .line 30
    iget-boolean v2, p0, Ltb/d;->b:Z

    .line 31
    .line 32
    xor-int/2addr v2, v1

    .line 33
    iput-boolean v2, p0, Ltb/d;->b:Z

    .line 34
    .line 35
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v2, v2, Lmb/j;->c:Lmb/b;

    .line 40
    .line 41
    invoke-virtual {v2}, Lmb/b;->a()Lmb/b;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLayout()Lwb/d;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iget v4, v2, Lmb/b;->b:I

    .line 50
    .line 51
    iget v2, v2, Lmb/b;->c:I

    .line 52
    .line 53
    iget-object v5, p0, Ltb/d;->f:[F

    .line 54
    .line 55
    invoke-interface {v3, v4, v2, v5}, Lwb/d;->e(II[F)[F

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iput-object v2, p0, Ltb/d;->f:[F

    .line 60
    .line 61
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Lmb/j;->a()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_1

    .line 70
    .line 71
    iget-object v2, p0, Ltb/d;->f:[F

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    aget v2, v2, v3

    .line 75
    .line 76
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    int-to-float v4, v4

    .line 81
    cmpl-float v2, v2, v4

    .line 82
    .line 83
    if-ltz v2, :cond_1

    .line 84
    .line 85
    iget-object v2, p0, Ltb/d;->f:[F

    .line 86
    .line 87
    aget v2, v2, v3

    .line 88
    .line 89
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    int-to-float v3, v3

    .line 94
    sub-float/2addr v2, v3

    .line 95
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    add-int/2addr v4, v3

    .line 104
    int-to-float v3, v4

    .line 105
    cmpg-float v2, v2, v3

    .line 106
    .line 107
    if-gtz v2, :cond_1

    .line 108
    .line 109
    iget-object v2, p0, Ltb/d;->f:[F

    .line 110
    .line 111
    aget v2, v2, v1

    .line 112
    .line 113
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    int-to-float v3, v3

    .line 118
    cmpl-float v2, v2, v3

    .line 119
    .line 120
    if-ltz v2, :cond_1

    .line 121
    .line 122
    iget-object v2, p0, Ltb/d;->f:[F

    .line 123
    .line 124
    aget v1, v2, v1

    .line 125
    .line 126
    const/high16 v2, 0x42c80000    # 100.0f

    .line 127
    .line 128
    sub-float/2addr v1, v2

    .line 129
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    add-int/2addr v3, v2

    .line 138
    int-to-float v2, v3

    .line 139
    cmpg-float v1, v1, v2

    .line 140
    .line 141
    if-gtz v1, :cond_1

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_0
    iput-boolean v1, p0, Ltb/d;->b:Z

    .line 148
    .line 149
    :cond_1
    :goto_0
    iget v1, p0, Ltb/d;->e:I

    .line 150
    .line 151
    int-to-long v1, v1

    .line 152
    invoke-virtual {v0, p0, v1, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->Y(Ljava/lang/Runnable;J)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_2
    iput-boolean v1, p0, Ltb/d;->b:Z

    .line 157
    .line 158
    :goto_1
    return-void
.end method
