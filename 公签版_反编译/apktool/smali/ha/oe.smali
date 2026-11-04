.class public final synthetic Lha/oe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/pe;


# direct methods
.method public synthetic constructor <init>(Lha/pe;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/oe;->a:I

    iput-object p1, p0, Lha/oe;->b:Lha/pe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "\u83b7\u53d6\u65f6\u95f4\u5931\u8d25"

    .line 3
    .line 4
    iget-object v2, p0, Lha/oe;->b:Lha/pe;

    .line 5
    .line 6
    iget v3, p0, Lha/oe;->a:I

    .line 7
    .line 8
    packed-switch v3, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v3, "Asia/Hong_Kong"

    .line 15
    .line 16
    invoke-static {}, Lha/pe;->a()Ljava/util/Date;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v5, "\u5f53\u524d\u5317\u4eac\u65f6\u95f4\uff1a"

    .line 33
    .line 34
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 38
    .line 39
    const-string v6, "yyyy-MM-dd HH:mm:ss"

    .line 40
    .line 41
    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v2, Lha/a4;->b:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :try_start_0
    const-string v5, "auto_time"

    .line 65
    .line 66
    invoke-static {v2, v5, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    .line 68
    .line 69
    const-string v5, "auto_time_zone"

    .line 70
    .line 71
    invoke-static {v2, v5, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 72
    .line 73
    .line 74
    const-string v5, "time_zone"

    .line 75
    .line 76
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    const-string v5, "ntp_server"

    .line 80
    .line 81
    const-string v6, "ntp.ntsc.ac.cn"

    .line 82
    .line 83
    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    :catch_0
    :try_start_1
    invoke-static {v3}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    .line 92
    .line 93
    :catch_1
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    const-string v2, "setprop persist.sys.timezone Asia/Hong_Kong"

    .line 99
    .line 100
    const-wide/16 v5, 0x7d0

    .line 101
    .line 102
    invoke-static {v5, v6, v2}, La2/w0;->o(JLjava/lang/String;)Lfa/a0;

    .line 103
    .line 104
    .line 105
    const-string v2, "settings put global time_zone Asia/Hong_Kong"

    .line 106
    .line 107
    invoke-static {v5, v6, v2}, La2/w0;->o(JLjava/lang/String;)Lfa/a0;

    .line 108
    .line 109
    .line 110
    const-string v2, "service call alarm 3 s16 Asia/Hong_Kong"

    .line 111
    .line 112
    invoke-static {v5, v6, v2}, La2/w0;->o(JLjava/lang/String;)Lfa/a0;

    .line 113
    .line 114
    .line 115
    :try_start_2
    const-string v2, "alarm"

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Landroid/app/AlarmManager;

    .line 122
    .line 123
    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 127
    .line 128
    .line 129
    move-result-wide v2

    .line 130
    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catch_2
    nop

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v2, "date "

    .line 138
    .line 139
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 143
    .line 144
    const-string v3, "MMddHHmmyyyy"

    .line 145
    .line 146
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const/4 v2, 0x1

    .line 161
    new-array v2, v2, [Ljava/lang/String;

    .line 162
    .line 163
    aput-object v1, v2, v0

    .line 164
    .line 165
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroidx/room/s;->q()Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_1

    .line 178
    .line 179
    const-string v0, "\u5931\u8d25\uff1a\u65e0\u6743\u9650\u4fee\u6539\u7cfb\u7edf\u65f6\u95f4"

    .line 180
    .line 181
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_1
    :goto_0
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    const-string v0, "am broadcast -a android.intent.action.CONFIGURATION_CHANGED"

    .line 191
    .line 192
    invoke-static {v5, v6, v0}, La2/w0;->o(JLjava/lang/String;)Lfa/a0;

    .line 193
    .line 194
    .line 195
    const-string v0, "\u4fee\u6539\u5b8c\u6210"

    .line 196
    .line 197
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :goto_1
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 201
    .line 202
    .line 203
    :goto_2
    return-void

    .line 204
    :pswitch_0
    new-instance v0, Lv3/f;

    .line 205
    .line 206
    iget-object v2, v2, Lha/a4;->b:Landroid/content/Context;

    .line 207
    .line 208
    invoke-direct {v0, v2}, Lv3/f;-><init>(Landroid/content/Context;)V

    .line 209
    .line 210
    .line 211
    :try_start_3
    invoke-virtual {v0}, Lv3/f;->y()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :catch_3
    move-exception v2

    .line 216
    invoke-virtual {v0}, Lv3/f;->P()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 220
    .line 221
    .line 222
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :goto_3
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
