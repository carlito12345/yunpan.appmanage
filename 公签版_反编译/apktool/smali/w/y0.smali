.class public final Lw/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Lw/d3;

.field public c:Lw/d3;

.field public d:Lw/d3;

.field public e:Lw/d3;

.field public f:Lw/d3;

.field public g:Lw/d3;

.field public h:Lw/d3;

.field public final i:Lw/i1;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lw/y0;->j:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lw/y0;->k:I

    .line 9
    .line 10
    iput-object p1, p0, Lw/y0;->a:Landroid/widget/TextView;

    .line 11
    .line 12
    new-instance v0, Lw/i1;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lw/i1;-><init>(Landroid/widget/TextView;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lw/y0;->i:Lw/i1;

    .line 18
    .line 19
    return-void
.end method

.method public static c(Landroid/content/Context;Lw/s;I)Lw/d3;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lw/s;->a:Lw/p2;

    .line 3
    .line 4
    invoke-virtual {v0, p0, p2}, Lw/p2;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p1, Lw/d3;

    .line 12
    .line 13
    invoke-direct {p1}, Lw/d3;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p1, Lw/d3;->d:Z

    .line 18
    .line 19
    iput-object p0, p1, Lw/d3;->a:Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method

.method public static h(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;Landroid/widget/TextView;)V
    .locals 11

    .line 1
    const/16 v0, 0x800

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v4, 0x1e

    .line 8
    .line 9
    if-ge v3, v4, :cond_d

    .line 10
    .line 11
    if-eqz p1, :cond_d

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-lt v3, v4, :cond_0

    .line 18
    .line 19
    invoke-static {p0, p1}, La1/b;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_6

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    if-lt v3, v4, :cond_1

    .line 28
    .line 29
    invoke-static {p0, p1}, La1/b;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :cond_1
    iget p2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 35
    .line 36
    iget v3, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 37
    .line 38
    if-le p2, v3, :cond_2

    .line 39
    .line 40
    move v4, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v4, p2

    .line 43
    :goto_0
    if-le p2, v3, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    move p2, v3

    .line 47
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v5, 0x0

    .line 52
    if-ltz v4, :cond_c

    .line 53
    .line 54
    if-le p2, v3, :cond_4

    .line 55
    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_4
    iget v6, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 59
    .line 60
    and-int/lit16 v6, v6, 0xfff

    .line 61
    .line 62
    const/16 v7, 0x81

    .line 63
    .line 64
    if-eq v6, v7, :cond_b

    .line 65
    .line 66
    const/16 v7, 0xe1

    .line 67
    .line 68
    if-eq v6, v7, :cond_b

    .line 69
    .line 70
    const/16 v7, 0x12

    .line 71
    .line 72
    if-ne v6, v7, :cond_5

    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_5
    if-gt v3, v0, :cond_6

    .line 77
    .line 78
    invoke-static {p0, p1, v4, p2}, La1/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_6

    .line 82
    .line 83
    :cond_6
    sub-int v3, p2, v4

    .line 84
    .line 85
    const/16 v5, 0x400

    .line 86
    .line 87
    if-le v3, v5, :cond_7

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    goto :goto_2

    .line 91
    :cond_7
    move v5, v3

    .line 92
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    sub-int/2addr v6, p2

    .line 97
    sub-int/2addr v0, v5

    .line 98
    const-wide v7, 0x3fe999999999999aL    # 0.8

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    int-to-double v9, v0

    .line 104
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    .line 105
    .line 106
    .line 107
    mul-double v9, v9, v7

    .line 108
    .line 109
    double-to-int v7, v9

    .line 110
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    sub-int v7, v0, v7

    .line 115
    .line 116
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    sub-int/2addr v0, v6

    .line 121
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    sub-int/2addr v4, v0

    .line 126
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-eqz v7, :cond_8

    .line 135
    .line 136
    add-int/2addr v4, v2

    .line 137
    sub-int/2addr v0, v2

    .line 138
    :cond_8
    add-int v7, p2, v6

    .line 139
    .line 140
    sub-int/2addr v7, v2

    .line 141
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-eqz v7, :cond_9

    .line 150
    .line 151
    sub-int/2addr v6, v2

    .line 152
    :cond_9
    add-int v7, v0, v5

    .line 153
    .line 154
    add-int v8, v7, v6

    .line 155
    .line 156
    if-eq v5, v3, :cond_a

    .line 157
    .line 158
    add-int v3, v4, v0

    .line 159
    .line 160
    invoke-interface {p1, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    add-int/2addr v6, p2

    .line 165
    invoke-interface {p1, p2, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const/4 p2, 0x2

    .line 170
    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 171
    .line 172
    aput-object v3, p2, v1

    .line 173
    .line 174
    aput-object p1, p2, v2

    .line 175
    .line 176
    invoke-static {p2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    goto :goto_3

    .line 181
    :cond_a
    add-int/2addr v8, v4

    .line 182
    invoke-interface {p1, v4, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    :goto_3
    invoke-static {p0, p1, v0, v7}, La1/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 187
    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_b
    :goto_4
    invoke-static {p0, v5, v1, v1}, La1/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 191
    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_c
    :goto_5
    invoke-static {p0, v5, v1, v1}, La1/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 195
    .line 196
    .line 197
    :cond_d
    :goto_6
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Lw/d3;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lw/y0;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, p2, v0}, Lw/s;->e(Landroid/graphics/drawable/Drawable;Lw/d3;[I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lw/y0;->b:Lw/d3;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lw/y0;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lw/y0;->c:Lw/d3;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lw/y0;->d:Lw/d3;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lw/y0;->e:Lw/d3;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    aget-object v4, v0, v2

    .line 26
    .line 27
    iget-object v5, p0, Lw/y0;->b:Lw/d3;

    .line 28
    .line 29
    invoke-virtual {p0, v4, v5}, Lw/y0;->a(Landroid/graphics/drawable/Drawable;Lw/d3;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    aget-object v4, v0, v4

    .line 34
    .line 35
    iget-object v5, p0, Lw/y0;->c:Lw/d3;

    .line 36
    .line 37
    invoke-virtual {p0, v4, v5}, Lw/y0;->a(Landroid/graphics/drawable/Drawable;Lw/d3;)V

    .line 38
    .line 39
    .line 40
    aget-object v4, v0, v1

    .line 41
    .line 42
    iget-object v5, p0, Lw/y0;->d:Lw/d3;

    .line 43
    .line 44
    invoke-virtual {p0, v4, v5}, Lw/y0;->a(Landroid/graphics/drawable/Drawable;Lw/d3;)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x3

    .line 48
    aget-object v0, v0, v4

    .line 49
    .line 50
    iget-object v4, p0, Lw/y0;->e:Lw/d3;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v4}, Lw/y0;->a(Landroid/graphics/drawable/Drawable;Lw/d3;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lw/y0;->f:Lw/d3;

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lw/y0;->g:Lw/d3;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    :cond_2
    invoke-static {v3}, Lw/t0;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    aget-object v2, v0, v2

    .line 68
    .line 69
    iget-object v3, p0, Lw/y0;->f:Lw/d3;

    .line 70
    .line 71
    invoke-virtual {p0, v2, v3}, Lw/y0;->a(Landroid/graphics/drawable/Drawable;Lw/d3;)V

    .line 72
    .line 73
    .line 74
    aget-object v0, v0, v1

    .line 75
    .line 76
    iget-object v1, p0, Lw/y0;->g:Lw/d3;

    .line 77
    .line 78
    invoke-virtual {p0, v0, v1}, Lw/y0;->a(Landroid/graphics/drawable/Drawable;Lw/d3;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lw/y0;->h:Lw/d3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lw/d3;->a:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public final e()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lw/y0;->h:Lw/d3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lw/d3;->b:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public final f(Landroid/util/AttributeSet;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    iget-object v9, v0, Lw/y0;->a:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v10

    .line 13
    invoke-static {}, Lw/s;->a()Lw/s;

    .line 14
    .line 15
    .line 16
    move-result-object v11

    .line 17
    sget-object v3, Lp/a;->h:[I

    .line 18
    .line 19
    invoke-static {v10, v7, v3, v8}, Ls4/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ls4/a;

    .line 20
    .line 21
    .line 22
    move-result-object v12

    .line 23
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v1, v12, Ls4/a;->c:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v5, v1

    .line 30
    check-cast v5, Landroid/content/res/TypedArray;

    .line 31
    .line 32
    move-object v1, v9

    .line 33
    move-object/from16 v4, p1

    .line 34
    .line 35
    move/from16 v6, p2

    .line 36
    .line 37
    invoke-static/range {v1 .. v6}, Lx0/b1;->w(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v12, Ls4/a;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Landroid/content/res/TypedArray;

    .line 43
    .line 44
    const/4 v13, 0x0

    .line 45
    const/4 v14, -0x1

    .line 46
    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v15, 0x3

    .line 51
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    invoke-virtual {v1, v15, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-static {v10, v11, v3}, Lw/y0;->c(Landroid/content/Context;Lw/s;I)Lw/d3;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iput-object v3, v0, Lw/y0;->b:Lw/d3;

    .line 66
    .line 67
    :cond_0
    const/4 v6, 0x1

    .line 68
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    invoke-virtual {v1, v6, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-static {v10, v11, v3}, Lw/y0;->c(Landroid/content/Context;Lw/s;I)Lw/d3;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    iput-object v3, v0, Lw/y0;->c:Lw/d3;

    .line 83
    .line 84
    :cond_1
    const/4 v5, 0x4

    .line 85
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    invoke-virtual {v1, v5, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-static {v10, v11, v3}, Lw/y0;->c(Landroid/content/Context;Lw/s;I)Lw/d3;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iput-object v3, v0, Lw/y0;->d:Lw/d3;

    .line 100
    .line 101
    :cond_2
    const/4 v4, 0x2

    .line 102
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    invoke-virtual {v1, v4, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-static {v10, v11, v3}, Lw/y0;->c(Landroid/content/Context;Lw/s;I)Lw/d3;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    iput-object v3, v0, Lw/y0;->e:Lw/d3;

    .line 117
    .line 118
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 119
    .line 120
    const/4 v5, 0x5

    .line 121
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 122
    .line 123
    .line 124
    move-result v17

    .line 125
    if-eqz v17, :cond_4

    .line 126
    .line 127
    invoke-virtual {v1, v5, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    invoke-static {v10, v11, v4}, Lw/y0;->c(Landroid/content/Context;Lw/s;I)Lw/d3;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    iput-object v4, v0, Lw/y0;->f:Lw/d3;

    .line 136
    .line 137
    :cond_4
    const/4 v4, 0x6

    .line 138
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 139
    .line 140
    .line 141
    move-result v18

    .line 142
    if-eqz v18, :cond_5

    .line 143
    .line 144
    invoke-virtual {v1, v4, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-static {v10, v11, v1}, Lw/y0;->c(Landroid/content/Context;Lw/s;I)Lw/d3;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iput-object v1, v0, Lw/y0;->g:Lw/d3;

    .line 153
    .line 154
    :cond_5
    invoke-virtual {v12}, Ls4/a;->r()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    .line 162
    .line 163
    sget-object v12, Lp/a;->w:[I

    .line 164
    .line 165
    const/16 v5, 0x17

    .line 166
    .line 167
    const/16 v6, 0xe

    .line 168
    .line 169
    const/16 v4, 0xf

    .line 170
    .line 171
    if-eq v2, v14, :cond_d

    .line 172
    .line 173
    new-instance v14, Ls4/a;

    .line 174
    .line 175
    invoke-virtual {v10, v2, v12}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-direct {v14, v10, v2}, Ls4/a;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 180
    .line 181
    .line 182
    if-nez v1, :cond_6

    .line 183
    .line 184
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 185
    .line 186
    .line 187
    move-result v21

    .line 188
    if-eqz v21, :cond_6

    .line 189
    .line 190
    invoke-virtual {v2, v6, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 191
    .line 192
    .line 193
    move-result v21

    .line 194
    const/16 v22, 0x1

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_6
    const/16 v21, 0x0

    .line 198
    .line 199
    const/16 v22, 0x0

    .line 200
    .line 201
    :goto_0
    invoke-virtual {v0, v10, v14}, Lw/y0;->n(Landroid/content/Context;Ls4/a;)V

    .line 202
    .line 203
    .line 204
    if-ge v3, v5, :cond_a

    .line 205
    .line 206
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 207
    .line 208
    .line 209
    move-result v23

    .line 210
    if-eqz v23, :cond_7

    .line 211
    .line 212
    invoke-virtual {v14, v15}, Ls4/a;->d(I)Landroid/content/res/ColorStateList;

    .line 213
    .line 214
    .line 215
    move-result-object v23

    .line 216
    const/4 v15, 0x4

    .line 217
    goto :goto_1

    .line 218
    :cond_7
    const/4 v15, 0x4

    .line 219
    const/16 v23, 0x0

    .line 220
    .line 221
    :goto_1
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 222
    .line 223
    .line 224
    move-result v16

    .line 225
    if-eqz v16, :cond_8

    .line 226
    .line 227
    invoke-virtual {v14, v15}, Ls4/a;->d(I)Landroid/content/res/ColorStateList;

    .line 228
    .line 229
    .line 230
    move-result-object v24

    .line 231
    const/4 v15, 0x5

    .line 232
    goto :goto_2

    .line 233
    :cond_8
    const/4 v15, 0x5

    .line 234
    const/16 v24, 0x0

    .line 235
    .line 236
    :goto_2
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 237
    .line 238
    .line 239
    move-result v18

    .line 240
    if-eqz v18, :cond_9

    .line 241
    .line 242
    invoke-virtual {v14, v15}, Ls4/a;->d(I)Landroid/content/res/ColorStateList;

    .line 243
    .line 244
    .line 245
    move-result-object v25

    .line 246
    goto :goto_4

    .line 247
    :cond_9
    :goto_3
    const/16 v25, 0x0

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_a
    const/16 v23, 0x0

    .line 251
    .line 252
    const/16 v24, 0x0

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :goto_4
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 256
    .line 257
    .line 258
    move-result v15

    .line 259
    if-eqz v15, :cond_b

    .line 260
    .line 261
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v15

    .line 265
    const/16 v4, 0x1a

    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_b
    const/16 v4, 0x1a

    .line 269
    .line 270
    const/4 v15, 0x0

    .line 271
    :goto_5
    if-lt v3, v4, :cond_c

    .line 272
    .line 273
    const/16 v4, 0xd

    .line 274
    .line 275
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 276
    .line 277
    .line 278
    move-result v20

    .line 279
    if-eqz v20, :cond_c

    .line 280
    .line 281
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    goto :goto_6

    .line 286
    :cond_c
    const/4 v2, 0x0

    .line 287
    :goto_6
    invoke-virtual {v14}, Ls4/a;->r()V

    .line 288
    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_d
    const/4 v2, 0x0

    .line 292
    const/4 v15, 0x0

    .line 293
    const/16 v21, 0x0

    .line 294
    .line 295
    const/16 v22, 0x0

    .line 296
    .line 297
    const/16 v23, 0x0

    .line 298
    .line 299
    const/16 v24, 0x0

    .line 300
    .line 301
    const/16 v25, 0x0

    .line 302
    .line 303
    :goto_7
    new-instance v4, Ls4/a;

    .line 304
    .line 305
    invoke-virtual {v10, v7, v12, v8, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 306
    .line 307
    .line 308
    move-result-object v12

    .line 309
    invoke-direct {v4, v10, v12}, Ls4/a;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 310
    .line 311
    .line 312
    if-nez v1, :cond_e

    .line 313
    .line 314
    invoke-virtual {v12, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 315
    .line 316
    .line 317
    move-result v14

    .line 318
    if-eqz v14, :cond_e

    .line 319
    .line 320
    invoke-virtual {v12, v6, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 321
    .line 322
    .line 323
    move-result v21

    .line 324
    move/from16 v6, v21

    .line 325
    .line 326
    const/16 v22, 0x1

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_e
    move/from16 v6, v21

    .line 330
    .line 331
    :goto_8
    if-ge v3, v5, :cond_11

    .line 332
    .line 333
    const/4 v5, 0x3

    .line 334
    invoke-virtual {v12, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 335
    .line 336
    .line 337
    move-result v14

    .line 338
    if-eqz v14, :cond_f

    .line 339
    .line 340
    invoke-virtual {v4, v5}, Ls4/a;->d(I)Landroid/content/res/ColorStateList;

    .line 341
    .line 342
    .line 343
    move-result-object v23

    .line 344
    :cond_f
    const/4 v5, 0x4

    .line 345
    invoke-virtual {v12, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 346
    .line 347
    .line 348
    move-result v14

    .line 349
    if-eqz v14, :cond_10

    .line 350
    .line 351
    invoke-virtual {v4, v5}, Ls4/a;->d(I)Landroid/content/res/ColorStateList;

    .line 352
    .line 353
    .line 354
    move-result-object v24

    .line 355
    :cond_10
    const/4 v14, 0x5

    .line 356
    invoke-virtual {v12, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 357
    .line 358
    .line 359
    move-result v16

    .line 360
    if-eqz v16, :cond_11

    .line 361
    .line 362
    invoke-virtual {v4, v14}, Ls4/a;->d(I)Landroid/content/res/ColorStateList;

    .line 363
    .line 364
    .line 365
    move-result-object v25

    .line 366
    :cond_11
    move-object/from16 v5, v23

    .line 367
    .line 368
    move-object/from16 v14, v24

    .line 369
    .line 370
    move-object/from16 v26, v25

    .line 371
    .line 372
    const/16 v13, 0xf

    .line 373
    .line 374
    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 375
    .line 376
    .line 377
    move-result v23

    .line 378
    if-eqz v23, :cond_12

    .line 379
    .line 380
    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v15

    .line 384
    :cond_12
    const/16 v13, 0x1a

    .line 385
    .line 386
    if-lt v3, v13, :cond_13

    .line 387
    .line 388
    const/16 v13, 0xd

    .line 389
    .line 390
    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 391
    .line 392
    .line 393
    move-result v19

    .line 394
    if-eqz v19, :cond_14

    .line 395
    .line 396
    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    goto :goto_9

    .line 401
    :cond_13
    const/16 v13, 0xd

    .line 402
    .line 403
    :cond_14
    :goto_9
    const/16 v13, 0x1c

    .line 404
    .line 405
    if-lt v3, v13, :cond_15

    .line 406
    .line 407
    const/4 v13, 0x0

    .line 408
    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 409
    .line 410
    .line 411
    move-result v19

    .line 412
    if-eqz v19, :cond_15

    .line 413
    .line 414
    move-object/from16 v19, v11

    .line 415
    .line 416
    const/4 v11, -0x1

    .line 417
    invoke-virtual {v12, v13, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 418
    .line 419
    .line 420
    move-result v12

    .line 421
    if-nez v12, :cond_16

    .line 422
    .line 423
    const/4 v11, 0x0

    .line 424
    invoke-virtual {v9, v13, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 425
    .line 426
    .line 427
    goto :goto_a

    .line 428
    :cond_15
    move-object/from16 v19, v11

    .line 429
    .line 430
    :cond_16
    :goto_a
    invoke-virtual {v0, v10, v4}, Lw/y0;->n(Landroid/content/Context;Ls4/a;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v4}, Ls4/a;->r()V

    .line 434
    .line 435
    .line 436
    if-eqz v5, :cond_17

    .line 437
    .line 438
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 439
    .line 440
    .line 441
    :cond_17
    if-eqz v14, :cond_18

    .line 442
    .line 443
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 444
    .line 445
    .line 446
    :cond_18
    move-object/from16 v4, v26

    .line 447
    .line 448
    if-eqz v4, :cond_19

    .line 449
    .line 450
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 451
    .line 452
    .line 453
    :cond_19
    if-nez v1, :cond_1a

    .line 454
    .line 455
    if-eqz v22, :cond_1a

    .line 456
    .line 457
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 458
    .line 459
    .line 460
    :cond_1a
    iget-object v1, v0, Lw/y0;->l:Landroid/graphics/Typeface;

    .line 461
    .line 462
    if-eqz v1, :cond_1c

    .line 463
    .line 464
    iget v4, v0, Lw/y0;->k:I

    .line 465
    .line 466
    const/4 v5, -0x1

    .line 467
    if-ne v4, v5, :cond_1b

    .line 468
    .line 469
    iget v4, v0, Lw/y0;->j:I

    .line 470
    .line 471
    invoke-virtual {v9, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 472
    .line 473
    .line 474
    goto :goto_b

    .line 475
    :cond_1b
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 476
    .line 477
    .line 478
    :cond_1c
    :goto_b
    if-eqz v2, :cond_1d

    .line 479
    .line 480
    invoke-static {v9, v2}, Lw/w0;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 481
    .line 482
    .line 483
    :cond_1d
    const/16 v11, 0x18

    .line 484
    .line 485
    if-eqz v15, :cond_1e

    .line 486
    .line 487
    if-lt v3, v11, :cond_1f

    .line 488
    .line 489
    invoke-static {v15}, Lw/v0;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    invoke-static {v9, v1}, Lw/v0;->b(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    .line 494
    .line 495
    .line 496
    :cond_1e
    const/4 v2, 0x0

    .line 497
    goto :goto_c

    .line 498
    :cond_1f
    const/16 v1, 0x15

    .line 499
    .line 500
    if-lt v3, v1, :cond_1e

    .line 501
    .line 502
    const-string v1, ","

    .line 503
    .line 504
    invoke-virtual {v15, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    const/4 v2, 0x0

    .line 509
    aget-object v1, v1, v2

    .line 510
    .line 511
    invoke-static {v1}, Lw/u0;->a(Ljava/lang/String;)Ljava/util/Locale;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    invoke-static {v9, v1}, Lw/t0;->c(Landroid/widget/TextView;Ljava/util/Locale;)V

    .line 516
    .line 517
    .line 518
    :goto_c
    sget-object v12, Lp/a;->i:[I

    .line 519
    .line 520
    iget-object v13, v0, Lw/y0;->i:Lw/i1;

    .line 521
    .line 522
    iget-object v14, v13, Lw/i1;->j:Landroid/content/Context;

    .line 523
    .line 524
    invoke-virtual {v14, v7, v12, v8, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 525
    .line 526
    .line 527
    move-result-object v15

    .line 528
    iget-object v1, v13, Lw/i1;->i:Landroid/widget/TextView;

    .line 529
    .line 530
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    move-object v3, v12

    .line 535
    const/4 v5, 0x6

    .line 536
    const/4 v6, 0x2

    .line 537
    const/16 v11, 0xd

    .line 538
    .line 539
    move-object/from16 v4, p1

    .line 540
    .line 541
    const/4 v11, 0x5

    .line 542
    move-object v5, v15

    .line 543
    move/from16 v6, p2

    .line 544
    .line 545
    invoke-static/range {v1 .. v6}, Lx0/b1;->w(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v15, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 549
    .line 550
    .line 551
    move-result v1

    .line 552
    if-eqz v1, :cond_20

    .line 553
    .line 554
    const/4 v1, 0x0

    .line 555
    invoke-virtual {v15, v11, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 556
    .line 557
    .line 558
    move-result v2

    .line 559
    iput v2, v13, Lw/i1;->a:I

    .line 560
    .line 561
    :cond_20
    const/4 v1, 0x4

    .line 562
    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 563
    .line 564
    .line 565
    move-result v2

    .line 566
    const/high16 v3, -0x40800000    # -1.0f

    .line 567
    .line 568
    if-eqz v2, :cond_21

    .line 569
    .line 570
    invoke-virtual {v15, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 571
    .line 572
    .line 573
    move-result v1

    .line 574
    :goto_d
    const/4 v2, 0x2

    .line 575
    goto :goto_e

    .line 576
    :cond_21
    const/high16 v1, -0x40800000    # -1.0f

    .line 577
    .line 578
    goto :goto_d

    .line 579
    :goto_e
    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    if-eqz v4, :cond_22

    .line 584
    .line 585
    invoke-virtual {v15, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 586
    .line 587
    .line 588
    move-result v4

    .line 589
    :goto_f
    const/4 v5, 0x1

    .line 590
    goto :goto_10

    .line 591
    :cond_22
    const/high16 v4, -0x40800000    # -1.0f

    .line 592
    .line 593
    goto :goto_f

    .line 594
    :goto_10
    invoke-virtual {v15, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 595
    .line 596
    .line 597
    move-result v6

    .line 598
    if-eqz v6, :cond_23

    .line 599
    .line 600
    invoke-virtual {v15, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 601
    .line 602
    .line 603
    move-result v6

    .line 604
    :goto_11
    const/4 v8, 0x3

    .line 605
    goto :goto_12

    .line 606
    :cond_23
    const/high16 v6, -0x40800000    # -1.0f

    .line 607
    .line 608
    goto :goto_11

    .line 609
    :goto_12
    invoke-virtual {v15, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 610
    .line 611
    .line 612
    move-result v11

    .line 613
    if-eqz v11, :cond_26

    .line 614
    .line 615
    const/4 v11, 0x0

    .line 616
    invoke-virtual {v15, v8, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    if-lez v2, :cond_26

    .line 621
    .line 622
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 623
    .line 624
    .line 625
    move-result-object v8

    .line 626
    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    .line 631
    .line 632
    .line 633
    move-result v8

    .line 634
    new-array v11, v8, [I

    .line 635
    .line 636
    if-lez v8, :cond_25

    .line 637
    .line 638
    const/4 v3, 0x0

    .line 639
    :goto_13
    if-ge v3, v8, :cond_24

    .line 640
    .line 641
    const/4 v5, -0x1

    .line 642
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 643
    .line 644
    .line 645
    move-result v16

    .line 646
    aput v16, v11, v3

    .line 647
    .line 648
    add-int/lit8 v3, v3, 0x1

    .line 649
    .line 650
    const/4 v5, 0x1

    .line 651
    goto :goto_13

    .line 652
    :cond_24
    invoke-static {v11}, Lw/i1;->b([I)[I

    .line 653
    .line 654
    .line 655
    move-result-object v3

    .line 656
    iput-object v3, v13, Lw/i1;->f:[I

    .line 657
    .line 658
    invoke-virtual {v13}, Lw/i1;->i()Z

    .line 659
    .line 660
    .line 661
    :cond_25
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 662
    .line 663
    .line 664
    :cond_26
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v13}, Lw/i1;->j()Z

    .line 668
    .line 669
    .line 670
    move-result v2

    .line 671
    const/high16 v3, 0x3f800000    # 1.0f

    .line 672
    .line 673
    if-eqz v2, :cond_2b

    .line 674
    .line 675
    iget v2, v13, Lw/i1;->a:I

    .line 676
    .line 677
    const/4 v5, 0x1

    .line 678
    if-ne v2, v5, :cond_2c

    .line 679
    .line 680
    iget-boolean v2, v13, Lw/i1;->g:Z

    .line 681
    .line 682
    if-nez v2, :cond_2a

    .line 683
    .line 684
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 689
    .line 690
    .line 691
    move-result-object v2

    .line 692
    const/high16 v5, -0x40800000    # -1.0f

    .line 693
    .line 694
    cmpl-float v8, v4, v5

    .line 695
    .line 696
    if-nez v8, :cond_27

    .line 697
    .line 698
    const/high16 v4, 0x41400000    # 12.0f

    .line 699
    .line 700
    const/4 v8, 0x2

    .line 701
    invoke-static {v8, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 702
    .line 703
    .line 704
    move-result v4

    .line 705
    goto :goto_14

    .line 706
    :cond_27
    const/4 v8, 0x2

    .line 707
    :goto_14
    cmpl-float v11, v6, v5

    .line 708
    .line 709
    if-nez v11, :cond_28

    .line 710
    .line 711
    const/high16 v6, 0x42e00000    # 112.0f

    .line 712
    .line 713
    invoke-static {v8, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 714
    .line 715
    .line 716
    move-result v6

    .line 717
    :cond_28
    cmpl-float v2, v1, v5

    .line 718
    .line 719
    if-nez v2, :cond_29

    .line 720
    .line 721
    const/high16 v1, 0x3f800000    # 1.0f

    .line 722
    .line 723
    :cond_29
    invoke-virtual {v13, v4, v6, v1}, Lw/i1;->k(FFF)V

    .line 724
    .line 725
    .line 726
    :cond_2a
    invoke-virtual {v13}, Lw/i1;->h()Z

    .line 727
    .line 728
    .line 729
    goto :goto_15

    .line 730
    :cond_2b
    const/4 v1, 0x0

    .line 731
    iput v1, v13, Lw/i1;->a:I

    .line 732
    .line 733
    :cond_2c
    :goto_15
    sget-boolean v1, Lw/u3;->b:Z

    .line 734
    .line 735
    if-eqz v1, :cond_2e

    .line 736
    .line 737
    iget v1, v13, Lw/i1;->a:I

    .line 738
    .line 739
    if-eqz v1, :cond_2e

    .line 740
    .line 741
    iget-object v1, v13, Lw/i1;->f:[I

    .line 742
    .line 743
    array-length v2, v1

    .line 744
    if-lez v2, :cond_2e

    .line 745
    .line 746
    invoke-static {v9}, Lw/w0;->a(Landroid/widget/TextView;)I

    .line 747
    .line 748
    .line 749
    move-result v2

    .line 750
    int-to-float v2, v2

    .line 751
    const/high16 v4, -0x40800000    # -1.0f

    .line 752
    .line 753
    cmpl-float v2, v2, v4

    .line 754
    .line 755
    if-eqz v2, :cond_2d

    .line 756
    .line 757
    iget v1, v13, Lw/i1;->d:F

    .line 758
    .line 759
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 760
    .line 761
    .line 762
    move-result v1

    .line 763
    iget v2, v13, Lw/i1;->e:F

    .line 764
    .line 765
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 766
    .line 767
    .line 768
    move-result v2

    .line 769
    iget v4, v13, Lw/i1;->c:F

    .line 770
    .line 771
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 772
    .line 773
    .line 774
    move-result v4

    .line 775
    const/4 v5, 0x0

    .line 776
    invoke-static {v9, v1, v2, v4, v5}, Lw/w0;->b(Landroid/widget/TextView;IIII)V

    .line 777
    .line 778
    .line 779
    goto :goto_16

    .line 780
    :cond_2d
    const/4 v5, 0x0

    .line 781
    invoke-static {v9, v1, v5}, Lw/w0;->c(Landroid/widget/TextView;[II)V

    .line 782
    .line 783
    .line 784
    :cond_2e
    :goto_16
    invoke-virtual {v10, v7, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 785
    .line 786
    .line 787
    move-result-object v1

    .line 788
    const/16 v2, 0x8

    .line 789
    .line 790
    const/4 v4, -0x1

    .line 791
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 792
    .line 793
    .line 794
    move-result v2

    .line 795
    move-object/from16 v5, v19

    .line 796
    .line 797
    if-eq v2, v4, :cond_2f

    .line 798
    .line 799
    invoke-virtual {v5, v10, v2}, Lw/s;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 800
    .line 801
    .line 802
    move-result-object v2

    .line 803
    :goto_17
    const/16 v6, 0xd

    .line 804
    .line 805
    goto :goto_18

    .line 806
    :cond_2f
    const/4 v2, 0x0

    .line 807
    goto :goto_17

    .line 808
    :goto_18
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 809
    .line 810
    .line 811
    move-result v6

    .line 812
    if-eq v6, v4, :cond_30

    .line 813
    .line 814
    invoke-virtual {v5, v10, v6}, Lw/s;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 815
    .line 816
    .line 817
    move-result-object v6

    .line 818
    goto :goto_19

    .line 819
    :cond_30
    const/4 v6, 0x0

    .line 820
    :goto_19
    const/16 v7, 0x9

    .line 821
    .line 822
    invoke-virtual {v1, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 823
    .line 824
    .line 825
    move-result v7

    .line 826
    if-eq v7, v4, :cond_31

    .line 827
    .line 828
    invoke-virtual {v5, v10, v7}, Lw/s;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 829
    .line 830
    .line 831
    move-result-object v7

    .line 832
    :goto_1a
    const/4 v8, 0x6

    .line 833
    goto :goto_1b

    .line 834
    :cond_31
    const/4 v7, 0x0

    .line 835
    goto :goto_1a

    .line 836
    :goto_1b
    invoke-virtual {v1, v8, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 837
    .line 838
    .line 839
    move-result v8

    .line 840
    if-eq v8, v4, :cond_32

    .line 841
    .line 842
    invoke-virtual {v5, v10, v8}, Lw/s;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 843
    .line 844
    .line 845
    move-result-object v8

    .line 846
    goto :goto_1c

    .line 847
    :cond_32
    const/4 v8, 0x0

    .line 848
    :goto_1c
    const/16 v11, 0xa

    .line 849
    .line 850
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 851
    .line 852
    .line 853
    move-result v11

    .line 854
    if-eq v11, v4, :cond_33

    .line 855
    .line 856
    invoke-virtual {v5, v10, v11}, Lw/s;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 857
    .line 858
    .line 859
    move-result-object v11

    .line 860
    goto :goto_1d

    .line 861
    :cond_33
    const/4 v11, 0x0

    .line 862
    :goto_1d
    const/4 v12, 0x7

    .line 863
    invoke-virtual {v1, v12, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 864
    .line 865
    .line 866
    move-result v12

    .line 867
    if-eq v12, v4, :cond_34

    .line 868
    .line 869
    invoke-virtual {v5, v10, v12}, Lw/s;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 870
    .line 871
    .line 872
    move-result-object v5

    .line 873
    goto :goto_1e

    .line 874
    :cond_34
    const/4 v5, 0x0

    .line 875
    :goto_1e
    if-nez v11, :cond_3f

    .line 876
    .line 877
    if-eqz v5, :cond_35

    .line 878
    .line 879
    goto :goto_27

    .line 880
    :cond_35
    if-nez v2, :cond_36

    .line 881
    .line 882
    if-nez v6, :cond_36

    .line 883
    .line 884
    if-nez v7, :cond_36

    .line 885
    .line 886
    if-eqz v8, :cond_44

    .line 887
    .line 888
    :cond_36
    invoke-static {v9}, Lw/t0;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    .line 889
    .line 890
    .line 891
    move-result-object v4

    .line 892
    const/4 v5, 0x0

    .line 893
    aget-object v11, v4, v5

    .line 894
    .line 895
    if-nez v11, :cond_3c

    .line 896
    .line 897
    const/4 v12, 0x2

    .line 898
    aget-object v13, v4, v12

    .line 899
    .line 900
    if-eqz v13, :cond_37

    .line 901
    .line 902
    goto :goto_23

    .line 903
    :cond_37
    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 904
    .line 905
    .line 906
    move-result-object v4

    .line 907
    if-eqz v2, :cond_38

    .line 908
    .line 909
    goto :goto_1f

    .line 910
    :cond_38
    aget-object v2, v4, v5

    .line 911
    .line 912
    :goto_1f
    if-eqz v6, :cond_39

    .line 913
    .line 914
    goto :goto_20

    .line 915
    :cond_39
    const/4 v5, 0x1

    .line 916
    aget-object v6, v4, v5

    .line 917
    .line 918
    :goto_20
    if-eqz v7, :cond_3a

    .line 919
    .line 920
    goto :goto_21

    .line 921
    :cond_3a
    const/4 v5, 0x2

    .line 922
    aget-object v7, v4, v5

    .line 923
    .line 924
    :goto_21
    if-eqz v8, :cond_3b

    .line 925
    .line 926
    goto :goto_22

    .line 927
    :cond_3b
    const/4 v5, 0x3

    .line 928
    aget-object v8, v4, v5

    .line 929
    .line 930
    :goto_22
    invoke-virtual {v9, v2, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 931
    .line 932
    .line 933
    goto :goto_2c

    .line 934
    :cond_3c
    :goto_23
    if-eqz v6, :cond_3d

    .line 935
    .line 936
    :goto_24
    const/4 v2, 0x2

    .line 937
    goto :goto_25

    .line 938
    :cond_3d
    const/4 v2, 0x1

    .line 939
    aget-object v6, v4, v2

    .line 940
    .line 941
    goto :goto_24

    .line 942
    :goto_25
    aget-object v2, v4, v2

    .line 943
    .line 944
    if-eqz v8, :cond_3e

    .line 945
    .line 946
    goto :goto_26

    .line 947
    :cond_3e
    const/4 v5, 0x3

    .line 948
    aget-object v8, v4, v5

    .line 949
    .line 950
    :goto_26
    invoke-static {v9, v11, v6, v2, v8}, Lw/t0;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 951
    .line 952
    .line 953
    goto :goto_2c

    .line 954
    :cond_3f
    :goto_27
    invoke-static {v9}, Lw/t0;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    .line 955
    .line 956
    .line 957
    move-result-object v2

    .line 958
    if-eqz v11, :cond_40

    .line 959
    .line 960
    goto :goto_28

    .line 961
    :cond_40
    const/4 v4, 0x0

    .line 962
    aget-object v11, v2, v4

    .line 963
    .line 964
    :goto_28
    if-eqz v6, :cond_41

    .line 965
    .line 966
    goto :goto_29

    .line 967
    :cond_41
    const/4 v4, 0x1

    .line 968
    aget-object v6, v2, v4

    .line 969
    .line 970
    :goto_29
    if-eqz v5, :cond_42

    .line 971
    .line 972
    goto :goto_2a

    .line 973
    :cond_42
    const/4 v4, 0x2

    .line 974
    aget-object v5, v2, v4

    .line 975
    .line 976
    :goto_2a
    if-eqz v8, :cond_43

    .line 977
    .line 978
    goto :goto_2b

    .line 979
    :cond_43
    const/4 v4, 0x3

    .line 980
    aget-object v8, v2, v4

    .line 981
    .line 982
    :goto_2b
    invoke-static {v9, v11, v6, v5, v8}, Lw/t0;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 983
    .line 984
    .line 985
    :cond_44
    :goto_2c
    const/16 v2, 0xb

    .line 986
    .line 987
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 988
    .line 989
    .line 990
    move-result v4

    .line 991
    if-eqz v4, :cond_47

    .line 992
    .line 993
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 994
    .line 995
    .line 996
    move-result v4

    .line 997
    if-eqz v4, :cond_45

    .line 998
    .line 999
    const/4 v4, 0x0

    .line 1000
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 1001
    .line 1002
    .line 1003
    move-result v4

    .line 1004
    if-eqz v4, :cond_45

    .line 1005
    .line 1006
    invoke-static {v10, v4}, Ln0/g;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v4

    .line 1010
    if-eqz v4, :cond_45

    .line 1011
    .line 1012
    goto :goto_2d

    .line 1013
    :cond_45
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v4

    .line 1017
    :goto_2d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1018
    .line 1019
    const/16 v5, 0x18

    .line 1020
    .line 1021
    if-lt v2, v5, :cond_46

    .line 1022
    .line 1023
    invoke-static {v9, v4}, Lb1/r;->f(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 1024
    .line 1025
    .line 1026
    goto :goto_2e

    .line 1027
    :cond_46
    instance-of v2, v9, Lb1/x;

    .line 1028
    .line 1029
    if-eqz v2, :cond_47

    .line 1030
    .line 1031
    move-object v2, v9

    .line 1032
    check-cast v2, Lb1/x;

    .line 1033
    .line 1034
    invoke-interface {v2, v4}, Lb1/x;->setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V

    .line 1035
    .line 1036
    .line 1037
    :cond_47
    :goto_2e
    const/16 v2, 0xc

    .line 1038
    .line 1039
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1040
    .line 1041
    .line 1042
    move-result v4

    .line 1043
    if-eqz v4, :cond_4a

    .line 1044
    .line 1045
    const/4 v4, -0x1

    .line 1046
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1047
    .line 1048
    .line 1049
    move-result v2

    .line 1050
    const/4 v4, 0x0

    .line 1051
    invoke-static {v2, v4}, Lw/n1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v2

    .line 1055
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1056
    .line 1057
    const/16 v6, 0x18

    .line 1058
    .line 1059
    if-lt v5, v6, :cond_48

    .line 1060
    .line 1061
    invoke-static {v9, v2}, Lb1/r;->g(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 1062
    .line 1063
    .line 1064
    goto :goto_2f

    .line 1065
    :cond_48
    instance-of v5, v9, Lb1/x;

    .line 1066
    .line 1067
    if-eqz v5, :cond_49

    .line 1068
    .line 1069
    move-object v5, v9

    .line 1070
    check-cast v5, Lb1/x;

    .line 1071
    .line 1072
    invoke-interface {v5, v2}, Lb1/x;->setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1073
    .line 1074
    .line 1075
    :cond_49
    :goto_2f
    const/4 v2, -0x1

    .line 1076
    const/16 v5, 0xf

    .line 1077
    .line 1078
    goto :goto_30

    .line 1079
    :cond_4a
    const/4 v4, 0x0

    .line 1080
    goto :goto_2f

    .line 1081
    :goto_30
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1082
    .line 1083
    .line 1084
    move-result v5

    .line 1085
    const/16 v6, 0x12

    .line 1086
    .line 1087
    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1088
    .line 1089
    .line 1090
    move-result v6

    .line 1091
    const/16 v7, 0x13

    .line 1092
    .line 1093
    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1094
    .line 1095
    .line 1096
    move-result v7

    .line 1097
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1098
    .line 1099
    .line 1100
    if-eq v5, v2, :cond_4b

    .line 1101
    .line 1102
    invoke-static {v9, v5}, Ld/b;->m0(Landroid/widget/TextView;I)V

    .line 1103
    .line 1104
    .line 1105
    :cond_4b
    if-eq v6, v2, :cond_4c

    .line 1106
    .line 1107
    invoke-static {v9, v6}, Ld/b;->n0(Landroid/widget/TextView;I)V

    .line 1108
    .line 1109
    .line 1110
    :cond_4c
    if-eq v7, v2, :cond_4d

    .line 1111
    .line 1112
    invoke-static {v7}, Ls1/g;->k(I)V

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v1

    .line 1119
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1120
    .line 1121
    .line 1122
    move-result v1

    .line 1123
    if-eq v7, v1, :cond_4d

    .line 1124
    .line 1125
    sub-int/2addr v7, v1

    .line 1126
    int-to-float v1, v7

    .line 1127
    invoke-virtual {v9, v1, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1128
    .line 1129
    .line 1130
    :cond_4d
    return-void
.end method

.method public final g(Landroid/content/Context;I)V
    .locals 6

    .line 1
    sget-object v0, Lp/a;->w:[I

    .line 2
    .line 3
    new-instance v1, Ls4/a;

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v1, p1, p2}, Ls4/a;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0xe

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Lw/y0;->a:Landroid/widget/TextView;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v2, 0x17

    .line 33
    .line 34
    if-ge v0, v2, :cond_3

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ls4/a;->d(I)Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    const/4 v2, 0x5

    .line 53
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ls4/a;->d(I)Landroid/content/res/ColorStateList;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    const/4 v2, 0x4

    .line 69
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_3

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ls4/a;->d(I)Landroid/content/res/ColorStateList;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    const/4 v2, -0x1

    .line 91
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_4

    .line 96
    .line 97
    const/4 v2, 0x0

    .line 98
    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 99
    .line 100
    .line 101
    :cond_4
    invoke-virtual {p0, p1, v1}, Lw/y0;->n(Landroid/content/Context;Ls4/a;)V

    .line 102
    .line 103
    .line 104
    const/16 p1, 0x1a

    .line 105
    .line 106
    if-lt v0, p1, :cond_5

    .line 107
    .line 108
    const/16 p1, 0xd

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    invoke-static {v3, p1}, Lw/w0;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    :cond_5
    invoke-virtual {v1}, Ls4/a;->r()V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lw/y0;->l:Landroid/graphics/Typeface;

    .line 129
    .line 130
    if-eqz p1, :cond_6

    .line 131
    .line 132
    iget p2, p0, Lw/y0;->j:I

    .line 133
    .line 134
    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 135
    .line 136
    .line 137
    :cond_6
    return-void
.end method

.method public final i(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lw/y0;->i:Lw/i1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lw/i1;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lw/i1;->j:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    int-to-float p1, p1

    .line 20
    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-float p2, p2

    .line 25
    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    int-to-float p3, p3

    .line 30
    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-virtual {v0, p1, p2, p3}, Lw/i1;->k(FFF)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lw/i1;->h()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Lw/i1;->a()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final j([II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lw/y0;->i:Lw/i1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lw/i1;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-lez v1, :cond_3

    .line 12
    .line 13
    new-array v3, v1, [I

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v4, v0, Lw/i1;->j:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :goto_0
    if-ge v2, v1, :cond_1

    .line 33
    .line 34
    aget v5, p1, v2

    .line 35
    .line 36
    int-to-float v5, v5

    .line 37
    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    aput v5, v3, v2

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    invoke-static {v3}, Lw/i1;->b([I)[I

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, v0, Lw/i1;->f:[I

    .line 55
    .line 56
    invoke-virtual {v0}, Lw/i1;->i()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "None of the preset sizes is valid: "

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p2

    .line 87
    :cond_3
    iput-boolean v2, v0, Lw/i1;->g:Z

    .line 88
    .line 89
    :goto_2
    invoke-virtual {v0}, Lw/i1;->h()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {v0}, Lw/i1;->a()V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void
.end method

.method public final k(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lw/y0;->i:Lw/i1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lw/i1;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    iget-object p1, v0, Lw/i1;->j:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/high16 v1, 0x41400000    # 12.0f

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-static {v2, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/high16 v3, 0x42e00000    # 112.0f

    .line 32
    .line 33
    invoke-static {v2, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/high16 v2, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1, v2}, Lw/i1;->k(FFF)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lw/i1;->h()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lw/i1;->a()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string v1, "Unknown auto-size text type: "

    .line 55
    .line 56
    invoke-static {p1, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_1
    const/4 p1, 0x0

    .line 65
    iput p1, v0, Lw/i1;->a:I

    .line 66
    .line 67
    const/high16 v1, -0x40800000    # -1.0f

    .line 68
    .line 69
    iput v1, v0, Lw/i1;->d:F

    .line 70
    .line 71
    iput v1, v0, Lw/i1;->e:F

    .line 72
    .line 73
    iput v1, v0, Lw/i1;->c:F

    .line 74
    .line 75
    new-array v1, p1, [I

    .line 76
    .line 77
    iput-object v1, v0, Lw/i1;->f:[I

    .line 78
    .line 79
    iput-boolean p1, v0, Lw/i1;->b:Z

    .line 80
    .line 81
    :cond_2
    :goto_0
    return-void
.end method

.method public final l(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw/y0;->h:Lw/d3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lw/d3;

    .line 6
    .line 7
    invoke-direct {v0}, Lw/d3;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lw/y0;->h:Lw/d3;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lw/y0;->h:Lw/d3;

    .line 13
    .line 14
    iput-object p1, v0, Lw/d3;->a:Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Lw/d3;->d:Z

    .line 22
    .line 23
    iput-object v0, p0, Lw/y0;->b:Lw/d3;

    .line 24
    .line 25
    iput-object v0, p0, Lw/y0;->c:Lw/d3;

    .line 26
    .line 27
    iput-object v0, p0, Lw/y0;->d:Lw/d3;

    .line 28
    .line 29
    iput-object v0, p0, Lw/y0;->e:Lw/d3;

    .line 30
    .line 31
    iput-object v0, p0, Lw/y0;->f:Lw/d3;

    .line 32
    .line 33
    iput-object v0, p0, Lw/y0;->g:Lw/d3;

    .line 34
    .line 35
    return-void
.end method

.method public final m(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw/y0;->h:Lw/d3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lw/d3;

    .line 6
    .line 7
    invoke-direct {v0}, Lw/d3;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lw/y0;->h:Lw/d3;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lw/y0;->h:Lw/d3;

    .line 13
    .line 14
    iput-object p1, v0, Lw/d3;->b:Landroid/graphics/PorterDuff$Mode;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Lw/d3;->c:Z

    .line 22
    .line 23
    iput-object v0, p0, Lw/y0;->b:Lw/d3;

    .line 24
    .line 25
    iput-object v0, p0, Lw/y0;->c:Lw/d3;

    .line 26
    .line 27
    iput-object v0, p0, Lw/y0;->d:Lw/d3;

    .line 28
    .line 29
    iput-object v0, p0, Lw/y0;->e:Lw/d3;

    .line 30
    .line 31
    iput-object v0, p0, Lw/y0;->f:Lw/d3;

    .line 32
    .line 33
    iput-object v0, p0, Lw/y0;->g:Lw/d3;

    .line 34
    .line 35
    return-void
.end method

.method public final n(Landroid/content/Context;Ls4/a;)V
    .locals 11

    .line 1
    iget v0, p0, Lw/y0;->j:I

    .line 2
    .line 3
    iget-object v1, p2, Ls4/a;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/content/res/TypedArray;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lw/y0;->j:I

    .line 13
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v3, 0x1c

    .line 17
    .line 18
    const/4 v4, -0x1

    .line 19
    if-lt v0, v3, :cond_0

    .line 20
    .line 21
    const/16 v5, 0xb

    .line 22
    .line 23
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    iput v5, p0, Lw/y0;->k:I

    .line 28
    .line 29
    if-eq v5, v4, :cond_0

    .line 30
    .line 31
    iget v5, p0, Lw/y0;->j:I

    .line 32
    .line 33
    and-int/2addr v5, v2

    .line 34
    iput v5, p0, Lw/y0;->j:I

    .line 35
    .line 36
    :cond_0
    const/16 v5, 0xa

    .line 37
    .line 38
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/16 v7, 0xc

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v9, 0x1

    .line 46
    if-nez v6, :cond_6

    .line 47
    .line 48
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    iput-boolean v8, p0, Lw/y0;->m:Z

    .line 62
    .line 63
    invoke-virtual {v1, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eq p1, v9, :cond_4

    .line 68
    .line 69
    if-eq p1, v2, :cond_3

    .line 70
    .line 71
    const/4 p2, 0x3

    .line 72
    if-eq p1, p2, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 76
    .line 77
    iput-object p1, p0, Lw/y0;->l:Landroid/graphics/Typeface;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 81
    .line 82
    iput-object p1, p0, Lw/y0;->l:Landroid/graphics/Typeface;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 86
    .line 87
    iput-object p1, p0, Lw/y0;->l:Landroid/graphics/Typeface;

    .line 88
    .line 89
    :cond_5
    :goto_0
    return-void

    .line 90
    :cond_6
    :goto_1
    const/4 v6, 0x0

    .line 91
    iput-object v6, p0, Lw/y0;->l:Landroid/graphics/Typeface;

    .line 92
    .line 93
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_7

    .line 98
    .line 99
    const/16 v5, 0xc

    .line 100
    .line 101
    :cond_7
    iget v6, p0, Lw/y0;->k:I

    .line 102
    .line 103
    iget v7, p0, Lw/y0;->j:I

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_c

    .line 110
    .line 111
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 112
    .line 113
    iget-object v10, p0, Lw/y0;->a:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-direct {p1, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    new-instance v10, Lw/s0;

    .line 119
    .line 120
    invoke-direct {v10, p0, v6, v7, p1}, Lw/s0;-><init>(Lw/y0;IILjava/lang/ref/WeakReference;)V

    .line 121
    .line 122
    .line 123
    :try_start_0
    iget p1, p0, Lw/y0;->j:I

    .line 124
    .line 125
    invoke-virtual {p2, v5, p1, v10}, Ls4/a;->g(IILw/s0;)Landroid/graphics/Typeface;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_a

    .line 130
    .line 131
    if-lt v0, v3, :cond_9

    .line 132
    .line 133
    iget p2, p0, Lw/y0;->k:I

    .line 134
    .line 135
    if-eq p2, v4, :cond_9

    .line 136
    .line 137
    invoke-static {p1, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget p2, p0, Lw/y0;->k:I

    .line 142
    .line 143
    iget v0, p0, Lw/y0;->j:I

    .line 144
    .line 145
    and-int/2addr v0, v2

    .line 146
    if-eqz v0, :cond_8

    .line 147
    .line 148
    const/4 v0, 0x1

    .line 149
    goto :goto_2

    .line 150
    :cond_8
    const/4 v0, 0x0

    .line 151
    :goto_2
    invoke-static {p1, p2, v0}, Lw/x0;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p0, Lw/y0;->l:Landroid/graphics/Typeface;

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :catch_0
    nop

    .line 159
    goto :goto_5

    .line 160
    :cond_9
    iput-object p1, p0, Lw/y0;->l:Landroid/graphics/Typeface;

    .line 161
    .line 162
    :cond_a
    :goto_3
    iget-object p1, p0, Lw/y0;->l:Landroid/graphics/Typeface;

    .line 163
    .line 164
    if-nez p1, :cond_b

    .line 165
    .line 166
    const/4 p1, 0x1

    .line 167
    goto :goto_4

    .line 168
    :cond_b
    const/4 p1, 0x0

    .line 169
    :goto_4
    iput-boolean p1, p0, Lw/y0;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    :cond_c
    :goto_5
    iget-object p1, p0, Lw/y0;->l:Landroid/graphics/Typeface;

    .line 172
    .line 173
    if-nez p1, :cond_f

    .line 174
    .line 175
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    if-eqz p1, :cond_f

    .line 180
    .line 181
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 182
    .line 183
    if-lt p2, v3, :cond_e

    .line 184
    .line 185
    iget p2, p0, Lw/y0;->k:I

    .line 186
    .line 187
    if-eq p2, v4, :cond_e

    .line 188
    .line 189
    invoke-static {p1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iget p2, p0, Lw/y0;->k:I

    .line 194
    .line 195
    iget v0, p0, Lw/y0;->j:I

    .line 196
    .line 197
    and-int/2addr v0, v2

    .line 198
    if-eqz v0, :cond_d

    .line 199
    .line 200
    const/4 v8, 0x1

    .line 201
    :cond_d
    invoke-static {p1, p2, v8}, Lw/x0;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    iput-object p1, p0, Lw/y0;->l:Landroid/graphics/Typeface;

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_e
    iget p2, p0, Lw/y0;->j:I

    .line 209
    .line 210
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iput-object p1, p0, Lw/y0;->l:Landroid/graphics/Typeface;

    .line 215
    .line 216
    :cond_f
    :goto_6
    return-void
.end method
