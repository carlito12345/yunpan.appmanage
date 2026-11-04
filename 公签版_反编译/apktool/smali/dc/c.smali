.class public final Ldc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/a;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final a:Lio/github/rosemoe/sora/widget/CodeEditor;

.field public final b:J

.field public c:Landroid/animation/ValueAnimator;

.field public d:Landroid/animation/ValueAnimator;

.field public e:Landroid/animation/ValueAnimator;

.field public f:Landroid/animation/ValueAnimator;

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:J


# direct methods
.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldc/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 5
    .line 6
    new-instance p1, Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Ldc/c;->c:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    new-instance p1, Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Ldc/c;->d:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    new-instance p1, Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Ldc/c;->f:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    new-instance p1, Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Ldc/c;->e:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    const-wide/16 v0, 0x78

    .line 35
    .line 36
    iput-wide v0, p0, Ldc/c;->b:J

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/c;->c:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ldc/c;->d:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ldc/c;->f:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Ldc/c;->e:Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/c;->c:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Ldc/c;->d:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Ldc/c;->f:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Ldc/c;->e:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 37
    :goto_1
    return v0
.end method

.method public final c()V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Ldc/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 5
    .line 6
    iget-boolean v4, v3, Lio/github/rosemoe/sora/widget/CodeEditor;->Q0:Z

    .line 7
    .line 8
    if-nez v4, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Ldc/c;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    iget-object v4, p0, Ldc/c;->c:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Ljava/lang/Float;

    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    iput v4, p0, Ldc/c;->g:F

    .line 30
    .line 31
    iget-object v4, p0, Ldc/c;->d:Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Ljava/lang/Float;

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iput v4, p0, Ldc/c;->h:F

    .line 44
    .line 45
    iget-object v4, p0, Ldc/c;->f:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/Float;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    iput v4, p0, Ldc/c;->i:F

    .line 58
    .line 59
    iget-object v4, p0, Ldc/c;->e:Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/lang/Float;

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    iput v4, p0, Ldc/c;->j:F

    .line 72
    .line 73
    invoke-virtual {p0}, Ldc/c;->a()V

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    iget-wide v6, p0, Ldc/c;->k:J

    .line 81
    .line 82
    sub-long/2addr v4, v6

    .line 83
    const-wide/16 v6, 0x64

    .line 84
    .line 85
    cmp-long v8, v4, v6

    .line 86
    .line 87
    if-gez v8, :cond_2

    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    iget-object v4, v4, Lmb/j;->c:Lmb/b;

    .line 95
    .line 96
    iget v4, v4, Lmb/b;->b:I

    .line 97
    .line 98
    iget-object v5, p0, Ldc/c;->c:Landroid/animation/ValueAnimator;

    .line 99
    .line 100
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLayout()Lwb/d;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    iget-object v6, v6, Lmb/j;->c:Lmb/b;

    .line 112
    .line 113
    iget v6, v6, Lmb/b;->b:I

    .line 114
    .line 115
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    iget-object v7, v7, Lmb/j;->c:Lmb/b;

    .line 120
    .line 121
    iget v7, v7, Lmb/b;->c:I

    .line 122
    .line 123
    check-cast v5, Lwb/c;

    .line 124
    .line 125
    invoke-virtual {v5, v6, v7}, Lwb/c;->s(II)[F

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    iget v6, p0, Ldc/c;->g:F

    .line 130
    .line 131
    aget v7, v5, v2

    .line 132
    .line 133
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    add-float/2addr v8, v7

    .line 138
    new-array v7, v0, [F

    .line 139
    .line 140
    aput v6, v7, v1

    .line 141
    .line 142
    aput v8, v7, v2

    .line 143
    .line 144
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    iput-object v6, p0, Ldc/c;->c:Landroid/animation/ValueAnimator;

    .line 149
    .line 150
    iget v6, p0, Ldc/c;->h:F

    .line 151
    .line 152
    aget v5, v5, v1

    .line 153
    .line 154
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    const/4 v7, 0x0

    .line 162
    sub-float/2addr v5, v7

    .line 163
    new-array v7, v0, [F

    .line 164
    .line 165
    aput v6, v7, v1

    .line 166
    .line 167
    aput v5, v7, v2

    .line 168
    .line 169
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    iput-object v5, p0, Ldc/c;->d:Landroid/animation/ValueAnimator;

    .line 174
    .line 175
    iget v5, p0, Ldc/c;->i:F

    .line 176
    .line 177
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLayout()Lwb/d;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    iget-object v7, v7, Lmb/j;->c:Lmb/b;

    .line 186
    .line 187
    iget v7, v7, Lmb/b;->b:I

    .line 188
    .line 189
    invoke-interface {v6, v7}, Lwb/d;->h(I)I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    mul-int v7, v7, v6

    .line 198
    .line 199
    int-to-float v6, v7

    .line 200
    new-array v7, v0, [F

    .line 201
    .line 202
    aput v5, v7, v1

    .line 203
    .line 204
    aput v6, v7, v2

    .line 205
    .line 206
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    iput-object v5, p0, Ldc/c;->f:Landroid/animation/ValueAnimator;

    .line 211
    .line 212
    iget v5, p0, Ldc/c;->j:F

    .line 213
    .line 214
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLayout()Lwb/d;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v3, v4}, Lmb/g;->o(I)Lmb/h;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    iget v3, v3, Lmb/h;->c:I

    .line 227
    .line 228
    check-cast v6, Lwb/c;

    .line 229
    .line 230
    invoke-virtual {v6, v4, v3}, Lwb/c;->s(II)[F

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    aget v3, v3, v1

    .line 235
    .line 236
    new-array v0, v0, [F

    .line 237
    .line 238
    aput v5, v0, v1

    .line 239
    .line 240
    aput v3, v0, v2

    .line 241
    .line 242
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iput-object v0, p0, Ldc/c;->e:Landroid/animation/ValueAnimator;

    .line 247
    .line 248
    iget-object v0, p0, Ldc/c;->c:Landroid/animation/ValueAnimator;

    .line 249
    .line 250
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 251
    .line 252
    .line 253
    iget-object v0, p0, Ldc/c;->c:Landroid/animation/ValueAnimator;

    .line 254
    .line 255
    iget-wide v1, p0, Ldc/c;->b:J

    .line 256
    .line 257
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 258
    .line 259
    .line 260
    iget-object v0, p0, Ldc/c;->d:Landroid/animation/ValueAnimator;

    .line 261
    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, Ldc/c;->f:Landroid/animation/ValueAnimator;

    .line 266
    .line 267
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 268
    .line 269
    .line 270
    iget-object v0, p0, Ldc/c;->e:Landroid/animation/ValueAnimator;

    .line 271
    .line 272
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 273
    .line 274
    .line 275
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Ldc/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lmb/j;->c:Lmb/b;

    .line 8
    .line 9
    iget v1, v1, Lmb/b;->b:I

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLayout()Lwb/d;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v3, v3, Lmb/j;->c:Lmb/b;

    .line 20
    .line 21
    iget v3, v3, Lmb/b;->c:I

    .line 22
    .line 23
    check-cast v2, Lwb/c;

    .line 24
    .line 25
    invoke-virtual {v2, v1, v3}, Lwb/c;->s(II)[F

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x1

    .line 34
    aget v4, v2, v4

    .line 35
    .line 36
    add-float/2addr v3, v4

    .line 37
    iput v3, p0, Ldc/c;->g:F

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    aget v2, v2, v3

    .line 41
    .line 42
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    sub-float/2addr v2, v4

    .line 51
    iput v2, p0, Ldc/c;->h:F

    .line 52
    .line 53
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLayout()Lwb/d;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v2, v1}, Lwb/d;->h(I)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    mul-int v4, v4, v2

    .line 66
    .line 67
    int-to-float v2, v4

    .line 68
    iput v2, p0, Ldc/c;->i:F

    .line 69
    .line 70
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLayout()Lwb/d;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, v1}, Lmb/g;->o(I)Lmb/h;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget v0, v0, Lmb/h;->c:I

    .line 83
    .line 84
    check-cast v2, Lwb/c;

    .line 85
    .line 86
    invoke-virtual {v2, v1, v0}, Lwb/c;->s(II)[F

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    aget v0, v0, v3

    .line 91
    .line 92
    iput v0, p0, Ldc/c;->j:F

    .line 93
    .line 94
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Ldc/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    iget-boolean v0, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->Q0:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Ldc/c;->k:J

    .line 12
    .line 13
    sub-long/2addr v0, v2

    .line 14
    const-wide/16 v2, 0x64

    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-gez v4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Ldc/c;->c:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Ldc/c;->d:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Ldc/c;->f:Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Ldc/c;->e:Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iput-wide v0, p0, Ldc/c;->k:J

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    iput-wide v0, p0, Ldc/c;->k:J

    .line 53
    .line 54
    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ldc/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
