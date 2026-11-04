.class public final Lvb/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/github/rosemoe/sora/widget/CodeEditor;

.field public final b:Landroid/widget/PopupWindow;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/graphics/Paint;

.field public final e:F

.field public f:I

.field public g:I

.field public final h:Lio/github/rosemoe/sora/widget/CodeEditor;

.field public final i:F


# direct methods
.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvb/v;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 5
    .line 6
    new-instance v0, Ldb/p;

    .line 7
    .line 8
    iget-object v1, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ldb/p;-><init>(Ldb/p;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lvb/v;->h:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 14
    .line 15
    new-instance v1, Landroid/widget/PopupWindow;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/widget/PopupWindow;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lvb/v;->b:Landroid/widget/PopupWindow;

    .line 21
    .line 22
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/high16 v3, 0x40800000    # 4.0f

    .line 27
    .line 28
    mul-float v2, v2, v3

    .line 29
    .line 30
    invoke-static {v1, v2}, Lua/t7;->t(Landroid/widget/PopupWindow;F)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const v3, 0x7f0e01c4

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const v3, 0x7f0b01d3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Landroid/widget/ImageView;

    .line 57
    .line 58
    iput-object v3, p0, Lvb/v;->c:Landroid/widget/ImageView;

    .line 59
    .line 60
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/high16 v4, 0x428c0000    # 70.0f

    .line 65
    .line 66
    mul-float v3, v3, v4

    .line 67
    .line 68
    float-to-int v3, v3

    .line 69
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    const/high16 v4, 0x42c80000    # 100.0f

    .line 77
    .line 78
    mul-float v3, v3, v4

    .line 79
    .line 80
    float-to-int v3, v3

    .line 81
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const/4 v3, 0x2

    .line 96
    const/high16 v4, 0x41e00000    # 28.0f

    .line 97
    .line 98
    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    iput v2, p0, Lvb/v;->e:F

    .line 103
    .line 104
    const/high16 v2, 0x3fa00000    # 1.25f

    .line 105
    .line 106
    iput v2, p0, Lvb/v;->i:F

    .line 107
    .line 108
    new-instance v2, Landroid/graphics/Paint;

    .line 109
    .line 110
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v2, p0, Lvb/v;->d:Landroid/graphics/Paint;

    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_0

    .line 124
    .line 125
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget-object p1, p1, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 130
    .line 131
    const/4 v2, 0x4

    .line 132
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    invoke-static {v1, p1}, Lm0/o;->l(Landroid/graphics/drawable/Drawable;I)V

    .line 137
    .line 138
    .line 139
    :cond_0
    new-instance p1, Lua/g5;

    .line 140
    .line 141
    const/16 v1, 0x11

    .line 142
    .line 143
    invoke-direct {p1, v1, p0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    const-class v1, Ldb/c;

    .line 147
    .line 148
    invoke-virtual {v0, v1, p1}, Ldb/p;->e(Ljava/lang/Class;Ldb/n;)Ldb/z;

    .line 149
    .line 150
    .line 151
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lvb/v;->b:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(II)V
    .locals 7

    .line 1
    iget v0, p0, Lvb/v;->f:I

    .line 2
    .line 3
    sub-int v0, p1, v0

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lvb/v;->g:I

    .line 13
    .line 14
    sub-int v0, p2, v0

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lvb/v;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 24
    .line 25
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTextSizePx()F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget v3, p0, Lvb/v;->e:F

    .line 30
    .line 31
    iget-object v4, p0, Lvb/v;->b:Landroid/widget/PopupWindow;

    .line 32
    .line 33
    cmpl-float v2, v2, v3

    .line 34
    .line 35
    if-lez v2, :cond_2

    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lvb/v;->a()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void

    .line 47
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    mul-int/lit8 v2, v2, 0x3

    .line 52
    .line 53
    div-int/lit8 v2, v2, 0x5

    .line 54
    .line 55
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    float-to-int v3, v3

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    mul-int/lit16 v2, v2, 0xfa

    .line 65
    .line 66
    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 67
    .line 68
    .line 69
    iput p1, p0, Lvb/v;->f:I

    .line 70
    .line 71
    iput p2, p0, Lvb/v;->g:I

    .line 72
    .line 73
    new-array v2, v1, [I

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 76
    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    aget v5, v2, v3

    .line 80
    .line 81
    add-int/2addr v5, p1

    .line 82
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    div-int/2addr p1, v1

    .line 87
    sub-int/2addr v5, p1

    .line 88
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    add-int/2addr v1, p1

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    aget v6, v2, v3

    .line 102
    .line 103
    add-int/2addr v5, v6

    .line 104
    if-le v1, v5, :cond_3

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    aget v1, v2, v3

    .line 111
    .line 112
    add-int/2addr p1, v1

    .line 113
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    sub-int/2addr p1, v1

    .line 118
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    :cond_3
    const/4 v1, 0x1

    .line 123
    aget v1, v2, v1

    .line 124
    .line 125
    add-int/2addr v1, p2

    .line 126
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    sub-int/2addr v1, p2

    .line 131
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    sub-int/2addr v1, p2

    .line 136
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_4

    .line 145
    .line 146
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-virtual {v4, p1, p2, v0, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_4
    iget-object v0, p0, Lvb/v;->h:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 159
    .line 160
    const v1, 0x800033

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v0, v1, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 164
    .line 165
    .line 166
    :goto_0
    invoke-virtual {p0}, Lvb/v;->c()V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public final c()V
    .locals 14

    .line 1
    iget-object v0, p0, Lvb/v;->b:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v1, p0, Lvb/v;->i:F

    .line 11
    .line 12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v3, 0x1a

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    iget-object v6, p0, Lvb/v;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 19
    .line 20
    if-lt v2, v3, :cond_7

    .line 21
    .line 22
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    instance-of v3, v2, Landroid/app/Activity;

    .line 27
    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_1
    invoke-static {v6}, Ltb/a;->d(Lio/github/rosemoe/sora/widget/CodeEditor;)Landroid/view/WindowId;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v2, Landroid/app/Activity;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :cond_2
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Lb1/o;->h(Landroid/view/View;)Landroid/view/WindowId;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v3, :cond_7

    .line 55
    .line 56
    invoke-static {v3, v2}, Lb1/o;->r(Landroid/view/WindowId;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_7

    .line 61
    .line 62
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Landroid/app/Activity;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    int-to-float v3, v3

    .line 73
    div-float/2addr v3, v1

    .line 74
    float-to-int v3, v3

    .line 75
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    int-to-float v0, v0

    .line 80
    div-float/2addr v0, v1

    .line 81
    float-to-int v0, v0

    .line 82
    iget v1, p0, Lvb/v;->f:I

    .line 83
    .line 84
    div-int/lit8 v7, v3, 0x2

    .line 85
    .line 86
    sub-int/2addr v1, v7

    .line 87
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    iget v7, p0, Lvb/v;->g:I

    .line 92
    .line 93
    div-int/lit8 v8, v0, 0x2

    .line 94
    .line 95
    sub-int/2addr v7, v8

    .line 96
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    add-int v8, v1, v3

    .line 101
    .line 102
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    add-int v9, v7, v0

    .line 111
    .line 112
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    sub-int v10, v8, v1

    .line 121
    .line 122
    if-ge v10, v3, :cond_3

    .line 123
    .line 124
    sub-int v1, v8, v3

    .line 125
    .line 126
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    :cond_3
    sub-int v3, v9, v7

    .line 131
    .line 132
    if-ge v3, v0, :cond_4

    .line 133
    .line 134
    sub-int v0, v9, v0

    .line 135
    .line 136
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    :cond_4
    sub-int v0, v8, v1

    .line 141
    .line 142
    if-lez v0, :cond_6

    .line 143
    .line 144
    sub-int v3, v9, v7

    .line 145
    .line 146
    if-gtz v3, :cond_5

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_5
    const/4 v10, 0x2

    .line 150
    new-array v10, v10, [I

    .line 151
    .line 152
    invoke-virtual {v6, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 153
    .line 154
    .line 155
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 156
    .line 157
    invoke-static {v0, v3, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    new-instance v3, Landroid/graphics/Rect;

    .line 166
    .line 167
    aget v5, v10, v5

    .line 168
    .line 169
    add-int/2addr v1, v5

    .line 170
    aget v4, v10, v4

    .line 171
    .line 172
    add-int/2addr v7, v4

    .line 173
    add-int/2addr v5, v8

    .line 174
    add-int/2addr v4, v9

    .line 175
    invoke-direct {v3, v1, v7, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 176
    .line 177
    .line 178
    new-instance v1, Lvb/u;

    .line 179
    .line 180
    invoke-direct {v1, p0, v0}, Lvb/u;-><init>(Lvb/v;Landroid/graphics/Bitmap;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-static {v2, v3, v0, v1, v4}, Lvb/t;->g(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Lvb/u;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .line 189
    .line 190
    goto/16 :goto_4

    .line 191
    .line 192
    :catch_0
    nop

    .line 193
    invoke-virtual {p0}, Lvb/v;->a()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-nez v1, :cond_e

    .line 201
    .line 202
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_4

    .line 206
    .line 207
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lvb/v;->a()V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_4

    .line 211
    .line 212
    :cond_7
    :goto_1
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-lez v2, :cond_d

    .line 217
    .line 218
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-gtz v2, :cond_8

    .line 223
    .line 224
    goto/16 :goto_3

    .line 225
    .line 226
    :cond_8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 235
    .line 236
    invoke-static {v2, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    int-to-float v3, v3

    .line 245
    div-float/2addr v3, v1

    .line 246
    float-to-int v3, v3

    .line 247
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 248
    .line 249
    .line 250
    move-result v8

    .line 251
    int-to-float v8, v8

    .line 252
    div-float/2addr v8, v1

    .line 253
    float-to-int v1, v8

    .line 254
    iget v8, p0, Lvb/v;->f:I

    .line 255
    .line 256
    div-int/lit8 v9, v3, 0x2

    .line 257
    .line 258
    sub-int/2addr v8, v9

    .line 259
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    iget v9, p0, Lvb/v;->g:I

    .line 264
    .line 265
    div-int/lit8 v10, v1, 0x2

    .line 266
    .line 267
    sub-int/2addr v9, v10

    .line 268
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    .line 269
    .line 270
    .line 271
    move-result v9

    .line 272
    add-int v10, v8, v3

    .line 273
    .line 274
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 275
    .line 276
    .line 277
    move-result v11

    .line 278
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    .line 279
    .line 280
    .line 281
    move-result v10

    .line 282
    add-int v11, v9, v1

    .line 283
    .line 284
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 285
    .line 286
    .line 287
    move-result v12

    .line 288
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 289
    .line 290
    .line 291
    move-result v11

    .line 292
    sub-int v12, v10, v8

    .line 293
    .line 294
    if-ge v12, v3, :cond_9

    .line 295
    .line 296
    sub-int v8, v10, v3

    .line 297
    .line 298
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    :cond_9
    sub-int v12, v11, v9

    .line 303
    .line 304
    if-ge v12, v1, :cond_a

    .line 305
    .line 306
    sub-int v9, v11, v1

    .line 307
    .line 308
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    .line 309
    .line 310
    .line 311
    move-result v9

    .line 312
    :cond_a
    sub-int/2addr v10, v8

    .line 313
    if-lez v10, :cond_c

    .line 314
    .line 315
    sub-int/2addr v11, v9

    .line 316
    if-gtz v11, :cond_b

    .line 317
    .line 318
    goto :goto_2

    .line 319
    :cond_b
    invoke-static {v3, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    new-instance v3, Landroid/graphics/Canvas;

    .line 324
    .line 325
    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 326
    .line 327
    .line 328
    neg-int v7, v8

    .line 329
    invoke-virtual {v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 330
    .line 331
    .line 332
    move-result v8

    .line 333
    sub-int/2addr v7, v8

    .line 334
    int-to-float v7, v7

    .line 335
    neg-int v8, v9

    .line 336
    invoke-virtual {v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 337
    .line 338
    .line 339
    move-result v9

    .line 340
    sub-int/2addr v8, v9

    .line 341
    int-to-float v8, v8

    .line 342
    invoke-virtual {v3, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v6, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 353
    .line 354
    .line 355
    move-result v7

    .line 356
    invoke-static {v1, v3, v7, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 361
    .line 362
    .line 363
    new-instance v1, Landroid/graphics/Canvas;

    .line 364
    .line 365
    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 366
    .line 367
    .line 368
    iget-object v13, p0, Lvb/v;->d:Landroid/graphics/Paint;

    .line 369
    .line 370
    invoke-virtual {v13}, Landroid/graphics/Paint;->reset()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    int-to-float v8, v4

    .line 384
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    int-to-float v9, v0

    .line 389
    invoke-virtual {v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    const/high16 v4, 0x40c00000    # 6.0f

    .line 394
    .line 395
    mul-float v10, v0, v4

    .line 396
    .line 397
    invoke-virtual {v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    mul-float v11, v0, v4

    .line 402
    .line 403
    move-object v7, v1

    .line 404
    move-object v12, v13

    .line 405
    invoke-static/range {v7 .. v12}, Lua/t7;->m(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 406
    .line 407
    .line 408
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 409
    .line 410
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 411
    .line 412
    invoke-direct {v0, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 416
    .line 417
    .line 418
    const/4 v0, 0x0

    .line 419
    invoke-virtual {v1, v3, v0, v0, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 423
    .line 424
    .line 425
    iget-object v0, p0, Lvb/v;->c:Landroid/widget/ImageView;

    .line 426
    .line 427
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 428
    .line 429
    .line 430
    goto :goto_4

    .line 431
    :cond_c
    :goto_2
    invoke-virtual {p0}, Lvb/v;->a()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 435
    .line 436
    .line 437
    goto :goto_4

    .line 438
    :cond_d
    :goto_3
    invoke-virtual {p0}, Lvb/v;->a()V

    .line 439
    .line 440
    .line 441
    :cond_e
    :goto_4
    return-void
.end method
