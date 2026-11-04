.class public final Lha/s;
.super Lha/a4;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final g:Lha/o;

.field public h:Landroid/widget/TextView;

.field public i:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public n:Lx9/t2;

.field public final p:Lz7/s;

.field public q:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lz7/s;Lha/o;)V
    .locals 1

    .line 1
    const v0, 0x7f0e007b

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lha/s;->q:Z

    .line 9
    .line 10
    iput-object p3, p0, Lha/s;->p:Lz7/s;

    .line 11
    .line 12
    iput-object p4, p0, Lha/s;->g:Lha/o;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x7f0b034a

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    new-instance p1, Lha/q;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lha/q;-><init>(Lha/s;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 19
    .line 20
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v1, v2, v2, p1}, Lha/t8;->a(Landroid/app/Activity;Landroid/content/Context;IZLea/e;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const v0, 0x7f0b03b1

    .line 32
    .line 33
    .line 34
    if-ne p1, v0, :cond_3

    .line 35
    .line 36
    new-instance p1, Lz7/o;

    .line 37
    .line 38
    invoke-direct {p1}, Lz7/o;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lha/s;->n:Lx9/t2;

    .line 42
    .line 43
    invoke-virtual {v0}, Lc6/g;->v()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lz7/s;

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lz7/o;->k(Lz7/p;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lha/s;->p:Lz7/s;

    .line 68
    .line 69
    const-string v1, "maps"

    .line 70
    .line 71
    invoke-virtual {v0, v1, p1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 72
    .line 73
    .line 74
    iget-boolean p1, p0, Lha/s;->q:Z

    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v1, "isOpen"

    .line 81
    .line 82
    invoke-virtual {v0, v1, p1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lha/s;->g:Lha/o;

    .line 86
    .line 87
    const/4 v0, 0x1

    .line 88
    invoke-virtual {p1, v0}, Lha/o;->f(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lha/s;->p:Lz7/s;

    .line 5
    .line 6
    const v0, 0x7f0b0568

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    iput-object v0, p0, Lha/s;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    const v0, 0x7f0b0569

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/ImageView;

    .line 25
    .line 26
    iput-object v0, p0, Lha/s;->j:Landroid/widget/ImageView;

    .line 27
    .line 28
    iget-object v0, p0, Lha/s;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    .line 30
    new-instance v1, Lcom/google/android/material/datepicker/l;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-direct {v1, p0, v2}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0b0523

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object v0, p0, Lha/s;->h:Landroid/widget/TextView;

    .line 49
    .line 50
    const v0, 0x7f0b034a

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v0, p0, Lha/s;->k:Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 62
    .line 63
    .line 64
    const v0, 0x7f0b03b1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/TextView;

    .line 72
    .line 73
    iput-object v0, p0, Lha/s;->l:Landroid/widget/TextView;

    .line 74
    .line 75
    iget-object v0, p0, Lha/s;->k:Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lha/s;->l:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    const v0, 0x7f0b04f1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 93
    .line 94
    iput-object v0, p0, Lha/s;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 95
    .line 96
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 97
    .line 98
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 99
    .line 100
    const/4 v3, 0x1

    .line 101
    const/4 v4, 0x0

    .line 102
    invoke-direct {v1, v2, v3, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 106
    .line 107
    .line 108
    new-instance v0, Lx9/t2;

    .line 109
    .line 110
    invoke-direct {v0}, Lx9/t2;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Lha/s;->n:Lx9/t2;

    .line 114
    .line 115
    const-string v1, "\u6620\u5c04\uff1a"

    .line 116
    .line 117
    iput-object v1, v0, Lx9/t2;->h:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v1, p0, Lha/s;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 120
    .line 121
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Ld6/a;

    .line 125
    .line 126
    invoke-direct {v0}, Ld6/a;-><init>()V

    .line 127
    .line 128
    .line 129
    const/4 v1, 0x3

    .line 130
    iput v1, v0, Ld6/a;->h:I

    .line 131
    .line 132
    iput-boolean v4, v0, Ld6/a;->g:Z

    .line 133
    .line 134
    iget-object v1, p0, Lha/s;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ld6/a;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lha/s;->n:Lx9/t2;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ld6/a;->g(Le6/a;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lha/s;->n:Lx9/t2;

    .line 145
    .line 146
    new-instance v1, Lha/q;

    .line 147
    .line 148
    invoke-direct {v1, p0}, Lha/q;-><init>(Lha/s;)V

    .line 149
    .line 150
    .line 151
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 152
    .line 153
    new-instance v1, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 159
    .line 160
    .line 161
    :try_start_0
    iget-object v0, p0, Lha/s;->h:Landroid/widget/TextView;

    .line 162
    .line 163
    const-string v1, "name"

    .line 164
    .line 165
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    const-string v0, "isOpen"

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    iput-boolean v0, p0, Lha/s;->q:Z

    .line 187
    .line 188
    iget-object v1, p0, Lha/s;->j:Landroid/widget/ImageView;

    .line 189
    .line 190
    if-eqz v0, :cond_0

    .line 191
    .line 192
    const v0, 0x7f080234

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_0
    const v0, 0x7f080237

    .line 197
    .line 198
    .line 199
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    .line 201
    .line 202
    const-string v0, "maps"

    .line 203
    .line 204
    invoke-virtual {p1, v0}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    iget-object v0, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-nez v0, :cond_1

    .line 215
    .line 216
    :goto_1
    iget-object v0, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-ge v4, v0, :cond_1

    .line 223
    .line 224
    iget-object v0, p0, Lha/s;->n:Lx9/t2;

    .line 225
    .line 226
    new-instance v1, Lz7/m;

    .line 227
    .line 228
    invoke-direct {v1}, Lz7/m;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v4}, Lz7/o;->l(I)Lz7/p;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Lz7/m;->b(Lz7/p;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Lz7/s;

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .line 247
    .line 248
    add-int/lit8 v4, v4, 0x1

    .line 249
    .line 250
    goto :goto_1

    .line 251
    :catch_0
    :cond_1
    return-void
.end method
