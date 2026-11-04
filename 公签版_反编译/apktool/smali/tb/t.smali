.class public final Ltb/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:J

.field public final synthetic i:Ltb/u;


# direct methods
.method public constructor <init>(Ltb/u;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltb/t;->i:Ltb/u;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    int-to-float p1, p2

    .line 7
    iput p1, p0, Ltb/t;->c:F

    .line 8
    .line 9
    iput p1, p0, Ltb/t;->b:F

    .line 10
    .line 11
    iput p1, p0, Ltb/t;->a:F

    .line 12
    .line 13
    const-wide/16 p1, 0x0

    .line 14
    .line 15
    iput-wide p1, p0, Ltb/t;->h:J

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ltb/t;->i:Ltb/u;

    .line 4
    .line 5
    iget v2, v1, Ltb/u;->z:I

    .line 6
    .line 7
    and-int/lit8 v3, v2, 0x1

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget v3, v0, Ltb/t;->b:F

    .line 13
    .line 14
    neg-float v3, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    :goto_0
    and-int/lit8 v5, v2, 0x2

    .line 18
    .line 19
    if-eqz v5, :cond_1

    .line 20
    .line 21
    iget v5, v0, Ltb/t;->b:F

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v5, 0x0

    .line 25
    :goto_1
    add-float/2addr v3, v5

    .line 26
    and-int/lit8 v5, v2, 0x4

    .line 27
    .line 28
    if-eqz v5, :cond_2

    .line 29
    .line 30
    iget v5, v0, Ltb/t;->c:F

    .line 31
    .line 32
    neg-float v5, v5

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    const/4 v5, 0x0

    .line 35
    :goto_2
    and-int/lit8 v2, v2, 0x8

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    iget v2, v0, Ltb/t;->c:F

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    const/4 v2, 0x0

    .line 43
    :goto_3
    add-float/2addr v5, v2

    .line 44
    const/4 v2, 0x1

    .line 45
    iget-object v6, v1, Ltb/u;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 46
    .line 47
    cmpl-float v7, v3, v4

    .line 48
    .line 49
    if-lez v7, :cond_6

    .line 50
    .line 51
    iget v7, v1, Ltb/u;->e:I

    .line 52
    .line 53
    if-eqz v7, :cond_5

    .line 54
    .line 55
    if-ne v7, v2, :cond_4

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_4
    invoke-virtual {v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    iget-object v7, v7, Lmb/j;->d:Lmb/b;

    .line 63
    .line 64
    iget v7, v7, Lmb/b;->b:I

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_5
    :goto_4
    invoke-virtual {v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    iget-object v7, v7, Lmb/j;->c:Lmb/b;

    .line 72
    .line 73
    iget v7, v7, Lmb/b;->b:I

    .line 74
    .line 75
    :goto_5
    invoke-virtual {v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v8, v7}, Lmb/g;->o(I)Lmb/h;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    iget v8, v8, Lmb/h;->c:I

    .line 84
    .line 85
    invoke-virtual {v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    iget-object v10, v6, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 90
    .line 91
    invoke-virtual {v10, v7, v8}, Lwb/c;->s(II)[F

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    aget v7, v7, v2

    .line 96
    .line 97
    add-float/2addr v9, v7

    .line 98
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    int-to-float v7, v7

    .line 103
    const v8, 0x3f59999a    # 0.85f

    .line 104
    .line 105
    .line 106
    mul-float v7, v7, v8

    .line 107
    .line 108
    sub-float/2addr v9, v7

    .line 109
    iget-object v7, v1, Ltb/u;->b:Ltb/m;

    .line 110
    .line 111
    iget-object v7, v7, Ltb/m;->b:Landroid/widget/OverScroller;

    .line 112
    .line 113
    invoke-virtual {v7}, Landroid/widget/OverScroller;->getCurrX()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    int-to-float v7, v7

    .line 118
    cmpl-float v7, v7, v9

    .line 119
    .line 120
    if-lez v7, :cond_6

    .line 121
    .line 122
    const/4 v3, 0x0

    .line 123
    :cond_6
    const/4 v7, 0x0

    .line 124
    invoke-virtual {v1, v3, v5, v7}, Ltb/u;->j(FFZ)V

    .line 125
    .line 126
    .line 127
    iget-object v7, v1, Ltb/u;->d:Lvb/v;

    .line 128
    .line 129
    iget-object v7, v7, Lvb/v;->b:Landroid/widget/PopupWindow;

    .line 130
    .line 131
    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-eqz v7, :cond_7

    .line 136
    .line 137
    iget-object v7, v1, Ltb/u;->d:Lvb/v;

    .line 138
    .line 139
    invoke-virtual {v7}, Lvb/v;->a()V

    .line 140
    .line 141
    .line 142
    :cond_7
    iget v7, v0, Ltb/t;->d:F

    .line 143
    .line 144
    invoke-static {v1, v3, v7}, Ltb/u;->a(Ltb/u;FF)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    iget v8, v0, Ltb/t;->a:F

    .line 149
    .line 150
    const v9, 0x3f87ae14    # 1.06f

    .line 151
    .line 152
    .line 153
    const/high16 v10, 0x3f800000    # 1.0f

    .line 154
    .line 155
    const-wide/16 v11, 0x0

    .line 156
    .line 157
    const/high16 v13, 0x42000000    # 32.0f

    .line 158
    .line 159
    const-wide/16 v14, 0x1

    .line 160
    .line 161
    if-eqz v7, :cond_8

    .line 162
    .line 163
    iget v7, v0, Ltb/t;->f:F

    .line 164
    .line 165
    cmpg-float v16, v7, v13

    .line 166
    .line 167
    move/from16 v17, v3

    .line 168
    .line 169
    if-gez v16, :cond_9

    .line 170
    .line 171
    iget-wide v2, v0, Ltb/t;->h:J

    .line 172
    .line 173
    and-long/2addr v2, v14

    .line 174
    cmp-long v18, v2, v11

    .line 175
    .line 176
    if-nez v18, :cond_9

    .line 177
    .line 178
    add-float/2addr v7, v10

    .line 179
    iput v7, v0, Ltb/t;->f:F

    .line 180
    .line 181
    iget v2, v0, Ltb/t;->b:F

    .line 182
    .line 183
    mul-float v2, v2, v9

    .line 184
    .line 185
    iput v2, v0, Ltb/t;->b:F

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_8
    move/from16 v17, v3

    .line 189
    .line 190
    iput v8, v0, Ltb/t;->b:F

    .line 191
    .line 192
    iput v4, v0, Ltb/t;->f:F

    .line 193
    .line 194
    :cond_9
    :goto_6
    iget v2, v0, Ltb/t;->e:F

    .line 195
    .line 196
    invoke-static {v1, v5, v2}, Ltb/u;->a(Ltb/u;FF)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_b

    .line 201
    .line 202
    iget v2, v0, Ltb/t;->g:F

    .line 203
    .line 204
    cmpg-float v3, v2, v13

    .line 205
    .line 206
    if-gez v3, :cond_a

    .line 207
    .line 208
    iget-wide v3, v0, Ltb/t;->h:J

    .line 209
    .line 210
    and-long/2addr v3, v14

    .line 211
    cmp-long v7, v3, v11

    .line 212
    .line 213
    if-nez v7, :cond_a

    .line 214
    .line 215
    add-float/2addr v2, v10

    .line 216
    iput v2, v0, Ltb/t;->g:F

    .line 217
    .line 218
    iget v2, v0, Ltb/t;->c:F

    .line 219
    .line 220
    mul-float v2, v2, v9

    .line 221
    .line 222
    iput v2, v0, Ltb/t;->c:F

    .line 223
    .line 224
    :cond_a
    :goto_7
    move/from16 v3, v17

    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_b
    iput v8, v0, Ltb/t;->c:F

    .line 228
    .line 229
    iput v4, v0, Ltb/t;->g:F

    .line 230
    .line 231
    goto :goto_7

    .line 232
    :goto_8
    iput v3, v0, Ltb/t;->d:F

    .line 233
    .line 234
    iput v5, v0, Ltb/t;->e:F

    .line 235
    .line 236
    iget-object v2, v1, Ltb/u;->B:Landroid/view/MotionEvent;

    .line 237
    .line 238
    if-eqz v2, :cond_f

    .line 239
    .line 240
    const/4 v3, 0x1

    .line 241
    invoke-virtual {v1, v2, v3}, Ltb/u;->f(Landroid/view/MotionEvent;Z)Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-nez v2, :cond_f

    .line 246
    .line 247
    iget-object v2, v1, Ltb/u;->B:Landroid/view/MotionEvent;

    .line 248
    .line 249
    iget v4, v1, Ltb/u;->e:I

    .line 250
    .line 251
    if-eqz v4, :cond_e

    .line 252
    .line 253
    if-eq v4, v3, :cond_d

    .line 254
    .line 255
    const/4 v3, 0x2

    .line 256
    if-eq v4, v3, :cond_c

    .line 257
    .line 258
    goto :goto_9

    .line 259
    :cond_c
    iget-object v3, v1, Ltb/u;->x:Ld3/g;

    .line 260
    .line 261
    invoke-virtual {v3, v2}, Ld3/g;->f(Landroid/view/MotionEvent;)V

    .line 262
    .line 263
    .line 264
    goto :goto_9

    .line 265
    :cond_d
    iget-object v3, v1, Ltb/u;->w:Ld3/g;

    .line 266
    .line 267
    invoke-virtual {v3, v2}, Ld3/g;->f(Landroid/view/MotionEvent;)V

    .line 268
    .line 269
    .line 270
    goto :goto_9

    .line 271
    :cond_e
    iget-object v3, v1, Ltb/u;->c:Ld3/g;

    .line 272
    .line 273
    invoke-virtual {v3, v2}, Ld3/g;->f(Landroid/view/MotionEvent;)V

    .line 274
    .line 275
    .line 276
    :cond_f
    :goto_9
    iget-wide v2, v0, Ltb/t;->h:J

    .line 277
    .line 278
    add-long/2addr v2, v14

    .line 279
    iput-wide v2, v0, Ltb/t;->h:J

    .line 280
    .line 281
    iget v1, v1, Ltb/u;->z:I

    .line 282
    .line 283
    if-eqz v1, :cond_10

    .line 284
    .line 285
    const-wide/16 v1, 0xa

    .line 286
    .line 287
    invoke-virtual {v6, v0, v1, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->Y(Ljava/lang/Runnable;J)V

    .line 288
    .line 289
    .line 290
    :cond_10
    return-void
.end method
