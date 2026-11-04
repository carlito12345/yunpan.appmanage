.class public final synthetic Lha/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/i;


# direct methods
.method public synthetic constructor <init>(Lha/i;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/d;->a:I

    iput-object p1, p0, Lha/d;->b:Lha/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget p1, p0, Lha/d;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/d;->b:Lha/i;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 12
    .line 13
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string p1, "\u5df2root\u65e0\u9700\u8fde\u63a5"

    .line 20
    .line 21
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {}, La2/w0;->P()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string p1, "\u5df2\u8fde\u63a5"

    .line 37
    .line 38
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p1, Lha/i;->i:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "\u8fde\u63a5ADB"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    new-instance v0, Lha/c;

    .line 63
    .line 64
    invoke-direct {v0, p1}, Lha/c;-><init>(Lha/i;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lmc/c;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v1, Lha/h;

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    invoke-direct {v1, p1, v2}, Lha/h;-><init>(Lha/i;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_0
    return-void

    .line 97
    :pswitch_0
    iget-object p1, p0, Lha/d;->b:Lha/i;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 103
    .line 104
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    const-string p1, "\u60a8\u672c\u8eab\u5c31\u662f\u7f51\u7edcadb\u8fde\u63a5\uff0c\u65e0\u9700\u591a\u6b64\u4e00\u4e3e"

    .line 111
    .line 112
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 117
    .line 118
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_4

    .line 123
    .line 124
    const-string p1, "\u8bf7\u5148\u8fde\u63a5adb"

    .line 125
    .line 126
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    new-instance v8, Lha/z6;

    .line 131
    .line 132
    new-instance v7, Lha/g;

    .line 133
    .line 134
    const/4 v0, 0x1

    .line 135
    invoke-direct {v7, p1, v0}, Lha/g;-><init>(Lha/i;I)V

    .line 136
    .line 137
    .line 138
    iget-object v1, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 139
    .line 140
    iget-object v2, p1, Lha/a4;->b:Landroid/content/Context;

    .line 141
    .line 142
    const-string v5, "\u786e\u5b9a"

    .line 143
    .line 144
    const-string v6, "\u53d6\u6d88"

    .line 145
    .line 146
    const-string v3, "\u66f4\u6539\u6210\u529f\u7684\u8bdd\uff0c\u5c06\u4f1a\u65ad\u5f00\u65e0\u7ebfadb\uff0c\u7136\u540e\u81ea\u52a8\u8fde\u63a5\u7f51\u7edcadb"

    .line 147
    .line 148
    const-string v4, ""

    .line 149
    .line 150
    move-object v0, v8

    .line 151
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8}, Lha/a4;->show()V

    .line 155
    .line 156
    .line 157
    :goto_1
    return-void

    .line 158
    :pswitch_1
    iget-object p1, p0, Lha/d;->b:Lha/i;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    new-instance v0, Landroid/content/Intent;

    .line 164
    .line 165
    const-string v1, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    .line 166
    .line 167
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :try_start_0
    iget-object p1, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :catch_0
    const-string p1, "\u60a8\u6ca1\u6709\u5f00\u542f\u3010\u5f00\u53d1\u8005\u9009\u9879\u3011\uff1f\uff1f\uff1f"

    .line 177
    .line 178
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :goto_2
    return-void

    .line 182
    :pswitch_2
    iget-object p1, p0, Lha/d;->b:Lha/i;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
