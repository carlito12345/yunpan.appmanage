.class public final synthetic Lha/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lha/ia;


# instance fields
.field public final synthetic a:Lha/i;


# direct methods
.method public synthetic constructor <init>(Lha/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/c;->a:Lha/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 14

    .line 1
    const-string v0, "enable_freeform_support"

    .line 2
    .line 3
    iget-object v1, p0, Lha/c;->a:Lha/i;

    .line 4
    .line 5
    iget-object v2, v1, Lha/a4;->b:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    new-instance p1, Landroid/content/Intent;

    .line 12
    .line 13
    const-class v0, Lcom/yunpan/appmanage/service/AdbPairService;

    .line 14
    .line 15
    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v4, 0x1a

    .line 21
    .line 22
    if-lt v0, v4, :cond_0

    .line 23
    .line 24
    invoke-static {v2, p1}, Leg/a;->k(Landroid/content/Context;Landroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    const-string p1, "\u65e0\u6cd5\u6253\u5f00\u670d\u52a1"

    .line 33
    .line 34
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 38
    .line 39
    .line 40
    new-instance p1, Landroid/content/Intent;

    .line 41
    .line 42
    const-string v0, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :try_start_1
    invoke-virtual {v3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :catch_1
    const-string p1, "\u60a8\u6ca1\u6709\u5f00\u542f\u3010\u5f00\u53d1\u8005\u9009\u9879\u3011\uff1f\uff1f\uff1f"

    .line 53
    .line 54
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_1
    const/4 v4, 0x1

    .line 60
    if-le p1, v4, :cond_2

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const-string v6, "android.software.activities_on_secondary_displays"

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_2

    .line 73
    .line 74
    const-string p1, "\u6b64\u8bbe\u5907\u672a\u5f00\u542f\u5206\u5c4f\uff0c\u8bf7\u5148\u5f00\u542f"

    .line 75
    .line 76
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    const/4 v5, 0x2

    .line 81
    if-ne p1, v5, :cond_3

    .line 82
    .line 83
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-static {v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eq v5, v4, :cond_3

    .line 92
    .line 93
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-static {v5, v0, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-string v5, "force_resizable_activities"

    .line 105
    .line 106
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_2
    new-instance p1, Lha/z6;

    .line 111
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v4, "\u6b64\u8bbe\u5907\u672a\u5f00\u542f\u81ea\u7531\u7a97\u53e3\uff0c\u8bf7\u5148\u5f00\u542f\uff01\u53ef\u4ee5\u5728\u5f00\u53d1\u8005\u9009\u9879\u91cc\u9762\u52fe\u9009\u591a\u7a97\u53e3\u6a21\u5f0f(\u81ea\u7531\u7a97\u53e3)\u548c\u7a97\u53e3\u53ef\u8c03\u8282\u5927\u5c0f\uff01\u4e5f\u53ef\u4ee5\u7528adb\u547d\u4ee4\u7ed9\u6211\u6743\u9650\uff0c\u6bd4\u5982\u7528\u624b\u673a\u7532\u58f3\u866b\u8fde\u672c\u673a\uff0c\u6216\u624b\u673a\u7528"

    .line 115
    .line 116
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const v4, 0x7f13002f

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v2, "\u7684OTG-adb\u529f\u80fd\u8fde\u63a5\u672c\u673a\u7136\u540e\u6388\u6743\n\nadb shell pm grant "

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, " android.permission.WRITE_SECURE_SETTINGS"

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    new-instance v13, Lha/g;

    .line 151
    .line 152
    const/4 v0, 0x0

    .line 153
    invoke-direct {v13, v1, v0}, Lha/g;-><init>(Lha/i;I)V

    .line 154
    .line 155
    .line 156
    iget-object v8, v1, Lha/a4;->b:Landroid/content/Context;

    .line 157
    .line 158
    iget-object v7, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 159
    .line 160
    const-string v11, "\u590d\u5236\u547d\u4ee4"

    .line 161
    .line 162
    const-string v12, "\u5173\u95ed\u63d0\u793a"

    .line 163
    .line 164
    const-string v10, ""

    .line 165
    .line 166
    move-object v6, p1

    .line 167
    invoke-direct/range {v6 .. v13}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 175
    .line 176
    .line 177
    iget-object v0, v1, Lha/i;->h:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v0, Lua/u7;

    .line 180
    .line 181
    invoke-virtual {v0, p1}, Lua/u7;->e(I)V

    .line 182
    .line 183
    .line 184
    :goto_2
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lha/c;->a:Lha/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "adb_wifi_enabled"

    .line 7
    .line 8
    const-string v2, "adb_enabled"

    .line 9
    .line 10
    :try_start_0
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v2, 0x0

    .line 38
    :goto_0
    if-eqz v2, :cond_1

    .line 39
    .line 40
    const-wide/16 v5, 0x10c

    .line 41
    .line 42
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 43
    .line 44
    .line 45
    :cond_1
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eq v3, v4, :cond_2

    .line 56
    .line 57
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 58
    .line 59
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move v4, v2

    .line 71
    :goto_1
    if-eqz v4, :cond_3

    .line 72
    .line 73
    const-string v1, "\u5c1d\u8bd5\u6253\u5f00adb"

    .line 74
    .line 75
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    const-wide/16 v1, 0x170

    .line 79
    .line 80
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    :catch_0
    :cond_3
    :try_start_1
    sget-object v1, Lfa/l;->a:Lfa/m;

    .line 84
    .line 85
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lfa/m;->M(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :catch_1
    move-exception v0

    .line 95
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :goto_2
    return-void
.end method
