.class public final Lwa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:[I


# instance fields
.field public final a:Lcom/yunpan/appmanage/service/AccService;

.field public final b:Landroid/view/WindowManager;

.field public final c:Ljava/util/Random;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/animation/ValueAnimator;

.field public f:Lai/a;

.field public g:Z

.field public h:I

.field public i:I

.field public j:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lwa/a;->k:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        -0x1ae3dd
        -0x16e19d
        -0x63d850
        -0x98c549
        -0xc0ae4b
        -0xa98804
        -0xfc560c
        -0xff432c
        -0xff6978
        -0xda64dc
        -0x743cb6
        -0x3223c7
        -0x14c5
        -0x3ef9
        -0x6800
        -0xa8de
    .end array-data
.end method

.method public constructor <init>(Lcom/yunpan/appmanage/service/AccService;Landroid/view/WindowManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Random;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lwa/a;->c:Ljava/util/Random;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lwa/a;->h:I

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lwa/a;->i:I

    .line 16
    .line 17
    iput-object p1, p0, Lwa/a;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 18
    .line 19
    iput-object p2, p0, Lwa/a;->b:Landroid/view/WindowManager;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/WindowManager$LayoutParams;
    .locals 13

    .line 1
    iget-object v0, p0, Lwa/a;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 4
    .line 5
    iget-object v1, v1, Ly3/a;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 8
    .line 9
    iget v2, v1, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->top:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    iget v2, v1, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->bottom:I

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    iget v2, v1, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->left:I

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    iget v1, v1, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->right:I

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 31
    :goto_1
    invoke-static {v0}, Lif/a;->R(Landroid/content/Context;)Landroid/graphics/Point;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v5, p0, Lwa/a;->f:Lai/a;

    .line 36
    .line 37
    iget v6, v2, Landroid/graphics/Point;->x:I

    .line 38
    .line 39
    iget v7, v2, Landroid/graphics/Point;->y:I

    .line 40
    .line 41
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    div-int/lit8 v6, v6, 0x8

    .line 46
    .line 47
    iput v6, v5, Lai/a;->a:I

    .line 48
    .line 49
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    .line 50
    .line 51
    iget v6, v2, Landroid/graphics/Point;->x:I

    .line 52
    .line 53
    iget v7, v2, Landroid/graphics/Point;->y:I

    .line 54
    .line 55
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    div-int/lit8 v8, v6, 0x20

    .line 60
    .line 61
    iget v6, v2, Landroid/graphics/Point;->y:I

    .line 62
    .line 63
    add-int/lit8 v9, v6, -0x3c

    .line 64
    .line 65
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    .line 67
    const/16 v7, 0x16

    .line 68
    .line 69
    if-lt v6, v7, :cond_2

    .line 70
    .line 71
    const/16 v7, 0x7f0

    .line 72
    .line 73
    const/16 v10, 0x7f0

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    const/16 v7, 0x7d2

    .line 77
    .line 78
    const/16 v10, 0x7d2

    .line 79
    .line 80
    :goto_2
    const/16 v11, 0x318

    .line 81
    .line 82
    const/4 v12, -0x3

    .line 83
    move-object v7, v5

    .line 84
    invoke-direct/range {v7 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 85
    .line 86
    .line 87
    const/16 v7, 0x1c

    .line 88
    .line 89
    if-lt v6, v7, :cond_3

    .line 90
    .line 91
    invoke-static {v5}, Landroidx/emoji2/text/b;->x(Landroid/view/WindowManager$LayoutParams;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    iget v6, p0, Lwa/a;->h:I

    .line 95
    .line 96
    const/16 v7, 0x1e

    .line 97
    .line 98
    if-nez v6, :cond_6

    .line 99
    .line 100
    const v2, 0x800033

    .line 101
    .line 102
    .line 103
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 104
    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    iget-object v2, v0, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 108
    .line 109
    iget-object v2, v2, Ly3/a;->d:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v2, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 112
    .line 113
    iget v2, v2, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->left:I

    .line 114
    .line 115
    neg-int v4, v2

    .line 116
    :cond_4
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 117
    .line 118
    if-eqz v1, :cond_5

    .line 119
    .line 120
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 121
    .line 122
    iget-object v0, v0, Ly3/a;->d:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v0, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 125
    .line 126
    iget v0, v0, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->top:I

    .line 127
    .line 128
    sub-int/2addr v7, v0

    .line 129
    :cond_5
    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_6
    if-ne v6, v3, :cond_9

    .line 133
    .line 134
    const v2, 0x800035

    .line 135
    .line 136
    .line 137
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 138
    .line 139
    if-eqz v1, :cond_7

    .line 140
    .line 141
    iget-object v2, v0, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 142
    .line 143
    iget-object v2, v2, Ly3/a;->d:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v2, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 146
    .line 147
    iget v2, v2, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->right:I

    .line 148
    .line 149
    neg-int v4, v2

    .line 150
    :cond_7
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 151
    .line 152
    if-eqz v1, :cond_8

    .line 153
    .line 154
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 155
    .line 156
    iget-object v0, v0, Ly3/a;->d:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v0, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 159
    .line 160
    iget v0, v0, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->top:I

    .line 161
    .line 162
    sub-int/2addr v7, v0

    .line 163
    :cond_8
    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_9
    const/4 v3, 0x2

    .line 167
    if-ne v6, v3, :cond_c

    .line 168
    .line 169
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 170
    .line 171
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 172
    .line 173
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 174
    .line 175
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    div-int/lit8 v2, v2, 0x20

    .line 180
    .line 181
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 182
    .line 183
    const v2, 0x800053

    .line 184
    .line 185
    .line 186
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 187
    .line 188
    if-eqz v1, :cond_a

    .line 189
    .line 190
    iget-object v2, v0, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 191
    .line 192
    iget-object v2, v2, Ly3/a;->d:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v2, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 195
    .line 196
    iget v2, v2, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->left:I

    .line 197
    .line 198
    neg-int v2, v2

    .line 199
    goto :goto_3

    .line 200
    :cond_a
    const/4 v2, 0x0

    .line 201
    :goto_3
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 202
    .line 203
    if-eqz v1, :cond_b

    .line 204
    .line 205
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 206
    .line 207
    iget-object v0, v0, Ly3/a;->d:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v0, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 210
    .line 211
    iget v0, v0, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->bottom:I

    .line 212
    .line 213
    neg-int v4, v0

    .line 214
    :cond_b
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 215
    .line 216
    :cond_c
    :goto_4
    return-object v5
.end method

.method public final b()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-boolean v1, p0, Lwa/a;->g:Z

    .line 3
    .line 4
    if-eqz v1, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Lwa/a;->d:Landroid/widget/ImageView;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lwa/a;->f:Lai/a;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lwa/a;->e:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget v1, p0, Lwa/a;->j:F

    .line 23
    .line 24
    new-array v2, v0, [F

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    aput v1, v2, v3

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    aput v1, v2, v3

    .line 32
    .line 33
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lwa/a;->e:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    iget-object v2, p0, Lwa/a;->f:Lai/a;

    .line 40
    .line 41
    iget-wide v2, v2, Lai/a;->b:J

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lwa/a;->e:Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    new-instance v2, Lq7/i;

    .line 49
    .line 50
    invoke-direct {v2, v0, p0}, Lq7/i;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lwa/a;->e:Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    new-instance v1, Lh4/q;

    .line 59
    .line 60
    const/4 v2, 0x6

    .line 61
    invoke-direct {v1, v2, p0}, Lh4/q;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lwa/a;->e:Landroid/animation/ValueAnimator;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lwa/a;->d()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final c(I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lwa/a;->d()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lai/a;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, v1}, Lai/a;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lwa/a;->f:Lai/a;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    if-eq p1, v1, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-ne p1, v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 25
    :goto_1
    if-eqz v2, :cond_2

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    const/4 p1, 0x0

    .line 29
    :goto_2
    iput p1, p0, Lwa/a;->h:I

    .line 30
    .line 31
    sget-object p1, Lwa/a;->k:[I

    .line 32
    .line 33
    iget-object v2, p0, Lwa/a;->c:Ljava/util/Random;

    .line 34
    .line 35
    const/16 v3, 0x10

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    aget p1, p1, v2

    .line 42
    .line 43
    iput p1, p0, Lwa/a;->i:I

    .line 44
    .line 45
    iget p1, p0, Lwa/a;->h:I

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    const p1, 0x7f0800d0

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    if-ne p1, v1, :cond_4

    .line 54
    .line 55
    const p1, 0x7f0800d1

    .line 56
    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_4
    const p1, 0x7f0800cf

    .line 60
    .line 61
    .line 62
    :goto_3
    const/4 v2, 0x0

    .line 63
    iget-object v3, p0, Lwa/a;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 64
    .line 65
    if-nez p1, :cond_5

    .line 66
    .line 67
    :goto_4
    move-object p1, v2

    .line 68
    goto :goto_6

    .line 69
    :cond_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    .line 71
    const/16 v5, 0x15

    .line 72
    .line 73
    if-lt v4, v5, :cond_6

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-static {v6, p1}, Lua/t7;->g(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    goto :goto_5

    .line 84
    :cond_6
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_5
    if-nez p1, :cond_7

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_7
    iget v6, p0, Lwa/a;->i:I

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    .line 100
    if-lt v4, v5, :cond_8

    .line 101
    .line 102
    invoke-static {p1, v6}, Lm0/o;->l(Landroid/graphics/drawable/Drawable;I)V

    .line 103
    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_8
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    .line 107
    .line 108
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 109
    .line 110
    invoke-direct {v4, v6, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 114
    .line 115
    .line 116
    :goto_6
    const/4 v4, 0x0

    .line 117
    if-nez p1, :cond_9

    .line 118
    .line 119
    iput-object v2, p0, Lwa/a;->d:Landroid/widget/ImageView;

    .line 120
    .line 121
    goto :goto_7

    .line 122
    :cond_9
    new-instance v5, Landroid/widget/ImageView;

    .line 123
    .line 124
    invoke-direct {v5, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 125
    .line 126
    .line 127
    iput-object v5, p0, Lwa/a;->d:Landroid/widget/ImageView;

    .line 128
    .line 129
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 130
    .line 131
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 132
    .line 133
    .line 134
    iget-object v3, p0, Lwa/a;->d:Landroid/widget/ImageView;

    .line 135
    .line 136
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lwa/a;->d:Landroid/widget/ImageView;

    .line 140
    .line 141
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 142
    .line 143
    .line 144
    :goto_7
    iget-object p1, p0, Lwa/a;->d:Landroid/widget/ImageView;

    .line 145
    .line 146
    if-nez p1, :cond_a

    .line 147
    .line 148
    return-void

    .line 149
    :cond_a
    :try_start_0
    invoke-virtual {p0}, Lwa/a;->a()Landroid/view/WindowManager$LayoutParams;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget-object v3, p0, Lwa/a;->b:Landroid/view/WindowManager;

    .line 154
    .line 155
    iget-object v5, p0, Lwa/a;->d:Landroid/widget/ImageView;

    .line 156
    .line 157
    invoke-interface {v3, v5, p1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    .line 159
    .line 160
    iput-boolean v1, p0, Lwa/a;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    goto :goto_8

    .line 163
    :catch_0
    iput-boolean v0, p0, Lwa/a;->g:Z

    .line 164
    .line 165
    iput-object v2, p0, Lwa/a;->d:Landroid/widget/ImageView;

    .line 166
    .line 167
    :goto_8
    invoke-virtual {p0, v4}, Lwa/a;->e(F)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lwa/a;->e:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lwa/a;->e:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lwa/a;->g:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    :try_start_0
    iget-object v0, p0, Lwa/a;->d:Landroid/widget/ImageView;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lwa/a;->b:Landroid/view/WindowManager;

    .line 26
    .line 27
    iget-object v2, p0, Lwa/a;->d:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    :catch_0
    :cond_2
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lwa/a;->g:Z

    .line 34
    .line 35
    iput-object v1, p0, Lwa/a;->d:Landroid/widget/ImageView;

    .line 36
    .line 37
    iput-object v1, p0, Lwa/a;->f:Lai/a;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lwa/a;->j:F

    .line 41
    .line 42
    return-void
.end method

.method public final e(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lwa/a;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lwa/a;->d:Landroid/widget/ImageView;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lwa/a;->f:Lai/a;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget v1, v1, Lai/a;->a:I

    .line 15
    .line 16
    int-to-float v1, v1

    .line 17
    cmpl-float v2, p1, v1

    .line 18
    .line 19
    if-ltz v2, :cond_1

    .line 20
    .line 21
    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    div-float/2addr p1, v1

    .line 25
    :goto_0
    iput p1, p0, Lwa/a;->j:F

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_1
    return-void
.end method
