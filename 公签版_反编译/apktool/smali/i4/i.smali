.class public final Li4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic a:I

.field public b:[F

.field public c:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Li4/i;->a:I

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v1, Li4/a;->l:[I

    invoke-static {v0, p1, p2, v1}, Lo0/b;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 13
    const-string p2, "pathData"

    invoke-static {p3, p2}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 14
    invoke-static {p1, p3, p2, v0}, Lo0/b;->c(Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-static {p2}, Lif/a;->v(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 16
    invoke-virtual {p0, p3}, Li4/i;->a(Landroid/graphics/Path;)V

    goto/16 :goto_4

    .line 17
    :cond_0
    new-instance p1, Landroid/view/InflateException;

    const-string p3, "The path is null, which is created from "

    .line 18
    invoke-static {p3, p2}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    const-string p2, "controlX1"

    invoke-static {p3, p2}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21
    const-string v0, "controlY1"

    invoke-static {p3, v0}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 22
    invoke-static {p3, p2}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    move v3, p2

    .line 24
    :goto_0
    invoke-static {p3, v0}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/4 p2, 0x1

    .line 25
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    move v4, p2

    .line 26
    :goto_1
    const-string p2, "controlX2"

    invoke-static {p3, p2}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 27
    const-string v2, "controlY2"

    invoke-static {p3, v2}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-ne v0, v5, :cond_7

    if-nez v0, :cond_4

    .line 28
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 29
    invoke-virtual {p2, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 30
    invoke-virtual {p2, v3, v4, p3, p3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 31
    invoke-virtual {p0, p2}, Li4/i;->a(Landroid/graphics/Path;)V

    goto :goto_4

    .line 32
    :cond_4
    invoke-static {p3, p2}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    const/4 p2, 0x2

    .line 33
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    move v5, p2

    .line 34
    :goto_2
    invoke-static {p3, v2}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    const/4 p2, 0x3

    .line 35
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    move v6, p2

    .line 36
    :goto_3
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 37
    invoke-virtual {p2, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p2

    .line 38
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 39
    invoke-virtual {p0, p2}, Li4/i;->a(Landroid/graphics/Path;)V

    .line 40
    :goto_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 41
    :cond_7
    new-instance p1, Landroid/view/InflateException;

    const-string p2, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_8
    new-instance p1, Landroid/view/InflateException;

    const-string p2, "pathInterpolator requires the controlY1 attribute"

    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_9
    new-instance p1, Landroid/view/InflateException;

    const-string p2, "pathInterpolator requires the controlX1 attribute"

    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 8

    const/4 v0, 0x1

    iput v0, p0, Li4/i;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 3
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    const v2, 0x3b03126f    # 0.002f

    div-float v2, p1, v2

    float-to-int v2, v2

    add-int/lit8 v3, v2, 0x1

    .line 4
    new-array v4, v3, [F

    iput-object v4, p0, Li4/i;->b:[F

    .line 5
    new-array v4, v3, [F

    iput-object v4, p0, Li4/i;->c:[F

    const/4 v4, 0x2

    .line 6
    new-array v4, v4, [F

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    int-to-float v6, v5

    mul-float v6, v6, p1

    int-to-float v7, v2

    div-float/2addr v6, v7

    const/4 v7, 0x0

    .line 7
    invoke-virtual {v0, v6, v4, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 8
    iget-object v6, p0, Li4/i;->b:[F

    aget v7, v4, v1

    aput v7, v6, v5

    .line 9
    iget-object v6, p0, Li4/i;->c:[F

    const/4 v7, 0x1

    aget v7, v4, v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .locals 10

    .line 1
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const v2, 0x3b03126f    # 0.002f

    .line 12
    .line 13
    .line 14
    div-float v2, p1, v2

    .line 15
    .line 16
    float-to-int v2, v2

    .line 17
    const/4 v3, 0x1

    .line 18
    add-int/2addr v2, v3

    .line 19
    const/16 v4, 0xbb8

    .line 20
    .line 21
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-lez v2, :cond_5

    .line 26
    .line 27
    new-array v4, v2, [F

    .line 28
    .line 29
    iput-object v4, p0, Li4/i;->b:[F

    .line 30
    .line 31
    new-array v4, v2, [F

    .line 32
    .line 33
    iput-object v4, p0, Li4/i;->c:[F

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    new-array v4, v4, [F

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    :goto_0
    if-ge v5, v2, :cond_0

    .line 40
    .line 41
    int-to-float v6, v5

    .line 42
    mul-float v6, v6, p1

    .line 43
    .line 44
    add-int/lit8 v7, v2, -0x1

    .line 45
    .line 46
    int-to-float v7, v7

    .line 47
    div-float/2addr v6, v7

    .line 48
    const/4 v7, 0x0

    .line 49
    invoke-virtual {v0, v6, v4, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 50
    .line 51
    .line 52
    iget-object v6, p0, Li4/i;->b:[F

    .line 53
    .line 54
    aget v7, v4, v1

    .line 55
    .line 56
    aput v7, v6, v5

    .line 57
    .line 58
    iget-object v6, p0, Li4/i;->c:[F

    .line 59
    .line 60
    aget v7, v4, v3

    .line 61
    .line 62
    aput v7, v6, v5

    .line 63
    .line 64
    add-int/lit8 v5, v5, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Li4/i;->b:[F

    .line 68
    .line 69
    aget p1, p1, v1

    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    float-to-double v4, p1

    .line 76
    const-wide v6, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    cmpl-double p1, v4, v6

    .line 82
    .line 83
    if-gtz p1, :cond_4

    .line 84
    .line 85
    iget-object p1, p0, Li4/i;->c:[F

    .line 86
    .line 87
    aget p1, p1, v1

    .line 88
    .line 89
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    float-to-double v4, p1

    .line 94
    cmpl-double p1, v4, v6

    .line 95
    .line 96
    if-gtz p1, :cond_4

    .line 97
    .line 98
    iget-object p1, p0, Li4/i;->b:[F

    .line 99
    .line 100
    add-int/lit8 v4, v2, -0x1

    .line 101
    .line 102
    aget p1, p1, v4

    .line 103
    .line 104
    const/high16 v5, 0x3f800000    # 1.0f

    .line 105
    .line 106
    sub-float/2addr p1, v5

    .line 107
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    float-to-double v8, p1

    .line 112
    cmpl-double p1, v8, v6

    .line 113
    .line 114
    if-gtz p1, :cond_4

    .line 115
    .line 116
    iget-object p1, p0, Li4/i;->c:[F

    .line 117
    .line 118
    aget p1, p1, v4

    .line 119
    .line 120
    sub-float/2addr p1, v5

    .line 121
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    float-to-double v4, p1

    .line 126
    cmpl-double p1, v4, v6

    .line 127
    .line 128
    if-gtz p1, :cond_4

    .line 129
    .line 130
    const/4 p1, 0x0

    .line 131
    const/4 v3, 0x0

    .line 132
    :goto_1
    if-ge v1, v2, :cond_2

    .line 133
    .line 134
    iget-object v4, p0, Li4/i;->b:[F

    .line 135
    .line 136
    add-int/lit8 v5, v3, 0x1

    .line 137
    .line 138
    aget v3, v4, v3

    .line 139
    .line 140
    cmpg-float p1, v3, p1

    .line 141
    .line 142
    if-ltz p1, :cond_1

    .line 143
    .line 144
    aput v3, v4, v1

    .line 145
    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 147
    .line 148
    move p1, v3

    .line 149
    move v3, v5

    .line 150
    goto :goto_1

    .line 151
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 152
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v1, "The Path cannot loop back on itself, x :"

    .line 156
    .line 157
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p1

    .line 171
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-nez p1, :cond_3

    .line 176
    .line 177
    return-void

    .line 178
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 179
    .line 180
    const-string v0, "The Path should be continuous, can\'t have 2+ contours"

    .line 181
    .line 182
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p1

    .line 186
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 187
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v4, "The Path must start at (0,0) and end at (1,1) start: "

    .line 191
    .line 192
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v4, p0, Li4/i;->b:[F

    .line 196
    .line 197
    aget v4, v4, v1

    .line 198
    .line 199
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v4, ","

    .line 203
    .line 204
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    iget-object v5, p0, Li4/i;->c:[F

    .line 208
    .line 209
    aget v1, v5, v1

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v1, " end:"

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget-object v1, p0, Li4/i;->b:[F

    .line 220
    .line 221
    sub-int/2addr v2, v3

    .line 222
    aget v1, v1, v2

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget-object v1, p0, Li4/i;->c:[F

    .line 231
    .line 232
    aget v1, v1, v2

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw p1

    .line 245
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 246
    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v2, "The Path has a invalid length "

    .line 250
    .line 251
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :goto_2
    throw v0

    .line 266
    :goto_3
    goto :goto_2
.end method

.method public final getInterpolation(F)F
    .locals 7

    .line 1
    iget v0, p0, Li4/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    cmpg-float v1, p1, v0

    .line 8
    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    cmpl-float v2, p1, v1

    .line 15
    .line 16
    if-ltz v2, :cond_1

    .line 17
    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object v1, p0, Li4/i;->b:[F

    .line 22
    .line 23
    array-length v2, v1

    .line 24
    const/4 v3, 0x1

    .line 25
    sub-int/2addr v2, v3

    .line 26
    const/4 v4, 0x0

    .line 27
    :goto_0
    sub-int v5, v2, v4

    .line 28
    .line 29
    if-le v5, v3, :cond_3

    .line 30
    .line 31
    add-int v5, v4, v2

    .line 32
    .line 33
    div-int/lit8 v5, v5, 0x2

    .line 34
    .line 35
    aget v6, v1, v5

    .line 36
    .line 37
    cmpg-float v6, p1, v6

    .line 38
    .line 39
    if-gez v6, :cond_2

    .line 40
    .line 41
    move v2, v5

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v4, v5

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    aget v3, v1, v2

    .line 46
    .line 47
    aget v1, v1, v4

    .line 48
    .line 49
    sub-float/2addr v3, v1

    .line 50
    iget-object v5, p0, Li4/i;->c:[F

    .line 51
    .line 52
    cmpl-float v0, v3, v0

    .line 53
    .line 54
    if-nez v0, :cond_4

    .line 55
    .line 56
    aget v0, v5, v4

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    sub-float/2addr p1, v1

    .line 60
    div-float/2addr p1, v3

    .line 61
    aget v0, v5, v4

    .line 62
    .line 63
    aget v1, v5, v2

    .line 64
    .line 65
    invoke-static {v1, v0, p1, v0}, Lg/b;->b(FFFF)F

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    :goto_1
    return v0

    .line 70
    :pswitch_0
    const/4 v0, 0x0

    .line 71
    cmpg-float v1, p1, v0

    .line 72
    .line 73
    if-gtz v1, :cond_5

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 77
    .line 78
    cmpl-float v2, p1, v1

    .line 79
    .line 80
    if-ltz v2, :cond_6

    .line 81
    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_6
    iget-object v1, p0, Li4/i;->b:[F

    .line 86
    .line 87
    array-length v1, v1

    .line 88
    const/4 v2, 0x1

    .line 89
    sub-int/2addr v1, v2

    .line 90
    const/4 v3, 0x0

    .line 91
    :goto_2
    sub-int v4, v1, v3

    .line 92
    .line 93
    if-le v4, v2, :cond_8

    .line 94
    .line 95
    add-int v4, v3, v1

    .line 96
    .line 97
    div-int/lit8 v4, v4, 0x2

    .line 98
    .line 99
    iget-object v5, p0, Li4/i;->b:[F

    .line 100
    .line 101
    aget v5, v5, v4

    .line 102
    .line 103
    cmpg-float v5, p1, v5

    .line 104
    .line 105
    if-gez v5, :cond_7

    .line 106
    .line 107
    move v1, v4

    .line 108
    goto :goto_2

    .line 109
    :cond_7
    move v3, v4

    .line 110
    goto :goto_2

    .line 111
    :cond_8
    iget-object v2, p0, Li4/i;->b:[F

    .line 112
    .line 113
    aget v4, v2, v1

    .line 114
    .line 115
    aget v2, v2, v3

    .line 116
    .line 117
    sub-float/2addr v4, v2

    .line 118
    cmpl-float v0, v4, v0

    .line 119
    .line 120
    if-nez v0, :cond_9

    .line 121
    .line 122
    iget-object p1, p0, Li4/i;->c:[F

    .line 123
    .line 124
    aget v0, p1, v3

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_9
    sub-float/2addr p1, v2

    .line 128
    div-float/2addr p1, v4

    .line 129
    iget-object v0, p0, Li4/i;->c:[F

    .line 130
    .line 131
    aget v2, v0, v3

    .line 132
    .line 133
    aget v0, v0, v1

    .line 134
    .line 135
    invoke-static {v0, v2, p1, v2}, Lg/b;->b(FFFF)F

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    :goto_3
    return v0

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
