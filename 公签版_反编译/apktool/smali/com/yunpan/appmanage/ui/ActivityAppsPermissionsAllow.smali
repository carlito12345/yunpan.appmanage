.class public Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic R:I


# instance fields
.field public C:Ljava/lang/String;

.field public D:Landroid/content/pm/PackageInfo;

.field public E:Landroid/widget/ProgressBar;

.field public F:Lx9/m0;

.field public G:Landroidx/recyclerview/widget/RecyclerView;

.field public H:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public I:Lx9/b0;

.field public K:Landroid/content/pm/PackageManager;

.field public L:Landroid/content/ContentResolver;

.field public final M:Ljava/util/ArrayList;

.field public final N:Ljava/util/HashMap;

.field public final O:Ljava/util/HashSet;

.field public P:Z


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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->M:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->N:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->O:Ljava/util/HashSet;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->P:Z

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0027

    return v0
.end method

.method public final u()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "packageName"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->C:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->K:Landroid/content/pm/PackageManager;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->L:Landroid/content/ContentResolver;

    .line 28
    .line 29
    const v0, 0x7f0b0517

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/ProgressBar;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->E:Landroid/widget/ProgressBar;

    .line 39
    .line 40
    const v0, 0x7f0b0500

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->G:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-direct {v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lx9/m0;

    .line 61
    .line 62
    invoke-direct {v0}, Lx9/m0;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->F:Lx9/m0;

    .line 66
    .line 67
    const-string v1, "\u8fd4\u56de"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->F:Lx9/m0;

    .line 73
    .line 74
    const-string v1, "\u5f00\u59cb\u6388\u6743"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->G:Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->F:Lx9/m0;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->F:Lx9/m0;

    .line 87
    .line 88
    new-instance v1, Lua/m0;

    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    invoke-direct {v1, p0, v3}, Lua/m0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;I)V

    .line 92
    .line 93
    .line 94
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 95
    .line 96
    const v0, 0x7f0b050b

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 104
    .line 105
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->H:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 106
    .line 107
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 108
    .line 109
    const/4 v3, 0x1

    .line 110
    invoke-direct {v1, p0, v3, v2}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lx9/b0;

    .line 117
    .line 118
    invoke-direct {v0}, Lx9/b0;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->I:Lx9/b0;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->H:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->I:Lx9/b0;

    .line 129
    .line 130
    new-instance v1, Lua/m0;

    .line 131
    .line 132
    const/4 v2, 0x1

    .line 133
    invoke-direct {v1, p0, v2}, Lua/m0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;I)V

    .line 134
    .line 135
    .line 136
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 137
    .line 138
    new-instance v0, Lua/m0;

    .line 139
    .line 140
    const/4 v1, 0x3

    .line 141
    invoke-direct {v0, p0, v1}, Lua/m0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;I)V

    .line 142
    .line 143
    .line 144
    new-instance v1, Lmc/c;

    .line 145
    .line 146
    const/4 v2, 0x0

    .line 147
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 151
    .line 152
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-instance v1, Lua/o0;

    .line 165
    .line 166
    const/4 v2, 0x0

    .line 167
    invoke-direct {v1, p0, v2}, Lua/o0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public final x(Lcom/yunpan/appmanage/bean/PermissionBean;)V
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-object v1, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v0, "\u4fee\u6539\u7cfb\u7edf\u5b89\u5168\u8bbe\u7f6e"

    .line 15
    .line 16
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 17
    .line 18
    iput-boolean v2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v1, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 22
    .line 23
    const-string v3, "android.permission.GET_APP_OPS_STATS"

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const-string v0, "OPS\u6743\u9650\u67e5\u8be2"

    .line 32
    .line 33
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 34
    .line 35
    iput-boolean v2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    :try_start_0
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->K:Landroid/content/pm/PackageManager;

    .line 40
    .line 41
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->K:Landroid/content/pm/PackageManager;

    .line 53
    .line 54
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iput-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->K:Landroid/content/pm/PackageManager;

    .line 73
    .line 74
    invoke-virtual {v3, v0}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionDesc:Ljava/lang/String;

    .line 86
    .line 87
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 88
    .line 89
    and-int/lit8 v4, v0, 0x1

    .line 90
    .line 91
    const/4 v5, 0x2

    .line 92
    if-eqz v4, :cond_2

    .line 93
    .line 94
    iput v2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 95
    .line 96
    const-string v4, "\u5371\u9669\u6743\u9650(1)"

    .line 97
    .line 98
    iput-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_0
    nop

    .line 102
    goto/16 :goto_1

    .line 103
    .line 104
    :cond_2
    and-int/lit8 v4, v0, 0x2

    .line 105
    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    iput v5, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 109
    .line 110
    const-string v4, "\u7cfb\u7edf\u6743\u9650(2)"

    .line 111
    .line 112
    iput-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    and-int/lit8 v4, v0, 0x3

    .line 116
    .line 117
    if-eqz v4, :cond_4

    .line 118
    .line 119
    const/4 v4, 0x3

    .line 120
    iput v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 121
    .line 122
    const-string v4, "\u7cfb\u7edf\u6743\u9650(3)"

    .line 123
    .line 124
    iput-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    and-int/lit8 v4, v0, 0x4

    .line 128
    .line 129
    if-eqz v4, :cond_5

    .line 130
    .line 131
    const/4 v4, 0x4

    .line 132
    iput v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 133
    .line 134
    const-string v4, "\u666e\u901a\u6743\u9650(4)"

    .line 135
    .line 136
    iput-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_5
    iput v1, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 140
    .line 141
    const-string v4, "\u666e\u901a\u6743\u9650(0)"

    .line 142
    .line 143
    iput-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 144
    .line 145
    :goto_0
    iget v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 146
    .line 147
    sub-int v6, v0, v4

    .line 148
    .line 149
    if-nez v6, :cond_6

    .line 150
    .line 151
    if-ne v4, v2, :cond_6

    .line 152
    .line 153
    iput-boolean v2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 154
    .line 155
    :cond_6
    if-eqz v6, :cond_1c

    .line 156
    .line 157
    and-int/lit8 v0, v0, 0x10

    .line 158
    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v4, "\u3001\u7279\u6743"

    .line 172
    .line 173
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 181
    .line 182
    :cond_7
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 183
    .line 184
    and-int/lit8 v0, v0, 0x20

    .line 185
    .line 186
    if-eqz v0, :cond_8

    .line 187
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v4, "\u3001\u5f00\u53d1\u8005"

    .line 199
    .line 200
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 208
    .line 209
    :cond_8
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 210
    .line 211
    and-int/lit8 v0, v0, 0x40

    .line 212
    .line 213
    if-eqz v0, :cond_9

    .line 214
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v4, "\u3001APPOPS"

    .line 226
    .line 227
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 235
    .line 236
    :cond_9
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 237
    .line 238
    and-int/lit16 v0, v0, 0x80

    .line 239
    .line 240
    if-eqz v0, :cond_a

    .line 241
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v4, "\u3001PRE23"

    .line 253
    .line 254
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 262
    .line 263
    :cond_a
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 264
    .line 265
    and-int/lit16 v0, v0, 0x100

    .line 266
    .line 267
    if-eqz v0, :cond_b

    .line 268
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v4, "\u3001\u5b89\u88c5\u65f6"

    .line 280
    .line 281
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 289
    .line 290
    :cond_b
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 291
    .line 292
    and-int/lit16 v0, v0, 0x200

    .line 293
    .line 294
    if-eqz v0, :cond_c

    .line 295
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v4, "\u3001\u9a8c\u8bc1\u5668"

    .line 307
    .line 308
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 316
    .line 317
    :cond_c
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 318
    .line 319
    and-int/lit16 v0, v0, 0x400

    .line 320
    .line 321
    if-eqz v0, :cond_d

    .line 322
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string v4, "\u3001\u9884\u88c5"

    .line 334
    .line 335
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 343
    .line 344
    :cond_d
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 345
    .line 346
    and-int/lit16 v0, v0, 0x800

    .line 347
    .line 348
    if-eqz v0, :cond_e

    .line 349
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 356
    .line 357
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v4, "\u3001\u8bbe\u7f6e"

    .line 361
    .line 362
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 370
    .line 371
    :cond_e
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 372
    .line 373
    and-int/lit16 v0, v0, 0x1000

    .line 374
    .line 375
    if-eqz v0, :cond_f

    .line 376
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 383
    .line 384
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    const-string v4, "\u3001\u5373\u65f6"

    .line 388
    .line 389
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 397
    .line 398
    :cond_f
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 399
    .line 400
    and-int/lit16 v0, v0, 0x2000

    .line 401
    .line 402
    if-eqz v0, :cond_10

    .line 403
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .line 408
    .line 409
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 410
    .line 411
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    const-string v4, "\u3001\u8fd0\u884c\u65f6"

    .line 415
    .line 416
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 424
    .line 425
    :cond_10
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 426
    .line 427
    and-int/lit16 v0, v0, 0x4000

    .line 428
    .line 429
    if-eqz v0, :cond_11

    .line 430
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 437
    .line 438
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    const-string v4, "\u3001OEM"

    .line 442
    .line 443
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 451
    .line 452
    :cond_11
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 453
    .line 454
    const v4, 0x8000

    .line 455
    .line 456
    .line 457
    and-int/2addr v0, v4

    .line 458
    if-eqz v0, :cond_12

    .line 459
    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .line 464
    .line 465
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 466
    .line 467
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    const-string v4, "\u3001\u4f9b\u5e94\u5546\u7279\u4eab"

    .line 471
    .line 472
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 480
    .line 481
    :cond_12
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 482
    .line 483
    const/high16 v4, 0x10000

    .line 484
    .line 485
    and-int/2addr v0, v4

    .line 486
    if-eqz v0, :cond_13

    .line 487
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .line 492
    .line 493
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 494
    .line 495
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    const-string v4, "\u3001\u7cfb\u7edf\u6587\u672c\u5206\u7c7b\u5668"

    .line 499
    .line 500
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 508
    .line 509
    :cond_13
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 510
    .line 511
    const/high16 v4, 0x80000

    .line 512
    .line 513
    and-int/2addr v0, v4

    .line 514
    if-eqz v0, :cond_14

    .line 515
    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .line 520
    .line 521
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 522
    .line 523
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    const-string v4, "\u3001\u914d\u7f6e\u5668"

    .line 527
    .line 528
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 536
    .line 537
    :cond_14
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 538
    .line 539
    const/high16 v4, 0x100000

    .line 540
    .line 541
    and-int/2addr v0, v4

    .line 542
    if-eqz v0, :cond_15

    .line 543
    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    .line 545
    .line 546
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .line 548
    .line 549
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 550
    .line 551
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    const-string v4, "\u3001\u4e8b\u4ef6\u62a5\u544a\u5ba1\u6279\u4eba"

    .line 555
    .line 556
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 564
    .line 565
    :cond_15
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 566
    .line 567
    const/high16 v4, 0x200000

    .line 568
    .line 569
    and-int/2addr v0, v4

    .line 570
    if-eqz v0, :cond_16

    .line 571
    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .line 576
    .line 577
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 578
    .line 579
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    const-string v4, "\u3001APP\u9884\u6d4b"

    .line 583
    .line 584
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 592
    .line 593
    :cond_16
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 594
    .line 595
    const/high16 v4, 0x800000

    .line 596
    .line 597
    and-int/2addr v0, v4

    .line 598
    if-eqz v0, :cond_17

    .line 599
    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    .line 601
    .line 602
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    .line 604
    .line 605
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 606
    .line 607
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    const-string v4, "\u3001\u540c\u4f34"

    .line 611
    .line 612
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 620
    .line 621
    :cond_17
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 622
    .line 623
    const/high16 v4, 0x1000000

    .line 624
    .line 625
    and-int/2addr v0, v4

    .line 626
    if-eqz v0, :cond_18

    .line 627
    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    .line 629
    .line 630
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    .line 632
    .line 633
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 634
    .line 635
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    const-string v4, "\u3001\u96f6\u552e\u6f14\u793a"

    .line 639
    .line 640
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 648
    .line 649
    :cond_18
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 650
    .line 651
    const/high16 v4, 0x2000000

    .line 652
    .line 653
    and-int/2addr v0, v4

    .line 654
    if-eqz v0, :cond_19

    .line 655
    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    .line 657
    .line 658
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    .line 660
    .line 661
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 662
    .line 663
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    const-string v4, "\u3001\u6700\u8fd1"

    .line 667
    .line 668
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 676
    .line 677
    :cond_19
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 678
    .line 679
    const/high16 v4, 0x4000000

    .line 680
    .line 681
    and-int/2addr v0, v4

    .line 682
    if-eqz v0, :cond_1a

    .line 683
    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    .line 685
    .line 686
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    .line 688
    .line 689
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 690
    .line 691
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    const-string v4, "\u3001\u89d2\u8272"

    .line 695
    .line 696
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 704
    .line 705
    :cond_1a
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 706
    .line 707
    const/high16 v4, 0x8000000

    .line 708
    .line 709
    and-int/2addr v0, v4

    .line 710
    if-eqz v0, :cond_1b

    .line 711
    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    .line 713
    .line 714
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .line 716
    .line 717
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 718
    .line 719
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    const-string v4, "\u3001\u5df2\u77e5\u7684\u7b7e\u540d\u8005"

    .line 723
    .line 724
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 732
    .line 733
    :cond_1b
    iget v0, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 734
    .line 735
    const/high16 v3, 0x400000

    .line 736
    .line 737
    and-int/2addr v0, v3

    .line 738
    if-eqz v0, :cond_1c

    .line 739
    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    .line 741
    .line 742
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    .line 744
    .line 745
    iget-object v3, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 746
    .line 747
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    const-string v3, "\u3001\u6a21\u5757"

    .line 751
    .line 752
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 760
    .line 761
    :cond_1c
    iget-boolean v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 762
    .line 763
    if-nez v0, :cond_1f

    .line 764
    .line 765
    iget v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    .line 767
    const-string v3, "\u5f00\u53d1\u8005"

    .line 768
    .line 769
    if-ne v0, v2, :cond_1d

    .line 770
    .line 771
    :try_start_1
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 772
    .line 773
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 774
    .line 775
    .line 776
    move-result v0

    .line 777
    if-eqz v0, :cond_1d

    .line 778
    .line 779
    iput-boolean v2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 780
    .line 781
    goto :goto_1

    .line 782
    :cond_1d
    iget v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 783
    .line 784
    if-ne v0, v5, :cond_1e

    .line 785
    .line 786
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 787
    .line 788
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 789
    .line 790
    .line 791
    move-result v0

    .line 792
    if-eqz v0, :cond_1e

    .line 793
    .line 794
    iput-boolean v2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 795
    .line 796
    goto :goto_1

    .line 797
    :cond_1e
    iget v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionType:I

    .line 798
    .line 799
    if-ne v0, v2, :cond_1f

    .line 800
    .line 801
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLevel:Ljava/lang/String;

    .line 802
    .line 803
    const-string v3, "\u5373\u65f6"

    .line 804
    .line 805
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 806
    .line 807
    .line 808
    move-result v0

    .line 809
    if-eqz v0, :cond_1f

    .line 810
    .line 811
    iput-boolean v2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 812
    .line 813
    :cond_1f
    :goto_1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->N:Ljava/util/HashMap;

    .line 814
    .line 815
    iget-object v2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 816
    .line 817
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    check-cast v0, Ljava/lang/String;

    .line 822
    .line 823
    if-eqz v0, :cond_20

    .line 824
    .line 825
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 826
    .line 827
    .line 828
    move-result v2

    .line 829
    if-nez v2, :cond_20

    .line 830
    .line 831
    const-string v2, "----"

    .line 832
    .line 833
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 834
    .line 835
    .line 836
    move-result v2

    .line 837
    const/4 v3, -0x1

    .line 838
    if-eq v2, v3, :cond_20

    .line 839
    .line 840
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    iput-object v0, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 845
    .line 846
    :cond_20
    return-void
.end method

.method public final synthetic y(Lmc/b;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v6, "BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 6
    .line 7
    const-string v7, "REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 8
    .line 9
    const-string v8, "REQUEST_INSTALL_PACKAGES"

    .line 10
    .line 11
    const-string v9, "RUN_ANY_IN_BACKGROUND"

    .line 12
    .line 13
    const-string v10, "RUN_IN_BACKGROUND"

    .line 14
    .line 15
    const/4 v13, 0x4

    .line 16
    const/4 v14, 0x0

    .line 17
    const-string v3, ": "

    .line 18
    .line 19
    :try_start_0
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->K:Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    iget-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->C:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v4, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->K:Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    iget-object v5, v1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->C:Ljava/lang/String;

    .line 30
    .line 31
    const/16 v15, 0x1000

    .line 32
    .line 33
    invoke-virtual {v4, v5, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iput-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->D:Landroid/content/pm/PackageInfo;

    .line 38
    .line 39
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 40
    .line 41
    const/16 v4, 0x3e8

    .line 42
    .line 43
    if-ne v0, v4, :cond_0

    .line 44
    .line 45
    const-string v0, "\u6b64\u5e94\u7528\u62e5\u6709\u6240\u6709\u6743\u9650"

    .line 46
    .line 47
    :goto_0
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    sget-object v0, Lfa/a;->a:Lfa/b;

    .line 52
    .line 53
    invoke-virtual {v0}, Lfa/b;->f()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Lfa/b;->c()Lcom/android/internal/app/IAppOpsService;

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-static {}, Lfa/o0;->a()Lfa/o0;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-boolean v0, v0, Lfa/o0;->a:Z

    .line 68
    .line 69
    const-string v4, "appops"

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-static {}, Lfa/o0;->a()Lfa/o0;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v0, v0, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    new-instance v0, Lhi/c;

    .line 82
    .line 83
    invoke-static {v4}, Lhi/g;->a(Ljava/lang/String;)Landroid/os/IBinder;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-direct {v0, v4}, Lhi/c;-><init>(Landroid/os/IBinder;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_1
    :try_start_1
    iget-object v0, v1, Lda/g;->A:Lda/g;

    .line 110
    .line 111
    invoke-virtual {v0}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const v4, 0x7f120019

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 119
    .line 120
    .line 121
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    .line 123
    .line 124
    new-instance v5, Ljava/io/InputStreamReader;

    .line 125
    .line 126
    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    if-eqz v5, :cond_5

    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v15

    .line 142
    if-nez v15, :cond_4

    .line 143
    .line 144
    iget-object v15, v1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->M:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :goto_3
    move-object v5, v0

    .line 151
    goto :goto_4

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    goto :goto_3

    .line 154
    :cond_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    .line 156
    .line 157
    if-eqz v4, :cond_7

    .line 158
    .line 159
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 160
    .line 161
    .line 162
    goto :goto_6

    .line 163
    :goto_4
    if-eqz v4, :cond_6

    .line 164
    .line 165
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 166
    .line 167
    .line 168
    goto :goto_5

    .line 169
    :catchall_1
    move-exception v0

    .line 170
    move-object v4, v0

    .line 171
    :try_start_5
    invoke-static {v5, v4}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    :cond_6
    :goto_5
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 175
    :catch_0
    :cond_7
    :goto_6
    const/4 v4, -0x1

    .line 176
    :try_start_6
    iget-object v0, v1, Lda/g;->A:Lda/g;

    .line 177
    .line 178
    invoke-virtual {v0}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const v5, 0x7f12001a

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 186
    .line 187
    .line 188
    move-result-object v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 189
    :try_start_7
    new-instance v0, Ljava/io/BufferedReader;

    .line 190
    .line 191
    new-instance v15, Ljava/io/InputStreamReader;

    .line 192
    .line 193
    invoke-direct {v15, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 194
    .line 195
    .line 196
    invoke-direct {v0, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 197
    .line 198
    .line 199
    :goto_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v15

    .line 203
    if-eqz v15, :cond_a

    .line 204
    .line 205
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v16

    .line 209
    if-eqz v16, :cond_8

    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_8
    const-string v11, "----"

    .line 213
    .line 214
    invoke-virtual {v15, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    if-ne v11, v4, :cond_9

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_9
    iget-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->N:Ljava/util/HashMap;

    .line 222
    .line 223
    invoke-virtual {v15, v14, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    add-int/2addr v11, v13

    .line 228
    invoke-virtual {v15, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    invoke-virtual {v4, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    const/4 v4, -0x1

    .line 236
    goto :goto_7

    .line 237
    :goto_8
    move-object v4, v0

    .line 238
    goto :goto_9

    .line 239
    :catchall_2
    move-exception v0

    .line 240
    goto :goto_8

    .line 241
    :cond_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 242
    .line 243
    .line 244
    if-eqz v5, :cond_c

    .line 245
    .line 246
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 247
    .line 248
    .line 249
    goto :goto_b

    .line 250
    :goto_9
    if-eqz v5, :cond_b

    .line 251
    .line 252
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 253
    .line 254
    .line 255
    goto :goto_a

    .line 256
    :catchall_3
    move-exception v0

    .line 257
    move-object v5, v0

    .line 258
    :try_start_a
    invoke-static {v4, v5}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 259
    .line 260
    .line 261
    :cond_b
    :goto_a
    throw v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 262
    :catch_1
    :cond_c
    :goto_b
    :try_start_b
    new-instance v4, Ljava/util/HashMap;

    .line 263
    .line 264
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-static {}, La2/w0;->F()La2/w0;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 277
    .line 278
    .line 279
    move-result-object v11

    .line 280
    iget-boolean v11, v11, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 281
    .line 282
    if-eqz v11, :cond_d

    .line 283
    .line 284
    const-string v11, "cmd "

    .line 285
    .line 286
    goto :goto_c

    .line 287
    :catch_2
    move-exception v0

    .line 288
    goto/16 :goto_1f

    .line 289
    .line 290
    :cond_d
    const-string v11, ""

    .line 291
    .line 292
    :goto_c
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v11, "appops get "

    .line 296
    .line 297
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    iget-object v11, v1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->C:Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    invoke-static {v5}, La2/w0;->p(Ljava/lang/String;)Lfa/a0;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    iget v5, v0, Lfa/a0;->a:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 317
    .line 318
    const-string v11, "USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER"

    .line 319
    .line 320
    const-string v12, "android.permission."

    .line 321
    .line 322
    if-nez v5, :cond_14

    .line 323
    .line 324
    :try_start_c
    iget-object v0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 325
    .line 326
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    if-eqz v5, :cond_14

    .line 335
    .line 336
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    check-cast v5, Ljava/lang/String;

    .line 341
    .line 342
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 343
    .line 344
    .line 345
    move-result v15

    .line 346
    if-nez v15, :cond_e

    .line 347
    .line 348
    goto :goto_d

    .line 349
    :cond_e
    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v15

    .line 353
    array-length v13, v15

    .line 354
    const/4 v14, 0x3

    .line 355
    if-ne v13, v14, :cond_f

    .line 356
    .line 357
    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    move-result v13

    .line 361
    const/4 v14, 0x2

    .line 362
    add-int/2addr v13, v14

    .line 363
    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v15

    .line 371
    :cond_f
    array-length v5, v15

    .line 372
    const/4 v13, 0x2

    .line 373
    if-eq v5, v13, :cond_10

    .line 374
    .line 375
    :goto_e
    const/4 v13, 0x4

    .line 376
    const/4 v14, 0x0

    .line 377
    goto :goto_d

    .line 378
    :cond_10
    const/4 v5, 0x0

    .line 379
    aget-object v13, v15, v5

    .line 380
    .line 381
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 385
    if-eqz v5, :cond_11

    .line 386
    .line 387
    goto :goto_e

    .line 388
    :cond_11
    :try_start_d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    .line 393
    const-string v13, "android:"

    .line 394
    .line 395
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    const/4 v13, 0x0

    .line 399
    aget-object v14, v15, v13

    .line 400
    .line 401
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v13

    .line 405
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    invoke-static {v5}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    move-result v5

    .line 416
    const/4 v13, -0x1

    .line 417
    if-ne v5, v13, :cond_12

    .line 418
    .line 419
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 420
    .line 421
    const/4 v13, 0x0

    .line 422
    aget-object v14, v15, v13

    .line 423
    .line 424
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    goto :goto_e

    .line 428
    :cond_12
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v5

    .line 432
    if-nez v5, :cond_13

    .line 433
    .line 434
    new-instance v5, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    const/4 v13, 0x0

    .line 443
    aget-object v14, v15, v13

    .line 444
    .line 445
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 452
    :cond_13
    const/4 v13, 0x0

    .line 453
    goto :goto_f

    .line 454
    :catch_3
    :try_start_e
    new-instance v5, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const/4 v13, 0x0

    .line 463
    aget-object v14, v15, v13

    .line 464
    .line 465
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    :goto_f
    new-instance v14, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 473
    .line 474
    invoke-direct {v14, v5}, Lcom/yunpan/appmanage/bean/PermissionBean;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    aget-object v15, v15, v13

    .line 478
    .line 479
    iput-object v15, v14, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 480
    .line 481
    invoke-virtual {v1, v14}, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->x(Lcom/yunpan/appmanage/bean/PermissionBean;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v4, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    goto :goto_e

    .line 488
    :cond_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 489
    .line 490
    const-string v3, "\u540e\u53f0\u8fd0\u884c"

    .line 491
    .line 492
    const/16 v5, 0x1c

    .line 493
    .line 494
    if-lt v0, v5, :cond_15

    .line 495
    .line 496
    :try_start_f
    const-string v13, "android.permission.RUN_IN_BACKGROUND"

    .line 497
    .line 498
    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v14

    .line 502
    if-nez v14, :cond_15

    .line 503
    .line 504
    new-instance v14, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 505
    .line 506
    invoke-direct {v14, v3, v13, v10}, Lcom/yunpan/appmanage/bean/PermissionBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    const/4 v15, 0x0

    .line 510
    iput-boolean v15, v14, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 511
    .line 512
    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    :cond_15
    if-lt v0, v5, :cond_16

    .line 516
    .line 517
    const-string v13, "android.permission.RUN_ANY_IN_BACKGROUND"

    .line 518
    .line 519
    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v14

    .line 523
    if-nez v14, :cond_16

    .line 524
    .line 525
    new-instance v14, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 526
    .line 527
    invoke-direct {v14, v3, v13, v9}, Lcom/yunpan/appmanage/bean/PermissionBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    const/4 v3, 0x0

    .line 531
    iput-boolean v3, v14, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 532
    .line 533
    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    :cond_16
    const/16 v3, 0x1a

    .line 537
    .line 538
    if-lt v0, v3, :cond_17

    .line 539
    .line 540
    const-string v0, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 541
    .line 542
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    if-nez v3, :cond_17

    .line 547
    .line 548
    new-instance v3, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 549
    .line 550
    const-string v13, "\u5b89\u88c5\u5e94\u7528"

    .line 551
    .line 552
    invoke-direct {v3, v13, v0, v8}, Lcom/yunpan/appmanage/bean/PermissionBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    const/4 v13, 0x1

    .line 556
    iput-boolean v13, v3, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 557
    .line 558
    iget-object v0, v3, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    :cond_17
    const-string v0, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 564
    .line 565
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    if-nez v3, :cond_18

    .line 570
    .line 571
    new-instance v3, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 572
    .line 573
    const-string v13, "\u5ffd\u7565\u7535\u6c60\u4f18\u5316"

    .line 574
    .line 575
    invoke-direct {v3, v13, v0, v7}, Lcom/yunpan/appmanage/bean/PermissionBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    const/4 v13, 0x0

    .line 579
    iput-boolean v13, v3, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 580
    .line 581
    iget-object v0, v3, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 582
    .line 583
    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    :cond_18
    new-instance v0, Landroid/content/Intent;

    .line 587
    .line 588
    const-string v3, "android.service.notification.NotificationListenerService"

    .line 589
    .line 590
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->K:Landroid/content/pm/PackageManager;

    .line 594
    .line 595
    const/16 v13, 0x80

    .line 596
    .line 597
    invoke-virtual {v3, v0, v13}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    const/4 v3, 0x0

    .line 606
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 607
    .line 608
    .line 609
    move-result v13

    .line 610
    if-eqz v13, :cond_1d

    .line 611
    .line 612
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v13

    .line 616
    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 617
    .line 618
    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 619
    .line 620
    if-nez v14, :cond_19

    .line 621
    .line 622
    goto :goto_11

    .line 623
    :cond_19
    iget-object v15, v1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->C:Ljava/lang/String;

    .line 624
    .line 625
    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 626
    .line 627
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v14

    .line 631
    if-eqz v14, :cond_1b

    .line 632
    .line 633
    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 634
    .line 635
    iget-boolean v14, v14, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 636
    .line 637
    if-nez v14, :cond_1a

    .line 638
    .line 639
    goto :goto_11

    .line 640
    :cond_1a
    iget-object v14, v1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->O:Ljava/util/HashSet;

    .line 641
    .line 642
    new-instance v15, Ljava/lang/StringBuilder;

    .line 643
    .line 644
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    .line 646
    .line 647
    iget-object v5, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 648
    .line 649
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 650
    .line 651
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    const-string v5, "/"

    .line 655
    .line 656
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    iget-object v5, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 660
    .line 661
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 662
    .line 663
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v5

    .line 670
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 671
    .line 672
    .line 673
    move-result-object v5

    .line 674
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v5

    .line 678
    invoke-virtual {v14, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    if-eqz v3, :cond_1c

    .line 682
    .line 683
    :cond_1b
    :goto_11
    const/16 v5, 0x1c

    .line 684
    .line 685
    goto :goto_10

    .line 686
    :cond_1c
    new-instance v3, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 687
    .line 688
    const-string v5, "\u901a\u77e5\u4f7f\u7528\u6743"

    .line 689
    .line 690
    const-string v13, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 691
    .line 692
    invoke-direct {v3, v5, v13, v6}, Lcom/yunpan/appmanage/bean/PermissionBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 696
    .line 697
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    const/4 v3, 0x1

    .line 701
    goto :goto_11

    .line 702
    :cond_1d
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->D:Landroid/content/pm/PackageInfo;

    .line 703
    .line 704
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 705
    .line 706
    if-eqz v3, :cond_28

    .line 707
    .line 708
    array-length v5, v3

    .line 709
    const/4 v13, 0x0

    .line 710
    :goto_12
    if-ge v13, v5, :cond_28

    .line 711
    .line 712
    aget-object v0, v3, v13

    .line 713
    .line 714
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 715
    .line 716
    .line 717
    move-result v14

    .line 718
    if-nez v14, :cond_1e

    .line 719
    .line 720
    :goto_13
    const/4 v14, 0x1

    .line 721
    const/4 v15, -0x1

    .line 722
    goto/16 :goto_18

    .line 723
    .line 724
    :cond_1e
    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 725
    .line 726
    .line 727
    move-result v14

    .line 728
    if-eqz v14, :cond_1f

    .line 729
    .line 730
    goto :goto_13

    .line 731
    :cond_1f
    const-string v14, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 732
    .line 733
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    move-result v14

    .line 737
    if-eqz v14, :cond_20

    .line 738
    .line 739
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 740
    .line 741
    const/16 v15, 0x1e

    .line 742
    .line 743
    if-ge v14, v15, :cond_20

    .line 744
    .line 745
    goto :goto_13

    .line 746
    :cond_20
    const-string v14, "android.permission.READ_MEDIA_IMAGES"

    .line 747
    .line 748
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 749
    .line 750
    .line 751
    move-result v14

    .line 752
    if-eqz v14, :cond_21

    .line 753
    .line 754
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 755
    .line 756
    const/16 v15, 0x21

    .line 757
    .line 758
    if-ge v14, v15, :cond_21

    .line 759
    .line 760
    goto :goto_13

    .line 761
    :cond_21
    const-string v14, "android.permission.PACKAGE_USAGE_STATS"

    .line 762
    .line 763
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v14

    .line 767
    if-eqz v14, :cond_23

    .line 768
    .line 769
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 770
    .line 771
    const/16 v15, 0x17

    .line 772
    .line 773
    if-ge v14, v15, :cond_22

    .line 774
    .line 775
    goto :goto_13

    .line 776
    :cond_22
    const/16 v15, 0x1c

    .line 777
    .line 778
    goto :goto_14

    .line 779
    :cond_23
    const-string v14, "android.permission.FOREGROUND_SERVICE"

    .line 780
    .line 781
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 782
    .line 783
    .line 784
    move-result v14

    .line 785
    if-eqz v14, :cond_22

    .line 786
    .line 787
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 788
    .line 789
    const/16 v15, 0x1c

    .line 790
    .line 791
    if-ge v14, v15, :cond_24

    .line 792
    .line 793
    goto :goto_13

    .line 794
    :cond_24
    :goto_14
    :try_start_10
    new-instance v14, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 795
    .line 796
    invoke-direct {v14}, Lcom/yunpan/appmanage/bean/PermissionBean;-><init>()V

    .line 797
    .line 798
    .line 799
    iput-object v0, v14, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 800
    .line 801
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 802
    .line 803
    .line 804
    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 805
    const/4 v15, -0x1

    .line 806
    if-eq v0, v15, :cond_25

    .line 807
    .line 808
    :try_start_11
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    iput-object v0, v14, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 817
    .line 818
    goto :goto_15

    .line 819
    :catchall_4
    move-exception v0

    .line 820
    goto :goto_17

    .line 821
    :cond_25
    :goto_15
    invoke-virtual {v1, v14}, Lcom/yunpan/appmanage/ui/ActivityAppsPermissionsAllow;->x(Lcom/yunpan/appmanage/bean/PermissionBean;)V

    .line 822
    .line 823
    .line 824
    iget-object v0, v14, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 825
    .line 826
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    if-eqz v0, :cond_26

    .line 831
    .line 832
    :goto_16
    const/4 v14, 0x1

    .line 833
    goto :goto_18

    .line 834
    :cond_26
    iget-object v0, v14, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 835
    .line 836
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 837
    .line 838
    .line 839
    move-result v0

    .line 840
    if-eqz v0, :cond_27

    .line 841
    .line 842
    iget-boolean v0, v14, Lcom/yunpan/appmanage/bean/PermissionBean;->canPMS:Z

    .line 843
    .line 844
    if-nez v0, :cond_27

    .line 845
    .line 846
    goto :goto_16

    .line 847
    :cond_27
    iget-object v0, v14, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 848
    .line 849
    invoke-virtual {v4, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 850
    .line 851
    .line 852
    goto :goto_16

    .line 853
    :catchall_5
    move-exception v0

    .line 854
    const/4 v15, -0x1

    .line 855
    :goto_17
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 856
    .line 857
    .line 858
    goto :goto_16

    .line 859
    :goto_18
    add-int/2addr v13, v14

    .line 860
    goto/16 :goto_12

    .line 861
    .line 862
    :cond_28
    new-instance v0, Ljava/util/ArrayList;

    .line 863
    .line 864
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 865
    .line 866
    .line 867
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 868
    .line 869
    const/16 v5, 0x18

    .line 870
    .line 871
    if-lt v3, v5, :cond_29

    .line 872
    .line 873
    new-instance v3, Lua/n0;

    .line 874
    .line 875
    invoke-direct {v3, v0}, Lua/n0;-><init>(Ljava/util/ArrayList;)V

    .line 876
    .line 877
    .line 878
    invoke-static {v4, v3}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    .line 879
    .line 880
    .line 881
    goto :goto_1a

    .line 882
    :cond_29
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 883
    .line 884
    .line 885
    move-result-object v3

    .line 886
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 887
    .line 888
    .line 889
    move-result-object v3

    .line 890
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 891
    .line 892
    .line 893
    move-result v4

    .line 894
    if-eqz v4, :cond_2a

    .line 895
    .line 896
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v4

    .line 900
    check-cast v4, Ljava/util/Map$Entry;

    .line 901
    .line 902
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v4

    .line 906
    check-cast v4, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 907
    .line 908
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    .line 910
    .line 911
    goto :goto_19

    .line 912
    :cond_2a
    :goto_1a
    new-instance v3, Lqa/e;

    .line 913
    .line 914
    const/16 v4, 0x13

    .line 915
    .line 916
    invoke-direct {v3, v4}, Lqa/e;-><init>(I)V

    .line 917
    .line 918
    .line 919
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 920
    .line 921
    .line 922
    const/16 v3, 0x18

    .line 923
    .line 924
    new-array v4, v3, [Ljava/lang/String;

    .line 925
    .line 926
    const/4 v3, 0x0

    .line 927
    aput-object v9, v4, v3

    .line 928
    .line 929
    const/4 v3, 0x1

    .line 930
    aput-object v10, v4, v3

    .line 931
    .line 932
    const-string v3, "FOREGROUND_SERVICE"

    .line 933
    .line 934
    const/4 v5, 0x2

    .line 935
    aput-object v3, v4, v5

    .line 936
    .line 937
    const-string v3, "START_FOREGROUND"

    .line 938
    .line 939
    const/4 v5, 0x3

    .line 940
    aput-object v3, v4, v5

    .line 941
    .line 942
    const-string v3, "WRITE_CLIPBOARD"

    .line 943
    .line 944
    const/4 v5, 0x4

    .line 945
    aput-object v3, v4, v5

    .line 946
    .line 947
    const-string v3, "READ_CLIPBOARD"

    .line 948
    .line 949
    const/4 v5, 0x5

    .line 950
    aput-object v3, v4, v5

    .line 951
    .line 952
    const-string v3, "PACKAGE_USAGE_STATS"

    .line 953
    .line 954
    const/4 v5, 0x6

    .line 955
    aput-object v3, v4, v5

    .line 956
    .line 957
    const-string v3, "REQUEST_DELETE_PACKAGES"

    .line 958
    .line 959
    const/4 v5, 0x7

    .line 960
    aput-object v3, v4, v5

    .line 961
    .line 962
    const/16 v3, 0x8

    .line 963
    .line 964
    aput-object v8, v4, v3

    .line 965
    .line 966
    const-string v3, "QUERY_ALL_PACKAGES"

    .line 967
    .line 968
    const/16 v5, 0x9

    .line 969
    .line 970
    aput-object v3, v4, v5

    .line 971
    .line 972
    const-string v3, "SYSTEM_ALERT_WINDOW"

    .line 973
    .line 974
    const/16 v5, 0xa

    .line 975
    .line 976
    aput-object v3, v4, v5

    .line 977
    .line 978
    const-string v3, "WRITE_MEDIA_VIDEO"

    .line 979
    .line 980
    const/16 v5, 0xb

    .line 981
    .line 982
    aput-object v3, v4, v5

    .line 983
    .line 984
    const-string v3, "READ_MEDIA_VIDEO"

    .line 985
    .line 986
    const/16 v5, 0xc

    .line 987
    .line 988
    aput-object v3, v4, v5

    .line 989
    .line 990
    const-string v3, "WRITE_MEDIA_AUDIO"

    .line 991
    .line 992
    const/16 v5, 0xd

    .line 993
    .line 994
    aput-object v3, v4, v5

    .line 995
    .line 996
    const-string v3, "READ_MEDIA_AUDIO"

    .line 997
    .line 998
    const/16 v5, 0xe

    .line 999
    .line 1000
    aput-object v3, v4, v5

    .line 1001
    .line 1002
    const-string v3, "WRITE_MEDIA_IMAGES"

    .line 1003
    .line 1004
    const/16 v5, 0xf

    .line 1005
    .line 1006
    aput-object v3, v4, v5

    .line 1007
    .line 1008
    const-string v3, "READ_MEDIA_IMAGES"

    .line 1009
    .line 1010
    const/16 v5, 0x10

    .line 1011
    .line 1012
    aput-object v3, v4, v5

    .line 1013
    .line 1014
    const-string v3, "NO_ISOLATED_STORAGE"

    .line 1015
    .line 1016
    const/16 v5, 0x11

    .line 1017
    .line 1018
    aput-object v3, v4, v5

    .line 1019
    .line 1020
    const-string v3, "LEGACY_STORAGE"

    .line 1021
    .line 1022
    const/16 v5, 0x12

    .line 1023
    .line 1024
    aput-object v3, v4, v5

    .line 1025
    .line 1026
    const-string v3, "MANAGE_EXTERNAL_STORAGE"

    .line 1027
    .line 1028
    const/16 v5, 0x13

    .line 1029
    .line 1030
    aput-object v3, v4, v5

    .line 1031
    .line 1032
    const-string v3, "WRITE_EXTERNAL_STORAGE"

    .line 1033
    .line 1034
    const/16 v5, 0x14

    .line 1035
    .line 1036
    aput-object v3, v4, v5

    .line 1037
    .line 1038
    const-string v3, "READ_EXTERNAL_STORAGE"

    .line 1039
    .line 1040
    const/16 v5, 0x15

    .line 1041
    .line 1042
    aput-object v3, v4, v5

    .line 1043
    .line 1044
    const/16 v3, 0x16

    .line 1045
    .line 1046
    aput-object v6, v4, v3

    .line 1047
    .line 1048
    const/16 v3, 0x17

    .line 1049
    .line 1050
    aput-object v7, v4, v3

    .line 1051
    .line 1052
    const/16 v3, 0x18

    .line 1053
    .line 1054
    const/4 v5, 0x0

    .line 1055
    :goto_1b
    if-ge v5, v3, :cond_2d

    .line 1056
    .line 1057
    aget-object v6, v4, v5

    .line 1058
    .line 1059
    const/4 v7, 0x0

    .line 1060
    :goto_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1061
    .line 1062
    .line 1063
    move-result v8

    .line 1064
    if-ge v7, v8, :cond_2c

    .line 1065
    .line 1066
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v8

    .line 1070
    check-cast v8, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 1071
    .line 1072
    iget-object v8, v8, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 1073
    .line 1074
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1075
    .line 1076
    .line 1077
    move-result v8

    .line 1078
    if-eqz v8, :cond_2b

    .line 1079
    .line 1080
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v6

    .line 1084
    check-cast v6, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 1085
    .line 1086
    const/4 v8, 0x0

    .line 1087
    invoke-virtual {v0, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1088
    .line 1089
    .line 1090
    :goto_1d
    const/4 v9, 0x1

    .line 1091
    goto :goto_1e

    .line 1092
    :cond_2b
    const/4 v8, 0x0

    .line 1093
    const/4 v9, 0x1

    .line 1094
    add-int/2addr v7, v9

    .line 1095
    goto :goto_1c

    .line 1096
    :cond_2c
    const/4 v8, 0x0

    .line 1097
    goto :goto_1d

    .line 1098
    :goto_1e
    add-int/2addr v5, v9

    .line 1099
    goto :goto_1b

    .line 1100
    :cond_2d
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    .line 1104
    .line 1105
    .line 1106
    goto :goto_20

    .line 1107
    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1108
    .line 1109
    .line 1110
    new-instance v0, Ljava/lang/Exception;

    .line 1111
    .line 1112
    const-string v3, "\u83b7\u53d6\u6743\u9650\u4fe1\u606f\u5931\u8d25"

    .line 1113
    .line 1114
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1118
    .line 1119
    .line 1120
    :goto_20
    return-void

    .line 1121
    :catch_4
    const-string v0, "\u83b7\u53d6\u5e94\u7528\u4fe1\u606f\u51fa\u9519"

    .line 1122
    .line 1123
    goto/16 :goto_0
.end method
