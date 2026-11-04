.class public final Landroidx/leanback/widget/a0;
.super Landroid/util/Property;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/leanback/widget/a0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-class p1, Ljava/lang/Float;

    .line 7
    .line 8
    const-string v0, "alpha"

    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    const-class p1, Landroid/graphics/Rect;

    .line 15
    .line 16
    const-string v0, "clipBounds"

    .line 17
    .line 18
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    const-class p1, Ljava/lang/Float;

    .line 23
    .line 24
    const-string v0, "translationAlpha"

    .line 25
    .line 26
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    const-class p1, Landroid/graphics/PointF;

    .line 31
    .line 32
    const-string v0, "position"

    .line 33
    .line 34
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_3
    const-class p1, Landroid/graphics/PointF;

    .line 39
    .line 40
    const-string v0, "topLeft"

    .line 41
    .line 42
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_4
    const-class p1, Landroid/graphics/PointF;

    .line 47
    .line 48
    const-string v0, "bottomRight"

    .line 49
    .line 50
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_5
    const-class p1, Landroid/graphics/PointF;

    .line 55
    .line 56
    const-string v0, "bottomRight"

    .line 57
    .line 58
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_6
    const-class p1, Landroid/graphics/PointF;

    .line 63
    .line 64
    const-string v0, "topLeft"

    .line 65
    .line 66
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_7
    const-class p1, Ljava/lang/Integer;

    .line 71
    .line 72
    const-string v0, "streamPosition"

    .line 73
    .line 74
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_8
    const-class p1, Ljava/lang/Float;

    .line 79
    .line 80
    const-string v0, "translation_x"

    .line 81
    .line 82
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_9
    const-class p1, Ljava/lang/Float;

    .line 87
    .line 88
    const-string v0, "diameter"

    .line 89
    .line 90
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Landroidx/leanback/widget/a0;->a:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    sget-object v1, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x12

    .line 14
    .line 15
    if-lt v1, v2, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Lx0/l0;->a(Landroid/view/View;)Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    return-object v0

    .line 22
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 23
    .line 24
    sget-object v0, Lh4/d0;->a:Lgf/g;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lgf/g;->C(Landroid/view/View;)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :pswitch_1
    check-cast p1, Landroid/view/View;

    .line 36
    .line 37
    return-object v0

    .line 38
    :pswitch_2
    check-cast p1, Landroid/view/View;

    .line 39
    .line 40
    return-object v0

    .line 41
    :pswitch_3
    check-cast p1, Landroid/view/View;

    .line 42
    .line 43
    return-object v0

    .line 44
    :pswitch_4
    check-cast p1, Lh4/f;

    .line 45
    .line 46
    return-object v0

    .line 47
    :pswitch_5
    check-cast p1, Lh4/f;

    .line 48
    .line 49
    return-object v0

    .line 50
    :pswitch_6
    check-cast p1, Landroidx/leanback/widget/u0;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/leanback/widget/u0;->getStreamPosition()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :pswitch_7
    check-cast p1, Landroidx/leanback/widget/b0;

    .line 62
    .line 63
    iget p1, p1, Landroidx/leanback/widget/b0;->c:F

    .line 64
    .line 65
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :pswitch_8
    check-cast p1, Landroidx/leanback/widget/b0;

    .line 71
    .line 72
    iget p1, p1, Landroidx/leanback/widget/b0;->e:F

    .line 73
    .line 74
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :pswitch_9
    check-cast p1, Landroidx/leanback/widget/b0;

    .line 80
    .line 81
    iget p1, p1, Landroidx/leanback/widget/b0;->a:F

    .line 82
    .line 83
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Landroidx/leanback/widget/a0;->a:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    check-cast p2, Landroid/graphics/Rect;

    .line 10
    .line 11
    sget-object v0, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 12
    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v1, 0x12

    .line 16
    .line 17
    if-lt v0, v1, :cond_0

    .line 18
    .line 19
    invoke-static {p1, p2}, Lx0/l0;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 24
    .line 25
    check-cast p2, Ljava/lang/Float;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    sget-object v0, Lh4/d0;->a:Lgf/g;

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Lgf/g;->H(Landroid/view/View;F)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_1
    check-cast p1, Landroid/view/View;

    .line 38
    .line 39
    check-cast p2, Landroid/graphics/PointF;

    .line 40
    .line 41
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 48
    .line 49
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    add-int/2addr v1, v0

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    add-int/2addr v2, p2

    .line 63
    invoke-static {p1, v0, p2, v1, v2}, Lh4/d0;->a(Landroid/view/View;IIII)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_2
    check-cast p1, Landroid/view/View;

    .line 68
    .line 69
    check-cast p2, Landroid/graphics/PointF;

    .line 70
    .line 71
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 72
    .line 73
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 78
    .line 79
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-static {p1, v0, p2, v1, v2}, Lh4/d0;->a(Landroid/view/View;IIII)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_3
    check-cast p1, Landroid/view/View;

    .line 96
    .line 97
    check-cast p2, Landroid/graphics/PointF;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    iget v2, p2, Landroid/graphics/PointF;->x:F

    .line 108
    .line 109
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 114
    .line 115
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    invoke-static {p1, v0, v1, v2, p2}, Lh4/d0;->a(Landroid/view/View;IIII)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_4
    check-cast p1, Lh4/f;

    .line 124
    .line 125
    check-cast p2, Landroid/graphics/PointF;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 131
    .line 132
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    iput v1, p1, Lh4/f;->c:I

    .line 137
    .line 138
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 139
    .line 140
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    iput p2, p1, Lh4/f;->d:I

    .line 145
    .line 146
    iget v1, p1, Lh4/f;->g:I

    .line 147
    .line 148
    add-int/lit8 v1, v1, 0x1

    .line 149
    .line 150
    iput v1, p1, Lh4/f;->g:I

    .line 151
    .line 152
    iget v2, p1, Lh4/f;->f:I

    .line 153
    .line 154
    if-ne v2, v1, :cond_1

    .line 155
    .line 156
    iget v1, p1, Lh4/f;->a:I

    .line 157
    .line 158
    iget v2, p1, Lh4/f;->b:I

    .line 159
    .line 160
    iget v3, p1, Lh4/f;->c:I

    .line 161
    .line 162
    iget-object v4, p1, Lh4/f;->e:Landroid/view/View;

    .line 163
    .line 164
    invoke-static {v4, v1, v2, v3, p2}, Lh4/d0;->a(Landroid/view/View;IIII)V

    .line 165
    .line 166
    .line 167
    iput v0, p1, Lh4/f;->f:I

    .line 168
    .line 169
    iput v0, p1, Lh4/f;->g:I

    .line 170
    .line 171
    :cond_1
    return-void

    .line 172
    :pswitch_5
    check-cast p1, Lh4/f;

    .line 173
    .line 174
    check-cast p2, Landroid/graphics/PointF;

    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 180
    .line 181
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    iput v1, p1, Lh4/f;->a:I

    .line 186
    .line 187
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 188
    .line 189
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    iput p2, p1, Lh4/f;->b:I

    .line 194
    .line 195
    iget v1, p1, Lh4/f;->f:I

    .line 196
    .line 197
    add-int/lit8 v1, v1, 0x1

    .line 198
    .line 199
    iput v1, p1, Lh4/f;->f:I

    .line 200
    .line 201
    iget v2, p1, Lh4/f;->g:I

    .line 202
    .line 203
    if-ne v1, v2, :cond_2

    .line 204
    .line 205
    iget v1, p1, Lh4/f;->a:I

    .line 206
    .line 207
    iget v2, p1, Lh4/f;->c:I

    .line 208
    .line 209
    iget v3, p1, Lh4/f;->d:I

    .line 210
    .line 211
    iget-object v4, p1, Lh4/f;->e:Landroid/view/View;

    .line 212
    .line 213
    invoke-static {v4, v1, p2, v2, v3}, Lh4/d0;->a(Landroid/view/View;IIII)V

    .line 214
    .line 215
    .line 216
    iput v0, p1, Lh4/f;->f:I

    .line 217
    .line 218
    iput v0, p1, Lh4/f;->g:I

    .line 219
    .line 220
    :cond_2
    return-void

    .line 221
    :pswitch_6
    check-cast p1, Landroidx/leanback/widget/u0;

    .line 222
    .line 223
    check-cast p2, Ljava/lang/Integer;

    .line 224
    .line 225
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result p2

    .line 229
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/u0;->setStreamPosition(I)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :pswitch_7
    check-cast p1, Landroidx/leanback/widget/b0;

    .line 234
    .line 235
    check-cast p2, Ljava/lang/Float;

    .line 236
    .line 237
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    iget v0, p1, Landroidx/leanback/widget/b0;->h:F

    .line 242
    .line 243
    mul-float p2, p2, v0

    .line 244
    .line 245
    iget v0, p1, Landroidx/leanback/widget/b0;->i:F

    .line 246
    .line 247
    mul-float p2, p2, v0

    .line 248
    .line 249
    iput p2, p1, Landroidx/leanback/widget/b0;->c:F

    .line 250
    .line 251
    iget-object p1, p1, Landroidx/leanback/widget/b0;->j:Landroidx/leanback/widget/PagingIndicator;

    .line 252
    .line 253
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :pswitch_8
    check-cast p1, Landroidx/leanback/widget/b0;

    .line 258
    .line 259
    check-cast p2, Ljava/lang/Float;

    .line 260
    .line 261
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 262
    .line 263
    .line 264
    move-result p2

    .line 265
    iput p2, p1, Landroidx/leanback/widget/b0;->e:F

    .line 266
    .line 267
    const/high16 v0, 0x40000000    # 2.0f

    .line 268
    .line 269
    div-float/2addr p2, v0

    .line 270
    iput p2, p1, Landroidx/leanback/widget/b0;->f:F

    .line 271
    .line 272
    iget-object v0, p1, Landroidx/leanback/widget/b0;->j:Landroidx/leanback/widget/PagingIndicator;

    .line 273
    .line 274
    iget v1, v0, Landroidx/leanback/widget/PagingIndicator;->x:F

    .line 275
    .line 276
    mul-float p2, p2, v1

    .line 277
    .line 278
    iput p2, p1, Landroidx/leanback/widget/b0;->g:F

    .line 279
    .line 280
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :pswitch_9
    check-cast p1, Landroidx/leanback/widget/b0;

    .line 285
    .line 286
    check-cast p2, Ljava/lang/Float;

    .line 287
    .line 288
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 289
    .line 290
    .line 291
    move-result p2

    .line 292
    iput p2, p1, Landroidx/leanback/widget/b0;->a:F

    .line 293
    .line 294
    invoke-virtual {p1}, Landroidx/leanback/widget/b0;->a()V

    .line 295
    .line 296
    .line 297
    iget-object p1, p1, Landroidx/leanback/widget/b0;->j:Landroidx/leanback/widget/PagingIndicator;

    .line 298
    .line 299
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
