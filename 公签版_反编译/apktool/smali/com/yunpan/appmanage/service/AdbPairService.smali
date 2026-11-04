.class public Lcom/yunpan/appmanage/service/AdbPairService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Landroid/app/Notification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lm0/q0;

    .line 12
    .line 13
    invoke-direct {v2, v1, v0}, Lm0/q0;-><init>(Landroid/os/Bundle;Ljava/util/HashSet;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    const-class v1, Lcom/yunpan/appmanage/service/AdbPairService;

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "com.yunpan.appmanage.ACTION_REPLY"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const/high16 v1, 0xa000000

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {p0, v3, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const v0, 0x7f0802a4

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->b(I)Landroidx/core/graphics/drawable/IconCompat;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    new-instance v8, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v1, "\u70b9\u51fb\u8f93\u5165\u914d\u5bf9\u7801"

    .line 48
    .line 49
    invoke-static {v1}, Lm0/q;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    new-instance v3, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_0

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Lm0/q0;

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    const/4 v4, 0x0

    .line 99
    if-eqz v1, :cond_1

    .line 100
    .line 101
    move-object v10, v4

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    new-array v1, v1, [Lm0/q0;

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, [Lm0/q0;

    .line 114
    .line 115
    move-object v10, v1

    .line 116
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_2

    .line 121
    .line 122
    move-object v9, v4

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    new-array v1, v1, [Lm0/q0;

    .line 129
    .line 130
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, [Lm0/q0;

    .line 135
    .line 136
    move-object v9, v1

    .line 137
    :goto_2
    new-instance v1, Lm0/n;

    .line 138
    .line 139
    move-object v4, v1

    .line 140
    invoke-direct/range {v4 .. v10}, Lm0/n;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lm0/q0;[Lm0/q0;)V

    .line 141
    .line 142
    .line 143
    new-instance v2, Lm0/q;

    .line 144
    .line 145
    const-string v3, "adb_pair_service_channel"

    .line 146
    .line 147
    invoke-direct {v2, p0, v3}, Lm0/q;-><init>(Landroid/app/Service;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v3, v2, Lm0/q;->m:Landroid/app/Notification;

    .line 151
    .line 152
    iput v0, v3, Landroid/app/Notification;->icon:I

    .line 153
    .line 154
    const-string v0, "ADB\u65e0\u7ebf\u914d\u5bf9"

    .line 155
    .line 156
    invoke-static {v0}, Lm0/q;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iput-object v0, v2, Lm0/q;->e:Ljava/lang/CharSequence;

    .line 161
    .line 162
    invoke-static {p1}, Lm0/q;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iput-object p1, v2, Lm0/q;->f:Ljava/lang/CharSequence;

    .line 167
    .line 168
    const/4 p1, 0x2

    .line 169
    iput p1, v2, Lm0/q;->g:I

    .line 170
    .line 171
    const-string p1, "service"

    .line 172
    .line 173
    iput-object p1, v2, Lm0/q;->i:Ljava/lang/String;

    .line 174
    .line 175
    iget-object p1, v2, Lm0/q;->b:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Lm0/q;->c()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Lm0/q;->a()Landroid/app/Notification;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iput-object p1, p0, Lcom/yunpan/appmanage/service/AdbPairService;->a:Landroid/app/Notification;

    .line 188
    .line 189
    const/4 v0, 0x4

    .line 190
    if-eqz p2, :cond_3

    .line 191
    .line 192
    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 197
    .line 198
    const/16 p2, 0x17

    .line 199
    .line 200
    if-lt p1, p2, :cond_4

    .line 201
    .line 202
    invoke-static {p0}, Lr8/a;->k(Lcom/yunpan/appmanage/service/AdbPairService;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    check-cast p1, Landroid/app/NotificationManager;

    .line 207
    .line 208
    iget-object p2, p0, Lcom/yunpan/appmanage/service/AdbPairService;->a:Landroid/app/Notification;

    .line 209
    .line 210
    invoke-virtual {p1, v0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 211
    .line 212
    .line 213
    :cond_4
    :goto_3
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1a

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/app/NotificationChannel;

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    const-string v3, "adb_pair_service_channel"

    .line 15
    .line 16
    const-string v4, "ADB\u914d\u5bf9\u670d\u52a1"

    .line 17
    .line 18
    invoke-direct {v0, v3, v4, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 19
    .line 20
    .line 21
    const-string v1, "\u7528\u4e8eADB\u65e0\u7ebf\u914d\u5bf9"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 27
    .line 28
    .line 29
    const v1, -0xffff01

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 36
    .line 37
    .line 38
    const-class v1, Landroid/app/NotificationManager;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/app/NotificationManager;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    const-string v0, "\u8bf7\u8f93\u5165\u914d\u5bf9\u7801"

    .line 50
    .line 51
    invoke-virtual {p0, v0, v2}, Lcom/yunpan/appmanage/service/AdbPairService;->a(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lm0/i0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lm0/i0;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Lm0/i0;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    const-string p2, "com.yunpan.appmanage.ACTION_REPLY"

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_7

    .line 14
    .line 15
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 p3, 0x14

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    if-lt p2, p3, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lm0/n0;->c(Landroid/content/Intent;)Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    invoke-static {p1}, Lm0/m0;->a(Landroid/content/Intent;)Landroid/content/ClipData;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 p2, 0x0

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    :goto_0
    move-object p1, p2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    const-string v1, "text/vnd.android.intent"

    .line 41
    .line 42
    invoke-virtual {p3, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    const-string v1, "android.remoteinput.results"

    .line 58
    .line 59
    invoke-virtual {p3, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    if-nez p3, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_1
    if-nez p1, :cond_4

    .line 75
    .line 76
    move-object p1, p2

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string p2, "android.remoteinput.resultsData"

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/os/Bundle;

    .line 89
    .line 90
    :goto_2
    if-eqz p1, :cond_7

    .line 91
    .line 92
    const-string p2, "key_text_reply"

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    const/4 p3, 0x6

    .line 105
    if-eq p2, p3, :cond_5

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    new-instance p2, Lb8/a;

    .line 109
    .line 110
    const/16 p3, 0x9

    .line 111
    .line 112
    invoke-direct {p2, p1, p3}, Lb8/a;-><init>(Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    new-instance p1, Lmc/c;

    .line 116
    .line 117
    const/4 p3, 0x0

    .line 118
    invoke-direct {p1, p3, p2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p1, p2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    new-instance p2, Lka/c;

    .line 136
    .line 137
    const/4 p3, 0x3

    .line 138
    invoke-direct {p2, p3, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_6
    :goto_3
    const-string p1, "\u914d\u5bf9\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u5c1d\u8bd5"

    .line 146
    .line 147
    invoke-virtual {p0, p1, v0}, Lcom/yunpan/appmanage/service/AdbPairService;->a(Ljava/lang/String;Z)V

    .line 148
    .line 149
    .line 150
    :cond_7
    :goto_4
    const/4 p1, 0x1

    .line 151
    return p1
.end method
