.class public final synthetic Lua/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ea;
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityImmersive;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityImmersive;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/m2;->a:I

    iput-object p1, p0, Lua/m2;->b:Lcom/yunpan/appmanage/ui/ActivityImmersive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lua/m2;->b:Lcom/yunpan/appmanage/ui/ActivityImmersive;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->H:Lx9/m2;

    .line 4
    .line 5
    iget v2, v0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->I:I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lua/p2;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-gt p1, v2, :cond_0

    .line 15
    .line 16
    iget v3, v1, Lua/p2;->d:I

    .line 17
    .line 18
    if-ne v3, p1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    iput p1, v1, Lua/p2;->d:I

    .line 23
    .line 24
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->H:Lx9/m2;

    .line 25
    .line 26
    iget v1, v0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->I:I

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->M:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v1, "immersive.status="

    .line 38
    .line 39
    const-string v3, "immersive.navigation="

    .line 40
    .line 41
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const-string v5, ","

    .line 46
    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lua/p2;

    .line 54
    .line 55
    iget v6, v4, Lua/p2;->d:I

    .line 56
    .line 57
    iget-object v4, v4, Lua/p2;->b:Ljava/lang/String;

    .line 58
    .line 59
    if-ne v6, v2, :cond_2

    .line 60
    .line 61
    invoke-static {v3, v4, v5}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    :goto_1
    invoke-static {v1, v4, v5}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/4 v7, 0x2

    .line 71
    if-ne v6, v7, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const/4 v7, 0x3

    .line 75
    if-ne v6, v7, :cond_1

    .line 76
    .line 77
    invoke-static {v3, v4, v5}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    const/4 v4, 0x0

    .line 87
    const-string v6, ""

    .line 88
    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    sub-int/2addr v6, v2

    .line 101
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    :cond_5
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_7

    .line 117
    .line 118
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_6

    .line 123
    .line 124
    const-string p1, ":"

    .line 125
    .line 126
    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    :cond_6
    invoke-static {v6}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    sub-int/2addr v1, v2

    .line 139
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    :cond_7
    invoke-virtual {v0, v6}, Lcom/yunpan/appmanage/ui/ActivityImmersive;->x(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :goto_2
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, ""

    .line 3
    .line 4
    iget-object v2, p0, Lua/m2;->b:Lcom/yunpan/appmanage/ui/ActivityImmersive;

    .line 5
    .line 6
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->M:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v4, Lua/p2;

    .line 9
    .line 10
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 11
    .line 12
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 13
    .line 14
    iget-object v6, v5, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    invoke-direct {v4, v6, v5, v7}, Lua/p2;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v4}, Lcom/yunpan/appmanage/db/AppDao;->get_app_canStart()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lcom/yunpan/appmanage/db/AppBean;

    .line 52
    .line 53
    new-instance v6, Lua/p2;

    .line 54
    .line 55
    iget-object v8, v5, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v5, v5, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 58
    .line 59
    invoke-direct {v6, v8, v5, v7}, Lua/p2;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-interface {v4}, Lcom/yunpan/appmanage/db/AppDao;->get_app_NoCanStart()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_3

    .line 87
    .line 88
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Lcom/yunpan/appmanage/db/AppBean;

    .line 93
    .line 94
    :try_start_0
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 95
    .line 96
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 97
    .line 98
    iget-object v8, v5, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v6, v8, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 105
    .line 106
    if-eqz v6, :cond_1

    .line 107
    .line 108
    array-length v8, v6

    .line 109
    const/4 v9, 0x0

    .line 110
    :goto_2
    if-ge v9, v8, :cond_1

    .line 111
    .line 112
    aget-object v10, v6, v9

    .line 113
    .line 114
    iget-boolean v10, v10, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 115
    .line 116
    if-eqz v10, :cond_2

    .line 117
    .line 118
    new-instance v6, Lua/p2;

    .line 119
    .line 120
    iget-object v8, v5, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v5, v5, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 123
    .line 124
    invoke-direct {v6, v8, v5, v7}, Lua/p2;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catch_0
    move-exception v5

    .line 132
    goto :goto_3

    .line 133
    :cond_2
    add-int/2addr v9, v0

    .line 134
    goto :goto_2

    .line 135
    :goto_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v2, "policy_control"

    .line 144
    .line 145
    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    if-nez v0, :cond_4

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_4
    move-object v1, v0

    .line 153
    goto :goto_4

    .line 154
    :catch_1
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    const-string v0, "settings get global policy_control"

    .line 160
    .line 161
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iget v2, v0, Lfa/a0;->a:I

    .line 166
    .line 167
    if-nez v2, :cond_5

    .line 168
    .line 169
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    :cond_5
    :goto_4
    invoke-virtual {p1, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 6

    .line 1
    iget p1, p0, Lua/m2;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lua/m2;->b:Lcom/yunpan/appmanage/ui/ActivityImmersive;

    .line 7
    .line 8
    iget p2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->L:I

    .line 9
    .line 10
    if-ne p2, p3, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->F:Lx9/n2;

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lx9/j1;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p2, Lx9/j1;->b:Z

    .line 24
    .line 25
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->F:Lx9/n2;

    .line 26
    .line 27
    iget v1, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->L:I

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 30
    .line 31
    .line 32
    iput p3, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->L:I

    .line 33
    .line 34
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->F:Lx9/n2;

    .line 35
    .line 36
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Lx9/j1;

    .line 41
    .line 42
    const/4 p3, 0x1

    .line 43
    iput-boolean p3, p2, Lx9/j1;->b:Z

    .line 44
    .line 45
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->F:Lx9/n2;

    .line 46
    .line 47
    iget p3, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->L:I

    .line 48
    .line 49
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->G:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 53
    .line 54
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 55
    .line 56
    .line 57
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->M:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lua/p2;

    .line 74
    .line 75
    iput-boolean v0, v1, Lua/p2;->c:Z

    .line 76
    .line 77
    iput v0, v1, Lua/p2;->d:I

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object p3, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->H:Lx9/m2;

    .line 81
    .line 82
    invoke-virtual {p3, p2}, Lc6/g;->E(Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    const-string p2, "null"

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Lcom/yunpan/appmanage/ui/ActivityImmersive;->x(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget p2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->L:I

    .line 91
    .line 92
    const/16 p3, 0x8

    .line 93
    .line 94
    if-nez p2, :cond_2

    .line 95
    .line 96
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->C:Landroid/widget/TextView;

    .line 97
    .line 98
    const-string v1, "\u7b80\u8981\u8bf4\u660e\uff1a"

    .line 99
    .line 100
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->D:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->G:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 109
    .line 110
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    const/4 v1, 0x2

    .line 115
    if-ne p2, v1, :cond_3

    .line 116
    .line 117
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->C:Landroid/widget/TextView;

    .line 118
    .line 119
    const-string v1, "\u4e0b\u9762\u70b9\u51fb\u5e94\u7528\u8fdb\u884c\u5355\u72ec\u8bbe\u7f6e\u6a21\u5f0f"

    .line 120
    .line 121
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->D:Landroid/widget/TextView;

    .line 125
    .line 126
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->G:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->C:Landroid/widget/TextView;

    .line 136
    .line 137
    const-string v1, "\u5728\u4e0b\u9762\u9009\u4e2d\u8981\u5b9e\u884c\u6b64\u6a21\u5f0f\u7684\u5e94\u7528"

    .line 138
    .line 139
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->D:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->G:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    :goto_1
    return-void

    .line 153
    :pswitch_0
    iget-object p1, p0, Lua/m2;->b:Lcom/yunpan/appmanage/ui/ActivityImmersive;

    .line 154
    .line 155
    iput p3, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->I:I

    .line 156
    .line 157
    iget p2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->L:I

    .line 158
    .line 159
    const/4 v0, 0x2

    .line 160
    if-ne p2, v0, :cond_4

    .line 161
    .line 162
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->K:Lha/fa;

    .line 163
    .line 164
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_5

    .line 168
    .line 169
    :cond_4
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->H:Lx9/m2;

    .line 170
    .line 171
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    check-cast p2, Lua/p2;

    .line 176
    .line 177
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->H:Lx9/m2;

    .line 178
    .line 179
    invoke-virtual {v0, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Lua/p2;

    .line 184
    .line 185
    iget-boolean v0, v0, Lua/p2;->c:Z

    .line 186
    .line 187
    const/4 v1, 0x1

    .line 188
    xor-int/2addr v0, v1

    .line 189
    iput-boolean v0, p2, Lua/p2;->c:Z

    .line 190
    .line 191
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->H:Lx9/m2;

    .line 192
    .line 193
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 194
    .line 195
    .line 196
    iget p2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->L:I

    .line 197
    .line 198
    const/4 p3, 0x4

    .line 199
    const/4 v0, 0x3

    .line 200
    if-ne p2, v1, :cond_5

    .line 201
    .line 202
    const-string p2, "immersive.full="

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_5
    if-ne p2, v0, :cond_6

    .line 206
    .line 207
    const-string p2, "immersive.status="

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_6
    if-ne p2, p3, :cond_7

    .line 211
    .line 212
    const-string p2, "immersive.navigation="

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_7
    const-string p2, ""

    .line 216
    .line 217
    :goto_2
    iget-object v2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->M:Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    const/4 v3, 0x0

    .line 224
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-eqz v4, :cond_9

    .line 229
    .line 230
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    check-cast v4, Lua/p2;

    .line 235
    .line 236
    iget-boolean v5, v4, Lua/p2;->c:Z

    .line 237
    .line 238
    if-eqz v5, :cond_8

    .line 239
    .line 240
    invoke-static {p2}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    iget-object v4, v4, Lua/p2;->b:Ljava/lang/String;

    .line 245
    .line 246
    const-string v5, ","

    .line 247
    .line 248
    invoke-static {v4, v5, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    goto :goto_3

    .line 253
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_9
    if-nez v3, :cond_c

    .line 257
    .line 258
    iget v2, p1, Lcom/yunpan/appmanage/ui/ActivityImmersive;->L:I

    .line 259
    .line 260
    if-ne v2, v1, :cond_a

    .line 261
    .line 262
    const-string p2, "immersive.full=*"

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_a
    if-ne v2, v0, :cond_b

    .line 266
    .line 267
    const-string p2, "immersive.status=*"

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_b
    if-ne v2, p3, :cond_c

    .line 271
    .line 272
    const-string p2, "immersive.navigation=*"

    .line 273
    .line 274
    :cond_c
    :goto_4
    invoke-virtual {p1, p2}, Lcom/yunpan/appmanage/ui/ActivityImmersive;->x(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    :goto_5
    return-void

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
