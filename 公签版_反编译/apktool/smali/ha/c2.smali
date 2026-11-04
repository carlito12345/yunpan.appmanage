.class public final Lha/c2;
.super Lha/a4;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final g:Lha/o;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public k:Lx9/t2;

.field public final l:Lz7/o;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lz7/o;Lha/o;)V
    .locals 1

    .line 1
    const v0, 0x7f0e008a

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/c2;->l:Lz7/o;

    .line 8
    .line 9
    iput-object p4, p0, Lha/c2;->g:Lha/o;

    .line 10
    .line 11
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
    new-instance p1, Lha/a2;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lha/a2;-><init>(Lha/c2;)V

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
    move-result v0

    .line 31
    const v1, 0x7f0b03b1

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lha/c2;->g:Lha/o;

    .line 35
    .line 36
    if-ne v0, v1, :cond_3

    .line 37
    .line 38
    new-instance p1, Lz7/o;

    .line 39
    .line 40
    invoke-direct {p1}, Lz7/o;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lha/c2;->k:Lx9/t2;

    .line 44
    .line 45
    invoke-virtual {v0}, Lc6/g;->v()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lz7/s;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lz7/o;->k(Lz7/p;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v2, p1}, Lha/o;->i(Lz7/o;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    const v0, 0x7f0b0373

    .line 81
    .line 82
    .line 83
    if-ne p1, v0, :cond_4

    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    invoke-virtual {v2, p1}, Lha/o;->i(Lz7/o;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 90
    .line 91
    .line 92
    :cond_4
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
    const p1, 0x7f0b034a

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
    iput-object p1, p0, Lha/c2;->h:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 16
    .line 17
    .line 18
    const p1, 0x7f0b03b1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object p1, p0, Lha/c2;->i:Landroid/widget/TextView;

    .line 28
    .line 29
    iget-object p1, p0, Lha/c2;->h:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lha/c2;->i:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    const p1, 0x7f0b0373

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    const p1, 0x7f0b04f1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 57
    .line 58
    iput-object p1, p0, Lha/c2;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 59
    .line 60
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 61
    .line 62
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-direct {v0, v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 70
    .line 71
    .line 72
    new-instance p1, Lx9/t2;

    .line 73
    .line 74
    invoke-direct {p1}, Lx9/t2;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lha/c2;->k:Lx9/t2;

    .line 78
    .line 79
    const-string v0, "\u6620\u5c04\uff1a"

    .line 80
    .line 81
    iput-object v0, p1, Lx9/t2;->h:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v0, p0, Lha/c2;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 86
    .line 87
    .line 88
    new-instance p1, Ld6/a;

    .line 89
    .line 90
    invoke-direct {p1}, Ld6/a;-><init>()V

    .line 91
    .line 92
    .line 93
    const/4 v0, 0x3

    .line 94
    iput v0, p1, Ld6/a;->h:I

    .line 95
    .line 96
    iput-boolean v3, p1, Ld6/a;->g:Z

    .line 97
    .line 98
    iget-object v0, p0, Lha/c2;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ld6/a;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lha/c2;->k:Lx9/t2;

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ld6/a;->g(Le6/a;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lha/c2;->k:Lx9/t2;

    .line 109
    .line 110
    new-instance v0, Lha/a2;

    .line 111
    .line 112
    invoke-direct {v0, p0}, Lha/a2;-><init>(Lha/c2;)V

    .line 113
    .line 114
    .line 115
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 116
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lha/c2;->l:Lz7/o;

    .line 126
    .line 127
    if-eqz p1, :cond_0

    .line 128
    .line 129
    :try_start_0
    iget-object v0, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_0

    .line 136
    .line 137
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-ge v3, v1, :cond_0

    .line 142
    .line 143
    iget-object v1, p0, Lha/c2;->k:Lx9/t2;

    .line 144
    .line 145
    new-instance v2, Lz7/m;

    .line 146
    .line 147
    invoke-direct {v2}, Lz7/m;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v3}, Lz7/o;->l(I)Lz7/p;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v2, v4}, Lz7/m;->b(Lz7/p;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Lz7/s;

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    .line 167
    add-int/lit8 v3, v3, 0x1

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :catch_0
    :cond_0
    return-void
.end method
