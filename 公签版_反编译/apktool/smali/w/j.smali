.class public final Lw/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/x;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Lv/k;

.field public final d:Landroid/view/LayoutInflater;

.field public e:Lv/w;

.field public final f:I

.field public final g:I

.field public h:Lv/z;

.field public i:Lw/h;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public p:I

.field public q:I

.field public r:Z

.field public final s:Landroid/util/SparseBooleanArray;

.field public t:Lw/e;

.field public v:Lw/e;

.field public w:Lw/g;

.field public x:Lw/f;

.field public final y:Lw/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw/j;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lw/j;->d:Landroid/view/LayoutInflater;

    .line 11
    .line 12
    const p1, 0x7f0e0003

    .line 13
    .line 14
    .line 15
    iput p1, p0, Lw/j;->f:I

    .line 16
    .line 17
    const p1, 0x7f0e0002

    .line 18
    .line 19
    .line 20
    iput p1, p0, Lw/j;->g:I

    .line 21
    .line 22
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lw/j;->s:Landroid/util/SparseBooleanArray;

    .line 28
    .line 29
    new-instance p1, Lw/i;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-direct {p1, v0, p0}, Lw/i;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lw/j;->y:Lw/i;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final a(Lv/k;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lw/j;->h()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw/j;->v:Lw/e;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lv/v;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lv/v;->i:Lv/s;

    .line 15
    .line 16
    invoke-interface {v0}, Lv/b0;->dismiss()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lw/j;->e:Lv/w;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Lv/w;->a(Lv/k;Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final b(Lv/m;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lv/m;->getActionView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lv/m;->e()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    :cond_0
    instance-of v0, p2, Lv/y;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p2, Lv/y;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget p2, p0, Lw/j;->g:I

    .line 22
    .line 23
    iget-object v0, p0, Lw/j;->d:Landroid/view/LayoutInflater;

    .line 24
    .line 25
    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Lv/y;

    .line 30
    .line 31
    :goto_0
    invoke-interface {p2, p1}, Lv/y;->c(Lv/m;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lw/j;->h:Lv/z;

    .line 35
    .line 36
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 37
    .line 38
    move-object v2, p2

    .line 39
    check-cast v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Lv/j;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lw/j;->x:Lw/f;

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    new-instance v0, Lw/f;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lw/f;-><init>(Lw/j;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lw/j;->x:Lw/f;

    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Lw/j;->x:Lw/f;

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Lv/c;)V

    .line 58
    .line 59
    .line 60
    move-object v0, p2

    .line 61
    check-cast v0, Landroid/view/View;

    .line 62
    .line 63
    :cond_3
    iget-boolean p1, p1, Lv/m;->E:Z

    .line 64
    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    const/16 v1, 0x8

    .line 68
    .line 69
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    instance-of p2, p1, Lw/l;

    .line 82
    .line 83
    if-nez p2, :cond_5

    .line 84
    .line 85
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->l(Landroid/view/ViewGroup$LayoutParams;)Lw/l;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    return-object v0
.end method

.method public final c(Lv/w;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final d()Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lw/j;->c:Lv/k;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lv/k;->l()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    iget v5, v0, Lw/j;->q:I

    .line 20
    .line 21
    iget v6, v0, Lw/j;->p:I

    .line 22
    .line 23
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    iget-object v8, v0, Lw/j;->h:Lv/z;

    .line 28
    .line 29
    check-cast v8, Landroid/view/ViewGroup;

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v11, 0x0

    .line 34
    const/4 v12, 0x0

    .line 35
    :goto_1
    const/4 v13, 0x2

    .line 36
    const/4 v14, 0x1

    .line 37
    if-ge v9, v4, :cond_4

    .line 38
    .line 39
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v15

    .line 43
    check-cast v15, Lv/m;

    .line 44
    .line 45
    iget v3, v15, Lv/m;->A:I

    .line 46
    .line 47
    and-int/lit8 v2, v3, 0x2

    .line 48
    .line 49
    if-ne v2, v13, :cond_1

    .line 50
    .line 51
    add-int/lit8 v11, v11, 0x1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    and-int/lit8 v2, v3, 0x1

    .line 55
    .line 56
    if-ne v2, v14, :cond_2

    .line 57
    .line 58
    add-int/lit8 v12, v12, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/4 v10, 0x1

    .line 62
    :goto_2
    iget-boolean v2, v0, Lw/j;->r:Z

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    iget-boolean v2, v15, Lv/m;->E:Z

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    iget-boolean v2, v0, Lw/j;->l:Z

    .line 76
    .line 77
    if-eqz v2, :cond_6

    .line 78
    .line 79
    if-nez v10, :cond_5

    .line 80
    .line 81
    add-int/2addr v12, v11

    .line 82
    if-le v12, v5, :cond_6

    .line 83
    .line 84
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 85
    .line 86
    :cond_6
    sub-int/2addr v5, v11

    .line 87
    iget-object v2, v0, Lw/j;->s:Landroid/util/SparseBooleanArray;

    .line 88
    .line 89
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 90
    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    const/4 v9, 0x0

    .line 94
    :goto_3
    if-ge v3, v4, :cond_16

    .line 95
    .line 96
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    check-cast v10, Lv/m;

    .line 101
    .line 102
    iget v11, v10, Lv/m;->A:I

    .line 103
    .line 104
    and-int/lit8 v12, v11, 0x2

    .line 105
    .line 106
    if-ne v12, v13, :cond_7

    .line 107
    .line 108
    const/4 v12, 0x1

    .line 109
    goto :goto_4

    .line 110
    :cond_7
    const/4 v12, 0x0

    .line 111
    :goto_4
    iget v15, v10, Lv/m;->b:I

    .line 112
    .line 113
    if-eqz v12, :cond_a

    .line 114
    .line 115
    const/4 v12, 0x0

    .line 116
    invoke-virtual {v0, v10, v12, v8}, Lw/j;->b(Lv/m;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    invoke-virtual {v11, v7, v7}, Landroid/view/View;->measure(II)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    sub-int/2addr v6, v11

    .line 128
    if-nez v9, :cond_8

    .line 129
    .line 130
    move v9, v11

    .line 131
    :cond_8
    if-eqz v15, :cond_9

    .line 132
    .line 133
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 134
    .line 135
    .line 136
    :cond_9
    invoke-virtual {v10, v14}, Lv/m;->g(Z)V

    .line 137
    .line 138
    .line 139
    :goto_5
    const/4 v11, 0x0

    .line 140
    goto/16 :goto_a

    .line 141
    .line 142
    :cond_a
    and-int/lit8 v11, v11, 0x1

    .line 143
    .line 144
    if-ne v11, v14, :cond_15

    .line 145
    .line 146
    invoke-virtual {v2, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    if-gtz v5, :cond_b

    .line 151
    .line 152
    if-eqz v11, :cond_c

    .line 153
    .line 154
    :cond_b
    if-lez v6, :cond_c

    .line 155
    .line 156
    const/4 v12, 0x1

    .line 157
    goto :goto_6

    .line 158
    :cond_c
    const/4 v12, 0x0

    .line 159
    :goto_6
    const/4 v13, 0x0

    .line 160
    if-eqz v12, :cond_f

    .line 161
    .line 162
    invoke-virtual {v0, v10, v13, v8}, Lw/j;->b(Lv/m;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    invoke-virtual {v14, v7, v7}, Landroid/view/View;->measure(II)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    sub-int/2addr v6, v14

    .line 174
    if-nez v9, :cond_d

    .line 175
    .line 176
    move v9, v14

    .line 177
    :cond_d
    add-int v14, v6, v9

    .line 178
    .line 179
    if-lez v14, :cond_e

    .line 180
    .line 181
    const/4 v14, 0x1

    .line 182
    goto :goto_7

    .line 183
    :cond_e
    const/4 v14, 0x0

    .line 184
    :goto_7
    and-int/2addr v12, v14

    .line 185
    :cond_f
    if-eqz v12, :cond_10

    .line 186
    .line 187
    if-eqz v15, :cond_10

    .line 188
    .line 189
    const/4 v14, 0x1

    .line 190
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 191
    .line 192
    .line 193
    goto :goto_9

    .line 194
    :cond_10
    if-eqz v11, :cond_13

    .line 195
    .line 196
    const/4 v11, 0x0

    .line 197
    invoke-virtual {v2, v15, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 198
    .line 199
    .line 200
    const/4 v11, 0x0

    .line 201
    :goto_8
    if-ge v11, v3, :cond_13

    .line 202
    .line 203
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    check-cast v14, Lv/m;

    .line 208
    .line 209
    iget v13, v14, Lv/m;->b:I

    .line 210
    .line 211
    if-ne v13, v15, :cond_12

    .line 212
    .line 213
    invoke-virtual {v14}, Lv/m;->f()Z

    .line 214
    .line 215
    .line 216
    move-result v13

    .line 217
    if-eqz v13, :cond_11

    .line 218
    .line 219
    add-int/lit8 v5, v5, 0x1

    .line 220
    .line 221
    :cond_11
    const/4 v13, 0x0

    .line 222
    invoke-virtual {v14, v13}, Lv/m;->g(Z)V

    .line 223
    .line 224
    .line 225
    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 226
    .line 227
    const/4 v13, 0x0

    .line 228
    goto :goto_8

    .line 229
    :cond_13
    :goto_9
    if-eqz v12, :cond_14

    .line 230
    .line 231
    add-int/lit8 v5, v5, -0x1

    .line 232
    .line 233
    :cond_14
    invoke-virtual {v10, v12}, Lv/m;->g(Z)V

    .line 234
    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_15
    const/4 v11, 0x0

    .line 238
    invoke-virtual {v10, v11}, Lv/m;->g(Z)V

    .line 239
    .line 240
    .line 241
    :goto_a
    add-int/lit8 v3, v3, 0x1

    .line 242
    .line 243
    const/4 v13, 0x2

    .line 244
    const/4 v14, 0x1

    .line 245
    goto/16 :goto_3

    .line 246
    .line 247
    :cond_16
    const/4 v3, 0x1

    .line 248
    return v3
.end method

.method public final e(Lv/m;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final f(Landroid/content/Context;Lv/k;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lw/j;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lw/j;->c:Lv/k;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget-boolean v0, p0, Lw/j;->m:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v1, 0x13

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-lt v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    xor-int/2addr v2, v0

    .line 33
    :goto_0
    iput-boolean v2, p0, Lw/j;->l:Z

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    div-int/2addr v0, v1

    .line 47
    iput v0, p0, Lw/j;->n:I

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 58
    .line 59
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 60
    .line 61
    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 62
    .line 63
    const/16 v3, 0x258

    .line 64
    .line 65
    if-gt p1, v3, :cond_7

    .line 66
    .line 67
    if-gt v0, v3, :cond_7

    .line 68
    .line 69
    const/16 p1, 0x2d0

    .line 70
    .line 71
    const/16 v3, 0x3c0

    .line 72
    .line 73
    if-le v0, v3, :cond_2

    .line 74
    .line 75
    if-gt v2, p1, :cond_7

    .line 76
    .line 77
    :cond_2
    if-le v0, p1, :cond_3

    .line 78
    .line 79
    if-le v2, v3, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    const/16 p1, 0x1f4

    .line 83
    .line 84
    if-ge v0, p1, :cond_6

    .line 85
    .line 86
    const/16 p1, 0x1e0

    .line 87
    .line 88
    const/16 v3, 0x280

    .line 89
    .line 90
    if-le v0, v3, :cond_4

    .line 91
    .line 92
    if-gt v2, p1, :cond_6

    .line 93
    .line 94
    :cond_4
    if-le v0, p1, :cond_5

    .line 95
    .line 96
    if-le v2, v3, :cond_5

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    const/16 p1, 0x168

    .line 100
    .line 101
    if-lt v0, p1, :cond_8

    .line 102
    .line 103
    const/4 v1, 0x3

    .line 104
    goto :goto_3

    .line 105
    :cond_6
    :goto_1
    const/4 v1, 0x4

    .line 106
    goto :goto_3

    .line 107
    :cond_7
    :goto_2
    const/4 v1, 0x5

    .line 108
    :cond_8
    :goto_3
    iput v1, p0, Lw/j;->q:I

    .line 109
    .line 110
    iget p1, p0, Lw/j;->n:I

    .line 111
    .line 112
    iget-boolean v0, p0, Lw/j;->l:Z

    .line 113
    .line 114
    const/4 v1, 0x0

    .line 115
    if-eqz v0, :cond_b

    .line 116
    .line 117
    iget-object v0, p0, Lw/j;->i:Lw/h;

    .line 118
    .line 119
    if-nez v0, :cond_a

    .line 120
    .line 121
    new-instance v0, Lw/h;

    .line 122
    .line 123
    iget-object v2, p0, Lw/j;->a:Landroid/content/Context;

    .line 124
    .line 125
    invoke-direct {v0, p0, v2}, Lw/h;-><init>(Lw/j;Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Lw/j;->i:Lw/h;

    .line 129
    .line 130
    iget-boolean v2, p0, Lw/j;->k:Z

    .line 131
    .line 132
    const/4 v3, 0x0

    .line 133
    if-eqz v2, :cond_9

    .line 134
    .line 135
    iget-object v2, p0, Lw/j;->j:Landroid/graphics/drawable/Drawable;

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Lw/x;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    .line 139
    .line 140
    iput-object v1, p0, Lw/j;->j:Landroid/graphics/drawable/Drawable;

    .line 141
    .line 142
    iput-boolean v3, p0, Lw/j;->k:Z

    .line 143
    .line 144
    :cond_9
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iget-object v1, p0, Lw/j;->i:Lw/h;

    .line 149
    .line 150
    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 151
    .line 152
    .line 153
    :cond_a
    iget-object v0, p0, Lw/j;->i:Lw/h;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    sub-int/2addr p1, v0

    .line 160
    goto :goto_4

    .line 161
    :cond_b
    iput-object v1, p0, Lw/j;->i:Lw/h;

    .line 162
    .line 163
    :goto_4
    iput p1, p0, Lw/j;->p:I

    .line 164
    .line 165
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 170
    .line 171
    return-void
.end method

.method public final g()V
    .locals 11

    .line 1
    iget-object v0, p0, Lw/j;->h:Lv/z;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    iget-object v3, p0, Lw/j;->c:Lv/k;

    .line 12
    .line 13
    if-eqz v3, :cond_6

    .line 14
    .line 15
    invoke-virtual {v3}, Lv/k;->i()V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lw/j;->c:Lv/k;

    .line 19
    .line 20
    invoke-virtual {v3}, Lv/k;->l()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    :goto_0
    if-ge v5, v4, :cond_7

    .line 31
    .line 32
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    check-cast v7, Lv/m;

    .line 37
    .line 38
    invoke-virtual {v7}, Lv/m;->f()Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-eqz v8, :cond_5

    .line 43
    .line 44
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    instance-of v9, v8, Lv/y;

    .line 49
    .line 50
    if-eqz v9, :cond_1

    .line 51
    .line 52
    move-object v9, v8

    .line 53
    check-cast v9, Lv/y;

    .line 54
    .line 55
    invoke-interface {v9}, Lv/y;->getItemData()Lv/m;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move-object v9, v1

    .line 61
    :goto_1
    invoke-virtual {p0, v7, v8, v0}, Lw/j;->b(Lv/m;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    if-eq v7, v9, :cond_2

    .line 66
    .line 67
    invoke-virtual {v10, v2}, Landroid/view/View;->setPressed(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v10}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 71
    .line 72
    .line 73
    :cond_2
    if-eq v10, v8, :cond_4

    .line 74
    .line 75
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    check-cast v7, Landroid/view/ViewGroup;

    .line 80
    .line 81
    if-eqz v7, :cond_3

    .line 82
    .line 83
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-object v7, p0, Lw/j;->h:Lv/z;

    .line 87
    .line 88
    check-cast v7, Landroid/view/ViewGroup;

    .line 89
    .line 90
    invoke-virtual {v7, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 91
    .line 92
    .line 93
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 94
    .line 95
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    const/4 v6, 0x0

    .line 99
    :cond_7
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-ge v6, v3, :cond_9

    .line 104
    .line 105
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    iget-object v4, p0, Lw/j;->i:Lw/h;

    .line 110
    .line 111
    if-ne v3, v4, :cond_8

    .line 112
    .line 113
    add-int/lit8 v6, v6, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_8
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_9
    :goto_3
    iget-object v0, p0, Lw/j;->h:Lv/z;

    .line 121
    .line 122
    check-cast v0, Landroid/view/View;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lw/j;->c:Lv/k;

    .line 128
    .line 129
    if-eqz v0, :cond_a

    .line 130
    .line 131
    invoke-virtual {v0}, Lv/k;->i()V

    .line 132
    .line 133
    .line 134
    iget-object v0, v0, Lv/k;->i:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    const/4 v4, 0x0

    .line 141
    :goto_4
    if-ge v4, v3, :cond_a

    .line 142
    .line 143
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Lv/m;

    .line 148
    .line 149
    iget-object v5, v5, Lv/m;->C:Lv/n;

    .line 150
    .line 151
    add-int/lit8 v4, v4, 0x1

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_a
    iget-object v0, p0, Lw/j;->c:Lv/k;

    .line 155
    .line 156
    if-eqz v0, :cond_b

    .line 157
    .line 158
    invoke-virtual {v0}, Lv/k;->i()V

    .line 159
    .line 160
    .line 161
    iget-object v1, v0, Lv/k;->j:Ljava/util/ArrayList;

    .line 162
    .line 163
    :cond_b
    iget-boolean v0, p0, Lw/j;->l:Z

    .line 164
    .line 165
    const/4 v3, 0x1

    .line 166
    if-eqz v0, :cond_d

    .line 167
    .line 168
    if-eqz v1, :cond_d

    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-ne v0, v3, :cond_c

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Lv/m;

    .line 181
    .line 182
    iget-boolean v0, v0, Lv/m;->E:Z

    .line 183
    .line 184
    xor-int/lit8 v2, v0, 0x1

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_c
    if-lez v0, :cond_d

    .line 188
    .line 189
    const/4 v2, 0x1

    .line 190
    :cond_d
    :goto_5
    if-eqz v2, :cond_10

    .line 191
    .line 192
    iget-object v0, p0, Lw/j;->i:Lw/h;

    .line 193
    .line 194
    if-nez v0, :cond_e

    .line 195
    .line 196
    new-instance v0, Lw/h;

    .line 197
    .line 198
    iget-object v1, p0, Lw/j;->a:Landroid/content/Context;

    .line 199
    .line 200
    invoke-direct {v0, p0, v1}, Lw/h;-><init>(Lw/j;Landroid/content/Context;)V

    .line 201
    .line 202
    .line 203
    iput-object v0, p0, Lw/j;->i:Lw/h;

    .line 204
    .line 205
    :cond_e
    iget-object v0, p0, Lw/j;->i:Lw/h;

    .line 206
    .line 207
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Landroid/view/ViewGroup;

    .line 212
    .line 213
    iget-object v1, p0, Lw/j;->h:Lv/z;

    .line 214
    .line 215
    if-eq v0, v1, :cond_11

    .line 216
    .line 217
    if-eqz v0, :cond_f

    .line 218
    .line 219
    iget-object v1, p0, Lw/j;->i:Lw/h;

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 222
    .line 223
    .line 224
    :cond_f
    iget-object v0, p0, Lw/j;->h:Lv/z;

    .line 225
    .line 226
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 227
    .line 228
    iget-object v1, p0, Lw/j;->i:Lw/h;

    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    new-instance v2, Lw/l;

    .line 234
    .line 235
    invoke-direct {v2}, Lw/l;-><init>()V

    .line 236
    .line 237
    .line 238
    const/16 v4, 0x10

    .line 239
    .line 240
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 241
    .line 242
    iput-boolean v3, v2, Lw/l;->a:Z

    .line 243
    .line 244
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_10
    iget-object v0, p0, Lw/j;->i:Lw/h;

    .line 249
    .line 250
    if-eqz v0, :cond_11

    .line 251
    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    iget-object v1, p0, Lw/j;->h:Lv/z;

    .line 257
    .line 258
    if-ne v0, v1, :cond_11

    .line 259
    .line 260
    check-cast v1, Landroid/view/ViewGroup;

    .line 261
    .line 262
    iget-object v0, p0, Lw/j;->i:Lw/h;

    .line 263
    .line 264
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 265
    .line 266
    .line 267
    :cond_11
    :goto_6
    iget-object v0, p0, Lw/j;->h:Lv/z;

    .line 268
    .line 269
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 270
    .line 271
    iget-boolean v1, p0, Lw/j;->l:Z

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 274
    .line 275
    .line 276
    return-void
.end method

.method public final h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lw/j;->w:Lw/g;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lw/j;->h:Lv/z;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    check-cast v2, Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lw/j;->w:Lw/g;

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    iget-object v0, p0, Lw/j;->t:Lw/e;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lv/v;->b()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Lv/v;->i:Lv/s;

    .line 30
    .line 31
    invoke-interface {v0}, Lv/b0;->dismiss()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return v1

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    return v0
.end method

.method public final i(Lv/m;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final j(Lv/d0;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Lv/k;->hasVisibleItems()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    move-object v0, p1

    .line 10
    :goto_0
    iget-object v2, v0, Lv/d0;->B:Lv/k;

    .line 11
    .line 12
    iget-object v3, p0, Lw/j;->c:Lv/k;

    .line 13
    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    move-object v0, v2

    .line 17
    check-cast v0, Lv/d0;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v2, p0, Lw/j;->h:Lv/z;

    .line 21
    .line 22
    check-cast v2, Landroid/view/ViewGroup;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x0

    .line 33
    :goto_1
    if-ge v5, v4, :cond_4

    .line 34
    .line 35
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    instance-of v7, v6, Lv/y;

    .line 40
    .line 41
    if-eqz v7, :cond_3

    .line 42
    .line 43
    move-object v7, v6

    .line 44
    check-cast v7, Lv/y;

    .line 45
    .line 46
    invoke-interface {v7}, Lv/y;->getItemData()Lv/m;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    iget-object v8, v0, Lv/d0;->C:Lv/m;

    .line 51
    .line 52
    if-ne v7, v8, :cond_3

    .line 53
    .line 54
    move-object v3, v6

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 60
    .line 61
    return v1

    .line 62
    :cond_5
    iget-object v0, p1, Lv/d0;->C:Lv/m;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object v0, p1, Lv/k;->f:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const/4 v2, 0x0

    .line 74
    :goto_3
    const/4 v4, 0x1

    .line 75
    if-ge v2, v0, :cond_7

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Lv/k;->getItem(I)Landroid/view/MenuItem;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_6

    .line 86
    .line 87
    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    if-eqz v5, :cond_6

    .line 92
    .line 93
    const/4 v0, 0x1

    .line 94
    goto :goto_4

    .line 95
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_7
    const/4 v0, 0x0

    .line 99
    :goto_4
    new-instance v2, Lw/e;

    .line 100
    .line 101
    iget-object v5, p0, Lw/j;->b:Landroid/content/Context;

    .line 102
    .line 103
    invoke-direct {v2, p0, v5, p1, v3}, Lw/e;-><init>(Lw/j;Landroid/content/Context;Lv/d0;Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    iput-object v2, p0, Lw/j;->v:Lw/e;

    .line 107
    .line 108
    iput-boolean v0, v2, Lv/v;->g:Z

    .line 109
    .line 110
    iget-object v2, v2, Lv/v;->i:Lv/s;

    .line 111
    .line 112
    if-eqz v2, :cond_8

    .line 113
    .line 114
    invoke-virtual {v2, v0}, Lv/s;->n(Z)V

    .line 115
    .line 116
    .line 117
    :cond_8
    iget-object v0, p0, Lw/j;->v:Lw/e;

    .line 118
    .line 119
    invoke-virtual {v0}, Lv/v;->b()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_9

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_9
    iget-object v2, v0, Lv/v;->e:Landroid/view/View;

    .line 127
    .line 128
    if-eqz v2, :cond_b

    .line 129
    .line 130
    invoke-virtual {v0, v1, v1, v1, v1}, Lv/v;->d(IIZZ)V

    .line 131
    .line 132
    .line 133
    :goto_5
    iget-object v0, p0, Lw/j;->e:Lv/w;

    .line 134
    .line 135
    if-eqz v0, :cond_a

    .line 136
    .line 137
    invoke-interface {v0, p1}, Lv/w;->d(Lv/k;)Z

    .line 138
    .line 139
    .line 140
    :cond_a
    return v4

    .line 141
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 142
    .line 143
    const-string v0, "MenuPopupHelper cannot be used without an anchor"

    .line 144
    .line 145
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_7

    .line 149
    :goto_6
    throw p1

    .line 150
    :goto_7
    goto :goto_6
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw/j;->t:Lw/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lv/v;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final l()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lw/j;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lw/j;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lw/j;->c:Lv/k;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lw/j;->h:Lv/z;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lw/j;->w:Lw/g;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lv/k;->i()V

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lv/k;->j:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    new-instance v0, Lw/e;

    .line 35
    .line 36
    iget-object v1, p0, Lw/j;->b:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v2, p0, Lw/j;->c:Lv/k;

    .line 39
    .line 40
    iget-object v3, p0, Lw/j;->i:Lw/h;

    .line 41
    .line 42
    invoke-direct {v0, p0, v1, v2, v3}, Lw/e;-><init>(Lw/j;Landroid/content/Context;Lv/k;Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lw/g;

    .line 46
    .line 47
    invoke-direct {v1, p0, v0}, Lw/g;-><init>(Lw/j;Lw/e;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lw/j;->w:Lw/g;

    .line 51
    .line 52
    iget-object v0, p0, Lw/j;->h:Lv/z;

    .line 53
    .line 54
    check-cast v0, Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    return v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 62
    return v0
.end method
