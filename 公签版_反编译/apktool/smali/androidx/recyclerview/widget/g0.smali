.class public final Landroidx/recyclerview/widget/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final e:Ljava/lang/ThreadLocal;

.field public static final f:La5/a;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:J

.field public c:J

.field public final d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/recyclerview/widget/g0;->e:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, La5/a;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, v1}, La5/a;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/recyclerview/widget/g0;->f:La5/a;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/g0;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/recyclerview/widget/g0;->d:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method

.method public static c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/i;->h()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/i;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/i;->g(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 22
    .line 23
    if-ne v4, p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0

    .line 33
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/g2;

    .line 37
    .line 38
    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/g2;->m(IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_2

    .line 58
    .line 59
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/g2;->j(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/g2;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 71
    .line 72
    .line 73
    return-object p1

    .line 74
    :goto_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 75
    .line 76
    .line 77
    goto :goto_4

    .line 78
    :goto_3
    throw p1

    .line 79
    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/g0;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string p2, "attempting to post unregistered view!"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    :goto_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/g0;->b:J

    .line 29
    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    cmp-long v4, v0, v2

    .line 33
    .line 34
    if-nez v4, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iput-wide v0, p0, Landroidx/recyclerview/widget/g0;->b:J

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e0;

    .line 46
    .line 47
    iput p2, p1, Landroidx/recyclerview/widget/e0;->a:I

    .line 48
    .line 49
    iput p3, p1, Landroidx/recyclerview/widget/e0;->b:I

    .line 50
    .line 51
    return-void
.end method

.method public final b(J)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Landroidx/recyclerview/widget/g0;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    :goto_0
    if-ge v4, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    if-nez v7, :cond_0

    .line 25
    .line 26
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e0;

    .line 27
    .line 28
    invoke-virtual {v7, v6, v3}, Landroidx/recyclerview/widget/e0;->b(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 29
    .line 30
    .line 31
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e0;

    .line 32
    .line 33
    iget v6, v6, Landroidx/recyclerview/widget/e0;->d:I

    .line 34
    .line 35
    add-int/2addr v5, v6

    .line 36
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v4, v1, Landroidx/recyclerview/widget/g0;->d:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 42
    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    :goto_1
    const/4 v7, 0x1

    .line 47
    if-ge v5, v2, :cond_6

    .line 48
    .line 49
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    .line 55
    invoke-virtual {v8}, Landroid/view/View;->getWindowVisibility()I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-eqz v9, :cond_2

    .line 60
    .line 61
    goto :goto_5

    .line 62
    :cond_2
    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e0;

    .line 63
    .line 64
    iget v10, v9, Landroidx/recyclerview/widget/e0;->a:I

    .line 65
    .line 66
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    iget v11, v9, Landroidx/recyclerview/widget/e0;->b:I

    .line 71
    .line 72
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    add-int/2addr v11, v10

    .line 77
    const/4 v10, 0x0

    .line 78
    :goto_2
    iget v12, v9, Landroidx/recyclerview/widget/e0;->d:I

    .line 79
    .line 80
    mul-int/lit8 v12, v12, 0x2

    .line 81
    .line 82
    if-ge v10, v12, :cond_5

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    if-lt v6, v12, :cond_3

    .line 89
    .line 90
    new-instance v12, Landroidx/recyclerview/widget/f0;

    .line 91
    .line 92
    invoke-direct {v12}, Landroidx/recyclerview/widget/f0;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_3
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    check-cast v12, Landroidx/recyclerview/widget/f0;

    .line 104
    .line 105
    :goto_3
    iget-object v13, v9, Landroidx/recyclerview/widget/e0;->c:[I

    .line 106
    .line 107
    add-int/lit8 v14, v10, 0x1

    .line 108
    .line 109
    aget v14, v13, v14

    .line 110
    .line 111
    if-gt v14, v11, :cond_4

    .line 112
    .line 113
    const/4 v15, 0x1

    .line 114
    goto :goto_4

    .line 115
    :cond_4
    const/4 v15, 0x0

    .line 116
    :goto_4
    iput-boolean v15, v12, Landroidx/recyclerview/widget/f0;->a:Z

    .line 117
    .line 118
    iput v11, v12, Landroidx/recyclerview/widget/f0;->b:I

    .line 119
    .line 120
    iput v14, v12, Landroidx/recyclerview/widget/f0;->c:I

    .line 121
    .line 122
    iput-object v8, v12, Landroidx/recyclerview/widget/f0;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    .line 124
    aget v13, v13, v10

    .line 125
    .line 126
    iput v13, v12, Landroidx/recyclerview/widget/f0;->e:I

    .line 127
    .line 128
    add-int/lit8 v6, v6, 0x1

    .line 129
    .line 130
    add-int/lit8 v10, v10, 0x2

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_6
    sget-object v0, Landroidx/recyclerview/widget/g0;->f:La5/a;

    .line 137
    .line 138
    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 139
    .line 140
    .line 141
    const/4 v0, 0x0

    .line 142
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-ge v0, v2, :cond_d

    .line 147
    .line 148
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Landroidx/recyclerview/widget/f0;

    .line 153
    .line 154
    iget-object v5, v2, Landroidx/recyclerview/widget/f0;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 155
    .line 156
    if-nez v5, :cond_7

    .line 157
    .line 158
    goto/16 :goto_c

    .line 159
    .line 160
    :cond_7
    iget-boolean v6, v2, Landroidx/recyclerview/widget/f0;->a:Z

    .line 161
    .line 162
    if-eqz v6, :cond_8

    .line 163
    .line 164
    const-wide v8, 0x7fffffffffffffffL

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    goto :goto_7

    .line 170
    :cond_8
    move-wide/from16 v8, p1

    .line 171
    .line 172
    :goto_7
    iget v6, v2, Landroidx/recyclerview/widget/f0;->e:I

    .line 173
    .line 174
    invoke-static {v5, v6, v8, v9}, Landroidx/recyclerview/widget/g0;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    if-eqz v5, :cond_c

    .line 179
    .line 180
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 181
    .line 182
    if-eqz v6, :cond_c

    .line 183
    .line 184
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-eqz v6, :cond_c

    .line 189
    .line 190
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-nez v6, :cond_c

    .line 195
    .line 196
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 197
    .line 198
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 203
    .line 204
    if-nez v5, :cond_9

    .line 205
    .line 206
    goto :goto_a

    .line 207
    :cond_9
    iget-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 208
    .line 209
    if-eqz v6, :cond_a

    .line 210
    .line 211
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/i;

    .line 212
    .line 213
    invoke-virtual {v6}, Landroidx/recyclerview/widget/i;->h()I

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    if-eqz v6, :cond_a

    .line 218
    .line 219
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    .line 220
    .line 221
    .line 222
    :cond_a
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e0;

    .line 223
    .line 224
    invoke-virtual {v6, v5, v7}, Landroidx/recyclerview/widget/e0;->b(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 225
    .line 226
    .line 227
    iget v8, v6, Landroidx/recyclerview/widget/e0;->d:I

    .line 228
    .line 229
    if-eqz v8, :cond_c

    .line 230
    .line 231
    :try_start_0
    const-string v8, "RV Nested Prefetch"

    .line 232
    .line 233
    invoke-static {v8}, Lt0/o;->a(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object v8, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/n2;

    .line 237
    .line 238
    iget-object v9, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m1;

    .line 239
    .line 240
    iput v7, v8, Landroidx/recyclerview/widget/n2;->d:I

    .line 241
    .line 242
    invoke-virtual {v9}, Landroidx/recyclerview/widget/m1;->b()I

    .line 243
    .line 244
    .line 245
    move-result v9

    .line 246
    iput v9, v8, Landroidx/recyclerview/widget/n2;->e:I

    .line 247
    .line 248
    iput-boolean v3, v8, Landroidx/recyclerview/widget/n2;->g:Z

    .line 249
    .line 250
    iput-boolean v3, v8, Landroidx/recyclerview/widget/n2;->h:Z

    .line 251
    .line 252
    iput-boolean v3, v8, Landroidx/recyclerview/widget/n2;->i:Z

    .line 253
    .line 254
    const/4 v8, 0x0

    .line 255
    :goto_8
    iget v9, v6, Landroidx/recyclerview/widget/e0;->d:I

    .line 256
    .line 257
    mul-int/lit8 v9, v9, 0x2

    .line 258
    .line 259
    if-ge v8, v9, :cond_b

    .line 260
    .line 261
    iget-object v9, v6, Landroidx/recyclerview/widget/e0;->c:[I

    .line 262
    .line 263
    aget v9, v9, v8

    .line 264
    .line 265
    move-wide/from16 v10, p1

    .line 266
    .line 267
    invoke-static {v5, v9, v10, v11}, Landroidx/recyclerview/widget/g0;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    .line 269
    .line 270
    add-int/lit8 v8, v8, 0x2

    .line 271
    .line 272
    goto :goto_8

    .line 273
    :catchall_0
    move-exception v0

    .line 274
    goto :goto_9

    .line 275
    :cond_b
    move-wide/from16 v10, p1

    .line 276
    .line 277
    invoke-static {}, Lt0/o;->b()V

    .line 278
    .line 279
    .line 280
    goto :goto_b

    .line 281
    :goto_9
    invoke-static {}, Lt0/o;->b()V

    .line 282
    .line 283
    .line 284
    throw v0

    .line 285
    :cond_c
    :goto_a
    move-wide/from16 v10, p1

    .line 286
    .line 287
    :goto_b
    iput-boolean v3, v2, Landroidx/recyclerview/widget/f0;->a:Z

    .line 288
    .line 289
    iput v3, v2, Landroidx/recyclerview/widget/f0;->b:I

    .line 290
    .line 291
    iput v3, v2, Landroidx/recyclerview/widget/f0;->c:I

    .line 292
    .line 293
    const/4 v5, 0x0

    .line 294
    iput-object v5, v2, Landroidx/recyclerview/widget/f0;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 295
    .line 296
    iput v3, v2, Landroidx/recyclerview/widget/f0;->e:I

    .line 297
    .line 298
    add-int/lit8 v0, v0, 0x1

    .line 299
    .line 300
    goto/16 :goto_6

    .line 301
    .line 302
    :cond_d
    :goto_c
    return-void
.end method

.method public final run()V
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    const-string v2, "RV Prefetch"

    .line 4
    .line 5
    invoke-static {v2}, Lt0/o;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Landroidx/recyclerview/widget/g0;->a:Ljava/util/ArrayList;

    .line 9
    .line 10
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    :goto_0
    iput-wide v0, p0, Landroidx/recyclerview/widget/g0;->b:J

    .line 17
    .line 18
    invoke-static {}, Lt0/o;->b()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    move-wide v5, v0

    .line 28
    :goto_1
    if-ge v4, v3, :cond_2

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    invoke-virtual {v7}, Landroid/view/View;->getWindowVisibility()I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-nez v8, :cond_1

    .line 41
    .line 42
    invoke-virtual {v7}, Landroid/view/View;->getDrawingTime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v7

    .line 46
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    goto :goto_2

    .line 51
    :catchall_0
    move-exception v2

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    cmp-long v2, v5, v0

    .line 57
    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 62
    .line 63
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    iget-wide v4, p0, Landroidx/recyclerview/widget/g0;->c:J

    .line 68
    .line 69
    add-long/2addr v2, v4

    .line 70
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/g0;->b(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .line 72
    .line 73
    iput-wide v0, p0, Landroidx/recyclerview/widget/g0;->b:J

    .line 74
    .line 75
    invoke-static {}, Lt0/o;->b()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :goto_3
    iput-wide v0, p0, Landroidx/recyclerview/widget/g0;->b:J

    .line 80
    .line 81
    invoke-static {}, Lt0/o;->b()V

    .line 82
    .line 83
    .line 84
    goto :goto_5

    .line 85
    :goto_4
    throw v2

    .line 86
    :goto_5
    goto :goto_4
.end method
