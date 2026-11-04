.class public final Lua/e;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivityAdb;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAdb;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/e;->b:I

    iput-object p1, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget v0, p0, Lua/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    return-void

    .line 7
    :pswitch_1
    iget-object p1, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 10
    .line 11
    invoke-virtual {p1}, Lha/u9;->a()V

    .line 12
    .line 13
    .line 14
    const-string p1, "\u4fee\u6539\u5931\u8d25\uff0c\u65e0\u6743\u9650"

    .line 15
    .line 16
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_2
    iget-object v0, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    invoke-static {v0, v1}, Ll2/z;->r(Lha/u9;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_3
    iget-object p1, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 48
    .line 49
    invoke-virtual {p1}, Lha/u9;->a()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_4
    const-string p1, "\u672a\u5f00\u53d1"

    .line 54
    .line 55
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_5
    iget-object p1, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 62
    .line 63
    invoke-virtual {p1}, Lha/u9;->a()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_6
    iget-object p1, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 70
    .line 71
    invoke-virtual {p1}, Lha/u9;->a()V

    .line 72
    .line 73
    .line 74
    const-string p1, "\u4fee\u6539\u5931\u8d25\uff0c\u65e0\u6743\u9650"

    .line 75
    .line 76
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lua/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    :try_start_0
    check-cast p1, Landroid/content/Intent;

    .line 8
    .line 9
    const/high16 v0, 0x34000000

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 15
    .line 16
    sget v1, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 17
    .line 18
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    const-string p1, "\u672a\u5f00\u53d1"

    .line 29
    .line 30
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lgc/b;)V
    .locals 1

    .line 1
    iget p1, p0, Lua/e;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    return-void

    .line 7
    :pswitch_1
    iget-object p1, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 10
    .line 11
    const-string v0, "\u4fee\u6539\u4e2d"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_2
    iget-object p1, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 20
    .line 21
    const-string v0, "\u4fee\u6539\u4e2d"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_3
    iget-object p1, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 30
    .line 31
    const-string v0, "\u4fee\u6539\u4e2d"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_4
    iget-object p1, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 40
    .line 41
    const-string v0, "\u8bbe\u7f6e\u4e2d"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_5
    iget-object p1, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 50
    .line 51
    const-string v0, "\u8bbe\u7f6e\u4e2d"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_6
    iget-object p1, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 60
    .line 61
    const-string v0, "\u8bbe\u7f6e\u4e2d"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_7
    iget-object p1, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 70
    .line 71
    const-string v0, "\u4fee\u6539\u4e2d"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_8
    iget-object p1, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 80
    .line 81
    const-string v0, "\u4fee\u6539\u4e2d"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onComplete()V
    .locals 10

    .line 1
    iget v0, p0, Lua/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    return-void

    .line 7
    :pswitch_1
    iget-object v0, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 10
    .line 11
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 12
    .line 13
    .line 14
    const-string v0, "\u4fee\u6539\u5b8c\u6210"

    .line 15
    .line 16
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 20
    .line 21
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 28
    .line 29
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    sget-object v1, Lfa/l;->a:Lfa/m;

    .line 36
    .line 37
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Lfa/j;->h(Lua/h6;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void

    .line 48
    :pswitch_2
    iget-object v0, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 51
    .line 52
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {}, La2/w0;->P()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    const-string v0, "\u6b63\u5728\u5c1d\u8bd5\u8fde\u63a5adb"

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 70
    .line 71
    .line 72
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 73
    .line 74
    iget v1, v0, Lcom/yunpan/appmanage/util/w;->k:I

    .line 75
    .line 76
    const/16 v2, 0x15b3

    .line 77
    .line 78
    if-eq v1, v2, :cond_1

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Lcom/yunpan/appmanage/util/w;->n(I)V

    .line 81
    .line 82
    .line 83
    :cond_1
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Lfa/j;->h(Lua/h6;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "\u4fee\u6539\u6210\u529f"

    .line 91
    .line 92
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    return-void

    .line 96
    :pswitch_3
    iget-object v0, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 99
    .line 100
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 101
    .line 102
    .line 103
    const-string v0, "\u4fee\u6539\u5b8c\u6210"

    .line 104
    .line 105
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 109
    .line 110
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_3

    .line 115
    .line 116
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 117
    .line 118
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_3

    .line 123
    .line 124
    sget-object v1, Lfa/l;->a:Lfa/m;

    .line 125
    .line 126
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_3

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0, v1}, Lfa/j;->h(Lua/h6;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    return-void

    .line 137
    :pswitch_4
    iget-object v0, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 138
    .line 139
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 140
    .line 141
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :pswitch_5
    iget-object v0, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 146
    .line 147
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 148
    .line 149
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_6
    iget-object v0, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 154
    .line 155
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 156
    .line 157
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :pswitch_7
    iget-object v0, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 162
    .line 163
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 164
    .line 165
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 166
    .line 167
    .line 168
    const-string v0, "\u4fee\u6539\u5b8c\u6210"

    .line 169
    .line 170
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :pswitch_8
    iget-object v0, p0, Lua/e;->c:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 175
    .line 176
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 177
    .line 178
    invoke-virtual {v1}, Lha/u9;->a()V

    .line 179
    .line 180
    .line 181
    new-instance v1, Lha/z6;

    .line 182
    .line 183
    iget-object v4, v0, Lda/g;->A:Lda/g;

    .line 184
    .line 185
    new-instance v9, Ls5/c;

    .line 186
    .line 187
    const/4 v0, 0x2

    .line 188
    invoke-direct {v9, v0}, Ls5/c;-><init>(I)V

    .line 189
    .line 190
    .line 191
    const-string v7, "\u7acb\u5373\u91cd\u542f"

    .line 192
    .line 193
    const-string v8, "\u7a0d\u540e\u518d\u8bf4"

    .line 194
    .line 195
    const-string v5, "\u5df2\u4fee\u6539\uff0c\u91cd\u542f\u7cfb\u7edf\u65b9\u53ef\u751f\u6548"

    .line 196
    .line 197
    const-string v6, ""

    .line 198
    .line 199
    move-object v2, v1

    .line 200
    move-object v3, v4

    .line 201
    invoke-direct/range {v2 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    nop

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
