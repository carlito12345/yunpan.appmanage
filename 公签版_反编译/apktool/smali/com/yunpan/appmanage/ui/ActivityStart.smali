.class public Lcom/yunpan/appmanage/ui/ActivityStart;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic G:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/y4;

.field public final E:Ljava/util/ArrayList;

.field public final F:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStart;->E:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStart;->F:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStart;->D:Lx9/y4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityStart;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityStart;->D:Lx9/y4;

    .line 10
    .line 11
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()V

    .line 18
    .line 19
    .line 20
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0054

    return v0
.end method

.method public final u()V
    .locals 7

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
    new-instance v1, Lua/g1;

    .line 9
    .line 10
    const/16 v2, 0x1c

    .line 11
    .line 12
    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lx9/y4;

    .line 19
    .line 20
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lx9/y4;-><init>(Lda/g;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStart;->D:Lx9/y4;

    .line 26
    .line 27
    const v0, 0x7f0b04f4

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStart;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 37
    .line 38
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 39
    .line 40
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-direct {v1, v2, v3, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStart;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityStart;->D:Lx9/y4;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Landroidx/recyclerview/widget/y;

    .line 58
    .line 59
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 60
    .line 61
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/y;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    const v1, 0x7f0800cb

    .line 65
    .line 66
    .line 67
    invoke-static {p0, v1}, Ln0/g;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/y;->e(Landroid/graphics/drawable/Drawable;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityStart;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/v1;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Landroid/content/Intent;

    .line 80
    .line 81
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 82
    .line 83
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const/16 v2, 0x200

    .line 91
    .line 92
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityStart;->E:Ljava/util/ArrayList;

    .line 101
    .line 102
    if-ge v4, v1, :cond_3

    .line 103
    .line 104
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 109
    .line 110
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v5}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 119
    .line 120
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 121
    .line 122
    invoke-interface {v5, v6}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    if-eqz v5, :cond_0

    .line 127
    .line 128
    iget-boolean v6, v5, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 129
    .line 130
    if-nez v6, :cond_2

    .line 131
    .line 132
    iget-boolean v5, v5, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 133
    .line 134
    if-eqz v5, :cond_0

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_0
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 138
    .line 139
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 140
    .line 141
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 142
    .line 143
    and-int/2addr v5, v3

    .line 144
    if-eqz v5, :cond_1

    .line 145
    .line 146
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityStart;->F:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStart;->D:Lx9/y4;

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Lc6/g;->r(Ljava/util/Collection;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStart;->D:Lx9/y4;

    .line 164
    .line 165
    new-instance v1, Landroid/content/pm/ResolveInfo;

    .line 166
    .line 167
    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    const v0, 0x7f0b0517

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Landroid/widget/ProgressBar;

    .line 181
    .line 182
    const/16 v1, 0x8

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStart;->D:Lx9/y4;

    .line 188
    .line 189
    new-instance v1, Lua/g5;

    .line 190
    .line 191
    const/4 v2, 0x4

    .line 192
    invoke-direct {v1, v2, p0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 196
    .line 197
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStart;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 198
    .line 199
    new-instance v1, Lua/v6;

    .line 200
    .line 201
    invoke-direct {v1}, Lua/v6;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStart;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 208
    .line 209
    new-instance v1, Lua/t6;

    .line 210
    .line 211
    const/4 v2, 0x0

    .line 212
    invoke-direct {v1, v2}, Lua/t6;-><init>(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 216
    .line 217
    .line 218
    return-void
.end method

.method public final x(Landroid/content/pm/ResolveInfo;ZI)V
    .locals 5

    .line 1
    const-string v0, "\u66f4\u6539\u6210\u529f ("

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    .line 4
    .line 5
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 6
    .line 7
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 15
    .line 16
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v4, 0x1

    .line 26
    :goto_0
    invoke-virtual {v2, v1, v4, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    const-string v0, "\u7981\u7528"

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string v0, "\u542f\u7528"

    .line 40
    .line 41
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ")"

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0, v3}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityStart;->D:Lx9/y4;

    .line 57
    .line 58
    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/m1;->e(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 68
    .line 69
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, "/"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 80
    .line 81
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 91
    .line 92
    new-instance v1, Lua/u6;

    .line 93
    .line 94
    invoke-direct {v1, p0, p2, p3}, Lua/u6;-><init>(Lcom/yunpan/appmanage/ui/ActivityStart;ZI)V

    .line 95
    .line 96
    .line 97
    iput-object v1, v0, La2/w0;->c:Ljava/lang/Object;

    .line 98
    .line 99
    sget-object p3, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 100
    .line 101
    new-instance v1, Lfa/s;

    .line 102
    .line 103
    const/4 v2, 0x0

    .line 104
    invoke-direct {v1, v0, p1, p2, v2}, Lfa/s;-><init>(La2/w0;Ljava/lang/String;ZI)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    return-void
.end method
