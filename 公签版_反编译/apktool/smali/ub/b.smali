.class public abstract Lub/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/PopupWindow;

.field public final b:Lio/github/rosemoe/sora/widget/CodeEditor;

.field public final c:I

.field public final d:[I

.field public final e:Z

.field public f:Z

.field public final g:Z

.field public final h:Lio/github/rosemoe/sora/widget/CodeEditor;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, Lub/b;->d:[I

    .line 8
    .line 9
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lub/b;->b:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 13
    .line 14
    iput p2, p0, Lub/b;->c:I

    .line 15
    .line 16
    iput-object p1, p0, Lub/b;->h:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 17
    .line 18
    new-instance p2, Landroid/widget/PopupWindow;

    .line 19
    .line 20
    invoke-direct {p2}, Landroid/widget/PopupWindow;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 24
    .line 25
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/high16 v1, 0x41000000    # 8.0f

    .line 30
    .line 31
    mul-float v0, v0, v1

    .line 32
    .line 33
    invoke-static {p2, v0}, Lua/t7;->t(Landroid/widget/PopupWindow;F)V

    .line 34
    .line 35
    .line 36
    new-instance p2, Lub/a;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-direct {p2, v0, p0}, Lub/a;-><init>(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Ldb/m;

    .line 43
    .line 44
    const/4 v1, 0x5

    .line 45
    invoke-direct {v0, v1, p0}, Ldb/m;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lub/b;->f:Z

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    const-class v1, Ldb/w;

    .line 54
    .line 55
    invoke-virtual {p1, v1, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->l0(Ljava/lang/Class;Ldb/q;)V

    .line 56
    .line 57
    .line 58
    iput-boolean v2, p0, Lub/b;->f:Z

    .line 59
    .line 60
    :cond_0
    const/16 v0, 0x8

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lub/b;->c(I)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    iget-boolean v0, p0, Lub/b;->g:Z

    .line 69
    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 73
    .line 74
    .line 75
    iput-boolean v2, p0, Lub/b;->g:Z

    .line 76
    .line 77
    :cond_1
    iput-boolean v2, p0, Lub/b;->e:Z

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0, v1}, Lub/b;->c(I)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lub/b;->b:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 18
    .line 19
    iget v4, p0, Lub/b;->k:I

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    :goto_0
    sub-int/2addr v4, v5

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget v5, p0, Lub/b;->i:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :goto_1
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget v2, p0, Lub/b;->l:I

    .line 35
    .line 36
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    :goto_2
    sub-int/2addr v2, v5

    .line 41
    goto :goto_3

    .line 42
    :cond_2
    iget v2, p0, Lub/b;->l:I

    .line 43
    .line 44
    iget v5, p0, Lub/b;->j:I

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :goto_3
    iget v5, p0, Lub/b;->m:I

    .line 48
    .line 49
    add-int/2addr v5, v4

    .line 50
    iget v6, p0, Lub/b;->n:I

    .line 51
    .line 52
    add-int/2addr v6, v2

    .line 53
    const/4 v7, 0x2

    .line 54
    invoke-virtual {p0, v7}, Lub/b;->c(I)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    const/4 v8, 0x0

    .line 59
    if-nez v7, :cond_4

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-ge v2, v6, :cond_3

    .line 110
    .line 111
    if-lt v4, v5, :cond_4

    .line 112
    .line 113
    :cond_3
    invoke-virtual {p0}, Lub/b;->b()V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_4
    const/16 v7, 0x8

    .line 118
    .line 119
    invoke-virtual {p0, v7}, Lub/b;->c(I)Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-nez v7, :cond_5

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_5
    :try_start_0
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    if-nez v7, :cond_6

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_6
    iget-object v7, v7, Lmb/j;->c:Lmb/b;

    .line 134
    .line 135
    iget v9, v7, Lmb/b;->b:I

    .line 136
    .line 137
    iget v7, v7, Lmb/b;->c:I

    .line 138
    .line 139
    iget-object v10, v3, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 140
    .line 141
    invoke-virtual {v10, v9, v7}, Lwb/c;->s(II)[F

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    aget v10, v10, v1

    .line 146
    .line 147
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    add-float/2addr v11, v10

    .line 152
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    int-to-float v10, v10

    .line 157
    sub-float/2addr v11, v10

    .line 158
    iget-object v10, v3, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 159
    .line 160
    invoke-virtual {v10, v9, v7}, Lwb/c;->s(II)[F

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    aget v7, v7, v8

    .line 165
    .line 166
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    int-to-float v9, v9

    .line 171
    sub-float/2addr v7, v9

    .line 172
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    if-nez v9, :cond_8

    .line 177
    .line 178
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    if-eqz v9, :cond_7

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_7
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getInsertSelectionWidth()F

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    const/high16 v10, 0x3f800000    # 1.0f

    .line 190
    .line 191
    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    .line 192
    .line 193
    .line 194
    move-result v9

    .line 195
    add-float/2addr v9, v11

    .line 196
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 197
    .line 198
    .line 199
    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    int-to-float v10, v10

    .line 201
    add-float/2addr v10, v7

    .line 202
    int-to-float v12, v5

    .line 203
    cmpg-float v11, v11, v12

    .line 204
    .line 205
    if-gez v11, :cond_8

    .line 206
    .line 207
    int-to-float v11, v4

    .line 208
    cmpl-float v9, v9, v11

    .line 209
    .line 210
    if-lez v9, :cond_8

    .line 211
    .line 212
    int-to-float v9, v6

    .line 213
    cmpg-float v7, v7, v9

    .line 214
    .line 215
    if-gez v7, :cond_8

    .line 216
    .line 217
    int-to-float v7, v2

    .line 218
    cmpl-float v7, v10, v7

    .line 219
    .line 220
    if-lez v7, :cond_8

    .line 221
    .line 222
    invoke-virtual {p0}, Lub/b;->b()V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :catchall_0
    nop

    .line 227
    :cond_8
    :goto_4
    iget-object v7, p0, Lub/b;->d:[I

    .line 228
    .line 229
    invoke-virtual {v3, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 230
    .line 231
    .line 232
    sub-int/2addr v5, v4

    .line 233
    sub-int/2addr v6, v2

    .line 234
    aget v3, v7, v8

    .line 235
    .line 236
    add-int/2addr v4, v3

    .line 237
    aget v1, v7, v1

    .line 238
    .line 239
    add-int/2addr v2, v1

    .line 240
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_9

    .line 245
    .line 246
    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 247
    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_9
    if-eqz p1, :cond_a

    .line 251
    .line 252
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Lub/b;->h:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 259
    .line 260
    const v1, 0x800033

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, p1, v1, v4, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 264
    .line 265
    .line 266
    :cond_a
    :goto_5
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final c(I)Z
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget v0, p0, Lub/b;->c:I

    .line 9
    .line 10
    and-int/2addr p1, v0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    return v1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v0, "Not a valid feature integer"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method
