.class public Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic G:I


# instance fields
.field public C:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public D:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Lx9/z4;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0056

    return v0
.end method

.method public final u()V
    .locals 11

    .line 1
    const v0, 0x7f0b05ba

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    const-string v1, "\u67d0\u4e2a\u5e94\u7528\u6253\u5f00\u65f6\uff0c\u81ea\u52a8\u5173\u95ed\u67d0\u4e2a\u5e94\u7528"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0b040b

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    .line 24
    const-string v1, "\u5e94\u7528\u573a\u666f\uff1a\u6bd4\u5982\u7cfb\u7edf\u4e2d\u6709\u4e24\u4e2a\u97f3\u4e50\u5e94\u7528\uff0c\u5f53\u6253\u5f00\u67d0\u4e2a\u97f3\u4e50\u5e94\u7528\u65f6\uff0c\u81ea\u52a8\u5173\u95ed\u53e6\u5916\u4e00\u4e2a\u97f3\u4e50\u5e94\u7528\uff0c\u907f\u514d\u540c\u65f6\u64ad\u653e"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    const v0, 0x7f0b03ad

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    .line 40
    new-instance v1, Lua/t;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-direct {v1, p0, v2}, Lua/t;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    .line 51
    new-instance v1, Lua/u;

    .line 52
    .line 53
    invoke-direct {v1, p0, v2}, Lua/u;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 57
    .line 58
    .line 59
    const v0, 0x7f0b034a

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 69
    .line 70
    new-instance v1, Lua/t;

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    invoke-direct {v1, p0, v2}, Lua/t;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 80
    .line 81
    new-instance v1, Lua/u;

    .line 82
    .line 83
    invoke-direct {v1, p0, v2}, Lua/u;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 87
    .line 88
    .line 89
    const v0, 0x7f0b04f1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 99
    .line 100
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    invoke-direct {v1, p0, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 107
    .line 108
    .line 109
    new-instance v0, Lx9/z4;

    .line 110
    .line 111
    invoke-direct {v0, p0}, Lx9/z4;-><init>(Lda/g;)V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->F:Lx9/z4;

    .line 115
    .line 116
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 117
    .line 118
    iget-object v0, v0, Lwa/u;->M:Lz7/o;

    .line 119
    .line 120
    :goto_0
    iget-object v1, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-ge v3, v1, :cond_0

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Lz7/o;->l(I)Lz7/p;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->F:Lx9/z4;

    .line 137
    .line 138
    new-instance v10, Lcom/yunpan/appmanage/bean/SwitchAppBean;

    .line 139
    .line 140
    const-string v4, "fromName"

    .line 141
    .line 142
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    const-string v4, "fromPackage"

    .line 151
    .line 152
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    const-string v4, "toName"

    .line 161
    .line 162
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    const-string v4, "toPackage"

    .line 171
    .line 172
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    const-string v9, ""

    .line 181
    .line 182
    move-object v4, v10

    .line 183
    invoke-direct/range {v4 .. v9}, Lcom/yunpan/appmanage/bean/SwitchAppBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v10}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    add-int/lit8 v3, v3, 0x1

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 193
    .line 194
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->F:Lx9/z4;

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->F:Lx9/z4;

    .line 200
    .line 201
    new-instance v1, Lua/v;

    .line 202
    .line 203
    invoke-direct {v1, p0}, Lua/v;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;)V

    .line 204
    .line 205
    .line 206
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 207
    .line 208
    return-void
.end method

.method public final x()V
    .locals 6

    .line 1
    new-instance v0, Lz7/o;

    .line 2
    .line 3
    invoke-direct {v0}, Lz7/o;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->F:Lx9/z4;

    .line 7
    .line 8
    invoke-virtual {v1}, Lc6/g;->v()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/yunpan/appmanage/bean/SwitchAppBean;

    .line 27
    .line 28
    new-instance v3, Lz7/s;

    .line 29
    .line 30
    invoke-direct {v3}, Lz7/s;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v4, v2, Lcom/yunpan/appmanage/bean/SwitchAppBean;->fromAppName:Ljava/lang/String;

    .line 34
    .line 35
    const-string v5, "fromName"

    .line 36
    .line 37
    invoke-virtual {v3, v5, v4}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v4, "fromPackage"

    .line 41
    .line 42
    iget-object v5, v2, Lcom/yunpan/appmanage/bean/SwitchAppBean;->fromAppPack:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v3, v4, v5}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v4, "toName"

    .line 48
    .line 49
    iget-object v5, v2, Lcom/yunpan/appmanage/bean/SwitchAppBean;->toAppName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v3, v4, v5}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v4, "toPackage"

    .line 55
    .line 56
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/SwitchAppBean;->toAppPack:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v3, v4, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Lz7/o;->k(Lz7/p;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    :try_start_0
    iput-object v0, v1, Lwa/u;->M:Lz7/o;

    .line 71
    .line 72
    iget-object v2, v1, Lwa/u;->b:Lz7/s;

    .line 73
    .line 74
    const-string v3, "AutoTask_app_show_app_close"

    .line 75
    .line 76
    invoke-virtual {v2, v3, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    :catch_0
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 80
    .line 81
    .line 82
    return-void
.end method
