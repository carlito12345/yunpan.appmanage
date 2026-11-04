.class public final Landroidx/viewpager2/adapter/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/viewpager2/adapter/c;

.field public b:Landroidx/viewpager2/adapter/d;

.field public c:Landroidx/lifecycle/r;

.field public d:Landroidx/viewpager2/widget/ViewPager2;

.field public e:J

.field public final synthetic f:Landroidx/viewpager2/adapter/f;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/f;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/viewpager2/adapter/e;->f:Landroidx/viewpager2/adapter/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, Landroidx/viewpager2/adapter/e;->e:J

    .line 9
    .line 10
    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Expected ViewPager2 instance. Got: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method


# virtual methods
.method public final b(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/adapter/e;->f:Landroidx/viewpager2/adapter/f;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/viewpager2/adapter/f;->e:Landroidx/fragment/app/e1;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/d1;->K()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/adapter/e;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v1, v0, Landroidx/viewpager2/adapter/f;->f:La0/k;

    .line 22
    .line 23
    invoke-virtual {v1}, La0/k;->j()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move-object v2, v0

    .line 31
    check-cast v2, Lx9/o;

    .line 32
    .line 33
    iget-object v2, v2, Lx9/o;->m:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_3

    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    :cond_3
    iget-object v3, p0, Landroidx/viewpager2/adapter/e;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 43
    .line 44
    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-lt v3, v2, :cond_4

    .line 53
    .line 54
    return-void

    .line 55
    :cond_4
    int-to-long v2, v3

    .line 56
    iget-wide v4, p0, Landroidx/viewpager2/adapter/e;->e:J

    .line 57
    .line 58
    cmp-long v6, v2, v4

    .line 59
    .line 60
    if-nez v6, :cond_5

    .line 61
    .line 62
    if-nez p1, :cond_5

    .line 63
    .line 64
    return-void

    .line 65
    :cond_5
    invoke-virtual {v1, v2, v3}, La0/k;->d(J)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 70
    .line 71
    if-eqz p1, :cond_e

    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_6

    .line 78
    .line 79
    goto/16 :goto_7

    .line 80
    .line 81
    :cond_6
    iput-wide v2, p0, Landroidx/viewpager2/adapter/e;->e:J

    .line 82
    .line 83
    iget-object p1, v0, Landroidx/viewpager2/adapter/f;->e:Landroidx/fragment/app/e1;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance v2, Landroidx/fragment/app/a;

    .line 89
    .line 90
    invoke-direct {v2, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/d1;)V

    .line 91
    .line 92
    .line 93
    new-instance p1, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    const/4 v4, 0x0

    .line 100
    const/4 v5, 0x0

    .line 101
    :goto_1
    invoke-virtual {v1}, La0/k;->j()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-ge v5, v6, :cond_b

    .line 106
    .line 107
    invoke-virtual {v1, v5}, La0/k;->g(I)J

    .line 108
    .line 109
    .line 110
    move-result-wide v6

    .line 111
    invoke-virtual {v1, v5}, La0/k;->k(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    check-cast v8, Landroidx/fragment/app/Fragment;

    .line 116
    .line 117
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    if-nez v9, :cond_7

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_7
    iget-wide v9, p0, Landroidx/viewpager2/adapter/e;->e:J

    .line 125
    .line 126
    cmp-long v11, v6, v9

    .line 127
    .line 128
    if-eqz v11, :cond_9

    .line 129
    .line 130
    sget-object v9, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/n;

    .line 131
    .line 132
    invoke-virtual {v2, v8, v9}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/n;)V

    .line 133
    .line 134
    .line 135
    iget-object v9, v0, Landroidx/viewpager2/adapter/f;->j:Landroidx/viewpager2/adapter/b;

    .line 136
    .line 137
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    new-instance v10, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .line 144
    .line 145
    iget-object v9, v9, Landroidx/viewpager2/adapter/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 146
    .line 147
    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    if-nez v11, :cond_8

    .line 156
    .line 157
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_8
    invoke-static {v9}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    throw p1

    .line 166
    :cond_9
    move-object v4, v8

    .line 167
    :goto_2
    iget-wide v9, p0, Landroidx/viewpager2/adapter/e;->e:J

    .line 168
    .line 169
    cmp-long v11, v6, v9

    .line 170
    .line 171
    if-nez v11, :cond_a

    .line 172
    .line 173
    const/4 v6, 0x1

    .line 174
    goto :goto_3

    .line 175
    :cond_a
    const/4 v6, 0x0

    .line 176
    :goto_3
    invoke-virtual {v8, v6}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 177
    .line 178
    .line 179
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_b
    if-eqz v4, :cond_d

    .line 183
    .line 184
    sget-object v1, Landroidx/lifecycle/n;->e:Landroidx/lifecycle/n;

    .line 185
    .line 186
    invoke-virtual {v2, v4, v1}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/n;)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Landroidx/viewpager2/adapter/f;->j:Landroidx/viewpager2/adapter/b;

    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    new-instance v3, Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .line 198
    .line 199
    iget-object v1, v1, Landroidx/viewpager2/adapter/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    if-nez v4, :cond_c

    .line 210
    .line 211
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_c
    invoke-static {v1}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    throw p1

    .line 220
    :cond_d
    :goto_5
    iget-object v1, v2, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-nez v1, :cond_e

    .line 227
    .line 228
    invoke-virtual {v2}, Landroidx/fragment/app/a;->e()V

    .line 229
    .line 230
    .line 231
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_e

    .line 243
    .line 244
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    check-cast v1, Ljava/util/List;

    .line 249
    .line 250
    iget-object v2, v0, Landroidx/viewpager2/adapter/f;->j:Landroidx/viewpager2/adapter/b;

    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    invoke-static {v1}, Landroidx/viewpager2/adapter/b;->a(Ljava/util/List;)V

    .line 256
    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_e
    :goto_7
    return-void
.end method
