.class public final Lfa/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Lv9/i;

.field public d:Z

.field public e:Z

.field public f:Loa/d;

.field public final g:Lcom/yunpan/appmanage/carsdk/f;

.field public h:Lgh/a;

.field public i:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lfa/e;->a:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lfa/e;->c:Lv9/i;

    .line 9
    .line 10
    iput-boolean v0, p0, Lfa/e;->d:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lfa/e;->e:Z

    .line 13
    .line 14
    iput-object v1, p0, Lfa/e;->f:Loa/d;

    .line 15
    .line 16
    new-instance v0, Lcom/yunpan/appmanage/carsdk/f;

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    invoke-direct {v0, v2, p0}, Lcom/yunpan/appmanage/carsdk/f;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lfa/e;->g:Lcom/yunpan/appmanage/carsdk/f;

    .line 23
    .line 24
    iput-object v1, p0, Lfa/e;->h:Lgh/a;

    .line 25
    .line 26
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    iput-wide v0, p0, Lfa/e;->i:J

    .line 29
    .line 30
    return-void
.end method

.method public static a(Lcom/yunpan/appmanage/service/AccService;)Ljava/util/HashSet;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lqf/c;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Lqf/c;->r(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/yunpan/appmanage/bean/DesktopBean;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    const-string p0, "com.google.android.leanback.ime"

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    const-string p0, "android.ext.services"

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method public static b(Lcom/yunpan/appmanage/service/AccService;)Ljava/util/HashSet;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 32
    .line 33
    and-int/2addr v3, v1

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-object v0
.end method

.method public static c(Lcom/yunpan/appmanage/service/AccService;)Ljava/util/HashSet;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "activity"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/ActivityManager;

    .line 13
    .line 14
    const v1, 0x7fffffff

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 37
    .line 38
    iget v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 39
    .line 40
    if-ge v4, v3, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 72
    .line 73
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 74
    .line 75
    if-ge v2, v3, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 79
    .line 80
    const-string v2, ":"

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    const/4 v5, 0x0

    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    aget-object v1, v1, v5

    .line 94
    .line 95
    :cond_3
    const-string v2, "@"

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_4

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    aget-object v1, v1, v5

    .line 108
    .line 109
    :cond_4
    const-string v2, "."

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-nez v2, :cond_5

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_6
    return-object v0
.end method

.method public static e()Lfa/e;
    .locals 1

    .line 1
    sget-object v0, Lfa/d;->a:Lfa/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public static f(Lcom/yunpan/appmanage/service/AccService;)V
    .locals 17

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x1

    .line 3
    invoke-static/range {p0 .. p0}, Lfa/e;->a(Lcom/yunpan/appmanage/service/AccService;)Ljava/util/HashSet;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    invoke-static/range {p0 .. p0}, Lfa/e;->b(Lcom/yunpan/appmanage/service/AccService;)Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v5, "android.permission.DEVICE_POWER"

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-string v5, "\'"

    .line 26
    .line 27
    const-string v6, "am force-stop \'"

    .line 28
    .line 29
    const-string v7, "android.hardware."

    .line 30
    .line 31
    const-string v8, "com.android."

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    if-nez v0, :cond_5

    .line 35
    .line 36
    invoke-static/range {p0 .. p0}, Lfa/e;->c(Lcom/yunpan/appmanage/service/AccService;)Ljava/util/HashSet;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_4

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    if-eqz v10, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-eqz v10, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    sget-object v10, Lwa/t;->a:Lwa/u;

    .line 71
    .line 72
    iget-object v10, v10, Lwa/u;->w:Ljava/util/HashSet;

    .line 73
    .line 74
    invoke-virtual {v10, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    if-eqz v10, :cond_2

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    if-eqz v10, :cond_3

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 89
    .line 90
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    new-instance v10, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    new-array v10, v2, [Ljava/lang/String;

    .line 109
    .line 110
    aput-object v4, v10, v1

    .line 111
    .line 112
    invoke-static {v10}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v4, v9}, Ls1/g;->e0(Lua/i6;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    :goto_1
    const/4 v10, 0x0

    .line 121
    goto/16 :goto_8

    .line 122
    .line 123
    :cond_5
    new-instance v10, Ljava/util/HashSet;

    .line 124
    .line 125
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 126
    .line 127
    .line 128
    new-array v0, v2, [Ljava/lang/String;

    .line 129
    .line 130
    const-string v11, "ps -A"

    .line 131
    .line 132
    aput-object v11, v0, v1

    .line 133
    .line 134
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    const/16 v12, 0x14

    .line 151
    .line 152
    if-ge v11, v12, :cond_6

    .line 153
    .line 154
    new-array v0, v2, [Ljava/lang/String;

    .line 155
    .line 156
    const-string v11, "ps"

    .line 157
    .line 158
    aput-object v11, v0, v1

    .line 159
    .line 160
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    :cond_6
    invoke-virtual {v0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v11

    .line 172
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    const-string v13, "."

    .line 177
    .line 178
    const-string v14, "@"

    .line 179
    .line 180
    const-string v15, " "

    .line 181
    .line 182
    const-string v9, ":"

    .line 183
    .line 184
    const/4 v1, -0x1

    .line 185
    if-le v11, v12, :cond_d

    .line 186
    .line 187
    invoke-virtual {v0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v11

    .line 199
    if-eqz v11, :cond_16

    .line 200
    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    check-cast v11, Ljava/lang/String;

    .line 206
    .line 207
    const-string v12, "]"

    .line 208
    .line 209
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v12

    .line 213
    if-eqz v12, :cond_7

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_7
    const-string v12, "u"

    .line 217
    .line 218
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    if-nez v12, :cond_8

    .line 223
    .line 224
    const-string v12, "system"

    .line 225
    .line 226
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v12

    .line 230
    if-nez v12, :cond_8

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_8
    invoke-virtual {v11, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result v12

    .line 237
    if-ne v12, v1, :cond_9

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_9
    add-int/2addr v12, v2

    .line 241
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v11

    .line 245
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v11

    .line 249
    invoke-virtual {v11, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    move-result v12

    .line 253
    const/4 v2, 0x0

    .line 254
    if-eq v12, v1, :cond_a

    .line 255
    .line 256
    invoke-virtual {v11, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v11

    .line 260
    :cond_a
    invoke-virtual {v11, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    move-result v12

    .line 264
    if-eq v12, v1, :cond_b

    .line 265
    .line 266
    invoke-virtual {v11, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v11

    .line 270
    :cond_b
    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-nez v2, :cond_c

    .line 275
    .line 276
    :goto_3
    const/4 v2, 0x1

    .line 277
    goto :goto_2

    .line 278
    :cond_c
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {v10, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_d
    new-array v0, v2, [Ljava/lang/String;

    .line 287
    .line 288
    const-string v11, "dumpsys -t 30000 meminfo"

    .line 289
    .line 290
    const/16 v16, 0x0

    .line 291
    .line 292
    aput-object v11, v0, v16

    .line 293
    .line 294
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 303
    .line 304
    .line 305
    move-result-object v11

    .line 306
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 307
    .line 308
    .line 309
    move-result v11

    .line 310
    if-ge v11, v12, :cond_e

    .line 311
    .line 312
    new-array v0, v2, [Ljava/lang/String;

    .line 313
    .line 314
    const-string v2, "dumpsys meminfo"

    .line 315
    .line 316
    aput-object v2, v0, v16

    .line 317
    .line 318
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    :cond_e
    :try_start_0
    invoke-virtual {v0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v0}, Landroidx/room/s;->j()Ljava/util/List;

    .line 331
    .line 332
    .line 333
    move-result-object v11

    .line 334
    invoke-interface {v2, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-eqz v2, :cond_16

    .line 350
    .line 351
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    check-cast v2, Ljava/lang/String;

    .line 356
    .line 357
    const-string v11, ")"

    .line 358
    .line 359
    invoke-virtual {v2, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 360
    .line 361
    .line 362
    move-result v11

    .line 363
    if-nez v11, :cond_f

    .line 364
    .line 365
    goto :goto_4

    .line 366
    :cond_f
    const-string v11, "pid"

    .line 367
    .line 368
    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 369
    .line 370
    .line 371
    move-result v11

    .line 372
    if-nez v11, :cond_10

    .line 373
    .line 374
    goto :goto_4

    .line 375
    :cond_10
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    move-result v11

    .line 379
    if-ne v11, v1, :cond_11

    .line 380
    .line 381
    goto :goto_4

    .line 382
    :cond_11
    const/4 v12, 0x1

    .line 383
    add-int/2addr v11, v12

    .line 384
    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-virtual {v2, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    move-result v11

    .line 396
    if-ne v11, v1, :cond_12

    .line 397
    .line 398
    goto :goto_4

    .line 399
    :cond_12
    const/4 v12, 0x0

    .line 400
    invoke-virtual {v2, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    move-result v11

    .line 408
    if-eq v11, v1, :cond_13

    .line 409
    .line 410
    invoke-virtual {v2, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    goto :goto_5

    .line 415
    :catch_0
    move-exception v0

    .line 416
    goto :goto_6

    .line 417
    :cond_13
    :goto_5
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    move-result v11

    .line 421
    if-eq v11, v1, :cond_14

    .line 422
    .line 423
    invoke-virtual {v2, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    :cond_14
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 428
    .line 429
    .line 430
    move-result v11

    .line 431
    if-nez v11, :cond_15

    .line 432
    .line 433
    goto :goto_4

    .line 434
    :cond_15
    invoke-virtual {v10, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .line 436
    .line 437
    goto :goto_4

    .line 438
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 439
    .line 440
    .line 441
    :cond_16
    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_1c

    .line 450
    .line 451
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    check-cast v1, Ljava/lang/String;

    .line 456
    .line 457
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    if-eqz v2, :cond_17

    .line 462
    .line 463
    goto :goto_7

    .line 464
    :cond_17
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    if-eqz v2, :cond_18

    .line 469
    .line 470
    goto :goto_7

    .line 471
    :cond_18
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 472
    .line 473
    iget-object v2, v2, Lwa/u;->w:Ljava/util/HashSet;

    .line 474
    .line 475
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    if-eqz v2, :cond_19

    .line 480
    .line 481
    goto :goto_7

    .line 482
    :cond_19
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    if-eqz v2, :cond_1a

    .line 487
    .line 488
    goto :goto_7

    .line 489
    :cond_1a
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    if-eqz v2, :cond_1b

    .line 494
    .line 495
    goto :goto_7

    .line 496
    :cond_1b
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 497
    .line 498
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 499
    .line 500
    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    const/4 v2, 0x1

    .line 517
    new-array v9, v2, [Ljava/lang/String;

    .line 518
    .line 519
    const/4 v10, 0x0

    .line 520
    aput-object v1, v9, v10

    .line 521
    .line 522
    invoke-static {v9}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    const/4 v9, 0x0

    .line 527
    invoke-virtual {v1, v9}, Ls1/g;->e0(Lua/i6;)V

    .line 528
    .line 529
    .line 530
    goto :goto_7

    .line 531
    :cond_1c
    const/4 v2, 0x1

    .line 532
    const/4 v9, 0x0

    .line 533
    goto/16 :goto_1

    .line 534
    .line 535
    :goto_8
    new-array v0, v2, [Ljava/lang/String;

    .line 536
    .line 537
    const-string v1, "am kill-all"

    .line 538
    .line 539
    aput-object v1, v0, v10

    .line 540
    .line 541
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-virtual {v0, v9}, Ls1/g;->e0(Lua/i6;)V

    .line 546
    .line 547
    .line 548
    return-void
.end method

.method public static g(Lcom/yunpan/appmanage/service/AccService;)V
    .locals 6

    .line 1
    invoke-static {p0}, Lfa/e;->a(Lcom/yunpan/appmanage/service/AccService;)Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v1, v0, [Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "dumpsys activity all | grep ACTIVITY"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 12
    .line 13
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lv9/e;->l0()Landroidx/room/s;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroidx/room/s;->k()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_6

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/String;

    .line 40
    .line 41
    const-string v4, "/"

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/16 v5, 0xf

    .line 48
    .line 49
    if-ge v4, v5, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v4, " "

    .line 57
    .line 58
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/4 v5, 0x5

    .line 63
    if-ge v4, v5, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v4, "com.android."

    .line 75
    .line 76
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_2

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const-string v4, "android.hardware."

    .line 84
    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_4

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    sget-object v4, Lwa/t;->a:Lwa/u;

    .line 100
    .line 101
    iget-object v4, v4, Lwa/u;->w:Ljava/util/HashSet;

    .line 102
    .line 103
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_5

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_5
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v5, "am force-stop \'"

    .line 118
    .line 119
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v2, "\'"

    .line 126
    .line 127
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    new-array v4, v0, [Ljava/lang/String;

    .line 135
    .line 136
    aput-object v2, v4, v3

    .line 137
    .line 138
    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const/4 v4, 0x0

    .line 143
    invoke-virtual {v2, v4}, Ls1/g;->e0(Lua/i6;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_6
    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lfa/e;->b:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x4

    .line 30
    if-ge v1, v2, :cond_1

    .line 31
    .line 32
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-lez v1, :cond_1

    .line 59
    .line 60
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iput-object v1, p0, Lfa/e;->b:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_1

    .line 93
    .line 94
    iget-object v0, p0, Lfa/e;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    return-object v0

    .line 97
    :catch_0
    nop

    .line 98
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    .line 100
    const/16 v2, 0x13

    .line 101
    .line 102
    if-lt v1, v2, :cond_3

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    new-array v1, v1, [Ljava/lang/String;

    .line 106
    .line 107
    const-string v2, "ls -l /sdcard"

    .line 108
    .line 109
    aput-object v2, v1, v0

    .line 110
    .line 111
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lv9/e;->l0()Landroidx/room/s;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Landroidx/room/s;->k()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v1}, Landroidx/room/s;->q()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_3

    .line 132
    .line 133
    const-string v1, "storage/"

    .line 134
    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_3

    .line 140
    .line 141
    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iput-object v1, p0, Lfa/e;->b:Ljava/lang/String;

    .line 150
    .line 151
    const-string v2, "]"

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_2

    .line 158
    .line 159
    iget-object v1, p0, Lfa/e;->b:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iput-object v0, p0, Lfa/e;->b:Ljava/lang/String;

    .line 170
    .line 171
    :cond_2
    iget-object v0, p0, Lfa/e;->b:Ljava/lang/String;

    .line 172
    .line 173
    const-string v1, "/"

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_3

    .line 180
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v1, p0, Lfa/e;->b:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iput-object v0, p0, Lfa/e;->b:Ljava/lang/String;

    .line 196
    .line 197
    :cond_3
    iget-object v0, p0, Lfa/e;->b:Ljava/lang/String;

    .line 198
    .line 199
    if-nez v0, :cond_5

    .line 200
    .line 201
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const-string v1, "mounted"

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_4

    .line 212
    .line 213
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    iput-object v0, p0, Lfa/e;->b:Ljava/lang/String;

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_4
    const-string v0, ""

    .line 225
    .line 226
    iput-object v0, p0, Lfa/e;->b:Ljava/lang/String;

    .line 227
    .line 228
    :cond_5
    :goto_0
    iget-object v0, p0, Lfa/e;->b:Ljava/lang/String;

    .line 229
    .line 230
    return-object v0
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lfa/e;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lfa/e;->e:Z

    .line 8
    .line 9
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->p:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v1, 0x18

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 22
    .line 23
    iget-boolean v0, v0, Lfa/o0;->h:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lii/a;->a(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-static {v0}, Lrikka/shizuku/ShizukuProvider;->a(Z)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 41
    .line 42
    invoke-static {v0}, Lrikka/shizuku/ShizukuProvider;->b(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lfg/b;

    .line 46
    .line 47
    new-instance v1, Lcom/gj/server/a;

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-direct {v1, v2}, Lcom/gj/server/a;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1, v2}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 54
    .line 55
    .line 56
    :cond_1
    new-instance v0, Lfg/b;

    .line 57
    .line 58
    new-instance v1, Lfa/c;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-direct {v1, p0, v2}, Lfa/c;-><init>(Lfa/e;I)V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-direct {v0, v1, v2}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 69
    .line 70
    .line 71
    iget-boolean v0, p0, Lfa/e;->d:Z

    .line 72
    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    new-instance v0, Lfg/b;

    .line 76
    .line 77
    new-instance v1, Lfa/c;

    .line 78
    .line 79
    const/4 v2, 0x1

    .line 80
    invoke-direct {v1, p0, v2}, Lfa/c;-><init>(Lfa/e;I)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v1, v2}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    .line 88
    .line 89
    :cond_2
    return-void
.end method

.method public final i()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lfa/e;->g:Lcom/yunpan/appmanage/carsdk/f;

    .line 3
    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v3, 0x1d

    .line 7
    .line 8
    if-ge v2, v3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, "/EnableAccSeccompRoot"

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    sget-object v2, Lfa/a;->a:Lfa/b;

    .line 46
    .line 47
    invoke-virtual {v2}, Lfa/b;->f()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    const/4 v3, 0x0

    .line 55
    :try_start_0
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 56
    .line 57
    new-instance v5, Landroid/content/Intent;

    .line 58
    .line 59
    sget-object v6, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 60
    .line 61
    const-class v7, Lcom/yunpan/appmanage/magica/MagicaService;

    .line 62
    .line 63
    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .line 65
    .line 66
    sget-object v6, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 67
    .line 68
    invoke-static {v6}, Landroidx/emoji2/text/b;->q(Lcom/yunpan/appmanage/base/AppStart;)Ljava/util/concurrent/Executor;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-static {v4, v5, v6, v1}, La2/c;->p(Lcom/yunpan/appmanage/base/AppStart;Landroid/content/Intent;Ljava/util/concurrent/Executor;Lcom/yunpan/appmanage/carsdk/f;)V

    .line 73
    .line 74
    .line 75
    const-wide/16 v4, 0x320

    .line 76
    .line 77
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 78
    .line 79
    .line 80
    iget-object v4, p0, Lfa/e;->f:Loa/d;

    .line 81
    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    iput-boolean v0, p0, Lfa/e;->a:Z

    .line 85
    .line 86
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 87
    .line 88
    iget-object v4, v4, Lcom/yunpan/appmanage/base/AppStart;->a:Lv9/a;

    .line 89
    .line 90
    new-instance v5, Loa/g;

    .line 91
    .line 92
    iget-object v6, p0, Lfa/e;->f:Loa/d;

    .line 93
    .line 94
    invoke-interface {v6}, Loa/d;->f()Loa/b;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-direct {v5, v6}, Loa/g;-><init>(Loa/b;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v5}, Lv9/a;->b(Ljava/lang/Process;)Lv9/i;

    .line 102
    .line 103
    .line 104
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 105
    .line 106
    invoke-static {v4}, Lfa/b;->a(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    new-array v0, v0, [Ljava/lang/String;

    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    aput-object v4, v0, v5

    .line 114
    .line 115
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0, v3}, Ls1/g;->e0(Lua/i6;)V

    .line 120
    .line 121
    .line 122
    const-wide/16 v4, 0x190

    .line 123
    .line 124
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Lfa/b;->f()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/yunpan/appmanage/base/AppStart;->a:Lv9/a;

    .line 136
    .line 137
    new-instance v4, Loa/g;

    .line 138
    .line 139
    iget-object v2, v2, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 140
    .line 141
    invoke-interface {v2}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getNewProcess()Loa/b;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-direct {v4, v2}, Loa/g;-><init>(Loa/b;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v4}, Lv9/a;->b(Ljava/lang/Process;)Lv9/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    .line 155
    .line 156
    :cond_3
    :goto_0
    :try_start_1
    iput-object v3, p0, Lfa/e;->f:Loa/d;

    .line 157
    .line 158
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    .line 162
    .line 163
    :catch_1
    return-void
.end method

.method public final j()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "uid=0(root"

    .line 4
    .line 5
    :try_start_0
    new-instance v3, Lgh/a;

    .line 6
    .line 7
    invoke-direct {v3}, Lgh/a;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v3, p0, Lfa/e;->h:Lgh/a;

    .line 11
    .line 12
    const/16 v4, 0x7d0

    .line 13
    .line 14
    iput v4, v3, Lch/d;->a:I

    .line 15
    .line 16
    const-string v4, ""

    .line 17
    .line 18
    const/16 v5, 0x17

    .line 19
    .line 20
    invoke-virtual {v3, v4, v5}, Lch/d;->c(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lfa/e;->h:Lgh/a;

    .line 24
    .line 25
    iget-object v4, v3, Lgh/a;->r:Ljava/io/BufferedInputStream;

    .line 26
    .line 27
    iget-object v3, v3, Lgh/a;->s:Lgh/c;

    .line 28
    .line 29
    const-string v5, "id\n"

    .line 30
    .line 31
    sget-object v6, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v3, v5}, Lgh/c;->write([B)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lgh/c;->flush()V

    .line 41
    .line 42
    .line 43
    const-wide/16 v5, 0x14d

    .line 44
    .line 45
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    iput-wide v5, p0, Lfa/e;->i:J

    .line 53
    .line 54
    new-instance v5, Lfg/b;

    .line 55
    .line 56
    new-instance v6, Lfa/c;

    .line 57
    .line 58
    const/4 v7, 0x2

    .line 59
    invoke-direct {v6, p0, v7}, Lfa/c;-><init>(Lfa/e;I)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v5, v6, v1}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 66
    .line 67
    .line 68
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 69
    .line 70
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 71
    .line 72
    .line 73
    const/16 v6, 0x400

    .line 74
    .line 75
    new-array v6, v6, [B

    .line 76
    .line 77
    :goto_0
    iget-object v7, p0, Lfa/e;->h:Lgh/a;

    .line 78
    .line 79
    invoke-virtual {v7}, Lch/d;->f()Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_0

    .line 84
    .line 85
    if-eqz v4, :cond_0

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    .line 88
    .line 89
    .line 90
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-lez v7, :cond_0

    .line 92
    .line 93
    :try_start_1
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    .line 94
    .line 95
    .line 96
    move-result v7
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    goto :goto_1

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    goto/16 :goto_3

    .line 100
    .line 101
    :catch_0
    nop

    .line 102
    goto/16 :goto_4

    .line 103
    .line 104
    :catch_1
    nop

    .line 105
    const/4 v7, 0x0

    .line 106
    :goto_1
    if-lez v7, :cond_0

    .line 107
    .line 108
    :try_start_2
    invoke-virtual {v5, v6, v0, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    new-instance v4, Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    sget-object v7, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 119
    .line 120
    invoke-direct {v4, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 124
    .line 125
    .line 126
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 127
    .line 128
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_1

    .line 136
    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    sget-object v5, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 143
    .line 144
    invoke-static {v5}, Lfa/b;->a(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v5, "\n"

    .line 152
    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v3, v4}, Lgh/c;->write([B)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Lgh/c;->flush()V

    .line 168
    .line 169
    .line 170
    const-wide/16 v3, 0x3e8

    .line 171
    .line 172
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 173
    .line 174
    .line 175
    sget-object v3, Lfa/a;->a:Lfa/b;

    .line 176
    .line 177
    invoke-virtual {v3}, Lfa/b;->f()Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eqz v4, :cond_1

    .line 182
    .line 183
    iget-object v4, v3, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 184
    .line 185
    invoke-interface {v4}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getUid()I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    if-nez v4, :cond_1

    .line 190
    .line 191
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 192
    .line 193
    iget-object v4, v4, Lcom/yunpan/appmanage/base/AppStart;->a:Lv9/a;

    .line 194
    .line 195
    new-instance v5, Loa/g;

    .line 196
    .line 197
    iget-object v3, v3, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 198
    .line 199
    invoke-interface {v3}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getNewProcess()Loa/b;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-direct {v5, v3}, Loa/g;-><init>(Loa/b;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, v5}, Lv9/a;->b(Ljava/lang/Process;)Lv9/i;

    .line 207
    .line 208
    .line 209
    const-wide/16 v3, 0x32

    .line 210
    .line 211
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 212
    .line 213
    .line 214
    new-array v3, v1, [Ljava/lang/String;

    .line 215
    .line 216
    const-string v4, "id"

    .line 217
    .line 218
    aput-object v4, v3, v0

    .line 219
    .line 220
    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_1

    .line 241
    .line 242
    iput-boolean v1, p0, Lfa/e;->a:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    .line 244
    :cond_1
    iget-object v0, p0, Lfa/e;->h:Lgh/a;

    .line 245
    .line 246
    if-eqz v0, :cond_3

    .line 247
    .line 248
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Lgh/a;->d()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :goto_3
    iget-object v1, p0, Lfa/e;->h:Lgh/a;

    .line 253
    .line 254
    if-eqz v1, :cond_2

    .line 255
    .line 256
    :try_start_4
    invoke-virtual {v1}, Lgh/a;->d()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 257
    .line 258
    .line 259
    :catch_2
    :cond_2
    throw v0

    .line 260
    :goto_4
    iget-object v0, p0, Lfa/e;->h:Lgh/a;

    .line 261
    .line 262
    if-eqz v0, :cond_3

    .line 263
    .line 264
    goto :goto_2

    .line 265
    :catch_3
    :cond_3
    :goto_5
    return-void
.end method
