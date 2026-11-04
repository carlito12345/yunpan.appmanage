.class public final Lha/b0;
.super Lha/a4;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final g:Lha/e8;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public l:Landroid/widget/TextView;

.field public m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public n:Landroid/widget/TextView;

.field public p:Lx9/t2;

.field public q:Lx9/t2;

.field public final r:Lz7/s;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lha/e8;)V
    .locals 1

    .line 1
    const v0, 0x7f0e007e

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lz7/s;

    .line 8
    .line 9
    invoke-direct {p1}, Lz7/s;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lha/b0;->r:Lz7/s;

    .line 13
    .line 14
    iput-object p3, p0, Lha/b0;->g:Lha/e8;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 8
    .line 9
    const v3, 0x7f0b0350

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-ne v0, v3, :cond_0

    .line 14
    .line 15
    new-instance p1, Lha/q2;

    .line 16
    .line 17
    new-instance v0, Lha/z;

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    invoke-direct {v0, p0, v3}, Lha/z;-><init>(Lha/b0;I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v2, v1, v4, v0}, Lha/q2;-><init>(Landroid/app/Activity;Landroid/content/Context;ILha/p2;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const v3, 0x7f0b031c

    .line 36
    .line 37
    .line 38
    if-eq v0, v3, :cond_7

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const v3, 0x7f0b031d

    .line 45
    .line 46
    .line 47
    if-ne v0, v3, :cond_1

    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const v0, 0x7f0b03f3

    .line 56
    .line 57
    .line 58
    if-ne p1, v0, :cond_8

    .line 59
    .line 60
    iget-object p1, p0, Lha/b0;->r:Lz7/s;

    .line 61
    .line 62
    iget-object v0, p1, Lz7/s;->a:Lb8/n;

    .line 63
    .line 64
    const-string v1, "app_name"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    const-string p1, "\u8bf7\u9009\u62e9\u5e94\u7528"

    .line 73
    .line 74
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    iget-object v0, p0, Lha/b0;->p:Lx9/t2;

    .line 79
    .line 80
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    iget-object v0, p0, Lha/b0;->q:Lx9/t2;

    .line 87
    .line 88
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    new-instance v0, Lz7/o;

    .line 96
    .line 97
    invoke-direct {v0}, Lz7/o;-><init>()V

    .line 98
    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    :goto_0
    iget-object v3, p0, Lha/b0;->p:Lx9/t2;

    .line 102
    .line 103
    invoke-virtual {v3}, Lc6/g;->b()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-ge v2, v3, :cond_4

    .line 108
    .line 109
    iget-object v3, p0, Lha/b0;->p:Lx9/t2;

    .line 110
    .line 111
    invoke-virtual {v3, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Lz7/p;

    .line 116
    .line 117
    invoke-virtual {v0, v3}, Lz7/o;->k(Lz7/p;)V

    .line 118
    .line 119
    .line 120
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    const-string v2, "maps1"

    .line 124
    .line 125
    invoke-virtual {p1, v2, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 126
    .line 127
    .line 128
    new-instance v0, Lz7/o;

    .line 129
    .line 130
    invoke-direct {v0}, Lz7/o;-><init>()V

    .line 131
    .line 132
    .line 133
    :goto_1
    iget-object v2, p0, Lha/b0;->q:Lx9/t2;

    .line 134
    .line 135
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-ge v4, v2, :cond_5

    .line 140
    .line 141
    iget-object v2, p0, Lha/b0;->q:Lx9/t2;

    .line 142
    .line 143
    invoke-virtual {v2, v4}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Lz7/p;

    .line 148
    .line 149
    invoke-virtual {v0, v2}, Lz7/o;->k(Lz7/p;)V

    .line 150
    .line 151
    .line 152
    add-int/lit8 v4, v4, 0x1

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_5
    const-string v2, "maps2"

    .line 156
    .line 157
    invoke-virtual {p1, v2, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v2, "\u5982\u679c\u5f53\u524d\u5e94\u7528\uff1a"

    .line 163
    .line 164
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const-string v1, "name"

    .line 183
    .line 184
    invoke-virtual {p1, v1, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lha/b0;->g:Lha/e8;

    .line 188
    .line 189
    invoke-virtual {v0, p1}, Lha/e8;->k(Lz7/s;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_6
    :goto_2
    const-string p1, "\u8bf7\u6dfb\u52a0\u64cd\u4f5c"

    .line 197
    .line 198
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_7
    :goto_3
    new-instance v0, Ld2/w;

    .line 203
    .line 204
    const/4 v3, 0x6

    .line 205
    invoke-direct {v0, p0, v3, p1}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    const/16 p1, -0xa

    .line 209
    .line 210
    invoke-static {v2, v1, p1, v4, v0}, Lha/t8;->a(Landroid/app/Activity;Landroid/content/Context;IZLea/e;)V

    .line 211
    .line 212
    .line 213
    :cond_8
    :goto_4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b0523

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p1, p0, Lha/b0;->h:Landroid/widget/TextView;

    .line 14
    .line 15
    const p1, 0x7f0b0350

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p1, p0, Lha/b0;->i:Landroid/widget/TextView;

    .line 25
    .line 26
    const p1, 0x7f0b031c

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object p1, p0, Lha/b0;->j:Landroid/widget/TextView;

    .line 36
    .line 37
    const p1, 0x7f0b04f2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 45
    .line 46
    iput-object p1, p0, Lha/b0;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 47
    .line 48
    const p1, 0x7f0b031d

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object p1, p0, Lha/b0;->l:Landroid/widget/TextView;

    .line 58
    .line 59
    const p1, 0x7f0b04f3

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 67
    .line 68
    iput-object p1, p0, Lha/b0;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 69
    .line 70
    const p1, 0x7f0b03f3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object p1, p0, Lha/b0;->n:Landroid/widget/TextView;

    .line 80
    .line 81
    iget-object p1, p0, Lha/b0;->i:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lha/b0;->n:Landroid/widget/TextView;

    .line 87
    .line 88
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lha/b0;->j:Landroid/widget/TextView;

    .line 92
    .line 93
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lha/b0;->l:Landroid/widget/TextView;

    .line 97
    .line 98
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lha/b0;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 102
    .line 103
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 104
    .line 105
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 106
    .line 107
    const/4 v2, 0x1

    .line 108
    const/4 v3, 0x0

    .line 109
    invoke-direct {v0, v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 113
    .line 114
    .line 115
    new-instance p1, Lx9/t2;

    .line 116
    .line 117
    invoke-direct {p1}, Lx9/t2;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object p1, p0, Lha/b0;->p:Lx9/t2;

    .line 121
    .line 122
    iget-object v0, p0, Lha/b0;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lha/b0;->p:Lx9/t2;

    .line 128
    .line 129
    new-instance v0, Lha/z;

    .line 130
    .line 131
    const/4 v4, 0x0

    .line 132
    invoke-direct {v0, p0, v4}, Lha/z;-><init>(Lha/b0;I)V

    .line 133
    .line 134
    .line 135
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 136
    .line 137
    iget-object p1, p0, Lha/b0;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 138
    .line 139
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 140
    .line 141
    invoke-direct {v0, v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 145
    .line 146
    .line 147
    new-instance p1, Lx9/t2;

    .line 148
    .line 149
    invoke-direct {p1}, Lx9/t2;-><init>()V

    .line 150
    .line 151
    .line 152
    iput-object p1, p0, Lha/b0;->q:Lx9/t2;

    .line 153
    .line 154
    iget-object v0, p0, Lha/b0;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 155
    .line 156
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lha/b0;->q:Lx9/t2;

    .line 160
    .line 161
    new-instance v0, Lha/z;

    .line 162
    .line 163
    const/4 v1, 0x1

    .line 164
    invoke-direct {v0, p0, v1}, Lha/z;-><init>(Lha/b0;I)V

    .line 165
    .line 166
    .line 167
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 168
    .line 169
    return-void
.end method
