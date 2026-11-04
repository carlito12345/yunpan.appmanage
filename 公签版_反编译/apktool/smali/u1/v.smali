.class public final Lu1/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public e:Z

.field public f:J

.field public final synthetic g:Lu1/x;


# direct methods
.method public constructor <init>(Lu1/x;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu1/v;->g:Lu1/x;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lu1/v;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    .line 1
    iget-object v0, p0, Lu1/v;->g:Lu1/x;

    .line 2
    .line 3
    iget-object v1, v0, Lu1/x;->a:Ly1/x;

    .line 4
    .line 5
    invoke-virtual {v1}, Ly1/x;->E()Lr1/q0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lr1/q0;->p()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, v0, Lu1/x;->a:Ly1/x;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v3}, Ly1/x;->B()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Lr1/q0;->l(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :goto_0
    invoke-virtual {v3}, Ly1/x;->y()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v3}, Ly1/x;->z()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual {v3}, Ly1/x;->C()J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    const/4 v8, -0x1

    .line 40
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    if-ne v4, v8, :cond_1

    .line 48
    .line 49
    iget-object v8, v0, Lu1/x;->e:Lr1/o0;

    .line 50
    .line 51
    invoke-virtual {v1, v2, v8}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 52
    .line 53
    .line 54
    iget-wide v11, v8, Lr1/o0;->e:J

    .line 55
    .line 56
    invoke-static {v11, v12}, Lu1/f0;->R(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v11

    .line 60
    sub-long/2addr v6, v11

    .line 61
    iget-wide v11, v8, Lr1/o0;->d:J

    .line 62
    .line 63
    invoke-static {v11, v12}, Lu1/f0;->R(J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v11

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    if-eq v4, v8, :cond_2

    .line 69
    .line 70
    invoke-virtual {v3}, Ly1/x;->H()J

    .line 71
    .line 72
    .line 73
    move-result-wide v11

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move-wide v11, v9

    .line 76
    :goto_1
    invoke-virtual {v3}, La/b;->n()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    iget-object v8, v0, Lu1/x;->f:Lu1/b0;

    .line 81
    .line 82
    const/4 v13, 0x3

    .line 83
    if-eqz v1, :cond_6

    .line 84
    .line 85
    cmp-long v14, v11, v9

    .line 86
    .line 87
    if-eqz v14, :cond_6

    .line 88
    .line 89
    cmp-long v14, v6, v11

    .line 90
    .line 91
    if-gez v14, :cond_3

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    iget-object v1, v0, Lu1/x;->d:Lu1/z;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 100
    .line 101
    .line 102
    move-result-wide v6

    .line 103
    iget-boolean v1, p0, Lu1/v;->e:Z

    .line 104
    .line 105
    iget v3, p0, Lu1/v;->a:I

    .line 106
    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    iget-object v1, p0, Lu1/v;->b:Ljava/lang/Object;

    .line 110
    .line 111
    invoke-static {v2, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_4

    .line 116
    .line 117
    iget v1, p0, Lu1/v;->c:I

    .line 118
    .line 119
    if-ne v4, v1, :cond_4

    .line 120
    .line 121
    iget v1, p0, Lu1/v;->d:I

    .line 122
    .line 123
    if-ne v5, v1, :cond_4

    .line 124
    .line 125
    iget-wide v1, p0, Lu1/v;->f:J

    .line 126
    .line 127
    sub-long/2addr v6, v1

    .line 128
    int-to-long v1, v3

    .line 129
    cmp-long v4, v6, v1

    .line 130
    .line 131
    if-ltz v4, :cond_5

    .line 132
    .line 133
    new-instance v1, Lu1/y;

    .line 134
    .line 135
    invoke-direct {v1, v13, v3}, Lu1/y;-><init>(II)V

    .line 136
    .line 137
    .line 138
    iget-object v0, v0, Lu1/x;->c:Ly1/t;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    new-instance v2, Ly1/k;

    .line 144
    .line 145
    const/4 v3, 0x2

    .line 146
    const/16 v4, 0x3eb

    .line 147
    .line 148
    invoke-direct {v2, v3, v1, v4}, Ly1/k;-><init>(ILjava/lang/Exception;I)V

    .line 149
    .line 150
    .line 151
    iget-object v0, v0, Ly1/t;->a:Ly1/x;

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ly1/x;->c0(Ly1/k;)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lu1/v;->e:Z

    .line 159
    .line 160
    iput-wide v6, p0, Lu1/v;->f:J

    .line 161
    .line 162
    iput-object v2, p0, Lu1/v;->b:Ljava/lang/Object;

    .line 163
    .line 164
    iput v4, p0, Lu1/v;->c:I

    .line 165
    .line 166
    iput v5, p0, Lu1/v;->d:I

    .line 167
    .line 168
    invoke-virtual {v8, v13}, Lu1/b0;->e(I)V

    .line 169
    .line 170
    .line 171
    iget-object v0, v8, Lu1/b0;->a:Landroid/os/Handler;

    .line 172
    .line 173
    int-to-long v1, v3

    .line 174
    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    .line 176
    .line 177
    :cond_5
    :goto_2
    return-void

    .line 178
    :cond_6
    :goto_3
    invoke-virtual {v8, v13}, Lu1/b0;->e(I)V

    .line 179
    .line 180
    .line 181
    if-eqz v1, :cond_7

    .line 182
    .line 183
    cmp-long v0, v11, v9

    .line 184
    .line 185
    if-eqz v0, :cond_7

    .line 186
    .line 187
    sub-long/2addr v11, v6

    .line 188
    long-to-float v0, v11

    .line 189
    invoke-virtual {v3}, Ly1/x;->h0()V

    .line 190
    .line 191
    .line 192
    iget-object v1, v3, Ly1/x;->f1:Ly1/v0;

    .line 193
    .line 194
    iget-object v1, v1, Ly1/v0;->o:Lr1/h0;

    .line 195
    .line 196
    iget v1, v1, Lr1/h0;->a:F

    .line 197
    .line 198
    div-float/2addr v0, v1

    .line 199
    float-to-double v0, v0

    .line 200
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 201
    .line 202
    .line 203
    move-result-wide v0

    .line 204
    double-to-int v0, v0

    .line 205
    iget-object v1, v8, Lu1/b0;->a:Landroid/os/Handler;

    .line 206
    .line 207
    int-to-long v2, v0

    .line 208
    invoke-virtual {v1, v13, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 209
    .line 210
    .line 211
    :cond_7
    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lu1/v;->e:Z

    .line 213
    .line 214
    return-void
.end method
