.class public final Landroidx/recyclerview/widget/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/recyclerview/widget/i1;->a:I

    iput-object p1, p0, Landroidx/recyclerview/widget/i1;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v2, v0, Landroidx/recyclerview/widget/i1;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget v3, v0, Landroidx/recyclerview/widget/i1;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/t1;

    .line 11
    .line 12
    if-eqz v3, :cond_b

    .line 13
    .line 14
    check-cast v3, Landroidx/recyclerview/widget/s;

    .line 15
    .line 16
    iget-object v4, v3, Landroidx/recyclerview/widget/s;->h:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    iget-object v6, v3, Landroidx/recyclerview/widget/s;->j:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    iget-object v8, v3, Landroidx/recyclerview/widget/s;->k:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    iget-object v10, v3, Landroidx/recyclerview/widget/s;->i:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    if-eqz v11, :cond_0

    .line 45
    .line 46
    if-eqz v9, :cond_0

    .line 47
    .line 48
    goto/16 :goto_6

    .line 49
    .line 50
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    iget-wide v14, v3, Landroidx/recyclerview/widget/t1;->d:J

    .line 59
    .line 60
    if-eqz v13, :cond_1

    .line 61
    .line 62
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v13

    .line 66
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 67
    .line 68
    iget-object v1, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    move-object/from16 v16, v12

    .line 75
    .line 76
    iget-object v12, v3, Landroidx/recyclerview/widget/s;->q:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    const/4 v14, 0x0

    .line 86
    invoke-virtual {v12, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    new-instance v14, Landroidx/recyclerview/widget/l;

    .line 91
    .line 92
    invoke-direct {v14, v1, v0, v3, v13}, Landroidx/recyclerview/widget/l;-><init>(Landroid/view/View;Landroid/view/ViewPropertyAnimator;Landroidx/recyclerview/widget/s;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v12, v14}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 100
    .line 101
    .line 102
    move-object/from16 v0, p0

    .line 103
    .line 104
    move-object/from16 v12, v16

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 108
    .line 109
    .line 110
    if-nez v7, :cond_3

    .line 111
    .line 112
    new-instance v0, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 118
    .line 119
    .line 120
    iget-object v1, v3, Landroidx/recyclerview/widget/s;->m:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 126
    .line 127
    .line 128
    new-instance v1, Landroidx/recyclerview/widget/j;

    .line 129
    .line 130
    invoke-direct {v1, v3, v0}, Landroidx/recyclerview/widget/j;-><init>(Landroidx/recyclerview/widget/s;Ljava/util/ArrayList;)V

    .line 131
    .line 132
    .line 133
    if-nez v5, :cond_2

    .line 134
    .line 135
    const/4 v4, 0x0

    .line 136
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroidx/recyclerview/widget/r;

    .line 141
    .line 142
    iget-object v0, v0, Landroidx/recyclerview/widget/r;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 143
    .line 144
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 145
    .line 146
    sget-object v4, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 147
    .line 148
    invoke-static {v0, v1, v14, v15}, Lx0/j0;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/j;->run()V

    .line 153
    .line 154
    .line 155
    :cond_3
    :goto_1
    if-nez v9, :cond_5

    .line 156
    .line 157
    new-instance v0, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 163
    .line 164
    .line 165
    iget-object v1, v3, Landroidx/recyclerview/widget/s;->n:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 171
    .line 172
    .line 173
    new-instance v1, Ly7/b;

    .line 174
    .line 175
    const/4 v4, 0x2

    .line 176
    const/4 v6, 0x0

    .line 177
    invoke-direct {v1, v4, v3, v0, v6}, Ly7/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 178
    .line 179
    .line 180
    if-nez v5, :cond_4

    .line 181
    .line 182
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Landroidx/recyclerview/widget/q;

    .line 187
    .line 188
    iget-object v0, v0, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 189
    .line 190
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 191
    .line 192
    sget-object v4, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 193
    .line 194
    invoke-static {v0, v1, v14, v15}, Lx0/j0;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_4
    invoke-virtual {v1}, Ly7/b;->run()V

    .line 199
    .line 200
    .line 201
    :cond_5
    :goto_2
    if-nez v11, :cond_b

    .line 202
    .line 203
    new-instance v0, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 209
    .line 210
    .line 211
    iget-object v1, v3, Landroidx/recyclerview/widget/s;->l:Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 217
    .line 218
    .line 219
    new-instance v1, Landroidx/recyclerview/widget/k;

    .line 220
    .line 221
    invoke-direct {v1, v3, v0}, Landroidx/recyclerview/widget/k;-><init>(Landroidx/recyclerview/widget/s;Ljava/util/ArrayList;)V

    .line 222
    .line 223
    .line 224
    if-eqz v5, :cond_7

    .line 225
    .line 226
    if-eqz v7, :cond_7

    .line 227
    .line 228
    if-nez v9, :cond_6

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_6
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k;->run()V

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_7
    :goto_3
    const-wide/16 v10, 0x0

    .line 236
    .line 237
    if-nez v5, :cond_8

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_8
    move-wide v14, v10

    .line 241
    :goto_4
    if-nez v7, :cond_9

    .line 242
    .line 243
    iget-wide v4, v3, Landroidx/recyclerview/widget/t1;->e:J

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_9
    move-wide v4, v10

    .line 247
    :goto_5
    if-nez v9, :cond_a

    .line 248
    .line 249
    iget-wide v10, v3, Landroidx/recyclerview/widget/t1;->f:J

    .line 250
    .line 251
    :cond_a
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 252
    .line 253
    .line 254
    move-result-wide v3

    .line 255
    add-long/2addr v3, v14

    .line 256
    const/4 v5, 0x0

    .line 257
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 262
    .line 263
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 264
    .line 265
    sget-object v5, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 266
    .line 267
    invoke-static {v0, v1, v3, v4}, Lx0/j0;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 268
    .line 269
    .line 270
    :cond_b
    :goto_6
    const/4 v0, 0x0

    .line 271
    iput-boolean v0, v2, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 272
    .line 273
    return-void

    .line 274
    :pswitch_0
    iget-boolean v0, v2, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 275
    .line 276
    if-eqz v0, :cond_f

    .line 277
    .line 278
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_c

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_c
    iget-boolean v0, v2, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 286
    .line 287
    if-nez v0, :cond_d

    .line 288
    .line 289
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 290
    .line 291
    .line 292
    goto :goto_7

    .line 293
    :cond_d
    iget-boolean v0, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 294
    .line 295
    if-eqz v0, :cond_e

    .line 296
    .line 297
    const/4 v0, 0x1

    .line 298
    iput-boolean v0, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_e
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 302
    .line 303
    .line 304
    :cond_f
    :goto_7
    return-void

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
