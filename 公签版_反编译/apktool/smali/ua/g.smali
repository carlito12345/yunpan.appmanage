.class public final Lua/g;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lua/g;->b:I

    iput-object p1, p0, Lua/g;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Lua/g;->c:Z

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget v0, p0, Lua/g;->b:I

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
    new-instance v0, Lha/r5;

    .line 8
    .line 9
    iget-object v1, p0, Lua/g;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lua/i9;

    .line 12
    .line 13
    iget-object v2, v1, Lda/h;->f:Landroid/app/Activity;

    .line 14
    .line 15
    iget-object v1, v1, Lda/h;->e:Landroid/content/Context;

    .line 16
    .line 17
    check-cast p1, Lqa/b;

    .line 18
    .line 19
    iget-object p1, p1, Lqa/b;->a:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0, v2, v1, p1}, Lha/r5;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "\u51fa\u9519\uff1a"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_3
    iget-object v0, p0, Lua/g;->d:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 55
    .line 56
    const-string v1, ""

    .line 57
    .line 58
    invoke-static {v0, v1}, Ll2/z;->r(Lha/u9;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lua/g;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lua/g;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lua/i9;

    .line 10
    .line 11
    iget-object v0, v0, Lua/i9;->h:Lha/u9;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lha/u9;->b(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lgc/b;)V
    .locals 1

    .line 1
    iget p1, p0, Lua/g;->b:I

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
    iget-object p1, p0, Lua/g;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->I:Landroid/widget/TextView;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_2
    iget-object p1, p0, Lua/g;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 23
    .line 24
    const-string v0, "\u4fee\u6539\u4e2d"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 4

    .line 1
    iget v0, p0, Lua/g;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/g;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lua/i9;

    .line 9
    .line 10
    iget-object v1, v0, Lua/i9;->h:Lha/u9;

    .line 11
    .line 12
    invoke-virtual {v1}, Lha/u9;->a()V

    .line 13
    .line 14
    .line 15
    iget-boolean v1, p0, Lua/g;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string v2, "\u526a\u5207"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v2, "\u590d\u5236"

    .line 23
    .line 24
    :goto_0
    const-string v3, "\u6210\u529f"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v1, v0, Lua/i9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lua/i9;->x:Lx9/g0;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-static {v1, v2}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lx9/w3;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lua/i9;->n(Lx9/w3;Z)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lua/g;->d:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->I:Landroid/widget/TextView;

    .line 58
    .line 59
    const/16 v2, 0x8

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    const-string v1, "\u4fdd\u5b58\u6210\u529f"

    .line 65
    .line 66
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :try_start_0
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->R:Landroid/net/Uri;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    const-string v2, "/external/"

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    sget-object v3, Lfa/g0;->a:Lfa/h0;

    .line 91
    .line 92
    invoke-virtual {v3}, Lfa/h0;->d()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const/16 v3, 0x9

    .line 100
    .line 101
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    goto :goto_1

    .line 113
    :catch_0
    nop

    .line 114
    goto :goto_2

    .line 115
    :cond_2
    :goto_1
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2, v1}, Lcom/yunpan/appmanage/db/MyDb;->addIfFile(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    new-instance v1, Ljava/lang/Exception;

    .line 124
    .line 125
    const-string v2, ""

    .line 126
    .line 127
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_2
    iget-boolean v1, p0, Lua/g;->c:Z

    .line 132
    .line 133
    if-eqz v1, :cond_4

    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 136
    .line 137
    .line 138
    :cond_4
    return-void

    .line 139
    :pswitch_1
    iget-object v0, p0, Lua/g;->d:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;

    .line 142
    .line 143
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->I:Lcom/yunpan/appmanage/carsdk/u;

    .line 144
    .line 145
    iget-boolean v1, p0, Lua/g;->c:Z

    .line 146
    .line 147
    xor-int/lit8 v1, v1, 0x1

    .line 148
    .line 149
    const-wide/16 v2, 0x1388

    .line 150
    .line 151
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :pswitch_2
    iget-object v0, p0, Lua/g;->d:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 158
    .line 159
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->E:Lha/u9;

    .line 160
    .line 161
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 162
    .line 163
    .line 164
    iget-boolean v0, p0, Lua/g;->c:Z

    .line 165
    .line 166
    if-eqz v0, :cond_6

    .line 167
    .line 168
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-static {}, La2/w0;->P()Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_6

    .line 178
    .line 179
    const-string v0, "\u6b63\u5728\u5c1d\u8bd5\u8fde\u63a5adb"

    .line 180
    .line 181
    const/4 v1, 0x0

    .line 182
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 183
    .line 184
    .line 185
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 186
    .line 187
    iget v1, v0, Lcom/yunpan/appmanage/util/w;->k:I

    .line 188
    .line 189
    const/16 v2, 0x15b3

    .line 190
    .line 191
    if-eq v1, v2, :cond_5

    .line 192
    .line 193
    invoke-virtual {v0, v2}, Lcom/yunpan/appmanage/util/w;->n(I)V

    .line 194
    .line 195
    .line 196
    :cond_5
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 197
    .line 198
    const/4 v1, 0x0

    .line 199
    invoke-virtual {v0, v1}, Lfa/j;->h(Lua/h6;)V

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_6
    const-string v0, "\u4fee\u6539\u6210\u529f"

    .line 204
    .line 205
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    :goto_3
    return-void

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
