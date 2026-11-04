.class public Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic L:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final D:Lx9/t0;

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Lx9/s2;

.field public G:Lz7/s;

.field public H:Lz7/o;

.field public I:Lz7/o;

.field public K:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx9/t0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lx9/t0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->D:Lx9/t0;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->K:Landroid/view/View;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e003f

    return v0
.end method

.method public final u()V
    .locals 6

    .line 1
    const v0, 0x7f0b0500

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 11
    .line 12
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 13
    .line 14
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v1, v2, v3, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 24
    .line 25
    const v1, 0x7f0801d1

    .line 26
    .line 27
    .line 28
    const-string v2, "\u8fd4\u56de"

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-direct {v0, v1, v2, v3}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->D:Lx9/t0;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    const v4, 0x7f080234

    .line 43
    .line 44
    .line 45
    const-string v5, "\u5f00\u542f\u65e5\u5fd7\u6620\u5c04"

    .line 46
    .line 47
    invoke-direct {v0, v4, v5, v2}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 54
    .line 55
    const v2, 0x7f08008c

    .line 56
    .line 57
    .line 58
    const-string v4, "\u6dfb\u52a0\u65e5\u5fd7"

    .line 59
    .line 60
    invoke-direct {v0, v2, v4, v3}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 67
    .line 68
    const v2, 0x7f080253

    .line 69
    .line 70
    .line 71
    const-string v4, "\u8f66\u95e8"

    .line 72
    .line 73
    invoke-direct {v0, v2, v4, v3}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 80
    .line 81
    const v2, 0x7f080296

    .line 82
    .line 83
    .line 84
    const-string v4, "\u8bed\u97f3"

    .line 85
    .line 86
    invoke-direct {v0, v2, v4, v3}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 93
    .line 94
    const v2, 0x7f080270

    .line 95
    .line 96
    .line 97
    const-string v4, "\u65b9\u6848"

    .line 98
    .line 99
    invoke-direct {v0, v2, v4, v3}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 106
    .line 107
    const v2, 0x7f08024a

    .line 108
    .line 109
    .line 110
    const-string v4, "\u6e05\u7a7a"

    .line 111
    .line 112
    invoke-direct {v0, v2, v4, v3}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 119
    .line 120
    const v2, 0x7f0801f8

    .line 121
    .line 122
    .line 123
    const-string v4, "\u8bbe\u7f6e"

    .line 124
    .line 125
    invoke-direct {v0, v2, v4, v3}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 132
    .line 133
    const v2, 0x7f080274

    .line 134
    .line 135
    .line 136
    const-string v4, "\u8bf4\u660e"

    .line 137
    .line 138
    invoke-direct {v0, v2, v4, v3}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 147
    .line 148
    .line 149
    new-instance v0, Lua/k3;

    .line 150
    .line 151
    const/4 v2, 0x0

    .line 152
    invoke-direct {v0, p0, v2}, Lua/k3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;I)V

    .line 153
    .line 154
    .line 155
    iput-object v0, v1, Lc6/g;->e:Lc6/e;

    .line 156
    .line 157
    const v0, 0x7f0b04f1

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 165
    .line 166
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 167
    .line 168
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 169
    .line 170
    const/4 v2, 0x3

    .line 171
    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 175
    .line 176
    .line 177
    new-instance v0, Lx9/s2;

    .line 178
    .line 179
    invoke-direct {v0}, Lx9/s2;-><init>()V

    .line 180
    .line 181
    .line 182
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->F:Lx9/s2;

    .line 183
    .line 184
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 185
    .line 186
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->F:Lx9/s2;

    .line 190
    .line 191
    new-instance v1, Lua/k3;

    .line 192
    .line 193
    const/4 v2, 0x1

    .line 194
    invoke-direct {v1, p0, v2}, Lua/k3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;I)V

    .line 195
    .line 196
    .line 197
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->z()V

    .line 200
    .line 201
    .line 202
    new-instance v0, Lua/k3;

    .line 203
    .line 204
    const/4 v1, 0x2

    .line 205
    invoke-direct {v0, p0, v1}, Lua/k3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;I)V

    .line 206
    .line 207
    .line 208
    new-instance v1, Lmc/c;

    .line 209
    .line 210
    const/4 v2, 0x0

    .line 211
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 215
    .line 216
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    new-instance v1, Lha/l2;

    .line 229
    .line 230
    const/16 v2, 0x1c

    .line 231
    .line 232
    invoke-direct {v1, v2}, Lha/l2;-><init>(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 236
    .line 237
    .line 238
    return-void
.end method

.method public final x(I)V
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    if-lt p1, v0, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->F:Lx9/s2;

    .line 5
    .line 6
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lt p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lha/e9;

    .line 14
    .line 15
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->G:Lz7/s;

    .line 18
    .line 19
    new-instance v6, Ld3/g;

    .line 20
    .line 21
    const/16 v1, 0xc

    .line 22
    .line 23
    invoke-direct {v6, p1, v1, p0}, Ld3/g;-><init>(IILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    move-object v1, v0

    .line 27
    move-object v2, p0

    .line 28
    move v5, p1

    .line 29
    invoke-direct/range {v1 .. v6}, Lha/e9;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;Lda/g;Lz7/s;ILd3/g;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    :goto_0
    const-string p1, "\u51fa\u9519\uff1a\u79bb\u8c31\u7684\u9519\u8bef"

    .line 37
    .line 38
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final y(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->F:Lx9/s2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "\u6ca1\u6709\u65e5\u5fd7\u65b9\u6848"

    .line 10
    .line 11
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 16
    .line 17
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const-string p1, "\u6ca1\u6709\u5185\u90e8\u5b58\u50a8\uff0c\u65e0\u6cd5\u4fdd\u5b58"

    .line 28
    .line 29
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 34
    .line 35
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v2, "Download"

    .line 40
    .line 41
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    .line 58
    .line 59
    const-string v0, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25"

    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :catch_0
    const-string p1, "\u521b\u5efaDownload\u76ee\u5f55\u5931\u8d25"

    .line 66
    .line 67
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 72
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v3, "/\u65e5\u5fd7\u65b9\u6848"

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v3, ".json"

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    add-int/lit8 v0, v0, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    new-instance v11, Lha/z6;

    .line 111
    .line 112
    const-string v2, "\u65e5\u5fd7\u65b9\u6848"

    .line 113
    .line 114
    invoke-static {v0, v2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    new-instance v10, Lcom/bumptech/glide/manager/s;

    .line 119
    .line 120
    const/4 v0, 0x6

    .line 121
    invoke-direct {v10, v0, p0, v1, p1}, Lcom/bumptech/glide/manager/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 122
    .line 123
    .line 124
    const-string v8, "\u786e\u5b9a"

    .line 125
    .line 126
    const-string v9, "\u53d6\u6d88"

    .line 127
    .line 128
    const-string v5, "\u4fdd\u5b58\u6587\u4ef6\u540d"

    .line 129
    .line 130
    const-string v7, "\u8bf7\u8f93\u5165\u6587\u4ef6\u540d"

    .line 131
    .line 132
    move-object v2, v11

    .line 133
    move-object v3, p0

    .line 134
    move-object v4, p0

    .line 135
    invoke-direct/range {v2 .. v10}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v11}, Lha/a4;->show()V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public final z()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->D:Lx9/t0;

    .line 2
    .line 3
    const-string v1, "isOn"

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->F:Lx9/s2;

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lc6/g;->E(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 16
    .line 17
    new-instance v3, Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v4, "KeyMapLogcatSuper.json"

    .line 28
    .line 29
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v3}, Lq4/a;->I(Ljava/io/File;)Lz7/s;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->G:Lz7/s;

    .line 37
    .line 38
    const-string v3, "keys"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x0

    .line 45
    :goto_0
    iget-object v4, v2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-ge v3, v4, :cond_0

    .line 52
    .line 53
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->F:Lx9/s2;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Lz7/o;->l(I)Lz7/p;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v4, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    goto :goto_2

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->G:Lz7/s;

    .line 72
    .line 73
    iget-object v2, v2, Lz7/s;->a:Lb8/n;

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_1

    .line 80
    .line 81
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->G:Lz7/s;

    .line 82
    .line 83
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {v2, v1, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    const/4 v2, 0x1

    .line 89
    invoke-virtual {v0, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 94
    .line 95
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->G:Lz7/s;

    .line 96
    .line 97
    invoke-virtual {v4, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    const v1, 0x7f080234

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    const v1, 0x7f080237

    .line 112
    .line 113
    .line 114
    :goto_1
    iput v1, v3, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;->resId:I

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/m1;->e(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    .line 122
    .line 123
    :goto_3
    return-void
.end method
