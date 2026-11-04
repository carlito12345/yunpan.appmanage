.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static s:Li0/r;


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lf0/e;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:Li0/n;

.field public k:La2/g1;

.field public l:I

.field public m:Ljava/util/HashMap;

.field public final n:Landroid/util/SparseArray;

.field public final p:Li0/f;

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Lf0/e;

    invoke-direct {p1}, Lf0/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lf0/e;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/16 v0, 0x101

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Li0/n;

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:La2/g1;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    .line 16
    new-instance v0, Li0/f;

    invoke-direct {v0, p0, p0}, Li0/f;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Li0/f;

    .line 17
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    .line 18
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 19
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 23
    new-instance p1, Lf0/e;

    invoke-direct {p1}, Lf0/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lf0/e;

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 25
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const v0, 0x7fffffff

    .line 26
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 27
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/16 v0, 0x101

    .line 29
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Li0/n;

    .line 31
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:La2/g1;

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Li0/f;

    invoke-direct {v0, p0, p0}, Li0/f;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Li0/f;

    .line 36
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    .line 37
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 38
    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getPaddingWidth()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    if-lez v1, :cond_0

    .line 37
    .line 38
    move v2, v1

    .line 39
    :cond_0
    return v2
.end method

.method public static getSharedValues()Li0/r;
    .locals 1

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Li0/r;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Li0/r;

    .line 6
    .line 7
    invoke-direct {v0}, Li0/r;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Li0/r;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Li0/r;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Li0/e;

    .line 2
    .line 3
    return p1
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-lez v3, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    if-ge v4, v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Li0/c;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    int-to-float v2, v2

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    int-to-float v3, v3

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/4 v5, 0x0

    .line 53
    :goto_1
    if-ge v5, v4, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const/16 v8, 0x8

    .line 64
    .line 65
    if-ne v7, v8, :cond_1

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    if-eqz v6, :cond_2

    .line 74
    .line 75
    instance-of v7, v6, Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v7, :cond_2

    .line 78
    .line 79
    check-cast v6, Ljava/lang/String;

    .line 80
    .line 81
    const-string v7, ","

    .line 82
    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    array-length v7, v6

    .line 88
    const/4 v8, 0x4

    .line 89
    if-ne v7, v8, :cond_2

    .line 90
    .line 91
    aget-object v7, v6, v1

    .line 92
    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    const/4 v8, 0x1

    .line 98
    aget-object v8, v6, v8

    .line 99
    .line 100
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    const/4 v9, 0x2

    .line 105
    aget-object v9, v6, v9

    .line 106
    .line 107
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    const/4 v10, 0x3

    .line 112
    aget-object v6, v6, v10

    .line 113
    .line 114
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    int-to-float v7, v7

    .line 119
    const/high16 v10, 0x44870000    # 1080.0f

    .line 120
    .line 121
    div-float/2addr v7, v10

    .line 122
    mul-float v7, v7, v2

    .line 123
    .line 124
    float-to-int v7, v7

    .line 125
    int-to-float v8, v8

    .line 126
    const/high16 v11, 0x44f00000    # 1920.0f

    .line 127
    .line 128
    div-float/2addr v8, v11

    .line 129
    mul-float v8, v8, v3

    .line 130
    .line 131
    float-to-int v8, v8

    .line 132
    int-to-float v9, v9

    .line 133
    div-float/2addr v9, v10

    .line 134
    mul-float v9, v9, v2

    .line 135
    .line 136
    float-to-int v9, v9

    .line 137
    int-to-float v6, v6

    .line 138
    div-float/2addr v6, v11

    .line 139
    mul-float v6, v6, v3

    .line 140
    .line 141
    float-to-int v6, v6

    .line 142
    new-instance v15, Landroid/graphics/Paint;

    .line 143
    .line 144
    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 145
    .line 146
    .line 147
    const/high16 v10, -0x10000

    .line 148
    .line 149
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    .line 151
    .line 152
    int-to-float v14, v7

    .line 153
    int-to-float v13, v8

    .line 154
    add-int/2addr v7, v9

    .line 155
    int-to-float v7, v7

    .line 156
    move-object/from16 v10, p1

    .line 157
    .line 158
    move v11, v14

    .line 159
    move v12, v13

    .line 160
    move v9, v13

    .line 161
    move v13, v7

    .line 162
    move/from16 v16, v14

    .line 163
    .line 164
    move v14, v9

    .line 165
    move-object/from16 v17, v15

    .line 166
    .line 167
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 168
    .line 169
    .line 170
    add-int/2addr v8, v6

    .line 171
    int-to-float v6, v8

    .line 172
    move v11, v7

    .line 173
    move v12, v9

    .line 174
    move v14, v6

    .line 175
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 176
    .line 177
    .line 178
    move v12, v6

    .line 179
    move/from16 v13, v16

    .line 180
    .line 181
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 182
    .line 183
    .line 184
    move/from16 v11, v16

    .line 185
    .line 186
    move v14, v9

    .line 187
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 188
    .line 189
    .line 190
    const v8, -0xff0100

    .line 191
    .line 192
    .line 193
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    .line 195
    .line 196
    move v12, v9

    .line 197
    move v13, v7

    .line 198
    move v14, v6

    .line 199
    move-object v8, v15

    .line 200
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 201
    .line 202
    .line 203
    move v12, v6

    .line 204
    move v14, v9

    .line 205
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 206
    .line 207
    .line 208
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 209
    .line 210
    goto/16 :goto_1

    .line 211
    .line 212
    :cond_3
    return-void
.end method

.method public final forceLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final g(Landroid/view/View;)Lf0/d;
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lf0/e;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v0, v0, Li0/e;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Li0/e;

    .line 21
    .line 22
    iget-object p1, p1, Li0/e;->p0:Lf0/d;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Li0/e;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Li0/e;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    instance-of v0, v0, Li0/e;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Li0/e;

    .line 50
    .line 51
    iget-object p1, p1, Li0/e;->p0:Lf0/d;

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_2
    const/4 p1, 0x0

    .line 55
    return-object p1
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Li0/e;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Li0/e;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Li0/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Li0/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Li0/e;

    invoke-direct {v0, p1}, Li0/e;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lf0/e;

    .line 2
    .line 3
    iget v0, v0, Lf0/e;->D0:I

    .line 4
    .line 5
    return v0
.end method

.method public getSceneString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lf0/e;

    .line 7
    .line 8
    iget-object v2, v1, Lf0/d;->j:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iput-object v2, v1, Lf0/d;->j:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v2, "parent"

    .line 35
    .line 36
    iput-object v2, v1, Lf0/d;->j:Ljava/lang/String;

    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-object v2, v1, Lf0/d;->h0:Ljava/lang/String;

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    iget-object v2, v1, Lf0/d;->j:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v2, v1, Lf0/d;->h0:Ljava/lang/String;

    .line 45
    .line 46
    :cond_2
    iget-object v2, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_5

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Lf0/d;

    .line 63
    .line 64
    iget-object v5, v4, Lf0/d;->f0:Landroid/view/View;

    .line 65
    .line 66
    if-eqz v5, :cond_3

    .line 67
    .line 68
    iget-object v6, v4, Lf0/d;->j:Ljava/lang/String;

    .line 69
    .line 70
    if-nez v6, :cond_4

    .line 71
    .line 72
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eq v5, v3, :cond_4

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    iput-object v5, v4, Lf0/d;->j:Ljava/lang/String;

    .line 91
    .line 92
    :cond_4
    iget-object v5, v4, Lf0/d;->h0:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v5, :cond_3

    .line 95
    .line 96
    iget-object v5, v4, Lf0/d;->j:Ljava/lang/String;

    .line 97
    .line 98
    iput-object v5, v4, Lf0/d;->h0:Ljava/lang/String;

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    invoke-virtual {v1, v0}, Lf0/e;->n(Ljava/lang/StringBuilder;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0
.end method

.method public final h(Landroid/util/AttributeSet;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lf0/e;

    .line 2
    .line 3
    iput-object p0, v0, Lf0/d;->f0:Landroid/view/View;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Li0/f;

    .line 6
    .line 7
    iput-object v1, v0, Lf0/e;->u0:Li0/f;

    .line 8
    .line 9
    iget-object v2, v0, Lf0/e;->s0:Lg0/e;

    .line 10
    .line 11
    iput-object v1, v2, Lg0/e;->g:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Li0/n;

    .line 24
    .line 25
    if-eqz p1, :cond_8

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget-object v3, Li0/q;->b:[I

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    if-ge v2, p2, :cond_7

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const/16 v5, 0x10

    .line 50
    .line 51
    if-ne v3, v5, :cond_0

    .line 52
    .line 53
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 54
    .line 55
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 60
    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :cond_0
    const/16 v5, 0x11

    .line 64
    .line 65
    if-ne v3, v5, :cond_1

    .line 66
    .line 67
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 68
    .line 69
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_1
    const/16 v5, 0xe

    .line 77
    .line 78
    if-ne v3, v5, :cond_2

    .line 79
    .line 80
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 81
    .line 82
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    const/16 v5, 0xf

    .line 90
    .line 91
    if-ne v3, v5, :cond_3

    .line 92
    .line 93
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 94
    .line 95
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    const/16 v5, 0x71

    .line 103
    .line 104
    if-ne v3, v5, :cond_4

    .line 105
    .line 106
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 107
    .line 108
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    const/16 v5, 0x38

    .line 116
    .line 117
    if-ne v3, v5, :cond_5

    .line 118
    .line 119
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_6

    .line 124
    .line 125
    :try_start_0
    new-instance v5, La2/g1;

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-direct {v5, v6, v3}, La2/g1;-><init>(Landroid/content/Context;I)V

    .line 132
    .line 133
    .line 134
    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:La2/g1;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :catch_0
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:La2/g1;

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    const/16 v5, 0x22

    .line 141
    .line 142
    if-ne v3, v5, :cond_6

    .line 143
    .line 144
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    :try_start_1
    new-instance v5, Li0/n;

    .line 149
    .line 150
    invoke-direct {v5}, Li0/n;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Li0/n;

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-virtual {v5, v6, v3}, Li0/n;->e(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :catch_1
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Li0/n;

    .line 164
    .line 165
    :goto_1
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 166
    .line 167
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    .line 172
    .line 173
    :cond_8
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 174
    .line 175
    iput p1, v0, Lf0/e;->D0:I

    .line 176
    .line 177
    const/16 p1, 0x200

    .line 178
    .line 179
    invoke-virtual {v0, p1}, Lf0/e;->W(I)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    sput-boolean p1, Ld0/c;->p:Z

    .line 184
    .line 185
    return-void
.end method

.method public final i(Lf0/e;III)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    const/4 v8, 0x0

    .line 28
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    add-int v10, v7, v9

    .line 41
    .line 42
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    .line 43
    .line 44
    .line 45
    move-result v11

    .line 46
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Li0/f;

    .line 47
    .line 48
    iput v7, v12, Li0/f;->b:I

    .line 49
    .line 50
    iput v9, v12, Li0/f;->c:I

    .line 51
    .line 52
    iput v11, v12, Li0/f;->d:I

    .line 53
    .line 54
    iput v10, v12, Li0/f;->e:I

    .line 55
    .line 56
    move/from16 v9, p3

    .line 57
    .line 58
    iput v9, v12, Li0/f;->f:I

    .line 59
    .line 60
    move/from16 v9, p4

    .line 61
    .line 62
    iput v9, v12, Li0/f;->g:I

    .line 63
    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    const/4 v14, 0x1

    .line 81
    if-gtz v9, :cond_1

    .line 82
    .line 83
    if-lez v13, :cond_0

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v15

    .line 99
    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 100
    .line 101
    .line 102
    move-result-object v15

    .line 103
    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 104
    .line 105
    const/high16 v16, 0x400000

    .line 106
    .line 107
    and-int v15, v15, v16

    .line 108
    .line 109
    if-eqz v15, :cond_2

    .line 110
    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 112
    .line 113
    .line 114
    move-result v15

    .line 115
    if-ne v14, v15, :cond_2

    .line 116
    .line 117
    move v9, v13

    .line 118
    :cond_2
    :goto_1
    sub-int/2addr v4, v11

    .line 119
    sub-int/2addr v6, v10

    .line 120
    iget v10, v12, Li0/f;->e:I

    .line 121
    .line 122
    iget v11, v12, Li0/f;->d:I

    .line 123
    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    const/high16 v15, 0x40000000    # 2.0f

    .line 129
    .line 130
    const/high16 v13, -0x80000000

    .line 131
    .line 132
    if-eq v3, v13, :cond_6

    .line 133
    .line 134
    if-eqz v3, :cond_4

    .line 135
    .line 136
    if-eq v3, v15, :cond_3

    .line 137
    .line 138
    :goto_2
    const/16 v17, 0x0

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_3
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 142
    .line 143
    sub-int/2addr v14, v11

    .line 144
    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    .line 145
    .line 146
    .line 147
    move-result v14

    .line 148
    move/from16 v17, v14

    .line 149
    .line 150
    const/4 v14, 0x1

    .line 151
    goto :goto_5

    .line 152
    :cond_4
    if-nez v12, :cond_5

    .line 153
    .line 154
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 155
    .line 156
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    .line 157
    .line 158
    .line 159
    move-result v14

    .line 160
    :goto_3
    move/from16 v17, v14

    .line 161
    .line 162
    :goto_4
    const/4 v14, 0x2

    .line 163
    goto :goto_5

    .line 164
    :cond_5
    const/4 v14, 0x2

    .line 165
    goto :goto_2

    .line 166
    :cond_6
    if-nez v12, :cond_7

    .line 167
    .line 168
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 169
    .line 170
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    .line 171
    .line 172
    .line 173
    move-result v14

    .line 174
    goto :goto_3

    .line 175
    :cond_7
    move/from16 v17, v4

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :goto_5
    if-eq v5, v13, :cond_b

    .line 179
    .line 180
    if-eqz v5, :cond_9

    .line 181
    .line 182
    if-eq v5, v15, :cond_8

    .line 183
    .line 184
    const/4 v12, 0x1

    .line 185
    :goto_6
    const/4 v13, 0x0

    .line 186
    goto :goto_9

    .line 187
    :cond_8
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 188
    .line 189
    sub-int/2addr v12, v10

    .line 190
    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    move v13, v12

    .line 195
    const/4 v12, 0x1

    .line 196
    goto :goto_9

    .line 197
    :cond_9
    if-nez v12, :cond_a

    .line 198
    .line 199
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 200
    .line 201
    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    :goto_7
    move v13, v12

    .line 206
    :goto_8
    const/4 v12, 0x2

    .line 207
    goto :goto_9

    .line 208
    :cond_a
    const/4 v12, 0x2

    .line 209
    goto :goto_6

    .line 210
    :cond_b
    if-nez v12, :cond_c

    .line 211
    .line 212
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 213
    .line 214
    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    goto :goto_7

    .line 219
    :cond_c
    move v13, v6

    .line 220
    goto :goto_8

    .line 221
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lf0/d;->q()I

    .line 222
    .line 223
    .line 224
    move-result v15

    .line 225
    iget-object v8, v1, Lf0/e;->s0:Lg0/e;

    .line 226
    .line 227
    move/from16 v19, v6

    .line 228
    .line 229
    move/from16 v6, v17

    .line 230
    .line 231
    if-ne v6, v15, :cond_d

    .line 232
    .line 233
    invoke-virtual/range {p1 .. p1}, Lf0/d;->k()I

    .line 234
    .line 235
    .line 236
    move-result v15

    .line 237
    if-eq v13, v15, :cond_e

    .line 238
    .line 239
    :cond_d
    const/4 v15, 0x1

    .line 240
    goto :goto_b

    .line 241
    :cond_e
    :goto_a
    const/4 v15, 0x0

    .line 242
    goto :goto_c

    .line 243
    :goto_b
    iput-boolean v15, v8, Lg0/e;->b:Z

    .line 244
    .line 245
    goto :goto_a

    .line 246
    :goto_c
    iput v15, v1, Lf0/d;->Y:I

    .line 247
    .line 248
    iput v15, v1, Lf0/d;->Z:I

    .line 249
    .line 250
    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 251
    .line 252
    sub-int/2addr v15, v11

    .line 253
    move-object/from16 v17, v8

    .line 254
    .line 255
    iget-object v8, v1, Lf0/d;->C:[I

    .line 256
    .line 257
    move/from16 v20, v4

    .line 258
    .line 259
    const/4 v4, 0x0

    .line 260
    aput v15, v8, v4

    .line 261
    .line 262
    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 263
    .line 264
    sub-int/2addr v15, v10

    .line 265
    const/16 v18, 0x1

    .line 266
    .line 267
    aput v15, v8, v18

    .line 268
    .line 269
    iput v4, v1, Lf0/d;->b0:I

    .line 270
    .line 271
    iput v4, v1, Lf0/d;->c0:I

    .line 272
    .line 273
    invoke-virtual {v1, v14}, Lf0/d;->M(I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, v6}, Lf0/d;->O(I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v12}, Lf0/d;->N(I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v13}, Lf0/d;->L(I)V

    .line 283
    .line 284
    .line 285
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 286
    .line 287
    sub-int/2addr v6, v11

    .line 288
    if-gez v6, :cond_f

    .line 289
    .line 290
    iput v4, v1, Lf0/d;->b0:I

    .line 291
    .line 292
    goto :goto_d

    .line 293
    :cond_f
    iput v6, v1, Lf0/d;->b0:I

    .line 294
    .line 295
    :goto_d
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 296
    .line 297
    sub-int/2addr v6, v10

    .line 298
    if-gez v6, :cond_10

    .line 299
    .line 300
    iput v4, v1, Lf0/d;->c0:I

    .line 301
    .line 302
    goto :goto_e

    .line 303
    :cond_10
    iput v6, v1, Lf0/d;->c0:I

    .line 304
    .line 305
    :goto_e
    iput v9, v1, Lf0/e;->x0:I

    .line 306
    .line 307
    iput v7, v1, Lf0/e;->y0:I

    .line 308
    .line 309
    iget-object v4, v1, Lf0/e;->r0:Lv3/f;

    .line 310
    .line 311
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    iget-object v6, v1, Lf0/e;->u0:Li0/f;

    .line 315
    .line 316
    iget-object v7, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 319
    .line 320
    .line 321
    move-result v7

    .line 322
    invoke-virtual/range {p1 .. p1}, Lf0/d;->q()I

    .line 323
    .line 324
    .line 325
    move-result v9

    .line 326
    invoke-virtual/range {p1 .. p1}, Lf0/d;->k()I

    .line 327
    .line 328
    .line 329
    move-result v10

    .line 330
    const/16 v11, 0x80

    .line 331
    .line 332
    invoke-static {v2, v11}, Lf0/j;->c(II)Z

    .line 333
    .line 334
    .line 335
    move-result v11

    .line 336
    const/16 v12, 0x40

    .line 337
    .line 338
    if-nez v11, :cond_12

    .line 339
    .line 340
    invoke-static {v2, v12}, Lf0/j;->c(II)Z

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    if-eqz v2, :cond_11

    .line 345
    .line 346
    goto :goto_f

    .line 347
    :cond_11
    const/4 v2, 0x0

    .line 348
    goto :goto_10

    .line 349
    :cond_12
    :goto_f
    const/4 v2, 0x1

    .line 350
    :goto_10
    const/4 v13, 0x3

    .line 351
    if-eqz v2, :cond_1b

    .line 352
    .line 353
    const/4 v15, 0x0

    .line 354
    :goto_11
    if-ge v15, v7, :cond_1b

    .line 355
    .line 356
    iget-object v12, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v12

    .line 362
    check-cast v12, Lf0/d;

    .line 363
    .line 364
    iget-object v14, v12, Lf0/d;->p0:[I

    .line 365
    .line 366
    const/16 v18, 0x0

    .line 367
    .line 368
    aget v0, v14, v18

    .line 369
    .line 370
    if-ne v0, v13, :cond_13

    .line 371
    .line 372
    const/4 v0, 0x1

    .line 373
    :goto_12
    const/16 v22, 0x1

    .line 374
    .line 375
    goto :goto_13

    .line 376
    :cond_13
    const/4 v0, 0x0

    .line 377
    goto :goto_12

    .line 378
    :goto_13
    aget v14, v14, v22

    .line 379
    .line 380
    if-ne v14, v13, :cond_14

    .line 381
    .line 382
    const/4 v14, 0x1

    .line 383
    goto :goto_14

    .line 384
    :cond_14
    const/4 v14, 0x0

    .line 385
    :goto_14
    if-eqz v0, :cond_15

    .line 386
    .line 387
    if-eqz v14, :cond_15

    .line 388
    .line 389
    iget v0, v12, Lf0/d;->W:F

    .line 390
    .line 391
    const/4 v14, 0x0

    .line 392
    cmpl-float v0, v0, v14

    .line 393
    .line 394
    if-lez v0, :cond_15

    .line 395
    .line 396
    const/4 v0, 0x1

    .line 397
    goto :goto_15

    .line 398
    :cond_15
    const/4 v0, 0x0

    .line 399
    :goto_15
    invoke-virtual {v12}, Lf0/d;->x()Z

    .line 400
    .line 401
    .line 402
    move-result v14

    .line 403
    if-eqz v14, :cond_17

    .line 404
    .line 405
    if-eqz v0, :cond_17

    .line 406
    .line 407
    :cond_16
    :goto_16
    const/high16 v0, 0x40000000    # 2.0f

    .line 408
    .line 409
    const/4 v2, 0x0

    .line 410
    goto :goto_17

    .line 411
    :cond_17
    invoke-virtual {v12}, Lf0/d;->y()Z

    .line 412
    .line 413
    .line 414
    move-result v14

    .line 415
    if-eqz v14, :cond_18

    .line 416
    .line 417
    if-eqz v0, :cond_18

    .line 418
    .line 419
    goto :goto_16

    .line 420
    :cond_18
    instance-of v0, v12, Lf0/g;

    .line 421
    .line 422
    if-eqz v0, :cond_19

    .line 423
    .line 424
    goto :goto_16

    .line 425
    :cond_19
    invoke-virtual {v12}, Lf0/d;->x()Z

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    if-nez v0, :cond_16

    .line 430
    .line 431
    invoke-virtual {v12}, Lf0/d;->y()Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-eqz v0, :cond_1a

    .line 436
    .line 437
    goto :goto_16

    .line 438
    :cond_1a
    add-int/lit8 v15, v15, 0x1

    .line 439
    .line 440
    move-object/from16 v0, p0

    .line 441
    .line 442
    const/16 v12, 0x40

    .line 443
    .line 444
    goto :goto_11

    .line 445
    :cond_1b
    const/high16 v0, 0x40000000    # 2.0f

    .line 446
    .line 447
    :goto_17
    if-ne v3, v0, :cond_1c

    .line 448
    .line 449
    if-eq v5, v0, :cond_1d

    .line 450
    .line 451
    :cond_1c
    if-eqz v11, :cond_1e

    .line 452
    .line 453
    :cond_1d
    const/4 v0, 0x1

    .line 454
    goto :goto_18

    .line 455
    :cond_1e
    const/4 v0, 0x0

    .line 456
    :goto_18
    and-int/2addr v0, v2

    .line 457
    if-eqz v0, :cond_3d

    .line 458
    .line 459
    const/4 v12, 0x0

    .line 460
    aget v14, v8, v12

    .line 461
    .line 462
    move/from16 v12, v20

    .line 463
    .line 464
    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    .line 465
    .line 466
    .line 467
    move-result v12

    .line 468
    const/4 v14, 0x1

    .line 469
    aget v8, v8, v14

    .line 470
    .line 471
    move/from16 v15, v19

    .line 472
    .line 473
    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    .line 474
    .line 475
    .line 476
    move-result v8

    .line 477
    const/high16 v15, 0x40000000    # 2.0f

    .line 478
    .line 479
    if-ne v3, v15, :cond_1f

    .line 480
    .line 481
    invoke-virtual/range {p1 .. p1}, Lf0/d;->q()I

    .line 482
    .line 483
    .line 484
    move-result v13

    .line 485
    if-eq v13, v12, :cond_1f

    .line 486
    .line 487
    invoke-virtual {v1, v12}, Lf0/d;->O(I)V

    .line 488
    .line 489
    .line 490
    iget-object v12, v1, Lf0/e;->s0:Lg0/e;

    .line 491
    .line 492
    iput-boolean v14, v12, Lg0/e;->a:Z

    .line 493
    .line 494
    :cond_1f
    if-ne v5, v15, :cond_20

    .line 495
    .line 496
    invoke-virtual/range {p1 .. p1}, Lf0/d;->k()I

    .line 497
    .line 498
    .line 499
    move-result v12

    .line 500
    if-eq v12, v8, :cond_20

    .line 501
    .line 502
    invoke-virtual {v1, v8}, Lf0/d;->L(I)V

    .line 503
    .line 504
    .line 505
    iget-object v8, v1, Lf0/e;->s0:Lg0/e;

    .line 506
    .line 507
    iput-boolean v14, v8, Lg0/e;->a:Z

    .line 508
    .line 509
    :cond_20
    if-ne v3, v15, :cond_36

    .line 510
    .line 511
    if-ne v5, v15, :cond_36

    .line 512
    .line 513
    move-object/from16 v8, v17

    .line 514
    .line 515
    iget-boolean v12, v8, Lg0/e;->a:Z

    .line 516
    .line 517
    iget-object v13, v8, Lg0/e;->c:Ljava/lang/Object;

    .line 518
    .line 519
    check-cast v13, Lf0/e;

    .line 520
    .line 521
    if-nez v12, :cond_22

    .line 522
    .line 523
    iget-boolean v12, v8, Lg0/e;->b:Z

    .line 524
    .line 525
    if-eqz v12, :cond_21

    .line 526
    .line 527
    goto :goto_19

    .line 528
    :cond_21
    const/4 v15, 0x0

    .line 529
    goto :goto_1b

    .line 530
    :cond_22
    :goto_19
    iget-object v12, v13, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 531
    .line 532
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 533
    .line 534
    .line 535
    move-result-object v12

    .line 536
    :goto_1a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 537
    .line 538
    .line 539
    move-result v14

    .line 540
    if-eqz v14, :cond_23

    .line 541
    .line 542
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v14

    .line 546
    check-cast v14, Lf0/d;

    .line 547
    .line 548
    invoke-virtual {v14}, Lf0/d;->h()V

    .line 549
    .line 550
    .line 551
    const/4 v15, 0x0

    .line 552
    iput-boolean v15, v14, Lf0/d;->a:Z

    .line 553
    .line 554
    iget-object v2, v14, Lf0/d;->d:Lg0/k;

    .line 555
    .line 556
    invoke-virtual {v2}, Lg0/k;->n()V

    .line 557
    .line 558
    .line 559
    iget-object v2, v14, Lf0/d;->e:Lg0/m;

    .line 560
    .line 561
    invoke-virtual {v2}, Lg0/m;->m()V

    .line 562
    .line 563
    .line 564
    goto :goto_1a

    .line 565
    :cond_23
    const/4 v15, 0x0

    .line 566
    invoke-virtual {v13}, Lf0/d;->h()V

    .line 567
    .line 568
    .line 569
    iput-boolean v15, v13, Lf0/d;->a:Z

    .line 570
    .line 571
    iget-object v2, v13, Lf0/d;->d:Lg0/k;

    .line 572
    .line 573
    invoke-virtual {v2}, Lg0/k;->n()V

    .line 574
    .line 575
    .line 576
    iget-object v2, v13, Lf0/d;->e:Lg0/m;

    .line 577
    .line 578
    invoke-virtual {v2}, Lg0/m;->m()V

    .line 579
    .line 580
    .line 581
    iput-boolean v15, v8, Lg0/e;->b:Z

    .line 582
    .line 583
    :goto_1b
    iget-object v2, v8, Lg0/e;->d:Ljava/lang/Object;

    .line 584
    .line 585
    check-cast v2, Lf0/e;

    .line 586
    .line 587
    invoke-virtual {v8, v2}, Lg0/e;->b(Lf0/e;)V

    .line 588
    .line 589
    .line 590
    iput v15, v13, Lf0/d;->Y:I

    .line 591
    .line 592
    iput v15, v13, Lf0/d;->Z:I

    .line 593
    .line 594
    invoke-virtual {v13, v15}, Lf0/d;->j(I)I

    .line 595
    .line 596
    .line 597
    move-result v2

    .line 598
    const/4 v12, 0x1

    .line 599
    invoke-virtual {v13, v12}, Lf0/d;->j(I)I

    .line 600
    .line 601
    .line 602
    move-result v14

    .line 603
    iget-boolean v12, v8, Lg0/e;->a:Z

    .line 604
    .line 605
    if-eqz v12, :cond_24

    .line 606
    .line 607
    invoke-virtual {v8}, Lg0/e;->c()V

    .line 608
    .line 609
    .line 610
    :cond_24
    invoke-virtual {v13}, Lf0/d;->r()I

    .line 611
    .line 612
    .line 613
    move-result v12

    .line 614
    invoke-virtual {v13}, Lf0/d;->s()I

    .line 615
    .line 616
    .line 617
    move-result v15

    .line 618
    move/from16 v20, v0

    .line 619
    .line 620
    iget-object v0, v13, Lf0/d;->d:Lg0/k;

    .line 621
    .line 622
    iget-object v0, v0, Lg0/o;->h:Lg0/f;

    .line 623
    .line 624
    invoke-virtual {v0, v12}, Lg0/f;->d(I)V

    .line 625
    .line 626
    .line 627
    iget-object v0, v13, Lf0/d;->e:Lg0/m;

    .line 628
    .line 629
    iget-object v0, v0, Lg0/o;->h:Lg0/f;

    .line 630
    .line 631
    invoke-virtual {v0, v15}, Lg0/f;->d(I)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v8}, Lg0/e;->j()V

    .line 635
    .line 636
    .line 637
    iget-object v0, v8, Lg0/e;->e:Ljava/lang/Object;

    .line 638
    .line 639
    check-cast v0, Ljava/util/ArrayList;

    .line 640
    .line 641
    move-object/from16 v22, v6

    .line 642
    .line 643
    const/4 v6, 0x2

    .line 644
    if-eq v2, v6, :cond_27

    .line 645
    .line 646
    if-ne v14, v6, :cond_25

    .line 647
    .line 648
    goto :goto_1c

    .line 649
    :cond_25
    move/from16 v23, v9

    .line 650
    .line 651
    :cond_26
    const/4 v6, 0x1

    .line 652
    goto :goto_1e

    .line 653
    :cond_27
    :goto_1c
    if-eqz v11, :cond_29

    .line 654
    .line 655
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 656
    .line 657
    .line 658
    move-result-object v6

    .line 659
    :cond_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 660
    .line 661
    .line 662
    move-result v23

    .line 663
    if-eqz v23, :cond_29

    .line 664
    .line 665
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v23

    .line 669
    check-cast v23, Lg0/o;

    .line 670
    .line 671
    invoke-virtual/range {v23 .. v23}, Lg0/o;->k()Z

    .line 672
    .line 673
    .line 674
    move-result v23

    .line 675
    if-nez v23, :cond_28

    .line 676
    .line 677
    const/4 v11, 0x0

    .line 678
    :cond_29
    if-eqz v11, :cond_2a

    .line 679
    .line 680
    const/4 v6, 0x2

    .line 681
    if-ne v2, v6, :cond_2a

    .line 682
    .line 683
    const/4 v6, 0x1

    .line 684
    invoke-virtual {v13, v6}, Lf0/d;->M(I)V

    .line 685
    .line 686
    .line 687
    move/from16 v23, v9

    .line 688
    .line 689
    const/4 v6, 0x0

    .line 690
    invoke-virtual {v8, v13, v6}, Lg0/e;->e(Lf0/e;I)I

    .line 691
    .line 692
    .line 693
    move-result v9

    .line 694
    invoke-virtual {v13, v9}, Lf0/d;->O(I)V

    .line 695
    .line 696
    .line 697
    iget-object v6, v13, Lf0/d;->d:Lg0/k;

    .line 698
    .line 699
    iget-object v6, v6, Lg0/o;->e:Lg0/g;

    .line 700
    .line 701
    invoke-virtual {v13}, Lf0/d;->q()I

    .line 702
    .line 703
    .line 704
    move-result v9

    .line 705
    invoke-virtual {v6, v9}, Lg0/g;->d(I)V

    .line 706
    .line 707
    .line 708
    goto :goto_1d

    .line 709
    :cond_2a
    move/from16 v23, v9

    .line 710
    .line 711
    :goto_1d
    if-eqz v11, :cond_26

    .line 712
    .line 713
    const/4 v6, 0x2

    .line 714
    if-ne v14, v6, :cond_26

    .line 715
    .line 716
    const/4 v6, 0x1

    .line 717
    invoke-virtual {v13, v6}, Lf0/d;->N(I)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v8, v13, v6}, Lg0/e;->e(Lf0/e;I)I

    .line 721
    .line 722
    .line 723
    move-result v9

    .line 724
    invoke-virtual {v13, v9}, Lf0/d;->L(I)V

    .line 725
    .line 726
    .line 727
    iget-object v9, v13, Lf0/d;->e:Lg0/m;

    .line 728
    .line 729
    iget-object v9, v9, Lg0/o;->e:Lg0/g;

    .line 730
    .line 731
    invoke-virtual {v13}, Lf0/d;->k()I

    .line 732
    .line 733
    .line 734
    move-result v11

    .line 735
    invoke-virtual {v9, v11}, Lg0/g;->d(I)V

    .line 736
    .line 737
    .line 738
    :goto_1e
    iget-object v9, v13, Lf0/d;->p0:[I

    .line 739
    .line 740
    move/from16 v24, v10

    .line 741
    .line 742
    const/4 v11, 0x0

    .line 743
    aget v10, v9, v11

    .line 744
    .line 745
    if-eq v10, v6, :cond_2c

    .line 746
    .line 747
    const/4 v6, 0x4

    .line 748
    if-ne v10, v6, :cond_2b

    .line 749
    .line 750
    goto :goto_1f

    .line 751
    :cond_2b
    const/4 v6, 0x0

    .line 752
    goto :goto_20

    .line 753
    :cond_2c
    :goto_1f
    invoke-virtual {v13}, Lf0/d;->q()I

    .line 754
    .line 755
    .line 756
    move-result v6

    .line 757
    add-int/2addr v6, v12

    .line 758
    iget-object v10, v13, Lf0/d;->d:Lg0/k;

    .line 759
    .line 760
    iget-object v10, v10, Lg0/o;->i:Lg0/f;

    .line 761
    .line 762
    invoke-virtual {v10, v6}, Lg0/f;->d(I)V

    .line 763
    .line 764
    .line 765
    iget-object v10, v13, Lf0/d;->d:Lg0/k;

    .line 766
    .line 767
    iget-object v10, v10, Lg0/o;->e:Lg0/g;

    .line 768
    .line 769
    sub-int/2addr v6, v12

    .line 770
    invoke-virtual {v10, v6}, Lg0/g;->d(I)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v8}, Lg0/e;->j()V

    .line 774
    .line 775
    .line 776
    const/4 v6, 0x1

    .line 777
    aget v9, v9, v6

    .line 778
    .line 779
    if-eq v9, v6, :cond_2d

    .line 780
    .line 781
    const/4 v6, 0x4

    .line 782
    if-ne v9, v6, :cond_2e

    .line 783
    .line 784
    :cond_2d
    invoke-virtual {v13}, Lf0/d;->k()I

    .line 785
    .line 786
    .line 787
    move-result v6

    .line 788
    add-int/2addr v6, v15

    .line 789
    iget-object v9, v13, Lf0/d;->e:Lg0/m;

    .line 790
    .line 791
    iget-object v9, v9, Lg0/o;->i:Lg0/f;

    .line 792
    .line 793
    invoke-virtual {v9, v6}, Lg0/f;->d(I)V

    .line 794
    .line 795
    .line 796
    iget-object v9, v13, Lf0/d;->e:Lg0/m;

    .line 797
    .line 798
    iget-object v9, v9, Lg0/o;->e:Lg0/g;

    .line 799
    .line 800
    sub-int/2addr v6, v15

    .line 801
    invoke-virtual {v9, v6}, Lg0/g;->d(I)V

    .line 802
    .line 803
    .line 804
    :cond_2e
    invoke-virtual {v8}, Lg0/e;->j()V

    .line 805
    .line 806
    .line 807
    const/4 v6, 0x1

    .line 808
    :goto_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 809
    .line 810
    .line 811
    move-result-object v8

    .line 812
    :goto_21
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 813
    .line 814
    .line 815
    move-result v9

    .line 816
    if-eqz v9, :cond_30

    .line 817
    .line 818
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v9

    .line 822
    check-cast v9, Lg0/o;

    .line 823
    .line 824
    iget-object v10, v9, Lg0/o;->b:Lf0/d;

    .line 825
    .line 826
    if-ne v10, v13, :cond_2f

    .line 827
    .line 828
    iget-boolean v10, v9, Lg0/o;->g:Z

    .line 829
    .line 830
    if-nez v10, :cond_2f

    .line 831
    .line 832
    goto :goto_21

    .line 833
    :cond_2f
    invoke-virtual {v9}, Lg0/o;->e()V

    .line 834
    .line 835
    .line 836
    goto :goto_21

    .line 837
    :cond_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    :cond_31
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 842
    .line 843
    .line 844
    move-result v8

    .line 845
    if-eqz v8, :cond_35

    .line 846
    .line 847
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object v8

    .line 851
    check-cast v8, Lg0/o;

    .line 852
    .line 853
    if-nez v6, :cond_32

    .line 854
    .line 855
    iget-object v9, v8, Lg0/o;->b:Lf0/d;

    .line 856
    .line 857
    if-ne v9, v13, :cond_32

    .line 858
    .line 859
    goto :goto_22

    .line 860
    :cond_32
    iget-object v9, v8, Lg0/o;->h:Lg0/f;

    .line 861
    .line 862
    iget-boolean v9, v9, Lg0/f;->j:Z

    .line 863
    .line 864
    if-nez v9, :cond_33

    .line 865
    .line 866
    :goto_23
    const/4 v0, 0x0

    .line 867
    goto :goto_24

    .line 868
    :cond_33
    iget-object v9, v8, Lg0/o;->i:Lg0/f;

    .line 869
    .line 870
    iget-boolean v9, v9, Lg0/f;->j:Z

    .line 871
    .line 872
    if-nez v9, :cond_34

    .line 873
    .line 874
    instance-of v9, v8, Lg0/i;

    .line 875
    .line 876
    if-nez v9, :cond_34

    .line 877
    .line 878
    goto :goto_23

    .line 879
    :cond_34
    iget-object v9, v8, Lg0/o;->e:Lg0/g;

    .line 880
    .line 881
    iget-boolean v9, v9, Lg0/f;->j:Z

    .line 882
    .line 883
    if-nez v9, :cond_31

    .line 884
    .line 885
    instance-of v9, v8, Lg0/c;

    .line 886
    .line 887
    if-nez v9, :cond_31

    .line 888
    .line 889
    instance-of v8, v8, Lg0/i;

    .line 890
    .line 891
    if-nez v8, :cond_31

    .line 892
    .line 893
    goto :goto_23

    .line 894
    :cond_35
    const/4 v0, 0x1

    .line 895
    :goto_24
    invoke-virtual {v13, v2}, Lf0/d;->M(I)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v13, v14}, Lf0/d;->N(I)V

    .line 899
    .line 900
    .line 901
    move v6, v0

    .line 902
    const/high16 v0, 0x40000000    # 2.0f

    .line 903
    .line 904
    const/4 v2, 0x2

    .line 905
    goto/16 :goto_28

    .line 906
    .line 907
    :cond_36
    move/from16 v20, v0

    .line 908
    .line 909
    move-object/from16 v22, v6

    .line 910
    .line 911
    move/from16 v23, v9

    .line 912
    .line 913
    move/from16 v24, v10

    .line 914
    .line 915
    move-object/from16 v8, v17

    .line 916
    .line 917
    iget-boolean v0, v8, Lg0/e;->a:Z

    .line 918
    .line 919
    iget-object v2, v8, Lg0/e;->c:Ljava/lang/Object;

    .line 920
    .line 921
    check-cast v2, Lf0/e;

    .line 922
    .line 923
    if-eqz v0, :cond_38

    .line 924
    .line 925
    iget-object v0, v2, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 926
    .line 927
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 932
    .line 933
    .line 934
    move-result v6

    .line 935
    if-eqz v6, :cond_37

    .line 936
    .line 937
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v6

    .line 941
    check-cast v6, Lf0/d;

    .line 942
    .line 943
    invoke-virtual {v6}, Lf0/d;->h()V

    .line 944
    .line 945
    .line 946
    const/4 v9, 0x0

    .line 947
    iput-boolean v9, v6, Lf0/d;->a:Z

    .line 948
    .line 949
    iget-object v10, v6, Lf0/d;->d:Lg0/k;

    .line 950
    .line 951
    iget-object v12, v10, Lg0/o;->e:Lg0/g;

    .line 952
    .line 953
    iput-boolean v9, v12, Lg0/f;->j:Z

    .line 954
    .line 955
    iput-boolean v9, v10, Lg0/o;->g:Z

    .line 956
    .line 957
    invoke-virtual {v10}, Lg0/k;->n()V

    .line 958
    .line 959
    .line 960
    iget-object v6, v6, Lf0/d;->e:Lg0/m;

    .line 961
    .line 962
    iget-object v10, v6, Lg0/o;->e:Lg0/g;

    .line 963
    .line 964
    iput-boolean v9, v10, Lg0/f;->j:Z

    .line 965
    .line 966
    iput-boolean v9, v6, Lg0/o;->g:Z

    .line 967
    .line 968
    invoke-virtual {v6}, Lg0/m;->m()V

    .line 969
    .line 970
    .line 971
    goto :goto_25

    .line 972
    :cond_37
    const/4 v9, 0x0

    .line 973
    invoke-virtual {v2}, Lf0/d;->h()V

    .line 974
    .line 975
    .line 976
    iput-boolean v9, v2, Lf0/d;->a:Z

    .line 977
    .line 978
    iget-object v0, v2, Lf0/d;->d:Lg0/k;

    .line 979
    .line 980
    iget-object v6, v0, Lg0/o;->e:Lg0/g;

    .line 981
    .line 982
    iput-boolean v9, v6, Lg0/f;->j:Z

    .line 983
    .line 984
    iput-boolean v9, v0, Lg0/o;->g:Z

    .line 985
    .line 986
    invoke-virtual {v0}, Lg0/k;->n()V

    .line 987
    .line 988
    .line 989
    iget-object v0, v2, Lf0/d;->e:Lg0/m;

    .line 990
    .line 991
    iget-object v6, v0, Lg0/o;->e:Lg0/g;

    .line 992
    .line 993
    iput-boolean v9, v6, Lg0/f;->j:Z

    .line 994
    .line 995
    iput-boolean v9, v0, Lg0/o;->g:Z

    .line 996
    .line 997
    invoke-virtual {v0}, Lg0/m;->m()V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v8}, Lg0/e;->c()V

    .line 1001
    .line 1002
    .line 1003
    goto :goto_26

    .line 1004
    :cond_38
    const/4 v9, 0x0

    .line 1005
    :goto_26
    iget-object v0, v8, Lg0/e;->d:Ljava/lang/Object;

    .line 1006
    .line 1007
    check-cast v0, Lf0/e;

    .line 1008
    .line 1009
    invoke-virtual {v8, v0}, Lg0/e;->b(Lf0/e;)V

    .line 1010
    .line 1011
    .line 1012
    iput v9, v2, Lf0/d;->Y:I

    .line 1013
    .line 1014
    iput v9, v2, Lf0/d;->Z:I

    .line 1015
    .line 1016
    iget-object v0, v2, Lf0/d;->d:Lg0/k;

    .line 1017
    .line 1018
    iget-object v0, v0, Lg0/o;->h:Lg0/f;

    .line 1019
    .line 1020
    invoke-virtual {v0, v9}, Lg0/f;->d(I)V

    .line 1021
    .line 1022
    .line 1023
    iget-object v0, v2, Lf0/d;->e:Lg0/m;

    .line 1024
    .line 1025
    iget-object v0, v0, Lg0/o;->h:Lg0/f;

    .line 1026
    .line 1027
    invoke-virtual {v0, v9}, Lg0/f;->d(I)V

    .line 1028
    .line 1029
    .line 1030
    const/high16 v0, 0x40000000    # 2.0f

    .line 1031
    .line 1032
    if-ne v3, v0, :cond_39

    .line 1033
    .line 1034
    invoke-virtual {v1, v9, v11}, Lf0/e;->T(IZ)Z

    .line 1035
    .line 1036
    .line 1037
    move-result v2

    .line 1038
    move v6, v2

    .line 1039
    const/4 v2, 0x1

    .line 1040
    goto :goto_27

    .line 1041
    :cond_39
    const/4 v2, 0x0

    .line 1042
    const/4 v6, 0x1

    .line 1043
    :goto_27
    if-ne v5, v0, :cond_3a

    .line 1044
    .line 1045
    const/4 v8, 0x1

    .line 1046
    invoke-virtual {v1, v8, v11}, Lf0/e;->T(IZ)Z

    .line 1047
    .line 1048
    .line 1049
    move-result v9

    .line 1050
    and-int/2addr v6, v9

    .line 1051
    add-int/lit8 v2, v2, 0x1

    .line 1052
    .line 1053
    :cond_3a
    :goto_28
    if-eqz v6, :cond_3e

    .line 1054
    .line 1055
    if-ne v3, v0, :cond_3b

    .line 1056
    .line 1057
    const/4 v3, 0x1

    .line 1058
    goto :goto_29

    .line 1059
    :cond_3b
    const/4 v3, 0x0

    .line 1060
    :goto_29
    if-ne v5, v0, :cond_3c

    .line 1061
    .line 1062
    const/4 v0, 0x1

    .line 1063
    goto :goto_2a

    .line 1064
    :cond_3c
    const/4 v0, 0x0

    .line 1065
    :goto_2a
    invoke-virtual {v1, v3, v0}, Lf0/e;->P(ZZ)V

    .line 1066
    .line 1067
    .line 1068
    goto :goto_2b

    .line 1069
    :cond_3d
    move/from16 v20, v0

    .line 1070
    .line 1071
    move-object/from16 v22, v6

    .line 1072
    .line 1073
    move/from16 v23, v9

    .line 1074
    .line 1075
    move/from16 v24, v10

    .line 1076
    .line 1077
    const/4 v2, 0x0

    .line 1078
    const/4 v6, 0x0

    .line 1079
    :cond_3e
    :goto_2b
    if-eqz v6, :cond_3f

    .line 1080
    .line 1081
    const/4 v0, 0x2

    .line 1082
    if-eq v2, v0, :cond_67

    .line 1083
    .line 1084
    :cond_3f
    iget v0, v1, Lf0/e;->D0:I

    .line 1085
    .line 1086
    if-lez v7, :cond_4e

    .line 1087
    .line 1088
    iget-object v2, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 1089
    .line 1090
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1091
    .line 1092
    .line 1093
    move-result v2

    .line 1094
    const/16 v3, 0x40

    .line 1095
    .line 1096
    invoke-virtual {v1, v3}, Lf0/e;->W(I)Z

    .line 1097
    .line 1098
    .line 1099
    move-result v3

    .line 1100
    iget-object v5, v1, Lf0/e;->u0:Li0/f;

    .line 1101
    .line 1102
    const/4 v15, 0x0

    .line 1103
    :goto_2c
    if-ge v15, v2, :cond_4c

    .line 1104
    .line 1105
    iget-object v6, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 1106
    .line 1107
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v6

    .line 1111
    check-cast v6, Lf0/d;

    .line 1112
    .line 1113
    instance-of v8, v6, Lf0/h;

    .line 1114
    .line 1115
    if-eqz v8, :cond_40

    .line 1116
    .line 1117
    :goto_2d
    const/4 v8, 0x3

    .line 1118
    const/4 v10, 0x0

    .line 1119
    goto/16 :goto_32

    .line 1120
    .line 1121
    :cond_40
    instance-of v8, v6, Lf0/a;

    .line 1122
    .line 1123
    if-eqz v8, :cond_41

    .line 1124
    .line 1125
    goto :goto_2d

    .line 1126
    :cond_41
    iget-boolean v8, v6, Lf0/d;->F:Z

    .line 1127
    .line 1128
    if-eqz v8, :cond_42

    .line 1129
    .line 1130
    goto :goto_2d

    .line 1131
    :cond_42
    if-eqz v3, :cond_43

    .line 1132
    .line 1133
    iget-object v8, v6, Lf0/d;->d:Lg0/k;

    .line 1134
    .line 1135
    if-eqz v8, :cond_43

    .line 1136
    .line 1137
    iget-object v9, v6, Lf0/d;->e:Lg0/m;

    .line 1138
    .line 1139
    if-eqz v9, :cond_43

    .line 1140
    .line 1141
    iget-object v8, v8, Lg0/o;->e:Lg0/g;

    .line 1142
    .line 1143
    iget-boolean v8, v8, Lg0/f;->j:Z

    .line 1144
    .line 1145
    if-eqz v8, :cond_43

    .line 1146
    .line 1147
    iget-object v8, v9, Lg0/o;->e:Lg0/g;

    .line 1148
    .line 1149
    iget-boolean v8, v8, Lg0/f;->j:Z

    .line 1150
    .line 1151
    if-eqz v8, :cond_43

    .line 1152
    .line 1153
    goto :goto_2d

    .line 1154
    :cond_43
    const/4 v8, 0x0

    .line 1155
    invoke-virtual {v6, v8}, Lf0/d;->j(I)I

    .line 1156
    .line 1157
    .line 1158
    move-result v9

    .line 1159
    const/4 v8, 0x1

    .line 1160
    invoke-virtual {v6, v8}, Lf0/d;->j(I)I

    .line 1161
    .line 1162
    .line 1163
    move-result v10

    .line 1164
    const/4 v11, 0x3

    .line 1165
    if-ne v9, v11, :cond_44

    .line 1166
    .line 1167
    iget v12, v6, Lf0/d;->r:I

    .line 1168
    .line 1169
    if-eq v12, v8, :cond_44

    .line 1170
    .line 1171
    if-ne v10, v11, :cond_44

    .line 1172
    .line 1173
    iget v11, v6, Lf0/d;->s:I

    .line 1174
    .line 1175
    if-eq v11, v8, :cond_44

    .line 1176
    .line 1177
    const/4 v11, 0x1

    .line 1178
    goto :goto_2e

    .line 1179
    :cond_44
    const/4 v11, 0x0

    .line 1180
    :goto_2e
    if-nez v11, :cond_49

    .line 1181
    .line 1182
    invoke-virtual {v1, v8}, Lf0/e;->W(I)Z

    .line 1183
    .line 1184
    .line 1185
    move-result v12

    .line 1186
    if-eqz v12, :cond_49

    .line 1187
    .line 1188
    instance-of v8, v6, Lf0/g;

    .line 1189
    .line 1190
    if-nez v8, :cond_49

    .line 1191
    .line 1192
    const/4 v8, 0x3

    .line 1193
    if-ne v9, v8, :cond_45

    .line 1194
    .line 1195
    iget v12, v6, Lf0/d;->r:I

    .line 1196
    .line 1197
    if-nez v12, :cond_45

    .line 1198
    .line 1199
    if-eq v10, v8, :cond_45

    .line 1200
    .line 1201
    invoke-virtual {v6}, Lf0/d;->x()Z

    .line 1202
    .line 1203
    .line 1204
    move-result v12

    .line 1205
    if-nez v12, :cond_45

    .line 1206
    .line 1207
    const/4 v11, 0x1

    .line 1208
    :cond_45
    if-ne v10, v8, :cond_46

    .line 1209
    .line 1210
    iget v12, v6, Lf0/d;->s:I

    .line 1211
    .line 1212
    if-nez v12, :cond_46

    .line 1213
    .line 1214
    if-eq v9, v8, :cond_46

    .line 1215
    .line 1216
    invoke-virtual {v6}, Lf0/d;->x()Z

    .line 1217
    .line 1218
    .line 1219
    move-result v12

    .line 1220
    if-nez v12, :cond_46

    .line 1221
    .line 1222
    const/4 v11, 0x1

    .line 1223
    :cond_46
    if-eq v9, v8, :cond_48

    .line 1224
    .line 1225
    if-ne v10, v8, :cond_47

    .line 1226
    .line 1227
    goto :goto_30

    .line 1228
    :cond_47
    :goto_2f
    const/4 v10, 0x0

    .line 1229
    goto :goto_31

    .line 1230
    :cond_48
    :goto_30
    iget v9, v6, Lf0/d;->W:F

    .line 1231
    .line 1232
    const/4 v10, 0x0

    .line 1233
    cmpl-float v9, v9, v10

    .line 1234
    .line 1235
    if-lez v9, :cond_4a

    .line 1236
    .line 1237
    const/4 v11, 0x1

    .line 1238
    goto :goto_31

    .line 1239
    :cond_49
    const/4 v8, 0x3

    .line 1240
    goto :goto_2f

    .line 1241
    :cond_4a
    :goto_31
    if-eqz v11, :cond_4b

    .line 1242
    .line 1243
    goto :goto_32

    .line 1244
    :cond_4b
    const/4 v9, 0x0

    .line 1245
    invoke-virtual {v4, v9, v6, v5}, Lv3/f;->E(ILf0/d;Li0/f;)Z

    .line 1246
    .line 1247
    .line 1248
    :goto_32
    add-int/lit8 v15, v15, 0x1

    .line 1249
    .line 1250
    goto/16 :goto_2c

    .line 1251
    .line 1252
    :cond_4c
    iget-object v2, v5, Li0/f;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1253
    .line 1254
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1255
    .line 1256
    .line 1257
    move-result v3

    .line 1258
    const/4 v15, 0x0

    .line 1259
    :goto_33
    if-ge v15, v3, :cond_4d

    .line 1260
    .line 1261
    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1262
    .line 1263
    .line 1264
    add-int/lit8 v15, v15, 0x1

    .line 1265
    .line 1266
    goto :goto_33

    .line 1267
    :cond_4d
    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 1268
    .line 1269
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1270
    .line 1271
    .line 1272
    move-result v3

    .line 1273
    if-lez v3, :cond_4e

    .line 1274
    .line 1275
    const/4 v15, 0x0

    .line 1276
    :goto_34
    if-ge v15, v3, :cond_4e

    .line 1277
    .line 1278
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v5

    .line 1282
    check-cast v5, Li0/c;

    .line 1283
    .line 1284
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1285
    .line 1286
    .line 1287
    add-int/lit8 v15, v15, 0x1

    .line 1288
    .line 1289
    goto :goto_34

    .line 1290
    :cond_4e
    invoke-virtual {v4, v1}, Lv3/f;->S(Lf0/e;)V

    .line 1291
    .line 1292
    .line 1293
    iget-object v2, v4, Lv3/f;->b:Ljava/lang/Object;

    .line 1294
    .line 1295
    check-cast v2, Ljava/util/ArrayList;

    .line 1296
    .line 1297
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1298
    .line 1299
    .line 1300
    move-result v3

    .line 1301
    move/from16 v5, v23

    .line 1302
    .line 1303
    move/from16 v6, v24

    .line 1304
    .line 1305
    const/4 v15, 0x0

    .line 1306
    if-lez v7, :cond_4f

    .line 1307
    .line 1308
    invoke-virtual {v4, v1, v15, v5, v6}, Lv3/f;->O(Lf0/e;III)V

    .line 1309
    .line 1310
    .line 1311
    :cond_4f
    if-lez v3, :cond_66

    .line 1312
    .line 1313
    iget-object v7, v1, Lf0/d;->p0:[I

    .line 1314
    .line 1315
    aget v8, v7, v15

    .line 1316
    .line 1317
    const/4 v9, 0x2

    .line 1318
    if-ne v8, v9, :cond_50

    .line 1319
    .line 1320
    const/4 v8, 0x1

    .line 1321
    :goto_35
    const/4 v10, 0x1

    .line 1322
    goto :goto_36

    .line 1323
    :cond_50
    const/4 v8, 0x0

    .line 1324
    goto :goto_35

    .line 1325
    :goto_36
    aget v7, v7, v10

    .line 1326
    .line 1327
    if-ne v7, v9, :cond_51

    .line 1328
    .line 1329
    const/4 v7, 0x1

    .line 1330
    goto :goto_37

    .line 1331
    :cond_51
    const/4 v7, 0x0

    .line 1332
    :goto_37
    invoke-virtual/range {p1 .. p1}, Lf0/d;->q()I

    .line 1333
    .line 1334
    .line 1335
    move-result v9

    .line 1336
    iget-object v10, v4, Lv3/f;->d:Ljava/lang/Object;

    .line 1337
    .line 1338
    check-cast v10, Lf0/e;

    .line 1339
    .line 1340
    iget v11, v10, Lf0/d;->b0:I

    .line 1341
    .line 1342
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    .line 1343
    .line 1344
    .line 1345
    move-result v9

    .line 1346
    invoke-virtual/range {p1 .. p1}, Lf0/d;->k()I

    .line 1347
    .line 1348
    .line 1349
    move-result v11

    .line 1350
    iget v10, v10, Lf0/d;->c0:I

    .line 1351
    .line 1352
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    .line 1353
    .line 1354
    .line 1355
    move-result v10

    .line 1356
    const/4 v11, 0x0

    .line 1357
    const/4 v12, 0x0

    .line 1358
    :goto_38
    if-ge v11, v3, :cond_57

    .line 1359
    .line 1360
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v14

    .line 1364
    check-cast v14, Lf0/d;

    .line 1365
    .line 1366
    instance-of v15, v14, Lf0/g;

    .line 1367
    .line 1368
    if-nez v15, :cond_52

    .line 1369
    .line 1370
    move/from16 v16, v0

    .line 1371
    .line 1372
    move-object/from16 v1, v22

    .line 1373
    .line 1374
    goto/16 :goto_3a

    .line 1375
    .line 1376
    :cond_52
    invoke-virtual {v14}, Lf0/d;->q()I

    .line 1377
    .line 1378
    .line 1379
    move-result v15

    .line 1380
    invoke-virtual {v14}, Lf0/d;->k()I

    .line 1381
    .line 1382
    .line 1383
    move-result v13

    .line 1384
    move/from16 v16, v0

    .line 1385
    .line 1386
    move-object/from16 v1, v22

    .line 1387
    .line 1388
    const/4 v0, 0x1

    .line 1389
    invoke-virtual {v4, v0, v14, v1}, Lv3/f;->E(ILf0/d;Li0/f;)Z

    .line 1390
    .line 1391
    .line 1392
    move-result v19

    .line 1393
    or-int v0, v12, v19

    .line 1394
    .line 1395
    invoke-virtual {v14}, Lf0/d;->q()I

    .line 1396
    .line 1397
    .line 1398
    move-result v12

    .line 1399
    move/from16 v19, v0

    .line 1400
    .line 1401
    invoke-virtual {v14}, Lf0/d;->k()I

    .line 1402
    .line 1403
    .line 1404
    move-result v0

    .line 1405
    if-eq v12, v15, :cond_54

    .line 1406
    .line 1407
    invoke-virtual {v14, v12}, Lf0/d;->O(I)V

    .line 1408
    .line 1409
    .line 1410
    if-eqz v8, :cond_53

    .line 1411
    .line 1412
    invoke-virtual {v14}, Lf0/d;->r()I

    .line 1413
    .line 1414
    .line 1415
    move-result v12

    .line 1416
    iget v15, v14, Lf0/d;->U:I

    .line 1417
    .line 1418
    add-int/2addr v12, v15

    .line 1419
    if-le v12, v9, :cond_53

    .line 1420
    .line 1421
    invoke-virtual {v14}, Lf0/d;->r()I

    .line 1422
    .line 1423
    .line 1424
    move-result v12

    .line 1425
    iget v15, v14, Lf0/d;->U:I

    .line 1426
    .line 1427
    add-int/2addr v12, v15

    .line 1428
    const/4 v15, 0x4

    .line 1429
    invoke-virtual {v14, v15}, Lf0/d;->i(I)Lf0/c;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v19

    .line 1433
    invoke-virtual/range {v19 .. v19}, Lf0/c;->e()I

    .line 1434
    .line 1435
    .line 1436
    move-result v15

    .line 1437
    add-int/2addr v15, v12

    .line 1438
    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    .line 1439
    .line 1440
    .line 1441
    move-result v9

    .line 1442
    :cond_53
    const/4 v15, 0x1

    .line 1443
    goto :goto_39

    .line 1444
    :cond_54
    move/from16 v15, v19

    .line 1445
    .line 1446
    :goto_39
    if-eq v0, v13, :cond_56

    .line 1447
    .line 1448
    invoke-virtual {v14, v0}, Lf0/d;->L(I)V

    .line 1449
    .line 1450
    .line 1451
    if-eqz v7, :cond_55

    .line 1452
    .line 1453
    invoke-virtual {v14}, Lf0/d;->s()I

    .line 1454
    .line 1455
    .line 1456
    move-result v0

    .line 1457
    iget v12, v14, Lf0/d;->V:I

    .line 1458
    .line 1459
    add-int/2addr v0, v12

    .line 1460
    if-le v0, v10, :cond_55

    .line 1461
    .line 1462
    invoke-virtual {v14}, Lf0/d;->s()I

    .line 1463
    .line 1464
    .line 1465
    move-result v0

    .line 1466
    iget v12, v14, Lf0/d;->V:I

    .line 1467
    .line 1468
    add-int/2addr v0, v12

    .line 1469
    const/4 v12, 0x5

    .line 1470
    invoke-virtual {v14, v12}, Lf0/d;->i(I)Lf0/c;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v12

    .line 1474
    invoke-virtual {v12}, Lf0/c;->e()I

    .line 1475
    .line 1476
    .line 1477
    move-result v12

    .line 1478
    add-int/2addr v12, v0

    .line 1479
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    .line 1480
    .line 1481
    .line 1482
    move-result v10

    .line 1483
    :cond_55
    const/4 v15, 0x1

    .line 1484
    :cond_56
    check-cast v14, Lf0/g;

    .line 1485
    .line 1486
    iget-boolean v0, v14, Lf0/g;->y0:Z

    .line 1487
    .line 1488
    or-int/2addr v0, v15

    .line 1489
    move v12, v0

    .line 1490
    :goto_3a
    add-int/lit8 v11, v11, 0x1

    .line 1491
    .line 1492
    move-object/from16 v22, v1

    .line 1493
    .line 1494
    move/from16 v0, v16

    .line 1495
    .line 1496
    const/4 v15, 0x0

    .line 1497
    move-object/from16 v1, p1

    .line 1498
    .line 1499
    goto/16 :goto_38

    .line 1500
    .line 1501
    :cond_57
    move/from16 v16, v0

    .line 1502
    .line 1503
    move-object/from16 v1, v22

    .line 1504
    .line 1505
    const/4 v0, 0x0

    .line 1506
    :goto_3b
    const/4 v15, 0x2

    .line 1507
    if-ge v0, v15, :cond_65

    .line 1508
    .line 1509
    const/4 v11, 0x0

    .line 1510
    :goto_3c
    if-ge v11, v3, :cond_64

    .line 1511
    .line 1512
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v13

    .line 1516
    check-cast v13, Lf0/d;

    .line 1517
    .line 1518
    instance-of v14, v13, Lf0/i;

    .line 1519
    .line 1520
    if-eqz v14, :cond_58

    .line 1521
    .line 1522
    instance-of v14, v13, Lf0/g;

    .line 1523
    .line 1524
    if-eqz v14, :cond_5c

    .line 1525
    .line 1526
    :cond_58
    instance-of v14, v13, Lf0/h;

    .line 1527
    .line 1528
    if-eqz v14, :cond_59

    .line 1529
    .line 1530
    goto :goto_3d

    .line 1531
    :cond_59
    iget v14, v13, Lf0/d;->g0:I

    .line 1532
    .line 1533
    const/16 v15, 0x8

    .line 1534
    .line 1535
    if-ne v14, v15, :cond_5a

    .line 1536
    .line 1537
    goto :goto_3d

    .line 1538
    :cond_5a
    if-eqz v20, :cond_5b

    .line 1539
    .line 1540
    iget-object v14, v13, Lf0/d;->d:Lg0/k;

    .line 1541
    .line 1542
    iget-object v14, v14, Lg0/o;->e:Lg0/g;

    .line 1543
    .line 1544
    iget-boolean v14, v14, Lg0/f;->j:Z

    .line 1545
    .line 1546
    if-eqz v14, :cond_5b

    .line 1547
    .line 1548
    iget-object v14, v13, Lf0/d;->e:Lg0/m;

    .line 1549
    .line 1550
    iget-object v14, v14, Lg0/o;->e:Lg0/g;

    .line 1551
    .line 1552
    iget-boolean v14, v14, Lg0/f;->j:Z

    .line 1553
    .line 1554
    if-eqz v14, :cond_5b

    .line 1555
    .line 1556
    goto :goto_3d

    .line 1557
    :cond_5b
    instance-of v14, v13, Lf0/g;

    .line 1558
    .line 1559
    if-eqz v14, :cond_5d

    .line 1560
    .line 1561
    :cond_5c
    :goto_3d
    move-object/from16 v22, v1

    .line 1562
    .line 1563
    move-object/from16 v19, v2

    .line 1564
    .line 1565
    move/from16 v21, v3

    .line 1566
    .line 1567
    const/4 v14, 0x4

    .line 1568
    const/4 v15, 0x5

    .line 1569
    goto/16 :goto_42

    .line 1570
    .line 1571
    :cond_5d
    invoke-virtual {v13}, Lf0/d;->q()I

    .line 1572
    .line 1573
    .line 1574
    move-result v14

    .line 1575
    invoke-virtual {v13}, Lf0/d;->k()I

    .line 1576
    .line 1577
    .line 1578
    move-result v15

    .line 1579
    move-object/from16 v19, v2

    .line 1580
    .line 1581
    iget v2, v13, Lf0/d;->a0:I

    .line 1582
    .line 1583
    move/from16 v21, v3

    .line 1584
    .line 1585
    const/4 v3, 0x1

    .line 1586
    if-ne v0, v3, :cond_5e

    .line 1587
    .line 1588
    const/4 v3, 0x2

    .line 1589
    :cond_5e
    invoke-virtual {v4, v3, v13, v1}, Lv3/f;->E(ILf0/d;Li0/f;)Z

    .line 1590
    .line 1591
    .line 1592
    move-result v3

    .line 1593
    or-int/2addr v3, v12

    .line 1594
    invoke-virtual {v13}, Lf0/d;->q()I

    .line 1595
    .line 1596
    .line 1597
    move-result v12

    .line 1598
    move-object/from16 v22, v1

    .line 1599
    .line 1600
    invoke-virtual {v13}, Lf0/d;->k()I

    .line 1601
    .line 1602
    .line 1603
    move-result v1

    .line 1604
    if-eq v12, v14, :cond_60

    .line 1605
    .line 1606
    invoke-virtual {v13, v12}, Lf0/d;->O(I)V

    .line 1607
    .line 1608
    .line 1609
    if-eqz v8, :cond_5f

    .line 1610
    .line 1611
    invoke-virtual {v13}, Lf0/d;->r()I

    .line 1612
    .line 1613
    .line 1614
    move-result v3

    .line 1615
    iget v12, v13, Lf0/d;->U:I

    .line 1616
    .line 1617
    add-int/2addr v3, v12

    .line 1618
    if-le v3, v9, :cond_5f

    .line 1619
    .line 1620
    invoke-virtual {v13}, Lf0/d;->r()I

    .line 1621
    .line 1622
    .line 1623
    move-result v3

    .line 1624
    iget v12, v13, Lf0/d;->U:I

    .line 1625
    .line 1626
    add-int/2addr v3, v12

    .line 1627
    const/4 v14, 0x4

    .line 1628
    invoke-virtual {v13, v14}, Lf0/d;->i(I)Lf0/c;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v12

    .line 1632
    invoke-virtual {v12}, Lf0/c;->e()I

    .line 1633
    .line 1634
    .line 1635
    move-result v12

    .line 1636
    add-int/2addr v12, v3

    .line 1637
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    .line 1638
    .line 1639
    .line 1640
    move-result v9

    .line 1641
    goto :goto_3e

    .line 1642
    :cond_5f
    const/4 v14, 0x4

    .line 1643
    :goto_3e
    const/4 v3, 0x1

    .line 1644
    goto :goto_3f

    .line 1645
    :cond_60
    const/4 v14, 0x4

    .line 1646
    :goto_3f
    if-eq v1, v15, :cond_62

    .line 1647
    .line 1648
    invoke-virtual {v13, v1}, Lf0/d;->L(I)V

    .line 1649
    .line 1650
    .line 1651
    if-eqz v7, :cond_61

    .line 1652
    .line 1653
    invoke-virtual {v13}, Lf0/d;->s()I

    .line 1654
    .line 1655
    .line 1656
    move-result v1

    .line 1657
    iget v3, v13, Lf0/d;->V:I

    .line 1658
    .line 1659
    add-int/2addr v1, v3

    .line 1660
    if-le v1, v10, :cond_61

    .line 1661
    .line 1662
    invoke-virtual {v13}, Lf0/d;->s()I

    .line 1663
    .line 1664
    .line 1665
    move-result v1

    .line 1666
    iget v3, v13, Lf0/d;->V:I

    .line 1667
    .line 1668
    add-int/2addr v1, v3

    .line 1669
    const/4 v15, 0x5

    .line 1670
    invoke-virtual {v13, v15}, Lf0/d;->i(I)Lf0/c;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v3

    .line 1674
    invoke-virtual {v3}, Lf0/c;->e()I

    .line 1675
    .line 1676
    .line 1677
    move-result v3

    .line 1678
    add-int/2addr v3, v1

    .line 1679
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    .line 1680
    .line 1681
    .line 1682
    move-result v10

    .line 1683
    goto :goto_40

    .line 1684
    :cond_61
    const/4 v15, 0x5

    .line 1685
    :goto_40
    const/4 v3, 0x1

    .line 1686
    goto :goto_41

    .line 1687
    :cond_62
    const/4 v15, 0x5

    .line 1688
    :goto_41
    iget-boolean v1, v13, Lf0/d;->E:Z

    .line 1689
    .line 1690
    if-eqz v1, :cond_63

    .line 1691
    .line 1692
    iget v1, v13, Lf0/d;->a0:I

    .line 1693
    .line 1694
    if-eq v2, v1, :cond_63

    .line 1695
    .line 1696
    const/4 v12, 0x1

    .line 1697
    goto :goto_42

    .line 1698
    :cond_63
    move v12, v3

    .line 1699
    :goto_42
    add-int/lit8 v11, v11, 0x1

    .line 1700
    .line 1701
    move-object/from16 v2, v19

    .line 1702
    .line 1703
    move/from16 v3, v21

    .line 1704
    .line 1705
    move-object/from16 v1, v22

    .line 1706
    .line 1707
    const/4 v15, 0x2

    .line 1708
    goto/16 :goto_3c

    .line 1709
    .line 1710
    :cond_64
    move-object/from16 v22, v1

    .line 1711
    .line 1712
    move-object/from16 v19, v2

    .line 1713
    .line 1714
    move/from16 v21, v3

    .line 1715
    .line 1716
    const/4 v14, 0x4

    .line 1717
    const/4 v15, 0x5

    .line 1718
    if-eqz v12, :cond_65

    .line 1719
    .line 1720
    add-int/lit8 v0, v0, 0x1

    .line 1721
    .line 1722
    move-object/from16 v1, p1

    .line 1723
    .line 1724
    move-object/from16 v2, v22

    .line 1725
    .line 1726
    invoke-virtual {v4, v1, v0, v5, v6}, Lv3/f;->O(Lf0/e;III)V

    .line 1727
    .line 1728
    .line 1729
    move-object v1, v2

    .line 1730
    move-object/from16 v2, v19

    .line 1731
    .line 1732
    move/from16 v3, v21

    .line 1733
    .line 1734
    const/4 v12, 0x0

    .line 1735
    goto/16 :goto_3b

    .line 1736
    .line 1737
    :cond_65
    move-object/from16 v1, p1

    .line 1738
    .line 1739
    move/from16 v0, v16

    .line 1740
    .line 1741
    :cond_66
    iput v0, v1, Lf0/e;->D0:I

    .line 1742
    .line 1743
    const/16 v0, 0x200

    .line 1744
    .line 1745
    invoke-virtual {v1, v0}, Lf0/e;->W(I)Z

    .line 1746
    .line 1747
    .line 1748
    move-result v0

    .line 1749
    sput-boolean v0, Ld0/c;->p:Z

    .line 1750
    .line 1751
    :cond_67
    return-void
.end method

.method public final j(Lf0/d;Li0/e;Landroid/util/SparseArray;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Lf0/d;

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    instance-of p4, p4, Li0/e;

    .line 24
    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    const/4 p4, 0x1

    .line 28
    iput-boolean p4, p2, Li0/e;->c0:Z

    .line 29
    .line 30
    const/4 v1, 0x6

    .line 31
    if-ne p5, v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Li0/e;

    .line 38
    .line 39
    iput-boolean p4, v0, Li0/e;->c0:Z

    .line 40
    .line 41
    iget-object v0, v0, Li0/e;->p0:Lf0/d;

    .line 42
    .line 43
    iput-boolean p4, v0, Lf0/d;->E:Z

    .line 44
    .line 45
    :cond_0
    invoke-virtual {p1, v1}, Lf0/d;->i(I)Lf0/c;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p3, p5}, Lf0/d;->i(I)Lf0/c;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    iget p5, p2, Li0/e;->D:I

    .line 54
    .line 55
    iget p2, p2, Li0/e;->C:I

    .line 56
    .line 57
    invoke-virtual {v0, p3, p5, p2, p4}, Lf0/c;->b(Lf0/c;IIZ)Z

    .line 58
    .line 59
    .line 60
    iput-boolean p4, p1, Lf0/d;->E:Z

    .line 61
    .line 62
    const/4 p2, 0x3

    .line 63
    invoke-virtual {p1, p2}, Lf0/d;->i(I)Lf0/c;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Lf0/c;->j()V

    .line 68
    .line 69
    .line 70
    const/4 p2, 0x5

    .line 71
    invoke-virtual {p1, p2}, Lf0/d;->i(I)Lf0/c;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lf0/c;->j()V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 p3, 0x0

    .line 10
    const/4 p4, 0x0

    .line 11
    :goto_0
    if-ge p4, p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Li0/e;

    .line 22
    .line 23
    iget-object v1, v0, Li0/e;->p0:Lf0/d;

    .line 24
    .line 25
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/16 v3, 0x8

    .line 30
    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    iget-boolean v2, v0, Li0/e;->d0:Z

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    iget-boolean v0, v0, Li0/e;->e0:Z

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v1}, Lf0/d;->r()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {v1}, Lf0/d;->s()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1}, Lf0/d;->q()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-int/2addr v3, v0

    .line 57
    invoke-virtual {v1}, Lf0/d;->k()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v1, v2

    .line 62
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 63
    .line 64
    .line 65
    :goto_1
    add-int/lit8 p4, p4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-lez p2, :cond_2

    .line 75
    .line 76
    :goto_2
    if-ge p3, p2, :cond_2

    .line 77
    .line 78
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p4

    .line 82
    check-cast p4, Li0/c;

    .line 83
    .line 84
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    add-int/lit8 p3, p3, 0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 23

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    iget v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    .line 8
    .line 9
    if-ne v0, v7, :cond_0

    .line 10
    .line 11
    iget v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 12
    .line 13
    :cond_0
    iget-boolean v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, 0x1

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iput-boolean v10, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    .line 43
    .line 44
    iput v8, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 55
    .line 56
    const/high16 v1, 0x400000

    .line 57
    .line 58
    and-int/2addr v0, v1

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-ne v10, v0, :cond_3

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    const/4 v0, 0x0

    .line 70
    :goto_2
    iget-object v11, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lf0/e;

    .line 71
    .line 72
    iput-boolean v0, v11, Lf0/e;->v0:Z

    .line 73
    .line 74
    iget-boolean v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 75
    .line 76
    if-eqz v0, :cond_4e

    .line 77
    .line 78
    iput-boolean v9, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 79
    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/4 v1, 0x0

    .line 85
    :goto_3
    if-ge v1, v0, :cond_5

    .line 86
    .line 87
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    const/4 v12, 0x1

    .line 98
    goto :goto_4

    .line 99
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    const/4 v12, 0x0

    .line 103
    :goto_4
    if-eqz v12, :cond_4d

    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    const/4 v0, 0x0

    .line 114
    :goto_5
    if-ge v0, v14, :cond_7

    .line 115
    .line 116
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/view/View;)Lf0/d;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-nez v1, :cond_6

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_6
    invoke-virtual {v1}, Lf0/d;->C()V

    .line 128
    .line 129
    .line 130
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_7
    const/4 v0, 0x0

    .line 134
    const/4 v15, -0x1

    .line 135
    if-eqz v13, :cond_10

    .line 136
    .line 137
    const/4 v1, 0x0

    .line 138
    :goto_7
    if-ge v1, v14, :cond_10

    .line 139
    .line 140
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    instance-of v5, v3, Ljava/lang/String;

    .line 165
    .line 166
    if-eqz v5, :cond_a

    .line 167
    .line 168
    iget-object v5, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 169
    .line 170
    if-nez v5, :cond_8

    .line 171
    .line 172
    new-instance v5, Ljava/util/HashMap;

    .line 173
    .line 174
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 175
    .line 176
    .line 177
    iput-object v5, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 178
    .line 179
    :cond_8
    const-string v5, "/"

    .line 180
    .line 181
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-eq v5, v15, :cond_9

    .line 186
    .line 187
    add-int/lit8 v5, v5, 0x1

    .line 188
    .line 189
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    goto :goto_8

    .line 194
    :cond_9
    move-object v5, v3

    .line 195
    :goto_8
    iget-object v10, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 196
    .line 197
    invoke-virtual {v10, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    :cond_a
    const/16 v4, 0x2f

    .line 201
    .line 202
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eq v4, v15, :cond_b

    .line 207
    .line 208
    add-int/lit8 v4, v4, 0x1

    .line 209
    .line 210
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    :cond_b
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-nez v2, :cond_c

    .line 219
    .line 220
    :goto_9
    move-object v2, v11

    .line 221
    goto :goto_a

    .line 222
    :cond_c
    iget-object v4, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 223
    .line 224
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    check-cast v4, Landroid/view/View;

    .line 229
    .line 230
    if-nez v4, :cond_d

    .line 231
    .line 232
    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    if-eqz v4, :cond_d

    .line 237
    .line 238
    if-eq v4, v6, :cond_d

    .line 239
    .line 240
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    if-ne v2, v6, :cond_d

    .line 245
    .line 246
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 247
    .line 248
    .line 249
    :cond_d
    if-ne v4, v6, :cond_e

    .line 250
    .line 251
    goto :goto_9

    .line 252
    :cond_e
    if-nez v4, :cond_f

    .line 253
    .line 254
    move-object v2, v0

    .line 255
    goto :goto_a

    .line 256
    :cond_f
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    check-cast v2, Li0/e;

    .line 261
    .line 262
    iget-object v2, v2, Li0/e;->p0:Lf0/d;

    .line 263
    .line 264
    :goto_a
    iput-object v3, v2, Lf0/d;->h0:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .line 266
    :catch_0
    add-int/lit8 v1, v1, 0x1

    .line 267
    .line 268
    const/4 v10, 0x1

    .line 269
    goto/16 :goto_7

    .line 270
    .line 271
    :cond_10
    iget v1, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 272
    .line 273
    if-eq v1, v15, :cond_11

    .line 274
    .line 275
    const/4 v1, 0x0

    .line 276
    :goto_b
    if-ge v1, v14, :cond_11

    .line 277
    .line 278
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 283
    .line 284
    .line 285
    add-int/lit8 v1, v1, 0x1

    .line 286
    .line 287
    goto :goto_b

    .line 288
    :cond_11
    iget-object v1, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Li0/n;

    .line 289
    .line 290
    if-eqz v1, :cond_12

    .line 291
    .line 292
    invoke-virtual {v1, v6}, Li0/n;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 293
    .line 294
    .line 295
    :cond_12
    iget-object v1, v11, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 296
    .line 297
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 298
    .line 299
    .line 300
    iget-object v1, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-lez v2, :cond_1a

    .line 307
    .line 308
    const/4 v3, 0x0

    .line 309
    :goto_c
    if-ge v3, v2, :cond_1a

    .line 310
    .line 311
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    check-cast v4, Li0/c;

    .line 316
    .line 317
    invoke-virtual {v4}, Landroid/view/View;->isInEditMode()Z

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-eqz v5, :cond_13

    .line 322
    .line 323
    iget-object v5, v4, Li0/c;->e:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v4, v5}, Li0/c;->setIds(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    :cond_13
    iget-object v5, v4, Li0/c;->d:Lf0/i;

    .line 329
    .line 330
    if-nez v5, :cond_14

    .line 331
    .line 332
    move-object/from16 v17, v1

    .line 333
    .line 334
    goto/16 :goto_10

    .line 335
    .line 336
    :cond_14
    iput v9, v5, Lf0/i;->r0:I

    .line 337
    .line 338
    iget-object v5, v5, Lf0/i;->q0:[Lf0/d;

    .line 339
    .line 340
    invoke-static {v5, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    const/4 v5, 0x0

    .line 344
    :goto_d
    iget v0, v4, Li0/c;->b:I

    .line 345
    .line 346
    if-ge v5, v0, :cond_19

    .line 347
    .line 348
    iget-object v0, v4, Li0/c;->a:[I

    .line 349
    .line 350
    aget v0, v0, v5

    .line 351
    .line 352
    iget-object v15, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 353
    .line 354
    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v15

    .line 358
    check-cast v15, Landroid/view/View;

    .line 359
    .line 360
    if-nez v15, :cond_15

    .line 361
    .line 362
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    iget-object v9, v4, Li0/c;->g:Ljava/util/HashMap;

    .line 367
    .line 368
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    check-cast v0, Ljava/lang/String;

    .line 373
    .line 374
    invoke-virtual {v4, v6, v0}, Li0/c;->f(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    move-result v10

    .line 378
    if-eqz v10, :cond_15

    .line 379
    .line 380
    iget-object v15, v4, Li0/c;->a:[I

    .line 381
    .line 382
    aput v10, v15, v5

    .line 383
    .line 384
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 385
    .line 386
    .line 387
    move-result-object v15

    .line 388
    invoke-virtual {v9, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 392
    .line 393
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    move-object v15, v0

    .line 398
    check-cast v15, Landroid/view/View;

    .line 399
    .line 400
    :cond_15
    if-eqz v15, :cond_18

    .line 401
    .line 402
    iget-object v0, v4, Li0/c;->d:Lf0/i;

    .line 403
    .line 404
    invoke-virtual {v6, v15}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/view/View;)Lf0/d;

    .line 405
    .line 406
    .line 407
    move-result-object v9

    .line 408
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    .line 410
    .line 411
    if-eq v9, v0, :cond_18

    .line 412
    .line 413
    if-nez v9, :cond_16

    .line 414
    .line 415
    goto :goto_e

    .line 416
    :cond_16
    iget v10, v0, Lf0/i;->r0:I

    .line 417
    .line 418
    const/4 v15, 0x1

    .line 419
    add-int/2addr v10, v15

    .line 420
    iget-object v15, v0, Lf0/i;->q0:[Lf0/d;

    .line 421
    .line 422
    move-object/from16 v17, v1

    .line 423
    .line 424
    array-length v1, v15

    .line 425
    if-le v10, v1, :cond_17

    .line 426
    .line 427
    array-length v1, v15

    .line 428
    const/4 v10, 0x2

    .line 429
    mul-int/lit8 v1, v1, 0x2

    .line 430
    .line 431
    invoke-static {v15, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    check-cast v1, [Lf0/d;

    .line 436
    .line 437
    iput-object v1, v0, Lf0/i;->q0:[Lf0/d;

    .line 438
    .line 439
    :cond_17
    iget-object v1, v0, Lf0/i;->q0:[Lf0/d;

    .line 440
    .line 441
    iget v10, v0, Lf0/i;->r0:I

    .line 442
    .line 443
    aput-object v9, v1, v10

    .line 444
    .line 445
    const/4 v1, 0x1

    .line 446
    add-int/2addr v10, v1

    .line 447
    iput v10, v0, Lf0/i;->r0:I

    .line 448
    .line 449
    goto :goto_f

    .line 450
    :cond_18
    :goto_e
    move-object/from16 v17, v1

    .line 451
    .line 452
    :goto_f
    add-int/lit8 v5, v5, 0x1

    .line 453
    .line 454
    move-object/from16 v1, v17

    .line 455
    .line 456
    const/4 v9, 0x0

    .line 457
    const/4 v15, -0x1

    .line 458
    goto :goto_d

    .line 459
    :cond_19
    move-object/from16 v17, v1

    .line 460
    .line 461
    iget-object v0, v4, Li0/c;->d:Lf0/i;

    .line 462
    .line 463
    invoke-virtual {v0}, Lf0/i;->S()V

    .line 464
    .line 465
    .line 466
    :goto_10
    add-int/lit8 v3, v3, 0x1

    .line 467
    .line 468
    move-object/from16 v1, v17

    .line 469
    .line 470
    const/4 v0, 0x0

    .line 471
    const/4 v9, 0x0

    .line 472
    const/4 v15, -0x1

    .line 473
    goto/16 :goto_c

    .line 474
    .line 475
    :cond_1a
    const/4 v0, 0x0

    .line 476
    :goto_11
    if-ge v0, v14, :cond_1b

    .line 477
    .line 478
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 479
    .line 480
    .line 481
    add-int/lit8 v0, v0, 0x1

    .line 482
    .line 483
    goto :goto_11

    .line 484
    :cond_1b
    iget-object v9, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    .line 485
    .line 486
    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 487
    .line 488
    .line 489
    const/4 v0, 0x0

    .line 490
    invoke-virtual {v9, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    invoke-virtual {v9, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    const/4 v0, 0x0

    .line 501
    :goto_12
    if-ge v0, v14, :cond_1c

    .line 502
    .line 503
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/view/View;)Lf0/d;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    invoke-virtual {v9, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    add-int/lit8 v0, v0, 0x1

    .line 519
    .line 520
    goto :goto_12

    .line 521
    :cond_1c
    const/4 v10, 0x0

    .line 522
    :goto_13
    if-ge v10, v14, :cond_4d

    .line 523
    .line 524
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/view/View;)Lf0/d;

    .line 529
    .line 530
    .line 531
    move-result-object v15

    .line 532
    if-nez v15, :cond_1e

    .line 533
    .line 534
    :cond_1d
    :goto_14
    move/from16 v16, v14

    .line 535
    .line 536
    const/4 v0, 0x2

    .line 537
    const/4 v3, 0x1

    .line 538
    const/4 v4, -0x1

    .line 539
    goto/16 :goto_2a

    .line 540
    .line 541
    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    move-object v5, v1

    .line 546
    check-cast v5, Li0/e;

    .line 547
    .line 548
    iget-object v1, v11, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 549
    .line 550
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    iget-object v1, v15, Lf0/d;->T:Lf0/d;

    .line 554
    .line 555
    if-eqz v1, :cond_1f

    .line 556
    .line 557
    check-cast v1, Lf0/e;

    .line 558
    .line 559
    iget-object v1, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 560
    .line 561
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    invoke-virtual {v15}, Lf0/d;->C()V

    .line 565
    .line 566
    .line 567
    :cond_1f
    iput-object v11, v15, Lf0/d;->T:Lf0/d;

    .line 568
    .line 569
    invoke-virtual {v5}, Li0/e;->a()V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 573
    .line 574
    .line 575
    move-result v1

    .line 576
    iput v1, v15, Lf0/d;->g0:I

    .line 577
    .line 578
    iput-object v0, v15, Lf0/d;->f0:Landroid/view/View;

    .line 579
    .line 580
    instance-of v1, v0, Li0/c;

    .line 581
    .line 582
    if-eqz v1, :cond_20

    .line 583
    .line 584
    check-cast v0, Li0/c;

    .line 585
    .line 586
    iget-boolean v1, v11, Lf0/e;->v0:Z

    .line 587
    .line 588
    invoke-virtual {v0, v15, v1}, Li0/c;->h(Lf0/d;Z)V

    .line 589
    .line 590
    .line 591
    :cond_20
    iget-boolean v0, v5, Li0/e;->d0:Z

    .line 592
    .line 593
    if-eqz v0, :cond_24

    .line 594
    .line 595
    check-cast v15, Lf0/h;

    .line 596
    .line 597
    iget v0, v5, Li0/e;->m0:I

    .line 598
    .line 599
    iget v1, v5, Li0/e;->n0:I

    .line 600
    .line 601
    iget v2, v5, Li0/e;->o0:F

    .line 602
    .line 603
    const/high16 v3, -0x40800000    # -1.0f

    .line 604
    .line 605
    cmpl-float v4, v2, v3

    .line 606
    .line 607
    if-eqz v4, :cond_22

    .line 608
    .line 609
    cmpl-float v0, v2, v3

    .line 610
    .line 611
    if-lez v0, :cond_21

    .line 612
    .line 613
    iput v2, v15, Lf0/h;->q0:F

    .line 614
    .line 615
    const/4 v2, -0x1

    .line 616
    iput v2, v15, Lf0/h;->r0:I

    .line 617
    .line 618
    iput v2, v15, Lf0/h;->s0:I

    .line 619
    .line 620
    goto :goto_14

    .line 621
    :cond_21
    const/4 v2, -0x1

    .line 622
    goto :goto_14

    .line 623
    :cond_22
    const/4 v2, -0x1

    .line 624
    if-eq v0, v2, :cond_23

    .line 625
    .line 626
    if-le v0, v2, :cond_1d

    .line 627
    .line 628
    iput v3, v15, Lf0/h;->q0:F

    .line 629
    .line 630
    iput v0, v15, Lf0/h;->r0:I

    .line 631
    .line 632
    iput v2, v15, Lf0/h;->s0:I

    .line 633
    .line 634
    goto :goto_14

    .line 635
    :cond_23
    if-eq v1, v2, :cond_1d

    .line 636
    .line 637
    if-le v1, v2, :cond_1d

    .line 638
    .line 639
    iput v3, v15, Lf0/h;->q0:F

    .line 640
    .line 641
    iput v2, v15, Lf0/h;->r0:I

    .line 642
    .line 643
    iput v1, v15, Lf0/h;->s0:I

    .line 644
    .line 645
    goto :goto_14

    .line 646
    :cond_24
    iget v0, v5, Li0/e;->f0:I

    .line 647
    .line 648
    iget v1, v5, Li0/e;->g0:I

    .line 649
    .line 650
    iget v2, v5, Li0/e;->h0:I

    .line 651
    .line 652
    iget v3, v5, Li0/e;->i0:I

    .line 653
    .line 654
    iget v4, v5, Li0/e;->j0:I

    .line 655
    .line 656
    move/from16 v16, v14

    .line 657
    .line 658
    iget v14, v5, Li0/e;->k0:I

    .line 659
    .line 660
    iget v7, v5, Li0/e;->l0:F

    .line 661
    .line 662
    iget v8, v5, Li0/e;->p:I

    .line 663
    .line 664
    const/4 v6, -0x1

    .line 665
    if-eq v8, v6, :cond_26

    .line 666
    .line 667
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    move-object/from16 v22, v0

    .line 672
    .line 673
    check-cast v22, Lf0/d;

    .line 674
    .line 675
    if-eqz v22, :cond_25

    .line 676
    .line 677
    iget v0, v5, Li0/e;->r:F

    .line 678
    .line 679
    iget v1, v5, Li0/e;->q:I

    .line 680
    .line 681
    const/16 v19, 0x7

    .line 682
    .line 683
    const/16 v21, 0x0

    .line 684
    .line 685
    move-object/from16 v17, v15

    .line 686
    .line 687
    move/from16 v18, v19

    .line 688
    .line 689
    move/from16 v20, v1

    .line 690
    .line 691
    invoke-virtual/range {v17 .. v22}, Lf0/d;->v(IIIILf0/d;)V

    .line 692
    .line 693
    .line 694
    iput v0, v15, Lf0/d;->D:F

    .line 695
    .line 696
    :cond_25
    move-object v14, v5

    .line 697
    goto/16 :goto_1c

    .line 698
    .line 699
    :cond_26
    if-eq v0, v6, :cond_28

    .line 700
    .line 701
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    move-object/from16 v22, v0

    .line 706
    .line 707
    check-cast v22, Lf0/d;

    .line 708
    .line 709
    if-eqz v22, :cond_27

    .line 710
    .line 711
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 712
    .line 713
    move-object/from16 v17, v15

    .line 714
    .line 715
    const/4 v1, 0x2

    .line 716
    move/from16 v18, v1

    .line 717
    .line 718
    move/from16 v19, v1

    .line 719
    .line 720
    move/from16 v20, v0

    .line 721
    .line 722
    move/from16 v21, v4

    .line 723
    .line 724
    invoke-virtual/range {v17 .. v22}, Lf0/d;->v(IIIILf0/d;)V

    .line 725
    .line 726
    .line 727
    :cond_27
    :goto_15
    const/4 v0, -0x1

    .line 728
    goto :goto_16

    .line 729
    :cond_28
    const/4 v0, -0x1

    .line 730
    if-eq v1, v0, :cond_29

    .line 731
    .line 732
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    move-object/from16 v22, v0

    .line 737
    .line 738
    check-cast v22, Lf0/d;

    .line 739
    .line 740
    if-eqz v22, :cond_27

    .line 741
    .line 742
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 743
    .line 744
    move-object/from16 v17, v15

    .line 745
    .line 746
    const/4 v1, 0x2

    .line 747
    move/from16 v18, v1

    .line 748
    .line 749
    const/4 v1, 0x4

    .line 750
    move/from16 v19, v1

    .line 751
    .line 752
    move/from16 v20, v0

    .line 753
    .line 754
    move/from16 v21, v4

    .line 755
    .line 756
    invoke-virtual/range {v17 .. v22}, Lf0/d;->v(IIIILf0/d;)V

    .line 757
    .line 758
    .line 759
    goto :goto_15

    .line 760
    :cond_29
    :goto_16
    if-eq v2, v0, :cond_2a

    .line 761
    .line 762
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    move-object/from16 v22, v0

    .line 767
    .line 768
    check-cast v22, Lf0/d;

    .line 769
    .line 770
    if-eqz v22, :cond_2b

    .line 771
    .line 772
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 773
    .line 774
    move-object/from16 v17, v15

    .line 775
    .line 776
    const/4 v1, 0x4

    .line 777
    move/from16 v18, v1

    .line 778
    .line 779
    const/4 v1, 0x2

    .line 780
    move/from16 v19, v1

    .line 781
    .line 782
    move/from16 v20, v0

    .line 783
    .line 784
    move/from16 v21, v14

    .line 785
    .line 786
    invoke-virtual/range {v17 .. v22}, Lf0/d;->v(IIIILf0/d;)V

    .line 787
    .line 788
    .line 789
    goto :goto_17

    .line 790
    :cond_2a
    if-eq v3, v0, :cond_2b

    .line 791
    .line 792
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    move-object/from16 v22, v0

    .line 797
    .line 798
    check-cast v22, Lf0/d;

    .line 799
    .line 800
    if-eqz v22, :cond_2b

    .line 801
    .line 802
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 803
    .line 804
    move-object/from16 v17, v15

    .line 805
    .line 806
    const/4 v1, 0x4

    .line 807
    move/from16 v18, v1

    .line 808
    .line 809
    move/from16 v19, v1

    .line 810
    .line 811
    move/from16 v20, v0

    .line 812
    .line 813
    move/from16 v21, v14

    .line 814
    .line 815
    invoke-virtual/range {v17 .. v22}, Lf0/d;->v(IIIILf0/d;)V

    .line 816
    .line 817
    .line 818
    :cond_2b
    :goto_17
    iget v0, v5, Li0/e;->i:I

    .line 819
    .line 820
    const/4 v1, -0x1

    .line 821
    if-eq v0, v1, :cond_2c

    .line 822
    .line 823
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    move-object/from16 v22, v0

    .line 828
    .line 829
    check-cast v22, Lf0/d;

    .line 830
    .line 831
    if-eqz v22, :cond_2d

    .line 832
    .line 833
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 834
    .line 835
    iget v1, v5, Li0/e;->x:I

    .line 836
    .line 837
    move-object/from16 v17, v15

    .line 838
    .line 839
    const/4 v2, 0x3

    .line 840
    move/from16 v18, v2

    .line 841
    .line 842
    move/from16 v19, v2

    .line 843
    .line 844
    move/from16 v20, v0

    .line 845
    .line 846
    move/from16 v21, v1

    .line 847
    .line 848
    invoke-virtual/range {v17 .. v22}, Lf0/d;->v(IIIILf0/d;)V

    .line 849
    .line 850
    .line 851
    goto :goto_18

    .line 852
    :cond_2c
    iget v0, v5, Li0/e;->j:I

    .line 853
    .line 854
    const/4 v1, -0x1

    .line 855
    if-eq v0, v1, :cond_2d

    .line 856
    .line 857
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    move-object/from16 v22, v0

    .line 862
    .line 863
    check-cast v22, Lf0/d;

    .line 864
    .line 865
    if-eqz v22, :cond_2d

    .line 866
    .line 867
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 868
    .line 869
    iget v1, v5, Li0/e;->x:I

    .line 870
    .line 871
    move-object/from16 v17, v15

    .line 872
    .line 873
    const/4 v2, 0x3

    .line 874
    move/from16 v18, v2

    .line 875
    .line 876
    const/4 v2, 0x5

    .line 877
    move/from16 v19, v2

    .line 878
    .line 879
    move/from16 v20, v0

    .line 880
    .line 881
    move/from16 v21, v1

    .line 882
    .line 883
    invoke-virtual/range {v17 .. v22}, Lf0/d;->v(IIIILf0/d;)V

    .line 884
    .line 885
    .line 886
    :cond_2d
    :goto_18
    iget v0, v5, Li0/e;->k:I

    .line 887
    .line 888
    const/4 v1, -0x1

    .line 889
    if-eq v0, v1, :cond_2e

    .line 890
    .line 891
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    move-result-object v0

    .line 895
    move-object/from16 v22, v0

    .line 896
    .line 897
    check-cast v22, Lf0/d;

    .line 898
    .line 899
    if-eqz v22, :cond_2f

    .line 900
    .line 901
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 902
    .line 903
    iget v1, v5, Li0/e;->z:I

    .line 904
    .line 905
    move-object/from16 v17, v15

    .line 906
    .line 907
    const/4 v2, 0x5

    .line 908
    move/from16 v18, v2

    .line 909
    .line 910
    const/4 v2, 0x3

    .line 911
    move/from16 v19, v2

    .line 912
    .line 913
    move/from16 v20, v0

    .line 914
    .line 915
    move/from16 v21, v1

    .line 916
    .line 917
    invoke-virtual/range {v17 .. v22}, Lf0/d;->v(IIIILf0/d;)V

    .line 918
    .line 919
    .line 920
    goto :goto_19

    .line 921
    :cond_2e
    iget v0, v5, Li0/e;->l:I

    .line 922
    .line 923
    const/4 v1, -0x1

    .line 924
    if-eq v0, v1, :cond_2f

    .line 925
    .line 926
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 927
    .line 928
    .line 929
    move-result-object v0

    .line 930
    move-object/from16 v22, v0

    .line 931
    .line 932
    check-cast v22, Lf0/d;

    .line 933
    .line 934
    if-eqz v22, :cond_2f

    .line 935
    .line 936
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 937
    .line 938
    iget v1, v5, Li0/e;->z:I

    .line 939
    .line 940
    move-object/from16 v17, v15

    .line 941
    .line 942
    const/4 v2, 0x5

    .line 943
    move/from16 v18, v2

    .line 944
    .line 945
    move/from16 v19, v2

    .line 946
    .line 947
    move/from16 v20, v0

    .line 948
    .line 949
    move/from16 v21, v1

    .line 950
    .line 951
    invoke-virtual/range {v17 .. v22}, Lf0/d;->v(IIIILf0/d;)V

    .line 952
    .line 953
    .line 954
    :cond_2f
    :goto_19
    iget v4, v5, Li0/e;->m:I

    .line 955
    .line 956
    const/4 v6, -0x1

    .line 957
    if-eq v4, v6, :cond_31

    .line 958
    .line 959
    const/4 v8, 0x6

    .line 960
    move-object/from16 v0, p0

    .line 961
    .line 962
    move-object v1, v15

    .line 963
    move-object v2, v5

    .line 964
    move-object v3, v9

    .line 965
    move-object v14, v5

    .line 966
    move v5, v8

    .line 967
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->j(Lf0/d;Li0/e;Landroid/util/SparseArray;II)V

    .line 968
    .line 969
    .line 970
    :cond_30
    :goto_1a
    const/4 v0, 0x0

    .line 971
    goto :goto_1b

    .line 972
    :cond_31
    move-object v14, v5

    .line 973
    iget v4, v14, Li0/e;->n:I

    .line 974
    .line 975
    if-eq v4, v6, :cond_32

    .line 976
    .line 977
    move-object/from16 v0, p0

    .line 978
    .line 979
    move-object v1, v15

    .line 980
    move-object v2, v14

    .line 981
    move-object v3, v9

    .line 982
    const/4 v8, 0x3

    .line 983
    move v5, v8

    .line 984
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->j(Lf0/d;Li0/e;Landroid/util/SparseArray;II)V

    .line 985
    .line 986
    .line 987
    goto :goto_1a

    .line 988
    :cond_32
    iget v4, v14, Li0/e;->o:I

    .line 989
    .line 990
    if-eq v4, v6, :cond_30

    .line 991
    .line 992
    move-object/from16 v0, p0

    .line 993
    .line 994
    move-object v1, v15

    .line 995
    move-object v2, v14

    .line 996
    move-object v3, v9

    .line 997
    const/4 v6, 0x5

    .line 998
    move v5, v6

    .line 999
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->j(Lf0/d;Li0/e;Landroid/util/SparseArray;II)V

    .line 1000
    .line 1001
    .line 1002
    goto :goto_1a

    .line 1003
    :goto_1b
    cmpl-float v1, v7, v0

    .line 1004
    .line 1005
    if-ltz v1, :cond_33

    .line 1006
    .line 1007
    iput v7, v15, Lf0/d;->d0:F

    .line 1008
    .line 1009
    :cond_33
    iget v1, v14, Li0/e;->F:F

    .line 1010
    .line 1011
    cmpl-float v2, v1, v0

    .line 1012
    .line 1013
    if-ltz v2, :cond_34

    .line 1014
    .line 1015
    iput v1, v15, Lf0/d;->e0:F

    .line 1016
    .line 1017
    :cond_34
    :goto_1c
    if-eqz v13, :cond_36

    .line 1018
    .line 1019
    iget v0, v14, Li0/e;->T:I

    .line 1020
    .line 1021
    const/4 v1, -0x1

    .line 1022
    if-ne v0, v1, :cond_35

    .line 1023
    .line 1024
    iget v2, v14, Li0/e;->U:I

    .line 1025
    .line 1026
    if-eq v2, v1, :cond_36

    .line 1027
    .line 1028
    :cond_35
    iget v1, v14, Li0/e;->U:I

    .line 1029
    .line 1030
    iput v0, v15, Lf0/d;->Y:I

    .line 1031
    .line 1032
    iput v1, v15, Lf0/d;->Z:I

    .line 1033
    .line 1034
    :cond_36
    iget-boolean v0, v14, Li0/e;->a0:Z

    .line 1035
    .line 1036
    const/4 v1, 0x3

    .line 1037
    const/4 v2, 0x4

    .line 1038
    const/4 v3, -0x2

    .line 1039
    if-nez v0, :cond_39

    .line 1040
    .line 1041
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1042
    .line 1043
    const/4 v4, -0x1

    .line 1044
    if-ne v0, v4, :cond_38

    .line 1045
    .line 1046
    iget-boolean v0, v14, Li0/e;->W:Z

    .line 1047
    .line 1048
    if-eqz v0, :cond_37

    .line 1049
    .line 1050
    invoke-virtual {v15, v1}, Lf0/d;->M(I)V

    .line 1051
    .line 1052
    .line 1053
    :goto_1d
    const/4 v0, 0x2

    .line 1054
    goto :goto_1e

    .line 1055
    :cond_37
    invoke-virtual {v15, v2}, Lf0/d;->M(I)V

    .line 1056
    .line 1057
    .line 1058
    goto :goto_1d

    .line 1059
    :goto_1e
    invoke-virtual {v15, v0}, Lf0/d;->i(I)Lf0/c;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1064
    .line 1065
    iput v4, v0, Lf0/c;->g:I

    .line 1066
    .line 1067
    const/4 v0, 0x4

    .line 1068
    invoke-virtual {v15, v0}, Lf0/d;->i(I)Lf0/c;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1073
    .line 1074
    iput v4, v0, Lf0/c;->g:I

    .line 1075
    .line 1076
    goto :goto_1f

    .line 1077
    :cond_38
    invoke-virtual {v15, v1}, Lf0/d;->M(I)V

    .line 1078
    .line 1079
    .line 1080
    const/4 v0, 0x0

    .line 1081
    invoke-virtual {v15, v0}, Lf0/d;->O(I)V

    .line 1082
    .line 1083
    .line 1084
    goto :goto_1f

    .line 1085
    :cond_39
    const/4 v0, 0x1

    .line 1086
    invoke-virtual {v15, v0}, Lf0/d;->M(I)V

    .line 1087
    .line 1088
    .line 1089
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1090
    .line 1091
    invoke-virtual {v15, v0}, Lf0/d;->O(I)V

    .line 1092
    .line 1093
    .line 1094
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1095
    .line 1096
    if-ne v0, v3, :cond_3a

    .line 1097
    .line 1098
    const/4 v0, 0x2

    .line 1099
    invoke-virtual {v15, v0}, Lf0/d;->M(I)V

    .line 1100
    .line 1101
    .line 1102
    :cond_3a
    :goto_1f
    iget-boolean v0, v14, Li0/e;->b0:Z

    .line 1103
    .line 1104
    if-nez v0, :cond_3d

    .line 1105
    .line 1106
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1107
    .line 1108
    const/4 v4, -0x1

    .line 1109
    if-ne v0, v4, :cond_3c

    .line 1110
    .line 1111
    iget-boolean v0, v14, Li0/e;->X:Z

    .line 1112
    .line 1113
    if-eqz v0, :cond_3b

    .line 1114
    .line 1115
    invoke-virtual {v15, v1}, Lf0/d;->N(I)V

    .line 1116
    .line 1117
    .line 1118
    :goto_20
    const/4 v0, 0x3

    .line 1119
    goto :goto_21

    .line 1120
    :cond_3b
    invoke-virtual {v15, v2}, Lf0/d;->N(I)V

    .line 1121
    .line 1122
    .line 1123
    goto :goto_20

    .line 1124
    :goto_21
    invoke-virtual {v15, v0}, Lf0/d;->i(I)Lf0/c;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v0

    .line 1128
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1129
    .line 1130
    iput v2, v0, Lf0/c;->g:I

    .line 1131
    .line 1132
    const/4 v0, 0x5

    .line 1133
    invoke-virtual {v15, v0}, Lf0/d;->i(I)Lf0/c;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v0

    .line 1137
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1138
    .line 1139
    iput v2, v0, Lf0/c;->g:I

    .line 1140
    .line 1141
    goto :goto_22

    .line 1142
    :cond_3c
    invoke-virtual {v15, v1}, Lf0/d;->N(I)V

    .line 1143
    .line 1144
    .line 1145
    const/4 v0, 0x0

    .line 1146
    invoke-virtual {v15, v0}, Lf0/d;->L(I)V

    .line 1147
    .line 1148
    .line 1149
    goto :goto_22

    .line 1150
    :cond_3d
    const/4 v0, 0x1

    .line 1151
    const/4 v4, -0x1

    .line 1152
    invoke-virtual {v15, v0}, Lf0/d;->N(I)V

    .line 1153
    .line 1154
    .line 1155
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1156
    .line 1157
    invoke-virtual {v15, v0}, Lf0/d;->L(I)V

    .line 1158
    .line 1159
    .line 1160
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1161
    .line 1162
    if-ne v0, v3, :cond_3e

    .line 1163
    .line 1164
    const/4 v0, 0x2

    .line 1165
    invoke-virtual {v15, v0}, Lf0/d;->N(I)V

    .line 1166
    .line 1167
    .line 1168
    :cond_3e
    :goto_22
    iget-object v0, v14, Li0/e;->G:Ljava/lang/String;

    .line 1169
    .line 1170
    if-eqz v0, :cond_3f

    .line 1171
    .line 1172
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1173
    .line 1174
    .line 1175
    move-result v2

    .line 1176
    if-nez v2, :cond_40

    .line 1177
    .line 1178
    :cond_3f
    const/4 v2, 0x0

    .line 1179
    goto/16 :goto_28

    .line 1180
    .line 1181
    :cond_40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1182
    .line 1183
    .line 1184
    move-result v2

    .line 1185
    const/16 v3, 0x2c

    .line 1186
    .line 1187
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 1188
    .line 1189
    .line 1190
    move-result v3

    .line 1191
    if-lez v3, :cond_43

    .line 1192
    .line 1193
    add-int/lit8 v5, v2, -0x1

    .line 1194
    .line 1195
    if-ge v3, v5, :cond_43

    .line 1196
    .line 1197
    const/4 v5, 0x0

    .line 1198
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v6

    .line 1202
    const-string v5, "W"

    .line 1203
    .line 1204
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1205
    .line 1206
    .line 1207
    move-result v5

    .line 1208
    if-eqz v5, :cond_41

    .line 1209
    .line 1210
    const/4 v5, 0x0

    .line 1211
    goto :goto_23

    .line 1212
    :cond_41
    const-string v5, "H"

    .line 1213
    .line 1214
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1215
    .line 1216
    .line 1217
    move-result v5

    .line 1218
    if-eqz v5, :cond_42

    .line 1219
    .line 1220
    const/4 v5, 0x1

    .line 1221
    goto :goto_23

    .line 1222
    :cond_42
    const/4 v5, -0x1

    .line 1223
    :goto_23
    add-int/lit8 v3, v3, 0x1

    .line 1224
    .line 1225
    goto :goto_24

    .line 1226
    :cond_43
    const/4 v3, 0x0

    .line 1227
    const/4 v5, -0x1

    .line 1228
    :goto_24
    const/16 v6, 0x3a

    .line 1229
    .line 1230
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    .line 1231
    .line 1232
    .line 1233
    move-result v6

    .line 1234
    if-ltz v6, :cond_45

    .line 1235
    .line 1236
    add-int/lit8 v2, v2, -0x1

    .line 1237
    .line 1238
    if-ge v6, v2, :cond_45

    .line 1239
    .line 1240
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v2

    .line 1244
    add-int/lit8 v6, v6, 0x1

    .line 1245
    .line 1246
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v0

    .line 1250
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1251
    .line 1252
    .line 1253
    move-result v3

    .line 1254
    if-lez v3, :cond_46

    .line 1255
    .line 1256
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1257
    .line 1258
    .line 1259
    move-result v3

    .line 1260
    if-lez v3, :cond_46

    .line 1261
    .line 1262
    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1263
    .line 1264
    .line 1265
    move-result v2

    .line 1266
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1267
    .line 1268
    .line 1269
    move-result v0

    .line 1270
    const/4 v3, 0x0

    .line 1271
    cmpl-float v6, v2, v3

    .line 1272
    .line 1273
    if-lez v6, :cond_46

    .line 1274
    .line 1275
    cmpl-float v6, v0, v3

    .line 1276
    .line 1277
    if-lez v6, :cond_46

    .line 1278
    .line 1279
    const/4 v3, 0x1

    .line 1280
    if-ne v5, v3, :cond_44

    .line 1281
    .line 1282
    div-float/2addr v0, v2

    .line 1283
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 1284
    .line 1285
    .line 1286
    move-result v0

    .line 1287
    goto :goto_25

    .line 1288
    :catch_1
    nop

    .line 1289
    goto :goto_26

    .line 1290
    :cond_44
    div-float/2addr v2, v0

    .line 1291
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 1292
    .line 1293
    .line 1294
    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1295
    :goto_25
    const/4 v2, 0x0

    .line 1296
    goto :goto_27

    .line 1297
    :cond_45
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v0

    .line 1301
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1302
    .line 1303
    .line 1304
    move-result v2

    .line 1305
    if-lez v2, :cond_46

    .line 1306
    .line 1307
    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1308
    .line 1309
    .line 1310
    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1311
    goto :goto_25

    .line 1312
    :catch_2
    nop

    .line 1313
    :cond_46
    :goto_26
    const/4 v0, 0x0

    .line 1314
    goto :goto_25

    .line 1315
    :goto_27
    cmpl-float v3, v0, v2

    .line 1316
    .line 1317
    if-lez v3, :cond_47

    .line 1318
    .line 1319
    iput v0, v15, Lf0/d;->W:F

    .line 1320
    .line 1321
    iput v5, v15, Lf0/d;->X:I

    .line 1322
    .line 1323
    goto :goto_29

    .line 1324
    :goto_28
    iput v2, v15, Lf0/d;->W:F

    .line 1325
    .line 1326
    :cond_47
    :goto_29
    iget v0, v14, Li0/e;->H:F

    .line 1327
    .line 1328
    iget-object v2, v15, Lf0/d;->k0:[F

    .line 1329
    .line 1330
    const/4 v3, 0x0

    .line 1331
    aput v0, v2, v3

    .line 1332
    .line 1333
    iget v0, v14, Li0/e;->I:F

    .line 1334
    .line 1335
    const/4 v3, 0x1

    .line 1336
    aput v0, v2, v3

    .line 1337
    .line 1338
    iget v0, v14, Li0/e;->J:I

    .line 1339
    .line 1340
    iput v0, v15, Lf0/d;->i0:I

    .line 1341
    .line 1342
    iget v0, v14, Li0/e;->K:I

    .line 1343
    .line 1344
    iput v0, v15, Lf0/d;->j0:I

    .line 1345
    .line 1346
    iget v0, v14, Li0/e;->Z:I

    .line 1347
    .line 1348
    if-ltz v0, :cond_48

    .line 1349
    .line 1350
    if-gt v0, v1, :cond_48

    .line 1351
    .line 1352
    iput v0, v15, Lf0/d;->q:I

    .line 1353
    .line 1354
    :cond_48
    iget v0, v14, Li0/e;->L:I

    .line 1355
    .line 1356
    iget v1, v14, Li0/e;->N:I

    .line 1357
    .line 1358
    iget v2, v14, Li0/e;->P:I

    .line 1359
    .line 1360
    iget v5, v14, Li0/e;->R:F

    .line 1361
    .line 1362
    iput v0, v15, Lf0/d;->r:I

    .line 1363
    .line 1364
    iput v1, v15, Lf0/d;->u:I

    .line 1365
    .line 1366
    const v1, 0x7fffffff

    .line 1367
    .line 1368
    .line 1369
    if-ne v2, v1, :cond_49

    .line 1370
    .line 1371
    const/4 v2, 0x0

    .line 1372
    :cond_49
    iput v2, v15, Lf0/d;->v:I

    .line 1373
    .line 1374
    iput v5, v15, Lf0/d;->w:F

    .line 1375
    .line 1376
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1377
    .line 1378
    const/4 v6, 0x0

    .line 1379
    cmpl-float v7, v5, v6

    .line 1380
    .line 1381
    if-lez v7, :cond_4a

    .line 1382
    .line 1383
    cmpg-float v5, v5, v2

    .line 1384
    .line 1385
    if-gez v5, :cond_4a

    .line 1386
    .line 1387
    if-nez v0, :cond_4a

    .line 1388
    .line 1389
    const/4 v0, 0x2

    .line 1390
    iput v0, v15, Lf0/d;->r:I

    .line 1391
    .line 1392
    :cond_4a
    iget v0, v14, Li0/e;->M:I

    .line 1393
    .line 1394
    iget v5, v14, Li0/e;->O:I

    .line 1395
    .line 1396
    iget v6, v14, Li0/e;->Q:I

    .line 1397
    .line 1398
    iget v7, v14, Li0/e;->S:F

    .line 1399
    .line 1400
    iput v0, v15, Lf0/d;->s:I

    .line 1401
    .line 1402
    iput v5, v15, Lf0/d;->x:I

    .line 1403
    .line 1404
    if-ne v6, v1, :cond_4b

    .line 1405
    .line 1406
    const/4 v6, 0x0

    .line 1407
    :cond_4b
    iput v6, v15, Lf0/d;->y:I

    .line 1408
    .line 1409
    iput v7, v15, Lf0/d;->z:F

    .line 1410
    .line 1411
    const/4 v1, 0x0

    .line 1412
    cmpl-float v1, v7, v1

    .line 1413
    .line 1414
    if-lez v1, :cond_4c

    .line 1415
    .line 1416
    cmpg-float v1, v7, v2

    .line 1417
    .line 1418
    if-gez v1, :cond_4c

    .line 1419
    .line 1420
    if-nez v0, :cond_4c

    .line 1421
    .line 1422
    const/4 v0, 0x2

    .line 1423
    iput v0, v15, Lf0/d;->s:I

    .line 1424
    .line 1425
    goto :goto_2a

    .line 1426
    :cond_4c
    const/4 v0, 0x2

    .line 1427
    :goto_2a
    add-int/lit8 v10, v10, 0x1

    .line 1428
    .line 1429
    move-object/from16 v6, p0

    .line 1430
    .line 1431
    move/from16 v7, p1

    .line 1432
    .line 1433
    move/from16 v8, p2

    .line 1434
    .line 1435
    move/from16 v14, v16

    .line 1436
    .line 1437
    goto/16 :goto_13

    .line 1438
    .line 1439
    :cond_4d
    if-eqz v12, :cond_4e

    .line 1440
    .line 1441
    iget-object v0, v11, Lf0/e;->r0:Lv3/f;

    .line 1442
    .line 1443
    invoke-virtual {v0, v11}, Lv3/f;->S(Lf0/e;)V

    .line 1444
    .line 1445
    .line 1446
    :cond_4e
    move-object/from16 v0, p0

    .line 1447
    .line 1448
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 1449
    .line 1450
    move/from16 v2, p1

    .line 1451
    .line 1452
    move/from16 v3, p2

    .line 1453
    .line 1454
    invoke-virtual {v0, v11, v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(Lf0/e;III)V

    .line 1455
    .line 1456
    .line 1457
    invoke-virtual {v11}, Lf0/d;->q()I

    .line 1458
    .line 1459
    .line 1460
    move-result v1

    .line 1461
    invoke-virtual {v11}, Lf0/d;->k()I

    .line 1462
    .line 1463
    .line 1464
    move-result v4

    .line 1465
    iget-boolean v5, v11, Lf0/e;->E0:Z

    .line 1466
    .line 1467
    iget-boolean v6, v11, Lf0/e;->F0:Z

    .line 1468
    .line 1469
    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Li0/f;

    .line 1470
    .line 1471
    iget v8, v7, Li0/f;->e:I

    .line 1472
    .line 1473
    iget v7, v7, Li0/f;->d:I

    .line 1474
    .line 1475
    add-int/2addr v1, v7

    .line 1476
    add-int/2addr v4, v8

    .line 1477
    const/4 v7, 0x0

    .line 1478
    invoke-static {v1, v2, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 1479
    .line 1480
    .line 1481
    move-result v1

    .line 1482
    invoke-static {v4, v3, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 1483
    .line 1484
    .line 1485
    move-result v2

    .line 1486
    const v3, 0xffffff

    .line 1487
    .line 1488
    .line 1489
    and-int/2addr v1, v3

    .line 1490
    and-int/2addr v2, v3

    .line 1491
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 1492
    .line 1493
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 1494
    .line 1495
    .line 1496
    move-result v1

    .line 1497
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 1498
    .line 1499
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 1500
    .line 1501
    .line 1502
    move-result v2

    .line 1503
    const/high16 v3, 0x1000000

    .line 1504
    .line 1505
    if-eqz v5, :cond_4f

    .line 1506
    .line 1507
    or-int/2addr v1, v3

    .line 1508
    :cond_4f
    if-eqz v6, :cond_50

    .line 1509
    .line 1510
    or-int/2addr v2, v3

    .line 1511
    :cond_50
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1512
    .line 1513
    .line 1514
    return-void
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/view/View;)Lf0/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    instance-of v0, v0, Lf0/h;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Li0/e;

    .line 22
    .line 23
    new-instance v1, Lf0/h;

    .line 24
    .line 25
    invoke-direct {v1}, Lf0/h;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Li0/e;->p0:Lf0/d;

    .line 29
    .line 30
    iput-boolean v2, v0, Li0/e;->d0:Z

    .line 31
    .line 32
    iget v0, v0, Li0/e;->V:I

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lf0/h;->S(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    instance-of v0, p1, Li0/c;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    move-object v0, p1

    .line 42
    check-cast v0, Li0/c;

    .line 43
    .line 44
    invoke-virtual {v0}, Li0/c;->i()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Li0/e;

    .line 52
    .line 53
    iput-boolean v2, v1, Li0/e;->e0:Z

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 71
    .line 72
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 76
    .line 77
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/view/View;)Lf0/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lf0/e;

    .line 18
    .line 19
    iget-object v1, v1, Lf0/e;->q0:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lf0/d;->C()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 34
    .line 35
    return-void
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setConstraintSet(Li0/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Li0/n;

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnConstraintsChanged(Li0/o;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:La2/g1;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lf0/e;

    .line 4
    .line 5
    iput p1, v0, Lf0/e;->D0:I

    .line 6
    .line 7
    const/16 p1, 0x200

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lf0/e;->W(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sput-boolean p1, Ld0/c;->p:Z

    .line 14
    .line 15
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
