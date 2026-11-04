.class public final Lha/z1;
.super Lha/a4;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public g:Landroid/widget/EditText;

.field public final h:Lea/b;

.field public i:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/TextView;

.field public l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public m:Lx9/t2;

.field public final n:Lz7/s;

.field public p:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lz7/s;Lea/b;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0089

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lha/z1;->p:Z

    .line 9
    .line 10
    iput-object p3, p0, Lha/z1;->n:Lz7/s;

    .line 11
    .line 12
    iput-object p4, p0, Lha/z1;->h:Lea/b;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

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
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    new-instance p1, Lha/x1;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lha/x1;-><init>(Lha/z1;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 20
    .line 21
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v0, v1, v2, v2, p1}, Lha/t8;->a(Landroid/app/Activity;Landroid/content/Context;IZLea/e;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const v1, 0x7f0b03b1

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lha/z1;->h:Lea/b;

    .line 36
    .line 37
    if-ne v0, v1, :cond_5

    .line 38
    .line 39
    iget-object p1, p0, Lha/z1;->g:Landroid/widget/EditText;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    const-string p1, "\u8bf7\u8f93\u5165\u5173\u952e\u5b57"

    .line 60
    .line 61
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    iget-object p1, p0, Lha/z1;->m:Lx9/t2;

    .line 66
    .line 67
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    const-string p1, "\u8bf7\u6dfb\u52a0\u6620\u5c04"

    .line 74
    .line 75
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    iget-boolean p1, p0, Lha/z1;->p:Z

    .line 80
    .line 81
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Lha/z1;->n:Lz7/s;

    .line 86
    .line 87
    const-string v1, "isOpen"

    .line 88
    .line 89
    invoke-virtual {v0, v1, p1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lha/z1;->g:Landroid/widget/EditText;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v1, "name"

    .line 107
    .line 108
    invoke-virtual {v0, v1, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance p1, Lz7/o;

    .line 112
    .line 113
    invoke-direct {p1}, Lz7/o;-><init>()V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lha/z1;->m:Lx9/t2;

    .line 117
    .line 118
    invoke-virtual {v1}, Lc6/g;->v()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_4

    .line 131
    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Lz7/s;

    .line 137
    .line 138
    invoke-virtual {p1, v2}, Lz7/o;->k(Lz7/p;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_4
    const-string v1, "maps"

    .line 143
    .line 144
    invoke-virtual {v0, v1, p1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 145
    .line 146
    .line 147
    const/4 p1, 0x1

    .line 148
    invoke-interface {v3, p1}, Lea/b;->f(Z)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    const v0, 0x7f0b0373

    .line 160
    .line 161
    .line 162
    if-ne p1, v0, :cond_6

    .line 163
    .line 164
    invoke-interface {v3, v2}, Lea/b;->f(Z)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 168
    .line 169
    .line 170
    :cond_6
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
    iget-object p1, p0, Lha/z1;->n:Lz7/s;

    .line 5
    .line 6
    const v0, 0x7f0b0428

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/EditText;

    .line 14
    .line 15
    iput-object v0, p0, Lha/z1;->g:Landroid/widget/EditText;

    .line 16
    .line 17
    const v0, 0x7f0b0568

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    .line 26
    iput-object v0, p0, Lha/z1;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 27
    .line 28
    const v0, 0x7f0b0569

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/ImageView;

    .line 36
    .line 37
    iput-object v0, p0, Lha/z1;->j:Landroid/widget/ImageView;

    .line 38
    .line 39
    iget-object v0, p0, Lha/z1;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    .line 41
    new-instance v1, Lcom/google/android/material/datepicker/l;

    .line 42
    .line 43
    const/4 v2, 0x5

    .line 44
    invoke-direct {v1, p0, v2}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
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
    iput-object v0, p0, Lha/z1;->k:Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lha/z1;->k:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    const v0, 0x7f0b03b1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    const v0, 0x7f0b0373

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    const v0, 0x7f0b04f1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 97
    .line 98
    iput-object v0, p0, Lha/z1;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 99
    .line 100
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 101
    .line 102
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 103
    .line 104
    const/4 v3, 0x1

    .line 105
    const/4 v4, 0x0

    .line 106
    invoke-direct {v1, v2, v3, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Lx9/t2;

    .line 113
    .line 114
    invoke-direct {v0}, Lx9/t2;-><init>()V

    .line 115
    .line 116
    .line 117
    iput-object v0, p0, Lha/z1;->m:Lx9/t2;

    .line 118
    .line 119
    const-string v1, "\u6620\u5c04\uff1a"

    .line 120
    .line 121
    iput-object v1, v0, Lx9/t2;->h:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v1, p0, Lha/z1;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 126
    .line 127
    .line 128
    new-instance v0, Ld6/a;

    .line 129
    .line 130
    invoke-direct {v0}, Ld6/a;-><init>()V

    .line 131
    .line 132
    .line 133
    const/4 v1, 0x3

    .line 134
    iput v1, v0, Ld6/a;->h:I

    .line 135
    .line 136
    iput-boolean v4, v0, Ld6/a;->g:Z

    .line 137
    .line 138
    iget-object v1, p0, Lha/z1;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ld6/a;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lha/z1;->m:Lx9/t2;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ld6/a;->g(Le6/a;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lha/z1;->m:Lx9/t2;

    .line 149
    .line 150
    new-instance v1, Lha/x1;

    .line 151
    .line 152
    invoke-direct {v1, p0}, Lha/x1;-><init>(Lha/z1;)V

    .line 153
    .line 154
    .line 155
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 156
    .line 157
    new-instance v1, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 163
    .line 164
    .line 165
    :try_start_0
    iget-object v0, p0, Lha/z1;->g:Landroid/widget/EditText;

    .line 166
    .line 167
    const-string v1, "name"

    .line 168
    .line 169
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    const-string v0, "isOpen"

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    iput-boolean v0, p0, Lha/z1;->p:Z

    .line 191
    .line 192
    iget-object v1, p0, Lha/z1;->j:Landroid/widget/ImageView;

    .line 193
    .line 194
    if-eqz v0, :cond_0

    .line 195
    .line 196
    const v0, 0x7f080234

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_0
    const v0, 0x7f080237

    .line 201
    .line 202
    .line 203
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    .line 205
    .line 206
    const-string v0, "maps"

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iget-object v0, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-nez v0, :cond_1

    .line 219
    .line 220
    :goto_1
    iget-object v0, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-ge v4, v0, :cond_1

    .line 227
    .line 228
    iget-object v0, p0, Lha/z1;->m:Lx9/t2;

    .line 229
    .line 230
    invoke-virtual {p1, v4}, Lz7/o;->l(I)Lz7/p;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .line 240
    .line 241
    add-int/lit8 v4, v4, 0x1

    .line 242
    .line 243
    goto :goto_1

    .line 244
    :catch_0
    :cond_1
    return-void
.end method
