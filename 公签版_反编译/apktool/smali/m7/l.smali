.class public final Lm7/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [Lm7/t;

    iput-object v1, p0, Lm7/l;->b:Ljava/lang/Object;

    .line 3
    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lm7/l;->c:Ljava/lang/Object;

    .line 4
    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lm7/l;->d:Ljava/lang/Object;

    .line 5
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lm7/l;->e:Ljava/lang/Object;

    .line 6
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lm7/l;->f:Ljava/lang/Object;

    .line 7
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lm7/l;->g:Ljava/lang/Object;

    .line 8
    new-instance v1, Lm7/t;

    invoke-direct {v1}, Lm7/t;-><init>()V

    iput-object v1, p0, Lm7/l;->j:Ljava/lang/Object;

    const/4 v1, 0x2

    .line 9
    new-array v2, v1, [F

    iput-object v2, p0, Lm7/l;->k:Ljava/lang/Object;

    .line 10
    new-array v1, v1, [F

    iput-object v1, p0, Lm7/l;->l:Ljava/lang/Object;

    .line 11
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lm7/l;->h:Ljava/lang/Object;

    .line 12
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lm7/l;->i:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lm7/l;->a:Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    iget-object v2, p0, Lm7/l;->b:Ljava/lang/Object;

    check-cast v2, [Lm7/t;

    new-instance v3, Lm7/t;

    invoke-direct {v3}, Lm7/t;-><init>()V

    aput-object v3, v2, v1

    .line 15
    iget-object v2, p0, Lm7/l;->c:Ljava/lang/Object;

    check-cast v2, [Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    .line 16
    iget-object v2, p0, Lm7/l;->d:Ljava/lang/Object;

    check-cast v2, [Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ly1/f0;Lz1/e;Lu1/b0;Lz1/i;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p4, p0, Lm7/l;->b:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lm7/l;->f:Ljava/lang/Object;

    .line 20
    new-instance p1, Lf2/e1;

    invoke-direct {p1}, Lf2/e1;-><init>()V

    iput-object p1, p0, Lm7/l;->k:Ljava/lang/Object;

    .line 21
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lm7/l;->d:Ljava/lang/Object;

    .line 22
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm7/l;->e:Ljava/lang/Object;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lm7/l;->c:Ljava/lang/Object;

    .line 24
    iput-object p2, p0, Lm7/l;->i:Ljava/lang/Object;

    .line 25
    iput-object p3, p0, Lm7/l;->j:Ljava/lang/Object;

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm7/l;->g:Ljava/lang/Object;

    .line 27
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lm7/l;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(ILjava/util/ArrayList;Lf2/e1;)Lr1/q0;
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    iput-object p3, p0, Lm7/l;->k:Ljava/lang/Object;

    .line 8
    .line 9
    move p3, p1

    .line 10
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/2addr v0, p1

    .line 15
    if-ge p3, v0, :cond_4

    .line 16
    .line 17
    sub-int v0, p3, p1

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ly1/u0;

    .line 24
    .line 25
    iget-object v1, p0, Lm7/l;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-lez p3, :cond_0

    .line 31
    .line 32
    add-int/lit8 v3, p3, -0x1

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ly1/u0;

    .line 39
    .line 40
    iget-object v4, v3, Ly1/u0;->a:Lf2/x;

    .line 41
    .line 42
    iget-object v4, v4, Lf2/x;->o:Lf2/v;

    .line 43
    .line 44
    iget v3, v3, Ly1/u0;->d:I

    .line 45
    .line 46
    iget-object v4, v4, Lf2/r;->b:Lr1/q0;

    .line 47
    .line 48
    invoke-virtual {v4}, Lr1/q0;->o()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    add-int/2addr v4, v3

    .line 53
    iput v4, v0, Ly1/u0;->d:I

    .line 54
    .line 55
    iput-boolean v2, v0, Ly1/u0;->e:Z

    .line 56
    .line 57
    iget-object v2, v0, Ly1/u0;->c:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    iput v2, v0, Ly1/u0;->d:I

    .line 64
    .line 65
    iput-boolean v2, v0, Ly1/u0;->e:Z

    .line 66
    .line 67
    iget-object v2, v0, Ly1/u0;->c:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 70
    .line 71
    .line 72
    :goto_1
    iget-object v2, v0, Ly1/u0;->a:Lf2/x;

    .line 73
    .line 74
    iget-object v2, v2, Lf2/x;->o:Lf2/v;

    .line 75
    .line 76
    iget-object v2, v2, Lf2/r;->b:Lr1/q0;

    .line 77
    .line 78
    invoke-virtual {v2}, Lr1/q0;->o()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    move v3, p3

    .line 83
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-ge v3, v4, :cond_1

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Ly1/u0;

    .line 94
    .line 95
    iget v5, v4, Ly1/u0;->d:I

    .line 96
    .line 97
    add-int/2addr v5, v2

    .line 98
    iput v5, v4, Ly1/u0;->d:I

    .line 99
    .line 100
    add-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_1
    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lm7/l;->e:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v1, Ljava/util/HashMap;

    .line 109
    .line 110
    iget-object v2, v0, Ly1/u0;->b:Ljava/lang/Object;

    .line 111
    .line 112
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    iget-boolean v1, p0, Lm7/l;->a:Z

    .line 116
    .line 117
    if-eqz v1, :cond_3

    .line 118
    .line 119
    invoke-virtual {p0, v0}, Lm7/l;->g(Ly1/u0;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lm7/l;->d:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v1, Ljava/util/IdentityHashMap;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_2

    .line 131
    .line 132
    iget-object v1, p0, Lm7/l;->h:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v1, Ljava/util/HashSet;

    .line 135
    .line 136
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_2
    iget-object v1, p0, Lm7/l;->g:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v1, Ljava/util/HashMap;

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Ly1/t0;

    .line 149
    .line 150
    if-eqz v0, :cond_3

    .line 151
    .line 152
    iget-object v1, v0, Ly1/t0;->b:Ly1/p0;

    .line 153
    .line 154
    iget-object v0, v0, Ly1/t0;->a:Lf2/a;

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Lf2/a;->b(Lf2/d0;)V

    .line 157
    .line 158
    .line 159
    :cond_3
    :goto_3
    add-int/lit8 p3, p3, 0x1

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_4
    invoke-virtual {p0}, Lm7/l;->c()Lr1/q0;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    return-object p1
.end method

.method public b(Lm7/j;FLandroid/graphics/RectF;Ll5/y;Landroid/graphics/Path;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    .line 12
    .line 13
    .line 14
    iget-object v5, v0, Lm7/l;->f:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v5, Landroid/graphics/Path;

    .line 17
    .line 18
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 19
    .line 20
    .line 21
    iget-object v6, v0, Lm7/l;->g:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v6, Landroid/graphics/Path;

    .line 24
    .line 25
    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 26
    .line 27
    .line 28
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 29
    .line 30
    invoke-virtual {v6, v2, v7}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 31
    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    :goto_0
    iget-object v9, v0, Lm7/l;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v9, [Landroid/graphics/Matrix;

    .line 37
    .line 38
    iget-object v10, v0, Lm7/l;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v10, [Landroid/graphics/Matrix;

    .line 41
    .line 42
    iget-object v11, v0, Lm7/l;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v11, [Lm7/t;

    .line 45
    .line 46
    const/4 v12, 0x1

    .line 47
    const/4 v13, 0x4

    .line 48
    const/4 v14, 0x2

    .line 49
    const/4 v15, 0x3

    .line 50
    iget-object v7, v0, Lm7/l;->k:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v7, [F

    .line 53
    .line 54
    if-ge v8, v13, :cond_9

    .line 55
    .line 56
    if-eq v8, v12, :cond_2

    .line 57
    .line 58
    if-eq v8, v14, :cond_1

    .line 59
    .line 60
    if-eq v8, v15, :cond_0

    .line 61
    .line 62
    iget-object v13, v1, Lm7/j;->f:Lm7/c;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    iget-object v13, v1, Lm7/j;->e:Lm7/c;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iget-object v13, v1, Lm7/j;->h:Lm7/c;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget-object v13, v1, Lm7/j;->g:Lm7/c;

    .line 72
    .line 73
    :goto_1
    if-eq v8, v12, :cond_5

    .line 74
    .line 75
    if-eq v8, v14, :cond_4

    .line 76
    .line 77
    if-eq v8, v15, :cond_3

    .line 78
    .line 79
    iget-object v15, v1, Lm7/j;->b:Lqf/c;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    iget-object v15, v1, Lm7/j;->a:Lqf/c;

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    iget-object v15, v1, Lm7/j;->d:Lqf/c;

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_5
    iget-object v15, v1, Lm7/j;->c:Lqf/c;

    .line 89
    .line 90
    :goto_2
    aget-object v14, v11, v8

    .line 91
    .line 92
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-interface {v13, v2}, Lm7/c;->a(Landroid/graphics/RectF;)F

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    move/from16 v12, p2

    .line 100
    .line 101
    invoke-virtual {v15, v14, v12, v13}, Lqf/c;->t(Lm7/t;FF)V

    .line 102
    .line 103
    .line 104
    add-int/lit8 v13, v8, 0x1

    .line 105
    .line 106
    rem-int/lit8 v14, v13, 0x4

    .line 107
    .line 108
    mul-int/lit8 v14, v14, 0x5a

    .line 109
    .line 110
    int-to-float v14, v14

    .line 111
    aget-object v15, v10, v8

    .line 112
    .line 113
    invoke-virtual {v15}, Landroid/graphics/Matrix;->reset()V

    .line 114
    .line 115
    .line 116
    iget-object v15, v0, Lm7/l;->e:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v15, Landroid/graphics/PointF;

    .line 119
    .line 120
    const/4 v12, 0x1

    .line 121
    if-eq v8, v12, :cond_8

    .line 122
    .line 123
    const/4 v12, 0x2

    .line 124
    if-eq v8, v12, :cond_7

    .line 125
    .line 126
    const/4 v12, 0x3

    .line 127
    if-eq v8, v12, :cond_6

    .line 128
    .line 129
    iget v12, v2, Landroid/graphics/RectF;->right:F

    .line 130
    .line 131
    move/from16 v17, v13

    .line 132
    .line 133
    iget v13, v2, Landroid/graphics/RectF;->top:F

    .line 134
    .line 135
    invoke-virtual {v15, v12, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_6
    move/from16 v17, v13

    .line 140
    .line 141
    iget v12, v2, Landroid/graphics/RectF;->left:F

    .line 142
    .line 143
    iget v13, v2, Landroid/graphics/RectF;->top:F

    .line 144
    .line 145
    invoke-virtual {v15, v12, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    move/from16 v17, v13

    .line 150
    .line 151
    iget v12, v2, Landroid/graphics/RectF;->left:F

    .line 152
    .line 153
    iget v13, v2, Landroid/graphics/RectF;->bottom:F

    .line 154
    .line 155
    invoke-virtual {v15, v12, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_8
    move/from16 v17, v13

    .line 160
    .line 161
    iget v12, v2, Landroid/graphics/RectF;->right:F

    .line 162
    .line 163
    iget v13, v2, Landroid/graphics/RectF;->bottom:F

    .line 164
    .line 165
    invoke-virtual {v15, v12, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 166
    .line 167
    .line 168
    :goto_3
    aget-object v12, v10, v8

    .line 169
    .line 170
    iget v13, v15, Landroid/graphics/PointF;->x:F

    .line 171
    .line 172
    iget v15, v15, Landroid/graphics/PointF;->y:F

    .line 173
    .line 174
    invoke-virtual {v12, v13, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 175
    .line 176
    .line 177
    aget-object v12, v10, v8

    .line 178
    .line 179
    invoke-virtual {v12, v14}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 180
    .line 181
    .line 182
    aget-object v11, v11, v8

    .line 183
    .line 184
    iget v12, v11, Lm7/t;->b:F

    .line 185
    .line 186
    const/4 v13, 0x0

    .line 187
    aput v12, v7, v13

    .line 188
    .line 189
    iget v11, v11, Lm7/t;->c:F

    .line 190
    .line 191
    const/4 v12, 0x1

    .line 192
    aput v11, v7, v12

    .line 193
    .line 194
    aget-object v10, v10, v8

    .line 195
    .line 196
    invoke-virtual {v10, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 197
    .line 198
    .line 199
    aget-object v10, v9, v8

    .line 200
    .line 201
    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 202
    .line 203
    .line 204
    aget-object v10, v9, v8

    .line 205
    .line 206
    aget v11, v7, v13

    .line 207
    .line 208
    aget v7, v7, v12

    .line 209
    .line 210
    invoke-virtual {v10, v11, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 211
    .line 212
    .line 213
    aget-object v7, v9, v8

    .line 214
    .line 215
    invoke-virtual {v7, v14}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 216
    .line 217
    .line 218
    move/from16 v8, v17

    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_9
    const/4 v8, 0x0

    .line 223
    :goto_4
    if-ge v8, v13, :cond_13

    .line 224
    .line 225
    aget-object v14, v11, v8

    .line 226
    .line 227
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    const/4 v15, 0x0

    .line 231
    const/16 v16, 0x0

    .line 232
    .line 233
    aput v15, v7, v16

    .line 234
    .line 235
    iget v14, v14, Lm7/t;->a:F

    .line 236
    .line 237
    const/16 v18, 0x1

    .line 238
    .line 239
    aput v14, v7, v18

    .line 240
    .line 241
    aget-object v14, v10, v8

    .line 242
    .line 243
    invoke-virtual {v14, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 244
    .line 245
    .line 246
    if-nez v8, :cond_a

    .line 247
    .line 248
    aget v14, v7, v16

    .line 249
    .line 250
    aget v13, v7, v18

    .line 251
    .line 252
    invoke-virtual {v4, v14, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_a
    aget v13, v7, v16

    .line 257
    .line 258
    aget v14, v7, v18

    .line 259
    .line 260
    invoke-virtual {v4, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 261
    .line 262
    .line 263
    :goto_5
    aget-object v13, v11, v8

    .line 264
    .line 265
    aget-object v14, v10, v8

    .line 266
    .line 267
    invoke-virtual {v13, v14, v4}, Lm7/t;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 268
    .line 269
    .line 270
    if-eqz v3, :cond_b

    .line 271
    .line 272
    aget-object v13, v11, v8

    .line 273
    .line 274
    aget-object v14, v10, v8

    .line 275
    .line 276
    iget-object v12, v3, Ll5/y;->b:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v12, Lm7/g;

    .line 279
    .line 280
    iget-object v15, v12, Lm7/g;->d:Ljava/util/BitSet;

    .line 281
    .line 282
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    const/4 v2, 0x0

    .line 286
    invoke-virtual {v15, v8, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 287
    .line 288
    .line 289
    iget v2, v13, Lm7/t;->e:F

    .line 290
    .line 291
    invoke-virtual {v13, v2}, Lm7/t;->a(F)V

    .line 292
    .line 293
    .line 294
    new-instance v2, Landroid/graphics/Matrix;

    .line 295
    .line 296
    invoke-direct {v2, v14}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 297
    .line 298
    .line 299
    new-instance v14, Ljava/util/ArrayList;

    .line 300
    .line 301
    iget-object v13, v13, Lm7/t;->g:Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 304
    .line 305
    .line 306
    new-instance v13, Lm7/m;

    .line 307
    .line 308
    invoke-direct {v13, v14, v2}, Lm7/m;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    .line 309
    .line 310
    .line 311
    iget-object v2, v12, Lm7/g;->b:[Lm7/s;

    .line 312
    .line 313
    aput-object v13, v2, v8

    .line 314
    .line 315
    :cond_b
    add-int/lit8 v13, v8, 0x1

    .line 316
    .line 317
    rem-int/lit8 v2, v13, 0x4

    .line 318
    .line 319
    aget-object v12, v11, v8

    .line 320
    .line 321
    iget v14, v12, Lm7/t;->b:F

    .line 322
    .line 323
    const/4 v15, 0x0

    .line 324
    aput v14, v7, v15

    .line 325
    .line 326
    iget v12, v12, Lm7/t;->c:F

    .line 327
    .line 328
    const/4 v14, 0x1

    .line 329
    aput v12, v7, v14

    .line 330
    .line 331
    aget-object v12, v10, v8

    .line 332
    .line 333
    invoke-virtual {v12, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 334
    .line 335
    .line 336
    aget-object v12, v11, v2

    .line 337
    .line 338
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    iget-object v14, v0, Lm7/l;->l:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast v14, [F

    .line 344
    .line 345
    const/4 v15, 0x0

    .line 346
    const/16 v16, 0x0

    .line 347
    .line 348
    aput v16, v14, v15

    .line 349
    .line 350
    iget v12, v12, Lm7/t;->a:F

    .line 351
    .line 352
    const/16 v18, 0x1

    .line 353
    .line 354
    aput v12, v14, v18

    .line 355
    .line 356
    aget-object v12, v10, v2

    .line 357
    .line 358
    invoke-virtual {v12, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 359
    .line 360
    .line 361
    aget v12, v7, v15

    .line 362
    .line 363
    aget v19, v14, v15

    .line 364
    .line 365
    sub-float v12, v12, v19

    .line 366
    .line 367
    move v15, v13

    .line 368
    float-to-double v12, v12

    .line 369
    aget v19, v7, v18

    .line 370
    .line 371
    aget v14, v14, v18

    .line 372
    .line 373
    sub-float v14, v19, v14

    .line 374
    .line 375
    move/from16 v19, v15

    .line 376
    .line 377
    float-to-double v14, v14

    .line 378
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    .line 379
    .line 380
    .line 381
    move-result-wide v12

    .line 382
    double-to-float v12, v12

    .line 383
    const v13, 0x3a83126f    # 0.001f

    .line 384
    .line 385
    .line 386
    sub-float/2addr v12, v13

    .line 387
    const/4 v13, 0x0

    .line 388
    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    .line 389
    .line 390
    .line 391
    move-result v12

    .line 392
    aget-object v13, v11, v8

    .line 393
    .line 394
    iget v14, v13, Lm7/t;->b:F

    .line 395
    .line 396
    const/4 v15, 0x0

    .line 397
    aput v14, v7, v15

    .line 398
    .line 399
    iget v13, v13, Lm7/t;->c:F

    .line 400
    .line 401
    const/4 v14, 0x1

    .line 402
    aput v13, v7, v14

    .line 403
    .line 404
    aget-object v13, v10, v8

    .line 405
    .line 406
    invoke-virtual {v13, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 407
    .line 408
    .line 409
    if-eq v8, v14, :cond_c

    .line 410
    .line 411
    const/4 v13, 0x3

    .line 412
    if-eq v8, v13, :cond_c

    .line 413
    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    .line 415
    .line 416
    .line 417
    move-result v13

    .line 418
    aget v15, v7, v14

    .line 419
    .line 420
    sub-float/2addr v13, v15

    .line 421
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 422
    .line 423
    .line 424
    goto :goto_6

    .line 425
    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    .line 426
    .line 427
    .line 428
    move-result v13

    .line 429
    const/4 v14, 0x0

    .line 430
    aget v15, v7, v14

    .line 431
    .line 432
    sub-float/2addr v13, v15

    .line 433
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 434
    .line 435
    .line 436
    :goto_6
    const/high16 v13, 0x43870000    # 270.0f

    .line 437
    .line 438
    iget-object v14, v0, Lm7/l;->j:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast v14, Lm7/t;

    .line 441
    .line 442
    const/4 v15, 0x0

    .line 443
    invoke-virtual {v14, v15, v13, v15}, Lm7/t;->d(FFF)V

    .line 444
    .line 445
    .line 446
    const/4 v13, 0x1

    .line 447
    if-eq v8, v13, :cond_f

    .line 448
    .line 449
    const/4 v13, 0x2

    .line 450
    if-eq v8, v13, :cond_e

    .line 451
    .line 452
    const/4 v15, 0x3

    .line 453
    if-eq v8, v15, :cond_d

    .line 454
    .line 455
    iget-object v13, v1, Lm7/j;->j:Lm7/e;

    .line 456
    .line 457
    goto :goto_7

    .line 458
    :cond_d
    iget-object v13, v1, Lm7/j;->i:Lm7/e;

    .line 459
    .line 460
    goto :goto_7

    .line 461
    :cond_e
    const/4 v15, 0x3

    .line 462
    iget-object v13, v1, Lm7/j;->l:Lm7/e;

    .line 463
    .line 464
    goto :goto_7

    .line 465
    :cond_f
    const/4 v15, 0x3

    .line 466
    iget-object v13, v1, Lm7/j;->k:Lm7/e;

    .line 467
    .line 468
    :goto_7
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    const/4 v13, 0x0

    .line 472
    invoke-virtual {v14, v12, v13}, Lm7/t;->c(FF)V

    .line 473
    .line 474
    .line 475
    iget-object v12, v0, Lm7/l;->h:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast v12, Landroid/graphics/Path;

    .line 478
    .line 479
    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    .line 480
    .line 481
    .line 482
    aget-object v13, v9, v8

    .line 483
    .line 484
    invoke-virtual {v14, v13, v12}, Lm7/t;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 485
    .line 486
    .line 487
    iget-boolean v13, v0, Lm7/l;->a:Z

    .line 488
    .line 489
    if-eqz v13, :cond_10

    .line 490
    .line 491
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 492
    .line 493
    const/16 v15, 0x13

    .line 494
    .line 495
    if-lt v13, v15, :cond_10

    .line 496
    .line 497
    invoke-virtual {v0, v12, v8}, Lm7/l;->f(Landroid/graphics/Path;I)Z

    .line 498
    .line 499
    .line 500
    move-result v13

    .line 501
    if-nez v13, :cond_11

    .line 502
    .line 503
    invoke-virtual {v0, v12, v2}, Lm7/l;->f(Landroid/graphics/Path;I)Z

    .line 504
    .line 505
    .line 506
    move-result v2

    .line 507
    if-eqz v2, :cond_10

    .line 508
    .line 509
    goto :goto_8

    .line 510
    :cond_10
    const/4 v13, 0x1

    .line 511
    goto :goto_9

    .line 512
    :cond_11
    :goto_8
    invoke-static {}, Lm0/h;->x()Landroid/graphics/Path$Op;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    invoke-static {v12, v12, v6, v2}, Lm0/h;->p(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)V

    .line 517
    .line 518
    .line 519
    const/4 v2, 0x0

    .line 520
    const/4 v12, 0x0

    .line 521
    aput v12, v7, v2

    .line 522
    .line 523
    iget v12, v14, Lm7/t;->a:F

    .line 524
    .line 525
    const/4 v13, 0x1

    .line 526
    aput v12, v7, v13

    .line 527
    .line 528
    aget-object v12, v9, v8

    .line 529
    .line 530
    invoke-virtual {v12, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 531
    .line 532
    .line 533
    aget v12, v7, v2

    .line 534
    .line 535
    aget v2, v7, v13

    .line 536
    .line 537
    invoke-virtual {v5, v12, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 538
    .line 539
    .line 540
    aget-object v2, v9, v8

    .line 541
    .line 542
    invoke-virtual {v14, v2, v5}, Lm7/t;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 543
    .line 544
    .line 545
    goto :goto_a

    .line 546
    :goto_9
    aget-object v2, v9, v8

    .line 547
    .line 548
    invoke-virtual {v14, v2, v4}, Lm7/t;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 549
    .line 550
    .line 551
    :goto_a
    if-eqz v3, :cond_12

    .line 552
    .line 553
    aget-object v2, v9, v8

    .line 554
    .line 555
    iget-object v12, v3, Ll5/y;->b:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast v12, Lm7/g;

    .line 558
    .line 559
    iget-object v15, v12, Lm7/g;->d:Ljava/util/BitSet;

    .line 560
    .line 561
    add-int/lit8 v13, v8, 0x4

    .line 562
    .line 563
    const/4 v0, 0x0

    .line 564
    invoke-virtual {v15, v13, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 565
    .line 566
    .line 567
    iget v13, v14, Lm7/t;->e:F

    .line 568
    .line 569
    invoke-virtual {v14, v13}, Lm7/t;->a(F)V

    .line 570
    .line 571
    .line 572
    new-instance v13, Landroid/graphics/Matrix;

    .line 573
    .line 574
    invoke-direct {v13, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 575
    .line 576
    .line 577
    new-instance v2, Ljava/util/ArrayList;

    .line 578
    .line 579
    iget-object v14, v14, Lm7/t;->g:Ljava/util/ArrayList;

    .line 580
    .line 581
    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 582
    .line 583
    .line 584
    new-instance v14, Lm7/m;

    .line 585
    .line 586
    invoke-direct {v14, v2, v13}, Lm7/m;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    .line 587
    .line 588
    .line 589
    iget-object v2, v12, Lm7/g;->c:[Lm7/s;

    .line 590
    .line 591
    aput-object v14, v2, v8

    .line 592
    .line 593
    goto :goto_b

    .line 594
    :cond_12
    const/4 v0, 0x0

    .line 595
    :goto_b
    const/4 v13, 0x4

    .line 596
    move-object/from16 v0, p0

    .line 597
    .line 598
    move-object/from16 v2, p3

    .line 599
    .line 600
    move/from16 v8, v19

    .line 601
    .line 602
    goto/16 :goto_4

    .line 603
    .line 604
    :cond_13
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 608
    .line 609
    .line 610
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 611
    .line 612
    const/16 v1, 0x13

    .line 613
    .line 614
    if-lt v0, v1, :cond_14

    .line 615
    .line 616
    invoke-virtual {v5}, Landroid/graphics/Path;->isEmpty()Z

    .line 617
    .line 618
    .line 619
    move-result v0

    .line 620
    if-nez v0, :cond_14

    .line 621
    .line 622
    invoke-static {}, Lm0/h;->h()Landroid/graphics/Path$Op;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-static {v4, v5, v0}, Lm0/h;->o(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)V

    .line 627
    .line 628
    .line 629
    :cond_14
    return-void
.end method

.method public c()Lr1/q0;
    .locals 4

    .line 1
    iget-object v0, p0, Lm7/l;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lr1/q0;->a:Lr1/n0;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ge v1, v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ly1/u0;

    .line 27
    .line 28
    iput v2, v3, Ly1/u0;->d:I

    .line 29
    .line 30
    iget-object v3, v3, Ly1/u0;->a:Lf2/x;

    .line 31
    .line 32
    iget-object v3, v3, Lf2/x;->o:Lf2/v;

    .line 33
    .line 34
    iget-object v3, v3, Lf2/r;->b:Lr1/q0;

    .line 35
    .line 36
    invoke-virtual {v3}, Lr1/q0;->o()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    add-int/2addr v2, v3

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v1, Ly1/a1;

    .line 45
    .line 46
    iget-object v2, p0, Lm7/l;->k:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Lf2/e1;

    .line 49
    .line 50
    invoke-direct {v1, v0, v2}, Ly1/a1;-><init>(Ljava/util/List;Lf2/e1;)V

    .line 51
    .line 52
    .line 53
    return-object v1
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm7/l;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ly1/u0;

    .line 20
    .line 21
    iget-object v2, v1, Ly1/u0;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lm7/l;->g:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ly1/t0;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-object v2, v1, Ly1/t0;->b:Ly1/p0;

    .line 42
    .line 43
    iget-object v1, v1, Ly1/t0;->a:Lf2/a;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lf2/a;->b(Lf2/d0;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return-void
.end method

.method public e(Ly1/u0;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Ly1/u0;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Ly1/u0;->c:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lm7/l;->g:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ly1/t0;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Ly1/t0;->b:Ly1/p0;

    .line 27
    .line 28
    iget-object v2, v0, Ly1/t0;->a:Lf2/a;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lf2/a;->n(Lf2/d0;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Ly1/t0;->c:Ly1/s0;

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Lf2/a;->q(Lf2/i0;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Lf2/a;->p(Lb2/e;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lm7/l;->h:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Ljava/util/HashSet;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public f(Landroid/graphics/Path;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lm7/l;->i:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Path;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lm7/l;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, [Lm7/t;

    .line 11
    .line 12
    aget-object v1, v1, p2

    .line 13
    .line 14
    iget-object v2, p0, Lm7/l;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, [Landroid/graphics/Matrix;

    .line 17
    .line 18
    aget-object p2, v2, p2

    .line 19
    .line 20
    invoke-virtual {v1, p2, v0}, Lm7/t;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 21
    .line 22
    .line 23
    new-instance p2, Landroid/graphics/RectF;

    .line 24
    .line 25
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lm0/h;->B()Landroid/graphics/Path$Op;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {p1, v0, v2}, Lm0/h;->o(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    .line 56
    .line 57
    cmpl-float p1, p1, v0

    .line 58
    .line 59
    if-lez p1, :cond_0

    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    cmpl-float p1, p1, v0

    .line 66
    .line 67
    if-lez p1, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/4 v1, 0x0

    .line 71
    :cond_1
    :goto_0
    return v1
.end method

.method public g(Ly1/u0;)V
    .locals 6

    .line 1
    iget-object v0, p1, Ly1/u0;->a:Lf2/x;

    .line 2
    .line 3
    new-instance v1, Ly1/p0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ly1/p0;-><init>(Lm7/l;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ly1/s0;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1}, Ly1/s0;-><init>(Lm7/l;Ly1/u0;)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lm7/l;->g:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Ljava/util/HashMap;

    .line 16
    .line 17
    new-instance v4, Ly1/t0;

    .line 18
    .line 19
    invoke-direct {v4, v0, v1, v2}, Ly1/t0;-><init>(Lf2/a;Ly1/p0;Ly1/s0;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    sget-object p1, Lu1/f0;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_0
    new-instance v3, Landroid/os/Handler;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object p1, v0, Lf2/a;->c:Lb2/d;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance v5, Lf2/h0;

    .line 53
    .line 54
    invoke-direct {v5, v3, v2}, Lf2/h0;-><init>(Landroid/os/Handler;Lf2/i0;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p1, Lb2/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 58
    .line 59
    invoke-virtual {p1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :goto_1
    new-instance v3, Landroid/os/Handler;

    .line 74
    .line 75
    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, v0, Lf2/a;->d:Lb2/d;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v4, Lb2/c;

    .line 84
    .line 85
    invoke-direct {v4, v3, v2}, Lb2/c;-><init>(Landroid/os/Handler;Lb2/e;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p1, Lb2/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 89
    .line 90
    invoke-virtual {p1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lm7/l;->l:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p1, Lw1/x;

    .line 96
    .line 97
    iget-object v2, p0, Lm7/l;->b:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v2, Lz1/i;

    .line 100
    .line 101
    invoke-virtual {v0, v1, p1, v2}, Lf2/a;->j(Lf2/d0;Lw1/x;Lz1/i;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public h(Lf2/a0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm7/l;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/IdentityHashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ly1/u0;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v2, v1, Ly1/u0;->a:Lf2/x;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Lf2/x;->m(Lf2/a0;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, v1, Ly1/u0;->c:Ljava/util/ArrayList;

    .line 20
    .line 21
    check-cast p1, Lf2/u;

    .line 22
    .line 23
    iget-object p1, p1, Lf2/u;->a:Lf2/c0;

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Lm7/l;->d()V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0, v1}, Lm7/l;->e(Ly1/u0;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public i(II)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    sub-int/2addr p2, v0

    .line 3
    :goto_0
    if-lt p2, p1, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lm7/l;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Ly1/u0;

    .line 14
    .line 15
    iget-object v3, p0, Lm7/l;->e:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Ljava/util/HashMap;

    .line 18
    .line 19
    iget-object v4, v2, Ly1/u0;->b:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v3, v2, Ly1/u0;->a:Lf2/x;

    .line 25
    .line 26
    iget-object v3, v3, Lf2/x;->o:Lf2/v;

    .line 27
    .line 28
    iget-object v3, v3, Lf2/r;->b:Lr1/q0;

    .line 29
    .line 30
    invoke-virtual {v3}, Lr1/q0;->o()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    neg-int v3, v3

    .line 35
    move v4, p2

    .line 36
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-ge v4, v5, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Ly1/u0;

    .line 47
    .line 48
    iget v6, v5, Ly1/u0;->d:I

    .line 49
    .line 50
    add-int/2addr v6, v3

    .line 51
    iput v6, v5, Ly1/u0;->d:I

    .line 52
    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    iput-boolean v0, v2, Ly1/u0;->e:Z

    .line 57
    .line 58
    iget-boolean v1, p0, Lm7/l;->a:Z

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Lm7/l;->e(Ly1/u0;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    return-void
.end method
