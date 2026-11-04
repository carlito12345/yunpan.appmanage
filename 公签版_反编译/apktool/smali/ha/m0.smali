.class public final Lha/m0;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/EditText;

.field public i:Landroidx/recyclerview/widget/RecyclerView;

.field public final j:Lx9/t0;

.field public k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public l:Lx9/t2;

.field public final m:Lz7/s;

.field public final n:Lua/q3;

.field public p:Z


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;Lz7/s;Lua/q3;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0082

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lx9/t0;

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-direct {p1, p2}, Lx9/t0;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lha/m0;->j:Lx9/t0;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lha/m0;->p:Z

    .line 17
    .line 18
    iput-object p4, p0, Lha/m0;->n:Lua/q3;

    .line 19
    .line 20
    iput-object p3, p0, Lha/m0;->m:Lz7/s;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    const-string v0, "longClick"

    .line 2
    .line 3
    const-string v1, "doubleClick"

    .line 4
    .line 5
    iget-object v2, p0, Lha/m0;->m:Lz7/s;

    .line 6
    .line 7
    iget-object v3, p0, Lha/m0;->l:Lx9/t2;

    .line 8
    .line 9
    new-instance v4, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v4}, Lc6/g;->E(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    const-string v3, "click"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v4, v3, Lz7/o;->a:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    :goto_0
    iget-object v6, v3, Lz7/o;->a:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-ge v4, v6, :cond_0

    .line 40
    .line 41
    iget-object v6, p0, Lha/m0;->l:Lx9/t2;

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Lz7/o;->l(I)Lz7/p;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v7}, Lz7/p;->g()Lz7/s;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {v6, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v3, v2, Lz7/s;->a:Lb8/n;

    .line 58
    .line 59
    invoke-virtual {v3, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v3, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_1

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    :goto_1
    iget-object v4, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-ge v3, v4, :cond_1

    .line 85
    .line 86
    iget-object v4, p0, Lha/m0;->l:Lx9/t2;

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Lz7/o;->l(I)Lz7/p;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v4, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    iget-object v1, v2, Lz7/s;->a:Lb8/n;

    .line 103
    .line 104
    invoke-virtual {v1, v0}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    invoke-virtual {v2, v0}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v1, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_2

    .line 121
    .line 122
    :goto_2
    iget-object v1, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-ge v5, v1, :cond_2

    .line 129
    .line 130
    iget-object v1, p0, Lha/m0;->l:Lx9/t2;

    .line 131
    .line 132
    invoke-virtual {v0, v5}, Lz7/o;->l(I)Lz7/p;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    add-int/lit8 v5, v5, 0x1

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :catch_0
    :cond_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lha/m0;->m:Lz7/s;

    .line 5
    .line 6
    const v0, 0x7f0b0523

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object v0, p0, Lha/m0;->g:Landroid/widget/TextView;

    .line 16
    .line 17
    const v0, 0x7f0b0443

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/EditText;

    .line 25
    .line 26
    iput-object v0, p0, Lha/m0;->h:Landroid/widget/EditText;

    .line 27
    .line 28
    const v0, 0x7f0b0500

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    iput-object v0, p0, Lha/m0;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 40
    .line 41
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-direct {v1, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 51
    .line 52
    const v1, 0x7f0801d1

    .line 53
    .line 54
    .line 55
    const-string v4, "\u5f00\u542f"

    .line 56
    .line 57
    const/4 v5, 0x2

    .line 58
    invoke-direct {v0, v1, v4, v5}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lha/m0;->j:Lx9/t0;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 67
    .line 68
    const-string v4, "+\u5355\u51fb\u64cd\u4f5c"

    .line 69
    .line 70
    const/4 v5, 0x3

    .line 71
    invoke-direct {v0, v3, v4, v5}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 78
    .line 79
    const-string v4, "+\u53cc\u51fb\u64cd\u4f5c"

    .line 80
    .line 81
    invoke-direct {v0, v3, v4, v5}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 88
    .line 89
    const-string v4, "+\u957f\u6309\u64cd\u4f5c"

    .line 90
    .line 91
    invoke-direct {v0, v3, v4, v5}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 98
    .line 99
    const-string v4, "\u4fdd\u5b58"

    .line 100
    .line 101
    invoke-direct {v0, v3, v4, v5}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 108
    .line 109
    const-string v4, "\u5220\u9664"

    .line 110
    .line 111
    invoke-direct {v0, v3, v4, v5}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lha/m0;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lha/m0;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 125
    .line 126
    .line 127
    new-instance v0, Lha/k0;

    .line 128
    .line 129
    const/4 v4, 0x0

    .line 130
    invoke-direct {v0, p0, v4}, Lha/k0;-><init>(Lha/m0;I)V

    .line 131
    .line 132
    .line 133
    iput-object v0, v1, Lc6/g;->e:Lc6/e;

    .line 134
    .line 135
    const v0, 0x7f0b04f1

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 143
    .line 144
    iput-object v0, p0, Lha/m0;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 145
    .line 146
    new-instance v4, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 147
    .line 148
    const/4 v6, 0x1

    .line 149
    invoke-direct {v4, v2, v6, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 153
    .line 154
    .line 155
    new-instance v0, Lx9/t2;

    .line 156
    .line 157
    invoke-direct {v0}, Lx9/t2;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v0, p0, Lha/m0;->l:Lx9/t2;

    .line 161
    .line 162
    iget-object v2, p0, Lha/m0;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 163
    .line 164
    invoke-virtual {v2, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 165
    .line 166
    .line 167
    new-instance v0, Ld6/a;

    .line 168
    .line 169
    invoke-direct {v0}, Ld6/a;-><init>()V

    .line 170
    .line 171
    .line 172
    iput v5, v0, Ld6/a;->h:I

    .line 173
    .line 174
    iput-boolean v3, v0, Ld6/a;->g:Z

    .line 175
    .line 176
    iget-object v2, p0, Lha/m0;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 177
    .line 178
    invoke-virtual {v0, v2}, Ld6/a;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 179
    .line 180
    .line 181
    iget-object v2, p0, Lha/m0;->l:Lx9/t2;

    .line 182
    .line 183
    invoke-virtual {v0, v2}, Ld6/a;->g(Le6/a;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lha/m0;->l:Lx9/t2;

    .line 187
    .line 188
    new-instance v2, Lha/k0;

    .line 189
    .line 190
    const/4 v4, 0x1

    .line 191
    invoke-direct {v2, p0, v4}, Lha/k0;-><init>(Lha/m0;I)V

    .line 192
    .line 193
    .line 194
    iput-object v2, v0, Lc6/g;->e:Lc6/e;

    .line 195
    .line 196
    :try_start_0
    iget-object v0, p0, Lha/m0;->g:Landroid/widget/TextView;

    .line 197
    .line 198
    const-string v2, "eventName"

    .line 199
    .line 200
    invoke-virtual {p1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lha/m0;->h:Landroid/widget/EditText;

    .line 212
    .line 213
    const-string v2, "name"

    .line 214
    .line 215
    invoke-virtual {p1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    const-string v0, "isOpen"

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    iput-boolean p1, p0, Lha/m0;->p:Z

    .line 237
    .line 238
    invoke-virtual {p0}, Lha/m0;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .line 240
    .line 241
    goto :goto_0

    .line 242
    :catch_0
    nop

    .line 243
    :goto_0
    invoke-virtual {v1, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    check-cast p1, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 248
    .line 249
    iget-boolean v0, p0, Lha/m0;->p:Z

    .line 250
    .line 251
    if-eqz v0, :cond_0

    .line 252
    .line 253
    const v0, 0x7f080234

    .line 254
    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_0
    const v0, 0x7f080237

    .line 258
    .line 259
    .line 260
    :goto_1
    iput v0, p1, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;->resId:I

    .line 261
    .line 262
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 263
    .line 264
    .line 265
    return-void
.end method
