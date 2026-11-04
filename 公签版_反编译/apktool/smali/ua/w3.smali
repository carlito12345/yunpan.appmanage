.class public final Lua/w3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityLaboratory;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/w3;->a:I

    iput-object p1, p0, Lua/w3;->b:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method

.method private final b()V
    .locals 0

    .line 1
    return-void
.end method

.method private final c()V
    .locals 0

    .line 1
    return-void
.end method

.method private final d()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lua/w3;->b:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 4
    .line 5
    iget v3, p0, Lua/w3;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_0
    const-string v0, "package:"

    .line 12
    .line 13
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    .line 14
    .line 15
    const-string v4, "android.intent.action.UNINSTALL_PACKAGE"

    .line 16
    .line 17
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    const-string v0, "\u8c03\u7528\u5378\u8f7d\u7a0b\u5e8f\u51fa\u9519"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :pswitch_1
    invoke-static {v2, v0}, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->z(Lcom/yunpan/appmanage/ui/ActivityLaboratory;Z)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_2
    :try_start_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 58
    .line 59
    iget-object v0, v2, Lda/g;->A:Lda/g;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v2, "screen_off_timeout"

    .line 66
    .line 67
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v2, -0x1

    .line 72
    if-ne v0, v2, :cond_0

    .line 73
    .line 74
    const-string v0, "\u60a8\u7684\u7cfb\u7edf\u6ca1\u6709\u95ee\u9898\uff0c\u65e0\u9700\u4fee\u6539"

    .line 75
    .line 76
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catch_1
    :cond_0
    new-instance v0, Lua/y3;

    .line 81
    .line 82
    invoke-direct {v0, p0}, Lua/y3;-><init>(Lua/w3;)V

    .line 83
    .line 84
    .line 85
    new-instance v2, Lmc/c;

    .line 86
    .line 87
    invoke-direct {v2, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 91
    .line 92
    invoke-virtual {v2, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Lha/m6;

    .line 105
    .line 106
    const/16 v2, 0xb

    .line 107
    .line 108
    invoke-direct {v1, v2}, Lha/m6;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 112
    .line 113
    .line 114
    :goto_1
    return-void

    .line 115
    :pswitch_3
    new-instance v0, Lph/j;

    .line 116
    .line 117
    const/16 v2, 0x19

    .line 118
    .line 119
    invoke-direct {v0, v2, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    new-instance v2, Lmc/c;

    .line 123
    .line 124
    invoke-direct {v2, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 128
    .line 129
    invoke-virtual {v2, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    new-instance v1, Lha/m6;

    .line 142
    .line 143
    const/16 v2, 0xa

    .line 144
    .line 145
    invoke-direct {v1, v2}, Lha/m6;-><init>(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :pswitch_4
    invoke-static {v2, v0}, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->A(Lcom/yunpan/appmanage/ui/ActivityLaboratory;Z)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_5
    invoke-static {v2, v1}, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->y(Lcom/yunpan/appmanage/ui/ActivityLaboratory;Z)V

    .line 157
    .line 158
    .line 159
    :pswitch_6
    return-void

    .line 160
    nop

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lua/w3;->b:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 3
    .line 4
    iget v2, p0, Lua/w3;->a:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance v0, Lha/z6;

    .line 10
    .line 11
    sget v2, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 12
    .line 13
    iget-object v5, v1, Lda/g;->A:Lda/g;

    .line 14
    .line 15
    new-instance v10, Lua/i1;

    .line 16
    .line 17
    const/16 v1, 0xd

    .line 18
    .line 19
    invoke-direct {v10, v1, p0}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const-string v8, "\u53d6\u6d88"

    .line 23
    .line 24
    const-string v9, "\u6211\u8981\u5f00\u542f\u5206\u533a\u68c0\u6d4b"

    .line 25
    .line 26
    const-string v6, "\u518d\u6b21\u8be2\u95ee\u60a8\uff0c\u771f\u7684\u8981\u8fd9\u4e48\u505a\uff1f\uff1f\uff1f"

    .line 27
    .line 28
    const-string v7, "\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f"

    .line 29
    .line 30
    move-object v3, v0

    .line 31
    move-object v4, v5

    .line 32
    invoke-direct/range {v3 .. v10}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_0
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v3, 0x0

    .line 46
    iput-object v3, v2, La2/w0;->c:Ljava/lang/Object;

    .line 47
    .line 48
    sget-object v3, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 49
    .line 50
    new-instance v4, Lfa/s;

    .line 51
    .line 52
    const/4 v5, 0x2

    .line 53
    invoke-direct {v4, v2, v1, v0, v5}, Lfa/s;-><init>(La2/w0;Ljava/lang/String;ZI)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_1
    invoke-static {v1, v0}, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->z(Lcom/yunpan/appmanage/ui/ActivityLaboratory;Z)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_2
    new-instance v0, Lha/o1;

    .line 65
    .line 66
    sget v2, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 67
    .line 68
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 69
    .line 70
    new-instance v3, Lua/y3;

    .line 71
    .line 72
    invoke-direct {v3, p0}, Lua/y3;-><init>(Lua/w3;)V

    .line 73
    .line 74
    .line 75
    const/16 v4, 0x9

    .line 76
    .line 77
    invoke-direct {v0, v1, v2, v3, v4}, Lha/o1;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/Object;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 81
    .line 82
    .line 83
    :pswitch_3
    return-void

    .line 84
    :pswitch_4
    invoke-static {v1, v0}, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->A(Lcom/yunpan/appmanage/ui/ActivityLaboratory;Z)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_5
    const/4 v0, 0x1

    .line 89
    invoke-static {v1, v0}, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->y(Lcom/yunpan/appmanage/ui/ActivityLaboratory;Z)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_6
    new-instance v0, Lha/pe;

    .line 94
    .line 95
    sget v2, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 96
    .line 97
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 98
    .line 99
    invoke-direct {v0, v1, v2}, Lha/pe;-><init>(Landroid/app/Activity;Lda/g;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_7
    sget v2, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    sget-object v2, Lfa/g0;->a:Lfa/h0;

    .line 112
    .line 113
    invoke-virtual {v2}, Lfa/h0;->f()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_0

    .line 118
    .line 119
    const-string v0, "\u60a8\u662f\u5c0a\u8d35\u7684root\u7cfb\u7edf\u7528\u6237\uff0c\u7528\u4e0d\u7740\u6b64\u529f\u80fd\u54df"

    .line 120
    .line 121
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-static {}, La2/w0;->P()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-nez v2, :cond_1

    .line 135
    .line 136
    const-string v0, "\u8bf7\u5148\u8fde\u63a5adb"

    .line 137
    .line 138
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_1
    new-instance v2, Lua/v0;

    .line 143
    .line 144
    const/16 v3, 0xf

    .line 145
    .line 146
    invoke-direct {v2, v3}, Lua/v0;-><init>(I)V

    .line 147
    .line 148
    .line 149
    new-instance v3, Lmc/c;

    .line 150
    .line 151
    invoke-direct {v3, v0, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    sget-object v2, Lrc/f;->b:Lec/j;

    .line 155
    .line 156
    invoke-virtual {v3, v2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {v2, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    new-instance v3, Lua/x3;

    .line 169
    .line 170
    invoke-direct {v3, v1, v0}, Lua/x3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v3}, Lec/b;->b(Lec/e;)V

    .line 174
    .line 175
    .line 176
    :goto_0
    return-void

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
