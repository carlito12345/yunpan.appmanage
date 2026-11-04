.class public final Lha/x7;
.super Lha/a4;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public g:Landroid/widget/TextView;

.field public h:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public p:Lx9/t2;

.field public final q:Lz7/s;

.field public final r:Lha/w7;

.field public s:Z


# direct methods
.method public constructor <init>(Lda/g;Lda/g;Lz7/s;Lha/w7;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00c3

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lha/x7;->s:Z

    .line 9
    .line 10
    iput-object p4, p0, Lha/x7;->r:Lha/w7;

    .line 11
    .line 12
    iput-object p3, p0, Lha/x7;->q:Lz7/s;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/x7;->p:Lx9/t2;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lha/x7;->q:Lz7/s;

    .line 12
    .line 13
    const-string v1, "click"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    iget-object v2, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v1, v2, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Lha/x7;->p:Lx9/t2;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lz7/o;->l(I)Lz7/p;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    :cond_0
    return-void
.end method

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
    new-instance p1, Lha/u7;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lha/u7;-><init>(Lha/x7;)V

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
    iget-object v1, p0, Lha/x7;->r:Lha/w7;

    .line 33
    .line 34
    const v3, 0x7f0b03b1

    .line 35
    .line 36
    .line 37
    if-ne v0, v3, :cond_5

    .line 38
    .line 39
    iget-object p1, p0, Lha/x7;->j:Landroid/widget/EditText;

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
    const-string p1, "\u8bf7\u8f93\u5165\u5907\u6ce8\u540d"

    .line 60
    .line 61
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iget-object p1, p0, Lha/x7;->p:Lx9/t2;

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
    const-string p1, "\u8bf7\u6dfb\u52a0\u81f3\u5c11\u4e00\u4e2a\u64cd\u4f5c"

    .line 74
    .line 75
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iget-boolean p1, p0, Lha/x7;->s:Z

    .line 80
    .line 81
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Lha/x7;->q:Lz7/s;

    .line 86
    .line 87
    const-string v3, "isOpen"

    .line 88
    .line 89
    invoke-virtual {v0, v3, p1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lha/x7;->j:Landroid/widget/EditText;

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
    const-string v3, "eventName"

    .line 107
    .line 108
    invoke-virtual {v0, v3, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

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
    :goto_0
    iget-object v3, p0, Lha/x7;->p:Lx9/t2;

    .line 117
    .line 118
    invoke-virtual {v3}, Lc6/g;->b()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-ge v2, v3, :cond_4

    .line 123
    .line 124
    iget-object v3, p0, Lha/x7;->p:Lx9/t2;

    .line 125
    .line 126
    invoke-virtual {v3, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lz7/p;

    .line 131
    .line 132
    invoke-virtual {p1, v3}, Lz7/o;->k(Lz7/p;)V

    .line 133
    .line 134
    .line 135
    add-int/lit8 v2, v2, 0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_4
    const-string v2, "click"

    .line 139
    .line 140
    invoke-virtual {v0, v2, p1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v1, v0}, Lha/w7;->a(Lz7/s;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    const v0, 0x7f0b0374

    .line 155
    .line 156
    .line 157
    if-ne p1, v0, :cond_6

    .line 158
    .line 159
    invoke-interface {v1}, Lha/w7;->delete()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 163
    .line 164
    .line 165
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
    iget-object p1, p0, Lha/x7;->q:Lz7/s;

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
    iput-object v0, p0, Lha/x7;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

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
    iput-object v0, p0, Lha/x7;->i:Landroid/widget/ImageView;

    .line 27
    .line 28
    iget-object v0, p0, Lha/x7;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    .line 30
    new-instance v1, Lcom/google/android/material/datepicker/l;

    .line 31
    .line 32
    const/16 v2, 0x19

    .line 33
    .line 34
    invoke-direct {v1, p0, v2}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    const v0, 0x7f0b0523

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object v0, p0, Lha/x7;->g:Landroid/widget/TextView;

    .line 50
    .line 51
    const v0, 0x7f0b0443

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/EditText;

    .line 59
    .line 60
    iput-object v0, p0, Lha/x7;->j:Landroid/widget/EditText;

    .line 61
    .line 62
    const v0, 0x7f0b034a

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object v0, p0, Lha/x7;->k:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 74
    .line 75
    .line 76
    const v0, 0x7f0b03b1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/widget/TextView;

    .line 84
    .line 85
    iput-object v0, p0, Lha/x7;->l:Landroid/widget/TextView;

    .line 86
    .line 87
    const v0, 0x7f0b0374

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/widget/TextView;

    .line 95
    .line 96
    iput-object v0, p0, Lha/x7;->m:Landroid/widget/TextView;

    .line 97
    .line 98
    iget-object v0, p0, Lha/x7;->k:Landroid/widget/TextView;

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lha/x7;->l:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lha/x7;->m:Landroid/widget/TextView;

    .line 109
    .line 110
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    const v0, 0x7f0b04f1

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 121
    .line 122
    iput-object v0, p0, Lha/x7;->n:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 123
    .line 124
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 125
    .line 126
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 127
    .line 128
    const/4 v3, 0x1

    .line 129
    const/4 v4, 0x0

    .line 130
    invoke-direct {v1, v2, v3, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 134
    .line 135
    .line 136
    new-instance v0, Lx9/t2;

    .line 137
    .line 138
    invoke-direct {v0}, Lx9/t2;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object v0, p0, Lha/x7;->p:Lx9/t2;

    .line 142
    .line 143
    const-string v1, "\u6620\u5c04\u64cd\u4f5c\uff1a"

    .line 144
    .line 145
    iput-object v1, v0, Lx9/t2;->h:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v1, p0, Lha/x7;->n:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 150
    .line 151
    .line 152
    new-instance v0, Ld6/a;

    .line 153
    .line 154
    invoke-direct {v0}, Ld6/a;-><init>()V

    .line 155
    .line 156
    .line 157
    const/4 v1, 0x3

    .line 158
    iput v1, v0, Ld6/a;->h:I

    .line 159
    .line 160
    iput-boolean v4, v0, Ld6/a;->g:Z

    .line 161
    .line 162
    iget-object v1, p0, Lha/x7;->n:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ld6/a;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Lha/x7;->p:Lx9/t2;

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ld6/a;->g(Le6/a;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lha/x7;->p:Lx9/t2;

    .line 173
    .line 174
    new-instance v1, Lha/u7;

    .line 175
    .line 176
    invoke-direct {v1, p0}, Lha/u7;-><init>(Lha/x7;)V

    .line 177
    .line 178
    .line 179
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 180
    .line 181
    :try_start_0
    iget-object v0, p0, Lha/x7;->g:Landroid/widget/TextView;

    .line 182
    .line 183
    const-string v1, "eventName"

    .line 184
    .line 185
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lha/x7;->j:Landroid/widget/EditText;

    .line 197
    .line 198
    const-string v1, "name"

    .line 199
    .line 200
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    const-string v0, "isOpen"

    .line 212
    .line 213
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    iput-boolean p1, p0, Lha/x7;->s:Z

    .line 222
    .line 223
    invoke-virtual {p0}, Lha/x7;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .line 225
    .line 226
    goto :goto_0

    .line 227
    :catch_0
    nop

    .line 228
    :goto_0
    iget-object p1, p0, Lha/x7;->i:Landroid/widget/ImageView;

    .line 229
    .line 230
    iget-boolean v0, p0, Lha/x7;->s:Z

    .line 231
    .line 232
    if-eqz v0, :cond_0

    .line 233
    .line 234
    const v0, 0x7f080234

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_0
    const v0, 0x7f080237

    .line 239
    .line 240
    .line 241
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    .line 243
    .line 244
    return-void
.end method
