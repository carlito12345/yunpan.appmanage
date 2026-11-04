.class public final Lt6/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lg7/i;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Lm7/g;

.field public final c:Lg7/j;

.field public final d:Landroid/graphics/Rect;

.field public final e:Lt6/c;

.field public f:F

.field public g:F

.field public final h:I

.field public i:F

.field public j:F

.field public k:F

.field public l:Ljava/lang/ref/WeakReference;

.field public m:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lt6/a;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    sget-object v1, Lg7/l;->b:[I

    .line 12
    .line 13
    const-string v2, "Theme.MaterialComponents"

    .line 14
    .line 15
    invoke-static {p1, v1, v2}, Lg7/l;->c(Landroid/content/Context;[ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lt6/a;->d:Landroid/graphics/Rect;

    .line 24
    .line 25
    new-instance v1, Lg7/j;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lg7/j;-><init>(Lg7/i;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lt6/a;->c:Lg7/j;

    .line 31
    .line 32
    iget-object v2, v1, Lg7/j;->a:Landroid/text/TextPaint;

    .line 33
    .line 34
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lt6/c;

    .line 40
    .line 41
    invoke-direct {v3, p1}, Lt6/c;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iput-object v3, p0, Lt6/a;->e:Lt6/c;

    .line 45
    .line 46
    new-instance v4, Lm7/g;

    .line 47
    .line 48
    invoke-virtual {p0}, Lt6/a;->e()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    iget-object v3, v3, Lt6/c;->b:Lt6/b;

    .line 53
    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    iget-object v5, v3, Lt6/b;->g:Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v5, v3, Lt6/b;->e:Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    :goto_0
    invoke-virtual {p0}, Lt6/a;->e()Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_1

    .line 74
    .line 75
    iget-object v6, v3, Lt6/b;->h:Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    iget-object v6, v3, Lt6/b;->f:Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    :goto_1
    new-instance v7, Lm7/a;

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    int-to-float v9, v8

    .line 92
    invoke-direct {v7, v9}, Lm7/a;-><init>(F)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1, v5, v6, v7}, Lm7/j;->a(Landroid/content/Context;IILm7/a;)Lff/b;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance v5, Lm7/j;

    .line 100
    .line 101
    invoke-direct {v5, p1}, Lm7/j;-><init>(Lff/b;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {v4, v5}, Lm7/g;-><init>(Lm7/j;)V

    .line 105
    .line 106
    .line 107
    iput-object v4, p0, Lt6/a;->b:Lm7/g;

    .line 108
    .line 109
    invoke-virtual {p0}, Lt6/a;->g()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Landroid/content/Context;

    .line 117
    .line 118
    if-nez p1, :cond_2

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_2
    new-instance v0, Lj7/d;

    .line 122
    .line 123
    iget-object v5, v3, Lt6/b;->d:Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    invoke-direct {v0, p1, v5}, Lj7/d;-><init>(Landroid/content/Context;I)V

    .line 130
    .line 131
    .line 132
    iget-object v5, v1, Lg7/j;->g:Lj7/d;

    .line 133
    .line 134
    if-ne v5, v0, :cond_3

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_3
    invoke-virtual {v1, v0, p1}, Lg7/j;->b(Lj7/d;Landroid/content/Context;)V

    .line 138
    .line 139
    .line 140
    iget-object p1, v3, Lt6/b;->c:Ljava/lang/Integer;

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lt6/a;->i()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 156
    .line 157
    .line 158
    :goto_2
    iget p1, v3, Lt6/b;->l:I

    .line 159
    .line 160
    const/4 v0, -0x2

    .line 161
    const/4 v5, 0x1

    .line 162
    if-eq p1, v0, :cond_4

    .line 163
    .line 164
    int-to-double v6, p1

    .line 165
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 166
    .line 167
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 168
    .line 169
    .line 170
    sub-double/2addr v6, v9

    .line 171
    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    .line 172
    .line 173
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 174
    .line 175
    .line 176
    move-result-wide v6

    .line 177
    double-to-int p1, v6

    .line 178
    sub-int/2addr p1, v5

    .line 179
    iput p1, p0, Lt6/a;->h:I

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_4
    iget p1, v3, Lt6/b;->m:I

    .line 183
    .line 184
    iput p1, p0, Lt6/a;->h:I

    .line 185
    .line 186
    :goto_3
    iput-boolean v5, v1, Lg7/j;->e:Z

    .line 187
    .line 188
    invoke-virtual {p0}, Lt6/a;->i()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 192
    .line 193
    .line 194
    iput-boolean v5, v1, Lg7/j;->e:Z

    .line 195
    .line 196
    invoke-virtual {p0}, Lt6/a;->g()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lt6/a;->i()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Lt6/a;->getAlpha()I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 213
    .line 214
    .line 215
    iget-object p1, v3, Lt6/b;->b:Ljava/lang/Integer;

    .line 216
    .line 217
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    iget-object v0, v4, Lm7/g;->a:Lm7/f;

    .line 226
    .line 227
    iget-object v0, v0, Lm7/f;->c:Landroid/content/res/ColorStateList;

    .line 228
    .line 229
    if-eq v0, p1, :cond_5

    .line 230
    .line 231
    invoke-virtual {v4, p1}, Lm7/g;->k(Landroid/content/res/ColorStateList;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 235
    .line 236
    .line 237
    :cond_5
    iget-object p1, v3, Lt6/b;->c:Ljava/lang/Integer;

    .line 238
    .line 239
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 247
    .line 248
    .line 249
    iget-object p1, p0, Lt6/a;->l:Ljava/lang/ref/WeakReference;

    .line 250
    .line 251
    if-eqz p1, :cond_7

    .line 252
    .line 253
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    if-eqz p1, :cond_7

    .line 258
    .line 259
    iget-object p1, p0, Lt6/a;->l:Ljava/lang/ref/WeakReference;

    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    check-cast p1, Landroid/view/View;

    .line 266
    .line 267
    iget-object v0, p0, Lt6/a;->m:Ljava/lang/ref/WeakReference;

    .line 268
    .line 269
    if-eqz v0, :cond_6

    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    check-cast v0, Landroid/widget/FrameLayout;

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_6
    const/4 v0, 0x0

    .line 279
    :goto_4
    invoke-virtual {p0, p1, v0}, Lt6/a;->h(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 280
    .line 281
    .line 282
    :cond_7
    invoke-virtual {p0}, Lt6/a;->i()V

    .line 283
    .line 284
    .line 285
    iget-object p1, v3, Lt6/b;->v:Ljava/lang/Boolean;

    .line 286
    .line 287
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    invoke-virtual {p0, p1, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 292
    .line 293
    .line 294
    sget-boolean v0, Lt6/d;->a:Z

    .line 295
    .line 296
    if-eqz v0, :cond_8

    .line 297
    .line 298
    invoke-virtual {p0}, Lt6/a;->c()Landroid/widget/FrameLayout;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    if-eqz v0, :cond_8

    .line 303
    .line 304
    if-nez p1, :cond_8

    .line 305
    .line 306
    invoke-virtual {p0}, Lt6/a;->c()Landroid/widget/FrameLayout;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    check-cast p1, Landroid/view/ViewGroup;

    .line 315
    .line 316
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 317
    .line 318
    .line 319
    :cond_8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p0, Lt6/a;->h:I

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Lt6/a;->e:Lt6/c;

    .line 7
    .line 8
    iget-object v5, v4, Lt6/c;->b:Lt6/b;

    .line 9
    .line 10
    iget-object v6, v5, Lt6/b;->j:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v6, :cond_0

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v7, 0x0

    .line 17
    :goto_0
    iget-object v8, p0, Lt6/a;->a:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    const-string v9, ""

    .line 20
    .line 21
    const/4 v10, -0x2

    .line 22
    if-eqz v7, :cond_4

    .line 23
    .line 24
    iget v1, v5, Lt6/b;->l:I

    .line 25
    .line 26
    if-ne v1, v10, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    if-eqz v6, :cond_3

    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-le v4, v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroid/content/Context;

    .line 42
    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    move-object v6, v9

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    sub-int/2addr v1, v2

    .line 48
    invoke-virtual {v6, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const v5, 0x7f1300e8

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    .line 61
    aput-object v1, v0, v3

    .line 62
    .line 63
    const-string v1, "\u2026"

    .line 64
    .line 65
    aput-object v1, v0, v2

    .line 66
    .line 67
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    :cond_3
    :goto_1
    return-object v6

    .line 72
    :cond_4
    invoke-virtual {p0}, Lt6/a;->f()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_8

    .line 77
    .line 78
    iget-object v4, v4, Lt6/c;->b:Lt6/b;

    .line 79
    .line 80
    if-eq v1, v10, :cond_7

    .line 81
    .line 82
    invoke-virtual {p0}, Lt6/a;->d()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-gt v5, v1, :cond_5

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Landroid/content/Context;

    .line 94
    .line 95
    if-nez v5, :cond_6

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_6
    iget-object v4, v4, Lt6/b;->n:Ljava/util/Locale;

    .line 99
    .line 100
    const v6, 0x7f13011d

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    new-array v0, v0, [Ljava/lang/Object;

    .line 112
    .line 113
    aput-object v1, v0, v3

    .line 114
    .line 115
    const-string v1, "+"

    .line 116
    .line 117
    aput-object v1, v0, v2

    .line 118
    .line 119
    invoke-static {v4, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    goto :goto_3

    .line 124
    :cond_7
    :goto_2
    iget-object v0, v4, Lt6/b;->n:Ljava/util/Locale;

    .line 125
    .line 126
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lt6/a;->d()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    int-to-long v1, v1

    .line 135
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    :goto_3
    return-object v9

    .line 140
    :cond_8
    const/4 v0, 0x0

    .line 141
    return-object v0
.end method

.method public final c()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lt6/a;->m:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final d()I
    .locals 2

    .line 1
    iget-object v0, p0, Lt6/a;->e:Lt6/c;

    .line 2
    .line 3
    iget-object v0, v0, Lt6/c;->b:Lt6/b;

    .line 4
    .line 5
    iget v0, v0, Lt6/b;->k:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Lt6/a;->getAlpha()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    iget-object v0, p0, Lt6/a;->b:Lm7/g;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lm7/g;->draw(Landroid/graphics/Canvas;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lt6/a;->e()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lt6/a;->b()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    new-instance v1, Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lt6/a;->c:Lg7/j;

    .line 47
    .line 48
    iget-object v3, v2, Lg7/j;->a:Landroid/text/TextPaint;

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual {v3, v0, v4, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 56
    .line 57
    .line 58
    iget v3, p0, Lt6/a;->g:F

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    sub-float/2addr v3, v4

    .line 65
    iget v4, p0, Lt6/a;->f:F

    .line 66
    .line 67
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 68
    .line 69
    if-gtz v1, :cond_1

    .line 70
    .line 71
    float-to-int v1, v3

    .line 72
    :goto_0
    int-to-float v1, v1

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    goto :goto_0

    .line 79
    :goto_1
    iget-object v2, v2, Lg7/j;->a:Landroid/text/TextPaint;

    .line 80
    .line 81
    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_2
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lt6/a;->e:Lt6/c;

    .line 2
    .line 3
    iget-object v0, v0, Lt6/c;->b:Lt6/b;

    .line 4
    .line 5
    iget-object v0, v0, Lt6/b;->j:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lt6/a;->f()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :goto_0
    const/4 v0, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_1
    return v0
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lt6/a;->e:Lt6/c;

    .line 2
    .line 3
    iget-object v0, v0, Lt6/c;->b:Lt6/b;

    .line 4
    .line 5
    iget-object v1, v0, Lt6/b;->j:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, v0, Lt6/b;->k:I

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 18
    :goto_1
    return v0
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lt6/a;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lt6/a;->e()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lt6/a;->e:Lt6/c;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, v2, Lt6/c;->b:Lt6/b;

    .line 21
    .line 22
    iget-object v1, v1, Lt6/b;->g:Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, v2, Lt6/c;->b:Lt6/b;

    .line 30
    .line 31
    iget-object v1, v1, Lt6/b;->e:Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    :goto_0
    invoke-virtual {p0}, Lt6/a;->e()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    iget-object v2, v2, Lt6/c;->b:Lt6/b;

    .line 44
    .line 45
    iget-object v2, v2, Lt6/b;->h:Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v2, v2, Lt6/c;->b:Lt6/b;

    .line 53
    .line 54
    iget-object v2, v2, Lt6/b;->f:Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    :goto_1
    new-instance v3, Lm7/a;

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    int-to-float v4, v4

    .line 64
    invoke-direct {v3, v4}, Lm7/a;-><init>(F)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1, v2, v3}, Lm7/j;->a(Landroid/content/Context;IILm7/a;)Lff/b;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Lm7/j;

    .line 72
    .line 73
    invoke-direct {v1, v0}, Lm7/j;-><init>(Lff/b;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lt6/a;->b:Lm7/g;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lm7/g;->setShapeAppearanceModel(Lm7/j;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Lt6/a;->e:Lt6/c;

    .line 2
    .line 3
    iget-object v0, v0, Lt6/c;->b:Lt6/b;

    .line 4
    .line 5
    iget v0, v0, Lt6/b;->i:I

    .line 6
    .line 7
    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lt6/a;->d:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lt6/a;->d:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public final h(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lt6/a;->l:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    sget-boolean v0, Lt6/d;->a:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-nez p2, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Landroid/view/ViewGroup;

    .line 20
    .line 21
    const v2, 0x7f0b0218

    .line 22
    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eq v3, v2, :cond_3

    .line 31
    .line 32
    :cond_0
    iget-object v3, p0, Lt6/a;->m:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-ne v3, p2, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroid/view/ViewGroup;

    .line 48
    .line 49
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 53
    .line 54
    .line 55
    new-instance v3, Landroid/widget/FrameLayout;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-virtual {v3, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-virtual {v3, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 99
    .line 100
    .line 101
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 102
    .line 103
    const/4 v5, -0x1

    .line 104
    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 114
    .line 115
    .line 116
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 117
    .line 118
    invoke-direct {p2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iput-object p2, p0, Lt6/a;->m:Ljava/lang/ref/WeakReference;

    .line 122
    .line 123
    new-instance p2, Lcom/yunpan/appmanage/util/l;

    .line 124
    .line 125
    const/4 v2, 0x3

    .line 126
    invoke-direct {p2, p0, p1, v3, v2}, Lcom/yunpan/appmanage/util/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 134
    .line 135
    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iput-object v2, p0, Lt6/a;->m:Ljava/lang/ref/WeakReference;

    .line 139
    .line 140
    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Landroid/view/ViewGroup;

    .line 147
    .line 148
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 152
    .line 153
    .line 154
    :cond_4
    invoke-virtual {p0}, Lt6/a;->i()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public final i()V
    .locals 14

    .line 1
    iget-object v0, p0, Lt6/a;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lt6/a;->l:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/view/View;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, v3

    .line 22
    :goto_0
    if-eqz v1, :cond_21

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto/16 :goto_13

    .line 27
    .line 28
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lt6/a;->d:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 36
    .line 37
    .line 38
    new-instance v5, Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 44
    .line 45
    .line 46
    iget-object v6, p0, Lt6/a;->m:Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/view/ViewGroup;

    .line 55
    .line 56
    :cond_2
    if-nez v3, :cond_3

    .line 57
    .line 58
    sget-boolean v6, Lt6/d;->a:Z

    .line 59
    .line 60
    if-eqz v6, :cond_5

    .line 61
    .line 62
    :cond_3
    if-nez v3, :cond_4

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Landroid/view/ViewGroup;

    .line 69
    .line 70
    :cond_4
    invoke-virtual {v3, v2, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    invoke-virtual {p0}, Lt6/a;->e()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    iget-object v6, p0, Lt6/a;->e:Lt6/c;

    .line 78
    .line 79
    if-eqz v3, :cond_6

    .line 80
    .line 81
    iget v3, v6, Lt6/c;->d:F

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_6
    iget v3, v6, Lt6/c;->c:F

    .line 85
    .line 86
    :goto_1
    iput v3, p0, Lt6/a;->i:F

    .line 87
    .line 88
    const/high16 v7, -0x40800000    # -1.0f

    .line 89
    .line 90
    const/high16 v8, 0x40000000    # 2.0f

    .line 91
    .line 92
    cmpl-float v9, v3, v7

    .line 93
    .line 94
    if-eqz v9, :cond_7

    .line 95
    .line 96
    iput v3, p0, Lt6/a;->j:F

    .line 97
    .line 98
    iput v3, p0, Lt6/a;->k:F

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_7
    invoke-virtual {p0}, Lt6/a;->e()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_8

    .line 106
    .line 107
    iget v3, v6, Lt6/c;->g:F

    .line 108
    .line 109
    :goto_2
    div-float/2addr v3, v8

    .line 110
    goto :goto_3

    .line 111
    :cond_8
    iget v3, v6, Lt6/c;->e:F

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :goto_3
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    int-to-float v3, v3

    .line 119
    iput v3, p0, Lt6/a;->j:F

    .line 120
    .line 121
    invoke-virtual {p0}, Lt6/a;->e()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_9

    .line 126
    .line 127
    iget v3, v6, Lt6/c;->h:F

    .line 128
    .line 129
    :goto_4
    div-float/2addr v3, v8

    .line 130
    goto :goto_5

    .line 131
    :cond_9
    iget v3, v6, Lt6/c;->f:F

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :goto_5
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    int-to-float v3, v3

    .line 139
    iput v3, p0, Lt6/a;->k:F

    .line 140
    .line 141
    :goto_6
    invoke-virtual {p0}, Lt6/a;->e()Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_c

    .line 146
    .line 147
    invoke-virtual {p0}, Lt6/a;->b()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    iget v9, p0, Lt6/a;->j:F

    .line 152
    .line 153
    iget-object v10, p0, Lt6/a;->c:Lg7/j;

    .line 154
    .line 155
    iget-boolean v11, v10, Lg7/j;->e:Z

    .line 156
    .line 157
    if-nez v11, :cond_a

    .line 158
    .line 159
    iget v11, v10, Lg7/j;->c:F

    .line 160
    .line 161
    goto :goto_7

    .line 162
    :cond_a
    invoke-virtual {v10, v3}, Lg7/j;->a(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget v11, v10, Lg7/j;->c:F

    .line 166
    .line 167
    :goto_7
    div-float/2addr v11, v8

    .line 168
    iget-object v12, v6, Lt6/c;->b:Lt6/b;

    .line 169
    .line 170
    iget-object v12, v12, Lt6/b;->w:Ljava/lang/Integer;

    .line 171
    .line 172
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result v12

    .line 176
    int-to-float v12, v12

    .line 177
    add-float/2addr v11, v12

    .line 178
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    iput v9, p0, Lt6/a;->j:F

    .line 183
    .line 184
    iget v9, p0, Lt6/a;->k:F

    .line 185
    .line 186
    iget-boolean v11, v10, Lg7/j;->e:Z

    .line 187
    .line 188
    if-nez v11, :cond_b

    .line 189
    .line 190
    iget v3, v10, Lg7/j;->d:F

    .line 191
    .line 192
    goto :goto_8

    .line 193
    :cond_b
    invoke-virtual {v10, v3}, Lg7/j;->a(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget v3, v10, Lg7/j;->d:F

    .line 197
    .line 198
    :goto_8
    div-float/2addr v3, v8

    .line 199
    iget-object v8, v6, Lt6/c;->b:Lt6/b;

    .line 200
    .line 201
    iget-object v8, v8, Lt6/b;->x:Ljava/lang/Integer;

    .line 202
    .line 203
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    int-to-float v8, v8

    .line 208
    add-float/2addr v3, v8

    .line 209
    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    iput v3, p0, Lt6/a;->k:F

    .line 214
    .line 215
    iget v8, p0, Lt6/a;->j:F

    .line 216
    .line 217
    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    iput v3, p0, Lt6/a;->j:F

    .line 222
    .line 223
    :cond_c
    iget-object v3, v6, Lt6/c;->b:Lt6/b;

    .line 224
    .line 225
    iget-object v3, v3, Lt6/b;->z:Ljava/lang/Integer;

    .line 226
    .line 227
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    invoke-virtual {p0}, Lt6/a;->e()Z

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    iget-object v9, v6, Lt6/c;->b:Lt6/b;

    .line 236
    .line 237
    const/4 v10, 0x0

    .line 238
    if-eqz v8, :cond_d

    .line 239
    .line 240
    iget-object v3, v9, Lt6/b;->B:Ljava/lang/Integer;

    .line 241
    .line 242
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Landroid/content/Context;

    .line 251
    .line 252
    if-eqz v0, :cond_d

    .line 253
    .line 254
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 263
    .line 264
    const/high16 v8, 0x3f800000    # 1.0f

    .line 265
    .line 266
    sub-float/2addr v0, v8

    .line 267
    const v11, 0x3e99999a    # 0.3f

    .line 268
    .line 269
    .line 270
    invoke-static {v10, v8, v11, v8, v0}, Lr6/a;->b(FFFFF)F

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    iget-object v8, v9, Lt6/b;->E:Ljava/lang/Integer;

    .line 275
    .line 276
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    sub-int v8, v3, v8

    .line 281
    .line 282
    invoke-static {v3, v0, v8}, Lr6/a;->c(IFI)I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    :cond_d
    iget v0, v6, Lt6/c;->k:I

    .line 287
    .line 288
    if-nez v0, :cond_e

    .line 289
    .line 290
    iget v8, p0, Lt6/a;->k:F

    .line 291
    .line 292
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 293
    .line 294
    .line 295
    move-result v8

    .line 296
    sub-int/2addr v3, v8

    .line 297
    :cond_e
    iget-object v8, v9, Lt6/b;->D:Ljava/lang/Integer;

    .line 298
    .line 299
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 300
    .line 301
    .line 302
    move-result v8

    .line 303
    add-int/2addr v8, v3

    .line 304
    iget-object v3, v9, Lt6/b;->t:Ljava/lang/Integer;

    .line 305
    .line 306
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    const v11, 0x800053

    .line 311
    .line 312
    .line 313
    if-eq v3, v11, :cond_f

    .line 314
    .line 315
    const v12, 0x800055

    .line 316
    .line 317
    .line 318
    if-eq v3, v12, :cond_f

    .line 319
    .line 320
    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 321
    .line 322
    add-int/2addr v3, v8

    .line 323
    int-to-float v3, v3

    .line 324
    iput v3, p0, Lt6/a;->g:F

    .line 325
    .line 326
    goto :goto_9

    .line 327
    :cond_f
    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    .line 328
    .line 329
    sub-int/2addr v3, v8

    .line 330
    int-to-float v3, v3

    .line 331
    iput v3, p0, Lt6/a;->g:F

    .line 332
    .line 333
    :goto_9
    invoke-virtual {p0}, Lt6/a;->e()Z

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    if-eqz v3, :cond_10

    .line 338
    .line 339
    iget-object v3, v9, Lt6/b;->A:Ljava/lang/Integer;

    .line 340
    .line 341
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    goto :goto_a

    .line 346
    :cond_10
    iget-object v3, v9, Lt6/b;->y:Ljava/lang/Integer;

    .line 347
    .line 348
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    :goto_a
    const/4 v8, 0x1

    .line 353
    if-ne v0, v8, :cond_12

    .line 354
    .line 355
    invoke-virtual {p0}, Lt6/a;->e()Z

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    if-eqz v0, :cond_11

    .line 360
    .line 361
    iget v0, v6, Lt6/c;->j:I

    .line 362
    .line 363
    goto :goto_b

    .line 364
    :cond_11
    iget v0, v6, Lt6/c;->i:I

    .line 365
    .line 366
    :goto_b
    add-int/2addr v3, v0

    .line 367
    :cond_12
    iget-object v0, v9, Lt6/b;->C:Ljava/lang/Integer;

    .line 368
    .line 369
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    add-int/2addr v0, v3

    .line 374
    iget-object v3, v9, Lt6/b;->t:Ljava/lang/Integer;

    .line 375
    .line 376
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    const v6, 0x800033

    .line 381
    .line 382
    .line 383
    if-eq v3, v6, :cond_14

    .line 384
    .line 385
    if-eq v3, v11, :cond_14

    .line 386
    .line 387
    sget-object v3, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 388
    .line 389
    invoke-static {v2}, Lx0/k0;->d(Landroid/view/View;)I

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    if-nez v3, :cond_13

    .line 394
    .line 395
    iget v3, v5, Landroid/graphics/Rect;->right:I

    .line 396
    .line 397
    int-to-float v3, v3

    .line 398
    iget v5, p0, Lt6/a;->j:F

    .line 399
    .line 400
    add-float/2addr v3, v5

    .line 401
    int-to-float v0, v0

    .line 402
    sub-float/2addr v3, v0

    .line 403
    goto :goto_c

    .line 404
    :cond_13
    iget v3, v5, Landroid/graphics/Rect;->left:I

    .line 405
    .line 406
    int-to-float v3, v3

    .line 407
    iget v5, p0, Lt6/a;->j:F

    .line 408
    .line 409
    sub-float/2addr v3, v5

    .line 410
    int-to-float v0, v0

    .line 411
    add-float/2addr v3, v0

    .line 412
    :goto_c
    iput v3, p0, Lt6/a;->f:F

    .line 413
    .line 414
    goto :goto_e

    .line 415
    :cond_14
    sget-object v3, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 416
    .line 417
    invoke-static {v2}, Lx0/k0;->d(Landroid/view/View;)I

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    if-nez v3, :cond_15

    .line 422
    .line 423
    iget v3, v5, Landroid/graphics/Rect;->left:I

    .line 424
    .line 425
    int-to-float v3, v3

    .line 426
    iget v5, p0, Lt6/a;->j:F

    .line 427
    .line 428
    sub-float/2addr v3, v5

    .line 429
    int-to-float v0, v0

    .line 430
    add-float/2addr v3, v0

    .line 431
    goto :goto_d

    .line 432
    :cond_15
    iget v3, v5, Landroid/graphics/Rect;->right:I

    .line 433
    .line 434
    int-to-float v3, v3

    .line 435
    iget v5, p0, Lt6/a;->j:F

    .line 436
    .line 437
    add-float/2addr v3, v5

    .line 438
    int-to-float v0, v0

    .line 439
    sub-float/2addr v3, v0

    .line 440
    :goto_d
    iput v3, p0, Lt6/a;->f:F

    .line 441
    .line 442
    :goto_e
    iget-object v0, v9, Lt6/b;->F:Ljava/lang/Boolean;

    .line 443
    .line 444
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    if-eqz v0, :cond_1f

    .line 449
    .line 450
    invoke-virtual {p0}, Lt6/a;->c()Landroid/widget/FrameLayout;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    if-nez v0, :cond_17

    .line 455
    .line 456
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    instance-of v0, v0, Landroid/view/View;

    .line 461
    .line 462
    if-nez v0, :cond_16

    .line 463
    .line 464
    goto/16 :goto_12

    .line 465
    .line 466
    :cond_16
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    check-cast v2, Landroid/view/View;

    .line 479
    .line 480
    move-object v13, v2

    .line 481
    move v2, v0

    .line 482
    move-object v0, v13

    .line 483
    goto :goto_f

    .line 484
    :cond_17
    invoke-virtual {p0}, Lt6/a;->c()Landroid/widget/FrameLayout;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    if-eqz v2, :cond_19

    .line 489
    .line 490
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    const v3, 0x7f0b0218

    .line 495
    .line 496
    .line 497
    if-ne v2, v3, :cond_19

    .line 498
    .line 499
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    instance-of v2, v2, Landroid/view/View;

    .line 504
    .line 505
    if-nez v2, :cond_18

    .line 506
    .line 507
    goto/16 :goto_12

    .line 508
    .line 509
    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 514
    .line 515
    .line 516
    move-result v3

    .line 517
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    check-cast v0, Landroid/view/View;

    .line 522
    .line 523
    goto :goto_f

    .line 524
    :cond_19
    const/4 v2, 0x0

    .line 525
    const/4 v3, 0x0

    .line 526
    :goto_f
    iget v5, p0, Lt6/a;->g:F

    .line 527
    .line 528
    iget v6, p0, Lt6/a;->k:F

    .line 529
    .line 530
    sub-float/2addr v5, v6

    .line 531
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 532
    .line 533
    .line 534
    move-result v6

    .line 535
    add-float/2addr v6, v5

    .line 536
    add-float/2addr v6, v2

    .line 537
    iget v5, p0, Lt6/a;->f:F

    .line 538
    .line 539
    iget v8, p0, Lt6/a;->j:F

    .line 540
    .line 541
    sub-float/2addr v5, v8

    .line 542
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 543
    .line 544
    .line 545
    move-result v8

    .line 546
    add-float/2addr v8, v5

    .line 547
    add-float/2addr v8, v3

    .line 548
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 549
    .line 550
    .line 551
    move-result-object v5

    .line 552
    instance-of v5, v5, Landroid/view/View;

    .line 553
    .line 554
    if-eqz v5, :cond_1a

    .line 555
    .line 556
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 557
    .line 558
    .line 559
    move-result-object v5

    .line 560
    check-cast v5, Landroid/view/View;

    .line 561
    .line 562
    iget v9, p0, Lt6/a;->g:F

    .line 563
    .line 564
    iget v11, p0, Lt6/a;->k:F

    .line 565
    .line 566
    add-float/2addr v9, v11

    .line 567
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 568
    .line 569
    .line 570
    move-result v5

    .line 571
    int-to-float v5, v5

    .line 572
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 573
    .line 574
    .line 575
    move-result v11

    .line 576
    sub-float/2addr v5, v11

    .line 577
    sub-float/2addr v9, v5

    .line 578
    add-float/2addr v9, v2

    .line 579
    goto :goto_10

    .line 580
    :cond_1a
    const/4 v9, 0x0

    .line 581
    :goto_10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    instance-of v2, v2, Landroid/view/View;

    .line 586
    .line 587
    if-eqz v2, :cond_1b

    .line 588
    .line 589
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    check-cast v2, Landroid/view/View;

    .line 594
    .line 595
    iget v5, p0, Lt6/a;->f:F

    .line 596
    .line 597
    iget v11, p0, Lt6/a;->j:F

    .line 598
    .line 599
    add-float/2addr v5, v11

    .line 600
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 601
    .line 602
    .line 603
    move-result v2

    .line 604
    int-to-float v2, v2

    .line 605
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 606
    .line 607
    .line 608
    move-result v0

    .line 609
    sub-float/2addr v2, v0

    .line 610
    sub-float/2addr v5, v2

    .line 611
    add-float/2addr v5, v3

    .line 612
    goto :goto_11

    .line 613
    :cond_1b
    const/4 v5, 0x0

    .line 614
    :goto_11
    cmpg-float v0, v6, v10

    .line 615
    .line 616
    if-gez v0, :cond_1c

    .line 617
    .line 618
    iget v0, p0, Lt6/a;->g:F

    .line 619
    .line 620
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 621
    .line 622
    .line 623
    move-result v2

    .line 624
    add-float/2addr v2, v0

    .line 625
    iput v2, p0, Lt6/a;->g:F

    .line 626
    .line 627
    :cond_1c
    cmpg-float v0, v8, v10

    .line 628
    .line 629
    if-gez v0, :cond_1d

    .line 630
    .line 631
    iget v0, p0, Lt6/a;->f:F

    .line 632
    .line 633
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 634
    .line 635
    .line 636
    move-result v2

    .line 637
    add-float/2addr v2, v0

    .line 638
    iput v2, p0, Lt6/a;->f:F

    .line 639
    .line 640
    :cond_1d
    cmpl-float v0, v9, v10

    .line 641
    .line 642
    if-lez v0, :cond_1e

    .line 643
    .line 644
    iget v0, p0, Lt6/a;->g:F

    .line 645
    .line 646
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 647
    .line 648
    .line 649
    move-result v2

    .line 650
    sub-float/2addr v0, v2

    .line 651
    iput v0, p0, Lt6/a;->g:F

    .line 652
    .line 653
    :cond_1e
    cmpl-float v0, v5, v10

    .line 654
    .line 655
    if-lez v0, :cond_1f

    .line 656
    .line 657
    iget v0, p0, Lt6/a;->f:F

    .line 658
    .line 659
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 660
    .line 661
    .line 662
    move-result v2

    .line 663
    sub-float/2addr v0, v2

    .line 664
    iput v0, p0, Lt6/a;->f:F

    .line 665
    .line 666
    :cond_1f
    :goto_12
    iget v0, p0, Lt6/a;->f:F

    .line 667
    .line 668
    iget v2, p0, Lt6/a;->g:F

    .line 669
    .line 670
    iget v3, p0, Lt6/a;->j:F

    .line 671
    .line 672
    iget v5, p0, Lt6/a;->k:F

    .line 673
    .line 674
    sget-boolean v6, Lt6/d;->a:Z

    .line 675
    .line 676
    sub-float v6, v0, v3

    .line 677
    .line 678
    float-to-int v6, v6

    .line 679
    sub-float v8, v2, v5

    .line 680
    .line 681
    float-to-int v8, v8

    .line 682
    add-float/2addr v0, v3

    .line 683
    float-to-int v0, v0

    .line 684
    add-float/2addr v2, v5

    .line 685
    float-to-int v2, v2

    .line 686
    invoke-virtual {v4, v6, v8, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 687
    .line 688
    .line 689
    iget v0, p0, Lt6/a;->i:F

    .line 690
    .line 691
    iget-object v2, p0, Lt6/a;->b:Lm7/g;

    .line 692
    .line 693
    cmpl-float v3, v0, v7

    .line 694
    .line 695
    if-eqz v3, :cond_20

    .line 696
    .line 697
    iget-object v3, v2, Lm7/g;->a:Lm7/f;

    .line 698
    .line 699
    iget-object v3, v3, Lm7/f;->a:Lm7/j;

    .line 700
    .line 701
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 702
    .line 703
    .line 704
    new-instance v5, Lff/b;

    .line 705
    .line 706
    invoke-direct {v5, v3}, Lff/b;-><init>(Lm7/j;)V

    .line 707
    .line 708
    .line 709
    new-instance v3, Lm7/a;

    .line 710
    .line 711
    invoke-direct {v3, v0}, Lm7/a;-><init>(F)V

    .line 712
    .line 713
    .line 714
    iput-object v3, v5, Lff/b;->e:Ljava/lang/Object;

    .line 715
    .line 716
    new-instance v3, Lm7/a;

    .line 717
    .line 718
    invoke-direct {v3, v0}, Lm7/a;-><init>(F)V

    .line 719
    .line 720
    .line 721
    iput-object v3, v5, Lff/b;->f:Ljava/lang/Object;

    .line 722
    .line 723
    new-instance v3, Lm7/a;

    .line 724
    .line 725
    invoke-direct {v3, v0}, Lm7/a;-><init>(F)V

    .line 726
    .line 727
    .line 728
    iput-object v3, v5, Lff/b;->g:Ljava/lang/Object;

    .line 729
    .line 730
    new-instance v3, Lm7/a;

    .line 731
    .line 732
    invoke-direct {v3, v0}, Lm7/a;-><init>(F)V

    .line 733
    .line 734
    .line 735
    iput-object v3, v5, Lff/b;->h:Ljava/lang/Object;

    .line 736
    .line 737
    new-instance v0, Lm7/j;

    .line 738
    .line 739
    invoke-direct {v0, v5}, Lm7/j;-><init>(Lff/b;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v2, v0}, Lm7/g;->setShapeAppearanceModel(Lm7/j;)V

    .line 743
    .line 744
    .line 745
    :cond_20
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    if-nez v0, :cond_21

    .line 750
    .line 751
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 752
    .line 753
    .line 754
    :cond_21
    :goto_13
    return-void
.end method

.method public final isStateful()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final onStateChange([I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lt6/a;->e:Lt6/c;

    .line 2
    .line 3
    iget-object v1, v0, Lt6/c;->a:Lt6/b;

    .line 4
    .line 5
    iput p1, v1, Lt6/b;->i:I

    .line 6
    .line 7
    iget-object v0, v0, Lt6/c;->b:Lt6/b;

    .line 8
    .line 9
    iput p1, v0, Lt6/b;->i:I

    .line 10
    .line 11
    iget-object p1, p0, Lt6/a;->c:Lg7/j;

    .line 12
    .line 13
    iget-object p1, p1, Lg7/j;->a:Landroid/text/TextPaint;

    .line 14
    .line 15
    invoke-virtual {p0}, Lt6/a;->getAlpha()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
.end method
