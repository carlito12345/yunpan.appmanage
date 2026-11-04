.class public Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;
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
    const v0, 0x7f0b03ad

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    new-instance v1, Lua/w;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, v2}, Lua/w;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 22
    .line 23
    new-instance v1, Lua/x;

    .line 24
    .line 25
    invoke-direct {v1, p0, v2}, Lua/x;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 29
    .line 30
    .line 31
    const v0, 0x7f0b034a

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    .line 42
    new-instance v1, Lua/w;

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-direct {v1, p0, v2}, Lua/w;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    .line 53
    new-instance v1, Lua/x;

    .line 54
    .line 55
    invoke-direct {v1, p0, v2}, Lua/x;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0b04f1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 71
    .line 72
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    invoke-direct {v1, p0, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lx9/z4;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lx9/z4;-><init>(Lda/g;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;->F:Lx9/z4;

    .line 87
    .line 88
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/yunpan/appmanage/util/w;->K0:Lz7/o;

    .line 91
    .line 92
    :goto_0
    iget-object v1, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-ge v3, v1, :cond_0

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Lz7/o;->l(I)Lz7/p;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;->F:Lx9/z4;

    .line 109
    .line 110
    new-instance v10, Lcom/yunpan/appmanage/bean/SwitchAppBean;

    .line 111
    .line 112
    const-string v4, "fromName"

    .line 113
    .line 114
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    const-string v4, "fromPackage"

    .line 123
    .line 124
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    const-string v4, "toName"

    .line 133
    .line 134
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    const-string v4, "toPackage"

    .line 143
    .line 144
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    const-string v4, "toStartClass"

    .line 153
    .line 154
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    move-object v4, v10

    .line 163
    invoke-direct/range {v4 .. v9}, Lcom/yunpan/appmanage/bean/SwitchAppBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v10}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    add-int/lit8 v3, v3, 0x1

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 173
    .line 174
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;->F:Lx9/z4;

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;->F:Lx9/z4;

    .line 180
    .line 181
    new-instance v1, Lua/y;

    .line 182
    .line 183
    invoke-direct {v1, p0}, Lua/y;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;)V

    .line 184
    .line 185
    .line 186
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 187
    .line 188
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
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;->F:Lx9/z4;

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
    iget-object v5, v2, Lcom/yunpan/appmanage/bean/SwitchAppBean;->toAppPack:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v3, v4, v5}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v4, "toStartClass"

    .line 62
    .line 63
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/SwitchAppBean;->toStartClass:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v3, v4, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3}, Lz7/o;->k(Lz7/p;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 73
    .line 74
    iput-object v0, v1, Lcom/yunpan/appmanage/util/w;->K0:Lz7/o;

    .line 75
    .line 76
    :try_start_0
    iget-object v2, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 77
    .line 78
    const-string v3, "Auto_task_switch_app"

    .line 79
    .line 80
    invoke-virtual {v2, v3, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    :catch_0
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;->F:Lx9/z4;

    .line 87
    .line 88
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 89
    .line 90
    .line 91
    return-void
.end method
