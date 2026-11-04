.class public final Lg7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i0:Z


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Ljava/lang/CharSequence;

.field public C:Z

.field public final D:Z

.field public E:Z

.field public F:Landroid/graphics/Bitmap;

.field public G:Landroid/graphics/Paint;

.field public H:F

.field public I:F

.field public J:F

.field public K:F

.field public L:F

.field public M:I

.field public N:[I

.field public O:Z

.field public final P:Landroid/text/TextPaint;

.field public final Q:Landroid/text/TextPaint;

.field public R:Landroid/view/animation/LinearInterpolator;

.field public S:Landroid/view/animation/LinearInterpolator;

.field public T:F

.field public U:F

.field public V:F

.field public W:Landroid/content/res/ColorStateList;

.field public X:F

.field public Y:F

.field public Z:F

.field public final a:Lcom/google/android/material/textfield/TextInputLayout;

.field public a0:Landroid/text/StaticLayout;

.field public b:F

.field public b0:F

.field public final c:Landroid/graphics/Rect;

.field public c0:F

.field public final d:Landroid/graphics/Rect;

.field public d0:F

.field public final e:Landroid/graphics/RectF;

.field public e0:Ljava/lang/CharSequence;

.field public f:I

.field public final f0:I

.field public g:I

.field public final g0:F

.field public h:F

.field public final h0:I

.field public i:F

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/content/res/ColorStateList;

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:Landroid/graphics/Typeface;

.field public s:Landroid/graphics/Typeface;

.field public t:Landroid/graphics/Typeface;

.field public u:Landroid/graphics/Typeface;

.field public v:Landroid/graphics/Typeface;

.field public w:Landroid/graphics/Typeface;

.field public x:Landroid/graphics/Typeface;

.field public y:Lj7/a;

.field public final z:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    sput-boolean v0, Lg7/b;->i0:Z

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    iput v0, p0, Lg7/b;->f:I

    .line 7
    .line 8
    iput v0, p0, Lg7/b;->g:I

    .line 9
    .line 10
    const/high16 v0, 0x41700000    # 15.0f

    .line 11
    .line 12
    iput v0, p0, Lg7/b;->h:F

    .line 13
    .line 14
    iput v0, p0, Lg7/b;->i:F

    .line 15
    .line 16
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 17
    .line 18
    iput-object v0, p0, Lg7/b;->z:Landroid/text/TextUtils$TruncateAt;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lg7/b;->D:Z

    .line 22
    .line 23
    iput v0, p0, Lg7/b;->f0:I

    .line 24
    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    .line 27
    iput v0, p0, Lg7/b;->g0:F

    .line 28
    .line 29
    sget v0, Lg7/h;->l:I

    .line 30
    .line 31
    iput v0, p0, Lg7/b;->h0:I

    .line 32
    .line 33
    iput-object p1, p0, Lg7/b;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 34
    .line 35
    new-instance v0, Landroid/text/TextPaint;

    .line 36
    .line 37
    const/16 v1, 0x81

    .line 38
    .line 39
    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lg7/b;->P:Landroid/text/TextPaint;

    .line 43
    .line 44
    new-instance v1, Landroid/text/TextPaint;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lg7/b;->Q:Landroid/text/TextPaint;

    .line 50
    .line 51
    new-instance v0, Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lg7/b;->d:Landroid/graphics/Rect;

    .line 57
    .line 58
    new-instance v0, Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lg7/b;->c:Landroid/graphics/Rect;

    .line 64
    .line 65
    new-instance v0, Landroid/graphics/RectF;

    .line 66
    .line 67
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lg7/b;->e:Landroid/graphics/RectF;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Lg7/b;->h(Landroid/content/res/Configuration;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public static a(IFI)I
    .locals 5

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    sub-float/2addr v0, p1

    .line 4
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    int-to-float v1, v1

    .line 9
    mul-float v1, v1, v0

    .line 10
    .line 11
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    int-to-float v2, v2

    .line 16
    mul-float v2, v2, p1

    .line 17
    .line 18
    add-float/2addr v2, v1

    .line 19
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    int-to-float v1, v1

    .line 24
    mul-float v1, v1, v0

    .line 25
    .line 26
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    int-to-float v3, v3

    .line 31
    mul-float v3, v3, p1

    .line 32
    .line 33
    add-float/2addr v3, v1

    .line 34
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    int-to-float v1, v1

    .line 39
    mul-float v1, v1, v0

    .line 40
    .line 41
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    int-to-float v4, v4

    .line 46
    mul-float v4, v4, p1

    .line 47
    .line 48
    add-float/2addr v4, v1

    .line 49
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    int-to-float p0, p0

    .line 54
    mul-float p0, p0, v0

    .line 55
    .line 56
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    int-to-float p2, p2

    .line 61
    mul-float p2, p2, p1

    .line 62
    .line 63
    add-float/2addr p2, p0

    .line 64
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    return p0
.end method

.method public static g(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    :cond_0
    invoke-static {p0, p1, p2}, Lr6/a;->a(FFF)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 1
    sget-object v0, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    iget-object v0, p0, Lg7/b;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    .line 5
    invoke-static {v0}, Lx0/k0;->d(Landroid/view/View;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-boolean v0, p0, Lg7/b;->D:Z

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    sget-object v0, Lv0/i;->d:Lh5/d0;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    sget-object v0, Lv0/i;->c:Lh5/d0;

    .line 24
    .line 25
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v1, p1}, Lh5/d0;->d(ILjava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :cond_2
    return v1
.end method

.method public final c(F)V
    .locals 7

    .line 1
    iget-object v0, p0, Lg7/b;->c:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    iget-object v2, p0, Lg7/b;->d:Landroid/graphics/Rect;

    .line 7
    .line 8
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    int-to-float v3, v3

    .line 11
    iget-object v4, p0, Lg7/b;->R:Landroid/view/animation/LinearInterpolator;

    .line 12
    .line 13
    invoke-static {v1, v3, p1, v4}, Lg7/b;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v3, p0, Lg7/b;->e:Landroid/graphics/RectF;

    .line 18
    .line 19
    iput v1, v3, Landroid/graphics/RectF;->left:F

    .line 20
    .line 21
    iget v1, p0, Lg7/b;->l:F

    .line 22
    .line 23
    iget v4, p0, Lg7/b;->m:F

    .line 24
    .line 25
    iget-object v5, p0, Lg7/b;->R:Landroid/view/animation/LinearInterpolator;

    .line 26
    .line 27
    invoke-static {v1, v4, p1, v5}, Lg7/b;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, v3, Landroid/graphics/RectF;->top:F

    .line 32
    .line 33
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 34
    .line 35
    int-to-float v1, v1

    .line 36
    iget v4, v2, Landroid/graphics/Rect;->right:I

    .line 37
    .line 38
    int-to-float v4, v4

    .line 39
    iget-object v5, p0, Lg7/b;->R:Landroid/view/animation/LinearInterpolator;

    .line 40
    .line 41
    invoke-static {v1, v4, p1, v5}, Lg7/b;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iput v1, v3, Landroid/graphics/RectF;->right:F

    .line 46
    .line 47
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 48
    .line 49
    int-to-float v0, v0

    .line 50
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 51
    .line 52
    int-to-float v1, v1

    .line 53
    iget-object v2, p0, Lg7/b;->R:Landroid/view/animation/LinearInterpolator;

    .line 54
    .line 55
    invoke-static {v0, v1, p1, v2}, Lg7/b;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    .line 60
    .line 61
    iget v0, p0, Lg7/b;->n:F

    .line 62
    .line 63
    iget v1, p0, Lg7/b;->o:F

    .line 64
    .line 65
    iget-object v2, p0, Lg7/b;->R:Landroid/view/animation/LinearInterpolator;

    .line 66
    .line 67
    invoke-static {v0, v1, p1, v2}, Lg7/b;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Lg7/b;->p:F

    .line 72
    .line 73
    iget v0, p0, Lg7/b;->l:F

    .line 74
    .line 75
    iget v1, p0, Lg7/b;->m:F

    .line 76
    .line 77
    iget-object v2, p0, Lg7/b;->R:Landroid/view/animation/LinearInterpolator;

    .line 78
    .line 79
    invoke-static {v0, v1, p1, v2}, Lg7/b;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput v0, p0, Lg7/b;->q:F

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lg7/b;->m(F)V

    .line 86
    .line 87
    .line 88
    const/high16 v0, 0x3f800000    # 1.0f

    .line 89
    .line 90
    sub-float v1, v0, p1

    .line 91
    .line 92
    sget-object v2, Lr6/a;->b:Lm1/a;

    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    invoke-static {v3, v0, v1, v2}, Lg7/b;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    sub-float v1, v0, v1

    .line 100
    .line 101
    iput v1, p0, Lg7/b;->c0:F

    .line 102
    .line 103
    sget-object v1, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 104
    .line 105
    iget-object v1, p0, Lg7/b;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 106
    .line 107
    invoke-static {v1}, Lx0/j0;->k(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v3, p1, v2}, Lg7/b;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    iput v0, p0, Lg7/b;->d0:F

    .line 115
    .line 116
    invoke-static {v1}, Lx0/j0;->k(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lg7/b;->k:Landroid/content/res/ColorStateList;

    .line 120
    .line 121
    iget-object v4, p0, Lg7/b;->j:Landroid/content/res/ColorStateList;

    .line 122
    .line 123
    iget-object v5, p0, Lg7/b;->P:Landroid/text/TextPaint;

    .line 124
    .line 125
    if-eq v0, v4, :cond_0

    .line 126
    .line 127
    invoke-virtual {p0, v4}, Lg7/b;->f(Landroid/content/res/ColorStateList;)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    iget-object v4, p0, Lg7/b;->k:Landroid/content/res/ColorStateList;

    .line 132
    .line 133
    invoke-virtual {p0, v4}, Lg7/b;->f(Landroid/content/res/ColorStateList;)I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    invoke-static {v0, p1, v4}, Lg7/b;->a(IFI)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0, v0}, Lg7/b;->f(Landroid/content/res/ColorStateList;)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    .line 151
    .line 152
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 153
    .line 154
    const/16 v4, 0x15

    .line 155
    .line 156
    if-lt v0, v4, :cond_2

    .line 157
    .line 158
    iget v0, p0, Lg7/b;->X:F

    .line 159
    .line 160
    iget v4, p0, Lg7/b;->Y:F

    .line 161
    .line 162
    cmpl-float v6, v0, v4

    .line 163
    .line 164
    if-eqz v6, :cond_1

    .line 165
    .line 166
    invoke-static {v4, v0, p1, v2}, Lg7/b;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    invoke-static {v5, v0}, Ld2/a;->r(Landroid/text/TextPaint;F)V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_1
    invoke-static {v5, v0}, Ld2/a;->r(Landroid/text/TextPaint;F)V

    .line 175
    .line 176
    .line 177
    :cond_2
    :goto_1
    iget v0, p0, Lg7/b;->T:F

    .line 178
    .line 179
    invoke-static {v3, v0, p1}, Lr6/a;->a(FFF)F

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    iput v0, p0, Lg7/b;->J:F

    .line 184
    .line 185
    iget v0, p0, Lg7/b;->U:F

    .line 186
    .line 187
    invoke-static {v3, v0, p1}, Lr6/a;->a(FFF)F

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    iput v0, p0, Lg7/b;->K:F

    .line 192
    .line 193
    iget v0, p0, Lg7/b;->V:F

    .line 194
    .line 195
    invoke-static {v3, v0, p1}, Lr6/a;->a(FFF)F

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    iput v0, p0, Lg7/b;->L:F

    .line 200
    .line 201
    iget-object v0, p0, Lg7/b;->W:Landroid/content/res/ColorStateList;

    .line 202
    .line 203
    invoke-virtual {p0, v0}, Lg7/b;->f(Landroid/content/res/ColorStateList;)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    const/4 v2, 0x0

    .line 208
    invoke-static {v2, p1, v0}, Lg7/b;->a(IFI)I

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    iput p1, p0, Lg7/b;->M:I

    .line 213
    .line 214
    iget v0, p0, Lg7/b;->J:F

    .line 215
    .line 216
    iget v2, p0, Lg7/b;->K:F

    .line 217
    .line 218
    iget v3, p0, Lg7/b;->L:F

    .line 219
    .line 220
    invoke-virtual {v5, v0, v2, v3, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 221
    .line 222
    .line 223
    invoke-static {v1}, Lx0/j0;->k(Landroid/view/View;)V

    .line 224
    .line 225
    .line 226
    return-void
.end method

.method public final d(ZF)V
    .locals 12

    .line 1
    iget-object v0, p0, Lg7/b;->A:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lg7/b;->d:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    iget-object v1, p0, Lg7/b;->c:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    .line 22
    sub-float v3, p2, v2

    .line 23
    .line 24
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    const v5, 0x3727c5ac    # 1.0E-5f

    .line 30
    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    cmpg-float v3, v3, v5

    .line 34
    .line 35
    if-gez v3, :cond_1

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, 0x0

    .line 40
    :goto_0
    const/4 v7, 0x0

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    iget p1, p0, Lg7/b;->i:F

    .line 44
    .line 45
    iget p2, p0, Lg7/b;->X:F

    .line 46
    .line 47
    iput v2, p0, Lg7/b;->H:F

    .line 48
    .line 49
    iget-object v1, p0, Lg7/b;->r:Landroid/graphics/Typeface;

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_2
    iget v3, p0, Lg7/b;->h:F

    .line 53
    .line 54
    iget v8, p0, Lg7/b;->Y:F

    .line 55
    .line 56
    iget-object v9, p0, Lg7/b;->u:Landroid/graphics/Typeface;

    .line 57
    .line 58
    sub-float v10, p2, v7

    .line 59
    .line 60
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    cmpg-float v5, v10, v5

    .line 65
    .line 66
    if-gez v5, :cond_3

    .line 67
    .line 68
    iput v2, p0, Lg7/b;->H:F

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    iget v5, p0, Lg7/b;->h:F

    .line 72
    .line 73
    iget v10, p0, Lg7/b;->i:F

    .line 74
    .line 75
    iget-object v11, p0, Lg7/b;->S:Landroid/view/animation/LinearInterpolator;

    .line 76
    .line 77
    invoke-static {v5, v10, p2, v11}, Lg7/b;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    iget v5, p0, Lg7/b;->h:F

    .line 82
    .line 83
    div-float/2addr p2, v5

    .line 84
    iput p2, p0, Lg7/b;->H:F

    .line 85
    .line 86
    :goto_1
    iget p2, p0, Lg7/b;->i:F

    .line 87
    .line 88
    iget v5, p0, Lg7/b;->h:F

    .line 89
    .line 90
    div-float/2addr p2, v5

    .line 91
    mul-float v5, v1, p2

    .line 92
    .line 93
    if-nez p1, :cond_4

    .line 94
    .line 95
    cmpl-float p1, v5, v0

    .line 96
    .line 97
    if-lez p1, :cond_4

    .line 98
    .line 99
    div-float/2addr v0, p2

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    move v0, p1

    .line 105
    :goto_2
    move p1, v3

    .line 106
    move p2, v8

    .line 107
    move-object v1, v9

    .line 108
    goto :goto_3

    .line 109
    :cond_4
    move v0, v1

    .line 110
    goto :goto_2

    .line 111
    :goto_3
    iget-object v3, p0, Lg7/b;->P:Landroid/text/TextPaint;

    .line 112
    .line 113
    cmpl-float v5, v0, v7

    .line 114
    .line 115
    if-lez v5, :cond_c

    .line 116
    .line 117
    iget v5, p0, Lg7/b;->I:F

    .line 118
    .line 119
    cmpl-float v5, v5, p1

    .line 120
    .line 121
    if-eqz v5, :cond_5

    .line 122
    .line 123
    const/4 v5, 0x1

    .line 124
    goto :goto_4

    .line 125
    :cond_5
    const/4 v5, 0x0

    .line 126
    :goto_4
    iget v7, p0, Lg7/b;->Z:F

    .line 127
    .line 128
    cmpl-float v7, v7, p2

    .line 129
    .line 130
    if-eqz v7, :cond_6

    .line 131
    .line 132
    const/4 v7, 0x1

    .line 133
    goto :goto_5

    .line 134
    :cond_6
    const/4 v7, 0x0

    .line 135
    :goto_5
    iget-object v8, p0, Lg7/b;->x:Landroid/graphics/Typeface;

    .line 136
    .line 137
    if-eq v8, v1, :cond_7

    .line 138
    .line 139
    const/4 v8, 0x1

    .line 140
    goto :goto_6

    .line 141
    :cond_7
    const/4 v8, 0x0

    .line 142
    :goto_6
    iget-object v9, p0, Lg7/b;->a0:Landroid/text/StaticLayout;

    .line 143
    .line 144
    if-eqz v9, :cond_8

    .line 145
    .line 146
    invoke-virtual {v9}, Landroid/text/Layout;->getWidth()I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    int-to-float v9, v9

    .line 151
    cmpl-float v9, v0, v9

    .line 152
    .line 153
    if-eqz v9, :cond_8

    .line 154
    .line 155
    const/4 v9, 0x1

    .line 156
    goto :goto_7

    .line 157
    :cond_8
    const/4 v9, 0x0

    .line 158
    :goto_7
    if-nez v5, :cond_a

    .line 159
    .line 160
    if-nez v7, :cond_a

    .line 161
    .line 162
    if-nez v9, :cond_a

    .line 163
    .line 164
    if-nez v8, :cond_a

    .line 165
    .line 166
    iget-boolean v5, p0, Lg7/b;->O:Z

    .line 167
    .line 168
    if-eqz v5, :cond_9

    .line 169
    .line 170
    goto :goto_8

    .line 171
    :cond_9
    const/4 v5, 0x0

    .line 172
    goto :goto_9

    .line 173
    :cond_a
    :goto_8
    const/4 v5, 0x1

    .line 174
    :goto_9
    iput p1, p0, Lg7/b;->I:F

    .line 175
    .line 176
    iput p2, p0, Lg7/b;->Z:F

    .line 177
    .line 178
    iput-object v1, p0, Lg7/b;->x:Landroid/graphics/Typeface;

    .line 179
    .line 180
    iput-boolean v4, p0, Lg7/b;->O:Z

    .line 181
    .line 182
    iget p1, p0, Lg7/b;->H:F

    .line 183
    .line 184
    cmpl-float p1, p1, v2

    .line 185
    .line 186
    if-eqz p1, :cond_b

    .line 187
    .line 188
    const/4 p1, 0x1

    .line 189
    goto :goto_a

    .line 190
    :cond_b
    const/4 p1, 0x0

    .line 191
    :goto_a
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 192
    .line 193
    .line 194
    goto :goto_b

    .line 195
    :cond_c
    const/4 v5, 0x0

    .line 196
    :goto_b
    iget-object p1, p0, Lg7/b;->B:Ljava/lang/CharSequence;

    .line 197
    .line 198
    if-eqz p1, :cond_d

    .line 199
    .line 200
    if-eqz v5, :cond_16

    .line 201
    .line 202
    :cond_d
    iget p1, p0, Lg7/b;->I:F

    .line 203
    .line 204
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lg7/b;->x:Landroid/graphics/Typeface;

    .line 208
    .line 209
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 210
    .line 211
    .line 212
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 213
    .line 214
    const/16 p2, 0x15

    .line 215
    .line 216
    if-lt p1, p2, :cond_e

    .line 217
    .line 218
    iget p1, p0, Lg7/b;->Z:F

    .line 219
    .line 220
    invoke-static {v3, p1}, Ld2/a;->r(Landroid/text/TextPaint;F)V

    .line 221
    .line 222
    .line 223
    :cond_e
    iget-object p1, p0, Lg7/b;->A:Ljava/lang/CharSequence;

    .line 224
    .line 225
    invoke-virtual {p0, p1}, Lg7/b;->b(Ljava/lang/CharSequence;)Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    iput-boolean p1, p0, Lg7/b;->C:Z

    .line 230
    .line 231
    iget p2, p0, Lg7/b;->f0:I

    .line 232
    .line 233
    if-le p2, v6, :cond_10

    .line 234
    .line 235
    if-eqz p1, :cond_f

    .line 236
    .line 237
    goto :goto_c

    .line 238
    :cond_f
    iget-boolean v1, p0, Lg7/b;->E:Z

    .line 239
    .line 240
    if-nez v1, :cond_10

    .line 241
    .line 242
    goto :goto_d

    .line 243
    :cond_10
    :goto_c
    const/4 p2, 0x1

    .line 244
    :goto_d
    if-ne p2, v6, :cond_11

    .line 245
    .line 246
    :try_start_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 247
    .line 248
    goto :goto_e

    .line 249
    :catch_0
    move-exception p1

    .line 250
    goto :goto_f

    .line 251
    :cond_11
    iget v1, p0, Lg7/b;->f:I

    .line 252
    .line 253
    invoke-static {v1, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    and-int/lit8 v1, v1, 0x7

    .line 258
    .line 259
    if-eq v1, v6, :cond_15

    .line 260
    .line 261
    const/4 v2, 0x5

    .line 262
    if-eq v1, v2, :cond_13

    .line 263
    .line 264
    iget-boolean v1, p0, Lg7/b;->C:Z

    .line 265
    .line 266
    if-eqz v1, :cond_12

    .line 267
    .line 268
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 269
    .line 270
    goto :goto_e

    .line 271
    :cond_12
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 272
    .line 273
    goto :goto_e

    .line 274
    :cond_13
    iget-boolean v1, p0, Lg7/b;->C:Z

    .line 275
    .line 276
    if-eqz v1, :cond_14

    .line 277
    .line 278
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 279
    .line 280
    goto :goto_e

    .line 281
    :cond_14
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 282
    .line 283
    goto :goto_e

    .line 284
    :cond_15
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 285
    .line 286
    :goto_e
    iget-object v2, p0, Lg7/b;->A:Ljava/lang/CharSequence;

    .line 287
    .line 288
    float-to-int v0, v0

    .line 289
    new-instance v5, Lg7/h;

    .line 290
    .line 291
    invoke-direct {v5, v2, v3, v0}, Lg7/h;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    .line 292
    .line 293
    .line 294
    iget-object v0, p0, Lg7/b;->z:Landroid/text/TextUtils$TruncateAt;

    .line 295
    .line 296
    iput-object v0, v5, Lg7/h;->k:Landroid/text/TextUtils$TruncateAt;

    .line 297
    .line 298
    iput-boolean p1, v5, Lg7/h;->j:Z

    .line 299
    .line 300
    iput-object v1, v5, Lg7/h;->e:Landroid/text/Layout$Alignment;

    .line 301
    .line 302
    iput-boolean v4, v5, Lg7/h;->i:Z

    .line 303
    .line 304
    iput p2, v5, Lg7/h;->f:I

    .line 305
    .line 306
    iget p1, p0, Lg7/b;->g0:F

    .line 307
    .line 308
    iput p1, v5, Lg7/h;->g:F

    .line 309
    .line 310
    iget p1, p0, Lg7/b;->h0:I

    .line 311
    .line 312
    iput p1, v5, Lg7/h;->h:I

    .line 313
    .line 314
    invoke-virtual {v5}, Lg7/h;->a()Landroid/text/StaticLayout;

    .line 315
    .line 316
    .line 317
    move-result-object p1
    :try_end_0
    .catch Lg7/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    goto :goto_10

    .line 319
    :goto_f
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    const/4 p1, 0x0

    .line 327
    :goto_10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    iput-object p1, p0, Lg7/b;->a0:Landroid/text/StaticLayout;

    .line 331
    .line 332
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    iput-object p1, p0, Lg7/b;->B:Ljava/lang/CharSequence;

    .line 337
    .line 338
    :cond_16
    return-void
.end method

.method public final e()F
    .locals 3

    .line 1
    iget-object v0, p0, Lg7/b;->Q:Landroid/text/TextPaint;

    .line 2
    .line 3
    iget v1, p0, Lg7/b;->i:F

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lg7/b;->r:Landroid/graphics/Typeface;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 11
    .line 12
    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x15

    .line 16
    .line 17
    if-lt v1, v2, :cond_0

    .line 18
    .line 19
    iget v1, p0, Lg7/b;->X:F

    .line 20
    .line 21
    invoke-static {v0, v1}, Ld2/a;->r(Landroid/text/TextPaint;F)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    neg-float v0, v0

    .line 29
    return v0
.end method

.method public final f(Landroid/content/res/ColorStateList;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lg7/b;->N:[I

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final h(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lg7/b;->t:Landroid/graphics/Typeface;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1, v0}, Ld/b;->X(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lg7/b;->s:Landroid/graphics/Typeface;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lg7/b;->w:Landroid/graphics/Typeface;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-static {p1, v0}, Ld/b;->X(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lg7/b;->v:Landroid/graphics/Typeface;

    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lg7/b;->s:Landroid/graphics/Typeface;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object p1, p0, Lg7/b;->t:Landroid/graphics/Typeface;

    .line 33
    .line 34
    :goto_0
    iput-object p1, p0, Lg7/b;->r:Landroid/graphics/Typeface;

    .line 35
    .line 36
    iget-object p1, p0, Lg7/b;->v:Landroid/graphics/Typeface;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget-object p1, p0, Lg7/b;->w:Landroid/graphics/Typeface;

    .line 42
    .line 43
    :goto_1
    iput-object p1, p0, Lg7/b;->u:Landroid/graphics/Typeface;

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Lg7/b;->i(Z)V

    .line 47
    .line 48
    .line 49
    :cond_4
    return-void
.end method

.method public final i(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lg7/b;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gtz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    if-eqz p1, :cond_11

    .line 16
    .line 17
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lg7/b;->d(ZF)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lg7/b;->B:Ljava/lang/CharSequence;

    .line 23
    .line 24
    iget-object v1, p0, Lg7/b;->P:Landroid/text/TextPaint;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v2, p0, Lg7/b;->a0:Landroid/text/StaticLayout;

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    int-to-float v2, v2

    .line 37
    iget-object v3, p0, Lg7/b;->z:Landroid/text/TextUtils$TruncateAt;

    .line 38
    .line 39
    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lg7/b;->e0:Ljava/lang/CharSequence;

    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lg7/b;->e0:Ljava/lang/CharSequence;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {v1, v0, v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Lg7/b;->b0:F

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iput v3, p0, Lg7/b;->b0:F

    .line 63
    .line 64
    :goto_0
    iget v0, p0, Lg7/b;->g:I

    .line 65
    .line 66
    iget-boolean v4, p0, Lg7/b;->C:Z

    .line 67
    .line 68
    invoke-static {v0, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    and-int/lit8 v4, v0, 0x70

    .line 73
    .line 74
    const/16 v5, 0x50

    .line 75
    .line 76
    const/16 v6, 0x30

    .line 77
    .line 78
    const/high16 v7, 0x40000000    # 2.0f

    .line 79
    .line 80
    iget-object v8, p0, Lg7/b;->d:Landroid/graphics/Rect;

    .line 81
    .line 82
    if-eq v4, v6, :cond_5

    .line 83
    .line 84
    if-eq v4, v5, :cond_4

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    sub-float/2addr v4, v9

    .line 95
    div-float/2addr v4, v7

    .line 96
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    int-to-float v9, v9

    .line 101
    sub-float/2addr v9, v4

    .line 102
    iput v9, p0, Lg7/b;->m:F

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    .line 106
    .line 107
    int-to-float v4, v4

    .line 108
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    add-float/2addr v9, v4

    .line 113
    iput v9, p0, Lg7/b;->m:F

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    iget v4, v8, Landroid/graphics/Rect;->top:I

    .line 117
    .line 118
    int-to-float v4, v4

    .line 119
    iput v4, p0, Lg7/b;->m:F

    .line 120
    .line 121
    :goto_1
    const v4, 0x800007

    .line 122
    .line 123
    .line 124
    and-int/2addr v0, v4

    .line 125
    const/4 v9, 0x5

    .line 126
    const/4 v10, 0x1

    .line 127
    if-eq v0, v10, :cond_7

    .line 128
    .line 129
    if-eq v0, v9, :cond_6

    .line 130
    .line 131
    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 132
    .line 133
    int-to-float v0, v0

    .line 134
    iput v0, p0, Lg7/b;->o:F

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    iget v0, v8, Landroid/graphics/Rect;->right:I

    .line 138
    .line 139
    int-to-float v0, v0

    .line 140
    iget v8, p0, Lg7/b;->b0:F

    .line 141
    .line 142
    sub-float/2addr v0, v8

    .line 143
    iput v0, p0, Lg7/b;->o:F

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_7
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    int-to-float v0, v0

    .line 151
    iget v8, p0, Lg7/b;->b0:F

    .line 152
    .line 153
    div-float/2addr v8, v7

    .line 154
    sub-float/2addr v0, v8

    .line 155
    iput v0, p0, Lg7/b;->o:F

    .line 156
    .line 157
    :goto_2
    invoke-virtual {p0, p1, v3}, Lg7/b;->d(ZF)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lg7/b;->a0:Landroid/text/StaticLayout;

    .line 161
    .line 162
    if-eqz p1, :cond_8

    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    int-to-float p1, p1

    .line 169
    goto :goto_3

    .line 170
    :cond_8
    const/4 p1, 0x0

    .line 171
    :goto_3
    iget-object v0, p0, Lg7/b;->a0:Landroid/text/StaticLayout;

    .line 172
    .line 173
    if-eqz v0, :cond_9

    .line 174
    .line 175
    iget v8, p0, Lg7/b;->f0:I

    .line 176
    .line 177
    if-le v8, v10, :cond_9

    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    int-to-float v3, v0

    .line 184
    goto :goto_4

    .line 185
    :cond_9
    iget-object v0, p0, Lg7/b;->B:Ljava/lang/CharSequence;

    .line 186
    .line 187
    if-eqz v0, :cond_a

    .line 188
    .line 189
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    :cond_a
    :goto_4
    iget-object v0, p0, Lg7/b;->a0:Landroid/text/StaticLayout;

    .line 198
    .line 199
    if-eqz v0, :cond_b

    .line 200
    .line 201
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    .line 202
    .line 203
    .line 204
    :cond_b
    iget v0, p0, Lg7/b;->f:I

    .line 205
    .line 206
    iget-boolean v2, p0, Lg7/b;->C:Z

    .line 207
    .line 208
    invoke-static {v0, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    and-int/lit8 v2, v0, 0x70

    .line 213
    .line 214
    iget-object v8, p0, Lg7/b;->c:Landroid/graphics/Rect;

    .line 215
    .line 216
    if-eq v2, v6, :cond_d

    .line 217
    .line 218
    if-eq v2, v5, :cond_c

    .line 219
    .line 220
    div-float/2addr p1, v7

    .line 221
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    int-to-float v1, v1

    .line 226
    sub-float/2addr v1, p1

    .line 227
    iput v1, p0, Lg7/b;->l:F

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_c
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 231
    .line 232
    int-to-float v2, v2

    .line 233
    sub-float/2addr v2, p1

    .line 234
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    add-float/2addr p1, v2

    .line 239
    iput p1, p0, Lg7/b;->l:F

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_d
    iget p1, v8, Landroid/graphics/Rect;->top:I

    .line 243
    .line 244
    int-to-float p1, p1

    .line 245
    iput p1, p0, Lg7/b;->l:F

    .line 246
    .line 247
    :goto_5
    and-int p1, v0, v4

    .line 248
    .line 249
    if-eq p1, v10, :cond_f

    .line 250
    .line 251
    if-eq p1, v9, :cond_e

    .line 252
    .line 253
    iget p1, v8, Landroid/graphics/Rect;->left:I

    .line 254
    .line 255
    int-to-float p1, p1

    .line 256
    iput p1, p0, Lg7/b;->n:F

    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_e
    iget p1, v8, Landroid/graphics/Rect;->right:I

    .line 260
    .line 261
    int-to-float p1, p1

    .line 262
    sub-float/2addr p1, v3

    .line 263
    iput p1, p0, Lg7/b;->n:F

    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_f
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    int-to-float p1, p1

    .line 271
    div-float/2addr v3, v7

    .line 272
    sub-float/2addr p1, v3

    .line 273
    iput p1, p0, Lg7/b;->n:F

    .line 274
    .line 275
    :goto_6
    iget-object p1, p0, Lg7/b;->F:Landroid/graphics/Bitmap;

    .line 276
    .line 277
    if-eqz p1, :cond_10

    .line 278
    .line 279
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 280
    .line 281
    .line 282
    const/4 p1, 0x0

    .line 283
    iput-object p1, p0, Lg7/b;->F:Landroid/graphics/Bitmap;

    .line 284
    .line 285
    :cond_10
    iget p1, p0, Lg7/b;->b:F

    .line 286
    .line 287
    invoke-virtual {p0, p1}, Lg7/b;->m(F)V

    .line 288
    .line 289
    .line 290
    iget p1, p0, Lg7/b;->b:F

    .line 291
    .line 292
    invoke-virtual {p0, p1}, Lg7/b;->c(F)V

    .line 293
    .line 294
    .line 295
    :cond_11
    return-void
.end method

.method public final j(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg7/b;->k:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lg7/b;->j:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    if-eq v0, p1, :cond_1

    .line 8
    .line 9
    :cond_0
    iput-object p1, p0, Lg7/b;->k:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    iput-object p1, p0, Lg7/b;->j:Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lg7/b;->i(Z)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final k(Landroid/graphics/Typeface;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lg7/b;->y:Lj7/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, v0, Lj7/a;->g:Z

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lg7/b;->t:Landroid/graphics/Typeface;

    .line 9
    .line 10
    if-eq v0, p1, :cond_2

    .line 11
    .line 12
    iput-object p1, p0, Lg7/b;->t:Landroid/graphics/Typeface;

    .line 13
    .line 14
    iget-object v0, p0, Lg7/b;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Ld/b;->X(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lg7/b;->s:Landroid/graphics/Typeface;

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lg7/b;->t:Landroid/graphics/Typeface;

    .line 37
    .line 38
    :cond_1
    iput-object p1, p0, Lg7/b;->r:Landroid/graphics/Typeface;

    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method public final l(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-gez v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    cmpl-float v1, p1, v0

    .line 11
    .line 12
    if-lez v1, :cond_1

    .line 13
    .line 14
    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    .line 16
    :cond_1
    :goto_0
    iget v0, p0, Lg7/b;->b:F

    .line 17
    .line 18
    cmpl-float v0, p1, v0

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iput p1, p0, Lg7/b;->b:F

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lg7/b;->c(F)V

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method

.method public final m(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lg7/b;->d(ZF)V

    .line 3
    .line 4
    .line 5
    sget-boolean p1, Lg7/b;->i0:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lg7/b;->H:F

    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    cmpl-float p1, p1, v1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    :cond_0
    iput-boolean v0, p0, Lg7/b;->E:Z

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-object p1, p0, Lg7/b;->F:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    if-nez p1, :cond_3

    .line 25
    .line 26
    iget-object p1, p0, Lg7/b;->c:Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    iget-object p1, p0, Lg7/b;->B:Ljava/lang/CharSequence;

    .line 35
    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lg7/b;->c(F)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lg7/b;->a0:Landroid/text/StaticLayout;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iget-object v0, p0, Lg7/b;->a0:Landroid/text/StaticLayout;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-lez p1, :cond_3

    .line 60
    .line 61
    if-gtz v0, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 65
    .line 66
    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lg7/b;->F:Landroid/graphics/Bitmap;

    .line 71
    .line 72
    new-instance p1, Landroid/graphics/Canvas;

    .line 73
    .line 74
    iget-object v0, p0, Lg7/b;->F:Landroid/graphics/Bitmap;

    .line 75
    .line 76
    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lg7/b;->a0:Landroid/text/StaticLayout;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lg7/b;->G:Landroid/graphics/Paint;

    .line 85
    .line 86
    if-nez p1, :cond_3

    .line 87
    .line 88
    new-instance p1, Landroid/graphics/Paint;

    .line 89
    .line 90
    const/4 v0, 0x3

    .line 91
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lg7/b;->G:Landroid/graphics/Paint;

    .line 95
    .line 96
    :cond_3
    :goto_0
    sget-object p1, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 97
    .line 98
    iget-object p1, p0, Lg7/b;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 99
    .line 100
    invoke-static {p1}, Lx0/j0;->k(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final n(Landroid/graphics/Typeface;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lg7/b;->k(Landroid/graphics/Typeface;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lg7/b;->w:Landroid/graphics/Typeface;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq v1, p1, :cond_1

    .line 9
    .line 10
    iput-object p1, p0, Lg7/b;->w:Landroid/graphics/Typeface;

    .line 11
    .line 12
    iget-object v1, p0, Lg7/b;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1, p1}, Ld/b;->X(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lg7/b;->v:Landroid/graphics/Typeface;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lg7/b;->w:Landroid/graphics/Typeface;

    .line 35
    .line 36
    :cond_0
    iput-object p1, p0, Lg7/b;->u:Landroid/graphics/Typeface;

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    :goto_0
    if-nez v0, :cond_2

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0, v2}, Lg7/b;->i(Z)V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method
