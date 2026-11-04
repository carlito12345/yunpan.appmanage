.class public final synthetic Lb8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb8/o;
.implements Lcom/hjq/permissions/OnPermissionCallback;
.implements Lec/d;
.implements Lv8/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lb8/a;->a:I

    iput-object p1, p0, Lb8/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lmc/b;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lb8/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    sget v3, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 6
    .line 7
    :try_start_0
    const-string v3, "AUTOLINK"

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    const-wide/16 v4, 0x3e8

    .line 14
    .line 15
    const-string v6, "setprop sys.usb.config diag"

    .line 16
    .line 17
    const-string v7, "setprop sys.usb.config none"

    .line 18
    .line 19
    const-wide/16 v8, 0x1f4

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    :try_start_1
    new-array v2, v1, [Ljava/lang/String;

    .line 24
    .line 25
    const-string v3, "setprop persist.vendor.bosch.usb2.mode peripheral"

    .line 26
    .line 27
    aput-object v3, v2, v0

    .line 28
    .line 29
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 34
    .line 35
    .line 36
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 37
    .line 38
    .line 39
    new-array v2, v1, [Ljava/lang/String;

    .line 40
    .line 41
    aput-object v7, v2, v0

    .line 42
    .line 43
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 48
    .line 49
    .line 50
    const-wide/16 v2, 0x320

    .line 51
    .line 52
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 53
    .line 54
    .line 55
    new-array v1, v1, [Ljava/lang/String;

    .line 56
    .line 57
    aput-object v6, v1, v0

    .line 58
    .line 59
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 64
    .line 65
    .line 66
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 67
    .line 68
    .line 69
    const-string v0, "sys.autolink.usb.clear"

    .line 70
    .line 71
    const-string v1, "0"

    .line 72
    .line 73
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    const-string v3, "DESAYSV"

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    const-string v2, "persist.sv.debug.adb_enable"

    .line 88
    .line 89
    const-string v3, "1"

    .line 90
    .line 91
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 95
    .line 96
    .line 97
    new-array v2, v1, [Ljava/lang/String;

    .line 98
    .line 99
    aput-object v7, v2, v0

    .line 100
    .line 101
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 106
    .line 107
    .line 108
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 109
    .line 110
    .line 111
    new-array v1, v1, [Ljava/lang/String;

    .line 112
    .line 113
    aput-object v6, v1, v0

    .line 114
    .line 115
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 120
    .line 121
    .line 122
    :cond_1
    :goto_0
    const-string v0, "\u8bbe\u7f6e\u5b8c\u6210"

    .line 123
    .line 124
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-static {}, La2/w0;->P()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_2

    .line 137
    .line 138
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 139
    .line 140
    const/4 v1, 0x0

    .line 141
    invoke-virtual {v0, v1}, Lfa/j;->h(Lua/h6;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    .line 147
    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v2, "\u9519\u8bef\uff1a"

    .line 151
    .line 152
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v0, v1}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 156
    .line 157
    .line 158
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method private final b(Lmc/b;)V
    .locals 5

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityShell;->M:I

    .line 2
    .line 3
    const-string v0, "jni: "

    .line 4
    .line 5
    iget-object v1, p0, Lb8/a;->b:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "pm install "

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_3

    .line 14
    .line 15
    const-string v2, "cmd package install "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const-string v2, "rm "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    const-string v2, "logcat "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    const-string v2, "dumpsys "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-wide/16 v2, 0xbb8

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    :goto_0
    const-wide/16 v2, 0x3e80

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    :goto_1
    const-wide/32 v2, 0x11170

    .line 56
    .line 57
    .line 58
    :goto_2
    :try_start_0
    sget-object v4, Lfa/a;->a:Lfa/b;

    .line 59
    .line 60
    iget-object v4, v4, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 61
    .line 62
    invoke-interface {v4, v1, v2, v3}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v2, v1, Lcom/yunpan/appmanage/shizuku/CmdResult;->lists:Ljava/util/ArrayList;

    .line 67
    .line 68
    const-string v3, ""

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    iget-object v2, v1, Lcom/yunpan/appmanage/shizuku/CmdResult;->lists:Ljava/util/ArrayList;

    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget v0, v1, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 81
    .line 82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/yunpan/appmanage/shizuku/CmdResult;->getAllStr()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v2, "\u6267\u884c\u5931\u8d25\uff1a"

    .line 104
    .line 105
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :goto_3
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method private final d(Lmc/b;)V
    .locals 2

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityShell;->M:I

    .line 2
    .line 3
    iget-object v0, p0, Lb8/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "adb "

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object v1, Lfa/l;->a:Lfa/m;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lfa/m;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v1, Lfa/l;->a:Lfa/m;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/yunpan/appmanage/bean/ShellResultData;->getListStr()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final f(Lmc/b;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lb8/a;->b:Ljava/lang/String;

    .line 3
    .line 4
    sget v2, Lcom/yunpan/appmanage/ui/ActivityWindowInputAdbPair;->E:I

    .line 5
    .line 6
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 12
    .line 13
    iget-boolean v4, v3, Lwa/u;->v:Z

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    const-string v4, "\u5c0f\u7a97\u53e3\u8f93\u5165\u914d\u5bf9\u7801\u6a21\u5f0f"

    .line 18
    .line 19
    invoke-static {v4}, Lwa/w;->b(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v4, "\u641c\u7d22\u7aef\u53e3\u4e2d..."

    .line 23
    .line 24
    invoke-static {v4}, Lwa/w;->b(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_0
    :goto_0
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 32
    .line 33
    invoke-direct {v4, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Lio/github/muntashirakon/adb/android/AdbMdns;

    .line 37
    .line 38
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 39
    .line 40
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 41
    .line 42
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 43
    .line 44
    const-string v7, "adb-tls-pairing"

    .line 45
    .line 46
    new-instance v8, Lta/g;

    .line 47
    .line 48
    invoke-direct {v8, v2, v4, v0}, Lta/g;-><init>(Ljava/util/HashMap;Ljava/util/concurrent/CountDownLatch;I)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v5, v6, v7, v8}, Lio/github/muntashirakon/adb/android/AdbMdns;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Lio/github/muntashirakon/adb/android/AdbMdns;->start()V

    .line 55
    .line 56
    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 58
    .line 59
    const-wide/16 v6, 0xd05

    .line 60
    .line 61
    invoke-virtual {v4, v6, v7, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget-boolean v0, v3, Lwa/u;->v:Z

    .line 74
    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    const-string v0, "\u672a\u627e\u5230\u65e0\u7ebf\u8c03\u8bd5\u7aef\u53e3"

    .line 78
    .line 79
    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    .line 83
    .line 84
    const-string v1, "\u672a\u627e\u5230\u7aef\u53e3"

    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_8

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Ljava/lang/Integer;

    .line 113
    .line 114
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 115
    .line 116
    iget-boolean v4, v3, Lwa/u;->v:Z

    .line 117
    .line 118
    if-eqz v4, :cond_4

    .line 119
    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v5, "\u5c1d\u8bd5\u914d\u5bf9\u4e2d,\u7aef\u53e3\uff1a"

    .line 126
    .line 127
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-static {v4}, Lwa/w;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    :cond_4
    :try_start_1
    sget-object v4, Lfa/l;->a:Lfa/m;

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    invoke-virtual {v4, v2, v1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->pair(ILjava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_7

    .line 151
    .line 152
    iget-boolean v2, v3, Lwa/u;->v:Z

    .line 153
    .line 154
    if-eqz v2, :cond_5

    .line 155
    .line 156
    const-string v2, "\u914d\u5bf9\u6210\u529f"

    .line 157
    .line 158
    invoke-static {v2}, Lwa/w;->b(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v2, "\u5f00\u59cb\u91cd\u65b0\u8fde\u63a5adb"

    .line 162
    .line 163
    invoke-static {v2}, Lwa/w;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :catch_1
    move-exception v2

    .line 168
    goto :goto_4

    .line 169
    :cond_5
    :goto_2
    const-wide/16 v2, 0x29a

    .line 170
    .line 171
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 172
    .line 173
    .line 174
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 175
    .line 176
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 177
    .line 178
    invoke-virtual {v4, v2}, Lfa/m;->M(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :catch_2
    move-exception v2

    .line 183
    :try_start_3
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 184
    .line 185
    iget-boolean v3, v3, Lwa/u;->v:Z

    .line 186
    .line 187
    if-eqz v3, :cond_6

    .line 188
    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v4, "\u8fde\u63a5\u5931\u8d25\uff1a"

    .line 195
    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-static {v2}, Lwa/w;->b(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 214
    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_7
    iget-boolean v2, v3, Lwa/u;->v:Z

    .line 218
    .line 219
    if-eqz v2, :cond_3

    .line 220
    .line 221
    const-string v2, "\u914d\u5bf9\u5931\u8d25"

    .line 222
    .line 223
    invoke-static {v2}, Lwa/w;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :goto_4
    :try_start_4
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 228
    .line 229
    iget-boolean v3, v3, Lwa/u;->v:Z

    .line 230
    .line 231
    if-eqz v3, :cond_3

    .line 232
    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    const-string v4, "\u914d\u5bf9\u5931\u8d25\uff1a"

    .line 239
    .line 240
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-static {v2}, Lwa/w;->b(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_1

    .line 258
    .line 259
    :cond_8
    new-instance v0, Ljava/lang/Exception;

    .line 260
    .line 261
    const-string v1, "\u5339\u914d\u5931\u8d25"

    .line 262
    .line 263
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 267
    .line 268
    .line 269
    goto :goto_6

    .line 270
    :goto_5
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 271
    .line 272
    .line 273
    :goto_6
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lb8/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lz7/q;

    .line 7
    .line 8
    iget-object v1, p0, Lb8/a;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lz7/q;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0

    .line 14
    :pswitch_0
    new-instance v0, Lz7/q;

    .line 15
    .line 16
    iget-object v1, p0, Lb8/a;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lz7/q;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :pswitch_1
    new-instance v0, Lz7/q;

    .line 23
    .line 24
    iget-object v1, p0, Lb8/a;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lz7/q;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :pswitch_2
    new-instance v0, Lz7/q;

    .line 31
    .line 32
    iget-object v1, p0, Lb8/a;->b:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {v0, v1}, Lz7/q;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(Lv8/a;Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb8/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Landroid/widget/TextView;

    .line 4
    .line 5
    :try_start_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5HH\u65f6mm\u5206ss\u79d2SSS"

    .line 8
    .line 9
    invoke-direct {p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/Date;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "mounted"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    const-string p1, "\u5931\u8d25\uff1a\u65e0\u5185\u90e8sd"

    .line 34
    .line 35
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    sget-object v3, Lfa/d;->a:Lfa/e;

    .line 47
    .line 48
    invoke-virtual {v3}, Lfa/e;->d()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, "/Download/\u7a97\u53e3\u8282\u70b9"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p2, ".txt"

    .line 64
    .line 65
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v0}, Lq4/a;->M(Ljava/io/File;Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lv8/a;->g()V

    .line 86
    .line 87
    .line 88
    const-string p1, "\u5df2\u4fdd\u5b58\u5728\uff1aDownload\u76ee\u5f55\u5185"

    .line 89
    .line 90
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    const-string p1, "\u4fdd\u5b58\u5931\u8d25"

    .line 95
    .line 96
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    iget-object v3, v1, Lb8/a;->b:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    iget v6, v1, Lb8/a;->a:I

    .line 11
    .line 12
    packed-switch v6, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    :pswitch_0
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v4, ".apk"

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-static {v3}, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :catch_0
    :cond_0
    invoke-virtual {v2, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lb8/a;->f(Lmc/b;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lb8/a;->d(Lmc/b;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_3
    sget v0, Lcom/yunpan/appmanage/ui/ActivityShell;->M:I

    .line 47
    .line 48
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 54
    .line 55
    iget-object v0, v0, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 56
    .line 57
    const-wide/16 v4, 0x4e20

    .line 58
    .line 59
    invoke-interface {v0, v3, v4, v5}, Lcom/yunpan/appmanage/shizuku/IUserService;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/yunpan/appmanage/shizuku/CmdResult;->getAllStr()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lb8/a;->b(Lmc/b;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_5
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 78
    .line 79
    :try_start_1
    const-string v0, "AUTOLINK"

    .line 80
    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const-wide/16 v6, 0xc8

    .line 86
    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    new-array v0, v5, [Ljava/lang/String;

    .line 90
    .line 91
    const-string v3, "setprop sys.usb.config diag,adb"

    .line 92
    .line 93
    aput-object v3, v0, v4

    .line 94
    .line 95
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 100
    .line 101
    .line 102
    new-array v0, v5, [Ljava/lang/String;

    .line 103
    .line 104
    const-string v3, "setprop persist.vendor.usb.config diag,adb"

    .line 105
    .line 106
    aput-object v3, v0, v4

    .line 107
    .line 108
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 113
    .line 114
    .line 115
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 116
    .line 117
    .line 118
    new-array v0, v5, [Ljava/lang/String;

    .line 119
    .line 120
    const-string v3, "setprop persist.vendor.bosch.usb2.mode host"

    .line 121
    .line 122
    aput-object v3, v0, v4

    .line 123
    .line 124
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :catch_1
    move-exception v0

    .line 133
    goto :goto_1

    .line 134
    :cond_1
    const-string v0, "DESAYSV"

    .line 135
    .line 136
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_2

    .line 141
    .line 142
    new-array v0, v5, [Ljava/lang/String;

    .line 143
    .line 144
    const-string v3, "setprop sys.usb.config carplay_life,adb"

    .line 145
    .line 146
    aput-object v3, v0, v4

    .line 147
    .line 148
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 153
    .line 154
    .line 155
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 156
    .line 157
    .line 158
    const-string v0, "persist.sv.debug.adb_enable"

    .line 159
    .line 160
    const-string v3, "0"

    .line 161
    .line 162
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_2
    :goto_0
    const-string v0, "\u8bbe\u7f6e\u5b8c\u6210"

    .line 166
    .line 167
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    .line 173
    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v4, "\u9519\u8bef\uff1a"

    .line 177
    .line 178
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v0, v3}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 182
    .line 183
    .line 184
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lb8/a;->a(Lmc/b;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :pswitch_7
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 193
    .line 194
    const-string v0, "getprop "

    .line 195
    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    new-array v3, v5, [Ljava/lang/String;

    .line 201
    .line 202
    aput-object v0, v3, v4

    .line 203
    .line 204
    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    const-string v3, "5555"

    .line 217
    .line 218
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :pswitch_8
    sget v0, Lcom/yunpan/appmanage/service/AdbPairService;->b:I

    .line 234
    .line 235
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    .line 236
    .line 237
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 238
    .line 239
    .line 240
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    .line 241
    .line 242
    invoke-direct {v6, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 243
    .line 244
    .line 245
    new-instance v5, Lio/github/muntashirakon/adb/android/AdbMdns;

    .line 246
    .line 247
    sget-object v7, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 248
    .line 249
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 250
    .line 251
    iget-object v7, v7, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 252
    .line 253
    const-string v8, "adb-tls-pairing"

    .line 254
    .line 255
    new-instance v9, Lta/g;

    .line 256
    .line 257
    invoke-direct {v9, v0, v6, v4}, Lta/g;-><init>(Ljava/util/HashMap;Ljava/util/concurrent/CountDownLatch;I)V

    .line 258
    .line 259
    .line 260
    invoke-direct {v5, v7, v8, v9}, Lio/github/muntashirakon/adb/android/AdbMdns;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v5}, Lio/github/muntashirakon/adb/android/AdbMdns;->start()V

    .line 264
    .line 265
    .line 266
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 267
    .line 268
    const-wide/16 v7, 0xbb8

    .line 269
    .line 270
    invoke-virtual {v6, v7, v8, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    if-eqz v4, :cond_3

    .line 281
    .line 282
    new-instance v0, Ljava/lang/Exception;

    .line 283
    .line 284
    const-string v3, "\u672a\u627e\u5230\u7aef\u53e3"

    .line 285
    .line 286
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 290
    .line 291
    .line 292
    goto :goto_4

    .line 293
    :catch_2
    move-exception v0

    .line 294
    goto :goto_3

    .line 295
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    :catch_3
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    if-eqz v4, :cond_5

    .line 308
    .line 309
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    check-cast v4, Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 314
    .line 315
    :try_start_3
    sget-object v5, Lfa/l;->a:Lfa/m;

    .line 316
    .line 317
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    invoke-virtual {v5, v4, v3}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->pair(ILjava/lang/String;)Z

    .line 322
    .line 323
    .line 324
    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 325
    if-eqz v4, :cond_4

    .line 326
    .line 327
    const-wide/16 v6, 0x29a

    .line 328
    .line 329
    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 330
    .line 331
    .line 332
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 333
    .line 334
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 335
    .line 336
    invoke-virtual {v5, v4}, Lfa/m;->M(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 337
    .line 338
    .line 339
    :catch_4
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 340
    .line 341
    .line 342
    goto :goto_4

    .line 343
    :cond_5
    :try_start_6
    new-instance v0, Ljava/lang/Exception;

    .line 344
    .line 345
    const-string v3, "\u5339\u914d\u5931\u8d25"

    .line 346
    .line 347
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 351
    .line 352
    .line 353
    goto :goto_4

    .line 354
    :goto_3
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 355
    .line 356
    .line 357
    :goto_4
    return-void

    .line 358
    :pswitch_9
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->b(Ljava/lang/String;)Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-nez v0, :cond_6

    .line 363
    .line 364
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 365
    .line 366
    .line 367
    goto :goto_5

    .line 368
    :cond_6
    invoke-static {v3}, Lif/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 373
    .line 374
    .line 375
    move-result v4

    .line 376
    if-eqz v4, :cond_7

    .line 377
    .line 378
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 379
    .line 380
    .line 381
    goto :goto_5

    .line 382
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .line 386
    .line 387
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 388
    .line 389
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 390
    .line 391
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->z:Ljava/lang/String;

    .line 392
    .line 393
    const-string v6, "bdVideo/"

    .line 394
    .line 395
    invoke-static {v4, v5, v6, v0}, Landroid/support/v4/media/session/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 400
    .line 401
    .line 402
    move-result v4

    .line 403
    if-eqz v4, :cond_8

    .line 404
    .line 405
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 409
    .line 410
    .line 411
    goto :goto_5

    .line 412
    :cond_8
    invoke-static {v3, v0}, Lq4/a;->z(Ljava/lang/String;Ljava/lang/String;)Z

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    if-eqz v3, :cond_9

    .line 417
    .line 418
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 422
    .line 423
    .line 424
    :goto_5
    return-void

    .line 425
    :pswitch_a
    new-instance v6, Ljava/util/ArrayList;

    .line 426
    .line 427
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .line 429
    .line 430
    :try_start_7
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 431
    .line 432
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 433
    .line 434
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 435
    .line 436
    const/4 v7, 0x4

    .line 437
    invoke-virtual {v0, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 442
    .line 443
    if-eqz v0, :cond_b

    .line 444
    .line 445
    array-length v3, v0

    .line 446
    :goto_6
    if-ge v4, v3, :cond_b

    .line 447
    .line 448
    aget-object v7, v0, v4

    .line 449
    .line 450
    iget-boolean v8, v7, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 451
    .line 452
    if-eqz v8, :cond_a

    .line 453
    .line 454
    iget-boolean v8, v7, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 455
    .line 456
    if-eqz v8, :cond_a

    .line 457
    .line 458
    invoke-static {v7}, Lnh/b;->T(Landroid/content/pm/ServiceInfo;)Z

    .line 459
    .line 460
    .line 461
    move-result v8

    .line 462
    if-nez v8, :cond_a

    .line 463
    .line 464
    new-instance v8, Lcom/yunpan/appmanage/bean/AppSelectHomeActivityBean;

    .line 465
    .line 466
    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 467
    .line 468
    sget-object v10, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 469
    .line 470
    iget-object v10, v10, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 471
    .line 472
    invoke-virtual {v7, v10}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 473
    .line 474
    .line 475
    move-result-object v10

    .line 476
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v10

    .line 480
    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 481
    .line 482
    invoke-direct {v8, v9, v10, v7}, Lcom/yunpan/appmanage/bean/AppSelectHomeActivityBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    .line 486
    .line 487
    .line 488
    goto :goto_7

    .line 489
    :catch_5
    move-exception v0

    .line 490
    goto :goto_8

    .line 491
    :cond_a
    :goto_7
    add-int/2addr v4, v5

    .line 492
    goto :goto_6

    .line 493
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 494
    .line 495
    .line 496
    :cond_b
    invoke-virtual {v2, v6}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 500
    .line 501
    .line 502
    return-void

    .line 503
    :pswitch_b
    new-instance v6, Ljava/util/ArrayList;

    .line 504
    .line 505
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .line 507
    .line 508
    :try_start_8
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 509
    .line 510
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 511
    .line 512
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 513
    .line 514
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 519
    .line 520
    if-eqz v0, :cond_d

    .line 521
    .line 522
    array-length v3, v0

    .line 523
    :goto_9
    if-ge v4, v3, :cond_d

    .line 524
    .line 525
    aget-object v7, v0, v4

    .line 526
    .line 527
    iget-boolean v8, v7, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 528
    .line 529
    if-eqz v8, :cond_c

    .line 530
    .line 531
    iget-boolean v8, v7, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 532
    .line 533
    if-eqz v8, :cond_c

    .line 534
    .line 535
    new-instance v8, Lcom/yunpan/appmanage/bean/AppSelectHomeActivityBean;

    .line 536
    .line 537
    iget-object v9, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 538
    .line 539
    sget-object v10, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 540
    .line 541
    iget-object v10, v10, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 542
    .line 543
    invoke-virtual {v7, v10}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 544
    .line 545
    .line 546
    move-result-object v10

    .line 547
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v10

    .line 551
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 552
    .line 553
    invoke-direct {v8, v9, v10, v7}, Lcom/yunpan/appmanage/bean/AppSelectHomeActivityBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_6

    .line 557
    .line 558
    .line 559
    goto :goto_a

    .line 560
    :catch_6
    move-exception v0

    .line 561
    goto :goto_b

    .line 562
    :cond_c
    :goto_a
    add-int/2addr v4, v5

    .line 563
    goto :goto_9

    .line 564
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 565
    .line 566
    .line 567
    :cond_d
    invoke-virtual {v2, v6}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 571
    .line 572
    .line 573
    return-void

    .line 574
    :pswitch_c
    const-string v6, ""

    .line 575
    .line 576
    const-string v7, "\u6587\u4ef6\u4f20\u9001\u4e2d..."

    .line 577
    .line 578
    invoke-virtual {v2, v7}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 579
    .line 580
    .line 581
    sget-object v7, Lfa/a;->b:Lfa/e0;

    .line 582
    .line 583
    const-string v8, "rm -rf \'/data/local/tmp/gj123.apk\'"

    .line 584
    .line 585
    const-wide/16 v9, 0x7d0

    .line 586
    .line 587
    invoke-virtual {v7, v9, v10, v8}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 588
    .line 589
    .line 590
    new-instance v8, Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 591
    .line 592
    invoke-direct {v8}, Lcom/yunpan/appmanage/bean/UsbAdbData;-><init>()V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v7}, Lfa/e0;->c()Z

    .line 596
    .line 597
    .line 598
    move-result v11

    .line 599
    const-class v12, Ljava/lang/Throwable;

    .line 600
    .line 601
    const-string v13, "addSuppressed"

    .line 602
    .line 603
    const-string v14, "/data/local/tmp/gj123.apk"

    .line 604
    .line 605
    if-nez v11, :cond_e

    .line 606
    .line 607
    iget-object v0, v8, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 608
    .line 609
    const-string v11, "\u8fde\u63a5\u5df2\u65ad\u5f00\uff0c\u8bf7\u91cd\u65b0\u8fde\u63a5"

    .line 610
    .line 611
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    :goto_c
    move-object/from16 v24, v6

    .line 615
    .line 616
    goto/16 :goto_16

    .line 617
    .line 618
    :cond_e
    :try_start_9
    iget-object v11, v7, Lfa/e0;->c:Lz9/a;

    .line 619
    .line 620
    const-string v15, "sync:"

    .line 621
    .line 622
    invoke-virtual {v11, v15}, Lz9/a;->J(Ljava/lang/String;)Lz9/d;

    .line 623
    .line 624
    .line 625
    move-result-object v11
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 626
    :try_start_a
    new-instance v15, Ljava/io/FileInputStream;

    .line 627
    .line 628
    invoke-direct {v15, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 629
    .line 630
    .line 631
    :try_start_b
    const-string v16, "SEND"

    .line 632
    .line 633
    const-string v17, ",33206"

    .line 634
    .line 635
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    .line 636
    .line 637
    .line 638
    move-result-object v16

    .line 639
    const/16 v18, 0x1f

    .line 640
    .line 641
    invoke-static/range {v18 .. v18}, Lif/a;->W(I)[B

    .line 642
    .line 643
    .line 644
    move-result-object v18

    .line 645
    new-array v9, v0, [[B

    .line 646
    .line 647
    aput-object v16, v9, v4

    .line 648
    .line 649
    aput-object v18, v9, v5

    .line 650
    .line 651
    invoke-static {v9}, Lif/a;->n([[B)[B

    .line 652
    .line 653
    .line 654
    move-result-object v9

    .line 655
    invoke-virtual {v11, v9}, Lz9/d;->N([B)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    .line 659
    .line 660
    .line 661
    move-result-object v9

    .line 662
    invoke-virtual {v11, v9}, Lz9/d;->N([B)V

    .line 663
    .line 664
    .line 665
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    .line 666
    .line 667
    .line 668
    move-result-object v9

    .line 669
    invoke-virtual {v11, v9}, Lz9/d;->N([B)V

    .line 670
    .line 671
    .line 672
    iget-object v9, v7, Lfa/e0;->c:Lz9/a;

    .line 673
    .line 674
    invoke-virtual {v9}, Lz9/a;->A()I

    .line 675
    .line 676
    .line 677
    move-result v9

    .line 678
    add-int/lit8 v9, v9, -0x64

    .line 679
    .line 680
    new-array v10, v9, [B

    .line 681
    .line 682
    new-instance v5, Ljava/io/File;

    .line 683
    .line 684
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 688
    .line 689
    .line 690
    move-result-wide v17

    .line 691
    const-wide/16 v19, 0x0

    .line 692
    .line 693
    const/4 v5, 0x0

    .line 694
    :goto_d
    invoke-virtual {v15, v10}, Ljava/io/InputStream;->read([B)I

    .line 695
    .line 696
    .line 697
    move-result v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 698
    const-wide/16 v22, 0x64

    .line 699
    .line 700
    if-gez v4, :cond_f

    .line 701
    .line 702
    :try_start_c
    const-string v4, "DONE"

    .line 703
    .line 704
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 705
    .line 706
    .line 707
    move-result-object v4

    .line 708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 709
    .line 710
    .line 711
    move-result-wide v9

    .line 712
    long-to-int v5, v9

    .line 713
    invoke-static {v5}, Lif/a;->W(I)[B

    .line 714
    .line 715
    .line 716
    move-result-object v5

    .line 717
    new-array v9, v0, [[B

    .line 718
    .line 719
    const/4 v10, 0x0

    .line 720
    aput-object v4, v9, v10

    .line 721
    .line 722
    const/4 v4, 0x1

    .line 723
    aput-object v5, v9, v4

    .line 724
    .line 725
    invoke-static {v9}, Lif/a;->n([[B)[B

    .line 726
    .line 727
    .line 728
    move-result-object v4

    .line 729
    invoke-virtual {v11, v4}, Lz9/d;->N([B)V

    .line 730
    .line 731
    .line 732
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V

    .line 733
    .line 734
    .line 735
    const-string v4, "QUIT"

    .line 736
    .line 737
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 738
    .line 739
    .line 740
    move-result-object v4

    .line 741
    const/4 v5, 0x0

    .line 742
    invoke-static {v5}, Lif/a;->W(I)[B

    .line 743
    .line 744
    .line 745
    move-result-object v9

    .line 746
    new-array v0, v0, [[B

    .line 747
    .line 748
    aput-object v4, v0, v5

    .line 749
    .line 750
    const/4 v4, 0x1

    .line 751
    aput-object v9, v0, v4

    .line 752
    .line 753
    invoke-static {v0}, Lif/a;->n([[B)[B

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    invoke-virtual {v11, v0}, Lz9/d;->N([B)V

    .line 758
    .line 759
    .line 760
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V

    .line 761
    .line 762
    .line 763
    iput v5, v8, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 764
    .line 765
    iget-object v0, v8, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 766
    .line 767
    const-string v4, "\u4f20\u8f93\u5b8c\u6210"

    .line 768
    .line 769
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 770
    .line 771
    .line 772
    :try_start_d
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 773
    .line 774
    .line 775
    :try_start_e
    invoke-virtual {v11}, Lz9/d;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 776
    .line 777
    .line 778
    goto/16 :goto_c

    .line 779
    .line 780
    :catch_7
    move-exception v0

    .line 781
    move-object/from16 v24, v6

    .line 782
    .line 783
    goto/16 :goto_15

    .line 784
    .line 785
    :catchall_0
    move-exception v0

    .line 786
    move-object v1, v0

    .line 787
    move-object/from16 v24, v6

    .line 788
    .line 789
    goto/16 :goto_13

    .line 790
    .line 791
    :catchall_1
    move-exception v0

    .line 792
    move-object v1, v0

    .line 793
    move-object/from16 v24, v6

    .line 794
    .line 795
    goto :goto_10

    .line 796
    :cond_f
    :try_start_f
    const-string v24, "DATA"

    .line 797
    .line 798
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    .line 799
    .line 800
    .line 801
    move-result-object v24

    .line 802
    invoke-static {v4}, Lif/a;->W(I)[B

    .line 803
    .line 804
    .line 805
    move-result-object v25

    .line 806
    new-array v1, v0, [[B

    .line 807
    .line 808
    const/16 v21, 0x0

    .line 809
    .line 810
    aput-object v24, v1, v21

    .line 811
    .line 812
    const/16 v16, 0x1

    .line 813
    .line 814
    aput-object v25, v1, v16

    .line 815
    .line 816
    invoke-static {v1}, Lif/a;->n([[B)[B

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    invoke-virtual {v11, v1}, Lz9/d;->N([B)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 821
    .line 822
    .line 823
    if-ne v4, v9, :cond_10

    .line 824
    .line 825
    :try_start_10
    invoke-virtual {v11, v10}, Lz9/d;->N([B)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 826
    .line 827
    .line 828
    move-object/from16 v24, v6

    .line 829
    .line 830
    goto :goto_e

    .line 831
    :cond_10
    :try_start_11
    new-array v1, v4, [B
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 832
    .line 833
    move-object/from16 v24, v6

    .line 834
    .line 835
    const/4 v6, 0x0

    .line 836
    :try_start_12
    invoke-static {v10, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v11, v1}, Lz9/d;->N([B)V

    .line 840
    .line 841
    .line 842
    :goto_e
    int-to-long v0, v4

    .line 843
    add-long v19, v19, v0

    .line 844
    .line 845
    mul-long v22, v22, v19

    .line 846
    .line 847
    div-long v0, v22, v17
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 848
    .line 849
    long-to-int v1, v0

    .line 850
    if-eq v5, v1, :cond_11

    .line 851
    .line 852
    move v5, v1

    .line 853
    :cond_11
    move-object/from16 v1, p0

    .line 854
    .line 855
    move-object/from16 v6, v24

    .line 856
    .line 857
    const/4 v0, 0x2

    .line 858
    goto/16 :goto_d

    .line 859
    .line 860
    :catchall_2
    move-exception v0

    .line 861
    :goto_f
    move-object v1, v0

    .line 862
    goto :goto_10

    .line 863
    :catchall_3
    move-exception v0

    .line 864
    move-object/from16 v24, v6

    .line 865
    .line 866
    goto :goto_f

    .line 867
    :goto_10
    :try_start_13
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 868
    .line 869
    .line 870
    goto :goto_12

    .line 871
    :catchall_4
    move-exception v0

    .line 872
    move-object v4, v0

    .line 873
    const/4 v5, 0x1

    .line 874
    :try_start_14
    new-array v0, v5, [Ljava/lang/Class;

    .line 875
    .line 876
    const/4 v6, 0x0

    .line 877
    aput-object v12, v0, v6

    .line 878
    .line 879
    invoke-virtual {v12, v13, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    new-array v9, v5, [Ljava/lang/Object;

    .line 884
    .line 885
    aput-object v4, v9, v6

    .line 886
    .line 887
    invoke-virtual {v0, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 888
    .line 889
    .line 890
    goto :goto_12

    .line 891
    :goto_11
    move-object v1, v0

    .line 892
    goto :goto_13

    .line 893
    :catch_8
    :goto_12
    :try_start_15
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 894
    :catchall_5
    move-exception v0

    .line 895
    goto :goto_11

    .line 896
    :catchall_6
    move-exception v0

    .line 897
    move-object/from16 v24, v6

    .line 898
    .line 899
    goto :goto_11

    .line 900
    :goto_13
    :try_start_16
    invoke-virtual {v11}, Lz9/d;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 901
    .line 902
    .line 903
    goto :goto_14

    .line 904
    :catchall_7
    move-exception v0

    .line 905
    move-object v4, v0

    .line 906
    const/4 v5, 0x1

    .line 907
    :try_start_17
    new-array v0, v5, [Ljava/lang/Class;

    .line 908
    .line 909
    const/4 v6, 0x0

    .line 910
    aput-object v12, v0, v6

    .line 911
    .line 912
    invoke-virtual {v12, v13, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    new-array v9, v5, [Ljava/lang/Object;

    .line 917
    .line 918
    aput-object v4, v9, v6

    .line 919
    .line 920
    invoke-virtual {v0, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9

    .line 921
    .line 922
    .line 923
    :catch_9
    :goto_14
    :try_start_18
    throw v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a

    .line 924
    :catch_a
    move-exception v0

    .line 925
    :goto_15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 926
    .line 927
    .line 928
    iget-object v1, v8, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 929
    .line 930
    new-instance v4, Ljava/lang/StringBuilder;

    .line 931
    .line 932
    const-string v5, "\u4f20\u8f93\u5931\u8d25\uff1a"

    .line 933
    .line 934
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    move-result-object v0

    .line 941
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    .line 943
    .line 944
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v0

    .line 948
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    .line 950
    .line 951
    :goto_16
    iget v0, v8, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 952
    .line 953
    if-eqz v0, :cond_12

    .line 954
    .line 955
    new-instance v0, Ljava/lang/Exception;

    .line 956
    .line 957
    invoke-virtual {v8}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v1

    .line 961
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 962
    .line 963
    .line 964
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 965
    .line 966
    .line 967
    goto/16 :goto_2b

    .line 968
    .line 969
    :cond_12
    :try_start_19
    new-instance v1, Lef/b;

    .line 970
    .line 971
    new-instance v0, Ljava/io/File;

    .line 972
    .line 973
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 974
    .line 975
    .line 976
    invoke-direct {v1, v0}, Lef/b;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_d

    .line 977
    .line 978
    .line 979
    :try_start_1a
    invoke-virtual {v1}, Lef/b;->M()V

    .line 980
    .line 981
    .line 982
    iget-object v0, v1, Lef/b;->e:Lff/c;

    .line 983
    .line 984
    iget-object v0, v0, Lff/c;->a:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 985
    .line 986
    :try_start_1b
    invoke-virtual {v1}, Lef/b;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_b

    .line 987
    .line 988
    .line 989
    goto :goto_18

    .line 990
    :catch_b
    nop

    .line 991
    goto :goto_18

    .line 992
    :catchall_8
    move-exception v0

    .line 993
    move-object v3, v0

    .line 994
    :try_start_1c
    invoke-virtual {v1}, Lef/b;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 995
    .line 996
    .line 997
    goto :goto_17

    .line 998
    :catchall_9
    move-exception v0

    .line 999
    move-object v1, v0

    .line 1000
    const/4 v4, 0x1

    .line 1001
    :try_start_1d
    new-array v0, v4, [Ljava/lang/Class;

    .line 1002
    .line 1003
    const/4 v5, 0x0

    .line 1004
    aput-object v12, v0, v5

    .line 1005
    .line 1006
    invoke-virtual {v12, v13, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    new-array v4, v4, [Ljava/lang/Object;

    .line 1011
    .line 1012
    aput-object v1, v4, v5

    .line 1013
    .line 1014
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    .line 1015
    .line 1016
    .line 1017
    :catch_c
    :goto_17
    :try_start_1e
    throw v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_d

    .line 1018
    :catch_d
    nop

    .line 1019
    move-object/from16 v0, v24

    .line 1020
    .line 1021
    :goto_18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1022
    .line 1023
    .line 1024
    move-result v1

    .line 1025
    if-nez v1, :cond_18

    .line 1026
    .line 1027
    :try_start_1f
    const-string v1, "setting get global OUSHANG_WHILTE_APP_LIST"

    .line 1028
    .line 1029
    const-wide/16 v3, 0x320

    .line 1030
    .line 1031
    invoke-virtual {v7, v3, v4, v1}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v1

    .line 1035
    iget v5, v1, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1036
    .line 1037
    if-eqz v5, :cond_14

    .line 1038
    .line 1039
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 1040
    .line 1041
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/w;->E:Z

    .line 1042
    .line 1043
    if-eqz v1, :cond_13

    .line 1044
    .line 1045
    goto :goto_19

    .line 1046
    :cond_13
    new-instance v1, Ljava/lang/Exception;

    .line 1047
    .line 1048
    const-string v3, "\u83b7\u53d6\u767d\u540d\u5355\u5931\u8d25"

    .line 1049
    .line 1050
    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    throw v1

    .line 1054
    :cond_14
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 1055
    .line 1056
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v1

    .line 1060
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1061
    .line 1062
    .line 1063
    move-result v5

    .line 1064
    if-eqz v5, :cond_16

    .line 1065
    .line 1066
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v5

    .line 1070
    check-cast v5, Ljava/lang/String;

    .line 1071
    .line 1072
    const-string v6, "."

    .line 1073
    .line 1074
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1075
    .line 1076
    .line 1077
    move-result v6

    .line 1078
    if-eqz v6, :cond_15

    .line 1079
    .line 1080
    goto :goto_1a

    .line 1081
    :cond_16
    :goto_19
    move-object/from16 v5, v24

    .line 1082
    .line 1083
    :goto_1a
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 1084
    .line 1085
    .line 1086
    move-result v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_e

    .line 1087
    const-string v6, ","

    .line 1088
    .line 1089
    if-nez v1, :cond_17

    .line 1090
    .line 1091
    :try_start_20
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1092
    .line 1093
    .line 1094
    move-result v1

    .line 1095
    if-nez v1, :cond_17

    .line 1096
    .line 1097
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1098
    .line 1099
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v5

    .line 1112
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1113
    .line 1114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v1

    .line 1127
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1128
    .line 1129
    .line 1130
    move-result v1

    .line 1131
    if-nez v1, :cond_18

    .line 1132
    .line 1133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1136
    .line 1137
    .line 1138
    const-string v6, "setting put global OUSHANG_WHILTE_APP_LIST \'"

    .line 1139
    .line 1140
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    .line 1148
    .line 1149
    const-string v5, "\'"

    .line 1150
    .line 1151
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v1

    .line 1158
    invoke-virtual {v7, v3, v4, v1}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_e

    .line 1159
    .line 1160
    .line 1161
    :catch_e
    :cond_18
    const-string v1, "\u6b63\u5728\u5b89\u88c5..."

    .line 1162
    .line 1163
    invoke-virtual {v2, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1164
    .line 1165
    .line 1166
    const-string v1, "\u6b64\u5e94\u7528\u4e0e\u3010"

    .line 1167
    .line 1168
    iget v3, v7, Lfa/e0;->h:I

    .line 1169
    .line 1170
    const/16 v4, 0x1a

    .line 1171
    .line 1172
    const-string v5, "pm install"

    .line 1173
    .line 1174
    if-lt v3, v4, :cond_19

    .line 1175
    .line 1176
    const-string v3, "cmd package install"

    .line 1177
    .line 1178
    goto :goto_1b

    .line 1179
    :cond_19
    move-object v3, v5

    .line 1180
    :goto_1b
    new-instance v4, Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 1181
    .line 1182
    invoke-direct {v4}, Lcom/yunpan/appmanage/bean/UsbAdbData;-><init>()V

    .line 1183
    .line 1184
    .line 1185
    const-string v6, " -r -d -t"

    .line 1186
    .line 1187
    invoke-static {v3, v6}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v6

    .line 1191
    iget v8, v7, Lfa/e0;->i:I

    .line 1192
    .line 1193
    const-string v9, " --user "

    .line 1194
    .line 1195
    if-eqz v8, :cond_1a

    .line 1196
    .line 1197
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1198
    .line 1199
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1200
    .line 1201
    .line 1202
    iget v10, v7, Lfa/e0;->i:I

    .line 1203
    .line 1204
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v8

    .line 1211
    goto :goto_1c

    .line 1212
    :cond_1a
    move-object/from16 v8, v24

    .line 1213
    .line 1214
    :goto_1c
    const-string v10, " \"/data/local/tmp/gj123.apk\""

    .line 1215
    .line 1216
    invoke-static {v8, v10, v6}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v6

    .line 1220
    const-wide/32 v10, 0x1d4c0

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v7, v10, v11, v6}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v8

    .line 1227
    invoke-virtual {v8}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v12

    .line 1231
    const-string v13, "must be streamed"

    .line 1232
    .line 1233
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1234
    .line 1235
    .line 1236
    move-result v12

    .line 1237
    if-eqz v12, :cond_1b

    .line 1238
    .line 1239
    const-string v12, "cmd"

    .line 1240
    .line 1241
    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1242
    .line 1243
    .line 1244
    move-result v12

    .line 1245
    if-eqz v12, :cond_1b

    .line 1246
    .line 1247
    const-string v3, "cmd package"

    .line 1248
    .line 1249
    const-string v8, "pm"

    .line 1250
    .line 1251
    invoke-virtual {v6, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v6

    .line 1255
    invoke-virtual {v7, v10, v11, v6}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v8

    .line 1259
    goto :goto_1d

    .line 1260
    :cond_1b
    move-object v5, v3

    .line 1261
    :goto_1d
    invoke-virtual {v8}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 1262
    .line 1263
    .line 1264
    iget v3, v8, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1265
    .line 1266
    const-string v12, "input string: \"-g\""

    .line 1267
    .line 1268
    const-string v13, "ption -g"

    .line 1269
    .line 1270
    const-string v15, " "

    .line 1271
    .line 1272
    const-string v10, " -g "

    .line 1273
    .line 1274
    if-eqz v3, :cond_1c

    .line 1275
    .line 1276
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1277
    .line 1278
    .line 1279
    move-result v3

    .line 1280
    if-eqz v3, :cond_1c

    .line 1281
    .line 1282
    invoke-virtual {v8}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v3

    .line 1286
    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1287
    .line 1288
    .line 1289
    move-result v3

    .line 1290
    if-nez v3, :cond_1d

    .line 1291
    .line 1292
    invoke-virtual {v8}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v3

    .line 1296
    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1297
    .line 1298
    .line 1299
    move-result v3

    .line 1300
    if-eqz v3, :cond_1c

    .line 1301
    .line 1302
    goto :goto_1e

    .line 1303
    :cond_1c
    move-object v6, v0

    .line 1304
    move-object v11, v1

    .line 1305
    goto :goto_1f

    .line 1306
    :cond_1d
    :goto_1e
    invoke-virtual {v6, v10, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v3

    .line 1310
    move-object v6, v0

    .line 1311
    move-object v11, v1

    .line 1312
    const-wide/32 v0, 0x1d4c0

    .line 1313
    .line 1314
    .line 1315
    invoke-virtual {v7, v0, v1, v3}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v8

    .line 1319
    :goto_1f
    invoke-virtual {v8}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v0

    .line 1323
    const-string v1, "Can\'t open file"

    .line 1324
    .line 1325
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1326
    .line 1327
    .line 1328
    move-result v3

    .line 1329
    if-eqz v3, :cond_22

    .line 1330
    .line 1331
    const-string v0, "cat \'/data/local/tmp/gj123.apk\' | "

    .line 1332
    .line 1333
    const-string v3, " -r -d -t -S"

    .line 1334
    .line 1335
    invoke-static {v0, v5, v3}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v0

    .line 1339
    iget v3, v7, Lfa/e0;->i:I

    .line 1340
    .line 1341
    if-eqz v3, :cond_1e

    .line 1342
    .line 1343
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1344
    .line 1345
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1346
    .line 1347
    .line 1348
    iget v5, v7, Lfa/e0;->i:I

    .line 1349
    .line 1350
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v3

    .line 1357
    goto :goto_20

    .line 1358
    :cond_1e
    move-object/from16 v3, v24

    .line 1359
    .line 1360
    :goto_20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    .line 1362
    .line 1363
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    .line 1365
    .line 1366
    new-instance v3, Ljava/io/File;

    .line 1367
    .line 1368
    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 1372
    .line 1373
    .line 1374
    move-result-wide v8

    .line 1375
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v0

    .line 1382
    iget v3, v7, Lfa/e0;->h:I

    .line 1383
    .line 1384
    const/16 v5, 0x17

    .line 1385
    .line 1386
    if-lt v3, v5, :cond_1f

    .line 1387
    .line 1388
    const-string v3, " -r -d -t -S "

    .line 1389
    .line 1390
    const-string v5, " -r -d -t -S -g "

    .line 1391
    .line 1392
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v0

    .line 1396
    :cond_1f
    const-wide/32 v8, 0x1d4c0

    .line 1397
    .line 1398
    .line 1399
    invoke-virtual {v7, v8, v9, v0}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v3

    .line 1403
    iget v5, v3, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1404
    .line 1405
    if-eqz v5, :cond_21

    .line 1406
    .line 1407
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1408
    .line 1409
    .line 1410
    move-result v5

    .line 1411
    if-eqz v5, :cond_21

    .line 1412
    .line 1413
    invoke-virtual {v3}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v5

    .line 1417
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1418
    .line 1419
    .line 1420
    move-result v5

    .line 1421
    if-nez v5, :cond_20

    .line 1422
    .line 1423
    invoke-virtual {v3}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v5

    .line 1427
    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1428
    .line 1429
    .line 1430
    move-result v5

    .line 1431
    if-eqz v5, :cond_21

    .line 1432
    .line 1433
    :cond_20
    invoke-virtual {v0, v10, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v0

    .line 1437
    const-wide/32 v8, 0x1d4c0

    .line 1438
    .line 1439
    .line 1440
    invoke-virtual {v7, v8, v9, v0}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v0

    .line 1444
    move-object v8, v0

    .line 1445
    goto :goto_21

    .line 1446
    :cond_21
    move-object v8, v3

    .line 1447
    :goto_21
    invoke-virtual {v8}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v0

    .line 1451
    :cond_22
    const-string v3, "ailure"

    .line 1452
    .line 1453
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1454
    .line 1455
    .line 1456
    move-result v3

    .line 1457
    if-nez v3, :cond_25

    .line 1458
    .line 1459
    iget v3, v8, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1460
    .line 1461
    if-nez v3, :cond_25

    .line 1462
    .line 1463
    const-string v3, "rror:"

    .line 1464
    .line 1465
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1466
    .line 1467
    .line 1468
    move-result v3

    .line 1469
    if-eqz v3, :cond_23

    .line 1470
    .line 1471
    goto :goto_22

    .line 1472
    :cond_23
    const-string v1, "Success"

    .line 1473
    .line 1474
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1475
    .line 1476
    .line 1477
    move-result v0

    .line 1478
    if-eqz v0, :cond_24

    .line 1479
    .line 1480
    const/4 v1, 0x0

    .line 1481
    iput v1, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1482
    .line 1483
    iget-object v0, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 1484
    .line 1485
    const-string v1, "\u5b89\u88c5\u6210\u529f"

    .line 1486
    .line 1487
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1488
    .line 1489
    .line 1490
    goto/16 :goto_2a

    .line 1491
    .line 1492
    :cond_24
    iget-object v0, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 1493
    .line 1494
    const-string v1, "\u5b89\u88c5\u5931\u8d25"

    .line 1495
    .line 1496
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1497
    .line 1498
    .line 1499
    goto/16 :goto_2a

    .line 1500
    .line 1501
    :cond_25
    :goto_22
    const-string v3, "permission"

    .line 1502
    .line 1503
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1504
    .line 1505
    .line 1506
    move-result v3

    .line 1507
    if-nez v3, :cond_64

    .line 1508
    .line 1509
    const-string v3, "ermission denied"

    .line 1510
    .line 1511
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1512
    .line 1513
    .line 1514
    move-result v3

    .line 1515
    if-eqz v3, :cond_26

    .line 1516
    .line 1517
    goto/16 :goto_28

    .line 1518
    .line 1519
    :cond_26
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v3

    .line 1523
    const-string v5, "allowedtoinstall"

    .line 1524
    .line 1525
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1526
    .line 1527
    .line 1528
    move-result v3

    .line 1529
    if-eqz v3, :cond_27

    .line 1530
    .line 1531
    const/4 v0, -0x8

    .line 1532
    iput v0, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1533
    .line 1534
    const-string v0, "\u7cfb\u7edf\u7981\u6b62\u547d\u4ee4\u5f0f\u5b89\u88c5"

    .line 1535
    .line 1536
    goto/16 :goto_29

    .line 1537
    .line 1538
    :cond_27
    const-string v3, "file or directory"

    .line 1539
    .line 1540
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1541
    .line 1542
    .line 1543
    move-result v3

    .line 1544
    if-nez v3, :cond_63

    .line 1545
    .line 1546
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1547
    .line 1548
    .line 1549
    move-result v1

    .line 1550
    if-eqz v1, :cond_28

    .line 1551
    .line 1552
    goto/16 :goto_27

    .line 1553
    .line 1554
    :cond_28
    const-string v1, "not found"

    .line 1555
    .line 1556
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1557
    .line 1558
    .line 1559
    move-result v1

    .line 1560
    const-string v3, "\u547d\u4ee4\u51fa\u9519"

    .line 1561
    .line 1562
    if-eqz v1, :cond_29

    .line 1563
    .line 1564
    :goto_23
    move-object v0, v3

    .line 1565
    goto/16 :goto_29

    .line 1566
    .line 1567
    :cond_29
    const-string v1, "syntax error"

    .line 1568
    .line 1569
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1570
    .line 1571
    .line 1572
    move-result v1

    .line 1573
    if-eqz v1, :cond_2a

    .line 1574
    .line 1575
    goto :goto_23

    .line 1576
    :cond_2a
    const-string v1, "Killed"

    .line 1577
    .line 1578
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1579
    .line 1580
    .line 1581
    move-result v1

    .line 1582
    if-eqz v1, :cond_2b

    .line 1583
    .line 1584
    const-string v0, "\u65e0\u6743\u9650\uff0c\u6b64\u64cd\u4f5c\u9700\u8981root\u6743\u9650"

    .line 1585
    .line 1586
    goto/16 :goto_29

    .line 1587
    .line 1588
    :cond_2b
    const-string v1, "INSTALL_FAILED_VERIF"

    .line 1589
    .line 1590
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1591
    .line 1592
    .line 1593
    move-result v1

    .line 1594
    if-eqz v1, :cond_2c

    .line 1595
    .line 1596
    const-string v0, "\u5b89\u88c5\u5931\u8d25\uff1a\u6b64\u7cfb\u7edf\u7981\u7528\u547d\u4ee4\u5b89\u88c5"

    .line 1597
    .line 1598
    goto/16 :goto_29

    .line 1599
    .line 1600
    :cond_2c
    const-string v1, "INSTALL_FAILED_VERSION_DOWNGRADE"

    .line 1601
    .line 1602
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1603
    .line 1604
    .line 1605
    move-result v1

    .line 1606
    const/16 v3, -0x6f

    .line 1607
    .line 1608
    if-eqz v1, :cond_2d

    .line 1609
    .line 1610
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1611
    .line 1612
    const-string v0, "\u5df2\u7ecf\u5b89\u88c5\u4e86\u8be5\u5e94\u7528\u66f4\u9ad8\u7248\u672c\uff0c\u5982\u679c\u9700\u8981\u964d\u7ea7\u8bf7\u5148\u5378\u8f7d"

    .line 1613
    .line 1614
    goto/16 :goto_29

    .line 1615
    .line 1616
    :cond_2d
    const-string v1, "INSTALL_FAILED_ALREADY_EXISTS"

    .line 1617
    .line 1618
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1619
    .line 1620
    .line 1621
    move-result v1

    .line 1622
    if-eqz v1, :cond_2e

    .line 1623
    .line 1624
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1625
    .line 1626
    const-string v0, "\u4e0e\u4e4b\u524d\u5b89\u88c5\u7684\u7248\u672c\u51b2\u7a81\uff0c\u8bf7\u5378\u8f7d\u539f\u6765\u7684\u7248\u672c\u518d\u5b89\u88c5"

    .line 1627
    .line 1628
    goto/16 :goto_29

    .line 1629
    .line 1630
    :cond_2e
    const-string v1, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    .line 1631
    .line 1632
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1633
    .line 1634
    .line 1635
    move-result v1

    .line 1636
    if-eqz v1, :cond_2f

    .line 1637
    .line 1638
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1639
    .line 1640
    const-string v0, "\u4e0e\u4e4b\u524d\u5b89\u88c5\u7684\u7248\u672c\u51b2\u7a81\uff0c\u8bf7\u5378\u8f7d\u539f\u6765\u7684\u7248\u672c\u518d\u5b89\u88c5\uff01"

    .line 1641
    .line 1642
    goto/16 :goto_29

    .line 1643
    .line 1644
    :cond_2f
    const-string v1, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    .line 1645
    .line 1646
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1647
    .line 1648
    .line 1649
    move-result v1

    .line 1650
    if-eqz v1, :cond_30

    .line 1651
    .line 1652
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1653
    .line 1654
    const-string v0, "\u4e0e\u7cfb\u7edf\u7b7e\u540d\u4e0d\u4e00\u81f4\uff1a\u6b64APK\u6307\u5b9a\u4e86android.uid.system\uff0c\u9700\u8981\u4e0e\u7cfb\u7edf\u7b7e\u540d\u4e00\u81f4\u624d\u80fd\u5b89\u88c5"

    .line 1655
    .line 1656
    goto/16 :goto_29

    .line 1657
    .line 1658
    :cond_30
    const-string v1, "INSTALL_FAILED_OLDER_SDK"

    .line 1659
    .line 1660
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1661
    .line 1662
    .line 1663
    move-result v1

    .line 1664
    if-eqz v1, :cond_31

    .line 1665
    .line 1666
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1667
    .line 1668
    const-string v0, "\u4e0d\u517c\u5bb9\uff0c\u60a8\u7684\u7cfb\u7edf\u592a\u65e7\uff0c\u6b64\u5e94\u7528\u4e0d\u517c\u5bb9\u60a8\u7684\u7cfb\u7edf\uff01"

    .line 1669
    .line 1670
    goto/16 :goto_29

    .line 1671
    .line 1672
    :cond_31
    const-string v1, "INSTALL_FAILED_NEWER_SDK"

    .line 1673
    .line 1674
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1675
    .line 1676
    .line 1677
    move-result v1

    .line 1678
    if-eqz v1, :cond_32

    .line 1679
    .line 1680
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1681
    .line 1682
    const-string v0, "\u4e0d\u517c\u5bb9\uff0c\u6b64\u5e94\u7528\u4e0d\u652f\u6301\u60a8\u7684\u7cfb\u7edf"

    .line 1683
    .line 1684
    goto/16 :goto_29

    .line 1685
    .line 1686
    :cond_32
    const-string v1, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    .line 1687
    .line 1688
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1689
    .line 1690
    .line 1691
    move-result v1

    .line 1692
    if-eqz v1, :cond_33

    .line 1693
    .line 1694
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1695
    .line 1696
    const-string v0, "\u6ca1\u6709\u7b7e\u540d\u8bc1\u4e66\uff0c\u9700\u8981\u5bf9apk\u7b7e\u540d\u624d\u80fd\u5b89\u88c5"

    .line 1697
    .line 1698
    goto/16 :goto_29

    .line 1699
    .line 1700
    :cond_33
    const-string v1, "INSTALL_FAILED_UID_CHANGED"

    .line 1701
    .line 1702
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1703
    .line 1704
    .line 1705
    move-result v1

    .line 1706
    if-eqz v1, :cond_34

    .line 1707
    .line 1708
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1709
    .line 1710
    const-string v0, "\u65e7\u7248\u672c\u5378\u8f7d\u4e0d\u5e72\u51c0\uff0c\u6709\u6b8b\u7559\u6587\u4ef6\uff0c\u9700\u6e05\u7406\u5e72\u51c0\u624d\u80fd\u5b89\u88c5"

    .line 1711
    .line 1712
    goto/16 :goto_29

    .line 1713
    .line 1714
    :cond_34
    const-string v1, "INSTALL_FAILED_CPU_ABL_INCOMPATIBLE"

    .line 1715
    .line 1716
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1717
    .line 1718
    .line 1719
    move-result v1

    .line 1720
    if-eqz v1, :cond_35

    .line 1721
    .line 1722
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1723
    .line 1724
    const-string v0, "\u4e0d\u517c\u5bb9\uff0cAPP\u67b6\u6784\u4e0d\u5339\u914d\u6b64\u7cfb\u7edf"

    .line 1725
    .line 1726
    goto/16 :goto_29

    .line 1727
    .line 1728
    :cond_35
    const-string v1, "INSTALL_FAILED_INVALID_APK"

    .line 1729
    .line 1730
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1731
    .line 1732
    .line 1733
    move-result v1

    .line 1734
    if-eqz v1, :cond_36

    .line 1735
    .line 1736
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1737
    .line 1738
    const-string v0, "APK\u65e0\u6548 \u6216 \u7cfb\u7edf\u6709\u9650\u5236\uff0c\u8bf7\u89e3\u9664"

    .line 1739
    .line 1740
    goto/16 :goto_29

    .line 1741
    .line 1742
    :cond_36
    const-string v1, "INSTALL_FAILED_INVALID_URI"

    .line 1743
    .line 1744
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1745
    .line 1746
    .line 1747
    move-result v1

    .line 1748
    if-eqz v1, :cond_37

    .line 1749
    .line 1750
    const-string v0, "\u65e0\u6548\u7684APK\u5305\u540d"

    .line 1751
    .line 1752
    goto/16 :goto_29

    .line 1753
    .line 1754
    :cond_37
    const-string v1, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    .line 1755
    .line 1756
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1757
    .line 1758
    .line 1759
    move-result v1

    .line 1760
    if-eqz v1, :cond_38

    .line 1761
    .line 1762
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1763
    .line 1764
    const-string v0, "\u5e94\u7528\u53ef\u5b89\u88c5\u7684\u7a7a\u95f4\u4e0d\u8db3\uff0c\u8bf7\u6e05\u7406\u51fa\u7a7a\u4f59\u7a7a\u95f4"

    .line 1765
    .line 1766
    goto/16 :goto_29

    .line 1767
    .line 1768
    :cond_38
    const-string v1, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    .line 1769
    .line 1770
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1771
    .line 1772
    .line 1773
    move-result v1

    .line 1774
    if-eqz v1, :cond_39

    .line 1775
    .line 1776
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1777
    .line 1778
    const-string v0, "\u672c\u673a\u4e0a\u5df2\u7ecf\u5b58\u5728\u76f8\u540c\u5305\u540d\u7684APP"

    .line 1779
    .line 1780
    goto/16 :goto_29

    .line 1781
    .line 1782
    :cond_39
    const-string v1, "INSTALL_FAILED_NO_SHARED_USER"

    .line 1783
    .line 1784
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1785
    .line 1786
    .line 1787
    move-result v1

    .line 1788
    if-eqz v1, :cond_3a

    .line 1789
    .line 1790
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1791
    .line 1792
    const-string v0, "\u6b64\u5e94\u7528\u8bf7\u6c42\u7684\u5171\u4eab\u7528\u6237\u672c\u7cfb\u7edf\u4e0d\u5b58\u5728"

    .line 1793
    .line 1794
    goto/16 :goto_29

    .line 1795
    .line 1796
    :cond_3a
    const-string v1, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    .line 1797
    .line 1798
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1799
    .line 1800
    .line 1801
    move-result v1

    .line 1802
    if-eqz v1, :cond_3b

    .line 1803
    .line 1804
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1805
    .line 1806
    const-string v0, "\u4e0d\u517c\u5bb9\uff0c\u6b64\u5e94\u7528\u4f7f\u7528\u4e86\u8bbe\u5907\u4e0a\u4e0d\u53ef\u7528\u7684\u5171\u4eab\u5e93"

    .line 1807
    .line 1808
    goto/16 :goto_29

    .line 1809
    .line 1810
    :cond_3b
    const-string v1, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    .line 1811
    .line 1812
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1813
    .line 1814
    .line 1815
    move-result v1

    .line 1816
    if-eqz v1, :cond_3c

    .line 1817
    .line 1818
    const-string v0, "\u66ff\u6362\u65f6\u65e0\u6cd5\u5220\u9664"

    .line 1819
    .line 1820
    goto/16 :goto_29

    .line 1821
    .line 1822
    :cond_3c
    const-string v1, "INSTALL_FAILED_DEXOPT"

    .line 1823
    .line 1824
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1825
    .line 1826
    .line 1827
    move-result v1

    .line 1828
    if-eqz v1, :cond_3d

    .line 1829
    .line 1830
    const-string v0, "dex\u4f18\u5316\u9a8c\u8bc1\u5931\u8d25\u6216\u7a7a\u95f4\u4e0d\u8db3"

    .line 1831
    .line 1832
    goto/16 :goto_29

    .line 1833
    .line 1834
    :cond_3d
    const-string v1, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    .line 1835
    .line 1836
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1837
    .line 1838
    .line 1839
    move-result v1

    .line 1840
    if-eqz v1, :cond_3e

    .line 1841
    .line 1842
    const-string v0, "\u8bbe\u5907\u91cc\u5df2\u7ecf\u5b58\u5728\u4e0e\u5e94\u7528\u91cc\u540c\u540d\u7684 content provider"

    .line 1843
    .line 1844
    goto/16 :goto_29

    .line 1845
    .line 1846
    :cond_3e
    const-string v1, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    .line 1847
    .line 1848
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1849
    .line 1850
    .line 1851
    move-result v1

    .line 1852
    if-eqz v1, :cond_3f

    .line 1853
    .line 1854
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1855
    .line 1856
    const-string v0, "\u4e0d\u517c\u5bb9\uff0c\u6b64\u5e94\u7528\u542b\u6709\u4e0d\u517c\u5bb9\u672c\u673a CPU \u7684\u4ee3\u7801"

    .line 1857
    .line 1858
    goto/16 :goto_29

    .line 1859
    .line 1860
    :cond_3f
    const-string v1, "INSTALL_FAILED_NO_MATCHING_ABIS"

    .line 1861
    .line 1862
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1863
    .line 1864
    .line 1865
    move-result v1

    .line 1866
    if-eqz v1, :cond_40

    .line 1867
    .line 1868
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1869
    .line 1870
    const-string v0, "\u4e0d\u517c\u5bb9\uff0c\u6b64\u5e94\u7528\u542b\u6709\u672c\u673a\u4e0d\u652f\u6301\u7684\u63a5\u53e3\u4ee3\u7801"

    .line 1871
    .line 1872
    goto/16 :goto_29

    .line 1873
    .line 1874
    :cond_40
    const-string v1, "INSTALL_FAILED_MISSING_FEATURE"

    .line 1875
    .line 1876
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1877
    .line 1878
    .line 1879
    move-result v1

    .line 1880
    if-eqz v1, :cond_41

    .line 1881
    .line 1882
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1883
    .line 1884
    const-string v0, "\u4e0d\u517c\u5bb9\uff0c\u6b64\u5e94\u7528\u4f7f\u7528\u4e86\u672c\u673a\u4e0d\u53ef\u7528\u7684\u529f\u80fd"

    .line 1885
    .line 1886
    goto/16 :goto_29

    .line 1887
    .line 1888
    :cond_41
    const-string v1, "INSTALL_FAILED_ACWF_INCOMPATIBLE"

    .line 1889
    .line 1890
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1891
    .line 1892
    .line 1893
    move-result v1

    .line 1894
    if-eqz v1, :cond_42

    .line 1895
    .line 1896
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 1897
    .line 1898
    const-string v0, "\u4e0d\u517c\u5bb9\uff0c\u6b64\u5e94\u7528\u4e0e\u672c\u673a\u4e0d\u517c\u5bb9"

    .line 1899
    .line 1900
    goto/16 :goto_29

    .line 1901
    .line 1902
    :cond_42
    const-string v1, "INSTALL_CANCELED_BY_USER"

    .line 1903
    .line 1904
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1905
    .line 1906
    .line 1907
    move-result v1

    .line 1908
    if-eqz v1, :cond_43

    .line 1909
    .line 1910
    const-string v0, "\u6b64\u5e94\u7528\u5b89\u88c5\u9700\u8981\u5728\u8bbe\u5907\u4e0a\u786e\u8ba4\uff0c\u4f46\u672a\u64cd\u4f5c\u8bbe\u5907\u6216\u70b9\u4e86\u53d6\u6d88\uff0c\u5728\u8bbe\u5907\u4e0a\u540c\u610f\u5b89\u88c5"

    .line 1911
    .line 1912
    goto/16 :goto_29

    .line 1913
    .line 1914
    :cond_43
    const-string v1, "INSTALL_FAILED_CONTAINER_ERROR"

    .line 1915
    .line 1916
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1917
    .line 1918
    .line 1919
    move-result v1

    .line 1920
    if-eqz v1, :cond_44

    .line 1921
    .line 1922
    const-string v0, "sdcard \u8bbf\u95ee\u5931\u8d25\uff1b\u5e94\u7528\u7b7e\u540d\u4e0e ROM \u7b7e\u540d\u4e00\u81f4\uff0c\u88ab\u5f53\u4f5c\u5185\u7f6e\u5e94\u7528\uff0c\u786e\u8ba4 sdcard \u53ef\u7528\uff0c\u6216\u8005\u5b89\u88c5\u5230\u5185\u7f6e\u5b58\u50a8\uff1b\u6253\u5305\u65f6\u4e0d\u4e0e ROM \u4f7f\u7528\u76f8\u540c\u7b7e\u540d"

    .line 1923
    .line 1924
    goto/16 :goto_29

    .line 1925
    .line 1926
    :cond_44
    const-string v1, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    .line 1927
    .line 1928
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1929
    .line 1930
    .line 1931
    move-result v1

    .line 1932
    if-eqz v1, :cond_45

    .line 1933
    .line 1934
    const-string v0, "\u4e0d\u80fd\u5b89\u88c5\u5230\u6307\u5b9a\u4f4d\u7f6e\uff0c\u5e94\u7528\u7b7e\u540d\u4e0e ROM \u7b7e\u540d\u4e00\u81f4\uff0c\u88ab\u5f53\u4f5c\u5185\u7f6e\u5e94\u7528\u3002\u5207\u6362\u5b89\u88c5\u4f4d\u7f6e\uff0c\u6dfb\u52a0\u6216\u5220\u9664 -s \u53c2\u6570\uff1b\u6253\u5305\u65f6\u4e0d\u4e0e ROM \u4f7f\u7528\u76f8\u540c\u7b7e\u540d"

    .line 1935
    .line 1936
    goto/16 :goto_29

    .line 1937
    .line 1938
    :cond_45
    const-string v1, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    .line 1939
    .line 1940
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1941
    .line 1942
    .line 1943
    move-result v1

    .line 1944
    if-eqz v1, :cond_46

    .line 1945
    .line 1946
    const-string v0, "\u5b89\u88c5\u4f4d\u7f6e\u4e0d\u53ef\u7528\uff0c\u4e00\u822c\u4e3a sdcard\uff0c\u786e\u8ba4 sdcard \u53ef\u7528\u6216\u5b89\u88c5\u5230\u5185\u7f6e\u5b58\u50a8"

    .line 1947
    .line 1948
    goto/16 :goto_29

    .line 1949
    .line 1950
    :cond_46
    const-string v1, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    .line 1951
    .line 1952
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1953
    .line 1954
    .line 1955
    move-result v1

    .line 1956
    if-eqz v1, :cond_47

    .line 1957
    .line 1958
    const-string v0, "\u9a8c\u8bc1\u5b89\u88c5\u5305\u8d85\u65f6"

    .line 1959
    .line 1960
    goto/16 :goto_29

    .line 1961
    .line 1962
    :cond_47
    const-string v1, "INSTALL_FAILED_VERIFICATION_FAILURE"

    .line 1963
    .line 1964
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1965
    .line 1966
    .line 1967
    move-result v1

    .line 1968
    if-eqz v1, :cond_48

    .line 1969
    .line 1970
    const-string v0, "\u9a8c\u8bc1\u5b89\u88c5\u5305\u5931\u8d25"

    .line 1971
    .line 1972
    goto/16 :goto_29

    .line 1973
    .line 1974
    :cond_48
    const-string v1, "INSTALL_FAILED_INTERNAL_ERROR"

    .line 1975
    .line 1976
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1977
    .line 1978
    .line 1979
    move-result v1

    .line 1980
    if-eqz v1, :cond_49

    .line 1981
    .line 1982
    const-string v0, "\u56e0\u7cfb\u7edf\u95ee\u9898\u5b89\u88c5\u5931\u8d25"

    .line 1983
    .line 1984
    goto/16 :goto_29

    .line 1985
    .line 1986
    :cond_49
    const-string v1, "INSTALL_FAILED_USER_RESTRICTED"

    .line 1987
    .line 1988
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1989
    .line 1990
    .line 1991
    move-result v1

    .line 1992
    if-eqz v1, :cond_4a

    .line 1993
    .line 1994
    const-string v0, "\u7528\u6237\u88ab\u9650\u5236\u5b89\u88c5\u5e94\u7528 \u5728\u5f00\u53d1\u8005\u9009\u9879\u91cc\u5c06\u300cUSB\u5b89\u88c5\u300d\u6253\u5f00\uff0c\u5982\u679c\u5df2\u7ecf\u6253\u5f00\u4e86\uff0c\u90a3\u5148\u5173\u95ed\u518d\u6253\u5f00"

    .line 1995
    .line 1996
    goto/16 :goto_29

    .line 1997
    .line 1998
    :cond_4a
    const-string v1, "INSTALL_FAILED_DUPLICATE_PERMISSION"

    .line 1999
    .line 2000
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2001
    .line 2002
    .line 2003
    move-result v1

    .line 2004
    if-eqz v1, :cond_4b

    .line 2005
    .line 2006
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 2007
    .line 2008
    const-string v0, "\u6743\u9650\u51b2\u7a81\uff1a\u6b64\u5e94\u7528\u5c1d\u8bd5\u5b9a\u4e49\u4e00\u4e2a\u5df2\u7ecf\u5b58\u5728\u7684\u6743\u9650\u540d\u79f0"

    .line 2009
    .line 2010
    goto/16 :goto_29

    .line 2011
    .line 2012
    :cond_4b
    const-string v1, "INSTALL_FAILED_PACKAGE_CHANGED"

    .line 2013
    .line 2014
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2015
    .line 2016
    .line 2017
    move-result v1

    .line 2018
    if-eqz v1, :cond_4c

    .line 2019
    .line 2020
    const-string v0, "\u5e94\u7528\u4e0e\u8c03\u7528\u7a0b\u5e8f\u671f\u671b\u7684\u4e0d\u4e00\u81f4"

    .line 2021
    .line 2022
    goto/16 :goto_29

    .line 2023
    .line 2024
    :cond_4c
    const-string v1, "INSTALL_PARSE_FAILED_NOT_APK"

    .line 2025
    .line 2026
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2027
    .line 2028
    .line 2029
    move-result v1

    .line 2030
    if-eqz v1, :cond_4d

    .line 2031
    .line 2032
    const-string v0, "\u6307\u5b9a\u8def\u5f84\u4e0d\u662f\u6587\u4ef6\uff0c\u6216\u4e0d\u662f\u4ee5.apk\u7ed3\u5c3e"

    .line 2033
    .line 2034
    goto/16 :goto_29

    .line 2035
    .line 2036
    :cond_4d
    const-string v1, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    .line 2037
    .line 2038
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2039
    .line 2040
    .line 2041
    move-result v1

    .line 2042
    if-eqz v1, :cond_4e

    .line 2043
    .line 2044
    const-string v0, "\u65e0\u6cd5\u89e3\u6790\u7684AndroidManifest.xml\u6587\u4ef6"

    .line 2045
    .line 2046
    goto/16 :goto_29

    .line 2047
    .line 2048
    :cond_4e
    const-string v1, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    .line 2049
    .line 2050
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2051
    .line 2052
    .line 2053
    move-result v1

    .line 2054
    if-eqz v1, :cond_4f

    .line 2055
    .line 2056
    const-string v0, "\u89e3\u6790 manifest \u6587\u4ef6\u65f6\u9047\u5230\u7ed3\u6784\u6027\u9519\u8bef"

    .line 2057
    .line 2058
    goto/16 :goto_29

    .line 2059
    .line 2060
    :cond_4f
    const-string v1, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    .line 2061
    .line 2062
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2063
    .line 2064
    .line 2065
    move-result v1

    .line 2066
    if-eqz v1, :cond_50

    .line 2067
    .line 2068
    const-string v0, "\u5728 manifest \u6587\u4ef6\u91cc\u627e\u4e0d\u5230\u627e\u53ef\u64cd\u4f5c\u6807\u7b7e\uff08instrumentation \u6216 application\uff09"

    .line 2069
    .line 2070
    goto/16 :goto_29

    .line 2071
    .line 2072
    :cond_50
    const-string v1, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    .line 2073
    .line 2074
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2075
    .line 2076
    .line 2077
    move-result v1

    .line 2078
    if-eqz v1, :cond_51

    .line 2079
    .line 2080
    const-string v0, "manifest \u6587\u4ef6\u91cc\u6ca1\u6709\u6216\u8005\u4f7f\u7528\u4e86\u65e0\u6548\u7684\u5305\u540d"

    .line 2081
    .line 2082
    goto/16 :goto_29

    .line 2083
    .line 2084
    :cond_51
    const-string v1, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    .line 2085
    .line 2086
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2087
    .line 2088
    .line 2089
    move-result v1

    .line 2090
    if-eqz v1, :cond_52

    .line 2091
    .line 2092
    const-string v0, "manifest \u6587\u4ef6\u91cc\u6307\u5b9a\u4e86\u65e0\u6548\u7684\u5171\u4eab\u7528\u6237 ID"

    .line 2093
    .line 2094
    goto/16 :goto_29

    .line 2095
    .line 2096
    :cond_52
    const-string v1, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    .line 2097
    .line 2098
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2099
    .line 2100
    .line 2101
    move-result v1

    .line 2102
    if-eqz v1, :cond_53

    .line 2103
    .line 2104
    const-string v0, "\u89e3\u6790 APK \u6587\u4ef6\u65f6\u9047\u5230 CertificateEncodingException"

    .line 2105
    .line 2106
    goto/16 :goto_29

    .line 2107
    .line 2108
    :cond_53
    const-string v1, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    .line 2109
    .line 2110
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2111
    .line 2112
    .line 2113
    move-result v1

    .line 2114
    if-eqz v1, :cond_54

    .line 2115
    .line 2116
    const-string v0, "\u89e3\u6790\u5668\u9047\u5230\u5f02\u5e38"

    .line 2117
    .line 2118
    goto/16 :goto_29

    .line 2119
    .line 2120
    :cond_54
    const-string v1, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    .line 2121
    .line 2122
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2123
    .line 2124
    .line 2125
    move-result v1

    .line 2126
    if-eqz v1, :cond_55

    .line 2127
    .line 2128
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 2129
    .line 2130
    const-string v0, "\u60a8\u4e4b\u524d\u5df2\u5b89\u88c5\u8be5\u5e94\u7528\uff0c\u4e14\u7b7e\u540d\u4e0e APK \u6587\u4ef6\u4e0d\u4e00\u81f4\uff0c\u8bf7\u5148\u5378\u8f7d\u8bbe\u5907\u4e0a\u7684\u539f\u5e94\u7528\uff0c\u518d\u5b89\u88c5"

    .line 2131
    .line 2132
    goto/16 :goto_29

    .line 2133
    .line 2134
    :cond_55
    const-string v1, "INSTALL_FAILED_PERMISSION_MODEL_DOWNGRADE"

    .line 2135
    .line 2136
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2137
    .line 2138
    .line 2139
    move-result v1

    .line 2140
    if-eqz v1, :cond_56

    .line 2141
    .line 2142
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 2143
    .line 2144
    const-string v0, "\u5df2\u5b89\u88c5 target SDK \u652f\u6301\u8fd0\u884c\u65f6\u6743\u9650\u7684\u540c\u540d\u5e94\u7528\uff0c\u8981\u5b89\u88c5\u7684\u7248\u672c\u4e0d\u652f\u6301\u8fd0\u884c\u65f6\u6743\u9650"

    .line 2145
    .line 2146
    goto/16 :goto_29

    .line 2147
    .line 2148
    :cond_56
    const-string v1, "verify failed"

    .line 2149
    .line 2150
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2151
    .line 2152
    .line 2153
    move-result v1

    .line 2154
    if-nez v1, :cond_62

    .line 2155
    .line 2156
    const-string v1, "is not auth"

    .line 2157
    .line 2158
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2159
    .line 2160
    .line 2161
    move-result v1

    .line 2162
    if-eqz v1, :cond_57

    .line 2163
    .line 2164
    goto/16 :goto_26

    .line 2165
    .line 2166
    :cond_57
    const-string v1, "code is missing"

    .line 2167
    .line 2168
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2169
    .line 2170
    .line 2171
    move-result v1

    .line 2172
    if-eqz v1, :cond_58

    .line 2173
    .line 2174
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 2175
    .line 2176
    const-string v0, "\u6b64APK\u6587\u4ef6\u975e\u6b63\u5e38\u5e94\u7528\uff0c\u65e0\u6cd5\u5b89\u88c5"

    .line 2177
    .line 2178
    goto/16 :goto_29

    .line 2179
    .line 2180
    :cond_58
    const-string v1, "does not contain AndroidManifest.xml"

    .line 2181
    .line 2182
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2183
    .line 2184
    .line 2185
    move-result v1

    .line 2186
    if-nez v1, :cond_61

    .line 2187
    .line 2188
    const-string v1, "is not a valid zip file"

    .line 2189
    .line 2190
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2191
    .line 2192
    .line 2193
    move-result v1

    .line 2194
    if-eqz v1, :cond_59

    .line 2195
    .line 2196
    goto/16 :goto_25

    .line 2197
    .line 2198
    :cond_59
    const-string v1, "Offline"

    .line 2199
    .line 2200
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2201
    .line 2202
    .line 2203
    move-result v1

    .line 2204
    if-eqz v1, :cond_5a

    .line 2205
    .line 2206
    const-string v0, "\u8bbe\u5907\u672a\u8fde\u63a5\u6210\u529f\uff0c\u5148\u5c06\u8bbe\u5907\u4e0e adb \u8fde\u63a5\u6210\u529f"

    .line 2207
    .line 2208
    goto/16 :goto_29

    .line 2209
    .line 2210
    :cond_5a
    const-string v1, "unauthorized"

    .line 2211
    .line 2212
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2213
    .line 2214
    .line 2215
    move-result v1

    .line 2216
    if-eqz v1, :cond_5b

    .line 2217
    .line 2218
    const-string v0, "\u8bbe\u5907\u672a\u6388\u6743\u5141\u8bb8\u8c03\u8bd5,\u8bf7\u5728\u5f00\u53d1\u8005\u9009\u9879\u4e2d\u52fe\u9009USB\u8c03\u8bd5"

    .line 2219
    .line 2220
    goto/16 :goto_29

    .line 2221
    .line 2222
    :cond_5b
    const-string v1, "protocol failure"

    .line 2223
    .line 2224
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2225
    .line 2226
    .line 2227
    move-result v1

    .line 2228
    if-eqz v1, :cond_5c

    .line 2229
    .line 2230
    const-string v0, "\u8bbe\u5907\u5df2\u65ad\u5f00\u8fde\u63a5 \uff0c\u5148\u5c06\u8bbe\u5907\u4e0e root \u6216 adb \u8fde\u63a5\u6210\u529f"

    .line 2231
    .line 2232
    goto :goto_29

    .line 2233
    :cond_5c
    const-string v1, "Unknown option: -s"

    .line 2234
    .line 2235
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2236
    .line 2237
    .line 2238
    move-result v1

    .line 2239
    if-eqz v1, :cond_5d

    .line 2240
    .line 2241
    const-string v0, "Android 2.2 \u4ee5\u4e0b\u4e0d\u652f\u6301\u5b89\u88c5\u5230 sdcard \u4e0d\u4f7f\u7528 -s \u53c2\u6570"

    .line 2242
    .line 2243
    goto :goto_29

    .line 2244
    :cond_5d
    const-string v1, "install apk has be disabled"

    .line 2245
    .line 2246
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2247
    .line 2248
    .line 2249
    move-result v1

    .line 2250
    if-eqz v1, :cond_5e

    .line 2251
    .line 2252
    const-string v0, "\u6b64\u7cfb\u7edf\u7981\u6b62\u4f7f\u7528adb\u5b89\u88c5\u5e94\u7528"

    .line 2253
    .line 2254
    goto :goto_29

    .line 2255
    :cond_5e
    const-string v1, "Failed to parse APK"

    .line 2256
    .line 2257
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2258
    .line 2259
    .line 2260
    move-result v1

    .line 2261
    if-eqz v1, :cond_5f

    .line 2262
    .line 2263
    const-string v0, "\u89e3\u6790\u5931\u8d25\uff0c\u65e0\u6743\u9650\u8bfb\u53d6\u6587\u4ef6 \u6216 apk\u6587\u4ef6\u635f\u574f"

    .line 2264
    .line 2265
    goto :goto_29

    .line 2266
    :cond_5f
    const-string v1, "is already used by"

    .line 2267
    .line 2268
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2269
    .line 2270
    .line 2271
    move-result v1

    .line 2272
    if-eqz v1, :cond_60

    .line 2273
    .line 2274
    :try_start_21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2275
    .line 2276
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2277
    .line 2278
    .line 2279
    const-string v5, "is already used by "

    .line 2280
    .line 2281
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2282
    .line 2283
    .line 2284
    move-result v5

    .line 2285
    add-int/lit8 v5, v5, 0x13

    .line 2286
    .line 2287
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2288
    .line 2289
    .line 2290
    move-result-object v0

    .line 2291
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    .line 2293
    .line 2294
    const-string v0, "\u3011\u4ea7\u751f\u51b2\u7a81\uff0c\u65e0\u6cd5\u5b89\u88c5"

    .line 2295
    .line 2296
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2297
    .line 2298
    .line 2299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2300
    .line 2301
    .line 2302
    move-result-object v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_f

    .line 2303
    goto :goto_24

    .line 2304
    :catch_f
    const-string v0, "\u6b64\u5e94\u7528\u4e0e\u67d0\u4e2a\u5df2\u88c5\u5e94\u7528\u4ea7\u751f\u51b2\u7a81\uff0c\u65e0\u6cd5\u5b89\u88c5"

    .line 2305
    .line 2306
    :goto_24
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 2307
    .line 2308
    goto :goto_29

    .line 2309
    :cond_60
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 2310
    .line 2311
    .line 2312
    move-result v1

    .line 2313
    if-eqz v1, :cond_65

    .line 2314
    .line 2315
    const-string v0, "\u5b89\u88c5\u5931\u8d25\uff1a\u539f\u56e0\u672a\u660e"

    .line 2316
    .line 2317
    goto :goto_29

    .line 2318
    :cond_61
    :goto_25
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 2319
    .line 2320
    const-string v0, "\u65e0\u6548\u7684 APK \u6587\u4ef6"

    .line 2321
    .line 2322
    goto :goto_29

    .line 2323
    :cond_62
    :goto_26
    iput v3, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 2324
    .line 2325
    const-string v0, "\u6b64\u7cfb\u7edf\u5b89\u88c5\u5e94\u7528\u9700\u8981\u767d\u540d\u5355"

    .line 2326
    .line 2327
    goto :goto_29

    .line 2328
    :cond_63
    :goto_27
    const-string v0, "\u4e0d\u5b58\u5728\uff08\u65e0\u6cd5\u8bc6\u522b\uff09"

    .line 2329
    .line 2330
    goto :goto_29

    .line 2331
    :cond_64
    :goto_28
    const-string v0, "\u65e0\u6743\u9650\u8bbf\u95ee\u6b64\u76ee\u5f55\u4e0b\u6587\u4ef6"

    .line 2332
    .line 2333
    :cond_65
    :goto_29
    iget-object v1, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 2334
    .line 2335
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2336
    .line 2337
    .line 2338
    :goto_2a
    iget v0, v4, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 2339
    .line 2340
    if-eqz v0, :cond_66

    .line 2341
    .line 2342
    new-instance v0, Ljava/lang/Exception;

    .line 2343
    .line 2344
    invoke-virtual {v4}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 2345
    .line 2346
    .line 2347
    move-result-object v1

    .line 2348
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2349
    .line 2350
    .line 2351
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 2352
    .line 2353
    .line 2354
    goto :goto_2b

    .line 2355
    :cond_66
    const-string v0, "monkey -p \'"

    .line 2356
    .line 2357
    const-string v1, "\' -c android.intent.category.LAUNCHER 1"

    .line 2358
    .line 2359
    invoke-static {v0, v6, v1}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2360
    .line 2361
    .line 2362
    move-result-object v0

    .line 2363
    const-wide/16 v3, 0x7d0

    .line 2364
    .line 2365
    invoke-virtual {v7, v3, v4, v0}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 2366
    .line 2367
    .line 2368
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 2369
    .line 2370
    .line 2371
    :goto_2b
    return-void

    .line 2372
    nop

    .line 2373
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPermissionResult(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lb8/a;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
