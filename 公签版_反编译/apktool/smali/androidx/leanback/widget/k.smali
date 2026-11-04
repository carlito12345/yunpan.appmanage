.class public final Landroidx/leanback/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/leanback/widget/q;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/k;->a:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IIII)V
    .locals 7

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Landroid/view/View;

    .line 3
    .line 4
    const/high16 p1, -0x80000000

    .line 5
    .line 6
    iget-object v6, p0, Landroidx/leanback/widget/k;->a:Landroidx/leanback/widget/q;

    .line 7
    .line 8
    if-eq p5, p1, :cond_0

    .line 9
    .line 10
    const p1, 0x7fffffff

    .line 11
    .line 12
    .line 13
    if-ne p5, p1, :cond_2

    .line 14
    .line 15
    :cond_0
    iget-object p1, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 16
    .line 17
    iget-boolean p1, p1, Landroidx/leanback/widget/j;->c:Z

    .line 18
    .line 19
    iget-object p5, v6, Landroidx/leanback/widget/q;->F:La2/w0;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p5, La2/w0;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Landroidx/leanback/widget/x0;

    .line 26
    .line 27
    iget p1, p1, Landroidx/leanback/widget/x0;->j:I

    .line 28
    .line 29
    move p5, p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, p5, La2/w0;->d:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Landroidx/leanback/widget/x0;

    .line 34
    .line 35
    iget p5, p1, Landroidx/leanback/widget/x0;->i:I

    .line 36
    .line 37
    iget p1, p1, Landroidx/leanback/widget/x0;->k:I

    .line 38
    .line 39
    sub-int/2addr p5, p1

    .line 40
    :cond_2
    :goto_0
    iget-object p1, v6, Landroidx/leanback/widget/q;->D:Landroidx/leanback/widget/j;

    .line 41
    .line 42
    iget-boolean p1, p1, Landroidx/leanback/widget/j;->c:Z

    .line 43
    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    add-int/2addr p3, p5

    .line 47
    move v4, p3

    .line 48
    move v3, p5

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    sub-int p1, p5, p3

    .line 51
    .line 52
    move v3, p1

    .line 53
    move v4, p5

    .line 54
    :goto_1
    invoke-virtual {v6, p4}, Landroidx/leanback/widget/q;->j(I)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iget-object p3, v6, Landroidx/leanback/widget/q;->F:La2/w0;

    .line 59
    .line 60
    iget-object p3, p3, La2/w0;->e:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p3, Landroidx/leanback/widget/x0;

    .line 63
    .line 64
    iget p3, p3, Landroidx/leanback/widget/x0;->j:I

    .line 65
    .line 66
    add-int/2addr p1, p3

    .line 67
    iget p3, v6, Landroidx/leanback/widget/q;->r:I

    .line 68
    .line 69
    sub-int v5, p1, p3

    .line 70
    .line 71
    iget-object p1, v6, Landroidx/leanback/widget/q;->K:La0/h;

    .line 72
    .line 73
    iget-object p3, p1, La0/h;->d:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p3, La0/m;

    .line 76
    .line 77
    if-eqz p3, :cond_4

    .line 78
    .line 79
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iget-object p1, p1, La0/h;->d:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p1, La0/m;

    .line 86
    .line 87
    invoke-virtual {p1, p2}, La0/m;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroid/util/SparseArray;

    .line 92
    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {v1, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    iget-object v0, p0, Landroidx/leanback/widget/k;->a:Landroidx/leanback/widget/q;

    .line 99
    .line 100
    move v2, p4

    .line 101
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/q;->p(Landroid/view/View;IIII)V

    .line 102
    .line 103
    .line 104
    iget-object p1, v6, Landroidx/leanback/widget/q;->e:Landroidx/recyclerview/widget/n2;

    .line 105
    .line 106
    iget-boolean p1, p1, Landroidx/recyclerview/widget/n2;->g:Z

    .line 107
    .line 108
    if-nez p1, :cond_5

    .line 109
    .line 110
    invoke-virtual {v6}, Landroidx/leanback/widget/q;->K()V

    .line 111
    .line 112
    .line 113
    :cond_5
    iget p1, v6, Landroidx/leanback/widget/q;->k:I

    .line 114
    .line 115
    and-int/lit8 p1, p1, 0x3

    .line 116
    .line 117
    const/4 p2, 0x1

    .line 118
    if-eq p1, p2, :cond_9

    .line 119
    .line 120
    iget-object p1, v6, Landroidx/leanback/widget/q;->o:Landroidx/leanback/widget/o;

    .line 121
    .line 122
    if-eqz p1, :cond_9

    .line 123
    .line 124
    iget-boolean p3, p1, Landroidx/leanback/widget/o;->c:Z

    .line 125
    .line 126
    iget-object p4, p1, Landroidx/leanback/widget/o;->e:Landroidx/leanback/widget/q;

    .line 127
    .line 128
    if-eqz p3, :cond_6

    .line 129
    .line 130
    iget p3, p1, Landroidx/leanback/widget/o;->d:I

    .line 131
    .line 132
    if-eqz p3, :cond_6

    .line 133
    .line 134
    invoke-virtual {p4, p3, p2}, Landroidx/leanback/widget/q;->v(IZ)I

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    iput p2, p1, Landroidx/leanback/widget/o;->d:I

    .line 139
    .line 140
    :cond_6
    iget p2, p1, Landroidx/leanback/widget/o;->d:I

    .line 141
    .line 142
    if-eqz p2, :cond_8

    .line 143
    .line 144
    if-lez p2, :cond_7

    .line 145
    .line 146
    invoke-virtual {p4}, Landroidx/leanback/widget/q;->n()Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-nez p2, :cond_8

    .line 151
    .line 152
    :cond_7
    iget p2, p1, Landroidx/leanback/widget/o;->d:I

    .line 153
    .line 154
    if-gez p2, :cond_9

    .line 155
    .line 156
    invoke-virtual {p4}, Landroidx/leanback/widget/q;->m()Z

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-eqz p2, :cond_9

    .line 161
    .line 162
    :cond_8
    iget p2, p4, Landroidx/leanback/widget/q;->m:I

    .line 163
    .line 164
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/m2;->setTargetPosition(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Landroidx/recyclerview/widget/m2;->stop()V

    .line 168
    .line 169
    .line 170
    :cond_9
    return-void
.end method

.method public final b(IZ[Ljava/lang/Object;Z)I
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/k;->a:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/q;->f:I

    .line 4
    .line 5
    sub-int v1, p1, v1

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/leanback/widget/q;->j:Landroidx/recyclerview/widget/g2;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/g2;->d(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/leanback/widget/n;

    .line 18
    .line 19
    iget-object v3, v0, Landroidx/leanback/widget/q;->b:Landroidx/leanback/widget/f;

    .line 20
    .line 21
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    if-nez v2, :cond_11

    .line 33
    .line 34
    if-eqz p4, :cond_1

    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-eqz p2, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 53
    .line 54
    .line 55
    :goto_0
    iget p2, v0, Landroidx/leanback/widget/q;->q:I

    .line 56
    .line 57
    const/4 p4, -0x1

    .line 58
    if-eq p2, p4, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object p2, v0, Landroidx/leanback/widget/q;->o:Landroidx/leanback/widget/o;

    .line 64
    .line 65
    if-eqz p2, :cond_c

    .line 66
    .line 67
    iget-boolean p4, p2, Landroidx/leanback/widget/o;->c:Z

    .line 68
    .line 69
    if-nez p4, :cond_c

    .line 70
    .line 71
    iget p4, p2, Landroidx/leanback/widget/o;->d:I

    .line 72
    .line 73
    if-nez p4, :cond_4

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_4
    iget-object v2, p2, Landroidx/leanback/widget/o;->e:Landroidx/leanback/widget/q;

    .line 77
    .line 78
    if-lez p4, :cond_5

    .line 79
    .line 80
    iget p4, v2, Landroidx/leanback/widget/q;->m:I

    .line 81
    .line 82
    iget v4, v2, Landroidx/leanback/widget/q;->B:I

    .line 83
    .line 84
    add-int/2addr p4, v4

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    iget p4, v2, Landroidx/leanback/widget/q;->m:I

    .line 87
    .line 88
    iget v4, v2, Landroidx/leanback/widget/q;->B:I

    .line 89
    .line 90
    sub-int/2addr p4, v4

    .line 91
    :goto_1
    const/4 v4, 0x0

    .line 92
    :goto_2
    iget v5, p2, Landroidx/leanback/widget/o;->d:I

    .line 93
    .line 94
    if-eqz v5, :cond_b

    .line 95
    .line 96
    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/m2;->findViewByPosition(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    if-nez v5, :cond_6

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-nez v6, :cond_9

    .line 111
    .line 112
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_7

    .line 117
    .line 118
    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_9

    .line 123
    .line 124
    :cond_7
    iput p4, v2, Landroidx/leanback/widget/q;->m:I

    .line 125
    .line 126
    iget v4, p2, Landroidx/leanback/widget/o;->d:I

    .line 127
    .line 128
    if-lez v4, :cond_8

    .line 129
    .line 130
    add-int/lit8 v4, v4, -0x1

    .line 131
    .line 132
    iput v4, p2, Landroidx/leanback/widget/o;->d:I

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 136
    .line 137
    iput v4, p2, Landroidx/leanback/widget/o;->d:I

    .line 138
    .line 139
    :goto_3
    move-object v4, v5

    .line 140
    :cond_9
    iget v5, p2, Landroidx/leanback/widget/o;->d:I

    .line 141
    .line 142
    if-lez v5, :cond_a

    .line 143
    .line 144
    iget v5, v2, Landroidx/leanback/widget/q;->B:I

    .line 145
    .line 146
    add-int/2addr p4, v5

    .line 147
    goto :goto_2

    .line 148
    :cond_a
    iget v5, v2, Landroidx/leanback/widget/q;->B:I

    .line 149
    .line 150
    sub-int/2addr p4, v5

    .line 151
    goto :goto_2

    .line 152
    :cond_b
    :goto_4
    if-eqz v4, :cond_c

    .line 153
    .line 154
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-eqz p2, :cond_c

    .line 159
    .line 160
    iget p2, v2, Landroidx/leanback/widget/q;->k:I

    .line 161
    .line 162
    or-int/lit8 p2, p2, 0x20

    .line 163
    .line 164
    iput p2, v2, Landroidx/leanback/widget/q;->k:I

    .line 165
    .line 166
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 167
    .line 168
    .line 169
    iget p2, v2, Landroidx/leanback/widget/q;->k:I

    .line 170
    .line 171
    and-int/lit8 p2, p2, -0x21

    .line 172
    .line 173
    iput p2, v2, Landroidx/leanback/widget/q;->k:I

    .line 174
    .line 175
    :cond_c
    :goto_5
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    if-nez p2, :cond_d

    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_d
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    check-cast p2, Landroidx/leanback/widget/n;

    .line 187
    .line 188
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    :goto_6
    iget p2, v0, Landroidx/leanback/widget/q;->k:I

    .line 192
    .line 193
    and-int/lit8 p4, p2, 0x3

    .line 194
    .line 195
    const/4 v2, 0x1

    .line 196
    if-eq p4, v2, :cond_e

    .line 197
    .line 198
    iget p2, v0, Landroidx/leanback/widget/q;->m:I

    .line 199
    .line 200
    if-ne p1, p2, :cond_10

    .line 201
    .line 202
    iget-object p1, v0, Landroidx/leanback/widget/q;->o:Landroidx/leanback/widget/o;

    .line 203
    .line 204
    if-nez p1, :cond_10

    .line 205
    .line 206
    invoke-virtual {v0}, Landroidx/leanback/widget/q;->b()V

    .line 207
    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_e
    and-int/lit8 p4, p2, 0x4

    .line 211
    .line 212
    if-nez p4, :cond_10

    .line 213
    .line 214
    and-int/lit8 p2, p2, 0x10

    .line 215
    .line 216
    if-nez p2, :cond_f

    .line 217
    .line 218
    iget p4, v0, Landroidx/leanback/widget/q;->m:I

    .line 219
    .line 220
    if-ne p1, p4, :cond_f

    .line 221
    .line 222
    invoke-virtual {v0}, Landroidx/leanback/widget/q;->b()V

    .line 223
    .line 224
    .line 225
    goto :goto_7

    .line 226
    :cond_f
    if-eqz p2, :cond_10

    .line 227
    .line 228
    iget p2, v0, Landroidx/leanback/widget/q;->m:I

    .line 229
    .line 230
    if-lt p1, p2, :cond_10

    .line 231
    .line 232
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 233
    .line 234
    .line 235
    move-result p2

    .line 236
    if-eqz p2, :cond_10

    .line 237
    .line 238
    iput p1, v0, Landroidx/leanback/widget/q;->m:I

    .line 239
    .line 240
    iget p1, v0, Landroidx/leanback/widget/q;->k:I

    .line 241
    .line 242
    and-int/lit8 p1, p1, -0x11

    .line 243
    .line 244
    iput p1, v0, Landroidx/leanback/widget/q;->k:I

    .line 245
    .line 246
    invoke-virtual {v0}, Landroidx/leanback/widget/q;->b()V

    .line 247
    .line 248
    .line 249
    :cond_10
    :goto_7
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/q;->r(Landroid/view/View;)V

    .line 250
    .line 251
    .line 252
    :cond_11
    aput-object v1, p3, v3

    .line 253
    .line 254
    iget p1, v0, Landroidx/leanback/widget/q;->c:I

    .line 255
    .line 256
    if-nez p1, :cond_12

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/q;->g(Landroid/view/View;)I

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    goto :goto_8

    .line 263
    :cond_12
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/q;->f(Landroid/view/View;)I

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    :goto_8
    return p1
.end method

.method public final c()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/k;->a:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/leanback/widget/q;->e:Landroidx/recyclerview/widget/n2;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/n2;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v0, v0, Landroidx/leanback/widget/q;->f:I

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    return v1
.end method

.method public final d(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/k;->a:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/q;->f:I

    .line 4
    .line 5
    sub-int/2addr p1, v1

    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget v1, v0, Landroidx/leanback/widget/q;->k:I

    .line 11
    .line 12
    const/high16 v2, 0x40000

    .line 13
    .line 14
    and-int/2addr v1, v2

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/leanback/widget/q;->d:Landroidx/recyclerview/widget/f1;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/f1;->b(Landroid/view/View;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, v0, Landroidx/leanback/widget/q;->d:Landroidx/recyclerview/widget/f1;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/f1;->e(Landroid/view/View;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    :goto_0
    return p1
.end method

.method public final e(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/k;->a:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/q;->f:I

    .line 4
    .line 5
    sub-int/2addr p1, v1

    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v1, Landroidx/leanback/widget/q;->N:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/q;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    iget p1, v0, Landroidx/leanback/widget/q;->c:I

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    :goto_0
    return p1
.end method

.method public final f(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/k;->a:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    iget v1, v0, Landroidx/leanback/widget/q;->f:I

    .line 4
    .line 5
    sub-int/2addr p1, v1

    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget v1, v0, Landroidx/leanback/widget/q;->k:I

    .line 11
    .line 12
    and-int/lit8 v1, v1, 0x3

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, Landroidx/leanback/widget/q;->j:Landroidx/recyclerview/widget/g2;

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/g2;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, v0, Landroidx/leanback/widget/q;->j:Landroidx/recyclerview/widget/g2;

    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/g2;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method
