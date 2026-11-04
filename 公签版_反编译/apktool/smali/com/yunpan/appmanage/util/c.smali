.class public final Lcom/yunpan/appmanage/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final synthetic a:Lv3/f;


# direct methods
.method public constructor <init>(Lv3/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/util/c;->a:Lv3/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "Asia/Hong_Kong"

    .line 4
    .line 5
    iget-object v3, p0, Lcom/yunpan/appmanage/util/c;->a:Lv3/f;

    .line 6
    .line 7
    const-string v4, "date "

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 16
    .line 17
    .line 18
    iget-object p1, v3, Lv3/f;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Landroid/content/Context;

    .line 21
    .line 22
    :try_start_1
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 23
    .line 24
    const-string v8, "yyyy-MM-dd HH:mm:ss"

    .line 25
    .line 26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 31
    .line 32
    .line 33
    new-instance v8, Ljava/util/Date;

    .line 34
    .line 35
    invoke-direct {v8, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lv3/f;->P()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 48
    :try_start_2
    const-string v7, "time_zone"

    .line 49
    .line 50
    invoke-static {v3, v7, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    const-string v7, "auto_time"

    .line 54
    .line 55
    invoke-static {v3, v7, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 56
    .line 57
    .line 58
    const-string v7, "auto_time_zone"

    .line 59
    .line 60
    invoke-static {v3, v7, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    .line 62
    .line 63
    :catch_0
    :try_start_3
    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v3}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 68
    .line 69
    .line 70
    :catch_1
    :try_start_4
    const-string v3, "alarm"

    .line 71
    .line 72
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroid/app/AlarmManager;

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v5, v6}, Landroid/app/AlarmManager;->setTime(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_2
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 91
    .line 92
    const-string v3, "MMddHHmmyyyy.ss"

    .line 93
    .line 94
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v3, Ljava/util/Date;

    .line 98
    .line 99
    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    new-array v2, v0, [Ljava/lang/String;

    .line 114
    .line 115
    aput-object p1, v2, v1

    .line 116
    .line 117
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2}, Landroidx/room/s;->q()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_0

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_0
    sget-object v2, Lfa/a;->a:Lfa/b;

    .line 133
    .line 134
    invoke-virtual {v2}, Lfa/b;->f()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_1

    .line 139
    .line 140
    iget-object v2, v2, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 141
    .line 142
    const-wide/16 v3, 0x8ae

    .line 143
    .line 144
    invoke-interface {v2, p1, v3, v4}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iget p1, p1, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 149
    .line 150
    if-nez p1, :cond_1

    .line 151
    .line 152
    :goto_0
    new-array p1, v0, [Ljava/lang/String;

    .line 153
    .line 154
    const-string v0, "am broadcast -a android.intent.action.CONFIGURATION_CHANGED"

    .line 155
    .line 156
    aput-object v0, p1, v1

    .line 157
    .line 158
    invoke-static {p1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1}, Lv9/e;->l0()Landroidx/room/s;

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :catch_3
    move-exception p1

    .line 167
    goto :goto_1

    .line 168
    :cond_1
    const-string p1, "\u65e0\u6743\u9650\u66f4\u6539\u7cfb\u7edf\u65f6\u95f4"

    .line 169
    .line 170
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    .line 176
    .line 177
    :cond_2
    :goto_2
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
